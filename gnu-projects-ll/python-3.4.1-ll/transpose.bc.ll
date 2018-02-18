; ModuleID = './transpose.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s:%d: error: \00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"/home/juneyoung.lee/tmp/Python-3.4.1/Modules/_decimal/libmpdec/typearith.h\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"mul_size_t(): overflow: check the context\00", align 1
@mpd_bits = external hidden constant [0 x i64], align 8
@mpd_free = external hidden global void (i8*)*, align 8

; Function Attrs: nounwind uwtable
define hidden void @std_trans(i64* %dest, i64* %src, i64 %rows, i64 %cols) #0 {
entry:
  %dest.addr = alloca i64*, align 8
  %src.addr = alloca i64*, align 8
  %rows.addr = alloca i64, align 8
  %cols.addr = alloca i64, align 8
  %idest = alloca i64, align 8
  %isrc = alloca i64, align 8
  %r = alloca i64, align 8
  %c = alloca i64, align 8
  store i64* %dest, i64** %dest.addr, align 8
  store i64* %src, i64** %src.addr, align 8
  store i64 %rows, i64* %rows.addr, align 8
  store i64 %cols, i64* %cols.addr, align 8
  store i64 0, i64* %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i64, i64* %r, align 8
  %1 = load i64, i64* %rows.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %r, align 8
  %3 = load i64, i64* %cols.addr, align 8
  %mul = mul i64 %2, %3
  store i64 %mul, i64* %isrc, align 8
  %4 = load i64, i64* %r, align 8
  store i64 %4, i64* %idest, align 8
  store i64 0, i64* %c, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i64, i64* %c, align 8
  %6 = load i64, i64* %cols.addr, align 8
  %cmp2 = icmp ult i64 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i64, i64* %isrc, align 8
  %8 = load i64*, i64** %src.addr, align 8
  %arrayidx = getelementptr i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i64, i64* %idest, align 8
  %11 = load i64*, i64** %dest.addr, align 8
  %arrayidx4 = getelementptr i64, i64* %11, i64 %10
  store i64 %9, i64* %arrayidx4, align 8
  %12 = load i64, i64* %isrc, align 8
  %add = add i64 %12, 1
  store i64 %add, i64* %isrc, align 8
  %13 = load i64, i64* %rows.addr, align 8
  %14 = load i64, i64* %idest, align 8
  %add5 = add i64 %14, %13
  store i64 %add5, i64* %idest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %15 = load i64, i64* %c, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %c, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %16 = load i64, i64* %r, align 8
  %inc7 = add i64 %16, 1
  store i64 %inc7, i64* %r, align 8
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @transpose_pow2(i64* %matrix, i64 %rows, i64 %cols) #0 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca i64*, align 8
  %rows.addr = alloca i64, align 8
  %cols.addr = alloca i64, align 8
  %size = alloca i64, align 8
  store i64* %matrix, i64** %matrix.addr, align 8
  store i64 %rows, i64* %rows.addr, align 8
  store i64 %cols, i64* %cols.addr, align 8
  %0 = load i64, i64* %rows.addr, align 8
  %1 = load i64, i64* %cols.addr, align 8
  %call = call i64 @mul_size_t(i64 %0, i64 %1)
  store i64 %call, i64* %size, align 8
  %2 = load i64, i64* %cols.addr, align 8
  %3 = load i64, i64* %rows.addr, align 8
  %cmp = icmp eq i64 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i64*, i64** %matrix.addr, align 8
  %5 = load i64, i64* %rows.addr, align 8
  call void @squaretrans_pow2(i64* %4, i64 %5)
  br label %if.end.19

if.else:                                          ; preds = %entry
  %6 = load i64, i64* %cols.addr, align 8
  %7 = load i64, i64* %rows.addr, align 8
  %call1 = call i64 @mul_size_t(i64 2, i64 %7)
  %cmp2 = icmp eq i64 %6, %call1
  br i1 %cmp2, label %if.then.3, label %if.else.6

if.then.3:                                        ; preds = %if.else
  %8 = load i64*, i64** %matrix.addr, align 8
  %9 = load i64, i64* %rows.addr, align 8
  %10 = load i64, i64* %cols.addr, align 8
  %call4 = call i32 @swap_halfrows_pow2(i64* %8, i64 %9, i64 %10, i32 0)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then.3
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.3
  %11 = load i64*, i64** %matrix.addr, align 8
  %12 = load i64, i64* %rows.addr, align 8
  call void @squaretrans_pow2(i64* %11, i64 %12)
  %13 = load i64*, i64** %matrix.addr, align 8
  %14 = load i64, i64* %size, align 8
  %div = udiv i64 %14, 2
  %add.ptr = getelementptr i64, i64* %13, i64 %div
  %15 = load i64, i64* %rows.addr, align 8
  call void @squaretrans_pow2(i64* %add.ptr, i64 %15)
  br label %if.end.18

