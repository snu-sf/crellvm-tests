; ModuleID = './MultiSource.Benchmarks.mediabench/84.gsm.toast.toast_audio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@in = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [100 x i8] c"%s: bad (missing?) header in Sun audio file \22%s\22;\0A\09Try one of -u, -a, -l instead (%s -h for help).\0A\00", align 1
@progname = external global i8*, align 8
@inname = external global i8*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@input = external global i32 (i16*)*, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"%s: warning: file format #%lu for %s not implemented, defaulting to u-law.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".snd\00", align 1
@out = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define i32 @audio_init_input() #0 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i64, align 8
  %enc = alloca i64, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call = call i32 @fgetc(%struct._IO_FILE* %0)
  %cmp = icmp ne i32 %call, 46
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call1 = call i32 @fgetc(%struct._IO_FILE* %1)
  %cmp2 = icmp ne i32 %call1, 115
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call4 = call i32 @fgetc(%struct._IO_FILE* %2)
  %cmp5 = icmp ne i32 %call4, 110
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call7 = call i32 @fgetc(%struct._IO_FILE* %3)
  %cmp8 = icmp ne i32 %call7, 100
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call10 = call i32 @get_u32(%struct._IO_FILE* %4, i64* %len)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.9
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call12 = call i32 @get_u32(%struct._IO_FILE* %5, i64* %enc)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %call15 = call i32 @get_u32(%struct._IO_FILE* %6, i64* %enc)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @in, align 8
  %8 = load i64, i64* %len, align 8
  %sub = sub i64 %8, 16
  %call18 = call i32 @fseek(%struct._IO_FILE* %7, i64 %sub, i32 1)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** @progname, align 8
  %11 = load i8*, i8** @inname, align 8
  %tobool20 = icmp ne i8* %11, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i8*, i8** @inname, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %12, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %cond.false ]
  %13 = load i8*, i8** @progname, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i32 0, i32 0), i8* %10, i8* %cond, i8* %13)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.17
  %14 = load i64, i64* %enc, align 8
  switch i64 %14, label %sw.default [
    i64 1, label %sw.bb
    i64 2, label %sw.bb.22
    i64 3, label %sw.bb.23
  ]

sw.bb:                                            ; preds = %if.end
  store i32 (i16*)* @ulaw_input, i32 (i16*)** @input, align 8
  br label %sw.epilog

sw.bb.22:                                         ; preds = %if.end
  store i32 (i16*)* @alaw_input, i32 (i16*)** @input, align 8
  br label %sw.epilog

sw.bb.23:                                         ; preds = %if.end
  store i32 (i16*)* @linear_input, i32 (i16*)** @input, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i8*, i8** @progname, align 8
  %17 = load i64, i64* %enc, align 8
  %18 = load i8*, i8** @inname, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i32 0, i32 0), i8* %16, i64 %17, i8* %18)
  store i32 (i16*)* @ulaw_input, i32 (i16*)** @input, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.23, %sw.bb.22, %sw.bb
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %cond.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @get_u32(%struct._IO_FILE* %f, i64* %up) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %up.addr = alloca i64*, align 8
  %i = alloca i32, align 4
  %u = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i64* %up, i64** %up.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %i, align 4
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %conv = trunc i32 %1 to i8
  %conv1 = zext i8 %conv to i64
  store i64 %conv1, i64* %u, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call2, i32* %i, align 4
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %3 = load i64, i64* %u, align 8
  %shl = shl i64 %3, 8
  %4 = load i32, i32* %i, align 4
  %conv6 = trunc i32 %4 to i8
  %conv7 = zext i8 %conv6 to i64
  %or = or i64 %shl, %conv7
  store i64 %or, i64* %u, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call8 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call8, i32* %i, align 4
  %cmp9 = icmp eq i32 %call8, -1
  br i1 %cmp9, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.5
  %6 = load i64, i64* %u, align 8
  %shl12 = shl i64 %6, 8
  %7 = load i32, i32* %i, align 4
  %conv13 = trunc i32 %7 to i8
  %conv14 = zext i8 %conv13 to i64
  %or15 = or i64 %shl12, %conv14
  store i64 %or15, i64* %u, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call16 = call i32 @_IO_getc(%struct._IO_FILE* %8)
  store i32 %call16, i32* %i, align 4
  %cmp17 = icmp eq i32 %call16, -1
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.11, %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.11
  %9 = load i64, i64* %u, align 8
  %shl19 = shl i64 %9, 8
  %10 = load i32, i32* %i, align 4
  %conv20 = trunc i32 %10 to i8
  %conv21 = zext i8 %conv20 to i64
  %or22 = or i64 %shl19, %conv21
  %11 = load i64*, i64** %up.addr, align 8
  store i64 %or22, i64* %11, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @ulaw_input(i16*) #1

declare i32 @alaw_input(i16*) #1

declare i32 @linear_input(i16*) #1

; Function Attrs: nounwind uwtable
define i32 @audio_init_output() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %0)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call1 = call i32 @put_u32(%struct._IO_FILE* %1, i64 32)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call3 = call i32 @put_u32(%struct._IO_FILE* %2, i64 -1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call6 = call i32 @put_u32(%struct._IO_FILE* %3, i64 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call9 = call i32 @put_u32(%struct._IO_FILE* %4, i64 8000)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call12 = call i32 @put_u32(%struct._IO_FILE* %5, i64 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call15 = call i32 @put_u32(%struct._IO_FILE* %6, i64 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @out, align 8
  %call18 = call i32 @put_u32(%struct._IO_FILE* %7, i64 0)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false.8, %lor.lhs.false.5, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.17
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i32 @put_u32(%struct._IO_FILE* %f, i64 %u) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %u.addr = alloca i64, align 8
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i64 %u, i64* %u.addr, align 8
  %0 = load i64, i64* %u.addr, align 8
  %shr = lshr i64 %0, 24
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  %conv1 = sext i8 %conv to i32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv1, %struct._IO_FILE* %1)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, i64* %u.addr, align 8
  %shr3 = lshr i64 %2, 16
  %and4 = and i64 %shr3, 255
  %conv5 = trunc i64 %and4 to i8
  %conv6 = sext i8 %conv5 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call7 = call i32 @_IO_putc(i32 %conv6, %struct._IO_FILE* %3)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %4 = load i64, i64* %u.addr, align 8
  %shr11 = lshr i64 %4, 8
  %and12 = and i64 %shr11, 255
  %conv13 = trunc i64 %and12 to i8
  %conv14 = sext i8 %conv13 to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call15 = call i32 @_IO_putc(i32 %conv14, %struct._IO_FILE* %5)
  %cmp16 = icmp eq i32 %call15, -1
  br i1 %cmp16, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.10
  %6 = load i64, i64* %u.addr, align 8
  %and19 = and i64 %6, 255
  %conv20 = trunc i64 %and19 to i8
  %conv21 = sext i8 %conv20 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call22 = call i32 @_IO_putc(i32 %conv21, %struct._IO_FILE* %7)
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.18, %lor.lhs.false.10, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
