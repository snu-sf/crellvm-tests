; ModuleID = './app/core/gimpbrush-transform.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpBrush = type { %struct._GimpData, %struct._TempBuf*, %struct._TempBuf*, i32, %struct._GimpVector2, %struct._GimpVector2, i32, %struct._GimpBrushCache*, %struct._GimpBrushCache*, %struct._GimpBrushCache* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._TempBuf = type { i32, i32, i32, i32, i32, i8* }
%struct._GimpVector2 = type { double, double }
%struct._GimpBrushCache = type opaque
%struct._GimpMatrix3 = type { [3 x [3 x double]] }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

; Function Attrs: nounwind uwtable
define void @gimp_brush_real_transform_size(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, i32* %width, i32* %height) #0 {
entry:
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %0, i32 0, i32 1
  %1 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  %width1 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %1, i32 0, i32 1
  %2 = load i32, i32* %width1, align 4
  %conv = sitofp i32 %2 to double
  %3 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask2 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %3, i32 0, i32 1
  %4 = load %struct._TempBuf*, %struct._TempBuf** %mask2, align 8
  %height3 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 2
  %5 = load i32, i32* %height3, align 4
  %conv4 = sitofp i32 %5 to double
  %6 = load double, double* %scale.addr, align 8
  %7 = load double, double* %aspect_ratio.addr, align 8
  %8 = load double, double* %angle.addr, align 8
  call void @gimp_brush_transform_matrix(double %conv, double %conv4, double %6, double %7, double %8, %struct._GimpMatrix3* %matrix)
  %9 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask5 = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %9, i32 0, i32 1
  %10 = load %struct._TempBuf*, %struct._TempBuf** %mask5, align 8
  %11 = load i32*, i32** %width.addr, align 8
  %12 = load i32*, i32** %height.addr, align 8
  call void @gimp_brush_transform_bounding_box(%struct._TempBuf* %10, %struct._GimpMatrix3* %matrix, i32* %x, i32* %y, i32* %11, i32* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_brush_transform_matrix(double %width, double %height, double %scale, double %aspect_ratio, double %angle, %struct._GimpMatrix3* %matrix) #0 {
entry:
  %width.addr = alloca double, align 8
  %height.addr = alloca double, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %center_x = alloca double, align 8
  %center_y = alloca double, align 8
  %scale_x = alloca double, align 8
  %scale_y = alloca double, align 8
  store double %width, double* %width.addr, align 8
  store double %height, double* %height.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  %0 = load double, double* %width.addr, align 8
  %div = fdiv double %0, 2.000000e+00
  store double %div, double* %center_x, align 8
  %1 = load double, double* %height.addr, align 8
  %div1 = fdiv double %1, 2.000000e+00
  store double %div1, double* %center_y, align 8
  %2 = load double, double* %scale.addr, align 8
  store double %2, double* %scale_x, align 8
  %3 = load double, double* %scale.addr, align 8
  store double %3, double* %scale_y, align 8
  %4 = load double, double* %aspect_ratio.addr, align 8
  %cmp = fcmp olt double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load double, double* %scale.addr, align 8
  %6 = load double, double* %aspect_ratio.addr, align 8
  %call = call double @fabs(double %6) #5
  %div2 = fdiv double %call, 2.000000e+01
  %sub = fsub double 1.000000e+00, %div2
  %mul = fmul double %5, %sub
  store double %mul, double* %scale_x, align 8
  %7 = load double, double* %scale.addr, align 8
  store double %7, double* %scale_y, align 8
  br label %if.end.8

if.else:                                          ; preds = %entry
  %8 = load double, double* %aspect_ratio.addr, align 8
  %cmp3 = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %9 = load double, double* %scale.addr, align 8
  store double %9, double* %scale_x, align 8
  %10 = load double, double* %scale.addr, align 8
  %11 = load double, double* %aspect_ratio.addr, align 8
  %div5 = fdiv double %11, 2.000000e+01
  %sub6 = fsub double 1.000000e+00, %div5
  %mul7 = fmul double %10, %sub6
  store double %mul7, double* %scale_y, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %12 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_identity(%struct._GimpMatrix3* %12)
  %13 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %14 = load double, double* %scale_x, align 8
  %15 = load double, double* %scale_y, align 8
  call void @gimp_matrix3_scale(%struct._GimpMatrix3* %13, double %14, double %15)
  %16 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %17 = load double, double* %center_x, align 8
  %sub9 = fsub double -0.000000e+00, %17
  %18 = load double, double* %scale_x, align 8
  %mul10 = fmul double %sub9, %18
  %19 = load double, double* %center_y, align 8
  %sub11 = fsub double -0.000000e+00, %19
  %20 = load double, double* %scale_y, align 8
  %mul12 = fmul double %sub11, %20
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %16, double %mul10, double %mul12)
  %21 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %22 = load double, double* %angle.addr, align 8
  %mul13 = fmul double 0xC01921FB54442D18, %22
  call void @gimp_matrix3_rotate(%struct._GimpMatrix3* %21, double %mul13)
  %23 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %24 = load double, double* %center_x, align 8
  %25 = load double, double* %scale_x, align 8
  %mul14 = fmul double %24, %25
  %26 = load double, double* %center_y, align 8
  %27 = load double, double* %scale_y, align 8
  %mul15 = fmul double %26, %27
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %23, double %mul14, double %mul15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_transform_bounding_box(%struct._TempBuf* %brush, %struct._GimpMatrix3* %matrix, i32* %x, i32* %y, i32* %width, i32* %height) #0 {
entry:
  %brush.addr = alloca %struct._TempBuf*, align 8
  %matrix.addr = alloca %struct._GimpMatrix3*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %width.addr = alloca i32*, align 8
  %height.addr = alloca i32*, align 8
  %w = alloca double, align 8
  %h = alloca double, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %x3 = alloca double, align 8
  %x4 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  %y3 = alloca double, align 8
  %y4 = alloca double, align 8
  %temp_x = alloca double, align 8
  %temp_y = alloca double, align 8
  store %struct._TempBuf* %brush, %struct._TempBuf** %brush.addr, align 8
  store %struct._GimpMatrix3* %matrix, %struct._GimpMatrix3** %matrix.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  store i32* %width, i32** %width.addr, align 8
  store i32* %height, i32** %height.addr, align 8
  %0 = load %struct._TempBuf*, %struct._TempBuf** %brush.addr, align 8
  %width1 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %0, i32 0, i32 1
  %1 = load i32, i32* %width1, align 4
  %conv = sitofp i32 %1 to double
  store double %conv, double* %w, align 8
  %2 = load %struct._TempBuf*, %struct._TempBuf** %brush.addr, align 8
  %height2 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 2
  %3 = load i32, i32* %height2, align 4
  %conv3 = sitofp i32 %3 to double
  store double %conv3, double* %h, align 8
  %4 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %4, double 0.000000e+00, double 0.000000e+00, double* %x1, double* %y1)
  %5 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %6 = load double, double* %w, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %5, double %6, double 0.000000e+00, double* %x2, double* %y2)
  %7 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %8 = load double, double* %h, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %7, double 0.000000e+00, double %8, double* %x3, double* %y3)
  %9 = load %struct._GimpMatrix3*, %struct._GimpMatrix3** %matrix.addr, align 8
  %10 = load double, double* %w, align 8
  %11 = load double, double* %h, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %9, double %10, double %11, double* %x4, double* %y4)
  %12 = load double, double* %x1, align 8
  %13 = load double, double* %x2, align 8
  %cmp = fcmp olt double %12, %13
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load double, double* %x1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %15 = load double, double* %x2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %14, %cond.true ], [ %15, %cond.false ]
  %16 = load double, double* %x3, align 8
  %17 = load double, double* %x4, align 8
  %cmp5 = fcmp olt double %16, %17
  br i1 %cmp5, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  %18 = load double, double* %x3, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  %19 = load double, double* %x4, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi double [ %18, %cond.true.7 ], [ %19, %cond.false.8 ]
  %cmp11 = fcmp olt double %cond, %cond10
  br i1 %cmp11, label %cond.true.13, label %cond.false.20

cond.true.13:                                     ; preds = %cond.end.9
  %20 = load double, double* %x1, align 8
  %21 = load double, double* %x2, align 8
  %cmp14 = fcmp olt double %20, %21
  br i1 %cmp14, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.true.13
  %22 = load double, double* %x1, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.true.13
  %23 = load double, double* %x2, align 8
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.16
  %cond19 = phi double [ %22, %cond.true.16 ], [ %23, %cond.false.17 ]
  br label %cond.end.27