if.else.6:                                        ; preds = %if.else
  %16 = load i64, i64* %rows.addr, align 8
  %17 = load i64, i64* %cols.addr, align 8
  %call7 = call i64 @mul_size_t(i64 2, i64 %17)
  %cmp8 = icmp eq i64 %16, %call7
  br i1 %cmp8, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.else.6
  %18 = load i64*, i64** %matrix.addr, align 8
  %19 = load i64, i64* %cols.addr, align 8
  call void @squaretrans_pow2(i64* %18, i64 %19)
  %20 = load i64*, i64** %matrix.addr, align 8
  %21 = load i64, i64* %size, align 8
  %div10 = udiv i64 %21, 2
  %add.ptr11 = getelementptr i64, i64* %20, i64 %div10
  %22 = load i64, i64* %cols.addr, align 8
  call void @squaretrans_pow2(i64* %add.ptr11, i64 %22)
  %23 = load i64*, i64** %matrix.addr, align 8
  %24 = load i64, i64* %cols.addr, align 8
  %25 = load i64, i64* %rows.addr, align 8
  %call12 = call i32 @swap_halfrows_pow2(i64* %23, i64 %24, i64 %25, i32 1)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.9
  br label %if.end.17

if.else.16:                                       ; preds = %if.else.6
  call void @abort() #5
  unreachable

if.end.17:                                        ; preds = %if.end.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.14, %if.then.5
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @mul_size_t(i64 %a, i64 %b) #1 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %0, i64 %1)
  %2 = load i64, i64* %hi, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i32 0, i32 0), i32 620)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fputc(i32 10, %struct._IO_FILE* %5)
  call void @abort() #5
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %6 = load i64, i64* %lo, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define internal void @squaretrans_pow2(i64* %matrix, i64 %size) #0 {
entry:
  %matrix.addr = alloca i64*, align 8
  %size.addr = alloca i64, align 8
  %buf1 = alloca [16384 x i64], align 16
  %buf2 = alloca [16384 x i64], align 16
  %to = alloca i64*, align 8
  %from = alloca i64*, align 8
  %b = alloca i64, align 8
  %r = alloca i64, align 8
  %c = alloca i64, align 8
  %i = alloca i64, align 8
  store i64* %matrix, i64** %matrix.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  store i64 %0, i64* %b, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, i64* %b, align 8
  %cmp = icmp ugt i64 %1, 128
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %b, align 8
  %shr = lshr i64 %2, 1
  store i64 %shr, i64* %b, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %while.end
  %3 = load i64, i64* %r, align 8
  %4 = load i64, i64* %size.addr, align 8
  %cmp1 = icmp ult i64 %3, %4
  br i1 %cmp1, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %r, align 8
  store i64 %5, i64* %c, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.67, %for.body
  %6 = load i64, i64* %c, align 8
  %7 = load i64, i64* %size.addr, align 8
  %cmp3 = icmp ult i64 %6, %7
  br i1 %cmp3, label %for.body.4, label %for.end.68

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i64*, i64** %matrix.addr, align 8
  %9 = load i64, i64* %r, align 8
  %10 = load i64, i64* %size.addr, align 8
  %mul = mul i64 %9, %10
  %add.ptr = getelementptr i64, i64* %8, i64 %mul
  %11 = load i64, i64* %c, align 8
  %add.ptr5 = getelementptr i64, i64* %add.ptr, i64 %11
  store i64* %add.ptr5, i64** %from, align 8
  %arraydecay = getelementptr inbounds [16384 x i64], [16384 x i64]* %buf1, i32 0, i32 0
  store i64* %arraydecay, i64** %to, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body.4
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %b, align 8
  %cmp7 = icmp ult i64 %12, %13
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %14 = load i64*, i64** %to, align 8
  %15 = bitcast i64* %14 to i8*
  %16 = load i64*, i64** %from, align 8
  %17 = bitcast i64* %16 to i8*
  %18 = load i64, i64* %b, align 8
  %mul9 = mul i64 %18, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %17, i64 %mul9, i32 8, i1 false)
  %19 = load i64, i64* %size.addr, align 8
  %20 = load i64*, i64** %from, align 8
  %add.ptr10 = getelementptr i64, i64* %20, i64 %19
  store i64* %add.ptr10, i64** %from, align 8
  %21 = load i64, i64* %b, align 8
  %22 = load i64*, i64** %to, align 8
  %add.ptr11 = getelementptr i64, i64* %22, i64 %21
  store i64* %add.ptr11, i64** %to, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %arraydecay12 = getelementptr inbounds [16384 x i64], [16384 x i64]* %buf1, i32 0, i32 0
  %24 = load i64, i64* %b, align 8
  call void @squaretrans(i64* %arraydecay12, i64 %24)
  %25 = load i64, i64* %r, align 8
  %26 = load i64, i64* %c, align 8
  %cmp13 = icmp eq i64 %25, %26
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %27 = load i64*, i64** %matrix.addr, align 8
  %28 = load i64, i64* %r, align 8
  %29 = load i64, i64* %size.addr, align 8
  %mul14 = mul i64 %28, %29
  %add.ptr15 = getelementptr i64, i64* %27, i64 %mul14
  %30 = load i64, i64* %c, align 8
  %add.ptr16 = getelementptr i64, i64* %add.ptr15, i64 %30
  store i64* %add.ptr16, i64** %to, align 8
  %arraydecay17 = getelementptr inbounds [16384 x i64], [16384 x i64]* %buf1, i32 0, i32 0
  store i64* %arraydecay17, i64** %from, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %if.then
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %b, align 8
  %cmp19 = icmp ult i64 %31, %32
  br i1 %cmp19, label %for.body.20, label %for.end.26

