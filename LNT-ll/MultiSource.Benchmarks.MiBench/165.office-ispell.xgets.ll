; ModuleID = './MultiSource.Benchmarks.MiBench/165.office-ispell.xgets.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@xgets.Include_File = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [15 x i8] c"&Include_File&\00", align 1
@xgets.Include_Len = internal global i32 0, align 4
@xgets.F = internal global [6 x %struct._IO_FILE*] zeroinitializer, align 16
@xgets.current_F = internal global %struct._IO_FILE** getelementptr inbounds ([6 x %struct._IO_FILE*], [6 x %struct._IO_FILE*]* @xgets.F, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"INCLUDE_STRING\00", align 1
@incfileflag = external global i32, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define i8* @xgets(i8* %str, i32 %size, %struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %s = alloca i8*, align 8
  %c = alloca i32, align 4
  %env_variable = alloca i8*, align 8
  %file_name = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %s, align 8
  %1 = load i32, i32* @xgets.Include_Len, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)) #4
  store i8* %call, i8** %env_variable, align 8
  %cmp1 = icmp ne i8* %call, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %env_variable, align 8
  store i8* %2, i8** @xgets.Include_File, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load i8*, i8** @xgets.Include_File, align 8
  %call3 = call i64 @strlen(i8* %3) #5
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* @xgets.Include_Len, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %4, %struct._IO_FILE** %5, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.57, %if.then.32, %if.then.15, %if.end.4
  store i32 0, i32* %c, align 4
  %6 = load i8*, i8** %s, align 8
  %7 = load i8*, i8** %str.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %8 = load i32, i32* %size.addr, align 4
  %conv5 = sext i32 %8 to i64
  %cmp6 = icmp slt i64 %add, %conv5
  br i1 %cmp6, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %for.cond
  %9 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %10)
  store i32 %call8, i32* %c, align 4
  %cmp9 = icmp ne i32 %call8, -1
  br i1 %cmp9, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* %c, align 4
  %conv12 = trunc i32 %11 to i8
  %12 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  store i8 %conv12, i8* %12, align 1
  %13 = load i32, i32* %c, align 4
  %cmp13 = icmp ne i32 %13, 10
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  br label %for.cond

if.end.16:                                        ; preds = %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %for.cond
  %14 = load i8*, i8** %s, align 8
  store i8 0, i8* %14, align 1
  %15 = load i32, i32* %c, align 4
  %cmp18 = icmp eq i32 %15, -1
  br i1 %cmp18, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %if.end.17
  %16 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %cmp21 = icmp eq %struct._IO_FILE** %16, getelementptr inbounds ([6 x %struct._IO_FILE*], [6 x %struct._IO_FILE*]* @xgets.F, i32 0, i32 0)
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.20
  %17 = load i8*, i8** %s, align 8
  %18 = load i8*, i8** %str.addr, align 8
  %cmp24 = icmp eq i8* %17, %18
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  store i8* null, i8** %retval
  br label %return

if.end.27:                                        ; preds = %if.then.23
  br label %if.end.34

if.else:                                          ; preds = %if.then.20
  %19 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %incdec.ptr28 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %19, i32 -1
  store %struct._IO_FILE** %incdec.ptr28, %struct._IO_FILE*** @xgets.current_F, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %20)
  %21 = load i8*, i8** %s, align 8
  %22 = load i8*, i8** %str.addr, align 8
  %cmp30 = icmp eq i8* %21, %22
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.else
  br label %for.cond

if.end.33:                                        ; preds = %if.else
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.27
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.17
  %23 = load i32, i32* @incfileflag, align 4
  %cmp36 = icmp ne i32 %23, 0
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.58

land.lhs.true.38:                                 ; preds = %if.end.35
  %24 = load i8*, i8** %str.addr, align 8
  %25 = load i8*, i8** @xgets.Include_File, align 8
  %26 = load i32, i32* @xgets.Include_Len, align 4
  %conv39 = zext i32 %26 to i64
  %call40 = call i32 @strncmp(i8* %24, i8* %25, i64 %conv39) #5
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.43, label %if.end.58

if.then.43:                                       ; preds = %land.lhs.true.38
  %27 = load i8*, i8** %str.addr, align 8
  %28 = load i32, i32* @xgets.Include_Len, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  store i8* %add.ptr, i8** %file_name, align 8
  %29 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %sub.ptr.lhs.cast44 = ptrtoint %struct._IO_FILE** %29 to i64
  %sub.ptr.sub45 = sub i64 %sub.ptr.lhs.cast44, ptrtoint ([6 x %struct._IO_FILE*]* @xgets.F to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub45, 8
  %cmp46 = icmp slt i64 %sub.ptr.div, 5
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.57

land.lhs.true.48:                                 ; preds = %if.then.43
  %30 = load i8*, i8** %file_name, align 8
  %call49 = call i64 @strlen(i8* %30) #5
  %cmp50 = icmp ne i64 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %land.lhs.true.48
  %31 = load i8*, i8** %file_name, align 8
  %call53 = call %struct._IO_FILE* @fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call53, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %call53, null
  br i1 %tobool, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %if.then.52
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %33 = load %struct._IO_FILE**, %struct._IO_FILE*** @xgets.current_F, align 8
  %incdec.ptr55 = getelementptr inbounds %struct._IO_FILE*, %struct._IO_FILE** %33, i32 1
  store %struct._IO_FILE** %incdec.ptr55, %struct._IO_FILE*** @xgets.current_F, align 8
  store %struct._IO_FILE* %32, %struct._IO_FILE** %incdec.ptr55, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %if.then.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.48, %if.then.43
  %34 = load i8*, i8** %str.addr, align 8
  store i8* %34, i8** %s, align 8
  br label %for.cond

if.end.58:                                        ; preds = %land.lhs.true.38, %if.end.35
  br label %for.end

for.end:                                          ; preds = %if.end.58
  %35 = load i8*, i8** %str.addr, align 8
  store i8* %35, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.26
  %36 = load i8*, i8** %retval
  ret i8* %36
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @_IO_getc(%struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
