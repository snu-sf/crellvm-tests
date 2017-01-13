; ModuleID = './MultiSource.Benchmarks.MallocBench/124.cfrac.pio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@stdout = external global %struct._IO_FILE*, align 8
@pzero = external global %struct.precisionType*, align 8

; Function Attrs: nounwind uwtable
define i32 @fputp(%struct._IO_FILE* %stream, %struct.precisionType* %p) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca %struct.precisionType*, align 8
  %res = alloca i32, align 4
  %chp = alloca i8*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.precisionType* %p, %struct.precisionType** %p.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %2 = bitcast %struct.precisionType* %1 to i16*
  %3 = load i16, i16* %2, align 2
  %inc = add i16 %3, 1
  store i16 %inc, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %5 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %call = call i8* @ptoa(%struct.precisionType* %5)
  store i8* %call, i8** %chp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load i8*, i8** %chp, align 8
  %call1 = call i32 @fouts(%struct._IO_FILE* %6, i8* %7)
  store i32 %call1, i32* %res, align 4
  %8 = load i8*, i8** %chp, align 8
  %call2 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %8)
  %9 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %cmp3 = icmp ne %struct.precisionType* %9, null
  br i1 %cmp3, label %land.lhs.true, label %land.end.11

land.lhs.true:                                    ; preds = %land.end
  %10 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %11 = bitcast %struct.precisionType* %10 to i16*
  %12 = load i16, i16* %11, align 2
  %dec = add i16 %12, -1
  store i16 %dec, i16* %11, align 2
  %conv5 = zext i16 %dec to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %land.rhs.8, label %land.end.11

land.rhs.8:                                       ; preds = %land.lhs.true
  %13 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %call9 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %13)
  %tobool10 = icmp ne i32 %call9, 0
  br label %land.end.11

land.end.11:                                      ; preds = %land.rhs.8, %land.lhs.true, %land.end
  %14 = phi i1 [ false, %land.lhs.true ], [ false, %land.end ], [ %tobool10, %land.rhs.8 ]
  %land.ext12 = zext i1 %14 to i32
  %15 = load i32, i32* %res, align 4
  ret i32 %15
}

declare i8* @ptoa(%struct.precisionType*) #1

; Function Attrs: nounwind uwtable
define internal i32 @fouts(%struct._IO_FILE* %stream, i8* %chp) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %chp.addr = alloca i8*, align 8
  %count = alloca i32, align 4
  %res = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %chp, i8** %chp.addr, align 8
  store i32 0, i32* %count, align 4
  store i32 0, i32* %res, align 4
  %0 = load i8*, i8** %chp.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %chp.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then
  %3 = load i32, i32* %count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %count, align 4
  %4 = load i8*, i8** %chp.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv3, %struct._IO_FILE* %6)
  store i32 %call, i32* %res, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i8*, i8** %chp.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %chp.addr, align 8
  %8 = load i8, i8* %incdec.ptr, align 1
  %conv4 = sext i8 %8 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %9 = load i32, i32* %res, align 4
  %cmp7 = icmp ne i32 %9, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %10 = phi i1 [ false, %do.cond ], [ %cmp7, %land.rhs ]
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true, %entry
  %11 = load i32, i32* %res, align 4
  %cmp9 = icmp ne i32 %11, -1
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %12 = load i32, i32* %count, align 4
  store i32 %12, i32* %res, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %13 = load i32, i32* %res, align 4
  ret i32 %13
}

declare i32 @free(...) #1

declare i32 @pfree(...) #1

; Function Attrs: nounwind uwtable
define i32 @putp(%struct.precisionType* %p) #0 {
entry:
  %p.addr = alloca %struct.precisionType*, align 8
  %res = alloca i32, align 4
  %chp = alloca i8*, align 8
  store %struct.precisionType* %p, %struct.precisionType** %p.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %2 = bitcast %struct.precisionType* %1 to i16*
  %3 = load i16, i16* %2, align 2
  %inc = add i16 %3, 1
  store i16 %inc, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %5 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %call = call i8* @ptoa(%struct.precisionType* %5)
  store i8* %call, i8** %chp, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %chp, align 8
  %call1 = call i32 @fouts(%struct._IO_FILE* %6, i8* %7)
  store i32 %call1, i32* %res, align 4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  store i32 %call2, i32* %res, align 4
  %9 = load i8*, i8** %chp, align 8
  %call3 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %9)
  %10 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %cmp4 = icmp ne %struct.precisionType* %10, null
  br i1 %cmp4, label %land.lhs.true, label %land.end.12