for.body.20:                                      ; preds = %for.cond.18
  %33 = load i64*, i64** %to, align 8
  %34 = bitcast i64* %33 to i8*
  %35 = load i64*, i64** %from, align 8
  %36 = bitcast i64* %35 to i8*
  %37 = load i64, i64* %b, align 8
  %mul21 = mul i64 %37, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %36, i64 %mul21, i32 8, i1 false)
  %38 = load i64, i64* %b, align 8
  %39 = load i64*, i64** %from, align 8
  %add.ptr22 = getelementptr i64, i64* %39, i64 %38
  store i64* %add.ptr22, i64** %from, align 8
  %40 = load i64, i64* %size.addr, align 8
  %41 = load i64*, i64** %to, align 8
  %add.ptr23 = getelementptr i64, i64* %41, i64 %40
  store i64* %add.ptr23, i64** %to, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.20
  %42 = load i64, i64* %i, align 8
  %inc25 = add i64 %42, 1
  store i64 %inc25, i64* %i, align 8
  br label %for.cond.18

for.end.26:                                       ; preds = %for.cond.18
  br label %for.inc.67

if.else:                                          ; preds = %for.end
  %43 = load i64*, i64** %matrix.addr, align 8
  %44 = load i64, i64* %c, align 8
  %45 = load i64, i64* %size.addr, align 8
  %mul27 = mul i64 %44, %45
  %add.ptr28 = getelementptr i64, i64* %43, i64 %mul27
  %46 = load i64, i64* %r, align 8
  %add.ptr29 = getelementptr i64, i64* %add.ptr28, i64 %46
  store i64* %add.ptr29, i64** %from, align 8
  %arraydecay30 = getelementptr inbounds [16384 x i64], [16384 x i64]* %buf2, i32 0, i32 0
  store i64* %arraydecay30, i64** %to, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.37, %if.else
  %47 = load i64, i64* %i, align 8
  %48 = load i64, i64* %b, align 8
  %cmp32 = icmp ult i64 %47, %48
  br i1 %cmp32, label %for.body.33, label %for.end.39

for.body.33:                                      ; preds = %for.cond.31
  %49 = load i64*, i64** %to, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = load i64*, i64** %from, align 8
  %52 = bitcast i64* %51 to i8*
  %53 = load i64, i64* %b, align 8
  %mul34 = mul i64 %53, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %52, i64 %mul34, i32 8, i1 false)
  %54 = load i64, i64* %size.addr, align 8
  %55 = load i64*, i64** %from, align 8
  %add.ptr35 = getelementptr i64, i64* %55, i64 %54
  store i64* %add.ptr35, i64** %from, align 8
  %56 = load i64, i64* %b, align 8
  %57 = load i64*, i64** %to, align 8
  %add.ptr36 = getelementptr i64, i64* %57, i64 %56
  store i64* %add.ptr36, i64** %to, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.33
  %58 = load i64, i64* %i, align 8
  %inc38 = add i64 %58, 1
  store i64 %inc38, i64* %i, align 8
  br label %for.cond.31

