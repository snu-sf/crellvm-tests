; ModuleID = './plug-ins/gfig/gfig-grid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GdkPoint = type { i32, i32 }
%struct.SelectItVals = type { %struct.GfigOpts, i32, i32, i32, double, double, double, i32, i32, i32, i32, i32, double, i32, i32 }
%struct.GfigOpts = type { i32, i32, i32, i32, i32, i32, double, double, double, double, i32 }
%struct.GFigContext = type { i32, i32, i32, i32, %struct._GFigObj*, %struct._GfigObject*, %struct._GtkWidget*, %struct._Style, %struct.BrushDesc, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpRGB*, %struct._GimpRGB*, i32, i32 }
%struct._GFigObj = type { i8*, i8*, i8*, float, %struct.GfigOpts, %struct._GList*, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GfigObject = type opaque
%struct._Style = type { i8*, i8*, i32, i32, i32, i32, double, double, double, i32, double, i8*, i8*, i32, %struct._GimpRGB, %struct._GimpRGB, i32, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.BrushDesc = type { i8*, double, i32, i32, i32, i32, i8*, i16, i16, i8* }
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
%struct._cairo = type opaque
%struct.PrimeFactors = type { i32, i32, i32, i32, i32 }

@grid_gc_type = global i32 -1, align 4
@find_grid_pos.cons_pnt = internal global %struct._GdkPoint zeroinitializer, align 4
@selvals = external global %struct.SelectItVals, align 8
@preview_width = external global i32, align 4
@preview_height = external global i32, align 4
@gfig_context = external global %struct.GFigContext*, align 8
@primes = internal global [31 x i8] c"\02\03\05\07\0B\0D\11\13\17\1D\1F%)+/5;=CGIOSYaegkmq\7F", align 16

; Function Attrs: nounwind uwtable
define void @gfig_grid_colours(%struct._GtkWidget* %widget) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_grid_pos(%struct._GdkPoint* %p, %struct._GdkPoint* %gp, i32 %is_butt3) #0 {
entry:
  %p.addr = alloca %struct._GdkPoint*, align 8
  %gp.addr = alloca %struct._GdkPoint*, align 8
  %is_butt3.addr = alloca i32, align 4
  %x = alloca i16, align 2
  %y = alloca i16, align 2
  %n_lo = alloca i32, align 4
  %n_hi = alloca i32, align 4
  %m_lo_n_lo = alloca i32, align 4
  %m_hi_n_lo = alloca i32, align 4
  %m_lo_n_hi = alloca i32, align 4
  %m_hi_n_hi = alloca i32, align 4
  %m_n_lo = alloca i32, align 4
  %m_n_hi = alloca i32, align 4
  %r = alloca double, align 8
  %h = alloca double, align 8
  %x149 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y250 = alloca i32, align 4
  store %struct._GdkPoint* %p, %struct._GdkPoint** %p.addr, align 8
  store %struct._GdkPoint* %gp, %struct._GdkPoint** %gp.addr, align 8
  store i32 %is_butt3, i32* %is_butt3.addr, align 4
  %0 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %x1 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %0, i32 0, i32 0
  %1 = load i32, i32* %x1, align 4
  %conv = trunc i32 %1 to i16
  store i16 %conv, i16* %x, align 2
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %y2 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 1
  %3 = load i32, i32* %y2, align 4
  %conv3 = trunc i32 %3 to i16
  store i16 %conv3, i16* %y, align 2
  %4 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else.41

if.then:                                          ; preds = %entry
  %5 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %x5 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %5, i32 0, i32 0
  %6 = load i32, i32* %x5, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %rem = srem i32 %6, %7
  %8 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %div = sdiv i32 %8, 2
  %cmp6 = icmp sgt i32 %rem, %div
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %9 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %10 = load i16, i16* %x, align 2
  %conv9 = sext i16 %10 to i32
  %add = add nsw i32 %conv9, %9
  %conv10 = trunc i32 %add to i16
  store i16 %conv10, i16* %x, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %11 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %y11 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %11, i32 0, i32 1
  %12 = load i32, i32* %y11, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %rem12 = srem i32 %12, %13
  %14 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %div13 = sdiv i32 %14, 2
  %cmp14 = icmp sgt i32 %rem12, %div13
  br i1 %cmp14, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end
  %15 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %16 = load i16, i16* %y, align 2
  %conv17 = sext i16 %16 to i32
  %add18 = add nsw i32 %conv17, %15
  %conv19 = trunc i32 %add18 to i16
  store i16 %conv19, i16* %y, align 2
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.end
  %17 = load i16, i16* %x, align 2
  %conv21 = sext i16 %17 to i32
  %18 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %div22 = sdiv i32 %conv21, %18
  %19 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %mul = mul nsw i32 %div22, %19
  %20 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %x23 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %20, i32 0, i32 0
  store i32 %mul, i32* %x23, align 4
  %21 = load i16, i16* %y, align 2
  %conv24 = sext i16 %21 to i32
  %22 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %div25 = sdiv i32 %conv24, %22
  %23 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %mul26 = mul nsw i32 %div25, %23
  %24 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %y27 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %24, i32 0, i32 1
  store i32 %mul26, i32* %y27, align 4
  %25 = load i32, i32* %is_butt3.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %if.then.28, label %if.else.39

if.then.28:                                       ; preds = %if.end.20
  %26 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %x29 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %26, i32 0, i32 0
  %27 = load i32, i32* %x29, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct._GdkPoint, %struct._GdkPoint* @find_grid_pos.cons_pnt, i32 0, i32 0), align 4
  %sub = sub nsw i32 %27, %28
  %call = call i32 @abs(i32 %sub) #5
  %29 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %y30 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %29, i32 0, i32 1
  %30 = load i32, i32* %y30, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct._GdkPoint, %struct._GdkPoint* @find_grid_pos.cons_pnt, i32 0, i32 1), align 4
  %sub31 = sub nsw i32 %30, %31
  %call32 = call i32 @abs(i32 %sub31) #5
  %cmp33 = icmp slt i32 %call, %call32
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.28
  %32 = load i32, i32* getelementptr inbounds (%struct._GdkPoint, %struct._GdkPoint* @find_grid_pos.cons_pnt, i32 0, i32 0), align 4
  %33 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %x36 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %33, i32 0, i32 0
  store i32 %32, i32* %x36, align 4
  br label %if.end.38

