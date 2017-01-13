; ModuleID = './MultiSource.Benchmarks.Prolangs-C/111.unix-tbl.te.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0A%s: line %d: %s\0A\00", align 1
@ifile = external global i8*, align 8
@iline = external global i32, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"tbl quits\0A\00", align 1
@tabin = external global %struct._IO_FILE*, align 8
@linstart = external global i32, align 4
@backup = common global [500 x i8] zeroinitializer, align 16
@backp = global i8* getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"too much backup\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"unexpected EOF\00", align 1

; Function Attrs: nounwind uwtable
define void @error(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** @ifile, align 8
  %2 = load i32, i32* @iline, align 4
  %3 = load i8*, i8** %s.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %1, i32 %2, i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i8* @gets1(i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %nbl = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %nbl, align 4
  %0 = load i32, i32* @iline, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @iline, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %call = call i8* @fgets(i8* %1, i32 8192, %struct._IO_FILE* %2)
  store i8* %call, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i32 @swapin()
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %call3 = call i8* @fgets(i8* %4, i32 8192, %struct._IO_FILE* %5)
  store i8* %call3, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.4

while.cond.4:                                     ; preds = %while.body.5, %while.end
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %while.body.5, label %while.end.6

while.body.5:                                     ; preds = %while.cond.4
  %8 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond.4

while.end.6:                                      ; preds = %while.cond.4
  %9 = load i8*, i8** %s.addr, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %9, i32 -1
  store i8* %incdec.ptr7, i8** %s.addr, align 8
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  %cmp8 = icmp eq i32 %conv, 10
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %while.end.6
  %12 = load i8*, i8** %s.addr, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr11, i8** %s.addr, align 8
  store i8 0, i8* %12, align 1
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %while.end.6
  store i32 0, i32* %nbl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 92
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %15 = load i8*, i8** %s.addr, align 8
  %16 = load i8*, i8** %p, align 8
  %cmp16 = icmp ugt i8* %15, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %17 = phi i1 [ false, %for.cond ], [ %cmp16, %land.rhs ]
  br i1 %17, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %18 = load i32, i32* %nbl, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %nbl, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i8*, i8** %s.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %19, i32 -1
  store i8* %incdec.ptr19, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %20 = load i32, i32* @linstart, align 4
  %tobool20 = icmp ne i32 %20, 0
  br i1 %tobool20, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %for.end
  %21 = load i32, i32* %nbl, align 4
  %rem = srem i32 %21, 2
  %tobool21 = icmp ne i32 %rem, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %land.lhs.true
  %22 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1
  %call23 = call i8* @gets1(i8* %add.ptr)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %land.lhs.true, %for.end
  %23 = load i8*, i8** %p, align 8
  store i8* %23, i8** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @swapin() #1

; Function Attrs: nounwind uwtable
define void @un1getc(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp eq i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @iline, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* @iline, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i8*, i8** @backp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** @backp, align 8
  store i8 %conv, i8* %3, align 1
  %4 = load i8*, i8** @backp, align 8
  %cmp1 = icmp uge i8* %4, getelementptr inbounds (i8, i8* getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i32 0, i32 0), i64 500)
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @get1char() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load i8*, i8** @backp, align 8
  %cmp = icmp ugt i8* %0, getelementptr inbounds ([500 x i8], [500 x i8]* @backup, i32 0, i32 0)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @backp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 -1
  store i8* %incdec.ptr, i8** @backp, align 8
  %2 = load i8, i8* %incdec.ptr, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %c, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %c, align 4
  %cmp1 = icmp eq i32 %4, -1
  br i1 %cmp1, label %if.then.3, label %if.end.10

if.then.3:                                        ; preds = %if.end
  %call4 = call i32 @swapin()
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  call void @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.then.3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @tabin, align 8
  %call9 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call9, i32* %c, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.8, %if.end
  %6 = load i32, i32* %c, align 4
  %cmp11 = icmp eq i32 %6, 10
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  %7 = load i32, i32* @iline, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* @iline, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.10
  %8 = load i32, i32* %c, align 4
  ret i32 %8
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
