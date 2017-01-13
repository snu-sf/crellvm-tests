; ModuleID = './SingleSource.UnitTests/29.ms_struct_pack_layout.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.one = type { i32, i8, i16, i8 }
%struct.two = type { i32, i8, i32, i8 }
%struct.three = type { i16, i16, i8 }
%struct.four = type { i16, [2 x i8], i8, [3 x i8] }
%struct.five = type { i8, i8, i8 }
%struct.six = type { i8, [3 x i8], i8, i8, [2 x i8] }
%struct.seven = type { i8, i8, i8 }
%struct.eight = type { i16, i8 }
%union.nine = type { i64 }
%struct.ten = type { i64, i8 }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %filler = alloca [16 x i8], align 16
  %test_one = alloca %struct.one, align 4
  %test_two = alloca %struct.two, align 4
  %test_three = alloca %struct.three, align 2
  %test_four = alloca %struct.four, align 4
  %test_five = alloca %struct.five, align 1
  %test_six = alloca %struct.six, align 4
  %test_seven = alloca %struct.seven, align 1
  %test_eight = alloca %struct.eight, align 2
  %test_nine = alloca %union.nine, align 8
  %test_ten = alloca %struct.ten, align 8
  %exp_sizeof_one = alloca i64, align 8
  %exp_sizeof_two = alloca i64, align 8
  %exp_sizeof_three = alloca i64, align 8
  %exp_sizeof_four = alloca i64, align 8
  %exp_sizeof_five = alloca i64, align 8
  %exp_sizeof_six = alloca i64, align 8
  %exp_sizeof_seven = alloca i64, align 8
  %exp_sizeof_eight = alloca i64, align 8
  %exp_sizeof_nine = alloca i64, align 8
  %exp_sizeof_ten = alloca i64, align 8
  %exp_one_c = alloca i8, align 1
  %exp_two_c = alloca i8, align 1
  %exp_three_c = alloca i8, align 1
  %exp_four_c = alloca i8, align 1
  %exp_five_c = alloca i8, align 1
  %exp_six_c = alloca i8, align 1
  %exp_seven_c = alloca i8, align 1
  %exp_eight_c = alloca i8, align 1
  %exp_nine_c = alloca i8, align 1
  %exp_ten_c = alloca i8, align 1
  %i = alloca i8, align 1
  store i32 0, i32* %retval
  store i64 12, i64* %exp_sizeof_one, align 8
  store i64 16, i64* %exp_sizeof_two, align 8
  store i64 6, i64* %exp_sizeof_three, align 8
  store i64 8, i64* %exp_sizeof_four, align 8
  store i64 3, i64* %exp_sizeof_five, align 8
  store i64 8, i64* %exp_sizeof_six, align 8
  store i64 3, i64* %exp_sizeof_seven, align 8
  store i64 4, i64* %exp_sizeof_eight, align 8
  store i64 8, i64* %exp_sizeof_nine, align 8
  store i64 16, i64* %exp_sizeof_ten, align 8
  store i8 8, i8* %exp_one_c, align 1
  store i8 12, i8* %exp_two_c, align 1
  store i8 4, i8* %exp_three_c, align 1
  store i8 4, i8* %exp_four_c, align 1
  store i8 2, i8* %exp_five_c, align 1
  store i8 5, i8* %exp_six_c, align 1
  store i8 2, i8* %exp_seven_c, align 1
  store i8 2, i8* %exp_eight_c, align 1
  store i8 0, i8* %exp_nine_c, align 1
  store i8 8, i8* %exp_ten_c, align 1
  store i8 0, i8* %i, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %i, align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %i, align 1
  %2 = load i8, i8* %i, align 1
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %filler, i32 0, i64 %idxprom
  store i8 %1, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i8, i8* %i, align 1
  %inc = add i8 %3, 1
  store i8 %inc, i8* %i, align 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = bitcast %struct.one* %test_one to i8*
  %5 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 12, i32 4, i1 false)
  %c = getelementptr inbounds %struct.one, %struct.one* %test_one, i32 0, i32 3
  %6 = load i8, i8* %c, align 1
  %conv2 = sext i8 %6 to i32
  %7 = load i8, i8* %exp_one_c, align 1
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp ne i32 %conv2, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.end
  %8 = bitcast %struct.two* %test_two to i8*
  %9 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 4, i1 false)
  %c6 = getelementptr inbounds %struct.two, %struct.two* %test_two, i32 0, i32 3
  %10 = load i8, i8* %c6, align 1
  %conv7 = sext i8 %10 to i32
  %11 = load i8, i8* %exp_two_c, align 1
  %conv8 = zext i8 %11 to i32
  %cmp9 = icmp ne i32 %conv7, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  call void @abort() #3
  unreachable