if.else:                                          ; preds = %if.then.28
  %34 = load i32, i32* getelementptr inbounds (%struct._GdkPoint, %struct._GdkPoint* @find_grid_pos.cons_pnt, i32 0, i32 1), align 4
  %35 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %y37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %35, i32 0, i32 1
  store i32 %34, i32* %y37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.35
  br label %if.end.40

if.else.39:                                       ; preds = %if.end.20
  %36 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %37 = bitcast %struct._GdkPoint* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct._GdkPoint* @find_grid_pos.cons_pnt to i8*), i8* %37, i64 8, i32 4, i1 false)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.39, %if.end.38
  br label %if.end.189

if.else.41:                                       ; preds = %entry
  %38 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp42 = icmp eq i32 %38, 1
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.else.41
  %39 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %40 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  call void @find_grid_pos_polar(%struct._GdkPoint* %39, %struct._GdkPoint* %40)
  br label %if.end.188

if.else.45:                                       ; preds = %if.else.41
  %41 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp46 = icmp eq i32 %41, 2
  br i1 %cmp46, label %if.then.48, label %if.end.187

if.then.48:                                       ; preds = %if.else.45
  %42 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %conv51 = sitofp i32 %42 to double
  store double %conv51, double* %r, align 8
  %43 = load double, double* %r, align 8
  %mul52 = fmul double 0x3FEBB67AE8584CAA, %43
  store double %mul52, double* %h, align 8
  %44 = load i16, i16* %x, align 2
  %conv53 = sext i16 %44 to i32
  %conv54 = sitofp i32 %conv53 to double
  %45 = load double, double* %h, align 8
  %div55 = fdiv double %conv54, %45
  %conv56 = fptosi double %div55 to i32
  store i32 %conv56, i32* %n_lo, align 4
  %46 = load i32, i32* %n_lo, align 4
  %add57 = add nsw i32 %46, 1
  store i32 %add57, i32* %n_hi, align 4
  %47 = load i16, i16* %y, align 2
  %conv58 = sext i16 %47 to i32
  %conv59 = sitofp i32 %conv58 to double
  %48 = load double, double* %r, align 8
  %div60 = fdiv double %conv59, %48
  %49 = load i32, i32* %n_lo, align 4
  %rem61 = srem i32 %49, 2
  %conv62 = sitofp i32 %rem61 to double
  %mul63 = fmul double 5.000000e-01, %conv62
  %sub64 = fsub double %div60, %mul63
  %conv65 = fptosi double %sub64 to i32
  store i32 %conv65, i32* %m_lo_n_lo, align 4
  %50 = load i32, i32* %m_lo_n_lo, align 4
  %add66 = add nsw i32 %50, 1
  store i32 %add66, i32* %m_hi_n_lo, align 4
  %51 = load i32, i32* %m_lo_n_lo, align 4
  %conv67 = sitofp i32 %51 to double
  %52 = load double, double* %r, align 8
  %mul68 = fmul double %conv67, %52
  %53 = load double, double* %r, align 8
  %mul69 = fmul double 5.000000e-01, %53
  %54 = load i32, i32* %n_lo, align 4
  %rem70 = srem i32 %54, 2
  %conv71 = sitofp i32 %rem70 to double
  %mul72 = fmul double %mul69, %conv71
  %add73 = fadd double %mul68, %mul72
  %55 = load i16, i16* %y, align 2
  %conv74 = sext i16 %55 to i32
  %conv75 = sitofp i32 %conv74 to double
  %sub76 = fsub double %add73, %conv75
  %conv77 = fptosi double %sub76 to i32
  %call78 = call i32 @abs(i32 %conv77) #5
  %56 = load i32, i32* %m_hi_n_lo, align 4
  %conv79 = sitofp i32 %56 to double
  %57 = load double, double* %r, align 8
  %mul80 = fmul double %conv79, %57
  %58 = load double, double* %r, align 8
  %mul81 = fmul double 5.000000e-01, %58
  %59 = load i32, i32* %n_lo, align 4
  %rem82 = srem i32 %59, 2
  %conv83 = sitofp i32 %rem82 to double
  %mul84 = fmul double %mul81, %conv83
  %add85 = fadd double %mul80, %mul84
  %60 = load i16, i16* %y, align 2
  %conv86 = sext i16 %60 to i32
  %conv87 = sitofp i32 %conv86 to double
  %sub88 = fsub double %add85, %conv87
  %conv89 = fptosi double %sub88 to i32
  %call90 = call i32 @abs(i32 %conv89) #5
  %cmp91 = icmp slt i32 %call78, %call90
  br i1 %cmp91, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.then.48
  %61 = load i32, i32* %m_lo_n_lo, align 4
  store i32 %61, i32* %m_n_lo, align 4
  br label %if.end.95