cond.false.20:                                    ; preds = %cond.end.9
  %24 = load double, double* %x3, align 8
  %25 = load double, double* %x4, align 8
  %cmp21 = fcmp olt double %24, %25
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.false.20
  %26 = load double, double* %x3, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.false.20
  %27 = load double, double* %x4, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi double [ %26, %cond.true.23 ], [ %27, %cond.false.24 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end.25, %cond.end.18
  %cond28 = phi double [ %cond19, %cond.end.18 ], [ %cond26, %cond.end.25 ]
  store double %cond28, double* %temp_x, align 8
  %28 = load double, double* %y1, align 8
  %29 = load double, double* %y2, align 8
  %cmp29 = fcmp olt double %28, %29
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.end.27
  %30 = load double, double* %y1, align 8
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end.27
  %31 = load double, double* %y2, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi double [ %30, %cond.true.31 ], [ %31, %cond.false.32 ]
  %32 = load double, double* %y3, align 8
  %33 = load double, double* %y4, align 8
  %cmp35 = fcmp olt double %32, %33
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.end.33
  %34 = load double, double* %y3, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end.33
  %35 = load double, double* %y4, align 8
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi double [ %34, %cond.true.37 ], [ %35, %cond.false.38 ]
  %cmp41 = fcmp olt double %cond34, %cond40
  br i1 %cmp41, label %cond.true.43, label %cond.false.50

cond.true.43:                                     ; preds = %cond.end.39
  %36 = load double, double* %y1, align 8
  %37 = load double, double* %y2, align 8
  %cmp44 = fcmp olt double %36, %37
  br i1 %cmp44, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.true.43
  %38 = load double, double* %y1, align 8
  br label %cond.end.48

cond.false.47:                                    ; preds = %cond.true.43
  %39 = load double, double* %y2, align 8
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.false.47, %cond.true.46
  %cond49 = phi double [ %38, %cond.true.46 ], [ %39, %cond.false.47 ]
  br label %cond.end.57

cond.false.50:                                    ; preds = %cond.end.39
  %40 = load double, double* %y3, align 8
  %41 = load double, double* %y4, align 8
  %cmp51 = fcmp olt double %40, %41
  br i1 %cmp51, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %cond.false.50
  %42 = load double, double* %y3, align 8
  br label %cond.end.55

cond.false.54:                                    ; preds = %cond.false.50
  %43 = load double, double* %y4, align 8
  br label %cond.end.55

cond.end.55:                                      ; preds = %cond.false.54, %cond.true.53
  %cond56 = phi double [ %42, %cond.true.53 ], [ %43, %cond.false.54 ]
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.end.55, %cond.end.48
  %cond58 = phi double [ %cond49, %cond.end.48 ], [ %cond56, %cond.end.55 ]
  store double %cond58, double* %temp_y, align 8
  %44 = load double, double* %x1, align 8
  %45 = load double, double* %x2, align 8
  %cmp59 = fcmp ogt double %44, %45
  br i1 %cmp59, label %cond.true.61, label %cond.false.62

cond.true.61:                                     ; preds = %cond.end.57
  %46 = load double, double* %x1, align 8
  br label %cond.end.63

cond.false.62:                                    ; preds = %cond.end.57
  %47 = load double, double* %x2, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.true.61
  %cond64 = phi double [ %46, %cond.true.61 ], [ %47, %cond.false.62 ]
  %48 = load double, double* %x3, align 8
  %49 = load double, double* %x4, align 8
  %cmp65 = fcmp ogt double %48, %49
  br i1 %cmp65, label %cond.true.67, label %cond.false.68

cond.true.67:                                     ; preds = %cond.end.63
  %50 = load double, double* %x3, align 8
  br label %cond.end.69

cond.false.68:                                    ; preds = %cond.end.63
  %51 = load double, double* %x4, align 8
  br label %cond.end.69

cond.end.69:                                      ; preds = %cond.false.68, %cond.true.67
  %cond70 = phi double [ %50, %cond.true.67 ], [ %51, %cond.false.68 ]
  %cmp71 = fcmp ogt double %cond64, %cond70
  br i1 %cmp71, label %cond.true.73, label %cond.false.80

cond.true.73:                                     ; preds = %cond.end.69
  %52 = load double, double* %x1, align 8
  %53 = load double, double* %x2, align 8
  %cmp74 = fcmp ogt double %52, %53
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %cond.true.73
  %54 = load double, double* %x1, align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %cond.true.73
  %55 = load double, double* %x2, align 8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi double [ %54, %cond.true.76 ], [ %55, %cond.false.77 ]
  br label %cond.end.87

cond.false.80:                                    ; preds = %cond.end.69
  %56 = load double, double* %x3, align 8
  %57 = load double, double* %x4, align 8
  %cmp81 = fcmp ogt double %56, %57
  br i1 %cmp81, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.false.80
  %58 = load double, double* %x3, align 8
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.false.80
  %59 = load double, double* %x4, align 8
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi double [ %58, %cond.true.83 ], [ %59, %cond.false.84 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.end.78
  %cond88 = phi double [ %cond79, %cond.end.78 ], [ %cond86, %cond.end.85 ]
  %60 = load double, double* %temp_x, align 8
  %sub = fsub double %cond88, %60
  %call = call double @ceil(double %sub) #5
  %conv89 = fptosi double %call to i32
  %61 = load i32*, i32** %width.addr, align 8
  store i32 %conv89, i32* %61, align 4
  %62 = load double, double* %y1, align 8
  %63 = load double, double* %y2, align 8
  %cmp90 = fcmp ogt double %62, %63
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %cond.end.87
  %64 = load double, double* %y1, align 8
  br label %cond.end.94

cond.false.93:                                    ; preds = %cond.end.87
  %65 = load double, double* %y2, align 8
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.93, %cond.true.92
  %cond95 = phi double [ %64, %cond.true.92 ], [ %65, %cond.false.93 ]
  %66 = load double, double* %y3, align 8
  %67 = load double, double* %y4, align 8
  %cmp96 = fcmp ogt double %66, %67
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.end.94
  %68 = load double, double* %y3, align 8
  br label %cond.end.100

cond.false.99:                                    ; preds = %cond.end.94
  %69 = load double, double* %y4, align 8
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.99, %cond.true.98
  %cond101 = phi double [ %68, %cond.true.98 ], [ %69, %cond.false.99 ]
  %cmp102 = fcmp ogt double %cond95, %cond101
  br i1 %cmp102, label %cond.true.104, label %cond.false.111

cond.true.104:                                    ; preds = %cond.end.100
  %70 = load double, double* %y1, align 8
  %71 = load double, double* %y2, align 8
  %cmp105 = fcmp ogt double %70, %71
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.true.104
  %72 = load double, double* %y1, align 8
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.true.104
  %73 = load double, double* %y2, align 8
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi double [ %72, %cond.true.107 ], [ %73, %cond.false.108 ]
  br label %cond.end.118

cond.false.111:                                   ; preds = %cond.end.100
  %74 = load double, double* %y3, align 8
  %75 = load double, double* %y4, align 8
  %cmp112 = fcmp ogt double %74, %75
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.false.111
  %76 = load double, double* %y3, align 8
  br label %cond.end.116

cond.false.115:                                   ; preds = %cond.false.111
  %77 = load double, double* %y4, align 8
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.115, %cond.true.114
  %cond117 = phi double [ %76, %cond.true.114 ], [ %77, %cond.false.115 ]
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.end.116, %cond.end.109
  %cond119 = phi double [ %cond110, %cond.end.109 ], [ %cond117, %cond.end.116 ]
  %78 = load double, double* %temp_y, align 8
  %sub120 = fsub double %cond119, %78
  %call121 = call double @ceil(double %sub120) #5
  %conv122 = fptosi double %call121 to i32
  %79 = load i32*, i32** %height.addr, align 8
  store i32 %conv122, i32* %79, align 4
  %80 = load double, double* %temp_x, align 8
  %call123 = call double @floor(double %80) #5
  %conv124 = fptosi double %call123 to i32
  %81 = load i32*, i32** %x.addr, align 8
  store i32 %conv124, i32* %81, align 4
  %82 = load double, double* %temp_y, align 8
  %call125 = call double @floor(double %82) #5
  %conv126 = fptosi double %call125 to i32
  %83 = load i32*, i32** %y.addr, align 8
  store i32 %conv126, i32* %83, align 4
  %84 = load i32*, i32** %width.addr, align 8
  %85 = load i32, i32* %84, align 4
  %cmp127 = icmp sgt i32 1, %85
  br i1 %cmp127, label %cond.true.129, label %cond.false.130

cond.true.129:                                    ; preds = %cond.end.118
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.118
  %86 = load i32*, i32** %width.addr, align 8
  %87 = load i32, i32* %86, align 4
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.129
  %cond132 = phi i32 [ 1, %cond.true.129 ], [ %87, %cond.false.130 ]
  %88 = load i32*, i32** %width.addr, align 8
  store i32 %cond132, i32* %88, align 4
  %89 = load i32*, i32** %height.addr, align 8
  %90 = load i32, i32* %89, align 4
  %cmp133 = icmp sgt i32 1, %90
  br i1 %cmp133, label %cond.true.135, label %cond.false.136

cond.true.135:                                    ; preds = %cond.end.131
  br label %cond.end.137

cond.false.136:                                   ; preds = %cond.end.131
  %91 = load i32*, i32** %height.addr, align 8
  %92 = load i32, i32* %91, align 4
  br label %cond.end.137

cond.end.137:                                     ; preds = %cond.false.136, %cond.true.135
  %cond138 = phi i32 [ 1, %cond.true.135 ], [ %92, %cond.false.136 ]
  %93 = load i32*, i32** %height.addr, align 8
  store i32 %cond138, i32* %93, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_brush_real_transform_mask(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %result = alloca %struct._TempBuf*, align 8
  %source = alloca %struct._TempBuf*, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  %src_width_minus_one = alloca i32, align 4
  %src_height_minus_one = alloca i32, align 4
  %dest_width = alloca i32, align 4
  %dest_height = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %blx = alloca double, align 8
  %brx = alloca double, align 8
  %tlx = alloca double, align 8
  %trx = alloca double, align 8
  %bly = alloca double, align 8
  %bry = alloca double, align 8
  %tly = alloca double, align 8
  %try = alloca double, align 8
  %src_tl_to_tr_delta_x = alloca double, align 8
  %src_tl_to_tr_delta_y = alloca double, align 8
  %src_tl_to_bl_delta_x = alloca double, align 8
  %src_tl_to_bl_delta_y = alloca double, align 8
  %src_walk_ux_i = alloca i32, align 4
  %src_walk_uy_i = alloca i32, align 4
  %src_walk_vx_i = alloca i32, align 4
  %src_walk_vy_i = alloca i32, align 4
  %src_space_cur_pos_x = alloca i32, align 4
  %src_space_cur_pos_y = alloca i32, align 4
  %src_space_cur_pos_x_i = alloca i32, align 4
  %src_space_cur_pos_y_i = alloca i32, align 4
  %src_space_row_start_x_i = alloca i32, align 4
  %src_space_row_start_y_i = alloca i32, align 4
  %src_walker = alloca i8*, align 8
  %pixel_next = alloca i8*, align 8
  %pixel_below = alloca i8*, align 8
  %pixel_below_next = alloca i8*, align 8
  %opposite_x = alloca i32, align 4
  %distance_from_true_x = alloca i32, align 4
  %opposite_y = alloca i32, align 4
  %distance_from_true_y = alloca i32, align 4
  %fraction_bits = alloca i32, align 4
  %int_multiple = alloca i32, align 4
  %recovery_bits = alloca i32, align 4
  %fraction_bitmask = alloca i32, align 4
  %blur_src = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %kernel_size = alloca i32, align 4
  %kernel_len = alloca i32, align 4
  %saved_stack = alloca i8*
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  store i32 12, i32* %fraction_bits, align 4
  %call = call double @pow(double 2.000000e+00, double 1.200000e+01) #3
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %int_multiple, align 4
  store i32 24, i32* %recovery_bits, align 4
  %call1 = call double @pow(double 2.000000e+00, double 1.200000e+01) #3
  %sub = fsub double %call1, 1.000000e+00
  %conv2 = fptoui double %sub to i32
  store i32 %conv2, i32* %fraction_bitmask, align 4
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %mask = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %0, i32 0, i32 1
  %1 = load %struct._TempBuf*, %struct._TempBuf** %mask, align 8
  store %struct._TempBuf* %1, %struct._TempBuf** %source, align 8
  %2 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  %conv3 = sitofp i32 %3 to double
  %4 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %conv4 = sitofp i32 %5 to double
  %6 = load double, double* %scale.addr, align 8
  %7 = load double, double* %aspect_ratio.addr, align 8
  %8 = load double, double* %angle.addr, align 8
  call void @gimp_brush_transform_matrix(double %conv3, double %conv4, double %6, double %7, double %8, %struct._GimpMatrix3* %matrix)
  %call5 = call i32 @gimp_matrix3_is_identity(%struct._GimpMatrix3* %matrix)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %call6 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %9, %struct._TempBuf* null)
  store %struct._TempBuf* %call6, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %width7 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 1
  %11 = load i32, i32* %width7, align 4
  store i32 %11, i32* %src_width, align 4
  %12 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %height8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 2
  %13 = load i32, i32* %height8, align 4
  store i32 %13, i32* %src_height, align 4
  %14 = load i32, i32* %src_width, align 4
  %sub9 = sub nsw i32 %14, 1
  store i32 %sub9, i32* %src_width_minus_one, align 4
  %15 = load i32, i32* %src_height, align 4
  %sub10 = sub nsw i32 %15, 1
  store i32 %sub10, i32* %src_height_minus_one, align 4
  %16 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  call void @gimp_brush_transform_bounding_box(%struct._TempBuf* %16, %struct._GimpMatrix3* %matrix, i32* %x, i32* %y, i32* %dest_width, i32* %dest_height)
  %17 = load i32, i32* %x, align 4
  %sub11 = sub nsw i32 0, %17
  %conv12 = sitofp i32 %sub11 to double
  %18 = load i32, i32* %y, align 4
  %sub13 = sub nsw i32 0, %18
  %conv14 = sitofp i32 %sub13 to double
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %conv12, double %conv14)
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %matrix)
  %19 = load i32, i32* %dest_width, align 4
  %20 = load i32, i32* %dest_height, align 4
  %call15 = call %struct._TempBuf* @temp_buf_new(i32 %19, i32 %20, i32 1, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call15, %struct._TempBuf** %result, align 8
  %21 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %call16 = call i8* @temp_buf_get_data(%struct._TempBuf* %21)
  store i8* %call16, i8** %dest, align 8
  %22 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %call17 = call i8* @temp_buf_get_data(%struct._TempBuf* %22)
  store i8* %call17, i8** %src, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double 0.000000e+00, double 0.000000e+00, double* %tlx, double* %tly)
  %23 = load i32, i32* %dest_width, align 4
  %conv18 = sitofp i32 %23 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv18, double 0.000000e+00, double* %trx, double* %try)
  %24 = load i32, i32* %dest_height, align 4
  %conv19 = sitofp i32 %24 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double 0.000000e+00, double %conv19, double* %blx, double* %bly)
  %25 = load i32, i32* %dest_width, align 4
  %conv20 = sitofp i32 %25 to double
  %26 = load i32, i32* %dest_height, align 4
  %conv21 = sitofp i32 %26 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv20, double %conv21, double* %brx, double* %bry)
  %27 = load double, double* %trx, align 8
  %28 = load double, double* %tlx, align 8
  %sub22 = fsub double %27, %28
  store double %sub22, double* %src_tl_to_tr_delta_x, align 8
  %29 = load double, double* %try, align 8
  %30 = load double, double* %tly, align 8
  %sub23 = fsub double %29, %30
  store double %sub23, double* %src_tl_to_tr_delta_y, align 8
  %31 = load double, double* %blx, align 8
  %32 = load double, double* %tlx, align 8
  %sub24 = fsub double %31, %32
  store double %sub24, double* %src_tl_to_bl_delta_x, align 8
  %33 = load double, double* %bly, align 8
  %34 = load double, double* %tly, align 8
  %sub25 = fsub double %33, %34
  store double %sub25, double* %src_tl_to_bl_delta_y, align 8
  %35 = load double, double* %src_tl_to_tr_delta_x, align 8
  %36 = load i32, i32* %dest_width, align 4
  %conv26 = sitofp i32 %36 to double
  %div = fdiv double %35, %conv26
  %37 = load i32, i32* %int_multiple, align 4
  %conv27 = sitofp i32 %37 to double
  %mul = fmul double %div, %conv27
  %conv28 = fptosi double %mul to i32
  store i32 %conv28, i32* %src_walk_ux_i, align 4
  %38 = load double, double* %src_tl_to_tr_delta_y, align 8
  %39 = load i32, i32* %dest_width, align 4
  %conv29 = sitofp i32 %39 to double
  %div30 = fdiv double %38, %conv29
  %40 = load i32, i32* %int_multiple, align 4
  %conv31 = sitofp i32 %40 to double
  %mul32 = fmul double %div30, %conv31
  %conv33 = fptosi double %mul32 to i32
  store i32 %conv33, i32* %src_walk_uy_i, align 4
  %41 = load double, double* %src_tl_to_bl_delta_x, align 8
  %42 = load i32, i32* %dest_height, align 4
  %conv34 = sitofp i32 %42 to double
  %div35 = fdiv double %41, %conv34
  %43 = load i32, i32* %int_multiple, align 4
  %conv36 = sitofp i32 %43 to double
  %mul37 = fmul double %div35, %conv36
  %conv38 = fptosi double %mul37 to i32
  store i32 %conv38, i32* %src_walk_vx_i, align 4
  %44 = load double, double* %src_tl_to_bl_delta_y, align 8
  %45 = load i32, i32* %dest_height, align 4
  %conv39 = sitofp i32 %45 to double
  %div40 = fdiv double %44, %conv39
  %46 = load i32, i32* %int_multiple, align 4
  %conv41 = sitofp i32 %46 to double
  %mul42 = fmul double %div40, %conv41
  %conv43 = fptosi double %mul42 to i32
  store i32 %conv43, i32* %src_walk_vy_i, align 4
  %47 = load double, double* %tlx, align 8
  %48 = load i32, i32* %int_multiple, align 4
  %conv44 = sitofp i32 %48 to double
  %mul45 = fmul double %47, %conv44
  %conv46 = fptosi double %mul45 to i32
  store i32 %conv46, i32* %src_space_cur_pos_x_i, align 4
  %49 = load double, double* %tly, align 8
  %50 = load i32, i32* %int_multiple, align 4
  %conv47 = sitofp i32 %50 to double
  %mul48 = fmul double %49, %conv47
  %conv49 = fptosi double %mul48 to i32
  store i32 %conv49, i32* %src_space_cur_pos_y_i, align 4
  %51 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %shr = ashr i32 %51, 12
  store i32 %shr, i32* %src_space_cur_pos_x, align 4
  %52 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %shr50 = ashr i32 %52, 12
  store i32 %shr50, i32* %src_space_cur_pos_y, align 4
  %53 = load double, double* %tlx, align 8
  %54 = load i32, i32* %int_multiple, align 4
  %conv51 = sitofp i32 %54 to double
  %mul52 = fmul double %53, %conv51
  %conv53 = fptosi double %mul52 to i32
  store i32 %conv53, i32* %src_space_row_start_x_i, align 4
  %55 = load double, double* %tly, align 8
  %56 = load i32, i32* %int_multiple, align 4
  %conv54 = sitofp i32 %56 to double
  %mul55 = fmul double %55, %conv54
  %conv56 = fptosi double %mul55 to i32
  store i32 %conv56, i32* %src_space_row_start_y_i, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.130, %if.end
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %dest_height, align 4
  %cmp = icmp slt i32 %57, %58
  br i1 %cmp, label %for.body, label %for.end.132

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %for.body
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* %dest_width, align 4
  %cmp59 = icmp slt i32 %59, %60
  br i1 %cmp59, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.58
  %61 = load i32, i32* %src_space_cur_pos_x, align 4
  %62 = load i32, i32* %src_width_minus_one, align 4
  %cmp62 = icmp sgt i32 %61, %62
  br i1 %cmp62, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.61
  %63 = load i32, i32* %src_space_cur_pos_x, align 4
  %cmp64 = icmp slt i32 %63, 0
  br i1 %cmp64, label %if.then.72, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false
  %64 = load i32, i32* %src_space_cur_pos_y, align 4
  %65 = load i32, i32* %src_height_minus_one, align 4
  %cmp67 = icmp sgt i32 %64, %65
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.66
  %66 = load i32, i32* %src_space_cur_pos_y, align 4
  %cmp70 = icmp slt i32 %66, 0
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false.66, %lor.lhs.false, %for.body.61
  %67 = load i8*, i8** %dest, align 8
  store i8 0, i8* %67, align 1
  br label %if.end.121

