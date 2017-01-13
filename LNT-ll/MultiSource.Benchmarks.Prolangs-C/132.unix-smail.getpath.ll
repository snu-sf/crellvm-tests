; ModuleID = './MultiSource.Benchmarks.Prolangs-C/132.unix-smail.getpath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@getpath.pathlength = internal global i64 0, align 8
@getpath.file = internal global %struct._IO_FILE* null, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [27 x i8] c"getpath: looking for '%s'\0A\00", align 1
@pathfile = external global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1

; Function Attrs: nounwind uwtable
define i32 @getpath(i8* %key, i8* %path, i32* %cost) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %cost.addr = alloca i32*, align 8
  %pos = alloca i64, align 8
  %middle = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %s = alloca i8*, align 8
  %c = alloca i32, align 4
  %flag = alloca i32, align 4
  %tcost = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32* %cost, i32** %cost.addr, align 8
  %0 = load i32, i32* @debug, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @getpath.pathlength, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %3 = load i8*, i8** @pathfile, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** @getpath.file, align 8
  %cmp4 = icmp eq %struct._IO_FILE* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %4 = load i8*, i8** @pathfile, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i8* %4)
  store i64 -1, i64* @getpath.pathlength, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.then.2
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %call7 = call i32 @fseek(%struct._IO_FILE* %5, i64 0, i32 2)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %call8 = call i64 @ftell(%struct._IO_FILE* %6)
  store i64 %call8, i64* @getpath.pathlength, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %7 = load i64, i64* @getpath.pathlength, align 8
  %cmp11 = icmp eq i64 %7, -1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  store i32 72, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  store i64 0, i64* %lo, align 8
  %8 = load i64, i64* @getpath.pathlength, align 8
  store i64 %8, i64* %hi, align 8
  %9 = load i8*, i8** %path.addr, align 8
  %10 = load i8*, i8** %key.addr, align 8
  %call14 = call i8* @strcpy(i8* %9, i8* %10) #4
  %11 = load i8*, i8** %path.addr, align 8
  %call15 = call i8* @strcat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end.68, %if.end.13
  %12 = load i64, i64* %hi, align 8
  %13 = load i64, i64* %lo, align 8
  %add = add nsw i64 %12, %13
  %add16 = add nsw i64 %add, 1
  %div = sdiv i64 %add16, 2
  store i64 %div, i64* %middle, align 8
  store i64 %div, i64* %pos, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %15 = load i64, i64* %pos, align 8
  %call17 = call i32 @fseek(%struct._IO_FILE* %14, i64 %15, i32 0)
  %16 = load i64, i64* %pos, align 8
  %cmp18 = icmp ne i64 %16, 0
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.19
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %call20 = call i32 @_IO_getc(%struct._IO_FILE* %17)
  store i32 %call20, i32* %c, align 4
  %cmp21 = icmp ne i32 %call20, -1
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %18 = load i32, i32* %c, align 4
  %cmp22 = icmp ne i32 %18, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp22, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.23

if.end.23:                                        ; preds = %while.end, %for.cond
  %20 = load i32, i32* %c, align 4
  %cmp24 = icmp eq i32 %20, -1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  store i32 68, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.23
  store i32 0, i32* %flag, align 4
  %21 = load i8*, i8** %path.addr, align 8
  store i8* %21, i8** %s, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.end.26
  %22 = load i32, i32* %flag, align 4
  %cmp28 = icmp eq i32 %22, 0
  br i1 %cmp28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.27
  %23 = load i8*, i8** %s, align 8
  %24 = load i8, i8* %23, align 1
  %conv = sext i8 %24 to i32
  %cmp29 = icmp eq i32 %conv, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body
  br label %solved

if.end.32:                                        ; preds = %for.body
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %call33 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %call33, i32* %c, align 4
  %cmp34 = icmp eq i32 %call33, -1
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store i32 68, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.32
  %26 = load i32, i32* %c, align 4
  %idxprom = sext i32 %26 to i64
  %call38 = call i16** @__ctype_b_loc() #5
  %27 = load i16*, i16** %call38, align 8
  %arrayidx = getelementptr inbounds i16, i16* %27, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2
  %conv39 = zext i16 %28 to i32
  %and = and i32 %conv39, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.37
  %29 = load i32, i32* %c, align 4
  %sub = sub nsw i32 %29, 65
  %add40 = add nsw i32 %sub, 97
  br label %cond.end

cond.false:                                       ; preds = %if.end.37
  %30 = load i32, i32* %c, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add40, %cond.true ], [ %30, %cond.false ]
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv41 = sext i8 %32 to i32
  %idxprom42 = sext i32 %conv41 to i64
  %call43 = call i16** @__ctype_b_loc() #5
  %33 = load i16*, i16** %call43, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %33, i64 %idxprom42
  %34 = load i16, i16* %arrayidx44, align 2
  %conv45 = zext i16 %34 to i32
  %and46 = and i32 %conv45, 256
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %cond.true.48, label %cond.false.52

cond.true.48:                                     ; preds = %cond.end
  %35 = load i8*, i8** %s, align 8
  %36 = load i8, i8* %35, align 1
  %conv49 = sext i8 %36 to i32
  %sub50 = sub nsw i32 %conv49, 65
  %add51 = add nsw i32 %sub50, 97
  br label %cond.end.54