if.else.94:                                       ; preds = %if.then.48
  %62 = load i32, i32* %m_hi_n_lo, align 4
  store i32 %62, i32* %m_n_lo, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.then.93
  %63 = load i16, i16* %y, align 2
  %conv96 = sext i16 %63 to i32
  %conv97 = sitofp i32 %conv96 to double
  %64 = load double, double* %r, align 8
  %div98 = fdiv double %conv97, %64
  %65 = load i32, i32* %n_hi, align 4
  %rem99 = srem i32 %65, 2
  %conv100 = sitofp i32 %rem99 to double
  %mul101 = fmul double 5.000000e-01, %conv100
  %sub102 = fsub double %div98, %mul101
  %conv103 = fptosi double %sub102 to i32
  store i32 %conv103, i32* %m_lo_n_hi, align 4
  %66 = load i32, i32* %m_lo_n_hi, align 4
  %add104 = add nsw i32 %66, 1
  store i32 %add104, i32* %m_hi_n_hi, align 4
  %67 = load i32, i32* %m_lo_n_hi, align 4
  %conv105 = sitofp i32 %67 to double
  %68 = load double, double* %r, align 8
  %mul106 = fmul double %conv105, %68
  %69 = load double, double* %r, align 8
  %mul107 = fmul double 5.000000e-01, %69
  %70 = load i32, i32* %n_hi, align 4
  %rem108 = srem i32 %70, 2
  %conv109 = sitofp i32 %rem108 to double
  %mul110 = fmul double %mul107, %conv109
  %add111 = fadd double %mul106, %mul110
  %71 = load i16, i16* %y, align 2
  %conv112 = sext i16 %71 to i32
  %conv113 = sitofp i32 %conv112 to double
  %sub114 = fsub double %add111, %conv113
  %conv115 = fptosi double %sub114 to i32
  %call116 = call i32 @abs(i32 %conv115) #5
  %72 = load i32, i32* %m_hi_n_hi, align 4
  %conv117 = sitofp i32 %72 to double
  %73 = load double, double* %r, align 8
  %mul118 = fmul double %conv117, %73
  %74 = load double, double* %r, align 8
  %mul119 = fmul double 5.000000e-01, %74
  %75 = load i32, i32* %n_hi, align 4
  %rem120 = srem i32 %75, 2
  %conv121 = sitofp i32 %rem120 to double
  %mul122 = fmul double %mul119, %conv121
  %add123 = fadd double %mul118, %mul122
  %76 = load i16, i16* %y, align 2
  %conv124 = sext i16 %76 to i32
  %conv125 = sitofp i32 %conv124 to double
  %sub126 = fsub double %add123, %conv125
  %conv127 = fptosi double %sub126 to i32
  %call128 = call i32 @abs(i32 %conv127) #5
  %cmp129 = icmp slt i32 %call116, %call128
  br i1 %cmp129, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %if.end.95
  %77 = load i32, i32* %m_lo_n_hi, align 4
  store i32 %77, i32* %m_n_hi, align 4
  br label %if.end.133

if.else.132:                                      ; preds = %if.end.95
  %78 = load i32, i32* %m_hi_n_hi, align 4
  store i32 %78, i32* %m_n_hi, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %if.then.131
  %79 = load i32, i32* %n_lo, align 4
  %conv134 = sitofp i32 %79 to double
  %80 = load double, double* %h, align 8
  %mul135 = fmul double %conv134, %80
  %conv136 = fptosi double %mul135 to i32
  store i32 %conv136, i32* %x149, align 4
  %81 = load i32, i32* %m_n_lo, align 4
  %conv137 = sitofp i32 %81 to double
  %82 = load double, double* %r, align 8
  %mul138 = fmul double %conv137, %82
  %83 = load double, double* %r, align 8
  %mul139 = fmul double 5.000000e-01, %83
  %84 = load i32, i32* %n_lo, align 4
  %rem140 = srem i32 %84, 2
  %conv141 = sitofp i32 %rem140 to double
  %mul142 = fmul double %mul139, %conv141
  %add143 = fadd double %mul138, %mul142
  %conv144 = fptosi double %add143 to i32
  store i32 %conv144, i32* %y1, align 4
  %85 = load i32, i32* %n_hi, align 4
  %conv145 = sitofp i32 %85 to double
  %86 = load double, double* %h, align 8
  %mul146 = fmul double %conv145, %86
  %conv147 = fptosi double %mul146 to i32
  store i32 %conv147, i32* %x2, align 4
  %87 = load i32, i32* %m_n_hi, align 4
  %conv148 = sitofp i32 %87 to double
  %88 = load double, double* %r, align 8
  %mul149 = fmul double %conv148, %88
  %89 = load double, double* %r, align 8
  %mul150 = fmul double 5.000000e-01, %89
  %90 = load i32, i32* %n_hi, align 4
  %rem151 = srem i32 %90, 2
  %conv152 = sitofp i32 %rem151 to double
  %mul153 = fmul double %mul150, %conv152
  %add154 = fadd double %mul149, %mul153
  %conv155 = fptosi double %add154 to i32
  store i32 %conv155, i32* %y250, align 4
  %91 = load i16, i16* %x, align 2
  %conv156 = sext i16 %91 to i32
  %92 = load i32, i32* %x149, align 4
  %sub157 = sub nsw i32 %conv156, %92
  %93 = load i16, i16* %x, align 2
  %conv158 = sext i16 %93 to i32
  %94 = load i32, i32* %x149, align 4
  %sub159 = sub nsw i32 %conv158, %94
  %mul160 = mul nsw i32 %sub157, %sub159
  %95 = load i16, i16* %y, align 2
  %conv161 = sext i16 %95 to i32
  %96 = load i32, i32* %y1, align 4
  %sub162 = sub nsw i32 %conv161, %96
  %97 = load i16, i16* %y, align 2
  %conv163 = sext i16 %97 to i32
  %98 = load i32, i32* %y1, align 4
  %sub164 = sub nsw i32 %conv163, %98
  %mul165 = mul nsw i32 %sub162, %sub164
  %add166 = add nsw i32 %mul160, %mul165
  %99 = load i16, i16* %x, align 2
  %conv167 = sext i16 %99 to i32
  %100 = load i32, i32* %x2, align 4
  %sub168 = sub nsw i32 %conv167, %100
  %101 = load i16, i16* %x, align 2
  %conv169 = sext i16 %101 to i32
  %102 = load i32, i32* %x2, align 4
  %sub170 = sub nsw i32 %conv169, %102
  %mul171 = mul nsw i32 %sub168, %sub170
  %103 = load i16, i16* %y, align 2
  %conv172 = sext i16 %103 to i32
  %104 = load i32, i32* %y250, align 4
  %sub173 = sub nsw i32 %conv172, %104
  %105 = load i16, i16* %y, align 2
  %conv174 = sext i16 %105 to i32
  %106 = load i32, i32* %y250, align 4
  %sub175 = sub nsw i32 %conv174, %106
  %mul176 = mul nsw i32 %sub173, %sub175
  %add177 = add nsw i32 %mul171, %mul176
  %cmp178 = icmp slt i32 %add166, %add177
  br i1 %cmp178, label %if.then.180, label %if.else.183