for.end.39:                                       ; preds = %for.cond.31
  %arraydecay40 = getelementptr inbounds [16384 x i64], [16384 x i64]* %buf2, i32 0, i32 0
  %59 = load i64, i64* %b, align 8
  call void @squaretrans(i64* %arraydecay40, i64 %59)
  %60 = load i64*, i64** %matrix.addr, align 8
  %61 = load i64, i64* %c, align 8
  %62 = load i64, i64* %size.addr, align 8
  %mul41 = mul i64 %61, %62
  %add.ptr42 = getelementptr i64, i64* %60, i64 %mul41
  %63 = load i64, i64* %r, align 8
  %add.ptr43 = getelementptr i64, i64* %add.ptr42, i64 %63
  store i64* %add.ptr43, i64** %to, align 8
  %arraydecay44 = getelementptr inbounds [16384 x i64], [16384 x i64]* %buf1, i32 0, i32 0
  store i64* %arraydecay44, i64** %from, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.51, %for.end.39
  %64 = load i64, i64* %i, align 8
  %65 = load i64, i64* %b, align 8
  %cmp46 = icmp ult i64 %64, %65
  br i1 %cmp46, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.45
  %66 = load i64*, i64** %to, align 8
  %67 = bitcast i64* %66 to i8*
  %68 = load i64*, i64** %from, align 8
  %69 = bitcast i64* %68 to i8*
  %70 = load i64, i64* %b, align 8
  %mul48 = mul i64 %70, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %69, i64 %mul48, i32 8, i1 false)
  %71 = load i64, i64* %b, align 8
  %72 = load i64*, i64** %from, align 8
  %add.ptr49 = getelementptr i64, i64* %72, i64 %71
  store i64* %add.ptr49, i64** %from, align 8
  %73 = load i64, i64* %size.addr, align 8
  %74 = load i64*, i64** %to, align 8
  %add.ptr50 = getelementptr i64, i64* %74, i64 %73
  store i64* %add.ptr50, i64** %to, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.47
  %75 = load i64, i64* %i, align 8
  %inc52 = add i64 %75, 1
  store i64 %inc52, i64* %i, align 8
  br label %for.cond.45

for.end.53:                                       ; preds = %for.cond.45
  %76 = load i64*, i64** %matrix.addr, align 8
  %77 = load i64, i64* %r, align 8
  %78 = load i64, i64* %size.addr, align 8
  %mul54 = mul i64 %77, %78
  %add.ptr55 = getelementptr i64, i64* %76, i64 %mul54
  %79 = load i64, i64* %c, align 8
  %add.ptr56 = getelementptr i64, i64* %add.ptr55, i64 %79
  store i64* %add.ptr56, i64** %to, align 8
  %arraydecay57 = getelementptr inbounds [16384 x i64], [16384 x i64]* %buf2, i32 0, i32 0
  store i64* %arraydecay57, i64** %from, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.64, %for.end.53
  %80 = load i64, i64* %i, align 8
  %81 = load i64, i64* %b, align 8
  %cmp59 = icmp ult i64 %80, %81
  br i1 %cmp59, label %for.body.60, label %for.end.66

for.body.60:                                      ; preds = %for.cond.58
  %82 = load i64*, i64** %to, align 8
  %83 = bitcast i64* %82 to i8*
  %84 = load i64*, i64** %from, align 8
  %85 = bitcast i64* %84 to i8*
  %86 = load i64, i64* %b, align 8
  %mul61 = mul i64 %86, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %83, i8* %85, i64 %mul61, i32 8, i1 false)
  %87 = load i64, i64* %b, align 8
  %88 = load i64*, i64** %from, align 8
  %add.ptr62 = getelementptr i64, i64* %88, i64 %87
  store i64* %add.ptr62, i64** %from, align 8
  %89 = load i64, i64* %size.addr, align 8
  %90 = load i64*, i64** %to, align 8
  %add.ptr63 = getelementptr i64, i64* %90, i64 %89
  store i64* %add.ptr63, i64** %to, align 8
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.60
  %91 = load i64, i64* %i, align 8
  %inc65 = add i64 %91, 1
  store i64 %inc65, i64* %i, align 8
  br label %for.cond.58

for.end.66:                                       ; preds = %for.cond.58
  br label %if.end

if.end:                                           ; preds = %for.end.66
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end, %for.end.26
  %92 = load i64, i64* %b, align 8
  %93 = load i64, i64* %c, align 8
  %add = add i64 %93, %92
  store i64 %add, i64* %c, align 8
  br label %for.cond.2