cond.false.52:                                    ; preds = %cond.end
  %37 = load i8*, i8** %s, align 8
  %38 = load i8, i8* %37, align 1
  %conv53 = sext i8 %38 to i32
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.52, %cond.true.48
  %cond55 = phi i32 [ %add51, %cond.true.48 ], [ %conv53, %cond.false.52 ]
  %sub56 = sub nsw i32 %cond, %cond55
  store i32 %sub56, i32* %flag, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.54
  %39 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  %40 = load i64, i64* %lo, align 8
  %41 = load i64, i64* %middle, align 8
  %cmp57 = icmp sge i64 %40, %41
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end
  store i32 68, i32* %retval
  br label %return

if.end.60:                                        ; preds = %for.end
  %42 = load i32, i32* %c, align 4
  %cmp61 = icmp ne i32 %42, -1
  br i1 %cmp61, label %land.lhs.true, label %if.else.66

land.lhs.true:                                    ; preds = %if.end.60
  %43 = load i32, i32* %flag, align 4
  %cmp63 = icmp slt i32 %43, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true
  %44 = load i64, i64* %middle, align 8
  store i64 %44, i64* %lo, align 8
  br label %if.end.68

if.else.66:                                       ; preds = %land.lhs.true, %if.end.60
  %45 = load i64, i64* %middle, align 8
  %sub67 = sub nsw i64 %45, 1
  store i64 %sub67, i64* %hi, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.66, %if.then.65
  br label %for.cond

solved:                                           ; preds = %if.then.31
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.80, %solved
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %call70 = call i32 @_IO_getc(%struct._IO_FILE* %46)
  store i32 %call70, i32* %c, align 4
  %cmp71 = icmp ne i32 %call70, -1
  br i1 %cmp71, label %land.lhs.true.73, label %land.end.79

land.lhs.true.73:                                 ; preds = %while.cond.69
  %47 = load i32, i32* %c, align 4
  %cmp74 = icmp ne i32 %47, 9
  br i1 %cmp74, label %land.rhs.76, label %land.end.79

land.rhs.76:                                      ; preds = %land.lhs.true.73
  %48 = load i32, i32* %c, align 4
  %cmp77 = icmp ne i32 %48, 10
  br label %land.end.79

land.end.79:                                      ; preds = %land.rhs.76, %land.lhs.true.73, %while.cond.69
  %49 = phi i1 [ false, %land.lhs.true.73 ], [ false, %while.cond.69 ], [ %cmp77, %land.rhs.76 ]
  br i1 %49, label %while.body.80, label %while.end.83

while.body.80:                                    ; preds = %land.end.79
  %50 = load i32, i32* %c, align 4
  %conv81 = trunc i32 %50 to i8
  %51 = load i8*, i8** %path.addr, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr82, i8** %path.addr, align 8
  store i8 %conv81, i8* %51, align 1
  br label %while.cond.69

while.end.83:                                     ; preds = %land.end.79
  %52 = load i8*, i8** %path.addr, align 8
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %c, align 4
  %cmp84 = icmp eq i32 %53, 9
  br i1 %cmp84, label %if.then.86, label %if.end.111

if.then.86:                                       ; preds = %while.end.83
  store i32 -1, i32* %tcost, align 4
  br label %while.cond.87

while.cond.87:                                    ; preds = %if.end.103, %if.then.86
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %call88 = call i32 @_IO_getc(%struct._IO_FILE* %54)
  store i32 %call88, i32* %c, align 4
  %cmp89 = icmp ne i32 %call88, -1
  br i1 %cmp89, label %land.rhs.91, label %land.end.98

land.rhs.91:                                      ; preds = %while.cond.87
  %55 = load i32, i32* %c, align 4
  %idxprom92 = sext i32 %55 to i64
  %call93 = call i16** @__ctype_b_loc() #5
  %56 = load i16*, i16** %call93, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %56, i64 %idxprom92
  %57 = load i16, i16* %arrayidx94, align 2
  %conv95 = zext i16 %57 to i32
  %and96 = and i32 %conv95, 2048
  %tobool97 = icmp ne i32 %and96, 0
  br label %land.end.98

land.end.98:                                      ; preds = %land.rhs.91, %while.cond.87
  %58 = phi i1 [ false, %while.cond.87 ], [ %tobool97, %land.rhs.91 ]
  br i1 %58, label %while.body.99, label %while.end.106

while.body.99:                                    ; preds = %land.end.98
  %59 = load i32, i32* %tcost, align 4
  %cmp100 = icmp slt i32 %59, 0
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %while.body.99
  store i32 0, i32* %tcost, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %while.body.99
  %60 = load i32, i32* %tcost, align 4
  %mul = mul nsw i32 %60, 10
  store i32 %mul, i32* %tcost, align 4
  %61 = load i32, i32* %c, align 4
  %sub104 = sub nsw i32 %61, 48
  %62 = load i32, i32* %tcost, align 4
  %add105 = add nsw i32 %62, %sub104
  store i32 %add105, i32* %tcost, align 4
  br label %while.cond.87

while.end.106:                                    ; preds = %land.end.98
  %63 = load i32, i32* %tcost, align 4
  %cmp107 = icmp sge i32 %63, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %while.end.106
  %64 = load i32, i32* %tcost, align 4
  %65 = load i32*, i32** %cost.addr, align 8
  store i32 %64, i32* %65, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %while.end.106
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %while.end.83
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.111, %if.then.59, %if.then.36, %if.then.25, %if.then.12
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare i32 @printf(i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
