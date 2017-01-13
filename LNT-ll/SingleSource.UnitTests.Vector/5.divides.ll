; ModuleID = './SingleSource.UnitTests.Vector/5.divides.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.SV = type { <4 x i32> }
%union.UV = type { <4 x i32> }

@.str = private unnamed_addr constant [22 x i8] c"U3.V = <%u %u %u %u>\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"S3.V = <%u %u %u %u>\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @testuvec(<4 x i32>* %A, <4 x i32>* %B, <4 x i32>* %R) #0 {
entry:
  %A.addr = alloca <4 x i32>*, align 8
  %B.addr = alloca <4 x i32>*, align 8
  %R.addr = alloca <4 x i32>*, align 8
  store <4 x i32>* %A, <4 x i32>** %A.addr, align 8
  store <4 x i32>* %B, <4 x i32>** %B.addr, align 8
  store <4 x i32>* %R, <4 x i32>** %R.addr, align 8
  %0 = load <4 x i32>*, <4 x i32>** %A.addr, align 8
  %1 = load <4 x i32>, <4 x i32>* %0, align 16
  %2 = load <4 x i32>*, <4 x i32>** %B.addr, align 8
  %3 = load <4 x i32>, <4 x i32>* %2, align 16
  %div = udiv <4 x i32> %1, %3
  %4 = load <4 x i32>*, <4 x i32>** %R.addr, align 8
  store <4 x i32> %div, <4 x i32>* %4, align 16
  ret void
}