for.end.68:                                       ; preds = %for.cond.2
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %94 = load i64, i64* %b, align 8
  %95 = load i64, i64* %r, align 8
  %add70 = add i64 %95, %94
  store i64 %add70, i64* %r, align 8
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @swap_halfrows_pow2(i64* %matrix, i64 %rows, i64 %cols, i32 %dir) #0 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca i64*, align 8
  %rows.addr = alloca i64, align 8
  %cols.addr = alloca i64, align 8
  %dir.addr = alloca i32, align 4
  %buf1 = alloca [4096 x i64], align 16
  %buf2 = alloca [4096 x i64], align 16
  %readbuf = alloca i64*, align 8
  %writebuf = alloca i64*, align 8
  %hp = alloca i64*, align 8
  %done = alloca i64*, align 8
  %dbits = alloca i64, align 8
  %b = alloca i64, align 8
  %stride = alloca i64, align 8
  %hn = alloca i64, align 8
  %hmax = alloca i64, align 8
  %m = alloca i64, align 8
  %r = alloca i64, align 8
  %offset = alloca i64, align 8
  %next = alloca i64, align 8
  store i64* %matrix, i64** %matrix.addr, align 8
  store i64 %rows, i64* %rows.addr, align 8
  store i64 %cols, i64* %cols.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store i64 4096, i64* %b, align 8
  store i64 0, i64* %r, align 8
  %0 = load i32, i32* %dir.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %rows.addr, align 8
  store i64 %1, i64* %r, align 8
  br label %if.end.4

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %dir.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i64 2, i64* %r, align 8
  br label %if.end

if.else.3:                                        ; preds = %if.else
  call void @abort() #5
  unreachable

if.end:                                           ; preds = %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then
  %3 = load i64, i64* %cols.addr, align 8
  %sub = sub i64 %3, 1
  store i64 %sub, i64* %m, align 8
  %4 = load i64, i64* %rows.addr, align 8
  store i64 %4, i64* %hmax, align 8
  store i64 64, i64* %dbits, align 8
  %5 = load i64, i64* %hmax, align 8
  %div = udiv i64 %5, 8
  %add = add i64 %div, 1
  %call = call i8* @mpd_calloc(i64 %add, i64 8)
  %6 = bitcast i8* %call to i64*
  store i64* %6, i64** %done, align 8
  %cmp5 = icmp eq i64* %6, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  store i64 1, i64* %hn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.51, %if.end.7
  %7 = load i64, i64* %hn, align 8
  %8 = load i64, i64* %hmax, align 8
  %cmp8 = icmp ule i64 %7, %8
  br i1 %cmp8, label %for.body, label %for.end.53

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %hn, align 8
  %10 = load i64, i64* %dbits, align 8
  %div9 = udiv i64 %9, %10
  %11 = load i64*, i64** %done, align 8
  %arrayidx = getelementptr i64, i64* %11, i64 %div9
  %12 = load i64, i64* %arrayidx, align 8
  %13 = load i64, i64* %hn, align 8
  %14 = load i64, i64* %dbits, align 8
  %rem = urem i64 %13, %14
  %arrayidx10 = getelementptr [0 x i64], [0 x i64]* @mpd_bits, i32 0, i64 %rem
  %15 = load i64, i64* %arrayidx10, align 8
  %and = and i64 %12, %15
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  br label %for.inc.51

