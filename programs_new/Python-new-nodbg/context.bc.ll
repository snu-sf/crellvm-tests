; ModuleID = './context.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpd_context_t = type { i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@mpd_traphandler = hidden global void (%struct.mpd_context_t*)* @mpd_dflt_traphandler, align 8
@mpd_setminalloc.minalloc_is_set = internal global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"%s:%d: warning: \00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"/home/juneyoung.lee/tmp/Python-3.4.1/Modules/_decimal/libmpdec/context.c\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"mpd_setminalloc: ignoring request to set MPD_MINALLOC a second time\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s:%d: error: \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"illegal value for MPD_MINALLOC\00", align 1
@MPD_MINALLOC = external hidden global i64, align 8

; Function Attrs: nounwind uwtable
define hidden void @mpd_dflt_traphandler(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %call = call i32 @raise(i32 8) #4
  ret void
}

; Function Attrs: nounwind
declare i32 @raise(i32) #1

; Function Attrs: nounwind uwtable
define hidden void @mpd_setminalloc(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i32, i32* @mpd_setminalloc.minalloc_is_set, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i32 0, i32 0), i32 55)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fputc(i32 10, %struct._IO_FILE* %3)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %n.addr, align 8
  %cmp = icmp slt i64 %4, 2
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i64, i64* %n.addr, align 8
  %cmp3 = icmp sgt i64 %5, 64
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i32 0, i32 0), i32 59)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 @fputc(i32 10, %struct._IO_FILE* %8)
  call void @abort() #5
  unreachable

do.end.9:                                         ; No predecessors!
  br label %if.end.10

if.end.10:                                        ; preds = %do.end.9, %lor.lhs.false
  %9 = load i64, i64* %n.addr, align 8
  store i64 %9, i64* @MPD_MINALLOC, align 8
  store i32 1, i32* @mpd_setminalloc.minalloc_is_set, align 4
  br label %return