if.else:                                          ; preds = %lor.lhs.false.69
  %68 = load i8*, i8** %src, align 8
  %69 = load i32, i32* %src_space_cur_pos_y, align 4
  %70 = load i32, i32* %src_width, align 4
  %mul73 = mul nsw i32 %69, %70
  %idx.ext = sext i32 %mul73 to i64
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 %idx.ext
  %71 = load i32, i32* %src_space_cur_pos_x, align 4
  %idx.ext74 = sext i32 %71 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext74
  store i8* %add.ptr75, i8** %src_walker, align 8
  %72 = load i32, i32* %src_space_cur_pos_y, align 4
  %73 = load i32, i32* %src_height_minus_one, align 4
  %cmp76 = icmp eq i32 %72, %73
  br i1 %cmp76, label %land.lhs.true, label %if.else.81

land.lhs.true:                                    ; preds = %if.else
  %74 = load i32, i32* %src_space_cur_pos_x, align 4
  %75 = load i32, i32* %src_width_minus_one, align 4
  %cmp78 = icmp eq i32 %74, %75
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %land.lhs.true
  %76 = load i8*, i8** %src_walker, align 8
  store i8* %76, i8** %pixel_next, align 8
  %77 = load i8*, i8** %src_walker, align 8
  store i8* %77, i8** %pixel_below, align 8
  %78 = load i8*, i8** %src_walker, align 8
  store i8* %78, i8** %pixel_below_next, align 8
  br label %if.end.100

