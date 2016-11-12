; ModuleID = './lib/filtdir.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@.str = private unnamed_addr constant [28 x i8] c"cannot close directory `%s'\00", align 1

; Function Attrs: nounwind uwtable
define void @filterdir(i8* %dir, i1 (i8*, i8*, i8*)* %filter, i8* %filtarg, void (i8*, i8*, i8*)* %fun, i8* %arg) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %filter.addr = alloca i1 (i8*, i8*, i8*)*, align 8
  %filtarg.addr = alloca i8*, align 8
  %fun.addr = alloca void (i8*, i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %dirp = alloca %struct.__dirstream*, align 8
  %dp = alloca %struct.dirent*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i1 (i8*, i8*, i8*)* %filter, i1 (i8*, i8*, i8*)** %filter.addr, align 8
  store i8* %filtarg, i8** %filtarg.addr, align 8
  store void (i8*, i8*, i8*)* %fun, void (i8*, i8*, i8*)** %fun.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call %struct.__dirstream* @opendir(i8* %0)
  store %struct.__dirstream* %call, %struct.__dirstream** %dirp, align 8
  %1 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %cmp = icmp eq %struct.__dirstream* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.35

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.29, %if.end
  %2 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %call1 = call %struct.dirent* @readdir(%struct.__dirstream* %2)
  store %struct.dirent* %call1, %struct.dirent** %dp, align 8
  %cmp2 = icmp ne %struct.dirent* %call1, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %3, i32 0, i32 4
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp3 = icmp ne i32 %conv, 46
  br i1 %cmp3, label %land.lhs.true.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %5 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name5 = getelementptr inbounds %struct.dirent, %struct.dirent* %5, i32 0, i32 4
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name5, i32 0, i64 1
  %6 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %6 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name10 = getelementptr inbounds %struct.dirent, %struct.dirent* %7, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name10, i32 0, i64 1
  %8 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %8 to i32
  %cmp13 = icmp ne i32 %conv12, 46
  br i1 %cmp13, label %land.lhs.true.21, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true
  %9 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name16 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name16, i32 0, i64 2
  %10 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %10 to i32
  %cmp19 = icmp ne i32 %conv18, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.29

land.lhs.true.21:                                 ; preds = %lor.lhs.false.15, %land.lhs.true, %while.body
  %11 = load i1 (i8*, i8*, i8*)*, i1 (i8*, i8*, i8*)** %filter.addr, align 8
  %tobool = icmp ne i1 (i8*, i8*, i8*)* %11, null
  br i1 %tobool, label %lor.lhs.false.22, label %if.then.26

lor.lhs.false.22:                                 ; preds = %land.lhs.true.21
  %12 = load i1 (i8*, i8*, i8*)*, i1 (i8*, i8*, i8*)** %filter.addr, align 8
  %13 = load i8*, i8** %dir.addr, align 8
  %14 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name23 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 4
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name23, i32 0, i32 0
  %15 = load i8*, i8** %filtarg.addr, align 8
  %call24 = call zeroext i1 %12(i8* %13, i8* %arraydecay, i8* %15)
  br i1 %call24, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %lor.lhs.false.22, %land.lhs.true.21
  %16 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %fun.addr, align 8
  %17 = load i8*, i8** %dir.addr, align 8
  %18 = load %struct.dirent*, %struct.dirent** %dp, align 8
  %d_name27 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 4
  %arraydecay28 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name27, i32 0, i32 0
  %19 = load i8*, i8** %arg.addr, align 8
  call void %16(i8* %17, i8* %arraydecay28, i8* %19)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %lor.lhs.false.22, %lor.lhs.false.15, %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %20 = load %struct.__dirstream*, %struct.__dirstream** %dirp, align 8
  %call30 = call i32 @closedir(%struct.__dirstream* %20)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %while.end
  %call33 = call i32* @__errno_location() #4
  %21 = load i32, i32* %call33, align 4
  %call34 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0)) #5
  %22 = load i8*, i8** %dir.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %21, i8* %call34, i8* %22)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then, %if.then.32, %while.end
  ret void
}

declare %struct.__dirstream* @opendir(i8*) #1

declare %struct.dirent* @readdir(%struct.__dirstream*) #1

declare i32 @closedir(%struct.__dirstream*) #1

declare void @error(i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
