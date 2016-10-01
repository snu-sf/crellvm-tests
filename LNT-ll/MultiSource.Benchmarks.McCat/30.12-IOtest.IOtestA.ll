; ModuleID = './MultiSource.Benchmarks.McCat/30.12-IOtest.IOtestA.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_result = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [33 x i8] c"A %d min %d max %d add %d mult \0A\00", align 1

; Function Attrs: nounwind uwtable
define void @initA(%struct.global_result* %res) #0 {
entry:
  %res.addr = alloca %struct.global_result*, align 8
  store %struct.global_result* %res, %struct.global_result** %res.addr, align 8
  call void @setac(i64 0)
  %0 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %min = getelementptr inbounds %struct.global_result, %struct.global_result* %0, i32 0, i32 0
  store i8 -1, i8* %min, align 1
  %1 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %max = getelementptr inbounds %struct.global_result, %struct.global_result* %1, i32 0, i32 1
  store i8 0, i8* %max, align 1
  %2 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %add = getelementptr inbounds %struct.global_result, %struct.global_result* %2, i32 0, i32 2
  store i8 0, i8* %add, align 1
  %3 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %mult = getelementptr inbounds %struct.global_result, %struct.global_result* %3, i32 0, i32 3
  store i8 1, i8* %mult, align 1
  ret void
}

declare void @setac(i64) #1

; Function Attrs: nounwind uwtable
define void @stepA(%struct.global_result* %res) #0 {
entry:
  %res.addr = alloca %struct.global_result*, align 8
  %t = alloca i8, align 1
  %i = alloca i64, align 8
  store %struct.global_result* %res, %struct.global_result** %res.addr, align 8
  %call = call i64 @getac()
  %call1 = call signext i8 @array(i64 %call)
  store i8 %call1, i8* %t, align 1
  %0 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %min = getelementptr inbounds %struct.global_result, %struct.global_result* %0, i32 0, i32 0
  %1 = load i8, i8* %min, align 1
  %2 = load i8, i8* %t, align 1
  %call2 = call signext i8 @min(i8 signext %1, i8 signext %2)
  %3 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %min3 = getelementptr inbounds %struct.global_result, %struct.global_result* %3, i32 0, i32 0
  store i8 %call2, i8* %min3, align 1
  %4 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %max = getelementptr inbounds %struct.global_result, %struct.global_result* %4, i32 0, i32 1
  %5 = load i8, i8* %max, align 1
  %6 = load i8, i8* %t, align 1
  %call4 = call signext i8 @max(i8 signext %5, i8 signext %6)
  %7 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %max5 = getelementptr inbounds %struct.global_result, %struct.global_result* %7, i32 0, i32 1
  store i8 %call4, i8* %max5, align 1
  %8 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %add = getelementptr inbounds %struct.global_result, %struct.global_result* %8, i32 0, i32 2
  %9 = load i8, i8* %add, align 1
  %10 = load i8, i8* %t, align 1
  %call6 = call signext i8 @add(i8 signext %9, i8 signext %10)
  %11 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %add7 = getelementptr inbounds %struct.global_result, %struct.global_result* %11, i32 0, i32 2
  store i8 %call6, i8* %add7, align 1
  %12 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %mult = getelementptr inbounds %struct.global_result, %struct.global_result* %12, i32 0, i32 3
  %13 = load i8, i8* %mult, align 1
  %14 = load i8, i8* %t, align 1
  %call8 = call signext i8 @mult(i8 signext %13, i8 signext %14)
  %15 = load %struct.global_result*, %struct.global_result** %res.addr, align 8
  %mult9 = getelementptr inbounds %struct.global_result, %struct.global_result* %15, i32 0, i32 3
  store i8 %call8, i8* %mult9, align 1
  %call10 = call i64 @getac()
  store i64 %call10, i64* %i, align 8
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  %17 = load i64, i64* %i, align 8
  call void @setac(i64 %17)
  ret void
}

declare signext i8 @array(i64) #1

declare i64 @getac() #1

declare signext i8 @min(i8 signext, i8 signext) #1

declare signext i8 @max(i8 signext, i8 signext) #1

declare signext i8 @add(i8 signext, i8 signext) #1

declare signext i8 @mult(i8 signext, i8 signext) #1

; Function Attrs: nounwind uwtable
define void @testA() #0 {
entry:
  %res = alloca %struct.global_result, align 1
  call void @initarray()
  %0 = bitcast %struct.global_result* %res to i8*
  call void @loop(void (i8*)* bitcast (void (%struct.global_result*)* @initA to void (i8*)*), void (i8*)* bitcast (void (%struct.global_result*)* @stepA to void (i8*)*), i8* %0)
  %min = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 0
  %1 = load i8, i8* %min, align 1
  %conv = sext i8 %1 to i32
  %max = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 1
  %2 = load i8, i8* %max, align 1
  %conv1 = sext i8 %2 to i32
  %add = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 2
  %3 = load i8, i8* %add, align 1
  %conv2 = sext i8 %3 to i32
  %mult = getelementptr inbounds %struct.global_result, %struct.global_result* %res, i32 0, i32 3
  %4 = load i8, i8* %mult, align 1
  %conv3 = sext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i32 0, i32 0), i32 %conv, i32 %conv1, i32 %conv2, i32 %conv3)
  ret void
}

declare void @initarray() #1

declare void @loop(void (i8*)*, void (i8*)*, i8*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