return:                                           ; preds = %if.end.10, %do.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind uwtable
define hidden void @mpd_init(%struct.mpd_context_t* %ctx, i64 %prec) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %prec.addr = alloca i64, align 8
  %ideal_minalloc = alloca i64, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i64 %prec, i64* %prec.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void @mpd_defaultcontext(%struct.mpd_context_t* %0)
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %2 = load i64, i64* %prec.addr, align 8
  %call = call i32 @mpd_qsetprec(%struct.mpd_context_t* %1, i64 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void @mpd_addstatus_raise(%struct.mpd_context_t* %3, i32 128)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %prec.addr, align 8
  %add = add i64 %4, 19
  %sub = sub i64 %add, 1
  %div = sdiv i64 %sub, 19
  %mul = mul i64 2, %div
  store i64 %mul, i64* %ideal_minalloc, align 8
  %5 = load i64, i64* %ideal_minalloc, align 8
  %cmp = icmp slt i64 %5, 2
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i64 2, i64* %ideal_minalloc, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %6 = load i64, i64* %ideal_minalloc, align 8
  %cmp3 = icmp sgt i64 %6, 64
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  store i64 64, i64* %ideal_minalloc, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %7 = load i64, i64* %ideal_minalloc, align 8
  call void @mpd_setminalloc(i64 %7)
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mpd_defaultcontext(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0
  store i64 38, i64* %prec, align 8
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 1
  store i64 999999999999999999, i64* %emax, align 8
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 2
  store i64 -999999999999999999, i64* %emin, align 8
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6
  store i32 4, i32* %round, align 4
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3
  store i32 19390, i32* %traps, align 4
  %5 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %5, i32 0, i32 4
  store i32 0, i32* %status, align 4
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 5
  store i32 0, i32* %newtrap, align 4
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 7
  store i32 0, i32* %clamp, align 4
  %8 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %8, i32 0, i32 8
  store i32 1, i32* %allcr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetprec(%struct.mpd_context_t* %ctx, i64 %prec) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %prec.addr = alloca i64, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i64 %prec, i64* %prec.addr, align 8
  %0 = load i64, i64* %prec.addr, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %prec.addr, align 8
  %cmp1 = icmp sgt i64 %1, 999999999999999999
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %prec.addr, align 8
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 0
  store i64 %2, i64* %prec2, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden void @mpd_addstatus_raise(%struct.mpd_context_t* %ctx, i32 %flags) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 4
  %2 = load i32, i32* %status, align 4
  %or = or i32 %2, %0
  store i32 %or, i32* %status, align 4
  %3 = load i32, i32* %flags.addr, align 4
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3
  %5 = load i32, i32* %traps, align 4
  %and = and i32 %3, %5
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %flags.addr, align 4
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps1 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 3
  %8 = load i32, i32* %traps1, align 4
  %and2 = and i32 %6, %8
  %9 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %9, i32 0, i32 5
  store i32 %and2, i32* %newtrap, align 4
  %10 = load void (%struct.mpd_context_t*)*, void (%struct.mpd_context_t*)** @mpd_traphandler, align 8
  %11 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  call void %10(%struct.mpd_context_t* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mpd_maxcontext(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0
  store i64 999999999999999999, i64* %prec, align 8
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 1
  store i64 999999999999999999, i64* %emax, align 8
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 2
  store i64 -999999999999999999, i64* %emin, align 8
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6
  store i32 6, i32* %round, align 4
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3
  store i32 19390, i32* %traps, align 4
  %5 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %5, i32 0, i32 4
  store i32 0, i32* %status, align 4
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 5
  store i32 0, i32* %newtrap, align 4
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 7
  store i32 0, i32* %clamp, align 4
  %8 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %8, i32 0, i32 8
  store i32 1, i32* %allcr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @mpd_basiccontext(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0
  store i64 9, i64* %prec, align 8
  %1 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %1, i32 0, i32 1
  store i64 999999999999999999, i64* %emax, align 8
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 2
  store i64 -999999999999999999, i64* %emin, align 8
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6
  store i32 4, i32* %round, align 4
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 3
  store i32 19391, i32* %traps, align 4
  %5 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %5, i32 0, i32 4
  store i32 0, i32* %status, align 4
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 5
  store i32 0, i32* %newtrap, align 4
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 7
  store i32 0, i32* %clamp, align 4
  %8 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %8, i32 0, i32 8
  store i32 1, i32* %allcr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_ieee_context(%struct.mpd_context_t* %ctx, i32 %bits) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %bits.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32 %bits, i32* %bits.addr, align 4
  %0 = load i32, i32* %bits.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %bits.addr, align 4
  %cmp1 = icmp sgt i32 %1, 512
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %bits.addr, align 4
  %rem = srem i32 %2, 32
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %3 = load i32, i32* %bits.addr, align 4
  %div = sdiv i32 %3, 32
  %mul = mul i32 9, %div
  %sub = sub i32 %mul, 2
  %conv = sext i32 %sub to i64
  %4 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %4, i32 0, i32 0
  store i64 %conv, i64* %prec, align 8
  %5 = load i32, i32* %bits.addr, align 4
  %div3 = sdiv i32 %5, 16
  %add = add i32 %div3, 3
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 1, %sh_prom
  %mul4 = mul i64 3, %shl
  %6 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %6, i32 0, i32 1
  store i64 %mul4, i64* %emax, align 8
  %7 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emax5 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %7, i32 0, i32 1
  %8 = load i64, i64* %emax5, align 8
  %sub6 = sub i64 1, %8
  %9 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %9, i32 0, i32 2
  store i64 %sub6, i64* %emin, align 8
  %10 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %10, i32 0, i32 6
  store i32 6, i32* %round, align 4
  %11 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %11, i32 0, i32 3
  store i32 0, i32* %traps, align 4
  %12 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %12, i32 0, i32 4
  store i32 0, i32* %status, align 4
  %13 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %newtrap = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %13, i32 0, i32 5
  store i32 0, i32* %newtrap, align 4
  %14 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %14, i32 0, i32 7
  store i32 1, i32* %clamp, align 4
  %15 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %15, i32 0, i32 8
  store i32 1, i32* %allcr, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_getprec(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %prec = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 0
  %1 = load i64, i64* %prec, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_getemax(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emax = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 1
  %1 = load i64, i64* %emax, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define hidden i64 @mpd_getemin(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emin = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 2
  %1 = load i64, i64* %emin, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getround(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %round = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 6
  %1 = load i32, i32* %round, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_gettraps(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 3
  %1 = load i32, i32* %traps, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getstatus(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 4
  %1 = load i32, i32* %status, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getclamp(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 7
  %1 = load i32, i32* %clamp, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_getcr(%struct.mpd_context_t* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  %0 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %0, i32 0, i32 8
  %1 = load i32, i32* %allcr, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetemax(%struct.mpd_context_t* %ctx, i64 %emax) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %emax.addr = alloca i64, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i64 %emax, i64* %emax.addr, align 8
  %0 = load i64, i64* %emax.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %emax.addr, align 8
  %cmp1 = icmp sgt i64 %1, 999999999999999999
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %emax.addr, align 8
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emax2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 1
  store i64 %2, i64* %emax2, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetemin(%struct.mpd_context_t* %ctx, i64 %emin) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %emin.addr = alloca i64, align 8
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i64 %emin, i64* %emin.addr, align 8
  %0 = load i64, i64* %emin.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %emin.addr, align 8
  %cmp1 = icmp slt i64 %1, -999999999999999999
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i64, i64* %emin.addr, align 8
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %emin2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 2
  store i64 %2, i64* %emin2, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetround(%struct.mpd_context_t* %ctx, i32 %round) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %round.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32 %round, i32* %round.addr, align 4
  %0 = load i32, i32* %round.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %round.addr, align 4
  %cmp1 = icmp slt i32 %1, 9
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %2 = load i32, i32* %round.addr, align 4
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %round2 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 6
  store i32 %2, i32* %round2, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsettraps(%struct.mpd_context_t* %ctx, i32 %traps) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %traps.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32 %traps, i32* %traps.addr, align 4
  %0 = load i32, i32* %traps.addr, align 4
  %cmp = icmp ugt i32 %0, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %traps.addr, align 4
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %traps1 = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 3
  store i32 %1, i32* %traps1, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetstatus(%struct.mpd_context_t* %ctx, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %cmp = icmp ugt i32 %0, 32767
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %flags.addr, align 4
  %2 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %status = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %2, i32 0, i32 4
  store i32 %1, i32* %status, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetclamp(%struct.mpd_context_t* %ctx, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %c.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %clamp = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 7
  store i32 %2, i32* %clamp, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define hidden i32 @mpd_qsetcr(%struct.mpd_context_t* %ctx, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca %struct.mpd_context_t*, align 8
  %c.addr = alloca i32, align 4
  store %struct.mpd_context_t* %ctx, %struct.mpd_context_t** %ctx.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %c.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %c.addr, align 4
  %3 = load %struct.mpd_context_t*, %struct.mpd_context_t** %ctx.addr, align 8
  %allcr = getelementptr inbounds %struct.mpd_context_t, %struct.mpd_context_t* %3, i32 0, i32 8
  store i32 %2, i32* %allcr, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
