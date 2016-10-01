; ModuleID = './MultiSource.Benchmarks.VersaBench/16.dbms.keyUnion.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }

; Function Attrs: nounwind uwtable
define void @keyUnion(%struct.IndexKey* %A, %struct.IndexKey* %B, %struct.IndexKey* %U) #0 {
entry:
  %A.addr = alloca %struct.IndexKey*, align 8
  %B.addr = alloca %struct.IndexKey*, align 8
  %U.addr = alloca %struct.IndexKey*, align 8
  store %struct.IndexKey* %A, %struct.IndexKey** %A.addr, align 8
  store %struct.IndexKey* %B, %struct.IndexKey** %B.addr, align 8
  store %struct.IndexKey* %U, %struct.IndexKey** %U.addr, align 8
  %0 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %T = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower, i32 0, i32 0
  %1 = load float, float* %T, align 4
  %2 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower1 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %2, i32 0, i32 0
  %T2 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower1, i32 0, i32 0
  %3 = load float, float* %T2, align 4
  %cmp = fcmp olt float %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower3 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %4, i32 0, i32 0
  %T4 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower3, i32 0, i32 0
  %5 = load float, float* %T4, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower5 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %6, i32 0, i32 0
  %T6 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower5, i32 0, i32 0
  %7 = load float, float* %T6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %5, %cond.true ], [ %7, %cond.false ]
  %8 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %lower7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %8, i32 0, i32 0
  %T8 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower7, i32 0, i32 0
  store float %cond, float* %T8, align 4
  %9 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower9 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %9, i32 0, i32 0
  %X = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower9, i32 0, i32 1
  %10 = load float, float* %X, align 4
  %11 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower10 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %11, i32 0, i32 0
  %X11 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower10, i32 0, i32 1
  %12 = load float, float* %X11, align 4
  %cmp12 = fcmp olt float %10, %12
  br i1 %cmp12, label %cond.true.13, label %cond.false.16

cond.true.13:                                     ; preds = %cond.end
  %13 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %13, i32 0, i32 0
  %X15 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower14, i32 0, i32 1
  %14 = load float, float* %X15, align 4
  br label %cond.end.19

cond.false.16:                                    ; preds = %cond.end
  %15 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower17 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %15, i32 0, i32 0
  %X18 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower17, i32 0, i32 1
  %16 = load float, float* %X18, align 4
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.13
  %cond20 = phi float [ %14, %cond.true.13 ], [ %16, %cond.false.16 ]
  %17 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %lower21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %17, i32 0, i32 0
  %X22 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower21, i32 0, i32 1
  store float %cond20, float* %X22, align 4
  %18 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %18, i32 0, i32 0
  %Y = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower23, i32 0, i32 2
  %19 = load float, float* %Y, align 4
  %20 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %20, i32 0, i32 0
  %Y25 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower24, i32 0, i32 2
  %21 = load float, float* %Y25, align 4
  %cmp26 = fcmp olt float %19, %21
  br i1 %cmp26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end.19
  %22 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower28 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %22, i32 0, i32 0
  %Y29 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower28, i32 0, i32 2
  %23 = load float, float* %Y29, align 4
  br label %cond.end.33

cond.false.30:                                    ; preds = %cond.end.19
  %24 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower31 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %24, i32 0, i32 0
  %Y32 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower31, i32 0, i32 2
  %25 = load float, float* %Y32, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.30, %cond.true.27
  %cond34 = phi float [ %23, %cond.true.27 ], [ %25, %cond.false.30 ]
  %26 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %lower35 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %Y36 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower35, i32 0, i32 2
  store float %cond34, float* %Y36, align 4
  %27 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower37 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %27, i32 0, i32 0
  %Z = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower37, i32 0, i32 3
  %28 = load float, float* %Z, align 4
  %29 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower38 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %29, i32 0, i32 0
  %Z39 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower38, i32 0, i32 3
  %30 = load float, float* %Z39, align 4
  %cmp40 = fcmp olt float %28, %30
  br i1 %cmp40, label %cond.true.41, label %cond.false.44

cond.true.41:                                     ; preds = %cond.end.33
  %31 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %lower42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 0
  %Z43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower42, i32 0, i32 3
  %32 = load float, float* %Z43, align 4
  br label %cond.end.47

cond.false.44:                                    ; preds = %cond.end.33
  %33 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %lower45 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %33, i32 0, i32 0
  %Z46 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower45, i32 0, i32 3
  %34 = load float, float* %Z46, align 4
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.44, %cond.true.41
  %cond48 = phi float [ %32, %cond.true.41 ], [ %34, %cond.false.44 ]
  %35 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %lower49 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 0
  %Z50 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower49, i32 0, i32 3
  store float %cond48, float* %Z50, align 4
  %36 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %36, i32 0, i32 1
  %T51 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper, i32 0, i32 0
  %37 = load float, float* %T51, align 4
  %38 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper52 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %38, i32 0, i32 1
  %T53 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper52, i32 0, i32 0
  %39 = load float, float* %T53, align 4
  %cmp54 = fcmp ogt float %37, %39
  br i1 %cmp54, label %cond.true.55, label %cond.false.58

cond.true.55:                                     ; preds = %cond.end.47
  %40 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper56 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %40, i32 0, i32 1
  %T57 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper56, i32 0, i32 0
  %41 = load float, float* %T57, align 4
  br label %cond.end.61