if.then.180:                                      ; preds = %if.end.133
  %107 = load i32, i32* %x149, align 4
  %108 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %x181 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %108, i32 0, i32 0
  store i32 %107, i32* %x181, align 4
  %109 = load i32, i32* %y1, align 4
  %110 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %y182 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %110, i32 0, i32 1
  store i32 %109, i32* %y182, align 4
  br label %if.end.186

if.else.183:                                      ; preds = %if.end.133
  %111 = load i32, i32* %x2, align 4
  %112 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %x184 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %112, i32 0, i32 0
  store i32 %111, i32* %x184, align 4
  %113 = load i32, i32* %y250, align 4
  %114 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %y185 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %114, i32 0, i32 1
  store i32 %113, i32* %y185, align 4
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.180
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.else.45
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.then.44
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.end.40
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal void @find_grid_pos_polar(%struct._GdkPoint* %p, %struct._GdkPoint* %gp) #0 {
entry:
  %p.addr = alloca %struct._GdkPoint*, align 8
  %gp.addr = alloca %struct._GdkPoint*, align 8
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %px = alloca double, align 8
  %py = alloca double, align 8
  %x6 = alloca double, align 8
  %y7 = alloca double, align 8
  %r = alloca double, align 8
  %t = alloca double, align 8
  %sectorSize = alloca double, align 8
  store %struct._GdkPoint* %p, %struct._GdkPoint** %p.addr, align 8
  store %struct._GdkPoint* %gp, %struct._GdkPoint** %gp.addr, align 8
  %0 = load i32, i32* @preview_width, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 2.000000e+00
  store double %div, double* %cx, align 8
  %1 = load i32, i32* @preview_height, align 4
  %conv1 = sitofp i32 %1 to double
  %div2 = fdiv double %conv1, 2.000000e+00
  store double %div2, double* %cy, align 8
  %2 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %x = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %2, i32 0, i32 0
  %3 = load i32, i32* %x, align 4
  %conv3 = sitofp i32 %3 to double
  %4 = load double, double* %cx, align 8
  %sub = fsub double %conv3, %4
  store double %sub, double* %px, align 8
  %5 = load %struct._GdkPoint*, %struct._GdkPoint** %p.addr, align 8
  %y = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %5, i32 0, i32 1
  %6 = load i32, i32* %y, align 4
  %conv4 = sitofp i32 %6 to double
  %7 = load double, double* %cy, align 8
  %sub5 = fsub double %conv4, %7
  store double %sub5, double* %py, align 8
  store double 0.000000e+00, double* %x6, align 8
  store double 0.000000e+00, double* %y7, align 8
  %8 = load double, double* %px, align 8
  %9 = load double, double* %px, align 8
  %mul = fmul double %8, %9
  %10 = load double, double* %py, align 8
  %11 = load double, double* %py, align 8
  %mul8 = fmul double %10, %11
  %add = fadd double %mul, %mul8
  %call = call double @sqrt(double %add) #2
  store double %call, double* %r, align 8
  %12 = load double, double* %r, align 8
  %13 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 6), align 8
  %mul9 = fmul double %13, 5.000000e-01
  %cmp = fcmp oge double %12, %mul9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7), align 8
  %15 = load double, double* %r, align 8
  %16 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 6), align 8
  %sub11 = fsub double %15, %16
  %17 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7), align 8
  %div12 = fdiv double %sub11, %17
  %add13 = fadd double 5.000000e-01, %div12
  %conv14 = fptosi double %add13 to i32
  %conv15 = sitofp i32 %conv14 to double
  %mul16 = fmul double %14, %conv15
  %18 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 6), align 8
  %add17 = fadd double %mul16, %18
  store double %add17, double* %r, align 8
  %19 = load double, double* %py, align 8
  %20 = load double, double* %px, align 8
  %call18 = call double @atan2(double %19, double %20) #2
  %add19 = fadd double %call18, 0x401921FB54442D18
  store double %add19, double* %t, align 8
  %21 = load double, double* %r, align 8
  %call20 = call double @sector_size_at_radius(double %21)
  store double %call20, double* %sectorSize, align 8
  %22 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 8), align 8
  %23 = load double, double* %t, align 8
  %24 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 8), align 8
  %sub21 = fsub double %23, %24
  %25 = load double, double* %sectorSize, align 8
  %div22 = fdiv double %sub21, %25
  %add23 = fadd double 5.000000e-01, %div22
  %conv24 = fptosi double %add23 to i32
  %conv25 = sitofp i32 %conv24 to double
  %26 = load double, double* %sectorSize, align 8
  %mul26 = fmul double %conv25, %26
  %add27 = fadd double %22, %mul26
  store double %add27, double* %t, align 8
  %27 = load double, double* %r, align 8
  %28 = load double, double* %t, align 8
  %call28 = call double @cos(double %28) #2
  %mul29 = fmul double %27, %call28
  store double %mul29, double* %x6, align 8
  %29 = load double, double* %r, align 8
  %30 = load double, double* %t, align 8
  %call30 = call double @sin(double %30) #2
  %mul31 = fmul double %29, %call30
  store double %mul31, double* %y7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load double, double* %x6, align 8
  %32 = load double, double* %cx, align 8
  %add32 = fadd double %31, %32
  %conv33 = fptosi double %add32 to i32
  %33 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %x34 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %33, i32 0, i32 0
  store i32 %conv33, i32* %x34, align 4
  %34 = load double, double* %y7, align 8
  %35 = load double, double* %cy, align 8
  %add35 = fadd double %34, %35
  %conv36 = fptosi double %add35 to i32
  %36 = load %struct._GdkPoint*, %struct._GdkPoint** %gp.addr, align 8
  %y37 = getelementptr inbounds %struct._GdkPoint, %struct._GdkPoint* %36, i32 0, i32 1
  store i32 %conv36, i32* %y37, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @draw_grid(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load i32, i32* @preview_width, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @preview_height, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.14

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 2), align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load %struct.GFigContext*, %struct.GFigContext** @gfig_context, align 8
  %preview = getelementptr inbounds %struct.GFigContext, %struct.GFigContext* %6, i32 0, i32 6
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %preview, align 8
  %8 = load i32, i32* @grid_gc_type, align 4
  %call = call %struct._cairo* @gfig_get_grid_gc(%struct._cairo* %5, %struct._GtkWidget* %7, i32 %8)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  br label %if.end.14

