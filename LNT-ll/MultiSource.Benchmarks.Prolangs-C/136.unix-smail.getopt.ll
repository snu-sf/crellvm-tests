; ModuleID = './MultiSource.Benchmarks.Prolangs-C/136.unix-smail.getopt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opterr = global i32 1, align 4
@optind = global i32 1, align 4
@getopt.sp = internal global i32 1, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@optopt = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c": illegal option -- \00", align 1
@optarg = common global i8* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c": option requires an argument -- \00", align 1

; Function Attrs: nounwind uwtable
define i32 @getopt(i32 %argc, i8** %argv, i8* %opts) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %opts.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %cp = alloca i8*, align 8
  %errbuf = alloca [2 x i8], align 1
  %errbuf82 = alloca [2 x i8], align 1
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* %opts, i8** %opts.addr, align 8
  %0 = load i32, i32* @getopt.sp, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.20

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @optind, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i32, i32* @optind, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv, 45
  br i1 %cmp3, label %if.then.12, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* @optind, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 %idxprom6
  %9 = load i8*, i8** %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false.5, %lor.lhs.false, %if.then
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.5
  %11 = load i32, i32* @optind, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %12, i64 %idxprom13
  %13 = load i8*, i8** %arrayidx14, align 8
  %call = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #3
  %conv15 = sext i32 %call to i64
  %14 = inttoptr i64 %conv15 to i8*
  %cmp16 = icmp eq i8* %14, null
  br i1 %cmp16, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else
  %15 = load i32, i32* @optind, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @optind, align 4
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %entry
  %16 = load i32, i32* @getopt.sp, align 4
  %idxprom21 = sext i32 %16 to i64
  %17 = load i32, i32* @optind, align 4
  %idxprom22 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %18, i64 %idxprom22
  %19 = load i8*, i8** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %19, i64 %idxprom21
  %20 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %20 to i32
  store i32 %conv25, i32* %c, align 4
  store i32 %conv25, i32* @optopt, align 4
  %21 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %21, 58
  br i1 %cmp26, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %if.end.20
  %22 = load i8*, i8** %opts.addr, align 8
  %23 = load i32, i32* %c, align 4
  %call29 = call i8* @strchr(i8* %22, i32 %23) #3
  store i8* %call29, i8** %cp, align 8
  %cmp30 = icmp eq i8* %call29, null
  br i1 %cmp30, label %if.then.32, label %if.end.56

if.then.32:                                       ; preds = %lor.lhs.false.28, %if.end.20
  %24 = load i32, i32* @opterr, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.then.32
  %25 = load i32, i32* %c, align 4
  %conv34 = trunc i32 %25 to i8
  %arrayidx35 = getelementptr inbounds [2 x i8], [2 x i8]* %errbuf, i32 0, i64 0
  store i8 %conv34, i8* %arrayidx35, align 1
  %arrayidx36 = getelementptr inbounds [2 x i8], [2 x i8]* %errbuf, i32 0, i64 1
  store i8 10, i8* %arrayidx36, align 1
  %26 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx37, align 8
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %28, i64 0
  %29 = load i8*, i8** %arrayidx38, align 8
  %call39 = call i64 @strlen(i8* %29) #3
  %conv40 = trunc i64 %call39 to i32
  %call41 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %27, i32 %conv40)
  %call42 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 20)
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %errbuf, i32 0, i32 0
  %call43 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %arraydecay, i32 2)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.33, %if.then.32
  %30 = load i32, i32* @getopt.sp, align 4
  %inc45 = add nsw i32 %30, 1
  store i32 %inc45, i32* @getopt.sp, align 4
  %idxprom46 = sext i32 %inc45 to i64
  %31 = load i32, i32* @optind, align 4
  %idxprom47 = sext i32 %31 to i64
  %32 = load i8**, i8*** %argv.addr, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %32, i64 %idxprom47
  %33 = load i8*, i8** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %33, i64 %idxprom46
  %34 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %34 to i32
  %cmp51 = icmp eq i32 %conv50, 0
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.44
  %35 = load i32, i32* @optind, align 4
  %inc54 = add nsw i32 %35, 1
  store i32 %inc54, i32* @optind, align 4
  store i32 1, i32* @getopt.sp, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.44
  store i32 63, i32* %retval
  br label %return

if.end.56:                                        ; preds = %lor.lhs.false.28
  %36 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %37 = load i8, i8* %incdec.ptr, align 1
  %conv57 = sext i8 %37 to i32
  %cmp58 = icmp eq i32 %conv57, 58
  br i1 %cmp58, label %if.then.60, label %if.else.101

if.then.60:                                       ; preds = %if.end.56
  %38 = load i32, i32* @getopt.sp, align 4
  %add = add nsw i32 %38, 1
  %idxprom61 = sext i32 %add to i64
  %39 = load i32, i32* @optind, align 4
  %idxprom62 = sext i32 %39 to i64
  %40 = load i8**, i8*** %argv.addr, align 8
  %arrayidx63 = getelementptr inbounds i8*, i8** %40, i64 %idxprom62
  %41 = load i8*, i8** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %41, i64 %idxprom61
  %42 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %42 to i32
  %cmp66 = icmp ne i32 %conv65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.75