cond.false.58:                                    ; preds = %cond.end.47
  %42 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper59 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %42, i32 0, i32 1
  %T60 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper59, i32 0, i32 0
  %43 = load float, float* %T60, align 4
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.58, %cond.true.55
  %cond62 = phi float [ %41, %cond.true.55 ], [ %43, %cond.false.58 ]
  %44 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %upper63 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %44, i32 0, i32 1
  %T64 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper63, i32 0, i32 0
  store float %cond62, float* %T64, align 4
  %45 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper65 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %45, i32 0, i32 1
  %X66 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper65, i32 0, i32 1
  %46 = load float, float* %X66, align 4
  %47 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper67 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %47, i32 0, i32 1
  %X68 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper67, i32 0, i32 1
  %48 = load float, float* %X68, align 4
  %cmp69 = fcmp ogt float %46, %48
  br i1 %cmp69, label %cond.true.70, label %cond.false.73

cond.true.70:                                     ; preds = %cond.end.61
  %49 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper71 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %49, i32 0, i32 1
  %X72 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper71, i32 0, i32 1
  %50 = load float, float* %X72, align 4
  br label %cond.end.76

cond.false.73:                                    ; preds = %cond.end.61
  %51 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper74 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %51, i32 0, i32 1
  %X75 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper74, i32 0, i32 1
  %52 = load float, float* %X75, align 4
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.true.70
  %cond77 = phi float [ %50, %cond.true.70 ], [ %52, %cond.false.73 ]
  %53 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %upper78 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %53, i32 0, i32 1
  %X79 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper78, i32 0, i32 1
  store float %cond77, float* %X79, align 4
  %54 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper80 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %54, i32 0, i32 1
  %Y81 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper80, i32 0, i32 2
  %55 = load float, float* %Y81, align 4
  %56 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper82 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %56, i32 0, i32 1
  %Y83 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper82, i32 0, i32 2
  %57 = load float, float* %Y83, align 4
  %cmp84 = fcmp ogt float %55, %57
  br i1 %cmp84, label %cond.true.85, label %cond.false.88

cond.true.85:                                     ; preds = %cond.end.76
  %58 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper86 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %58, i32 0, i32 1
  %Y87 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper86, i32 0, i32 2
  %59 = load float, float* %Y87, align 4
  br label %cond.end.91

cond.false.88:                                    ; preds = %cond.end.76
  %60 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper89 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %60, i32 0, i32 1
  %Y90 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper89, i32 0, i32 2
  %61 = load float, float* %Y90, align 4
  br label %cond.end.91

cond.end.91:                                      ; preds = %cond.false.88, %cond.true.85
  %cond92 = phi float [ %59, %cond.true.85 ], [ %61, %cond.false.88 ]
  %62 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %upper93 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %62, i32 0, i32 1
  %Y94 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper93, i32 0, i32 2
  store float %cond92, float* %Y94, align 4
  %63 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper95 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %63, i32 0, i32 1
  %Z96 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper95, i32 0, i32 3
  %64 = load float, float* %Z96, align 4
  %65 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper97 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %65, i32 0, i32 1
  %Z98 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper97, i32 0, i32 3
  %66 = load float, float* %Z98, align 4
  %cmp99 = fcmp ogt float %64, %66
  br i1 %cmp99, label %cond.true.100, label %cond.false.103

cond.true.100:                                    ; preds = %cond.end.91
  %67 = load %struct.IndexKey*, %struct.IndexKey** %A.addr, align 8
  %upper101 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %67, i32 0, i32 1
  %Z102 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper101, i32 0, i32 3
  %68 = load float, float* %Z102, align 4
  br label %cond.end.106

cond.false.103:                                   ; preds = %cond.end.91
  %69 = load %struct.IndexKey*, %struct.IndexKey** %B.addr, align 8
  %upper104 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %69, i32 0, i32 1
  %Z105 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper104, i32 0, i32 3
  %70 = load float, float* %Z105, align 4
  br label %cond.end.106

cond.end.106:                                     ; preds = %cond.false.103, %cond.true.100
  %cond107 = phi float [ %68, %cond.true.100 ], [ %70, %cond.false.103 ]
  %71 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %upper108 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %71, i32 0, i32 1
  %Z109 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper108, i32 0, i32 3
  store float %cond107, float* %Z109, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @keysUnion(%struct.IndexEntry* %I, %struct.IndexKey* %U) #0 {
entry:
  %I.addr = alloca %struct.IndexEntry*, align 8
  %U.addr = alloca %struct.IndexKey*, align 8
  store %struct.IndexEntry* %I, %struct.IndexEntry** %I.addr, align 8
  store %struct.IndexKey* %U, %struct.IndexKey** %U.addr, align 8
  %0 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %1 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %key = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %1, i32 0, i32 1
  %2 = bitcast %struct.IndexKey* %0 to i8*
  %3 = bitcast %struct.IndexKey* %key to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 32, i32 4, i1 false)
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %4, i32 0, i32 2
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  store %struct.IndexEntry* %5, %struct.IndexEntry** %I.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %cmp = icmp ne %struct.IndexEntry* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %key1 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %7, i32 0, i32 1
  %8 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  %9 = load %struct.IndexKey*, %struct.IndexKey** %U.addr, align 8
  call void @keyUnion(%struct.IndexKey* %key1, %struct.IndexKey* %8, %struct.IndexKey* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.IndexEntry*, %struct.IndexEntry** %I.addr, align 8
  %next2 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %10, i32 0, i32 2
  %11 = load %struct.IndexEntry*, %struct.IndexEntry** %next2, align 8
  store %struct.IndexEntry* %11, %struct.IndexEntry** %I.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