land.lhs.true:                                    ; preds = %land.end
  %11 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %12 = bitcast %struct.precisionType* %11 to i16*
  %13 = load i16, i16* %12, align 2
  %dec = add i16 %13, -1
  store i16 %dec, i16* %12, align 2
  %conv6 = zext i16 %dec to i32
  %cmp7 = icmp eq i32 %conv6, 0
  br i1 %cmp7, label %land.rhs.9, label %land.end.12

land.rhs.9:                                       ; preds = %land.lhs.true
  %14 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %call10 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br label %land.end.12

land.end.12:                                      ; preds = %land.rhs.9, %land.lhs.true, %land.end
  %15 = phi i1 [ false, %land.lhs.true ], [ false, %land.end ], [ %tobool11, %land.rhs.9 ]
  %land.ext13 = zext i1 %15 to i32
  %16 = load i32, i32* %res, align 4
  ret i32 %16
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define i32 @fprintp(%struct._IO_FILE* %stream, %struct.precisionType* %p, i32 %minWidth) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca %struct.precisionType*, align 8
  %minWidth.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %chp = alloca i8*, align 8
  %len = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.precisionType* %p, %struct.precisionType** %p.addr, align 8
  store i32 %minWidth, i32* %minWidth.addr, align 4
  %0 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %2 = bitcast %struct.precisionType* %1 to i16*
  %3 = load i16, i16* %2, align 2
  %inc = add i16 %3, 1
  store i16 %inc, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %5 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %call = call i8* @ptoa(%struct.precisionType* %5)
  store i8* %call, i8** %chp, align 8
  %6 = load i8*, i8** %chp, align 8
  %call1 = call i64 @strlen(i8* %6) #4
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len, align 4
  %7 = load i32, i32* %minWidth.addr, align 4
  %cmp3 = icmp slt i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %9 = load i8*, i8** %chp, align 8
  %call5 = call i32 @fouts(%struct._IO_FILE* %8, i8* %9)
  store i32 %call5, i32* %res, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %10 = load i32, i32* %minWidth.addr, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, i32* %minWidth.addr, align 4
  %11 = load i32, i32* %len, align 4
  %sub = sub nsw i32 0, %11
  %cmp7 = icmp slt i32 %10, %sub
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call9 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %12)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.else:                                          ; preds = %land.end
  br label %while.cond.10

while.cond.10:                                    ; preds = %while.body.13, %if.else
  %13 = load i32, i32* %minWidth.addr, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %minWidth.addr, align 4
  %14 = load i32, i32* %len, align 4
  %cmp11 = icmp sgt i32 %13, %14
  br i1 %cmp11, label %while.body.13, label %while.end.15

while.body.13:                                    ; preds = %while.cond.10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %15)
  br label %while.cond.10

while.end.15:                                     ; preds = %while.cond.10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %17 = load i8*, i8** %chp, align 8
  %call16 = call i32 @fouts(%struct._IO_FILE* %16, i8* %17)
  store i32 %call16, i32* %res, align 4
  br label %if.end

if.end:                                           ; preds = %while.end.15, %while.end
  %18 = load i8*, i8** %chp, align 8
  %call17 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %18)
  %19 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %cmp18 = icmp ne %struct.precisionType* %19, null
  br i1 %cmp18, label %land.lhs.true, label %land.end.27

land.lhs.true:                                    ; preds = %if.end
  %20 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %21 = bitcast %struct.precisionType* %20 to i16*
  %22 = load i16, i16* %21, align 2
  %dec20 = add i16 %22, -1
  store i16 %dec20, i16* %21, align 2
  %conv21 = zext i16 %dec20 to i32
  %cmp22 = icmp eq i32 %conv21, 0
  br i1 %cmp22, label %land.rhs.24, label %land.end.27

land.rhs.24:                                      ; preds = %land.lhs.true
  %23 = load %struct.precisionType*, %struct.precisionType** %p.addr, align 8
  %call25 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %23)
  %tobool26 = icmp ne i32 %call25, 0
  br label %land.end.27