if.then.68:                                       ; preds = %if.then.60
  %43 = load i32, i32* @getopt.sp, align 4
  %add69 = add nsw i32 %43, 1
  %idxprom70 = sext i32 %add69 to i64
  %44 = load i32, i32* @optind, align 4
  %inc71 = add nsw i32 %44, 1
  store i32 %inc71, i32* @optind, align 4
  %idxprom72 = sext i32 %44 to i64
  %45 = load i8**, i8*** %argv.addr, align 8
  %arrayidx73 = getelementptr inbounds i8*, i8** %45, i64 %idxprom72
  %46 = load i8*, i8** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %46, i64 %idxprom70
  store i8* %arrayidx74, i8** @optarg, align 8
  br label %if.end.100

if.else.75:                                       ; preds = %if.then.60
  %47 = load i32, i32* @optind, align 4
  %inc76 = add nsw i32 %47, 1
  store i32 %inc76, i32* @optind, align 4
  %48 = load i32, i32* %argc.addr, align 4
  %cmp77 = icmp sge i32 %inc76, %48
  br i1 %cmp77, label %if.then.79, label %if.else.95

if.then.79:                                       ; preds = %if.else.75
  %49 = load i32, i32* @opterr, align 4
  %tobool80 = icmp ne i32 %49, 0
  br i1 %tobool80, label %if.then.81, label %if.end.94

if.then.81:                                       ; preds = %if.then.79
  %50 = load i32, i32* %c, align 4
  %conv83 = trunc i32 %50 to i8
  %arrayidx84 = getelementptr inbounds [2 x i8], [2 x i8]* %errbuf82, i32 0, i64 0
  store i8 %conv83, i8* %arrayidx84, align 1
  %arrayidx85 = getelementptr inbounds [2 x i8], [2 x i8]* %errbuf82, i32 0, i64 1
  store i8 10, i8* %arrayidx85, align 1
  %51 = load i8**, i8*** %argv.addr, align 8
  %arrayidx86 = getelementptr inbounds i8*, i8** %51, i64 0
  %52 = load i8*, i8** %arrayidx86, align 8
  %53 = load i8**, i8*** %argv.addr, align 8
  %arrayidx87 = getelementptr inbounds i8*, i8** %53, i64 0
  %54 = load i8*, i8** %arrayidx87, align 8
  %call88 = call i64 @strlen(i8* %54) #3
  %conv89 = trunc i64 %call88 to i32
  %call90 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %52, i32 %conv89)
  %call91 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i32 33)
  %arraydecay92 = getelementptr inbounds [2 x i8], [2 x i8]* %errbuf82, i32 0, i32 0
  %call93 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %arraydecay92, i32 2)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.81, %if.then.79
  store i32 1, i32* @getopt.sp, align 4
  store i32 63, i32* %retval
  br label %return

if.else.95:                                       ; preds = %if.else.75
  %55 = load i32, i32* @optind, align 4
  %inc96 = add nsw i32 %55, 1
  store i32 %inc96, i32* @optind, align 4
  %idxprom97 = sext i32 %55 to i64
  %56 = load i8**, i8*** %argv.addr, align 8
  %arrayidx98 = getelementptr inbounds i8*, i8** %56, i64 %idxprom97
  %57 = load i8*, i8** %arrayidx98, align 8
  store i8* %57, i8** @optarg, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.95
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.68
  store i32 1, i32* @getopt.sp, align 4
  br label %if.end.113

if.else.101:                                      ; preds = %if.end.56
  %58 = load i32, i32* @getopt.sp, align 4
  %inc102 = add nsw i32 %58, 1
  store i32 %inc102, i32* @getopt.sp, align 4
  %idxprom103 = sext i32 %inc102 to i64
  %59 = load i32, i32* @optind, align 4
  %idxprom104 = sext i32 %59 to i64
  %60 = load i8**, i8*** %argv.addr, align 8
  %arrayidx105 = getelementptr inbounds i8*, i8** %60, i64 %idxprom104
  %61 = load i8*, i8** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %61, i64 %idxprom103
  %62 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %62 to i32
  %cmp108 = icmp eq i32 %conv107, 0
  br i1 %cmp108, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %if.else.101
  store i32 1, i32* @getopt.sp, align 4
  %63 = load i32, i32* @optind, align 4
  %inc111 = add nsw i32 %63, 1
  store i32 %inc111, i32* @optind, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.else.101
  store i8* null, i8** @optarg, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.100
  %64 = load i32, i32* %c, align 4
  store i32 %64, i32* %retval
  br label %return

return:                                           ; preds = %if.end.113, %if.end.94, %if.end.55, %if.then.18, %if.then.12
  %65 = load i32, i32* %retval
  ret i32 %65
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

declare i32 @write(...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