if.end.3:                                         ; preds = %if.then.2
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_line_width(%struct._cairo* %9, double 1.000000e+00)
  %10 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.end.3
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_grid_sq(%struct._cairo* %11)
  br label %if.end.14

if.else.6:                                        ; preds = %if.end.3
  %12 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp7 = icmp eq i32 %12, 1
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.6
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_grid_polar(%struct._cairo* %13)
  br label %if.end.13

if.else.9:                                        ; preds = %if.else.6
  %14 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 1), align 4
  %cmp10 = icmp eq i32 %14, 2
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else.9
  %15 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @draw_grid_iso(%struct._cairo* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.else, %if.end.13, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._cairo* @gfig_get_grid_gc(%struct._cairo* %cr, %struct._GtkWidget* %w, i32 %gctype) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %w.addr = alloca %struct._GtkWidget*, align 8
  %gctype.addr = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store %struct._GtkWidget* %w, %struct._GtkWidget** %w.addr, align 8
  store i32 %gctype, i32* %gctype.addr, align 4
  %0 = load i32, i32* %gctype.addr, align 4
  switch i32 %0, label %sw.default [
    i32 -1, label %sw.bb
    i32 -2, label %sw.bb.1
    i32 -3, label %sw.bb.2
    i32 -4, label %sw.bb.3
    i32 -5, label %sw.bb.4
    i32 -6, label %sw.bb.5
    i32 -7, label %sw.bb.6
  ]

sw.default:                                       ; preds = %entry
  br label %sw.bb

sw.bb:                                            ; preds = %entry, %sw.default
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %1, double 9.200000e-01, double 9.200000e-01, double 9.200000e-01)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %2, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %3, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %4, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %5, double 2.500000e-01, double 2.500000e-01, double 2.500000e-01)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %6, double 7.500000e-01, double 7.500000e-01, double 7.500000e-01)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_set_source_rgb(%struct._cairo* %7, double 1.250000e-01, double 1.250000e-01, double 1.250000e-01)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %8 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  ret %struct._cairo* %8
}

declare void @cairo_set_line_width(%struct._cairo*, double) #3

