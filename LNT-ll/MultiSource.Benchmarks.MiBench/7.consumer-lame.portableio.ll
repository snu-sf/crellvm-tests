; ModuleID = './MultiSource.Benchmarks.MiBench/7.consumer-lame.portableio.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

; Function Attrs: nounwind uwtable
define i32 @ReadByte(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_getc(%struct._IO_FILE* %1)
  %and = and i32 %call, 255
  store i32 %and, i32* %result, align 4, !tbaa !5
  %2 = load i32, i32* %result, align 4, !tbaa !5
  %and1 = and i32 %2, 128
  %tobool = icmp ne i32 %and1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %result, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 256
  store i32 %sub, i32* %result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %result, align 4, !tbaa !5
  %5 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %5) #1
  ret i32 %4
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @Read16BitsLowHigh(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %second to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_getc(%struct._IO_FILE* %3)
  %and = and i32 255, %call
  store i32 %and, i32* %first, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %and2 = and i32 255, %call1
  store i32 %and2, i32* %second, align 4, !tbaa !5
  %5 = load i32, i32* %second, align 4, !tbaa !5
  %shl = shl i32 %5, 8
  %6 = load i32, i32* %first, align 4, !tbaa !5
  %add = add nsw i32 %shl, %6
  store i32 %add, i32* %result, align 4, !tbaa !5
  %7 = load i32, i32* %result, align 4, !tbaa !5
  %and3 = and i32 %7, 32768
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %result, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 65536
  store i32 %sub, i32* %result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %result, align 4, !tbaa !5
  %10 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast i32* %second to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i32 @Read16BitsHighLow(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %second to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_getc(%struct._IO_FILE* %3)
  %and = and i32 255, %call
  store i32 %and, i32* %first, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %and2 = and i32 255, %call1
  store i32 %and2, i32* %second, align 4, !tbaa !5
  %5 = load i32, i32* %first, align 4, !tbaa !5
  %shl = shl i32 %5, 8
  %6 = load i32, i32* %second, align 4, !tbaa !5
  %add = add nsw i32 %shl, %6
  store i32 %add, i32* %result, align 4, !tbaa !5
  %7 = load i32, i32* %result, align 4, !tbaa !5
  %and3 = and i32 %7, 32768
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %result, align 4, !tbaa !5
  %sub = sub nsw i32 %8, 65536
  store i32 %sub, i32* %result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %result, align 4, !tbaa !5
  %10 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  %11 = bitcast i32* %second to i8*
  call void @llvm.lifetime.end(i64 4, i8* %11) #1
  %12 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @Write8Bits(%struct._IO_FILE* %fp, i32 %i) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load i32, i32* %i.addr, align 4, !tbaa !5
  %and = and i32 %0, 255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 %and, %struct._IO_FILE* %1)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @Write16BitsLowHigh(%struct._IO_FILE* %fp, i32 %i) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load i32, i32* %i.addr, align 4, !tbaa !5
  %and = and i32 %0, 255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 %and, %struct._IO_FILE* %1)
  %2 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %2, 8
  %and1 = and i32 %shr, 255
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call2 = call i32 @_IO_putc(i32 %and1, %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Write16BitsHighLow(%struct._IO_FILE* %fp, i32 %i) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %0, 8
  %and = and i32 %shr, 255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 %and, %struct._IO_FILE* %1)
  %2 = load i32, i32* %i.addr, align 4, !tbaa !5
  %and1 = and i32 %2, 255
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call2 = call i32 @_IO_putc(i32 %and1, %struct._IO_FILE* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Read24BitsHighLow(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %third = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %second to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %third to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %and = and i32 255, %call
  store i32 %and, i32* %first, align 4, !tbaa !5
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  %and2 = and i32 255, %call1
  store i32 %and2, i32* %second, align 4, !tbaa !5
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call3 = call i32 @_IO_getc(%struct._IO_FILE* %6)
  %and4 = and i32 255, %call3
  store i32 %and4, i32* %third, align 4, !tbaa !5
  %7 = load i32, i32* %first, align 4, !tbaa !5
  %shl = shl i32 %7, 16
  %8 = load i32, i32* %second, align 4, !tbaa !5
  %shl5 = shl i32 %8, 8
  %add = add nsw i32 %shl, %shl5
  %9 = load i32, i32* %third, align 4, !tbaa !5
  %add6 = add nsw i32 %add, %9
  store i32 %add6, i32* %result, align 4, !tbaa !5
  %10 = load i32, i32* %result, align 4, !tbaa !5
  %and7 = and i32 %10, 8388608
  %tobool = icmp ne i32 %and7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %result, align 4, !tbaa !5
  %sub = sub nsw i32 %11, 16777216
  store i32 %sub, i32* %result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %result, align 4, !tbaa !5
  %13 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %13) #1
  %14 = bitcast i32* %third to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %15 = bitcast i32* %second to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #1
  %16 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %16) #1
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @Read32Bits(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %second to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @Read16BitsLowHigh(%struct._IO_FILE* %3)
  %and = and i32 65535, %call
  store i32 %and, i32* %first, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 @Read16BitsLowHigh(%struct._IO_FILE* %4)
  %and2 = and i32 65535, %call1
  store i32 %and2, i32* %second, align 4, !tbaa !5
  %5 = load i32, i32* %second, align 4, !tbaa !5
  %shl = shl i32 %5, 16
  %6 = load i32, i32* %first, align 4, !tbaa !5
  %add = add nsw i32 %shl, %6
  store i32 %add, i32* %result, align 4, !tbaa !5
  %7 = load i32, i32* %result, align 4, !tbaa !5
  %8 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32* %second to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @Read32BitsHighLow(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %first = alloca i32, align 4
  %second = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast i32* %first to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i32* %second to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #1
  %2 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @Read16BitsHighLow(%struct._IO_FILE* %3)
  %and = and i32 65535, %call
  store i32 %and, i32* %first, align 4, !tbaa !5
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call1 = call i32 @Read16BitsHighLow(%struct._IO_FILE* %4)
  %and2 = and i32 65535, %call1
  store i32 %and2, i32* %second, align 4, !tbaa !5
  %5 = load i32, i32* %first, align 4, !tbaa !5
  %shl = shl i32 %5, 16
  %6 = load i32, i32* %second, align 4, !tbaa !5
  %add = add nsw i32 %shl, %6
  store i32 %add, i32* %result, align 4, !tbaa !5
  %7 = load i32, i32* %result, align 4, !tbaa !5
  %8 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %8) #1
  %9 = bitcast i32* %second to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = bitcast i32* %first to i8*
  call void @llvm.lifetime.end(i64 4, i8* %10) #1
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @Write32Bits(%struct._IO_FILE* %fp, i32 %i) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %and = and i64 %conv, 65535
  %conv1 = trunc i64 %and to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* %0, i32 %conv1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %3, 16
  %conv2 = sext i32 %shr to i64
  %and3 = and i64 %conv2, 65535
  %conv4 = trunc i64 %and3 to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* %2, i32 %conv4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Write32BitsLowHigh(%struct._IO_FILE* %fp, i32 %i) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %and = and i64 %conv, 65535
  %conv1 = trunc i64 %and to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* %0, i32 %conv1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %3, 16
  %conv2 = sext i32 %shr to i64
  %and3 = and i64 %conv2, 65535
  %conv4 = trunc i64 %and3 to i32
  call void @Write16BitsLowHigh(%struct._IO_FILE* %2, i32 %conv4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Write32BitsHighLow(%struct._IO_FILE* %fp, i32 %i) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %1 = load i32, i32* %i.addr, align 4, !tbaa !5
  %shr = ashr i32 %1, 16
  %conv = sext i32 %shr to i64
  %and = and i64 %conv, 65535
  %conv1 = trunc i64 %and to i32
  call void @Write16BitsHighLow(%struct._IO_FILE* %0, i32 %conv1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %3 = load i32, i32* %i.addr, align 4, !tbaa !5
  %conv2 = sext i32 %3 to i64
  %and3 = and i64 %conv2, 65535
  %conv4 = trunc i64 %and3 to i32
  call void @Write16BitsHighLow(%struct._IO_FILE* %2, i32 %conv4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ReadBytes(%struct._IO_FILE* %fp, i8* %p, i32 %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @feof(%struct._IO_FILE* %0) #1
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %1 = load i32, i32* %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 0
  %conv = zext i1 %cmp to i32
  %and = and i32 %lnot.ext, %conv
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  %conv3 = trunc i32 %call2 to i8
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  store i8 %conv3, i8* %3, align 1, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #3

; Function Attrs: nounwind uwtable
define void @ReadBytesSwapped(%struct._IO_FILE* %fp, i8* %p, i32 %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %q = alloca i8*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = bitcast i8** %q to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8* %1, i8** %q, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @feof(%struct._IO_FILE* %2) #1
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %3 = load i32, i32* %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  %conv = zext i1 %cmp to i32
  %and = and i32 %lnot.ext, %conv
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %4)
  %conv3 = trunc i32 %call2 to i8
  %5 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %q, align 8, !tbaa !1
  store i8 %conv3, i8* %5, align 1, !tbaa !7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr4 = getelementptr inbounds i8, i8* %6, i32 -1
  store i8* %incdec.ptr4, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %7 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %8 = load i8*, i8** %q, align 8, !tbaa !1
  %cmp5 = icmp ult i8* %7, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %10 = load i8, i8* %9, align 1, !tbaa !7
  %conv7 = sext i8 %10 to i32
  store i32 %conv7, i32* %n.addr, align 4, !tbaa !5
  %11 = load i8*, i8** %q, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !7
  %13 = load i8*, i8** %p.addr, align 8, !tbaa !1
  store i8 %12, i8* %13, align 1, !tbaa !7
  %14 = load i32, i32* %n.addr, align 4, !tbaa !5
  %conv8 = trunc i32 %14 to i8
  %15 = load i8*, i8** %q, align 8, !tbaa !1
  store i8 %conv8, i8* %15, align 1, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr9, i8** %p.addr, align 8, !tbaa !1
  %17 = load i8*, i8** %q, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i8, i8* %17, i32 -1
  store i8* %incdec.ptr10, i8** %q, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = bitcast i8** %q to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteBytes(%struct._IO_FILE* %fp, i8* %p, i32 %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !7
  %conv = sext i8 %2 to i32
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %3)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteBytesSwapped(%struct._IO_FILE* %fp, i8* %p, i32 %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store i8* %p, i8** %p.addr, align 8, !tbaa !1
  store i32 %n, i32* %n.addr, align 4, !tbaa !5
  %0 = load i32, i32* %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 1
  %1 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %p.addr, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %p.addr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 -1
  store i8* %incdec.ptr, i8** %p.addr, align 8, !tbaa !1
  %4 = load i8, i8* %3, align 1, !tbaa !7
  %conv = sext i8 %4 to i32
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %call = call i32 @_IO_putc(i32 %conv, %struct._IO_FILE* %5)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define double @ReadIeeeFloatHighLow(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bits = alloca [4 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  call void @ReadBytes(%struct._IO_FILE* %1, i8* %arraydecay, i32 4)
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  %call = call double @ConvertFromIeeeSingle(i8* %arraydecay1)
  %2 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #1
  ret double %call
}

declare double @ConvertFromIeeeSingle(i8*) #2

; Function Attrs: nounwind uwtable
define double @ReadIeeeFloatLowHigh(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bits = alloca [4 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  call void @ReadBytesSwapped(%struct._IO_FILE* %1, i8* %arraydecay, i32 4)
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  %call = call double @ConvertFromIeeeSingle(i8* %arraydecay1)
  %2 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %2) #1
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @ReadIeeeDoubleHighLow(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bits = alloca [8 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  call void @ReadBytes(%struct._IO_FILE* %1, i8* %arraydecay, i32 8)
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  %call = call double @ConvertFromIeeeDouble(i8* %arraydecay1)
  %2 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2) #1
  ret double %call
}

declare double @ConvertFromIeeeDouble(i8*) #2

; Function Attrs: nounwind uwtable
define double @ReadIeeeDoubleLowHigh(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bits = alloca [8 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  call void @ReadBytesSwapped(%struct._IO_FILE* %1, i8* %arraydecay, i32 8)
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  %call = call double @ConvertFromIeeeDouble(i8* %arraydecay1)
  %2 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %2) #1
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @ReadIeeeExtendedHighLow(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bits = alloca [10 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 10, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  call void @ReadBytes(%struct._IO_FILE* %1, i8* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  %call = call double @ConvertFromIeeeExtended(i8* %arraydecay1)
  %2 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 10, i8* %2) #1
  ret double %call
}

declare double @ConvertFromIeeeExtended(i8*) #2

; Function Attrs: nounwind uwtable
define double @ReadIeeeExtendedLowHigh(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %bits = alloca [10 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %0 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 10, i8* %0) #1
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  call void @ReadBytesSwapped(%struct._IO_FILE* %1, i8* %arraydecay, i32 10)
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  %call = call double @ConvertFromIeeeExtended(i8* %arraydecay1)
  %2 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 10, i8* %2) #1
  ret double %call
}

; Function Attrs: nounwind uwtable
define void @WriteIeeeFloatLowHigh(%struct._IO_FILE* %fp, double %num) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [4 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store double %num, double* %num.addr, align 8, !tbaa !8
  %0 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %num.addr, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  call void @ConvertToIeeeSingle(double %1, i8* %arraydecay)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  call void @WriteBytesSwapped(%struct._IO_FILE* %2, i8* %arraydecay1, i32 4)
  %3 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  ret void
}

declare void @ConvertToIeeeSingle(double, i8*) #2

; Function Attrs: nounwind uwtable
define void @WriteIeeeFloatHighLow(%struct._IO_FILE* %fp, double %num) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [4 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store double %num, double* %num.addr, align 8, !tbaa !8
  %0 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load double, double* %num.addr, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  call void @ConvertToIeeeSingle(double %1, i8* %arraydecay)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %bits, i32 0, i32 0
  call void @WriteBytes(%struct._IO_FILE* %2, i8* %arraydecay1, i32 4)
  %3 = bitcast [4 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteIeeeDoubleLowHigh(%struct._IO_FILE* %fp, double %num) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [8 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store double %num, double* %num.addr, align 8, !tbaa !8
  %0 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %num.addr, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  call void @ConvertToIeeeDouble(double %1, i8* %arraydecay)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  call void @WriteBytesSwapped(%struct._IO_FILE* %2, i8* %arraydecay1, i32 8)
  %3 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  ret void
}

declare void @ConvertToIeeeDouble(double, i8*) #2

; Function Attrs: nounwind uwtable
define void @WriteIeeeDoubleHighLow(%struct._IO_FILE* %fp, double %num) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [8 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store double %num, double* %num.addr, align 8, !tbaa !8
  %0 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %num.addr, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  call void @ConvertToIeeeDouble(double %1, i8* %arraydecay)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [8 x i8], [8 x i8]* %bits, i32 0, i32 0
  call void @WriteBytes(%struct._IO_FILE* %2, i8* %arraydecay1, i32 8)
  %3 = bitcast [8 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 8, i8* %3) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @WriteIeeeExtendedLowHigh(%struct._IO_FILE* %fp, double %num) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [10 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store double %num, double* %num.addr, align 8, !tbaa !8
  %0 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 10, i8* %0) #1
  %1 = load double, double* %num.addr, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  call void @ConvertToIeeeExtended(double %1, i8* %arraydecay)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  call void @WriteBytesSwapped(%struct._IO_FILE* %2, i8* %arraydecay1, i32 10)
  %3 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 10, i8* %3) #1
  ret void
}

declare void @ConvertToIeeeExtended(double, i8*) #2

; Function Attrs: nounwind uwtable
define void @WriteIeeeExtendedHighLow(%struct._IO_FILE* %fp, double %num) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %num.addr = alloca double, align 8
  %bits = alloca [10 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  store double %num, double* %num.addr, align 8, !tbaa !8
  %0 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.start(i64 10, i8* %0) #1
  %1 = load double, double* %num.addr, align 8, !tbaa !8
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  call void @ConvertToIeeeExtended(double %1, i8* %arraydecay)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %bits, i32 0, i32 0
  call void @WriteBytes(%struct._IO_FILE* %2, i8* %arraydecay1, i32 10)
  %3 = bitcast [10 x i8]* %bits to i8*
  call void @llvm.lifetime.end(i64 10, i8* %3) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !3, i64 0}
