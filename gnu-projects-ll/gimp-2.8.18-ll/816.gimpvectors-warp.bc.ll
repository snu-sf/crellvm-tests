; ModuleID = './app/vectors/gimpvectors-warp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, i8**, i32, i32, double, double, double, double }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpStroke = type { %struct._GimpObject, i32, %struct._GList*, i32 }
%struct._GimpAnchor = type { %struct._GimpCoords, i32, i32 }

; Function Attrs: nounwind uwtable
define void @gimp_vectors_warp_point(%struct._GimpVectors* %vectors, %struct._GimpCoords* %point, %struct._GimpCoords* %point_warped, double %y_offset) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %point.addr = alloca %struct._GimpCoords*, align 8
  %point_warped.addr = alloca %struct._GimpCoords*, align 8
  %y_offset.addr = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %len = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpCoords* %point, %struct._GimpCoords** %point.addr, align 8
  store %struct._GimpCoords* %point_warped, %struct._GimpCoords** %point_warped.addr, align 8
  store double %y_offset, double* %y_offset.addr, align 8
  %0 = load %struct._GimpCoords*, %struct._GimpCoords** %point.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %0, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  store double %1, double* %x, align 8
  %2 = load %struct._GimpCoords*, %struct._GimpCoords** %point.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %2, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  store double %3, double* %y, align 8
  %4 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %4, i32 0, i32 1
  %5 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %5, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %9 = bitcast i8* %8 to %struct._GimpStroke*
  store %struct._GimpStroke* %9, %struct._GimpStroke** %stroke, align 8
  %10 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %11 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %call = call double @gimp_vectors_stroke_get_length(%struct._GimpVectors* %10, %struct._GimpStroke* %11)
  store double %call, double* %len, align 8
  %12 = load double, double* %x, align 8
  %13 = load double, double* %len, align 8
  %cmp = fcmp olt double %12, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %14 = load double, double* %len, align 8
  %15 = load double, double* %x, align 8
  %sub = fsub double %15, %14
  store double %sub, double* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool3 = icmp ne %struct._GList* %16, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %17, i32 0, i32 1
  %18 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %18, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool4 = icmp ne %struct._GList* %19, null
  br i1 %tobool4, label %if.end.8, label %if.then.5

if.then.5:                                        ; preds = %for.end
  %20 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %x6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %20, i32 0, i32 0
  store double 0.000000e+00, double* %x6, align 8
  %21 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %y7 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %21, i32 0, i32 1
  store double 0.000000e+00, double* %y7, align 8
  br label %return

if.end.8:                                         ; preds = %for.end
  %22 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %23 = load double, double* %x, align 8
  %24 = load double, double* %y, align 8
  %25 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %26 = load double, double* %y_offset.addr, align 8
  call void @gimp_stroke_warp_point(%struct._GimpStroke* %22, double %23, double %24, %struct._GimpCoords* %25, double %26)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.5
  ret void
}

declare double @gimp_vectors_stroke_get_length(%struct._GimpVectors*, %struct._GimpStroke*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_stroke_warp_point(%struct._GimpStroke* %stroke, double %x, double %y, %struct._GimpCoords* %point_warped, double %y_offset) #0 {
entry:
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %point_warped.addr = alloca %struct._GimpCoords*, align 8
  %y_offset.addr = alloca double, align 8
  %point_zero = alloca %struct._GimpCoords, align 8
  %point_minus = alloca %struct._GimpCoords, align 8
  %point_plus = alloca %struct._GimpCoords, align 8
  %slope = alloca double, align 8
  %dx = alloca double, align 8
  %dy = alloca double, align 8
  %nx = alloca double, align 8
  %ny = alloca double, align 8
  %len = alloca double, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store %struct._GimpCoords* %point_warped, %struct._GimpCoords** %point_warped.addr, align 8
  store double %y_offset, double* %y_offset.addr, align 8
  %0 = bitcast %struct._GimpCoords* %point_zero to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 64, i32 8, i1 false)
  %1 = bitcast %struct._GimpCoords* %point_minus to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 64, i32 8, i1 false)
  %2 = bitcast %struct._GimpCoords* %point_plus to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 64, i32 8, i1 false)
  %3 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %4 = load double, double* %x.addr, align 8
  %call = call i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke* %3, double %4, double 2.000000e-01, %struct._GimpCoords* %point_zero, double* %slope)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %x1 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %5, i32 0, i32 0
  store double 0.000000e+00, double* %x1, align 8
  %6 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %y2 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %6, i32 0, i32 1
  store double 0.000000e+00, double* %y2, align 8
  br label %return

if.end:                                           ; preds = %entry
  %x3 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_zero, i32 0, i32 0
  %7 = load double, double* %x3, align 8
  %8 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %x4 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %8, i32 0, i32 0
  store double %7, double* %x4, align 8
  %y5 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_zero, i32 0, i32 1
  %9 = load double, double* %y5, align 8
  %10 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %y6 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %10, i32 0, i32 1
  store double %9, double* %y6, align 8
  %11 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %12 = load double, double* %x.addr, align 8
  %sub = fsub double %12, 2.000000e+00
  %call7 = call i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke* %11, double %sub, double 2.000000e-01, %struct._GimpCoords* %point_minus, double* %slope)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  br label %return