if.else.81:                                       ; preds = %land.lhs.true, %if.else
  %79 = load i32, i32* %src_space_cur_pos_y, align 4
  %80 = load i32, i32* %src_height_minus_one, align 4
  %cmp82 = icmp eq i32 %79, %80
  br i1 %cmp82, label %if.then.84, label %if.else.87

if.then.84:                                       ; preds = %if.else.81
  %81 = load i8*, i8** %src_walker, align 8
  %add.ptr85 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %add.ptr85, i8** %pixel_next, align 8
  %82 = load i8*, i8** %src_walker, align 8
  store i8* %82, i8** %pixel_below, align 8
  %83 = load i8*, i8** %src_walker, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %add.ptr86, i8** %pixel_below_next, align 8
  br label %if.end.99

if.else.87:                                       ; preds = %if.else.81
  %84 = load i32, i32* %src_space_cur_pos_x, align 4
  %85 = load i32, i32* %src_width_minus_one, align 4
  %cmp88 = icmp eq i32 %84, %85
  br i1 %cmp88, label %if.then.90, label %if.else.93

if.then.90:                                       ; preds = %if.else.87
  %86 = load i8*, i8** %src_walker, align 8
  store i8* %86, i8** %pixel_next, align 8
  %87 = load i8*, i8** %src_walker, align 8
  %88 = load i32, i32* %src_width, align 4
  %idx.ext91 = sext i32 %88 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %87, i64 %idx.ext91
  store i8* %add.ptr92, i8** %pixel_below, align 8
  %89 = load i8*, i8** %pixel_below, align 8
  store i8* %89, i8** %pixel_below_next, align 8
  br label %if.end.98

if.else.93:                                       ; preds = %if.else.87
  %90 = load i8*, i8** %src_walker, align 8
  %add.ptr94 = getelementptr inbounds i8, i8* %90, i64 1
  store i8* %add.ptr94, i8** %pixel_next, align 8
  %91 = load i8*, i8** %src_walker, align 8
  %92 = load i32, i32* %src_width, align 4
  %idx.ext95 = sext i32 %92 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %91, i64 %idx.ext95
  store i8* %add.ptr96, i8** %pixel_below, align 8
  %93 = load i8*, i8** %pixel_below, align 8
  %add.ptr97 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %add.ptr97, i8** %pixel_below_next, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.93, %if.then.90
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.84
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.80
  %94 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %95 = load i32, i32* %fraction_bitmask, align 4
  %and = and i32 %94, %95
  store i32 %and, i32* %distance_from_true_x, align 4
  %96 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %97 = load i32, i32* %fraction_bitmask, align 4
  %and101 = and i32 %96, %97
  store i32 %and101, i32* %distance_from_true_y, align 4
  %98 = load i32, i32* %int_multiple, align 4
  %99 = load i32, i32* %distance_from_true_x, align 4
  %sub102 = sub nsw i32 %98, %99
  store i32 %sub102, i32* %opposite_x, align 4
  %100 = load i32, i32* %int_multiple, align 4
  %101 = load i32, i32* %distance_from_true_y, align 4
  %sub103 = sub nsw i32 %100, %101
  store i32 %sub103, i32* %opposite_y, align 4
  %102 = load i8*, i8** %src_walker, align 8
  %arrayidx = getelementptr inbounds i8, i8* %102, i64 0
  %103 = load i8, i8* %arrayidx, align 1
  %conv104 = zext i8 %103 to i32
  %104 = load i32, i32* %opposite_x, align 4
  %mul105 = mul nsw i32 %conv104, %104
  %105 = load i8*, i8** %pixel_next, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %105, i64 0
  %106 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %106 to i32
  %107 = load i32, i32* %distance_from_true_x, align 4
  %mul108 = mul nsw i32 %conv107, %107
  %add = add nsw i32 %mul105, %mul108
  %108 = load i32, i32* %opposite_y, align 4
  %mul109 = mul nsw i32 %add, %108
  %109 = load i8*, i8** %pixel_below, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %109, i64 0
  %110 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %110 to i32
  %111 = load i32, i32* %opposite_x, align 4
  %mul112 = mul nsw i32 %conv111, %111
  %112 = load i8*, i8** %pixel_below_next, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %112, i64 0
  %113 = load i8, i8* %arrayidx113, align 1
  %conv114 = zext i8 %113 to i32
  %114 = load i32, i32* %distance_from_true_x, align 4
  %mul115 = mul nsw i32 %conv114, %114
  %add116 = add nsw i32 %mul112, %mul115
  %115 = load i32, i32* %distance_from_true_y, align 4
  %mul117 = mul nsw i32 %add116, %115
  %add118 = add nsw i32 %mul109, %mul117
  %shr119 = ashr i32 %add118, 24
  %conv120 = trunc i32 %shr119 to i8
  %116 = load i8*, i8** %dest, align 8
  store i8 %conv120, i8* %116, align 1
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.100, %if.then.72
  %117 = load i32, i32* %src_walk_ux_i, align 4
  %118 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %add122 = add nsw i32 %118, %117
  store i32 %add122, i32* %src_space_cur_pos_x_i, align 4
  %119 = load i32, i32* %src_walk_uy_i, align 4
  %120 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %add123 = add nsw i32 %120, %119
  store i32 %add123, i32* %src_space_cur_pos_y_i, align 4
  %121 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %shr124 = ashr i32 %121, 12
  store i32 %shr124, i32* %src_space_cur_pos_x, align 4
  %122 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %shr125 = ashr i32 %122, 12
  store i32 %shr125, i32* %src_space_cur_pos_y, align 4
  %123 = load i8*, i8** %dest, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %124 = load i32, i32* %x, align 4
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.58

for.end:                                          ; preds = %for.cond.58
  %125 = load i32, i32* %src_walk_vx_i, align 4
  %126 = load i32, i32* %src_space_row_start_x_i, align 4
  %add126 = add nsw i32 %126, %125
  store i32 %add126, i32* %src_space_row_start_x_i, align 4
  %127 = load i32, i32* %src_walk_vy_i, align 4
  %128 = load i32, i32* %src_space_row_start_y_i, align 4
  %add127 = add nsw i32 %128, %127
  store i32 %add127, i32* %src_space_row_start_y_i, align 4
  %129 = load i32, i32* %src_space_row_start_x_i, align 4
  store i32 %129, i32* %src_space_cur_pos_x_i, align 4
  %130 = load i32, i32* %src_space_row_start_y_i, align 4
  store i32 %130, i32* %src_space_cur_pos_y_i, align 4
  %131 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %shr128 = ashr i32 %131, 12
  store i32 %shr128, i32* %src_space_cur_pos_x, align 4
  %132 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %shr129 = ashr i32 %132, 12
  store i32 %shr129, i32* %src_space_cur_pos_y, align 4
  br label %for.inc.130

