; ModuleID = './SingleSource.Regression.C/33.2003-05-21-UnionBitfields.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @target_isinf(double %x) #0 {
entry:
  %x.addr = alloca double, align 8
  %u = alloca %union.anon, align 8
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %d = bitcast %union.anon* %u to double*
  store double %0, double* %d, align 8
  %big_endian = bitcast %union.anon* %u to %struct.anon*
  %exponent = getelementptr inbounds %struct.anon, %struct.anon* %big_endian, i32 0, i32 1
  %bf.load = load i32, i32* %exponent, align 4
  %bf.lshr = lshr i32 %bf.load, 20
  %bf.clear = and i32 %bf.lshr, 2047
  %cmp = icmp eq i32 %bf.clear, 2047
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %big_endian1 = bitcast %union.anon* %u to %struct.anon*
  %mantissa1 = getelementptr inbounds %struct.anon, %struct.anon* %big_endian1, i32 0, i32 1
  %bf.load2 = load i32, i32* %mantissa1, align 4
  %bf.clear3 = and i32 %bf.load2, 1048575
  %cmp4 = icmp eq i32 %bf.clear3, 0
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %big_endian5 = bitcast %union.anon* %u to %struct.anon*
  %mantissa2 = getelementptr inbounds %struct.anon, %struct.anon* %big_endian5, i32 0, i32 0
  %1 = load i32, i32* %mantissa2, align 4
  %cmp6 = icmp eq i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %2 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @target_isinf(double 1.234420e+03)
  %call1 = call i32 @target_isinf(double 0x7FF0000000000000)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %call, i32 %call1)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
