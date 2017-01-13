; ModuleID = './MultiSource.Applications.ClamAV/83.libclamav_msexpand.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"msexpand: Not a MS-compressed file\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"msexpand: unsupported version 6.22\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"msexpand: Can't allocate memory\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @cli_msexpand(%struct._IO_FILE* %in, %struct._IO_FILE* %out) #0 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %bits = alloca i32, align 4
  %ch = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %mask = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %magic1 = alloca i32, align 4
  %magic2 = alloca i32, align 4
  %magic3 = alloca i32, align 4
  %filesize = alloca i32, align 4
  %reserved = alloca i16, align 2
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = bitcast i32* %magic1 to i8*
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i64 @fread(i8* %0, i64 4, i64 1, %struct._IO_FILE* %1)
  %cmp = icmp ne i64 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %magic1, align 4
  %conv = zext i32 %2 to i64
  %cmp1 = icmp eq i64 %conv, 1145330259
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = bitcast i32* %magic2 to i8*
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call4 = call i64 @fread(i8* %3, i64 4, i64 1, %struct._IO_FILE* %4)
  %cmp5 = icmp ne i64 %call4, 1
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.3
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.then.3
  %5 = bitcast i16* %reserved to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call9 = call i64 @fread(i8* %5, i64 2, i64 1, %struct._IO_FILE* %6)
  %cmp10 = icmp ne i64 %call9, 1
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.8
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.8
  %7 = bitcast i32* %filesize to i8*
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call14 = call i64 @fread(i8* %7, i64 4, i64 1, %struct._IO_FILE* %8)
  %cmp15 = icmp ne i64 %call14, 1
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  %9 = load i32, i32* %magic2, align 4
  %conv19 = zext i32 %9 to i64
  %cmp20 = icmp ne i64 %conv19, 858255496
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  br label %if.end.52

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %magic1, align 4
  %conv24 = zext i32 %10 to i64
  %cmp25 = icmp eq i64 %conv24, 1245796171
  br i1 %cmp25, label %if.then.27, label %if.else.51

if.then.27:                                       ; preds = %if.else
  %11 = bitcast i32* %magic2 to i8*
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call28 = call i64 @fread(i8* %11, i64 4, i64 1, %struct._IO_FILE* %12)
  %cmp29 = icmp ne i64 %call28, 1
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.27
  store i32 -1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.then.27
  %13 = bitcast i32* %magic3 to i8*
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call33 = call i64 @fread(i8* %13, i64 4, i64 1, %struct._IO_FILE* %14)
  %cmp34 = icmp ne i64 %call33, 1
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.32
  %15 = bitcast i16* %reserved to i8*
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call38 = call i64 @fread(i8* %15, i64 2, i64 1, %struct._IO_FILE* %16)
  %cmp39 = icmp ne i64 %call38, 1
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.37
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.end.37
  %17 = load i32, i32* %magic2, align 4
  %conv43 = zext i32 %17 to i64
  %cmp44 = icmp ne i64 %conv43, 3509055624
  br i1 %cmp44, label %if.then.49, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.42
  %18 = load i32, i32* %magic3, align 4
  %conv46 = zext i32 %18 to i64
  %cmp47 = icmp ne i64 %conv46, 1179651
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false, %if.end.42
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %lor.lhs.false
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.51:                                       ; preds = %if.else
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.23
  %call53 = call i8* @cli_calloc(i64 4096, i64 1)
  store i8* %call53, i8** %buffer, align 8
  %cmp54 = icmp eq i8* %call53, null
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.52
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.52
  store i32 4080, i32* %i, align 4
  br label %while.body

while.body:                                       ; preds = %if.end.57, %for.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call58 = call i32 @fgetc(%struct._IO_FILE* %19)
  store i32 %call58, i32* %bits, align 4
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %while.body
  br label %while.end.109

if.end.62:                                        ; preds = %while.body
  store i32 1, i32* %mask, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.62
  %20 = load i32, i32* %mask, align 4
  %and = and i32 %20, 255
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %bits, align 4
  %22 = load i32, i32* %mask, align 4
  %and63 = and i32 %21, %22
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.else.89, label %if.then.65

if.then.65:                                       ; preds = %for.body
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call66 = call i32 @fgetc(%struct._IO_FILE* %23)
  store i32 %call66, i32* %j, align 4
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.then.65
  br label %for.end

