; ModuleID = './MultiSource.Benchmarks.Prolangs-C/137.unix-smail.map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@map.userbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.userz = internal global i8* null, align 8
@map.hostbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.hostz = internal global i8* null, align 8
@queuecost = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @map(i32 %argc, i8** %argv, i8** %hostv, i8** %userv, i32* %formv, i32* %costv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %hostv.addr = alloca i8**, align 8
  %userv.addr = alloca i8**, align 8
  %formv.addr = alloca i32*, align 8
  %costv.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %cost = alloca i32, align 4
  %c = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %hostv, i8*** %hostv.addr, align 8
  store i8** %userv, i8*** %userv.addr, align 8
  store i32* %formv, i32** %formv.addr, align 8
  store i32* %costv, i32** %costv.addr, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.userbuf, i32 0, i32 0), i8** @map.userz, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.hostbuf, i32 0, i32 0), i8** @map.hostz, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* @queuecost, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, i32* %cost, align 4
  %3 = load i8*, i8** @map.userz, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %userv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  store i8* %3, i8** %arrayidx, align 8
  %6 = load i8*, i8** @map.hostz, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load i8**, i8*** %hostv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %8, i64 %idxprom1
  store i8* %6, i8** %arrayidx2, align 8
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp3 = icmp eq i32 %conv, 40
  br i1 %cmp3, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %12 = load i8**, i8*** %argv.addr, align 8
  %13 = load i8*, i8** %12, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %12, align 8
  %14 = load i8**, i8*** %argv.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %call = call i8* @strchr(i8* %15, i32 41) #3
  store i8* %call, i8** %c, align 8
  %16 = load i8*, i8** %c, align 8
  %tobool = icmp ne i8* %16, null
  br i1 %tobool, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  %17 = load i8*, i8** %c, align 8
  store i8 0, i8* %17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  %18 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %incdec.ptr7, i8*** %argv.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** @map.hostz, align 8
  %21 = load i8*, i8** @map.userz, align 8
  %call8 = call i32 (i8*, i8*, i8*, i32*, ...) bitcast (i32 (...)* @resolve to i32 (i8*, i8*, i8*, i32*, ...)*)(i8* %19, i8* %20, i8* %21, i32* %cost)
  %22 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %23 = load i32*, i32** %formv.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 %idxprom9
  store i32 %call8, i32* %arrayidx10, align 4
  %24 = load i32, i32* %cost, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %25 to i64
  %26 = load i32*, i32** %costv.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %26, i64 %idxprom11
  store i32 %24, i32* %arrayidx12, align 4
  %27 = load i8*, i8** @map.userz, align 8
  %call13 = call i64 @strlen(i8* %27) #3
  %add14 = add i64 %call13, 1
  %28 = load i8*, i8** @map.userz, align 8
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %add14
  store i8* %add.ptr, i8** @map.userz, align 8
  %29 = load i8*, i8** @map.hostz, align 8
  %call15 = call i64 @strlen(i8* %29) #3
  %add16 = add i64 %call15, 1
  %30 = load i8*, i8** @map.hostz, align 8
  %add.ptr17 = getelementptr inbounds i8, i8* %30, i64 %add16
  store i8* %add.ptr17, i8** @map.hostz, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

declare i32 @resolve(...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
