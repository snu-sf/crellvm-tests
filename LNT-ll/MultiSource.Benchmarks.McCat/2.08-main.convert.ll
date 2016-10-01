; ModuleID = './MultiSource.Benchmarks.McCat/2.08-main.convert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HPointStruct = type { double, double, double, double }
%struct.ObjPointStruct = type { double, double, double, double, double, double }

; Function Attrs: nounwind uwtable
define void @PointToHPoint(%struct.HPointStruct* noalias sret %agg.result, %struct.ObjPointStruct* byval align 8 %P) #0 {
entry:
  %res = alloca %struct.HPointStruct, align 8
  %x = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %P, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 0
  store double %0, double* %x1, align 8
  %y = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %P, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 1
  store double %1, double* %y2, align 8
  %z = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %P, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %z3 = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 2
  store double %2, double* %z3, align 8
  %w = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 3
  store double 1.000000e+00, double* %w, align 8
  %3 = bitcast %struct.HPointStruct* %agg.result to i8*
  %4 = bitcast %struct.HPointStruct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @TPointToHPoint(%struct.HPointStruct* noalias sret %agg.result, %struct.ObjPointStruct* byval align 8 %TP) #0 {
entry:
  %res = alloca %struct.HPointStruct, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %TP, i32 0, i32 3
  %0 = load double, double* %tx, align 8
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 0
  store double %0, double* %x, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %TP, i32 0, i32 4
  %1 = load double, double* %ty, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 1
  store double %1, double* %y, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %TP, i32 0, i32 5
  %2 = load double, double* %tz, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 2
  store double %2, double* %z, align 8
  %w = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %res, i32 0, i32 3
  store double 1.000000e+00, double* %w, align 8
  %3 = bitcast %struct.HPointStruct* %agg.result to i8*
  %4 = bitcast %struct.HPointStruct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @HPointToPoint(%struct.ObjPointStruct* noalias sret %agg.result, %struct.HPointStruct* byval align 8 %P) #0 {
entry:
  %res = alloca %struct.ObjPointStruct, align 8
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %res, i32 0, i32 0
  store double %0, double* %x1, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %res, i32 0, i32 1
  store double %1, double* %y2, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %z3 = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %res, i32 0, i32 2
  store double %2, double* %z3, align 8
  %3 = bitcast %struct.ObjPointStruct* %agg.result to i8*
  %4 = bitcast %struct.ObjPointStruct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 48, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @HPointToTPoint(%struct.ObjPointStruct* noalias sret %agg.result, %struct.HPointStruct* byval align 8 %P) #0 {
entry:
  %res = alloca %struct.ObjPointStruct, align 8
  %x = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %tx = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %res, i32 0, i32 3
  store double %0, double* %tx, align 8
  %y = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %ty = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %res, i32 0, i32 4
  store double %1, double* %ty, align 8
  %z = getelementptr inbounds %struct.HPointStruct, %struct.HPointStruct* %P, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %tz = getelementptr inbounds %struct.ObjPointStruct, %struct.ObjPointStruct* %res, i32 0, i32 5
  store double %2, double* %tz, align 8
  %3 = bitcast %struct.ObjPointStruct* %agg.result to i8*
  %4 = bitcast %struct.ObjPointStruct* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 48, i32 8, i1 false)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