if.end.10:                                        ; preds = %if.end
  %13 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %14 = load double, double* %x.addr, align 8
  %add = fadd double %14, 2.000000e+00
  %call11 = call i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke* %13, double %add, double 2.000000e-01, %struct._GimpCoords* %point_plus, double* %slope)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %x15 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_plus, i32 0, i32 0
  %15 = load double, double* %x15, align 8
  %x16 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_minus, i32 0, i32 0
  %16 = load double, double* %x16, align 8
  %sub17 = fsub double %15, %16
  store double %sub17, double* %dx, align 8
  %y18 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_plus, i32 0, i32 1
  %17 = load double, double* %y18, align 8
  %y19 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_minus, i32 0, i32 1
  %18 = load double, double* %y19, align 8
  %sub20 = fsub double %17, %18
  store double %sub20, double* %dy, align 8
  %19 = load double, double* %dx, align 8
  %20 = load double, double* %dy, align 8
  %call21 = call double @hypot(double %19, double %20) #2
  store double %call21, double* %len, align 8
  %21 = load double, double* %len, align 8
  %cmp = fcmp olt double %21, 1.000000e-02
  br i1 %cmp, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.14
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %22 = load double, double* %dy, align 8
  %sub24 = fsub double -0.000000e+00, %22
  %23 = load double, double* %len, align 8
  %div = fdiv double %sub24, %23
  store double %div, double* %nx, align 8
  %24 = load double, double* %dx, align 8
  %25 = load double, double* %len, align 8
  %div25 = fdiv double %24, %25
  store double %div25, double* %ny, align 8
  %x26 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_zero, i32 0, i32 0
  %26 = load double, double* %x26, align 8
  %27 = load double, double* %nx, align 8
  %28 = load double, double* %y.addr, align 8
  %29 = load double, double* %y_offset.addr, align 8
  %sub27 = fsub double %28, %29
  %mul = fmul double %27, %sub27
  %add28 = fadd double %26, %mul
  %30 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %x29 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %30, i32 0, i32 0
  store double %add28, double* %x29, align 8
  %y30 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %point_zero, i32 0, i32 1
  %31 = load double, double* %y30, align 8
  %32 = load double, double* %ny, align 8
  %33 = load double, double* %y.addr, align 8
  %34 = load double, double* %y_offset.addr, align 8
  %sub31 = fsub double %33, %34
  %mul32 = fmul double %32, %sub31
  %add33 = fadd double %31, %mul32
  %35 = load %struct._GimpCoords*, %struct._GimpCoords** %point_warped.addr, align 8
  %y34 = getelementptr inbounds %struct._GimpCoords, %struct._GimpCoords* %35, i32 0, i32 1
  store double %add33, double* %y34, align 8
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.13, %if.then.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_vectors_warp_vectors(%struct._GimpVectors* %vectors, %struct._GimpVectors* %vectors_in, double %y_offset) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %vectors_in.addr = alloca %struct._GimpVectors*, align 8
  %y_offset.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %stroke = alloca %struct._GimpStroke*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpVectors* %vectors_in, %struct._GimpVectors** %vectors_in.addr, align 8
  store double %y_offset, double* %y_offset.addr, align 8
  %0 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors_in.addr, align 8
  %strokes = getelementptr inbounds %struct._GimpVectors, %struct._GimpVectors* %0, i32 0, i32 1
  %1 = load %struct._GList*, %struct._GList** %strokes, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpStroke*
  store %struct._GimpStroke* %5, %struct._GimpStroke** %stroke, align 8
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %7 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke, align 8
  %8 = load double, double* %y_offset.addr, align 8
  call void @gimp_vectors_warp_stroke(%struct._GimpVectors* %6, %struct._GimpStroke* %7, double %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %9, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_vectors_warp_stroke(%struct._GimpVectors* %vectors, %struct._GimpStroke* %stroke, double %y_offset) #0 {
entry:
  %vectors.addr = alloca %struct._GimpVectors*, align 8
  %stroke.addr = alloca %struct._GimpStroke*, align 8
  %y_offset.addr = alloca double, align 8
  %list = alloca %struct._GList*, align 8
  %anchor = alloca %struct._GimpAnchor*, align 8
  store %struct._GimpVectors* %vectors, %struct._GimpVectors** %vectors.addr, align 8
  store %struct._GimpStroke* %stroke, %struct._GimpStroke** %stroke.addr, align 8
  store double %y_offset, double* %y_offset.addr, align 8
  %0 = load %struct._GimpStroke*, %struct._GimpStroke** %stroke.addr, align 8
  %anchors = getelementptr inbounds %struct._GimpStroke, %struct._GimpStroke* %0, i32 0, i32 2
  %1 = load %struct._GList*, %struct._GList** %anchors, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpAnchor*
  store %struct._GimpAnchor* %5, %struct._GimpAnchor** %anchor, align 8
  %6 = load %struct._GimpVectors*, %struct._GimpVectors** %vectors.addr, align 8
  %7 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %7, i32 0, i32 0
  %8 = load %struct._GimpAnchor*, %struct._GimpAnchor** %anchor, align 8
  %position1 = getelementptr inbounds %struct._GimpAnchor, %struct._GimpAnchor* %8, i32 0, i32 0
  %9 = load double, double* %y_offset.addr, align 8
  call void @gimp_vectors_warp_point(%struct._GimpVectors* %6, %struct._GimpCoords* %position, %struct._GimpCoords* %position1, double %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %10, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %11 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 1
  %12 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %12, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @gimp_stroke_get_point_at_dist(%struct._GimpStroke*, double, double, %struct._GimpCoords*, double*) #1

; Function Attrs: nounwind
declare double @hypot(double, double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