if.end.12:                                        ; preds = %for.body
  %arraydecay = getelementptr inbounds [4096 x i64], [4096 x i64]* %buf1, i32 0, i32 0
  store i64* %arraydecay, i64** %readbuf, align 8
  %arraydecay13 = getelementptr inbounds [4096 x i64], [4096 x i64]* %buf2, i32 0, i32 0
  store i64* %arraydecay13, i64** %writebuf, align 8
  store i64 0, i64* %offset, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.end.12
  %16 = load i64, i64* %offset, align 8
  %17 = load i64, i64* %cols.addr, align 8
  %div15 = udiv i64 %17, 2
  %cmp16 = icmp ult i64 %16, %div15
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %18 = load i64, i64* %offset, align 8
  %19 = load i64, i64* %b, align 8
  %add18 = add i64 %18, %19
  %20 = load i64, i64* %cols.addr, align 8
  %div19 = udiv i64 %20, 2
  %cmp20 = icmp ult i64 %add18, %div19
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.17
  %21 = load i64, i64* %b, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.17
  %22 = load i64, i64* %cols.addr, align 8
  %div21 = udiv i64 %22, 2
  %23 = load i64, i64* %offset, align 8
  %sub22 = sub i64 %div21, %23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %21, %cond.true ], [ %sub22, %cond.false ]
  store i64 %cond, i64* %stride, align 8
  %24 = load i64*, i64** %matrix.addr, align 8
  %25 = load i64, i64* %hn, align 8
  %26 = load i64, i64* %cols.addr, align 8
  %mul = mul i64 %25, %26
  %div23 = udiv i64 %mul, 2
  %add.ptr = getelementptr i64, i64* %24, i64 %div23
  store i64* %add.ptr, i64** %hp, align 8
  %27 = load i64*, i64** %readbuf, align 8
  %28 = bitcast i64* %27 to i8*
  %29 = load i64*, i64** %hp, align 8
  %30 = load i64, i64* %offset, align 8
  %add.ptr24 = getelementptr i64, i64* %29, i64 %30
  %31 = bitcast i64* %add.ptr24 to i8*
  %32 = load i64, i64* %stride, align 8
  %mul25 = mul i64 %32, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %31, i64 %mul25, i32 8, i1 false)
  call void @pointerswap(i64** %readbuf, i64** %writebuf)
  %33 = load i64, i64* %hn, align 8
  %34 = load i64, i64* %r, align 8
  %35 = load i64, i64* %m, align 8
  %call26 = call i64 @mulmod_size_t(i64 %33, i64 %34, i64 %35)
  store i64 %call26, i64* %next, align 8
  %36 = load i64*, i64** %matrix.addr, align 8
  %37 = load i64, i64* %next, align 8
  %38 = load i64, i64* %cols.addr, align 8
  %mul27 = mul i64 %37, %38
  %div28 = udiv i64 %mul27, 2
  %add.ptr29 = getelementptr i64, i64* %36, i64 %div28
  store i64* %add.ptr29, i64** %hp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %39 = load i64, i64* %next, align 8
  %40 = load i64, i64* %hn, align 8
  %cmp30 = icmp ne i64 %39, %40
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %41 = load i64*, i64** %readbuf, align 8
  %42 = bitcast i64* %41 to i8*
  %43 = load i64*, i64** %hp, align 8
  %44 = load i64, i64* %offset, align 8
  %add.ptr31 = getelementptr i64, i64* %43, i64 %44
  %45 = bitcast i64* %add.ptr31 to i8*
  %46 = load i64, i64* %stride, align 8
  %mul32 = mul i64 %46, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %45, i64 %mul32, i32 8, i1 false)
  %47 = load i64*, i64** %hp, align 8
  %48 = load i64, i64* %offset, align 8
  %add.ptr33 = getelementptr i64, i64* %47, i64 %48
  %49 = bitcast i64* %add.ptr33 to i8*
  %50 = load i64*, i64** %writebuf, align 8
  %51 = bitcast i64* %50 to i8*
  %52 = load i64, i64* %stride, align 8
  %mul34 = mul i64 %52, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %51, i64 %mul34, i32 8, i1 false)
  call void @pointerswap(i64** %readbuf, i64** %writebuf)
  %53 = load i64, i64* %next, align 8
  %54 = load i64, i64* %dbits, align 8
  %rem35 = urem i64 %53, %54
  %arrayidx36 = getelementptr [0 x i64], [0 x i64]* @mpd_bits, i32 0, i64 %rem35
  %55 = load i64, i64* %arrayidx36, align 8
  %56 = load i64, i64* %next, align 8
  %57 = load i64, i64* %dbits, align 8
  %div37 = udiv i64 %56, %57
  %58 = load i64*, i64** %done, align 8
  %arrayidx38 = getelementptr i64, i64* %58, i64 %div37
  %59 = load i64, i64* %arrayidx38, align 8
  %or = or i64 %59, %55
  store i64 %or, i64* %arrayidx38, align 8
  %60 = load i64, i64* %next, align 8
  %61 = load i64, i64* %r, align 8
  %62 = load i64, i64* %m, align 8
  %call39 = call i64 @mulmod_size_t(i64 %60, i64 %61, i64 %62)
  store i64 %call39, i64* %next, align 8
  %63 = load i64*, i64** %matrix.addr, align 8
  %64 = load i64, i64* %next, align 8
  %65 = load i64, i64* %cols.addr, align 8
  %mul40 = mul i64 %64, %65
  %div41 = udiv i64 %mul40, 2
  %add.ptr42 = getelementptr i64, i64* %63, i64 %div41
  store i64* %add.ptr42, i64** %hp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %66 = load i64*, i64** %hp, align 8
  %67 = load i64, i64* %offset, align 8
  %add.ptr43 = getelementptr i64, i64* %66, i64 %67
  %68 = bitcast i64* %add.ptr43 to i8*
  %69 = load i64*, i64** %writebuf, align 8
  %70 = bitcast i64* %69 to i8*
  %71 = load i64, i64* %stride, align 8
  %mul44 = mul i64 %71, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %70, i64 %mul44, i32 8, i1 false)
  %72 = load i64, i64* %hn, align 8
  %73 = load i64, i64* %dbits, align 8
  %rem45 = urem i64 %72, %73
  %arrayidx46 = getelementptr [0 x i64], [0 x i64]* @mpd_bits, i32 0, i64 %rem45
  %74 = load i64, i64* %arrayidx46, align 8
  %75 = load i64, i64* %hn, align 8
  %76 = load i64, i64* %dbits, align 8
  %div47 = udiv i64 %75, %76
  %77 = load i64*, i64** %done, align 8
  %arrayidx48 = getelementptr i64, i64* %77, i64 %div47
  %78 = load i64, i64* %arrayidx48, align 8
  %or49 = or i64 %78, %74
  store i64 %or49, i64* %arrayidx48, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %79 = load i64, i64* %b, align 8
  %80 = load i64, i64* %offset, align 8
  %add50 = add i64 %80, %79
  store i64 %add50, i64* %offset, align 8
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end, %if.then.11
  %81 = load i64, i64* %hn, align 8
  %add52 = add i64 %81, 2
  store i64 %add52, i64* %hn, align 8
  br label %for.cond