for.inc.130:                                      ; preds = %for.end
  %133 = load i32, i32* %y, align 4
  %inc131 = add nsw i32 %133, 1
  store i32 %inc131, i32* %y, align 4
  br label %for.cond

for.end.132:                                      ; preds = %for.cond
  %134 = load double, double* %hardness.addr, align 8
  %cmp133 = fcmp olt double %134, 1.000000e+00
  br i1 %cmp133, label %if.then.135, label %if.end.150

if.then.135:                                      ; preds = %for.end.132
  %135 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %height136 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %135, i32 0, i32 2
  %136 = load i32, i32* %height136, align 4
  %137 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %width137 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %137, i32 0, i32 1
  %138 = load i32, i32* %width137, align 4
  %139 = load double, double* %hardness.addr, align 8
  %call138 = call i32 @gimp_brush_transform_blur_kernel_size(i32 %136, i32 %138, double %139)
  store i32 %call138, i32* %kernel_size, align 4
  %140 = load i32, i32* %kernel_size, align 4
  %141 = load i32, i32* %kernel_size, align 4
  %mul139 = mul nsw i32 %140, %141
  store i32 %mul139, i32* %kernel_len, align 4
  %142 = load i32, i32* %kernel_len, align 4
  %143 = zext i32 %142 to i64
  %144 = call i8* @llvm.stacksave()
  store i8* %144, i8** %saved_stack
  %vla = alloca float, i64 %143, align 16
  %145 = load i32, i32* %kernel_len, align 4
  call void @gimp_brush_transform_fill_blur_kernel(float* %vla, i32 %145)
  %146 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %call140 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %146, %struct._TempBuf* null)
  store %struct._TempBuf* %call140, %struct._TempBuf** %blur_src, align 8
  %147 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %148 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %x141 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %148, i32 0, i32 3
  %149 = load i32, i32* %x141, align 4
  %150 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %y142 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %150, i32 0, i32 4
  %151 = load i32, i32* %y142, align 4
  %152 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %width143 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %152, i32 0, i32 1
  %153 = load i32, i32* %width143, align 4
  %154 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %height144 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %154, i32 0, i32 2
  %155 = load i32, i32* %height144, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %147, i32 %149, i32 %151, i32 %153, i32 %155)
  %156 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %157 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %x145 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %157, i32 0, i32 3
  %158 = load i32, i32* %x145, align 4
  %159 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %y146 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %159, i32 0, i32 4
  %160 = load i32, i32* %y146, align 4
  %161 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %width147 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %161, i32 0, i32 1
  %162 = load i32, i32* %width147, align 4
  %163 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %height148 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %163, i32 0, i32 2
  %164 = load i32, i32* %height148, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %156, i32 %158, i32 %160, i32 %162, i32 %164)
  %165 = load i32, i32* %kernel_size, align 4
  %166 = load i32, i32* %kernel_len, align 4
  %call149 = call double @gimp_brush_transform_array_sum(float* %vla, i32 %166)
  call void @convolve_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, float* %vla, i32 %165, double %call149, i32 0, i32 0)
  %167 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  call void @temp_buf_free(%struct._TempBuf* %167)
  %168 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %168)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.135, %for.end.132
  %169 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  store %struct._TempBuf* %169, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.150, %if.then
  %170 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %170
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare i32 @gimp_matrix3_is_identity(%struct._GimpMatrix3*) #2

declare %struct._TempBuf* @temp_buf_copy(%struct._TempBuf*, %struct._TempBuf*) #2

declare void @gimp_matrix3_translate(%struct._GimpMatrix3*, double, double) #2

declare void @gimp_matrix3_invert(%struct._GimpMatrix3*) #2

declare %struct._TempBuf* @temp_buf_new(i32, i32, i32, i32, i32, i8*) #2

declare i8* @temp_buf_get_data(%struct._TempBuf*) #2

