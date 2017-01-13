; ModuleID = './SingleSource.UnitTests/16.ms_struct-bitfield-init-1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8, i8, i8, i8 }
%struct.anon.1 = type { i8, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i8, i8 }
%struct.anon.3 = type { i8, i8, i8, i8 }
%struct.anon.4 = type { i8, [3 x i8], i8, [3 x i8] }
%struct.anon.5 = type { i8, i8, i8, i8 }
%struct.anon.6 = type { i8, i8 }
%struct.anon.7 = type { i8, [3 x i8] }
%struct.anon = type { i32, i32 }

@t1 = global { i8, i8, [2 x i8], i8, i8, [2 x i8] } { i8 1, i8 0, [2 x i8] undef, i8 2, i8 0, [2 x i8] undef }, align 4
@t2 = global %struct.anon.0 { i8 3, i8 undef, i8 4, i8 undef }, align 2
@t3 = global %struct.anon.1 { i8 5, i8 undef, i8 6, i8 undef }, align 2
@t5 = global %struct.anon.2 { i8 7, i8 undef, i8 8, i8 undef }, align 2
@t6 = global %struct.anon.3 { i8 5, i8 undef, i8 10, i8 undef }, align 2
@t7 = global %struct.anon.4 { i8 5, [3 x i8] undef, i8 10, [3 x i8] undef }, align 4
@t8 = global %struct.anon.5 { i8 5, i8 undef, i8 10, i8 undef }, align 2
@t10 = global %struct.anon.6 { i8 5, i8 10 }, align 1
@t4 = common global %struct.anon.7 zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %bf.load = load i32, i32* bitcast ({ i8, i8, [2 x i8], i8, i8, [2 x i8] }* @t1 to i32*), align 4
  %bf.clear = and i32 %bf.load, 4095
  %cmp = icmp ne i32 %bf.clear, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %bf.load1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* bitcast ({ i8, i8, [2 x i8], i8, i8, [2 x i8] }* @t1 to %struct.anon*), i32 0, i32 1), align 4
  %bf.clear2 = and i32 %bf.load1, 4095
  %cmp3 = icmp ne i32 %bf.clear2, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %bf.load4 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i32 0, i32 0), align 2
  %bf.shl = shl i8 %bf.load4, 4
  %bf.ashr = ashr i8 %bf.shl, 4
  %conv = sext i8 %bf.ashr to i32
  %cmp5 = icmp ne i32 %conv, 3
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %0 = load i8, i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @t2, i32 0, i32 2), align 1
  %conv8 = sext i8 %0 to i32
  %cmp9 = icmp ne i32 %conv8, 4
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.end
  call void @abort() #2
  unreachable

if.end.12:                                        ; preds = %lor.lhs.false.7
  %bf.load13 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i32 0, i32 0), align 2
  %bf.shl14 = shl i8 %bf.load13, 4
  %bf.ashr15 = ashr i8 %bf.shl14, 4
  %conv16 = sext i8 %bf.ashr15 to i32
  %cmp17 = icmp ne i32 %conv16, 5
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.end.12
  %1 = load i8, i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @t3, i32 0, i32 2), align 1
  %conv20 = sext i8 %1 to i32
  %cmp21 = icmp ne i32 %conv20, 6
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false.19, %if.end.12
  call void @abort() #2
  unreachable

if.end.24:                                        ; preds = %lor.lhs.false.19
  %bf.load25 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t5, i32 0, i32 0), align 2
  %bf.shl26 = shl i8 %bf.load25, 4
  %bf.ashr27 = ashr i8 %bf.shl26, 4
  %conv28 = sext i8 %bf.ashr27 to i32
  %cmp29 = icmp ne i32 %conv28, 7
  br i1 %cmp29, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.24
  %bf.load32 = load i8, i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @t5, i32 0, i32 2), align 2
  %conv33 = sext i8 %bf.load32 to i32
  %cmp34 = icmp ne i32 %conv33, 8
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.31, %if.end.24
  call void @abort() #2
  unreachable

if.end.37:                                        ; preds = %lor.lhs.false.31
  %bf.load38 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @t6, i32 0, i32 0), align 2
  %bf.shl39 = shl i8 %bf.load38, 4
  %bf.ashr40 = ashr i8 %bf.shl39, 4
  %conv41 = sext i8 %bf.ashr40 to i32
  %cmp42 = icmp ne i32 %conv41, 5
  br i1 %cmp42, label %if.then.48, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.37
  %2 = load i8, i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @t6, i32 0, i32 2), align 1
  %conv45 = sext i8 %2 to i32
  %cmp46 = icmp ne i32 %conv45, 10
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %lor.lhs.false.44, %if.end.37
  call void @abort() #2
  unreachable

if.end.49:                                        ; preds = %lor.lhs.false.44
  %bf.load50 = load i8, i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @t7, i32 0, i32 0), align 4
  %bf.shl51 = shl i8 %bf.load50, 4
  %bf.ashr52 = ashr i8 %bf.shl51, 4
  %conv53 = sext i8 %bf.ashr52 to i32
  %cmp54 = icmp ne i32 %conv53, 5
  br i1 %cmp54, label %if.then.60, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.49
  %3 = load i8, i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @t7, i32 0, i32 2), align 1
  %conv57 = sext i8 %3 to i32
  %cmp58 = icmp ne i32 %conv57, 10
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %lor.lhs.false.56, %if.end.49
  call void @abort() #2
  unreachable

if.end.61:                                        ; preds = %lor.lhs.false.56
  %bf.load62 = load i8, i8* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @t8, i32 0, i32 0), align 2
  %bf.shl63 = shl i8 %bf.load62, 4
  %bf.ashr64 = ashr i8 %bf.shl63, 4
  %conv65 = sext i8 %bf.ashr64 to i32
  %cmp66 = icmp ne i32 %conv65, 5
  br i1 %cmp66, label %if.then.75, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.end.61
  %bf.load69 = load i8, i8* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @t8, i32 0, i32 2), align 2
  %bf.shl70 = shl i8 %bf.load69, 1
  %bf.ashr71 = ashr i8 %bf.shl70, 1
  %conv72 = sext i8 %bf.ashr71 to i32
  %cmp73 = icmp ne i32 %conv72, 10
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %lor.lhs.false.68, %if.end.61
  call void @abort() #2
  unreachable

if.end.76:                                        ; preds = %lor.lhs.false.68
  %bf.load77 = load i8, i8* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @t10, i32 0, i32 0), align 1
  %bf.shl78 = shl i8 %bf.load77, 4
  %bf.ashr79 = ashr i8 %bf.shl78, 4
  %conv80 = sext i8 %bf.ashr79 to i32
  %cmp81 = icmp ne i32 %conv80, 5
  br i1 %cmp81, label %if.then.87, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %if.end.76
  %4 = load i8, i8* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @t10, i32 0, i32 1), align 1
  %conv84 = sext i8 %4 to i32
  %cmp85 = icmp ne i32 %conv84, 10
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %lor.lhs.false.83, %if.end.76
  call void @abort() #2
  unreachable

if.end.88:                                        ; preds = %lor.lhs.false.83
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