; Function Attrs: nounwind uwtable
define internal void @draw_grid_sq(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %step = alloca i32, align 4
  %loop = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  store i32 %0, i32* %step, align 4
  store i32 0, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %loop, align 4
  %2 = load i32, i32* @preview_height, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %4 = load i32, i32* %loop, align 4
  %conv = sitofp i32 %4 to double
  %add = fadd double %conv, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %3, double 5.000000e-01, double %add)
  %5 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %6 = load i32, i32* @preview_width, align 4
  %conv1 = sitofp i32 %6 to double
  %add2 = fadd double %conv1, 5.000000e-01
  %7 = load i32, i32* %loop, align 4
  %conv3 = sitofp i32 %7 to double
  %add4 = fadd double %conv3, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %5, double %add2, double %add4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %step, align 4
  %9 = load i32, i32* %loop, align 4
  %add5 = add nsw i32 %9, %8
  store i32 %add5, i32* %loop, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %loop, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %for.end
  %10 = load i32, i32* %loop, align 4
  %11 = load i32, i32* @preview_width, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.6
  %12 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %13 = load i32, i32* %loop, align 4
  %conv10 = sitofp i32 %13 to double
  %add11 = fadd double %conv10, 5.000000e-01
  call void @cairo_move_to(%struct._cairo* %12, double %add11, double 5.000000e-01)
  %14 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %15 = load i32, i32* %loop, align 4
  %conv12 = sitofp i32 %15 to double
  %add13 = fadd double %conv12, 5.000000e-01
  %16 = load i32, i32* @preview_height, align 4
  %conv14 = sitofp i32 %16 to double
  %add15 = fadd double %conv14, 5.000000e-01
  call void @cairo_line_to(%struct._cairo* %14, double %add13, double %add15)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.9
  %17 = load i32, i32* %step, align 4
  %18 = load i32, i32* %loop, align 4
  %add17 = add nsw i32 %18, %17
  store i32 %add17, i32* %loop, align 4
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  %19 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_grid_polar(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %inner_radius = alloca double, align 8
  %outer_radius = alloca double, align 8
  %max_radius = alloca double, align 8
  %current_sectors = alloca i32, align 4
  %factors = alloca %struct.PrimeFactors*, align 8
  %t = alloca double, align 8
  %sector_size = alloca double, align 8
  %normal_x = alloca double, align 8
  %normal_y = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load i32, i32* @preview_width, align 4
  %1 = load i32, i32* @preview_width, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* @preview_height, align 4
  %3 = load i32, i32* @preview_height, align 4
  %mul1 = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, %mul1
  %conv = sitofp i32 %add to double
  %call = call double @sqrt(double %conv) #2
  store double %call, double* %max_radius, align 8
  store i32 1, i32* %current_sectors, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %call2 = call %struct.PrimeFactors* @prime_factors_new(i32 %4)
  store %struct.PrimeFactors* %call2, %struct.PrimeFactors** %factors, align 8
  store double 0.000000e+00, double* %inner_radius, align 8
  %5 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 6), align 8
  store double %5, double* %outer_radius, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %entry
  %6 = load double, double* %outer_radius, align 8
  %7 = load double, double* %max_radius, align 8
  %cmp = fcmp ole double %6, %7
  br i1 %cmp, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %current_sectors, align 4
  %conv4 = sitofp i32 %8 to double
  %div = fdiv double 0x401921FB54442D18, %conv4
  store double %div, double* %sector_size, align 8
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %10 = load i32, i32* @preview_width, align 4
  %div5 = sdiv i32 %10, 2
  %conv6 = sitofp i32 %div5 to double
  %add7 = fadd double 5.000000e-01, %conv6
  %11 = load i32, i32* @preview_height, align 4
  %div8 = sdiv i32 %11, 2
  %conv9 = sitofp i32 %div8 to double
  %add10 = fadd double 5.000000e-01, %conv9
  %12 = load double, double* %outer_radius, align 8
  call void @cairo_arc(%struct._cairo* %9, double %add7, double %add10, double %12, double 0.000000e+00, double 0x401921FB54442D18)
  %13 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %13)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %14 = load i32, i32* %current_sectors, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %cmp11 = icmp slt i32 %14, %15
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %16 = load double, double* %inner_radius, align 8
  %17 = load double, double* %sector_size, align 8
  %mul13 = fmul double %16, %17
  %18 = load %struct.PrimeFactors*, %struct.PrimeFactors** %factors, align 8
  %call14 = call i32 @prime_factors_lookahead(%struct.PrimeFactors* %18)
  %conv15 = sitofp i32 %call14 to double
  %19 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 9), align 8
  %mul16 = fmul double %conv15, %19
  %cmp17 = fcmp ogt double %mul13, %mul16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %20 = phi i1 [ false, %while.cond ], [ %cmp17, %land.rhs ]
  br i1 %20, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %21 = load %struct.PrimeFactors*, %struct.PrimeFactors** %factors, align 8
  %call19 = call i32 @prime_factors_get(%struct.PrimeFactors* %21)
  %22 = load i32, i32* %current_sectors, align 4
  %mul20 = mul nsw i32 %22, %call19
  store i32 %mul20, i32* %current_sectors, align 4
  %23 = load i32, i32* %current_sectors, align 4
  %conv21 = sitofp i32 %23 to double
  %div22 = fdiv double 0x401921FB54442D18, %conv21
  store double %div22, double* %sector_size, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  store double 0.000000e+00, double* %t, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %while.end
  %24 = load double, double* %t, align 8
  %cmp24 = fcmp olt double %24, 0x401921FB54442D18
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %25 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 8), align 8
  %26 = load double, double* %t, align 8
  %add27 = fadd double %25, %26
  %call28 = call double @cos(double %add27) #2
  store double %call28, double* %normal_x, align 8
  %27 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 8), align 8
  %28 = load double, double* %t, align 8
  %add29 = fadd double %27, %28
  %call30 = call double @sin(double %add29) #2
  store double %call30, double* %normal_y, align 8
  %29 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %30 = load i32, i32* @preview_width, align 4
  %div31 = sdiv i32 %30, 2
  %conv32 = sitofp i32 %div31 to double
  %31 = load double, double* %inner_radius, align 8
  %32 = load double, double* %normal_x, align 8
  %mul33 = fmul double %31, %32
  %add34 = fadd double %conv32, %mul33
  %add35 = fadd double 5.000000e-01, %add34
  %33 = load i32, i32* @preview_height, align 4
  %div36 = sdiv i32 %33, 2
  %conv37 = sitofp i32 %div36 to double
  %34 = load double, double* %inner_radius, align 8
  %35 = load double, double* %normal_y, align 8
  %mul38 = fmul double %34, %35
  %sub = fsub double %conv37, %mul38
  %add39 = fadd double 5.000000e-01, %sub
  call void @cairo_move_to(%struct._cairo* %29, double %add35, double %add39)
  %36 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %37 = load i32, i32* @preview_width, align 4
  %div40 = sdiv i32 %37, 2
  %conv41 = sitofp i32 %div40 to double
  %38 = load double, double* %outer_radius, align 8
  %39 = load double, double* %normal_x, align 8
  %mul42 = fmul double %38, %39
  %add43 = fadd double %conv41, %mul42
  %add44 = fadd double 5.000000e-01, %add43
  %40 = load i32, i32* @preview_height, align 4
  %div45 = sdiv i32 %40, 2
  %conv46 = sitofp i32 %div45 to double
  %41 = load double, double* %outer_radius, align 8
  %42 = load double, double* %normal_y, align 8
  %mul47 = fmul double %41, %42
  %sub48 = fsub double %conv46, %mul47
  %add49 = fadd double 5.000000e-01, %sub48
  call void @cairo_line_to(%struct._cairo* %36, double %add44, double %add49)
  %43 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %43)
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %44 = load double, double* %sector_size, align 8
  %45 = load double, double* %t, align 8
  %add50 = fadd double %45, %44
  store double %add50, double* %t, align 8
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end
  %46 = load double, double* %outer_radius, align 8
  store double %46, double* %inner_radius, align 8
  %47 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 7), align 8
  %48 = load double, double* %outer_radius, align 8
  %add52 = fadd double %48, %47
  store double %add52, double* %outer_radius, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %49 = load %struct.PrimeFactors*, %struct.PrimeFactors** %factors, align 8
  call void @prime_factors_delete(%struct.PrimeFactors* %49)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @draw_grid_iso(%struct._cairo* %cr) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %vstep = alloca i32, align 4
  %loop = alloca double, align 8
  %hstep = alloca double, align 8
  %diagonal_start = alloca double, align 8
  %diagonal_end = alloca double, align 8
  %diagonal_width = alloca double, align 8
  %diagonal_height = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  store i32 %0, i32* %vstep, align 4
  %1 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 0), align 4
  %conv = sitofp i32 %1 to double
  %mul = fmul double %conv, 0x3FFBB67AE8584CAA
  %div = fdiv double %mul, 2.000000e+00
  store double %div, double* %hstep, align 8
  store double 0.000000e+00, double* %loop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load double, double* %loop, align 8
  %3 = load i32, i32* @preview_width, align 4
  %conv1 = sitofp i32 %3 to double
  %cmp = fcmp olt double %2, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %5 = load double, double* %loop, align 8
  call void @cairo_move_to(%struct._cairo* %4, double %5, double 0.000000e+00)
  %6 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %7 = load double, double* %loop, align 8
  %8 = load i32, i32* @preview_height, align 4
  %conv3 = sitofp i32 %8 to double
  call void @cairo_line_to(%struct._cairo* %6, double %7, double %conv3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load double, double* %hstep, align 8
  %10 = load double, double* %loop, align 8
  %add = fadd double %10, %9
  store double %add, double* %loop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %11)
  %12 = load i32, i32* @preview_width, align 4
  %mul4 = mul nsw i32 %12, 1
  %conv5 = sitofp i32 %mul4 to double
  %div6 = fdiv double %conv5, 0x3FFBB67AE8584CAA
  %13 = load i32, i32* @preview_width, align 4
  %mul7 = mul nsw i32 %13, 1
  %conv8 = sitofp i32 %mul7 to double
  %div9 = fdiv double %conv8, 0x3FFBB67AE8584CAA
  %conv10 = fptosi double %div9 to i32
  %14 = load i32, i32* %vstep, align 4
  %rem = srem i32 %conv10, %14
  %conv11 = sitofp i32 %rem to double
  %sub = fsub double %div6, %conv11
  %sub12 = fsub double -0.000000e+00, %sub
  store double %sub12, double* %diagonal_start, align 8
  %15 = load i32, i32* @preview_height, align 4
  %conv13 = sitofp i32 %15 to double
  %16 = load i32, i32* @preview_width, align 4
  %mul14 = mul nsw i32 %16, 1
  %conv15 = sitofp i32 %mul14 to double
  %div16 = fdiv double %conv15, 0x3FFBB67AE8584CAA
  %add17 = fadd double %conv13, %div16
  store double %add17, double* %diagonal_end, align 8
  %17 = load double, double* %diagonal_end, align 8
  %conv18 = fptosi double %17 to i32
  %18 = load i32, i32* %vstep, align 4
  %rem19 = srem i32 %conv18, %18
  %conv20 = sitofp i32 %rem19 to double
  %19 = load double, double* %diagonal_end, align 8
  %sub21 = fsub double %19, %conv20
  store double %sub21, double* %diagonal_end, align 8
  %20 = load i32, i32* @preview_width, align 4
  %conv22 = sitofp i32 %20 to double
  store double %conv22, double* %diagonal_width, align 8
  %21 = load i32, i32* @preview_width, align 4
  %mul23 = mul nsw i32 %21, 1
  %conv24 = sitofp i32 %mul23 to double
  %div25 = fdiv double %conv24, 0x3FFBB67AE8584CAA
  store double %div25, double* %diagonal_height, align 8
  %22 = load double, double* %diagonal_start, align 8
  store double %22, double* %loop, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.32, %for.end
  %23 = load double, double* %loop, align 8
  %24 = load double, double* %diagonal_end, align 8
  %cmp27 = fcmp olt double %23, %24
  br i1 %cmp27, label %for.body.29, label %for.end.35