declare void @gimp_matrix3_transform_point(%struct._GimpMatrix3*, double, double, double*, double*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_brush_transform_blur_kernel_size(i32 %height, i32 %width, double %hardness) #0 {
entry:
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %hardness.addr = alloca double, align 8
  %kernel_size = alloca i32, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store double %hardness, double* %hardness.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  %1 = load i32, i32* %height.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %width.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %height.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  %cmp1 = icmp slt i32 15, %cond
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.3:                                     ; preds = %cond.end
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false.3
  %6 = load i32, i32* %width.addr, align 4
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.false.3
  %7 = load i32, i32* %height.addr, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i32 [ %6, %cond.true.5 ], [ %7, %cond.false.6 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end.7, %cond.true.2
  %cond10 = phi i32 [ 15, %cond.true.2 ], [ %cond8, %cond.end.7 ]
  %conv = sitofp i32 %cond10 to double
  %8 = load i32, i32* %width.addr, align 4
  %9 = load i32, i32* %height.addr, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.9
  %10 = load i32, i32* %width.addr, align 4
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end.9
  %11 = load i32, i32* %height.addr, align 4
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.13
  %cond16 = phi i32 [ %10, %cond.true.13 ], [ %11, %cond.false.14 ]
  %conv17 = sitofp i32 %cond16 to double
  %12 = load double, double* %hardness.addr, align 8
  %sub = fsub double 1.000000e+00, %12
  %mul = fmul double %conv17, %sub
  %13 = load i32, i32* %width.addr, align 4
  %14 = load i32, i32* %height.addr, align 4
  %cmp18 = icmp slt i32 %13, %14
  br i1 %cmp18, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.end.15
  %15 = load i32, i32* %width.addr, align 4
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.end.15
  %16 = load i32, i32* %height.addr, align 4
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi i32 [ %15, %cond.true.20 ], [ %16, %cond.false.21 ]
  %conv24 = sitofp i32 %cond23 to double
  %div = fdiv double %mul, %conv24
  %mul25 = fmul double %conv, %div
  %conv26 = fptosi double %mul25 to i32
  store i32 %conv26, i32* %kernel_size, align 4
  %17 = load i32, i32* %kernel_size, align 4
  %rem = srem i32 %17, 2
  %cmp27 = icmp eq i32 %rem, 0
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.22
  %18 = load i32, i32* %kernel_size, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %kernel_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.22
  %19 = load i32, i32* %kernel_size, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind uwtable
define internal void @gimp_brush_transform_fill_blur_kernel(float* %arr, i32 %len) #0 {
entry:
  %arr.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %half_point = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %arr, float** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %div = sdiv i32 %0, 2
  %add = add nsw i32 %div, 1
  store i32 %add, i32* %half_point, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %half_point, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %half_point, align 4
  %6 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %5, %6
  %conv = sitofp i32 %sub to float
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load float*, float** %arr.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %8, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %half_point, align 4
  %sub2 = sub nsw i32 %9, %10
  %conv3 = sitofp i32 %sub2 to float
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load float*, float** %arr.addr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 %idxprom4
  store float %conv3, float* %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @pixel_region_init_temp_buf(%struct._PixelRegion*, %struct._TempBuf*, i32, i32, i32, i32) #2

declare void @convolve_region(%struct._PixelRegion*, %struct._PixelRegion*, float*, i32, double, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal double @gimp_brush_transform_array_sum(float* %arr, i32 %len) #0 {
entry:
  %arr.addr = alloca float*, align 8
  %len.addr = alloca i32, align 4
  %total = alloca float, align 4
  %i = alloca i32, align 4
  store float* %arr, float** %arr.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store float 0.000000e+00, float* %total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load float*, float** %arr.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float, float* %total, align 4
  %add = fadd float %5, %4
  store float %add, float* %total, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load float, float* %total, align 4
  %conv = fpext float %7 to double
  ret double %conv
}

declare void @temp_buf_free(%struct._TempBuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._TempBuf* @gimp_brush_real_transform_pixmap(%struct._GimpBrush* %brush, double %scale, double %aspect_ratio, double %angle, double %hardness) #0 {
entry:
  %retval = alloca %struct._TempBuf*, align 8
  %brush.addr = alloca %struct._GimpBrush*, align 8
  %scale.addr = alloca double, align 8
  %aspect_ratio.addr = alloca double, align 8
  %angle.addr = alloca double, align 8
  %hardness.addr = alloca double, align 8
  %result = alloca %struct._TempBuf*, align 8
  %source = alloca %struct._TempBuf*, align 8
  %dest = alloca i8*, align 8
  %src = alloca i8*, align 8
  %matrix = alloca %struct._GimpMatrix3, align 8
  %src_width = alloca i32, align 4
  %src_height = alloca i32, align 4
  %src_width_minus_one = alloca i32, align 4
  %src_height_minus_one = alloca i32, align 4
  %dest_width = alloca i32, align 4
  %dest_height = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %blx = alloca double, align 8
  %brx = alloca double, align 8
  %tlx = alloca double, align 8
  %trx = alloca double, align 8
  %bly = alloca double, align 8
  %bry = alloca double, align 8
  %tly = alloca double, align 8
  %try = alloca double, align 8
  %src_tl_to_tr_delta_x = alloca double, align 8
  %src_tl_to_tr_delta_y = alloca double, align 8
  %src_tl_to_bl_delta_x = alloca double, align 8
  %src_tl_to_bl_delta_y = alloca double, align 8
  %src_walk_ux_i = alloca i32, align 4
  %src_walk_uy_i = alloca i32, align 4
  %src_walk_vx_i = alloca i32, align 4
  %src_walk_vy_i = alloca i32, align 4
  %src_space_cur_pos_x = alloca i32, align 4
  %src_space_cur_pos_y = alloca i32, align 4
  %src_space_cur_pos_x_i = alloca i32, align 4
  %src_space_cur_pos_y_i = alloca i32, align 4
  %src_space_row_start_x_i = alloca i32, align 4
  %src_space_row_start_y_i = alloca i32, align 4
  %src_walker = alloca i8*, align 8
  %pixel_next = alloca i8*, align 8
  %pixel_below = alloca i8*, align 8
  %pixel_below_next = alloca i8*, align 8
  %opposite_x = alloca i32, align 4
  %distance_from_true_x = alloca i32, align 4
  %opposite_y = alloca i32, align 4
  %distance_from_true_y = alloca i32, align 4
  %fraction_bits = alloca i32, align 4
  %int_multiple = alloca i32, align 4
  %recovery_bits = alloca i32, align 4
  %fraction_bitmask = alloca i32, align 4
  %blur_src = alloca %struct._TempBuf*, align 8
  %srcPR = alloca %struct._PixelRegion, align 8
  %destPR = alloca %struct._PixelRegion, align 8
  %kernel_size = alloca i32, align 4
  %kernel_len = alloca i32, align 4
  %saved_stack = alloca i8*
  store %struct._GimpBrush* %brush, %struct._GimpBrush** %brush.addr, align 8
  store double %scale, double* %scale.addr, align 8
  store double %aspect_ratio, double* %aspect_ratio.addr, align 8
  store double %angle, double* %angle.addr, align 8
  store double %hardness, double* %hardness.addr, align 8
  store i32 12, i32* %fraction_bits, align 4
  %call = call double @pow(double 2.000000e+00, double 1.200000e+01) #3
  %conv = fptosi double %call to i32
  store i32 %conv, i32* %int_multiple, align 4
  store i32 24, i32* %recovery_bits, align 4
  %call1 = call double @pow(double 2.000000e+00, double 1.200000e+01) #3
  %sub = fsub double %call1, 1.000000e+00
  %conv2 = fptoui double %sub to i32
  store i32 %conv2, i32* %fraction_bitmask, align 4
  %0 = load %struct._GimpBrush*, %struct._GimpBrush** %brush.addr, align 8
  %pixmap = getelementptr inbounds %struct._GimpBrush, %struct._GimpBrush* %0, i32 0, i32 2
  %1 = load %struct._TempBuf*, %struct._TempBuf** %pixmap, align 8
  store %struct._TempBuf* %1, %struct._TempBuf** %source, align 8
  %2 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %height = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %2, i32 0, i32 2
  %3 = load i32, i32* %height, align 4
  %conv3 = sitofp i32 %3 to double
  %4 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %width = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %4, i32 0, i32 1
  %5 = load i32, i32* %width, align 4
  %conv4 = sitofp i32 %5 to double
  %6 = load double, double* %scale.addr, align 8
  %7 = load double, double* %aspect_ratio.addr, align 8
  %8 = load double, double* %angle.addr, align 8
  call void @gimp_brush_transform_matrix(double %conv3, double %conv4, double %6, double %7, double %8, %struct._GimpMatrix3* %matrix)
  %call5 = call i32 @gimp_matrix3_is_identity(%struct._GimpMatrix3* %matrix)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %call6 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %9, %struct._TempBuf* null)
  store %struct._TempBuf* %call6, %struct._TempBuf** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %width7 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %10, i32 0, i32 1
  %11 = load i32, i32* %width7, align 4
  store i32 %11, i32* %src_width, align 4
  %12 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %height8 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %12, i32 0, i32 2
  %13 = load i32, i32* %height8, align 4
  store i32 %13, i32* %src_height, align 4
  %14 = load i32, i32* %src_width, align 4
  %sub9 = sub nsw i32 %14, 1
  store i32 %sub9, i32* %src_width_minus_one, align 4
  %15 = load i32, i32* %src_height, align 4
  %sub10 = sub nsw i32 %15, 1
  store i32 %sub10, i32* %src_height_minus_one, align 4
  %16 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  call void @gimp_brush_transform_bounding_box(%struct._TempBuf* %16, %struct._GimpMatrix3* %matrix, i32* %x, i32* %y, i32* %dest_width, i32* %dest_height)
  %17 = load i32, i32* %x, align 4
  %sub11 = sub nsw i32 0, %17
  %conv12 = sitofp i32 %sub11 to double
  %18 = load i32, i32* %y, align 4
  %sub13 = sub nsw i32 0, %18
  %conv14 = sitofp i32 %sub13 to double
  call void @gimp_matrix3_translate(%struct._GimpMatrix3* %matrix, double %conv12, double %conv14)
  call void @gimp_matrix3_invert(%struct._GimpMatrix3* %matrix)
  %19 = load i32, i32* %dest_width, align 4
  %20 = load i32, i32* %dest_height, align 4
  %call15 = call %struct._TempBuf* @temp_buf_new(i32 %19, i32 %20, i32 3, i32 0, i32 0, i8* null)
  store %struct._TempBuf* %call15, %struct._TempBuf** %result, align 8
  %21 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %call16 = call i8* @temp_buf_get_data(%struct._TempBuf* %21)
  store i8* %call16, i8** %dest, align 8
  %22 = load %struct._TempBuf*, %struct._TempBuf** %source, align 8
  %call17 = call i8* @temp_buf_get_data(%struct._TempBuf* %22)
  store i8* %call17, i8** %src, align 8
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double 0.000000e+00, double 0.000000e+00, double* %tlx, double* %tly)
  %23 = load i32, i32* %dest_width, align 4
  %conv18 = sitofp i32 %23 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv18, double 0.000000e+00, double* %trx, double* %try)
  %24 = load i32, i32* %dest_height, align 4
  %conv19 = sitofp i32 %24 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double 0.000000e+00, double %conv19, double* %blx, double* %bly)
  %25 = load i32, i32* %dest_width, align 4
  %conv20 = sitofp i32 %25 to double
  %26 = load i32, i32* %dest_height, align 4
  %conv21 = sitofp i32 %26 to double
  call void @gimp_matrix3_transform_point(%struct._GimpMatrix3* %matrix, double %conv20, double %conv21, double* %brx, double* %bry)
  %27 = load double, double* %trx, align 8
  %28 = load double, double* %tlx, align 8
  %sub22 = fsub double %27, %28
  store double %sub22, double* %src_tl_to_tr_delta_x, align 8
  %29 = load double, double* %try, align 8
  %30 = load double, double* %tly, align 8
  %sub23 = fsub double %29, %30
  store double %sub23, double* %src_tl_to_tr_delta_y, align 8
  %31 = load double, double* %blx, align 8
  %32 = load double, double* %tlx, align 8
  %sub24 = fsub double %31, %32
  store double %sub24, double* %src_tl_to_bl_delta_x, align 8
  %33 = load double, double* %bly, align 8
  %34 = load double, double* %tly, align 8
  %sub25 = fsub double %33, %34
  store double %sub25, double* %src_tl_to_bl_delta_y, align 8
  %35 = load double, double* %src_tl_to_tr_delta_x, align 8
  %36 = load i32, i32* %dest_width, align 4
  %conv26 = sitofp i32 %36 to double
  %div = fdiv double %35, %conv26
  %37 = load i32, i32* %int_multiple, align 4
  %conv27 = sitofp i32 %37 to double
  %mul = fmul double %div, %conv27
  %conv28 = fptosi double %mul to i32
  store i32 %conv28, i32* %src_walk_ux_i, align 4
  %38 = load double, double* %src_tl_to_tr_delta_y, align 8
  %39 = load i32, i32* %dest_width, align 4
  %conv29 = sitofp i32 %39 to double
  %div30 = fdiv double %38, %conv29
  %40 = load i32, i32* %int_multiple, align 4
  %conv31 = sitofp i32 %40 to double
  %mul32 = fmul double %div30, %conv31
  %conv33 = fptosi double %mul32 to i32
  store i32 %conv33, i32* %src_walk_uy_i, align 4
  %41 = load double, double* %src_tl_to_bl_delta_x, align 8
  %42 = load i32, i32* %dest_height, align 4
  %conv34 = sitofp i32 %42 to double
  %div35 = fdiv double %41, %conv34
  %43 = load i32, i32* %int_multiple, align 4
  %conv36 = sitofp i32 %43 to double
  %mul37 = fmul double %div35, %conv36
  %conv38 = fptosi double %mul37 to i32
  store i32 %conv38, i32* %src_walk_vx_i, align 4
  %44 = load double, double* %src_tl_to_bl_delta_y, align 8
  %45 = load i32, i32* %dest_height, align 4
  %conv39 = sitofp i32 %45 to double
  %div40 = fdiv double %44, %conv39
  %46 = load i32, i32* %int_multiple, align 4
  %conv41 = sitofp i32 %46 to double
  %mul42 = fmul double %div40, %conv41
  %conv43 = fptosi double %mul42 to i32
  store i32 %conv43, i32* %src_walk_vy_i, align 4
  %47 = load double, double* %tlx, align 8
  %48 = load i32, i32* %int_multiple, align 4
  %conv44 = sitofp i32 %48 to double
  %mul45 = fmul double %47, %conv44
  %conv46 = fptosi double %mul45 to i32
  store i32 %conv46, i32* %src_space_cur_pos_x_i, align 4
  %49 = load double, double* %tly, align 8
  %50 = load i32, i32* %int_multiple, align 4
  %conv47 = sitofp i32 %50 to double
  %mul48 = fmul double %49, %conv47
  %conv49 = fptosi double %mul48 to i32
  store i32 %conv49, i32* %src_space_cur_pos_y_i, align 4
  %51 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %shr = ashr i32 %51, 12
  store i32 %shr, i32* %src_space_cur_pos_x, align 4
  %52 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %shr50 = ashr i32 %52, 12
  store i32 %shr50, i32* %src_space_cur_pos_y, align 4
  %53 = load double, double* %tlx, align 8
  %54 = load i32, i32* %int_multiple, align 4
  %conv51 = sitofp i32 %54 to double
  %mul52 = fmul double %53, %conv51
  %conv53 = fptosi double %mul52 to i32
  store i32 %conv53, i32* %src_space_row_start_x_i, align 4
  %55 = load double, double* %tly, align 8
  %56 = load i32, i32* %int_multiple, align 4
  %conv54 = sitofp i32 %56 to double
  %mul55 = fmul double %55, %conv54
  %conv56 = fptosi double %mul55 to i32
  store i32 %conv56, i32* %src_space_row_start_y_i, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.177, %if.end
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %dest_height, align 4
  %cmp = icmp slt i32 %57, %58
  br i1 %cmp, label %for.body, label %for.end.179

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc, %for.body
  %59 = load i32, i32* %x, align 4
  %60 = load i32, i32* %dest_width, align 4
  %cmp59 = icmp slt i32 %59, %60
  br i1 %cmp59, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.58
  %61 = load i32, i32* %src_space_cur_pos_x, align 4
  %62 = load i32, i32* %src_width_minus_one, align 4
  %cmp62 = icmp sgt i32 %61, %62
  br i1 %cmp62, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.61
  %63 = load i32, i32* %src_space_cur_pos_x, align 4
  %cmp64 = icmp slt i32 %63, 0
  br i1 %cmp64, label %if.then.72, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false
  %64 = load i32, i32* %src_space_cur_pos_y, align 4
  %65 = load i32, i32* %src_height_minus_one, align 4
  %cmp67 = icmp sgt i32 %64, %65
  br i1 %cmp67, label %if.then.72, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.66
  %66 = load i32, i32* %src_space_cur_pos_y, align 4
  %cmp70 = icmp slt i32 %66, 0
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %lor.lhs.false.69, %lor.lhs.false.66, %lor.lhs.false, %for.body.61
  %67 = load i8*, i8** %dest, align 8
  %arrayidx = getelementptr inbounds i8, i8* %67, i64 0
  store i8 0, i8* %arrayidx, align 1
  %68 = load i8*, i8** %dest, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 0, i8* %arrayidx73, align 1
  %69 = load i8*, i8** %dest, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %69, i64 2
  store i8 0, i8* %arrayidx74, align 1
  br label %if.end.167

