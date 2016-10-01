; ModuleID = './SingleSource.Regression.C/32.globalrefs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32, %struct.anon, i32, %struct.test* }
%struct.anon = type { i32, i32 }

@TestArray = common global [10 x %struct.test] zeroinitializer, align 16
@TestArrayPtr = global %struct.test* bitcast (i8* getelementptr (i8, i8* bitcast ([10 x %struct.test]* @TestArray to i8*), i64 72) to %struct.test*), align 8
@Test1 = common global %struct.test zeroinitializer, align 8
@Aptr = global i64* bitcast (%struct.test* @Test1 to i64*), align 8
@Yptr = global i32* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.test* @Test1 to i8*), i64 8) to i32*), align 8
@NextPtr = global %struct.test** bitcast (i8* getelementptr (i8, i8* bitcast (%struct.test* @Test1 to i8*), i64 16) to %struct.test**), align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"&TestArray[3] - TestArray = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Xptr - Aptr          = 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"NextPtr - Xptr       = 0x%lx\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @printdiff(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = load i8*, i8** %p2.addr, align 8
  %3 = ptrtoint i8* %2 to i64
  %sub = sub i64 %1, %3
  %conv = trunc i64 %sub to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %conv)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %diff1 = alloca i64, align 8
  %diff2 = alloca i64, align 8
  %diff3 = alloca i64, align 8
  %diff4 = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @printdiff(i8* bitcast (i32* getelementptr inbounds (%struct.test, %struct.test* @Test1, i32 0, i32 1, i32 1) to i8*), i8* bitcast (%struct.test* @Test1 to i8*))
  call void @printdiff(i8* bitcast (%struct.test** getelementptr inbounds (%struct.test, %struct.test* @Test1, i32 0, i32 3) to i8*), i8* bitcast (i32* getelementptr inbounds (%struct.test, %struct.test* @Test1, i32 0, i32 1, i32 1) to i8*))
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store i64 sub (i64 ptrtoint (%struct.test* getelementptr inbounds ([10 x %struct.test], [10 x %struct.test]* @TestArray, i32 0, i64 3) to i64), i64 ptrtoint ([10 x %struct.test]* @TestArray to i64)), i64* %diff1, align 8
  store i64 sub (i64 ptrtoint (i32* getelementptr inbounds (%struct.test, %struct.test* @Test1, i32 0, i32 1, i32 1) to i64), i64 ptrtoint (%struct.test* @Test1 to i64)), i64* %diff3, align 8
  store i64 sub (i64 ptrtoint (%struct.test** getelementptr inbounds (%struct.test, %struct.test* @Test1, i32 0, i32 3) to i64), i64 ptrtoint (i32* getelementptr inbounds (%struct.test, %struct.test* @Test1, i32 0, i32 1, i32 1) to i64)), i64* %diff4, align 8
  %0 = load i64, i64* %diff1, align 8
  %1 = load i64, i64* %diff1, align 8
  %div = udiv i64 %1, 24
  %mul = mul i64 %div, 24
  %cmp = icmp ne i64 %0, %mul
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %diff1, align 8
  %div1 = udiv i64 %2, 24
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i64 %div1)
  %3 = load i64, i64* %diff3, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i64 %3)
  %4 = load i64, i64* %diff4, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i64 %4)
  %5 = load %struct.test*, %struct.test** @TestArrayPtr, align 8
  %6 = ptrtoint %struct.test* %5 to i64
  %sub = sub i64 %6, ptrtoint ([10 x %struct.test]* @TestArray to i64)
  store i64 %sub, i64* %diff1, align 8
  %7 = load i32*, i32** @Yptr, align 8
  %8 = ptrtoint i32* %7 to i64
  %9 = load i64*, i64** @Aptr, align 8
  %10 = ptrtoint i64* %9 to i64
  %sub5 = sub i64 %8, %10
  store i64 %sub5, i64* %diff3, align 8
  %11 = load %struct.test**, %struct.test*** @NextPtr, align 8
  %12 = ptrtoint %struct.test** %11 to i64
  %13 = load i32*, i32** @Yptr, align 8
  %14 = ptrtoint i32* %13 to i64
  %sub6 = sub i64 %12, %14
  store i64 %sub6, i64* %diff4, align 8
  %15 = load i64, i64* %diff1, align 8
  %16 = load i64, i64* %diff1, align 8
  %div7 = udiv i64 %16, 24
  %mul8 = mul i64 %div7, 24
  %cmp9 = icmp ne i64 %15, %mul8
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %17 = load i64, i64* %diff1, align 8
  %div12 = udiv i64 %17, 24
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i32 0, i32 0), i64 %div12)
  %18 = load i64, i64* %diff3, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i64 %18)
  %19 = load i64, i64* %diff4, align 8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0), i64 %19)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
