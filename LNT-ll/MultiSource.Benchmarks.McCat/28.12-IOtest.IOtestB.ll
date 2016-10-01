; ModuleID = './MultiSource.Benchmarks.McCat/28.12-IOtest.IOtestB.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_result = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [33 x i8] c"B %d min %d max %d add %d mult \0A\00", align 1

; Function Attrs: nounwind uwtable
define void @initminB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  store i8* %res, i8** %res.addr, align 8
  call void @setac(i64 0)
  %0 = load i8*, i8** %res.addr, align 8
  store i8 -1, i8* %0, align 1
  ret void
}

declare void @setac(i64) #1

; Function Attrs: nounwind uwtable
define void @initmaxB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  store i8* %res, i8** %res.addr, align 8
  call void @setac(i64 0)
  %0 = load i8*, i8** %res.addr, align 8
  store i8 0, i8* %0, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @initaddB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  store i8* %res, i8** %res.addr, align 8
  call void @setac(i64 0)
  %0 = load i8*, i8** %res.addr, align 8
  store i8 0, i8* %0, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @initmultB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  store i8* %res, i8** %res.addr, align 8
  call void @setac(i64 0)
  %0 = load i8*, i8** %res.addr, align 8
  store i8 1, i8* %0, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @stepminB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  %t = alloca i8, align 1
  %i = alloca i64, align 8
  store i8* %res, i8** %res.addr, align 8
  %call = call i64 @getac()
  %call1 = call signext i8 @array(i64 %call)
  store i8 %call1, i8* %t, align 1
  %0 = load i8*, i8** %res.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8, i8* %t, align 1
  %call2 = call signext i8 @min(i8 signext %1, i8 signext %2)
  %3 = load i8*, i8** %res.addr, align 8
  store i8 %call2, i8* %3, align 1
  %call3 = call i64 @getac()
  %add = add i64 %call3, 1
  store i64 %add, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  call void @setac(i64 %4)
  ret void
}

declare signext i8 @array(i64) #1

declare i64 @getac() #1

declare signext i8 @min(i8 signext, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @stepmaxB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  %t = alloca i8, align 1
  %i = alloca i64, align 8
  store i8* %res, i8** %res.addr, align 8
  %call = call i64 @getac()
  %call1 = call signext i8 @array(i64 %call)
  store i8 %call1, i8* %t, align 1
  %0 = load i8*, i8** %res.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8, i8* %t, align 1
  %call2 = call signext i8 @max(i8 signext %1, i8 signext %2)
  %3 = load i8*, i8** %res.addr, align 8
  store i8 %call2, i8* %3, align 1
  %call3 = call i64 @getac()
  %add = add i64 %call3, 1
  store i64 %add, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  call void @setac(i64 %4)
  ret void
}

declare signext i8 @max(i8 signext, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @stepaddB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  %t = alloca i8, align 1
  %i = alloca i64, align 8
  store i8* %res, i8** %res.addr, align 8
  %call = call i64 @getac()
  %call1 = call signext i8 @array(i64 %call)
  store i8 %call1, i8* %t, align 1
  %0 = load i8*, i8** %res.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8, i8* %t, align 1
  %call2 = call signext i8 @add(i8 signext %1, i8 signext %2)
  %3 = load i8*, i8** %res.addr, align 8
  store i8 %call2, i8* %3, align 1
  %call3 = call i64 @getac()
  %add = add i64 %call3, 1
  store i64 %add, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  call void @setac(i64 %4)
  ret void
}

declare signext i8 @add(i8 signext, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @stepmultB(i8* %res) #0 {
entry:
  %res.addr = alloca i8*, align 8
  %t = alloca i8, align 1
  %i = alloca i64, align 8
  store i8* %res, i8** %res.addr, align 8
  %call = call i64 @getac()
  %call1 = call signext i8 @array(i64 %call)
  store i8 %call1, i8* %t, align 1
  %0 = load i8*, i8** %res.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8, i8* %t, align 1
  %call2 = call signext i8 @mult(i8 signext %1, i8 signext %2)
  %3 = load i8*, i8** %res.addr, align 8
  store i8 %call2, i8* %3, align 1
  %call3 = call i64 @getac()
  %add = add i64 %call3, 1
  store i64 %add, i64* %i, align 8
  %4 = load i64, i64* %i, align 8
  call void @setac(i64 %4)
  ret void
}

declare signext i8 @mult(i8 signext, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @testB() #0 {
entry:
  %res = alloca %struct.global_result, align 1
  call void @initarray()
  %min = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 0
  call void @loop(void (i8*)* @initminB, void (i8*)* @stepminB, i8* %min)
  %max = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 1
  call void @loop(void (i8*)* @initmaxB, void (i8*)* @stepmaxB, i8* %max)
  %add = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 2
  call void @loop(void (i8*)* @initaddB, void (i8*)* @stepaddB, i8* %add)
  %mult = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 3
  call void @loop(void (i8*)* @initmultB, void (i8*)* @stepmultB, i8* %mult)
  %min1 = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 0
  %0 = load i8, i8* %min1, align 1
  %conv = sext i8 %0 to i32
  %max2 = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 1
  %1 = load i8, i8* %max2, align 1
  %conv3 = sext i8 %1 to i32
  %add4 = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 2
  %2 = load i8, i8* %add4, align 1
  %conv5 = sext i8 %2 to i32
  %mult6 = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 3
  %3 = load i8, i8* %mult6, align 1
  %conv7 = sext i8 %3 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %conv, i32 %conv3, i32 %conv5, i32 %conv7)
  ret void
}

declare void @initarray() #1

declare void @loop(void (i8*)*, void (i8*)*, i8*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