if.else:                                          ; preds = %lor.lhs.false.69
  %70 = load i8*, i8** %src, align 8
  %71 = load i32, i32* %src_space_cur_pos_y, align 4
  %72 = load i32, i32* %src_width, align 4
  %mul75 = mul nsw i32 %71, %72
  %73 = load i32, i32* %src_space_cur_pos_x, align 4
  %add = add nsw i32 %mul75, %73
  %mul76 = mul nsw i32 3, %add
  %idx.ext = sext i32 %mul76 to i64
  %add.ptr = getelementptr inbounds i8, i8* %70, i64 %idx.ext
  store i8* %add.ptr, i8** %src_walker, align 8
  %74 = load i32, i32* %src_space_cur_pos_y, align 4
  %75 = load i32, i32* %src_height_minus_one, align 4
  %cmp77 = icmp eq i32 %74, %75
  br i1 %cmp77, label %land.lhs.true, label %if.else.82

land.lhs.true:                                    ; preds = %if.else
  %76 = load i32, i32* %src_space_cur_pos_x, align 4
  %77 = load i32, i32* %src_width_minus_one, align 4
  %cmp79 = icmp eq i32 %76, %77
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %land.lhs.true
  %78 = load i8*, i8** %src_walker, align 8
  store i8* %78, i8** %pixel_next, align 8
  %79 = load i8*, i8** %src_walker, align 8
  store i8* %79, i8** %pixel_below, align 8
  %80 = load i8*, i8** %src_walker, align 8
  store i8* %80, i8** %pixel_below_next, align 8
  br label %if.end.103

if.else.82:                                       ; preds = %land.lhs.true, %if.else
  %81 = load i32, i32* %src_space_cur_pos_y, align 4
  %82 = load i32, i32* %src_height_minus_one, align 4
  %cmp83 = icmp eq i32 %81, %82
  br i1 %cmp83, label %if.then.85, label %if.else.88

if.then.85:                                       ; preds = %if.else.82
  %83 = load i8*, i8** %src_walker, align 8
  %add.ptr86 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %add.ptr86, i8** %pixel_next, align 8
  %84 = load i8*, i8** %src_walker, align 8
  store i8* %84, i8** %pixel_below, align 8
  %85 = load i8*, i8** %src_walker, align 8
  %add.ptr87 = getelementptr inbounds i8, i8* %85, i64 3
  store i8* %add.ptr87, i8** %pixel_below_next, align 8
  br label %if.end.102

if.else.88:                                       ; preds = %if.else.82
  %86 = load i32, i32* %src_space_cur_pos_x, align 4
  %87 = load i32, i32* %src_width_minus_one, align 4
  %cmp89 = icmp eq i32 %86, %87
  br i1 %cmp89, label %if.then.91, label %if.else.95

if.then.91:                                       ; preds = %if.else.88
  %88 = load i8*, i8** %src_walker, align 8
  store i8* %88, i8** %pixel_next, align 8
  %89 = load i8*, i8** %src_walker, align 8
  %90 = load i32, i32* %src_width, align 4
  %mul92 = mul nsw i32 %90, 3
  %idx.ext93 = sext i32 %mul92 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %89, i64 %idx.ext93
  store i8* %add.ptr94, i8** %pixel_below, align 8
  %91 = load i8*, i8** %pixel_below, align 8
  store i8* %91, i8** %pixel_below_next, align 8
  br label %if.end.101

