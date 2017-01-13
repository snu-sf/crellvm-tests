; ModuleID = './src/ffaces.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fface_s = type { i32, i32 }
%struct.fflag_and_name = type { i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@String_fface = global %struct.fface_s { i32 5, i32 0 }, align 4
@Plain_fface = global %struct.fface_s zeroinitializer, align 4
@Symbol_fface = global %struct.fface_s { i32 6, i32 0 }, align 4
@No_fface = global %struct.fface_s { i32 -1, i32 0 }, align 4
@.str = private unnamed_addr constant [9 x i8] c"No_fflag\00", align 1
@fflag_and_name = internal constant [11 x %struct.fflag_and_name] [%struct.fflag_and_name { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.fflag_and_name { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2 }, %struct.fflag_and_name { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 4 }, %struct.fflag_and_name { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 8 }, %struct.fflag_and_name { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 16 }, %struct.fflag_and_name { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 32 }, %struct.fflag_and_name { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 64 }, %struct.fflag_and_name { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 128 }, %struct.fflag_and_name { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 256 }, %struct.fflag_and_name { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 512 }, %struct.fflag_and_name zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Invisible\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Tag1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Tag2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Tag3\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Tag4\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Index1\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Index2\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Index3\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Index4\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1

; Function Attrs: nounwind uwtable
define void @fflag_self_print(i32 %flags, %struct._IO_FILE* %stream) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i32 1, i32* %first, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %0)
  %1 = load i32, i32* %flags.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %if.end.15

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.fflag_and_name], [11 x %struct.fflag_and_name]* @fflag_and_name, i32 0, i64 %idxprom
  %flag = getelementptr inbounds %struct.fflag_and_name, %struct.fflag_and_name* %arrayidx, i32 0, i32 1
  %4 = load i32, i32* %flag, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [11 x %struct.fflag_and_name], [11 x %struct.fflag_and_name]* @fflag_and_name, i32 0, i64 %idxprom2
  %flag4 = getelementptr inbounds %struct.fflag_and_name, %struct.fflag_and_name* %arrayidx3, i32 0, i32 1
  %6 = load i32, i32* %flag4, align 4
  %7 = load i32, i32* %flags.addr, align 4
  %and = and i32 %6, %7
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %for.body
  %8 = load i32, i32* %first, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.else.10, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %if.end

if.else.10:                                       ; preds = %if.then.6
  store i32 0, i32* %first, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.8
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [11 x %struct.fflag_and_name], [11 x %struct.fflag_and_name]* @fflag_and_name, i32 0, i64 %idxprom11
  %name = getelementptr inbounds %struct.fflag_and_name, %struct.fflag_and_name* %arrayidx12, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call13 = call i32 @fputs(i8* %11, %struct._IO_FILE* %12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call16 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %14)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @fface_self_print(i64 %fface.coerce, %struct._IO_FILE* %stream) #0 {
entry:
  %fface = alloca %struct.fface_s, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.fface_s* %fface to i64*
  store i64 %fface.coerce, i64* %0, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %flags = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %1 = load i32, i32* %flags, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %2)
  %face = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 0
  %3 = load i32, i32* %face, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @face_self_print(i32 %3, %struct._IO_FILE* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [11 x %struct.fflag_and_name], [11 x %struct.fflag_and_name]* @fflag_and_name, i32 0, i64 %idxprom
  %flag = getelementptr inbounds %struct.fflag_and_name, %struct.fflag_and_name* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %flag, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds [11 x %struct.fflag_and_name], [11 x %struct.fflag_and_name]* @fflag_and_name, i32 0, i64 %idxprom2
  %flag4 = getelementptr inbounds %struct.fflag_and_name, %struct.fflag_and_name* %arrayidx3, i32 0, i32 1
  %8 = load i32, i32* %flag4, align 4
  %flags5 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 1
  %9 = load i32, i32* %flags5, align 4
  %and = and i32 %8, %9
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [11 x %struct.fflag_and_name], [11 x %struct.fflag_and_name]* @fflag_and_name, i32 0, i64 %idxprom9
  %name = getelementptr inbounds %struct.fflag_and_name, %struct.fflag_and_name* %arrayidx10, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call11 = call i32 @fputs(i8* %12, %struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call12 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %15)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %face13 = getelementptr inbounds %struct.fface_s, %struct.fface_s* %fface, i32 0, i32 0
  %16 = load i32, i32* %face13, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @face_self_print(i32 %16, %struct._IO_FILE* %17)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %for.end
  ret void
}

declare void @face_self_print(i32, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