if.end.12:                                        ; preds = %if.end
  %12 = bitcast %struct.three* %test_three to i8*
  %13 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 6, i32 2, i1 false)
  %c13 = getelementptr inbounds %struct.three, %struct.three* %test_three, i32 0, i32 2
  %bf.load = load i8, i8* %c13, align 2
  %bf.clear = and i8 %bf.load, 127
  %conv14 = zext i8 %bf.clear to i32
  %14 = load i8, i8* %exp_three_c, align 1
  %conv15 = zext i8 %14 to i32
  %cmp16 = icmp ne i32 %conv14, %conv15
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.12
  call void @abort() #3
  unreachable

if.end.19:                                        ; preds = %if.end.12
  %15 = bitcast %struct.four* %test_four to i8*
  %16 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 8, i32 4, i1 false)
  %c20 = getelementptr inbounds %struct.four, %struct.four* %test_four, i32 0, i32 2
  %bf.load21 = load i8, i8* %c20, align 4
  %bf.clear22 = and i8 %bf.load21, 127
  %conv23 = zext i8 %bf.clear22 to i32
  %17 = load i8, i8* %exp_four_c, align 1
  %conv24 = zext i8 %17 to i32
  %cmp25 = icmp ne i32 %conv23, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.19
  call void @abort() #3
  unreachable

if.end.28:                                        ; preds = %if.end.19
  %18 = bitcast %struct.five* %test_five to i8*
  %19 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 3, i32 1, i1 false)
  %c29 = getelementptr inbounds %struct.five, %struct.five* %test_five, i32 0, i32 2
  %20 = load i8, i8* %c29, align 1
  %conv30 = sext i8 %20 to i32
  %21 = load i8, i8* %exp_five_c, align 1
  %conv31 = sext i8 %21 to i32
  %cmp32 = icmp ne i32 %conv30, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.28
  call void @abort() #3
  unreachable

if.end.35:                                        ; preds = %if.end.28
  %22 = bitcast %struct.six* %test_six to i8*
  %23 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 8, i32 4, i1 false)
  %c36 = getelementptr inbounds %struct.six, %struct.six* %test_six, i32 0, i32 3
  %24 = load i8, i8* %c36, align 1
  %conv37 = sext i8 %24 to i32
  %25 = load i8, i8* %exp_six_c, align 1
  %conv38 = sext i8 %25 to i32
  %cmp39 = icmp ne i32 %conv37, %conv38
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.35
  call void @abort() #3
  unreachable

if.end.42:                                        ; preds = %if.end.35
  %26 = bitcast %struct.seven* %test_seven to i8*
  %27 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 3, i32 1, i1 false)
  %c43 = getelementptr inbounds %struct.seven, %struct.seven* %test_seven, i32 0, i32 2
  %28 = load i8, i8* %c43, align 1
  %conv44 = sext i8 %28 to i32
  %29 = load i8, i8* %exp_seven_c, align 1
  %conv45 = sext i8 %29 to i32
  %cmp46 = icmp ne i32 %conv44, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.42
  call void @abort() #3
  unreachable