for.end.53:                                       ; preds = %for.cond
  %82 = load void (i8*)*, void (i8*)** @mpd_free, align 8
  %83 = load i64*, i64** %done, align 8
  %84 = bitcast i64* %83 to i8*
  call void %82(i8* %84)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.53, %if.then.6
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %a, i64 %b) #1 {
entry:
  %hi.addr = alloca i64*, align 8
  %lo.addr = alloca i64*, align 8
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %h = alloca i64, align 8
  %l = alloca i64, align 8
  store i64* %hi, i64** %hi.addr, align 8
  store i64* %lo, i64** %lo.addr, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  %2 = call { i64, i64 } asm "mulq $3\0A\09", "={dx},={ax},%{ax},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1) #6, !srcloc !2
  %asmresult = extractvalue { i64, i64 } %2, 0
  %asmresult1 = extractvalue { i64, i64 } %2, 1
  store i64 %asmresult, i64* %h, align 8
  store i64 %asmresult1, i64* %l, align 8
  %3 = load i64, i64* %h, align 8
  %4 = load i64*, i64** %hi.addr, align 8
  store i64 %3, i64* %4, align 8
  %5 = load i64, i64* %l, align 8
  %6 = load i64*, i64** %lo.addr, align 8
  store i64 %5, i64* %6, align 8
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @squaretrans(i64* %buf, i64 %cols) #1 {
entry:
  %buf.addr = alloca i64*, align 8
  %cols.addr = alloca i64, align 8
  %tmp = alloca i64, align 8
  %idest = alloca i64, align 8
  %isrc = alloca i64, align 8
  %r = alloca i64, align 8
  %c = alloca i64, align 8
  store i64* %buf, i64** %buf.addr, align 8
  store i64 %cols, i64* %cols.addr, align 8
  store i64 0, i64* %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i64, i64* %r, align 8
  %1 = load i64, i64* %cols.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %r, align 8
  %add = add i64 %2, 1
  store i64 %add, i64* %c, align 8
  %3 = load i64, i64* %r, align 8
  %4 = load i64, i64* %cols.addr, align 8
  %mul = mul i64 %3, %4
  %5 = load i64, i64* %c, align 8
  %add5 = add i64 %mul, %5
  store i64 %add5, i64* %isrc, align 8
  %6 = load i64, i64* %c, align 8
  %7 = load i64, i64* %cols.addr, align 8
  %mul6 = mul i64 %6, %7
  %8 = load i64, i64* %r, align 8
  %add7 = add i64 %mul6, %8
  store i64 %add7, i64* %idest, align 8
  %9 = load i64, i64* %r, align 8
  %add8 = add i64 %9, 1
  store i64 %add8, i64* %c, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %10 = load i64, i64* %c, align 8
  %11 = load i64, i64* %cols.addr, align 8
  %cmp10 = icmp ult i64 %10, %11
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %12 = load i64, i64* %isrc, align 8
  %13 = load i64*, i64** %buf.addr, align 8
  %arrayidx = getelementptr i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx, align 8
  store i64 %14, i64* %tmp, align 8
  %15 = load i64, i64* %idest, align 8
  %16 = load i64*, i64** %buf.addr, align 8
  %arrayidx12 = getelementptr i64, i64* %16, i64 %15
  %17 = load i64, i64* %arrayidx12, align 8
  %18 = load i64, i64* %isrc, align 8
  %19 = load i64*, i64** %buf.addr, align 8
  %arrayidx13 = getelementptr i64, i64* %19, i64 %18
  store i64 %17, i64* %arrayidx13, align 8
  %20 = load i64, i64* %tmp, align 8
  %21 = load i64, i64* %idest, align 8
  %22 = load i64*, i64** %buf.addr, align 8
  %arrayidx14 = getelementptr i64, i64* %22, i64 %21
  store i64 %20, i64* %arrayidx14, align 8
  %23 = load i64, i64* %isrc, align 8
  %add15 = add i64 %23, 1
  store i64 %add15, i64* %isrc, align 8
  %24 = load i64, i64* %cols.addr, align 8
  %25 = load i64, i64* %idest, align 8
  %add16 = add i64 %25, %24
  store i64 %add16, i64* %idest, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %26 = load i64, i64* %c, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %c, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %27 = load i64, i64* %r, align 8
  %inc18 = add i64 %27, 1
  store i64 %inc18, i64* %r, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret void
}