land.end.27:                                      ; preds = %land.rhs.24, %land.lhs.true, %if.end
  %24 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool26, %land.rhs.24 ]
  %land.ext28 = zext i1 %24 to i32
  %25 = load i32, i32* %res, align 4
  ret i32 %25
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.precisionType* @fgetp(%struct._IO_FILE* %stream) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %res = alloca %struct.precisionType*, align 8
  %clump = alloca %struct.precisionType*, align 8
  %sign = alloca i32, align 4
  %ch = alloca i32, align 4
  %temp = alloca i32, align 4
  %x = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store %struct.precisionType* null, %struct.precisionType** %res, align 8
  store %struct.precisionType* null, %struct.precisionType** %clump, align 8
  store i32 0, i32* %sign, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  store i32 %call, i32* %ch, align 4
  %1 = load i32, i32* %ch, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %if.then, label %if.else.77

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i32, i32* %ch, align 4
  %idxprom = sext i32 %2 to i64
  %call1 = call i16** @__ctype_b_loc() #5
  %3 = load i16*, i16** %call1, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call2, i32* %ch, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %ch, align 4
  %cmp3 = icmp eq i32 %6, 45
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %while.end
  store i32 1, i32* %sign, align 4
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call6 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  store i32 %call6, i32* %ch, align 4
  br label %if.end.11

if.else:                                          ; preds = %while.end
  %8 = load i32, i32* %ch, align 4
  %cmp7 = icmp eq i32 %8, 43
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call10 = call i32 @_IO_getc(%struct._IO_FILE* %9)
  store i32 %call10, i32* %ch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.5
  %10 = load i32, i32* %ch, align 4
  %idxprom12 = sext i32 %10 to i64
  %call13 = call i16** @__ctype_b_loc() #5
  %11 = load i16*, i16** %call13, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %11, i64 %idxprom12
  %12 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %12 to i32
  %and16 = and i32 %conv15, 2048
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.69

if.then.18:                                       ; preds = %if.end.11
  %13 = load %struct.precisionType*, %struct.precisionType** @pzero, align 8
  %call19 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %13)
  %call20 = call %struct.precisionType* @utop(i32 1000000000)
  %call21 = call %struct.precisionType* @psetq(%struct.precisionType** %clump, %struct.precisionType* %call20)
  br label %do.body

do.body:                                          ; preds = %do.cond.39, %if.then.18
  store i32 8, i32* %j, align 4
  %14 = load i32, i32* %ch, align 4
  %sub = sub nsw i32 %14, 48
  store i32 %sub, i32* %temp, align 4
  br label %do.body.22

do.body.22:                                       ; preds = %do.cond, %do.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call23 = call i32 @_IO_getc(%struct._IO_FILE* %15)
  store i32 %call23, i32* %ch, align 4
  %idxprom24 = sext i32 %call23 to i64
  %call25 = call i16** @__ctype_b_loc() #5
  %16 = load i16*, i16** %call25, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %16, i64 %idxprom24
  %17 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %17 to i32
  %and28 = and i32 %conv27, 2048
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %do.body.22
  br label %atoplast

if.end.31:                                        ; preds = %do.body.22
  %18 = load i32, i32* %temp, align 4
  %mul = mul i32 %18, 10
  %19 = load i32, i32* %ch, align 4
  %sub32 = sub nsw i32 %19, 48
  %add = add i32 %mul, %sub32
  store i32 %add, i32* %temp, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.31
  %20 = load i32, i32* %j, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %j, align 4
  %cmp33 = icmp sgt i32 %dec, 0
  br i1 %cmp33, label %do.body.22, label %do.end

do.end:                                           ; preds = %do.cond
  %21 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %22 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %call35 = call %struct.precisionType* @pmul(%struct.precisionType* %21, %struct.precisionType* %22)
  %23 = load i32, i32* %temp, align 4
  %call36 = call %struct.precisionType* @utop(i32 %23)
  %call37 = call %struct.precisionType* @padd(%struct.precisionType* %call35, %struct.precisionType* %call36)
  %call38 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %call37)
  br label %do.cond.39

do.cond.39:                                       ; preds = %do.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call40 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  store i32 %call40, i32* %ch, align 4
  %idxprom41 = sext i32 %call40 to i64
  %call42 = call i16** @__ctype_b_loc() #5
  %25 = load i16*, i16** %call42, align 8
  %arrayidx43 = getelementptr inbounds i16, i16* %25, i64 %idxprom41
  %26 = load i16, i16* %arrayidx43, align 2
  %conv44 = zext i16 %26 to i32
  %and45 = and i32 %conv44, 2048
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %do.body, label %do.end.47