for.body.29:                                      ; preds = %for.cond.26
  %25 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %26 = load double, double* %loop, align 8
  call void @cairo_move_to(%struct._cairo* %25, double 0.000000e+00, double %26)
  %27 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %28 = load double, double* %diagonal_width, align 8
  %29 = load double, double* %loop, align 8
  %30 = load double, double* %diagonal_height, align 8
  %add30 = fadd double %29, %30
  call void @cairo_line_to(%struct._cairo* %27, double %28, double %add30)
  %31 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %32 = load double, double* %loop, align 8
  call void @cairo_move_to(%struct._cairo* %31, double 0.000000e+00, double %32)
  %33 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %34 = load double, double* %diagonal_width, align 8
  %35 = load double, double* %loop, align 8
  %36 = load double, double* %diagonal_height, align 8
  %sub31 = fsub double %35, %36
  call void @cairo_line_to(%struct._cairo* %33, double %34, double %sub31)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.29
  %37 = load i32, i32* %vstep, align 4
  %conv33 = sitofp i32 %37 to double
  %38 = load double, double* %loop, align 8
  %add34 = fadd double %38, %conv33
  store double %add34, double* %loop, align 8
  br label %for.cond.26

for.end.35:                                       ; preds = %for.cond.26
  %39 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_stroke(%struct._cairo* %39)
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind
declare double @atan2(double, double) #4

; Function Attrs: nounwind uwtable
define internal double @sector_size_at_radius(double %inner_radius) #0 {
entry:
  %inner_radius.addr = alloca double, align 8
  %factors = alloca %struct.PrimeFactors*, align 8
  %current_sectors = alloca i32, align 4
  %sector_size = alloca double, align 8
  store double %inner_radius, double* %inner_radius.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %call = call %struct.PrimeFactors* @prime_factors_new(i32 %0)
  store %struct.PrimeFactors* %call, %struct.PrimeFactors** %factors, align 8
  store i32 1, i32* %current_sectors, align 4
  %1 = load i32, i32* %current_sectors, align 4
  %conv = sitofp i32 %1 to double
  %div = fdiv double 0x401921FB54442D18, %conv
  store double %div, double* %sector_size, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %current_sectors, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 10), align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load double, double* %inner_radius.addr, align 8
  %5 = load double, double* %sector_size, align 8
  %mul = fmul double %4, %5
  %6 = load %struct.PrimeFactors*, %struct.PrimeFactors** %factors, align 8
  %call2 = call i32 @prime_factors_lookahead(%struct.PrimeFactors* %6)
  %conv3 = sitofp i32 %call2 to double
  %7 = load double, double* getelementptr inbounds (%struct.SelectItVals, %struct.SelectItVals* @selvals, i32 0, i32 0, i32 9), align 8
  %mul4 = fmul double %conv3, %7
  %cmp5 = fcmp ogt double %mul, %mul4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.PrimeFactors*, %struct.PrimeFactors** %factors, align 8
  %call7 = call i32 @prime_factors_get(%struct.PrimeFactors* %9)
  %10 = load i32, i32* %current_sectors, align 4
  %mul8 = mul nsw i32 %10, %call7
  store i32 %mul8, i32* %current_sectors, align 4
  %11 = load i32, i32* %current_sectors, align 4
  %conv9 = sitofp i32 %11 to double
  %div10 = fdiv double 0x401921FB54442D18, %conv9
  store double %div10, double* %sector_size, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load %struct.PrimeFactors*, %struct.PrimeFactors** %factors, align 8
  call void @prime_factors_delete(%struct.PrimeFactors* %12)
  %13 = load double, double* %sector_size, align 8
  ret double %13
}

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind
declare double @sin(double) #4