if.end.70:                                        ; preds = %if.then.65
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call71 = call i32 @fgetc(%struct._IO_FILE* %24)
  store i32 %call71, i32* %len, align 4
  %25 = load i32, i32* %len, align 4
  %and72 = and i32 %25, 240
  %shl = shl i32 %and72, 4
  %26 = load i32, i32* %j, align 4
  %add = add nsw i32 %26, %shl
  store i32 %add, i32* %j, align 4
  %27 = load i32, i32* %len, align 4
  %and73 = and i32 %27, 15
  %add74 = add nsw i32 %and73, 3
  store i32 %add74, i32* %len, align 4
  br label %while.cond.75

while.cond.75:                                    ; preds = %if.end.86, %if.end.70
  %28 = load i32, i32* %len, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %len, align 4
  %tobool76 = icmp ne i32 %28, 0
  br i1 %tobool76, label %while.body.77, label %while.end

while.body.77:                                    ; preds = %while.cond.75
  %29 = load i32, i32* %j, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load i8*, i8** %buffer, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %32 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %32 to i64
  %33 = load i8*, i8** %buffer, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %33, i64 %idxprom78
  store i8 %31, i8* %arrayidx79, align 1
  %34 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %34 to i64
  %35 = load i8*, i8** %buffer, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %35, i64 %idxprom80
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call82 = call i64 @fwrite(i8* %arrayidx81, i64 1, i64 1, %struct._IO_FILE* %36)
  %cmp83 = icmp ne i64 %call82, 1
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %while.body.77
  %37 = load i8*, i8** %buffer, align 8
  call void @free(i8* %37) #3
  store i32 -1, i32* %retval
  br label %return

if.end.86:                                        ; preds = %while.body.77
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  %39 = load i32, i32* %j, align 4
  %rem = srem i32 %39, 4096
  store i32 %rem, i32* %j, align 4
  %40 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %40, 1
  store i32 %inc87, i32* %i, align 4
  %41 = load i32, i32* %i, align 4
  %rem88 = srem i32 %41, 4096
  store i32 %rem88, i32* %i, align 4
  br label %while.cond.75

while.end:                                        ; preds = %while.cond.75
  br label %if.end.107

if.else.89:                                       ; preds = %for.body
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call90 = call i32 @fgetc(%struct._IO_FILE* %42)
  store i32 %call90, i32* %ch, align 4
  %cmp91 = icmp eq i32 %call90, -1
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else.89
  br label %for.end

if.end.94:                                        ; preds = %if.else.89
  %43 = load i32, i32* %ch, align 4
  %conv95 = trunc i32 %43 to i8
  %44 = load i32, i32* %i, align 4
  %idxprom96 = sext i32 %44 to i64
  %45 = load i8*, i8** %buffer, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %45, i64 %idxprom96
  store i8 %conv95, i8* %arrayidx97, align 1
  %46 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %46 to i64
  %47 = load i8*, i8** %buffer, align 8
  %arrayidx99 = getelementptr inbounds i8, i8* %47, i64 %idxprom98
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call100 = call i64 @fwrite(i8* %arrayidx99, i64 1, i64 1, %struct._IO_FILE* %48)
  %cmp101 = icmp ne i64 %call100, 1
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.end.94
  %49 = load i8*, i8** %buffer, align 8
  call void @free(i8* %49) #3
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.end.94
  %50 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %50, 1
  store i32 %inc105, i32* %i, align 4
  %51 = load i32, i32* %i, align 4
  %rem106 = srem i32 %51, 4096
  store i32 %rem106, i32* %i, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.104, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.107
  %52 = load i32, i32* %mask, align 4
  %shl108 = shl i32 %52, 1
  store i32 %shl108, i32* %mask, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.93, %if.then.69, %for.cond
  br label %while.body

while.end.109:                                    ; preds = %if.then.61
  %53 = load i8*, i8** %buffer, align 8
  call void @free(i8* %53) #3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.109, %if.then.103, %if.then.85, %if.then.56, %if.else.51, %if.end.50, %if.then.49, %if.then.41, %if.then.36, %if.then.31, %if.then.22, %if.then.17, %if.then.12, %if.then.7, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @cli_warnmsg(i8*, ...) #1

declare i8* @cli_calloc(i64, i64) #1

declare void @cli_errmsg(i8*, ...) #1

declare i32 @fgetc(%struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