do.end.47:                                        ; preds = %do.cond.39
  br label %atopdone

atoplast:                                         ; preds = %if.then.30
  store i32 10, i32* %x, align 4
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.51, %atoplast
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  %cmp49 = icmp slt i32 %27, 8
  br i1 %cmp49, label %while.body.51, label %while.end.53

while.body.51:                                    ; preds = %while.cond.48
  %28 = load i32, i32* %x, align 4
  %mul52 = mul i32 %28, 10
  store i32 %mul52, i32* %x, align 4
  br label %while.cond.48

while.end.53:                                     ; preds = %while.cond.48
  %29 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %30 = load i32, i32* %x, align 4
  %call54 = call %struct.precisionType* @utop(i32 %30)
  %call55 = call %struct.precisionType* @pmul(%struct.precisionType* %29, %struct.precisionType* %call54)
  %31 = load i32, i32* %temp, align 4
  %call56 = call %struct.precisionType* @utop(i32 %31)
  %call57 = call %struct.precisionType* @padd(%struct.precisionType* %call55, %struct.precisionType* %call56)
  %call58 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %call57)
  br label %atopdone

atopdone:                                         ; preds = %while.end.53, %do.end.47
  %32 = load i32, i32* %ch, align 4
  %cmp59 = icmp ne i32 %32, -1
  br i1 %cmp59, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %atopdone
  %33 = load i32, i32* %ch, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call62 = call i32 @ungetc(i32 %33, %struct._IO_FILE* %34)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %atopdone
  %35 = load i32, i32* %sign, align 4
  %tobool64 = icmp ne i32 %35, 0
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.63
  %36 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %call66 = call %struct.precisionType* @pneg(%struct.precisionType* %36)
  %call67 = call %struct.precisionType* @psetq(%struct.precisionType** %res, %struct.precisionType* %call66)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.63
  br label %if.end.76

if.else.69:                                       ; preds = %if.end.11
  %37 = load i32, i32* %ch, align 4
  %cmp70 = icmp eq i32 %37, -1
  br i1 %cmp70, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %if.else.69
  store %struct.precisionType* null, %struct.precisionType** %res, align 8
  br label %if.end.75

if.else.73:                                       ; preds = %if.else.69
  %38 = load i32, i32* %ch, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call74 = call i32 @ungetc(i32 %38, %struct._IO_FILE* %39)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.end.68
  br label %if.end.78

if.else.77:                                       ; preds = %entry
  store %struct.precisionType* null, %struct.precisionType** %res, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.end.76
  %40 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %cmp79 = icmp ne %struct.precisionType* %40, null
  br i1 %cmp79, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %if.end.78
  %41 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %42 = bitcast %struct.precisionType* %41 to i16*
  %43 = load i16, i16* %42, align 2
  %dec81 = add i16 %43, -1
  store i16 %dec81, i16* %42, align 2
  %conv82 = zext i16 %dec81 to i32
  %cmp83 = icmp eq i32 %conv82, 0
  br i1 %cmp83, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %44 = load %struct.precisionType*, %struct.precisionType** %clump, align 8
  %call85 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %44)
  %tobool86 = icmp ne i32 %call85, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %if.end.78
  %45 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.78 ], [ %tobool86, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  %46 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %cmp87 = icmp eq %struct.precisionType* %46, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %land.end
  %47 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  store %struct.precisionType* %47, %struct.precisionType** %retval
  br label %return

if.end.90:                                        ; preds = %land.end
  %48 = load %struct.precisionType*, %struct.precisionType** %res, align 8
  %call91 = call %struct.precisionType* @presult(%struct.precisionType* %48)
  store %struct.precisionType* %call91, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.then.89
  %49 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %49
}

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

declare %struct.precisionType* @psetq(%struct.precisionType**, %struct.precisionType*) #1

declare %struct.precisionType* @utop(i32) #1

declare %struct.precisionType* @padd(%struct.precisionType*, %struct.precisionType*) #1

declare %struct.precisionType* @pmul(%struct.precisionType*, %struct.precisionType*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

declare %struct.precisionType* @pneg(%struct.precisionType*) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