if.end.49:                                        ; preds = %if.end.42
  %30 = bitcast %struct.eight* %test_eight to i8*
  %31 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 4, i32 2, i1 false)
  %c50 = getelementptr inbounds %struct.eight, %struct.eight* %test_eight, i32 0, i32 1
  %32 = load i8, i8* %c50, align 1
  %conv51 = sext i8 %32 to i32
  %33 = load i8, i8* %exp_eight_c, align 1
  %conv52 = sext i8 %33 to i32
  %cmp53 = icmp ne i32 %conv51, %conv52
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  call void @abort() #3
  unreachable

if.end.56:                                        ; preds = %if.end.49
  %34 = bitcast %union.nine* %test_nine to i8*
  %35 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 8, i32 8, i1 false)
  %c57 = bitcast %union.nine* %test_nine to i8*
  %36 = load i8, i8* %c57, align 1
  %conv58 = sext i8 %36 to i32
  %37 = load i8, i8* %exp_nine_c, align 1
  %conv59 = sext i8 %37 to i32
  %cmp60 = icmp ne i32 %conv58, %conv59
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.end.56
  call void @abort() #3
  unreachable

if.end.63:                                        ; preds = %if.end.56
  %38 = bitcast %struct.ten* %test_ten to i8*
  %39 = bitcast [16 x i8]* %filler to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 16, i32 8, i1 false)
  %c64 = getelementptr inbounds %struct.ten, %struct.ten* %test_ten, i32 0, i32 1
  %40 = load i8, i8* %c64, align 1
  %conv65 = sext i8 %40 to i32
  %41 = load i8, i8* %exp_ten_c, align 1
  %conv66 = sext i8 %41 to i32
  %cmp67 = icmp ne i32 %conv65, %conv66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.63
  call void @abort() #3
  unreachable

if.end.70:                                        ; preds = %if.end.63
  %42 = load i64, i64* %exp_sizeof_one, align 8
  %cmp71 = icmp ne i64 12, %42
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.70
  call void @abort() #3
  unreachable

if.end.74:                                        ; preds = %if.end.70
  %43 = load i64, i64* %exp_sizeof_two, align 8
  %cmp75 = icmp ne i64 16, %43
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.74
  call void @abort() #3
  unreachable

if.end.78:                                        ; preds = %if.end.74
  %44 = load i64, i64* %exp_sizeof_three, align 8
  %cmp79 = icmp ne i64 6, %44
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.78
  call void @abort() #3
  unreachable

if.end.82:                                        ; preds = %if.end.78
  %45 = load i64, i64* %exp_sizeof_four, align 8
  %cmp83 = icmp ne i64 8, %45
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  call void @abort() #3
  unreachable

if.end.86:                                        ; preds = %if.end.82
  %46 = load i64, i64* %exp_sizeof_five, align 8
  %cmp87 = icmp ne i64 3, %46
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  call void @abort() #3
  unreachable

if.end.90:                                        ; preds = %if.end.86
  %47 = load i64, i64* %exp_sizeof_six, align 8
  %cmp91 = icmp ne i64 8, %47
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.90
  call void @abort() #3
  unreachable

if.end.94:                                        ; preds = %if.end.90
  %48 = load i64, i64* %exp_sizeof_seven, align 8
  %cmp95 = icmp ne i64 3, %48
  br i1 %cmp95, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.94
  call void @abort() #3
  unreachable

if.end.98:                                        ; preds = %if.end.94
  %49 = load i64, i64* %exp_sizeof_eight, align 8
  %cmp99 = icmp ne i64 4, %49
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.98
  call void @abort() #3
  unreachable

if.end.102:                                       ; preds = %if.end.98
  %50 = load i64, i64* %exp_sizeof_nine, align 8
  %cmp103 = icmp ne i64 8, %50
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  call void @abort() #3
  unreachable

if.end.106:                                       ; preds = %if.end.102
  %51 = load i64, i64* %exp_sizeof_ten, align 8
  %cmp107 = icmp ne i64 16, %51
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %if.end.106
  call void @abort() #3
  unreachable

if.end.110:                                       ; preds = %if.end.106
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: noreturn
declare void @abort() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