declare hidden i8* @mpd_calloc(i64, i64) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @pointerswap(i64** %a, i64** %b) #1 {
entry:
  %a.addr = alloca i64**, align 8
  %b.addr = alloca i64**, align 8
  %tmp = alloca i64*, align 8
  store i64** %a, i64*** %a.addr, align 8
  store i64** %b, i64*** %b.addr, align 8
  %0 = load i64**, i64*** %b.addr, align 8
  %1 = load i64*, i64** %0, align 8
  store i64* %1, i64** %tmp, align 8
  %2 = load i64**, i64*** %a.addr, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = load i64**, i64*** %b.addr, align 8
  store i64* %3, i64** %4, align 8
  %5 = load i64*, i64** %tmp, align 8
  %6 = load i64**, i64*** %a.addr, align 8
  store i64* %5, i64** %6, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @mulmod_size_t(i64 %a, i64 %b, i64 %m) #1 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %m.addr = alloca i64, align 8
  %hi = alloca i64, align 8
  %lo = alloca i64, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %m, i64* %m.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  %1 = load i64, i64* %b.addr, align 8
  call void @_mpd_mul_words(i64* %hi, i64* %lo, i64 %0, i64 %1)
  %2 = load i64, i64* %hi, align 8
  %3 = load i64, i64* %lo, align 8
  %4 = load i64, i64* %m.addr, align 8
  call void @_mpd_div_words(i64* %q, i64* %r, i64 %2, i64 %3, i64 %4)
  %5 = load i64, i64* %r, align 8
  ret i64 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_mpd_div_words(i64* %q, i64* %r, i64 %hi, i64 %lo, i64 %d) #1 {
entry:
  %q.addr = alloca i64*, align 8
  %r.addr = alloca i64*, align 8
  %hi.addr = alloca i64, align 8
  %lo.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  %qq = alloca i64, align 8
  %rr = alloca i64, align 8
  store i64* %q, i64** %q.addr, align 8
  store i64* %r, i64** %r.addr, align 8
  store i64 %hi, i64* %hi.addr, align 8
  store i64 %lo, i64* %lo.addr, align 8
  store i64 %d, i64* %d.addr, align 8
  %0 = load i64, i64* %lo.addr, align 8
  %1 = load i64, i64* %hi.addr, align 8
  %2 = load i64, i64* %d.addr, align 8
  %3 = call { i64, i64 } asm "divq $4\0A\09", "={ax},={dx},{ax},{dx},rm,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %0, i64 %1, i64 %2) #6, !srcloc !3
  %asmresult = extractvalue { i64, i64 } %3, 0
  %asmresult1 = extractvalue { i64, i64 } %3, 1
  store i64 %asmresult, i64* %qq, align 8
  store i64 %asmresult1, i64* %rr, align 8
  %4 = load i64, i64* %qq, align 8
  %5 = load i64*, i64** %q.addr, align 8
  store i64 %4, i64* %5, align 8
  %6 = load i64, i64* %rr, align 8
  %7 = load i64*, i64** %r.addr, align 8
  store i64 %6, i64* %7, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 89966, i32 89976}
!3 = !{i32 90271, i32 90281}