; Function Attrs: nounwind uwtable
define internal %struct.PrimeFactors* @prime_factors_new(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %this = alloca %struct.PrimeFactors*, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call noalias i8* @g_malloc_n(i64 1, i64 20)
  %0 = bitcast i8* %call to %struct.PrimeFactors*
  store %struct.PrimeFactors* %0, %struct.PrimeFactors** %this, align 8
  %1 = load i32, i32* %n.addr, align 4
  %2 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this, align 8
  %product = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %2, i32 0, i32 0
  store i32 %1, i32* %product, align 4
  %3 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this, align 8
  call void @prime_factors_reset(%struct.PrimeFactors* %3)
  %4 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this, align 8
  ret %struct.PrimeFactors* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @prime_factors_lookahead(%struct.PrimeFactors* %this) #0 {
entry:
  %this.addr = alloca %struct.PrimeFactors*, align 8
  store %struct.PrimeFactors* %this, %struct.PrimeFactors** %this.addr, align 8
  %0 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %next = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %0, i32 0, i32 3
  %1 = load i32, i32* %next, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @prime_factors_get(%struct.PrimeFactors* %this) #0 {
entry:
  %retval = alloca i32, align 4
  %this.addr = alloca %struct.PrimeFactors*, align 8
  store %struct.PrimeFactors* %this, %struct.PrimeFactors** %this.addr, align 8
  %0 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %next = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %0, i32 0, i32 3
  %1 = load i32, i32* %next, align 4
  %2 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %current = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %2, i32 0, i32 2
  store i32 %1, i32* %current, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %index = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %3, i32 0, i32 4
  %4 = load i32, i32* %index, align 4
  %cmp = icmp sle i32 %4, 30
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %remaining = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %5, i32 0, i32 1
  %6 = load i32, i32* %remaining, align 4
  %7 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %index1 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %7, i32 0, i32 4
  %8 = load i32, i32* %index1, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [31 x i8], [31 x i8]* @primes, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %rem = srem i32 %6, %conv
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %index4 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %10, i32 0, i32 4
  %11 = load i32, i32* %index4, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [31 x i8], [31 x i8]* @primes, i32 0, i64 %idxprom5
  %12 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %12 to i32
  %13 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %remaining8 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %13, i32 0, i32 1
  %14 = load i32, i32* %remaining8, align 4
  %div = sdiv i32 %14, %conv7
  store i32 %div, i32* %remaining8, align 4
  %15 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %index9 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %15, i32 0, i32 4
  %16 = load i32, i32* %index9, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [31 x i8], [31 x i8]* @primes, i32 0, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %18 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %next13 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %18, i32 0, i32 3
  store i32 %conv12, i32* %next13, align 4
  %19 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %current14 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %19, i32 0, i32 2
  %20 = load i32, i32* %current14, align 4
  store i32 %20, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %21 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %index15 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %21, i32 0, i32 4
  %22 = load i32, i32* %index15, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %index15, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %remaining16 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %23, i32 0, i32 1
  %24 = load i32, i32* %remaining16, align 4
  %25 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %next17 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %25, i32 0, i32 3
  store i32 %24, i32* %next17, align 4
  %26 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %remaining18 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %26, i32 0, i32 1
  store i32 1, i32* %remaining18, align 4
  %27 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %current19 = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %27, i32 0, i32 2
  %28 = load i32, i32* %current19, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @prime_factors_delete(%struct.PrimeFactors* %this) #0 {
entry:
  %this.addr = alloca %struct.PrimeFactors*, align 8
  store %struct.PrimeFactors* %this, %struct.PrimeFactors** %this.addr, align 8
  %0 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %1 = bitcast %struct.PrimeFactors* %0 to i8*
  call void @g_free(i8* %1)
  ret void
}

declare noalias i8* @g_malloc_n(i64, i64) #3

; Function Attrs: nounwind uwtable
define internal void @prime_factors_reset(%struct.PrimeFactors* %this) #0 {
entry:
  %this.addr = alloca %struct.PrimeFactors*, align 8
  store %struct.PrimeFactors* %this, %struct.PrimeFactors** %this.addr, align 8
  %0 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %product = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %0, i32 0, i32 0
  %1 = load i32, i32* %product, align 4
  %2 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %remaining = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %2, i32 0, i32 1
  store i32 %1, i32* %remaining, align 4
  %3 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %index = getelementptr inbounds %struct.PrimeFactors, %struct.PrimeFactors* %3, i32 0, i32 4
  store i32 0, i32* %index, align 4
  %4 = load %struct.PrimeFactors*, %struct.PrimeFactors** %this.addr, align 8
  %call = call i32 @prime_factors_get(%struct.PrimeFactors* %4)
  ret void
}

declare void @g_free(i8*) #3

declare void @cairo_set_source_rgb(%struct._cairo*, double, double, double) #3

declare void @cairo_move_to(%struct._cairo*, double, double) #3

declare void @cairo_line_to(%struct._cairo*, double, double) #3

declare void @cairo_stroke(%struct._cairo*) #3

declare void @cairo_arc(%struct._cairo*, double, double, double, double, double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
