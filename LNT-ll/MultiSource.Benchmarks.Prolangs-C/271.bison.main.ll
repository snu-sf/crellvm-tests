; ModuleID = './MultiSource.Benchmarks.Prolangs-C/271.bison.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@failure = common global i32 0, align 4
@lineno = external global i32, align 4
@verboseflag = external global i32, align 4
@infile = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"fatal error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\22%s\22, line %d: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"limit of %d exceeded, too many %s\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"internal error, %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* @failure, align 4
  store i32 0, i32* @lineno, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @getargs(i32 %0, i8** %1)
  call void @openfiles()
  call void @reader()
  call void @set_derives()
  call void @set_nullable()
  call void @generate_states()
  call void @lalr()
  call void @initialize_conflicts()
  %2 = load i32, i32* @verboseflag, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @verbose()
  br label %if.end

if.else:                                          ; preds = %entry
  call void @terse()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @output()
  %3 = load i32, i32* @failure, align 4
  call void @done(i32 %3)
  ret i32 0
}

declare void @getargs(i32, i8**) #1

declare void @openfiles() #1

declare void @reader() #1

declare void @set_derives() #1

declare void @set_nullable() #1

declare void @generate_states() #1

declare void @lalr() #1

declare void @initialize_conflicts() #1

declare void @verbose() #1

declare void @terse() #1

declare void @output() #1

declare void @done(i32) #1

; Function Attrs: nounwind uwtable
define void @fatal(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** @infile, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @infile, align 8
  %5 = load i32, i32* @lineno, align 4
  %6 = load i8*, i8** %s.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* %4, i32 %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @done(i32 1)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @fatals(i8* %fmt, i32 %x1, i32 %x2, i32 %x3, i32 %x4, i32 %x5, i32 %x6, i32 %x7, i32 %x8) #0 {
entry:
  %fmt.addr = alloca i8*, align 8
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %x3.addr = alloca i32, align 4
  %x4.addr = alloca i32, align 4
  %x5.addr = alloca i32, align 4
  %x6.addr = alloca i32, align 4
  %x7.addr = alloca i32, align 4
  %x8.addr = alloca i32, align 4
  %buffer = alloca [200 x i8], align 16
  store i8* %fmt, i8** %fmt.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %x3, i32* %x3.addr, align 4
  store i32 %x4, i32* %x4.addr, align 4
  store i32 %x5, i32* %x5.addr, align 4
  store i32 %x6, i32* %x6.addr, align 4
  store i32 %x7, i32* %x7.addr, align 4
  store i32 %x8, i32* %x8.addr, align 4
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %0 = load i8*, i8** %fmt.addr, align 8
  %1 = load i32, i32* %x1.addr, align 4
  %2 = load i32, i32* %x2.addr, align 4
  %3 = load i32, i32* %x3.addr, align 4
  %4 = load i32, i32* %x4.addr, align 4
  %5 = load i32, i32* %x5.addr, align 4
  %6 = load i32, i32* %x6.addr, align 4
  %7 = load i32, i32* %x7.addr, align 4
  %8 = load i32, i32* %x8.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #4
  %arraydecay1 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  call void @fatal(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @toomany(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %buffer = alloca [200 x i8], align 16
  store i8* %s, i8** %s.addr, align 8
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i32 32767, i8* %0) #4
  %arraydecay1 = getelementptr inbounds [200 x i8], [200 x i8]* %buffer, i32 0, i32 0
  call void @fatal(i8* %arraydecay1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @berror(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %1)
  call void @abort() #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