; Function Attrs: nounwind uwtable
define void @testsvec(<4 x i32>* %A, <4 x i32>* %B, <4 x i32>* %R) #0 {
entry:
  %A.addr = alloca <4 x i32>*, align 8
  %B.addr = alloca <4 x i32>*, align 8
  %R.addr = alloca <4 x i32>*, align 8
  store <4 x i32>* %A, <4 x i32>** %A.addr, align 8
  store <4 x i32>* %B, <4 x i32>** %B.addr, align 8
  store <4 x i32>* %R, <4 x i32>** %R.addr, align 8
  %0 = load <4 x i32>*, <4 x i32>** %A.addr, align 8
  %1 = load <4 x i32>, <4 x i32>* %0, align 16
  %2 = load <4 x i32>*, <4 x i32>** %B.addr, align 8
  %3 = load <4 x i32>, <4 x i32>* %2, align 16
  %div = sdiv <4 x i32> %1, %3
  %4 = load <4 x i32>*, <4 x i32>** %R.addr, align 8
  store <4 x i32> %div, <4 x i32>* %4, align 16
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %S1 = alloca %union.SV, align 16
  %S2 = alloca %union.SV, align 16
  %S3 = alloca %union.SV, align 16
  %U1 = alloca %union.UV, align 16
  %U2 = alloca %union.UV, align 16
  %U3 = alloca %union.UV, align 16
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %A = bitcast %union.SV* %S2 to [4 x i32]*
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %A, i32 0, i64 0
  store i32 2, i32* %arrayidx, align 4
  %A1 = bitcast %union.SV* %S1 to [4 x i32]*
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %A1, i32 0, i64 0
  store i32 2, i32* %arrayidx2, align 4
  %A3 = bitcast %union.SV* %S2 to [4 x i32]*
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %A3, i32 0, i64 1
  store i32 -3, i32* %arrayidx4, align 4
  %A5 = bitcast %union.SV* %S1 to [4 x i32]*
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %A5, i32 0, i64 1
  store i32 -3, i32* %arrayidx6, align 4
  %A7 = bitcast %union.SV* %S2 to [4 x i32]*
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %A7, i32 0, i64 2
  store i32 5, i32* %arrayidx8, align 4
  %A9 = bitcast %union.SV* %S1 to [4 x i32]*
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %A9, i32 0, i64 2
  store i32 5, i32* %arrayidx10, align 4
  %A11 = bitcast %union.SV* %S2 to [4 x i32]*
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %A11, i32 0, i64 3
  store i32 -8, i32* %arrayidx12, align 4
  %A13 = bitcast %union.SV* %S1 to [4 x i32]*
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %A13, i32 0, i64 3
  store i32 -8, i32* %arrayidx14, align 4
  %A15 = bitcast %union.UV* %U2 to [4 x i32]*
  %arrayidx16 = getelementptr inbounds [4 x i32], [4 x i32]* %A15, i32 0, i64 0
  store i32 2, i32* %arrayidx16, align 4
  %A17 = bitcast %union.UV* %U1 to [4 x i32]*
  %arrayidx18 = getelementptr inbounds [4 x i32], [4 x i32]* %A17, i32 0, i64 0
  store i32 2, i32* %arrayidx18, align 4
  %A19 = bitcast %union.UV* %U2 to [4 x i32]*
  %arrayidx20 = getelementptr inbounds [4 x i32], [4 x i32]* %A19, i32 0, i64 1
  store i32 3, i32* %arrayidx20, align 4
  %A21 = bitcast %union.UV* %U1 to [4 x i32]*
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %A21, i32 0, i64 1
  store i32 3, i32* %arrayidx22, align 4
  %A23 = bitcast %union.UV* %U2 to [4 x i32]*
  %arrayidx24 = getelementptr inbounds [4 x i32], [4 x i32]* %A23, i32 0, i64 2
  store i32 5, i32* %arrayidx24, align 4
  %A25 = bitcast %union.UV* %U1 to [4 x i32]*
  %arrayidx26 = getelementptr inbounds [4 x i32], [4 x i32]* %A25, i32 0, i64 2
  store i32 5, i32* %arrayidx26, align 4
  %A27 = bitcast %union.UV* %U2 to [4 x i32]*
  %arrayidx28 = getelementptr inbounds [4 x i32], [4 x i32]* %A27, i32 0, i64 3
  store i32 8, i32* %arrayidx28, align 4
  %A29 = bitcast %union.UV* %U1 to [4 x i32]*
  %arrayidx30 = getelementptr inbounds [4 x i32], [4 x i32]* %A29, i32 0, i64 3
  store i32 8, i32* %arrayidx30, align 4
  %V = bitcast %union.UV* %U1 to <4 x i32>*
  %V31 = bitcast %union.UV* %U2 to <4 x i32>*
  %V32 = bitcast %union.UV* %U3 to <4 x i32>*
  call void @testuvec(<4 x i32>* %V, <4 x i32>* %V31, <4 x i32>* %V32)
  %V33 = bitcast %union.SV* %S1 to <4 x i32>*
  %V34 = bitcast %union.SV* %S2 to <4 x i32>*
  %V35 = bitcast %union.SV* %S3 to <4 x i32>*
  call void @testsvec(<4 x i32>* %V33, <4 x i32>* %V34, <4 x i32>* %V35)
  %A36 = bitcast %union.UV* %U3 to [4 x i32]*
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %A36, i32 0, i64 0
  %0 = load i32, i32* %arrayidx37, align 4
  %A38 = bitcast %union.UV* %U3 to [4 x i32]*
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %A38, i32 0, i64 1
  %1 = load i32, i32* %arrayidx39, align 4
  %A40 = bitcast %union.UV* %U3 to [4 x i32]*
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %A40, i32 0, i64 2
  %2 = load i32, i32* %arrayidx41, align 4
  %A42 = bitcast %union.UV* %U3 to [4 x i32]*
  %arrayidx43 = getelementptr inbounds [4 x i32], [4 x i32]* %A42, i32 0, i64 3
  %3 = load i32, i32* %arrayidx43, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1, i32 %2, i32 %3)
  %A44 = bitcast %union.SV* %S3 to [4 x i32]*
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %A44, i32 0, i64 0
  %4 = load i32, i32* %arrayidx45, align 4
  %A46 = bitcast %union.SV* %S3 to [4 x i32]*
  %arrayidx47 = getelementptr inbounds [4 x i32], [4 x i32]* %A46, i32 0, i64 1
  %5 = load i32, i32* %arrayidx47, align 4
  %A48 = bitcast %union.SV* %S3 to [4 x i32]*
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %A48, i32 0, i64 2
  %6 = load i32, i32* %arrayidx49, align 4
  %A50 = bitcast %union.SV* %S3 to [4 x i32]*
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %A50, i32 0, i64 3
  %7 = load i32, i32* %arrayidx51, align 4
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 %4, i32 %5, i32 %6, i32 %7)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