if.else.95:                                       ; preds = %if.else.88
  %92 = load i8*, i8** %src_walker, align 8
  %add.ptr96 = getelementptr inbounds i8, i8* %92, i64 3
  store i8* %add.ptr96, i8** %pixel_next, align 8
  %93 = load i8*, i8** %src_walker, align 8
  %94 = load i32, i32* %src_width, align 4
  %mul97 = mul nsw i32 %94, 3
  %idx.ext98 = sext i32 %mul97 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %93, i64 %idx.ext98
  store i8* %add.ptr99, i8** %pixel_below, align 8
  %95 = load i8*, i8** %pixel_below, align 8
  %add.ptr100 = getelementptr inbounds i8, i8* %95, i64 3
  store i8* %add.ptr100, i8** %pixel_below_next, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.95, %if.then.91
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.then.85
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.81
  %96 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %97 = load i32, i32* %fraction_bitmask, align 4
  %and = and i32 %96, %97
  store i32 %and, i32* %distance_from_true_x, align 4
  %98 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %99 = load i32, i32* %fraction_bitmask, align 4
  %and104 = and i32 %98, %99
  store i32 %and104, i32* %distance_from_true_y, align 4
  %100 = load i32, i32* %int_multiple, align 4
  %101 = load i32, i32* %distance_from_true_x, align 4
  %sub105 = sub nsw i32 %100, %101
  store i32 %sub105, i32* %opposite_x, align 4
  %102 = load i32, i32* %int_multiple, align 4
  %103 = load i32, i32* %distance_from_true_y, align 4
  %sub106 = sub nsw i32 %102, %103
  store i32 %sub106, i32* %opposite_y, align 4
  %104 = load i8*, i8** %src_walker, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %104, i64 0
  %105 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %105 to i32
  %106 = load i32, i32* %opposite_x, align 4
  %mul109 = mul nsw i32 %conv108, %106
  %107 = load i8*, i8** %pixel_next, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %108 to i32
  %109 = load i32, i32* %distance_from_true_x, align 4
  %mul112 = mul nsw i32 %conv111, %109
  %add113 = add nsw i32 %mul109, %mul112
  %110 = load i32, i32* %opposite_y, align 4
  %mul114 = mul nsw i32 %add113, %110
  %111 = load i8*, i8** %pixel_below, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %111, i64 0
  %112 = load i8, i8* %arrayidx115, align 1
  %conv116 = zext i8 %112 to i32
  %113 = load i32, i32* %opposite_x, align 4
  %mul117 = mul nsw i32 %conv116, %113
  %114 = load i8*, i8** %pixel_below_next, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %114, i64 0
  %115 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %115 to i32
  %116 = load i32, i32* %distance_from_true_x, align 4
  %mul120 = mul nsw i32 %conv119, %116
  %add121 = add nsw i32 %mul117, %mul120
  %117 = load i32, i32* %distance_from_true_y, align 4
  %mul122 = mul nsw i32 %add121, %117
  %add123 = add nsw i32 %mul114, %mul122
  %shr124 = ashr i32 %add123, 24
  %conv125 = trunc i32 %shr124 to i8
  %118 = load i8*, i8** %dest, align 8
  %arrayidx126 = getelementptr inbounds i8, i8* %118, i64 0
  store i8 %conv125, i8* %arrayidx126, align 1
  %119 = load i8*, i8** %src_walker, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %119, i64 1
  %120 = load i8, i8* %arrayidx127, align 1
  %conv128 = zext i8 %120 to i32
  %121 = load i32, i32* %opposite_x, align 4
  %mul129 = mul nsw i32 %conv128, %121
  %122 = load i8*, i8** %pixel_next, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %123 to i32
  %124 = load i32, i32* %distance_from_true_x, align 4
  %mul132 = mul nsw i32 %conv131, %124
  %add133 = add nsw i32 %mul129, %mul132
  %125 = load i32, i32* %opposite_y, align 4
  %mul134 = mul nsw i32 %add133, %125
  %126 = load i8*, i8** %pixel_below, align 8
  %arrayidx135 = getelementptr inbounds i8, i8* %126, i64 1
  %127 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %127 to i32
  %128 = load i32, i32* %opposite_x, align 4
  %mul137 = mul nsw i32 %conv136, %128
  %129 = load i8*, i8** %pixel_below_next, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %129, i64 1
  %130 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %130 to i32
  %131 = load i32, i32* %distance_from_true_x, align 4
  %mul140 = mul nsw i32 %conv139, %131
  %add141 = add nsw i32 %mul137, %mul140
  %132 = load i32, i32* %distance_from_true_y, align 4
  %mul142 = mul nsw i32 %add141, %132
  %add143 = add nsw i32 %mul134, %mul142
  %shr144 = ashr i32 %add143, 24
  %conv145 = trunc i32 %shr144 to i8
  %133 = load i8*, i8** %dest, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %133, i64 1
  store i8 %conv145, i8* %arrayidx146, align 1
  %134 = load i8*, i8** %src_walker, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %134, i64 2
  %135 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %135 to i32
  %136 = load i32, i32* %opposite_x, align 4
  %mul149 = mul nsw i32 %conv148, %136
  %137 = load i8*, i8** %pixel_next, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %137, i64 2
  %138 = load i8, i8* %arrayidx150, align 1
  %conv151 = zext i8 %138 to i32
  %139 = load i32, i32* %distance_from_true_x, align 4
  %mul152 = mul nsw i32 %conv151, %139
  %add153 = add nsw i32 %mul149, %mul152
  %140 = load i32, i32* %opposite_y, align 4
  %mul154 = mul nsw i32 %add153, %140
  %141 = load i8*, i8** %pixel_below, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %141, i64 2
  %142 = load i8, i8* %arrayidx155, align 1
  %conv156 = zext i8 %142 to i32
  %143 = load i32, i32* %opposite_x, align 4
  %mul157 = mul nsw i32 %conv156, %143
  %144 = load i8*, i8** %pixel_below_next, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %144, i64 2
  %145 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %145 to i32
  %146 = load i32, i32* %distance_from_true_x, align 4
  %mul160 = mul nsw i32 %conv159, %146
  %add161 = add nsw i32 %mul157, %mul160
  %147 = load i32, i32* %distance_from_true_y, align 4
  %mul162 = mul nsw i32 %add161, %147
  %add163 = add nsw i32 %mul154, %mul162
  %shr164 = ashr i32 %add163, 24
  %conv165 = trunc i32 %shr164 to i8
  %148 = load i8*, i8** %dest, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %148, i64 2
  store i8 %conv165, i8* %arrayidx166, align 1
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.103, %if.then.72
  %149 = load i32, i32* %src_walk_ux_i, align 4
  %150 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %add168 = add nsw i32 %150, %149
  store i32 %add168, i32* %src_space_cur_pos_x_i, align 4
  %151 = load i32, i32* %src_walk_uy_i, align 4
  %152 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %add169 = add nsw i32 %152, %151
  store i32 %add169, i32* %src_space_cur_pos_y_i, align 4
  %153 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %shr170 = ashr i32 %153, 12
  store i32 %shr170, i32* %src_space_cur_pos_x, align 4
  %154 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %shr171 = ashr i32 %154, 12
  store i32 %shr171, i32* %src_space_cur_pos_y, align 4
  %155 = load i8*, i8** %dest, align 8
  %add.ptr172 = getelementptr inbounds i8, i8* %155, i64 3
  store i8* %add.ptr172, i8** %dest, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.167
  %156 = load i32, i32* %x, align 4
  %inc = add nsw i32 %156, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.58

for.end:                                          ; preds = %for.cond.58
  %157 = load i32, i32* %src_walk_vx_i, align 4
  %158 = load i32, i32* %src_space_row_start_x_i, align 4
  %add173 = add nsw i32 %158, %157
  store i32 %add173, i32* %src_space_row_start_x_i, align 4
  %159 = load i32, i32* %src_walk_vy_i, align 4
  %160 = load i32, i32* %src_space_row_start_y_i, align 4
  %add174 = add nsw i32 %160, %159
  store i32 %add174, i32* %src_space_row_start_y_i, align 4
  %161 = load i32, i32* %src_space_row_start_x_i, align 4
  store i32 %161, i32* %src_space_cur_pos_x_i, align 4
  %162 = load i32, i32* %src_space_row_start_y_i, align 4
  store i32 %162, i32* %src_space_cur_pos_y_i, align 4
  %163 = load i32, i32* %src_space_cur_pos_x_i, align 4
  %shr175 = ashr i32 %163, 12
  store i32 %shr175, i32* %src_space_cur_pos_x, align 4
  %164 = load i32, i32* %src_space_cur_pos_y_i, align 4
  %shr176 = ashr i32 %164, 12
  store i32 %shr176, i32* %src_space_cur_pos_y, align 4
  br label %for.inc.177

for.inc.177:                                      ; preds = %for.end
  %165 = load i32, i32* %y, align 4
  %inc178 = add nsw i32 %165, 1
  store i32 %inc178, i32* %y, align 4
  br label %for.cond

for.end.179:                                      ; preds = %for.cond
  %166 = load double, double* %hardness.addr, align 8
  %cmp180 = fcmp olt double %166, 1.000000e+00
  br i1 %cmp180, label %if.then.182, label %if.end.197

if.then.182:                                      ; preds = %for.end.179
  %167 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %height183 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %167, i32 0, i32 2
  %168 = load i32, i32* %height183, align 4
  %169 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %width184 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %169, i32 0, i32 1
  %170 = load i32, i32* %width184, align 4
  %171 = load double, double* %hardness.addr, align 8
  %call185 = call i32 @gimp_brush_transform_blur_kernel_size(i32 %168, i32 %170, double %171)
  store i32 %call185, i32* %kernel_size, align 4
  %172 = load i32, i32* %kernel_size, align 4
  %173 = load i32, i32* %kernel_size, align 4
  %mul186 = mul nsw i32 %172, %173
  store i32 %mul186, i32* %kernel_len, align 4
  %174 = load i32, i32* %kernel_len, align 4
  %175 = zext i32 %174 to i64
  %176 = call i8* @llvm.stacksave()
  store i8* %176, i8** %saved_stack
  %vla = alloca float, i64 %175, align 16
  %177 = load i32, i32* %kernel_len, align 4
  call void @gimp_brush_transform_fill_blur_kernel(float* %vla, i32 %177)
  %178 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %call187 = call %struct._TempBuf* @temp_buf_copy(%struct._TempBuf* %178, %struct._TempBuf* null)
  store %struct._TempBuf* %call187, %struct._TempBuf** %blur_src, align 8
  %179 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %180 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %x188 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %180, i32 0, i32 3
  %181 = load i32, i32* %x188, align 4
  %182 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %y189 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %182, i32 0, i32 4
  %183 = load i32, i32* %y189, align 4
  %184 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %width190 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %184, i32 0, i32 1
  %185 = load i32, i32* %width190, align 4
  %186 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  %height191 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %186, i32 0, i32 2
  %187 = load i32, i32* %height191, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %srcPR, %struct._TempBuf* %179, i32 %181, i32 %183, i32 %185, i32 %187)
  %188 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %189 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %x192 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %189, i32 0, i32 3
  %190 = load i32, i32* %x192, align 4
  %191 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %y193 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %191, i32 0, i32 4
  %192 = load i32, i32* %y193, align 4
  %193 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %width194 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %193, i32 0, i32 1
  %194 = load i32, i32* %width194, align 4
  %195 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  %height195 = getelementptr inbounds %struct._TempBuf, %struct._TempBuf* %195, i32 0, i32 2
  %196 = load i32, i32* %height195, align 4
  call void @pixel_region_init_temp_buf(%struct._PixelRegion* %destPR, %struct._TempBuf* %188, i32 %190, i32 %192, i32 %194, i32 %196)
  %197 = load i32, i32* %kernel_size, align 4
  %198 = load i32, i32* %kernel_len, align 4
  %call196 = call double @gimp_brush_transform_array_sum(float* %vla, i32 %198)
  call void @convolve_region(%struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR, float* %vla, i32 %197, double %call196, i32 0, i32 0)
  %199 = load %struct._TempBuf*, %struct._TempBuf** %blur_src, align 8
  call void @temp_buf_free(%struct._TempBuf* %199)
  %200 = load i8*, i8** %saved_stack
  call void @llvm.stackrestore(i8* %200)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.182, %for.end.179
  %201 = load %struct._TempBuf*, %struct._TempBuf** %result, align 8
  store %struct._TempBuf* %201, %struct._TempBuf** %retval
  br label %return

return:                                           ; preds = %if.end.197, %if.then
  %202 = load %struct._TempBuf*, %struct._TempBuf** %retval
  ret %struct._TempBuf* %202
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

declare void @gimp_matrix3_identity(%struct._GimpMatrix3*) #2

declare void @gimp_matrix3_scale(%struct._GimpMatrix3*, double, double) #2

declare void @gimp_matrix3_rotate(%struct._GimpMatrix3*, double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #4

; Function Attrs: nounwind readnone
declare double @floor(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
