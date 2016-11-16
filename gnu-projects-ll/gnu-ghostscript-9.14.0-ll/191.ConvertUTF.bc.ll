; ModuleID = './ConvertUTF.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@firstByteMark = internal constant [7 x i8] c"\00\00\C0\E0\F0\F8\FC", align 1
@trailingBytesForUTF8 = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\05\05\05\05", align 16
@offsetsFromUTF8 = internal constant [6 x i64] [i64 0, i64 12416, i64 925824, i64 63447168, i64 4194836608, i64 2181570688], align 16

; Function Attrs: nounwind uwtable
define i32 @ConvertUTF32toUTF16(i64** %sourceStart, i64* %sourceEnd, i16** %targetStart, i16* %targetEnd, i32 %flags) #0 {
entry:
  %sourceStart.addr = alloca i64**, align 8
  %sourceEnd.addr = alloca i64*, align 8
  %targetStart.addr = alloca i16**, align 8
  %targetEnd.addr = alloca i16*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %source = alloca i64*, align 8
  %target = alloca i16*, align 8
  %ch = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64** %sourceStart, i64*** %sourceStart.addr, align 8, !tbaa !1
  store i64* %sourceEnd, i64** %sourceEnd.addr, align 8, !tbaa !1
  store i16** %targetStart, i16*** %targetStart.addr, align 8, !tbaa !1
  store i16* %targetEnd, i16** %targetEnd.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !5
  %1 = bitcast i64** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64**, i64*** %sourceStart.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %2, align 8, !tbaa !1
  store i64* %3, i64** %source, align 8, !tbaa !1
  %4 = bitcast i16** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i16**, i16*** %targetStart.addr, align 8, !tbaa !1
  %6 = load i16*, i16** %5, align 8, !tbaa !1
  store i16* %6, i16** %target, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %7 = load i64*, i64** %source, align 8, !tbaa !1
  %8 = load i64*, i64** %sourceEnd.addr, align 8, !tbaa !1
  %cmp = icmp ult i64* %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load i16*, i16** %target, align 8, !tbaa !1
  %11 = load i16*, i16** %targetEnd.addr, align 8, !tbaa !1
  %cmp1 = icmp uge i16* %10, %11
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %12 = load i64*, i64** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %12, i32 1
  store i64* %incdec.ptr, i64** %source, align 8, !tbaa !1
  %13 = load i64, i64* %12, align 8, !tbaa !6
  store i64 %13, i64* %ch, align 8, !tbaa !6
  %14 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp2 = icmp ule i64 %14, 65535
  br i1 %cmp2, label %if.then.3, label %if.else.15

if.then.3:                                        ; preds = %if.end
  %15 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp4 = icmp uge i64 %15, 55296
  br i1 %cmp4, label %land.lhs.true, label %if.else.12

land.lhs.true:                                    ; preds = %if.then.3
  %16 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp5 = icmp ule i64 %16, 57343
  br i1 %cmp5, label %if.then.6, label %if.else.12

if.then.6:                                        ; preds = %land.lhs.true
  %17 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %17, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %18 = load i64*, i64** %source, align 8, !tbaa !1
  %incdec.ptr9 = getelementptr inbounds i64, i64* %18, i32 -1
  store i64* %incdec.ptr9, i64** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.6
  %19 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr10 = getelementptr inbounds i16, i16* %19, i32 1
  store i16* %incdec.ptr10, i16** %target, align 8, !tbaa !1
  store i16 -3, i16* %19, align 2, !tbaa !8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else
  br label %if.end.14

if.else.12:                                       ; preds = %land.lhs.true, %if.then.3
  %20 = load i64, i64* %ch, align 8, !tbaa !6
  %conv = trunc i64 %20 to i16
  %21 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr13 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr13, i16** %target, align 8, !tbaa !1
  store i16 %conv, i16* %21, align 2, !tbaa !8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.end.11
  br label %if.end.37

if.else.15:                                       ; preds = %if.end
  %22 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp16 = icmp ugt i64 %22, 1114111
  br i1 %cmp16, label %if.then.18, label %if.else.25

if.then.18:                                       ; preds = %if.else.15
  %23 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %23, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.then.18
  store i32 3, i32* %result, align 4, !tbaa !5
  br label %if.end.24

if.else.22:                                       ; preds = %if.then.18
  %24 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr23 = getelementptr inbounds i16, i16* %24, i32 1
  store i16* %incdec.ptr23, i16** %target, align 8, !tbaa !1
  store i16 -3, i16* %24, align 2, !tbaa !8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.21
  br label %if.end.36

if.else.25:                                       ; preds = %if.else.15
  %25 = load i16*, i16** %target, align 8, !tbaa !1
  %add.ptr = getelementptr inbounds i16, i16* %25, i64 1
  %26 = load i16*, i16** %targetEnd.addr, align 8, !tbaa !1
  %cmp26 = icmp uge i16* %add.ptr, %26
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.else.25
  %27 = load i64*, i64** %source, align 8, !tbaa !1
  %incdec.ptr29 = getelementptr inbounds i64, i64* %27, i32 -1
  store i64* %incdec.ptr29, i64** %source, align 8, !tbaa !1
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.30:                                        ; preds = %if.else.25
  %28 = load i64, i64* %ch, align 8, !tbaa !6
  %sub = sub i64 %28, 65536
  store i64 %sub, i64* %ch, align 8, !tbaa !6
  %29 = load i64, i64* %ch, align 8, !tbaa !6
  %shr = lshr i64 %29, 10
  %add = add i64 %shr, 55296
  %conv31 = trunc i64 %add to i16
  %30 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %incdec.ptr32, i16** %target, align 8, !tbaa !1
  store i16 %conv31, i16* %30, align 2, !tbaa !8
  %31 = load i64, i64* %ch, align 8, !tbaa !6
  %and = and i64 %31, 1023
  %add33 = add i64 %and, 56320
  %conv34 = trunc i64 %add33 to i16
  %32 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr35 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %incdec.ptr35, i16** %target, align 8, !tbaa !1
  store i16 %conv34, i16* %32, align 2, !tbaa !8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.30, %if.end.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.37, %if.then.28, %if.then.8, %if.then
  %33 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %34 = load i64*, i64** %source, align 8, !tbaa !1
  %35 = load i64**, i64*** %sourceStart.addr, align 8, !tbaa !1
  store i64* %34, i64** %35, align 8, !tbaa !1
  %36 = load i16*, i16** %target, align 8, !tbaa !1
  %37 = load i16**, i16*** %targetStart.addr, align 8, !tbaa !1
  store i16* %36, i16** %37, align 8, !tbaa !1
  %38 = load i32, i32* %result, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %39 = bitcast i16** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast i64** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %41) #1
  ret i32 %38

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @ConvertUTF16toUTF32(i16** %sourceStart, i16* %sourceEnd, i64** %targetStart, i64* %targetEnd, i32 %flags) #0 {
entry:
  %sourceStart.addr = alloca i16**, align 8
  %sourceEnd.addr = alloca i16*, align 8
  %targetStart.addr = alloca i64**, align 8
  %targetEnd.addr = alloca i64*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %source = alloca i16*, align 8
  %target = alloca i64*, align 8
  %ch = alloca i64, align 8
  %ch2 = alloca i64, align 8
  %oldSource = alloca i16*, align 8
  %cleanup.dest.slot = alloca i32
  store i16** %sourceStart, i16*** %sourceStart.addr, align 8, !tbaa !1
  store i16* %sourceEnd, i16** %sourceEnd.addr, align 8, !tbaa !1
  store i64** %targetStart, i64*** %targetStart.addr, align 8, !tbaa !1
  store i64* %targetEnd, i64** %targetEnd.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !5
  %1 = bitcast i16** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i16**, i16*** %sourceStart.addr, align 8, !tbaa !1
  %3 = load i16*, i16** %2, align 8, !tbaa !1
  store i16* %3, i16** %source, align 8, !tbaa !1
  %4 = bitcast i64** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64**, i64*** %targetStart.addr, align 8, !tbaa !1
  %6 = load i64*, i64** %5, align 8, !tbaa !1
  store i64* %6, i64** %target, align 8, !tbaa !1
  %7 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i64* %ch2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %9 = load i16*, i16** %source, align 8, !tbaa !1
  %10 = load i16*, i16** %sourceEnd.addr, align 8, !tbaa !1
  %cmp = icmp ult i16* %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = bitcast i16** %oldSource to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = load i16*, i16** %source, align 8, !tbaa !1
  store i16* %12, i16** %oldSource, align 8, !tbaa !1
  %13 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %incdec.ptr, i16** %source, align 8, !tbaa !1
  %14 = load i16, i16* %13, align 2, !tbaa !8
  %conv = zext i16 %14 to i64
  store i64 %conv, i64* %ch, align 8, !tbaa !6
  %15 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp1 = icmp uge i64 %15, 55296
  br i1 %cmp1, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %while.body
  %16 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp3 = icmp ule i64 %16, 56319
  br i1 %cmp3, label %if.then, label %if.else.26

if.then:                                          ; preds = %land.lhs.true
  %17 = load i16*, i16** %source, align 8, !tbaa !1
  %18 = load i16*, i16** %sourceEnd.addr, align 8, !tbaa !1
  %cmp5 = icmp ult i16* %17, %18
  br i1 %cmp5, label %if.then.7, label %if.else.23

if.then.7:                                        ; preds = %if.then
  %19 = load i16*, i16** %source, align 8, !tbaa !1
  %20 = load i16, i16* %19, align 2, !tbaa !8
  %conv8 = zext i16 %20 to i64
  store i64 %conv8, i64* %ch2, align 8, !tbaa !6
  %21 = load i64, i64* %ch2, align 8, !tbaa !6
  %cmp9 = icmp uge i64 %21, 56320
  br i1 %cmp9, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %if.then.7
  %22 = load i64, i64* %ch2, align 8, !tbaa !6
  %cmp12 = icmp ule i64 %22, 57343
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.11
  %23 = load i64, i64* %ch, align 8, !tbaa !6
  %sub = sub i64 %23, 55296
  %shl = shl i64 %sub, 10
  %24 = load i64, i64* %ch2, align 8, !tbaa !6
  %sub15 = sub i64 %24, 56320
  %add = add i64 %shl, %sub15
  %add16 = add i64 %add, 65536
  store i64 %add16, i64* %ch, align 8, !tbaa !6
  %25 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %incdec.ptr17, i16** %source, align 8, !tbaa !1
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.11, %if.then.7
  %26 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %26, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.else
  %27 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i16, i16* %27, i32 -1
  store i16* %incdec.ptr21, i16** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.14
  br label %if.end.25

if.else.23:                                       ; preds = %if.then
  %28 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i16, i16* %28, i32 -1
  store i16* %incdec.ptr24, i16** %source, align 8, !tbaa !1
  store i32 1, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.25:                                        ; preds = %if.end.22
  br label %if.end.39

if.else.26:                                       ; preds = %land.lhs.true, %while.body
  %29 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %29, 0
  br i1 %cmp27, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %if.else.26
  %30 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp30 = icmp uge i64 %30, 56320
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.37

land.lhs.true.32:                                 ; preds = %if.then.29
  %31 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp33 = icmp ule i64 %31, 57343
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true.32
  %32 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i16, i16* %32, i32 -1
  store i16* %incdec.ptr36, i16** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.37:                                        ; preds = %land.lhs.true.32, %if.then.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.else.26
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.25
  %33 = load i64*, i64** %target, align 8, !tbaa !1
  %34 = load i64*, i64** %targetEnd.addr, align 8, !tbaa !1
  %cmp40 = icmp uge i64* %33, %34
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %35 = load i16*, i16** %oldSource, align 8, !tbaa !1
  store i16* %35, i16** %source, align 8, !tbaa !1
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %if.end.39
  %36 = load i64, i64* %ch, align 8, !tbaa !6
  %37 = load i64*, i64** %target, align 8, !tbaa !1
  %incdec.ptr44 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %incdec.ptr44, i64** %target, align 8, !tbaa !1
  store i64 %36, i64* %37, align 8, !tbaa !6
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.43, %if.then.42, %if.then.35, %if.else.23, %if.then.20
  %38 = bitcast i16** %oldSource to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %39 = load i16*, i16** %source, align 8, !tbaa !1
  %40 = load i16**, i16*** %sourceStart.addr, align 8, !tbaa !1
  store i16* %39, i16** %40, align 8, !tbaa !1
  %41 = load i64*, i64** %target, align 8, !tbaa !1
  %42 = load i64**, i64*** %targetStart.addr, align 8, !tbaa !1
  store i64* %41, i64** %42, align 8, !tbaa !1
  %43 = load i32, i32* %result, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %44 = bitcast i64* %ch2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #1
  %45 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #1
  %46 = bitcast i64** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i16** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %48) #1
  ret i32 %43

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @ConvertUTF16toUTF8(i16** %sourceStart, i16* %sourceEnd, i8** %targetStart, i8* %targetEnd, i32 %flags) #0 {
entry:
  %sourceStart.addr = alloca i16**, align 8
  %sourceEnd.addr = alloca i16*, align 8
  %targetStart.addr = alloca i8**, align 8
  %targetEnd.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %source = alloca i16*, align 8
  %target = alloca i8*, align 8
  %ch = alloca i64, align 8
  %bytesToWrite = alloca i16, align 2
  %byteMask = alloca i64, align 8
  %byteMark = alloca i64, align 8
  %oldSource = alloca i16*, align 8
  %ch2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i16** %sourceStart, i16*** %sourceStart.addr, align 8, !tbaa !1
  store i16* %sourceEnd, i16** %sourceEnd.addr, align 8, !tbaa !1
  store i8** %targetStart, i8*** %targetStart.addr, align 8, !tbaa !1
  store i8* %targetEnd, i8** %targetEnd.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !5
  %1 = bitcast i16** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i16**, i16*** %sourceStart.addr, align 8, !tbaa !1
  %3 = load i16*, i16** %2, align 8, !tbaa !1
  store i16* %3, i16** %source, align 8, !tbaa !1
  %4 = bitcast i8** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8**, i8*** %targetStart.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  store i8* %6, i8** %target, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont.97, %entry
  %7 = load i16*, i16** %source, align 8, !tbaa !1
  %8 = load i16*, i16** %sourceEnd.addr, align 8, !tbaa !1
  %cmp = icmp ult i16* %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i16* %bytesToWrite to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  store i16 0, i16* %bytesToWrite, align 2, !tbaa !8
  %11 = bitcast i64* %byteMask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 191, i64* %byteMask, align 8, !tbaa !6
  %12 = bitcast i64* %byteMark to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 128, i64* %byteMark, align 8, !tbaa !6
  %13 = bitcast i16** %oldSource to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = load i16*, i16** %source, align 8, !tbaa !1
  store i16* %14, i16** %oldSource, align 8, !tbaa !1
  %15 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %incdec.ptr, i16** %source, align 8, !tbaa !1
  %16 = load i16, i16* %15, align 2, !tbaa !8
  %conv = zext i16 %16 to i64
  store i64 %conv, i64* %ch, align 8, !tbaa !6
  %17 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp1 = icmp uge i64 %17, 55296
  br i1 %cmp1, label %land.lhs.true, label %if.else.26

land.lhs.true:                                    ; preds = %while.body
  %18 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp3 = icmp ule i64 %18, 56319
  br i1 %cmp3, label %if.then, label %if.else.26

if.then:                                          ; preds = %land.lhs.true
  %19 = load i16*, i16** %source, align 8, !tbaa !1
  %20 = load i16*, i16** %sourceEnd.addr, align 8, !tbaa !1
  %cmp5 = icmp ult i16* %19, %20
  br i1 %cmp5, label %if.then.7, label %if.else.23

if.then.7:                                        ; preds = %if.then
  %21 = bitcast i64* %ch2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load i16*, i16** %source, align 8, !tbaa !1
  %23 = load i16, i16* %22, align 2, !tbaa !8
  %conv8 = zext i16 %23 to i64
  store i64 %conv8, i64* %ch2, align 8, !tbaa !6
  %24 = load i64, i64* %ch2, align 8, !tbaa !6
  %cmp9 = icmp uge i64 %24, 56320
  br i1 %cmp9, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %if.then.7
  %25 = load i64, i64* %ch2, align 8, !tbaa !6
  %cmp12 = icmp ule i64 %25, 57343
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %land.lhs.true.11
  %26 = load i64, i64* %ch, align 8, !tbaa !6
  %sub = sub i64 %26, 55296
  %shl = shl i64 %sub, 10
  %27 = load i64, i64* %ch2, align 8, !tbaa !6
  %sub15 = sub i64 %27, 56320
  %add = add i64 %shl, %sub15
  %add16 = add i64 %add, 65536
  store i64 %add16, i64* %ch, align 8, !tbaa !6
  %28 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr17, i16** %source, align 8, !tbaa !1
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.11, %if.then.7
  %29 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %29, 0
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.else
  %30 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i16, i16* %30, i32 -1
  store i16* %incdec.ptr21, i16** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.14
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.22, %if.then.20
  %31 = bitcast i64* %ch2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.91 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.25

if.else.23:                                       ; preds = %if.then
  %32 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr24 = getelementptr inbounds i16, i16* %32, i32 -1
  store i16* %incdec.ptr24, i16** %source, align 8, !tbaa !1
  store i32 1, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.25:                                        ; preds = %cleanup.cont
  br label %if.end.39

if.else.26:                                       ; preds = %land.lhs.true, %while.body
  %33 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %33, 0
  br i1 %cmp27, label %if.then.29, label %if.end.38

if.then.29:                                       ; preds = %if.else.26
  %34 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp30 = icmp uge i64 %34, 56320
  br i1 %cmp30, label %land.lhs.true.32, label %if.end.37

land.lhs.true.32:                                 ; preds = %if.then.29
  %35 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp33 = icmp ule i64 %35, 57343
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %land.lhs.true.32
  %36 = load i16*, i16** %source, align 8, !tbaa !1
  %incdec.ptr36 = getelementptr inbounds i16, i16* %36, i32 -1
  store i16* %incdec.ptr36, i16** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.37:                                        ; preds = %land.lhs.true.32, %if.then.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.else.26
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.25
  %37 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp40 = icmp ult i64 %37, 128
  br i1 %cmp40, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %if.end.39
  store i16 1, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.59

if.else.43:                                       ; preds = %if.end.39
  %38 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp44 = icmp ult i64 %38, 2048
  br i1 %cmp44, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.else.43
  store i16 2, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.58

if.else.47:                                       ; preds = %if.else.43
  %39 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp48 = icmp ult i64 %39, 65536
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %if.else.47
  store i16 3, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.57

if.else.51:                                       ; preds = %if.else.47
  %40 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp52 = icmp ult i64 %40, 1114112
  br i1 %cmp52, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %if.else.51
  store i16 4, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.56

if.else.55:                                       ; preds = %if.else.51
  store i16 3, i16* %bytesToWrite, align 2, !tbaa !8
  store i64 65533, i64* %ch, align 8, !tbaa !6
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.50
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.46
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.42
  %41 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv60 = zext i16 %41 to i32
  %42 = load i8*, i8** %target, align 8, !tbaa !1
  %idx.ext = sext i32 %conv60 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  store i8* %add.ptr, i8** %target, align 8, !tbaa !1
  %43 = load i8*, i8** %target, align 8, !tbaa !1
  %44 = load i8*, i8** %targetEnd.addr, align 8, !tbaa !1
  %cmp61 = icmp ugt i8* %43, %44
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.end.59
  %45 = load i16*, i16** %oldSource, align 8, !tbaa !1
  store i16* %45, i16** %source, align 8, !tbaa !1
  %46 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv64 = zext i16 %46 to i32
  %47 = load i8*, i8** %target, align 8, !tbaa !1
  %idx.ext65 = sext i32 %conv64 to i64
  %idx.neg = sub i64 0, %idx.ext65
  %add.ptr66 = getelementptr inbounds i8, i8* %47, i64 %idx.neg
  store i8* %add.ptr66, i8** %target, align 8, !tbaa !1
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.91

if.end.67:                                        ; preds = %if.end.59
  %48 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv68 = zext i16 %48 to i32
  switch i32 %conv68, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.71
    i32 2, label %sw.bb.77
    i32 1, label %sw.bb.83
  ]

sw.bb:                                            ; preds = %if.end.67
  %49 = load i64, i64* %ch, align 8, !tbaa !6
  %or = or i64 %49, 128
  %and = and i64 %or, 191
  %conv69 = trunc i64 %and to i8
  %50 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr70 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %incdec.ptr70, i8** %target, align 8, !tbaa !1
  store i8 %conv69, i8* %incdec.ptr70, align 1, !tbaa !5
  %51 = load i64, i64* %ch, align 8, !tbaa !6
  %shr = lshr i64 %51, 6
  store i64 %shr, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.71

sw.bb.71:                                         ; preds = %if.end.67, %sw.bb
  %52 = load i64, i64* %ch, align 8, !tbaa !6
  %or72 = or i64 %52, 128
  %and73 = and i64 %or72, 191
  %conv74 = trunc i64 %and73 to i8
  %53 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr75 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %incdec.ptr75, i8** %target, align 8, !tbaa !1
  store i8 %conv74, i8* %incdec.ptr75, align 1, !tbaa !5
  %54 = load i64, i64* %ch, align 8, !tbaa !6
  %shr76 = lshr i64 %54, 6
  store i64 %shr76, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.77

sw.bb.77:                                         ; preds = %if.end.67, %sw.bb.71
  %55 = load i64, i64* %ch, align 8, !tbaa !6
  %or78 = or i64 %55, 128
  %and79 = and i64 %or78, 191
  %conv80 = trunc i64 %and79 to i8
  %56 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr81 = getelementptr inbounds i8, i8* %56, i32 -1
  store i8* %incdec.ptr81, i8** %target, align 8, !tbaa !1
  store i8 %conv80, i8* %incdec.ptr81, align 1, !tbaa !5
  %57 = load i64, i64* %ch, align 8, !tbaa !6
  %shr82 = lshr i64 %57, 6
  store i64 %shr82, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.83

sw.bb.83:                                         ; preds = %if.end.67, %sw.bb.77
  %58 = load i64, i64* %ch, align 8, !tbaa !6
  %59 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %idxprom = zext i16 %59 to i64
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @firstByteMark, i32 0, i64 %idxprom
  %60 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv84 = zext i8 %60 to i64
  %or85 = or i64 %58, %conv84
  %conv86 = trunc i64 %or85 to i8
  %61 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr87 = getelementptr inbounds i8, i8* %61, i32 -1
  store i8* %incdec.ptr87, i8** %target, align 8, !tbaa !1
  store i8 %conv86, i8* %incdec.ptr87, align 1, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.83, %if.end.67
  %62 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv88 = zext i16 %62 to i32
  %63 = load i8*, i8** %target, align 8, !tbaa !1
  %idx.ext89 = sext i32 %conv88 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %63, i64 %idx.ext89
  store i8* %add.ptr90, i8** %target, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup.91

cleanup.91:                                       ; preds = %sw.epilog, %if.then.63, %if.then.35, %if.else.23, %cleanup
  %64 = bitcast i16** %oldSource to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #1
  %65 = bitcast i64* %byteMark to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #1
  %66 = bitcast i64* %byteMask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %66) #1
  %67 = bitcast i16* %bytesToWrite to i8*
  call void @llvm.lifetime.end(i64 2, i8* %67) #1
  %68 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %cleanup.dest.96 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.96, label %unreachable [
    i32 0, label %cleanup.cont.97
    i32 3, label %while.end
  ]

cleanup.cont.97:                                  ; preds = %cleanup.91
  br label %while.cond

while.end:                                        ; preds = %cleanup.91, %while.cond
  %69 = load i16*, i16** %source, align 8, !tbaa !1
  %70 = load i16**, i16*** %sourceStart.addr, align 8, !tbaa !1
  store i16* %69, i16** %70, align 8, !tbaa !1
  %71 = load i8*, i8** %target, align 8, !tbaa !1
  %72 = load i8**, i8*** %targetStart.addr, align 8, !tbaa !1
  store i8* %71, i8** %72, align 8, !tbaa !1
  %73 = load i32, i32* %result, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %74 = bitcast i8** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast i16** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %76) #1
  ret i32 %73

unreachable:                                      ; preds = %cleanup.91
  unreachable
}

; Function Attrs: nounwind uwtable
define zeroext i8 @isLegalUTF8Sequence(i8* %source, i8* %sourceEnd) #0 {
entry:
  %retval = alloca i8, align 1
  %source.addr = alloca i8*, align 8
  %sourceEnd.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i8* %sourceEnd, i8** %sourceEnd.addr, align 8, !tbaa !1
  %0 = bitcast i32* %length to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %2 = load i8, i8* %1, align 1, !tbaa !5
  %idxprom = zext i8 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @trailingBytesForUTF8, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %3 to i32
  %add = add nsw i32 %conv, 1
  store i32 %add, i32* %length, align 4, !tbaa !10
  %4 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %5 = load i32, i32* %length, align 4, !tbaa !10
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %idx.ext
  %6 = load i8*, i8** %sourceEnd.addr, align 8, !tbaa !1
  %cmp = icmp ugt i8* %add.ptr, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %8 = load i32, i32* %length, align 4, !tbaa !10
  %call = call zeroext i8 @isLegalUTF8(i8* %7, i32 %8) #2
  store i8 %call, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast i32* %length to i8*
  call void @llvm.lifetime.end(i64 4, i8* %9) #1
  %10 = load i8, i8* %retval
  ret i8 %10
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @isLegalUTF8(i8* %source, i32 %length) #0 {
entry:
  %retval = alloca i8, align 1
  %source.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %a = alloca i8, align 1
  %srcptr = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i8* %source, i8** %source.addr, align 8, !tbaa !1
  store i32 %length, i32* %length.addr, align 4, !tbaa !10
  call void @llvm.lifetime.start(i64 1, i8* %a) #1
  %0 = bitcast i8** %srcptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %2 = load i32, i32* %length.addr, align 4, !tbaa !10
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  store i8* %add.ptr, i8** %srcptr, align 8, !tbaa !1
  %3 = load i32, i32* %length.addr, align 4, !tbaa !10
  switch i32 %3, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.5
    i32 2, label %sw.bb.16
    i32 1, label %sw.bb.54
  ]

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = load i8*, i8** %srcptr, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 -1
  store i8* %incdec.ptr, i8** %srcptr, align 8, !tbaa !1
  %5 = load i8, i8* %incdec.ptr, align 1, !tbaa !5
  store i8 %5, i8* %a, align 1, !tbaa !5
  %conv = zext i8 %5 to i32
  %cmp = icmp slt i32 %conv, 128
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load i8, i8* %a, align 1, !tbaa !5
  %conv2 = zext i8 %6 to i32
  %cmp3 = icmp sgt i32 %conv2, 191
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %entry, %if.end
  %7 = load i8*, i8** %srcptr, align 8, !tbaa !1
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 -1
  store i8* %incdec.ptr6, i8** %srcptr, align 8, !tbaa !1
  %8 = load i8, i8* %incdec.ptr6, align 1, !tbaa !5
  store i8 %8, i8* %a, align 1, !tbaa !5
  %conv7 = zext i8 %8 to i32
  %cmp8 = icmp slt i32 %conv7, 128
  br i1 %cmp8, label %if.then.14, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %sw.bb.5
  %9 = load i8, i8* %a, align 1, !tbaa !5
  %conv11 = zext i8 %9 to i32
  %cmp12 = icmp sgt i32 %conv11, 191
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.10, %sw.bb.5
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.15:                                        ; preds = %lor.lhs.false.10
  br label %sw.bb.16

sw.bb.16:                                         ; preds = %entry, %if.end.15
  %10 = load i8*, i8** %srcptr, align 8, !tbaa !1
  %incdec.ptr17 = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr17, i8** %srcptr, align 8, !tbaa !1
  %11 = load i8, i8* %incdec.ptr17, align 1, !tbaa !5
  store i8 %11, i8* %a, align 1, !tbaa !5
  %conv18 = zext i8 %11 to i32
  %cmp19 = icmp sgt i32 %conv18, 191
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %sw.bb.16
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.22:                                        ; preds = %sw.bb.16
  %12 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %13 = load i8, i8* %12, align 1, !tbaa !5
  %conv23 = zext i8 %13 to i32
  switch i32 %conv23, label %sw.default.48 [
    i32 224, label %sw.bb.24
    i32 237, label %sw.bb.30
    i32 240, label %sw.bb.36
    i32 244, label %sw.bb.42
  ]

sw.bb.24:                                         ; preds = %if.end.22
  %14 = load i8, i8* %a, align 1, !tbaa !5
  %conv25 = zext i8 %14 to i32
  %cmp26 = icmp slt i32 %conv25, 160
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %sw.bb.24
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %sw.bb.24
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.22
  %15 = load i8, i8* %a, align 1, !tbaa !5
  %conv31 = zext i8 %15 to i32
  %cmp32 = icmp sgt i32 %conv31, 159
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %sw.bb.30
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.35:                                        ; preds = %sw.bb.30
  br label %sw.epilog

sw.bb.36:                                         ; preds = %if.end.22
  %16 = load i8, i8* %a, align 1, !tbaa !5
  %conv37 = zext i8 %16 to i32
  %cmp38 = icmp slt i32 %conv37, 144
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.36
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %sw.bb.36
  br label %sw.epilog

sw.bb.42:                                         ; preds = %if.end.22
  %17 = load i8, i8* %a, align 1, !tbaa !5
  %conv43 = zext i8 %17 to i32
  %cmp44 = icmp sgt i32 %conv43, 143
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %sw.bb.42
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.47:                                        ; preds = %sw.bb.42
  br label %sw.epilog

sw.default.48:                                    ; preds = %if.end.22
  %18 = load i8, i8* %a, align 1, !tbaa !5
  %conv49 = zext i8 %18 to i32
  %cmp50 = icmp slt i32 %conv49, 128
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %sw.default.48
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.53:                                        ; preds = %sw.default.48
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.53, %if.end.47, %if.end.41, %if.end.35, %if.end.29
  br label %sw.bb.54

sw.bb.54:                                         ; preds = %entry, %sw.epilog
  %19 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %conv55 = zext i8 %20 to i32
  %cmp56 = icmp sge i32 %conv55, 128
  br i1 %cmp56, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %sw.bb.54
  %21 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %22 = load i8, i8* %21, align 1, !tbaa !5
  %conv58 = zext i8 %22 to i32
  %cmp59 = icmp slt i32 %conv58, 194
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %land.lhs.true
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.62:                                        ; preds = %land.lhs.true, %sw.bb.54
  br label %sw.epilog.63

sw.epilog.63:                                     ; preds = %if.end.62
  %23 = load i8*, i8** %source.addr, align 8, !tbaa !1
  %24 = load i8, i8* %23, align 1, !tbaa !5
  %conv64 = zext i8 %24 to i32
  %cmp65 = icmp sgt i32 %conv64, 244
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %sw.epilog.63
  store i8 0, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.68:                                        ; preds = %sw.epilog.63
  store i8 1, i8* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.68, %if.then.67, %if.then.61, %if.then.52, %if.then.46, %if.then.40, %if.then.34, %if.then.28, %if.then.21, %if.then.14, %if.then, %sw.default
  %25 = bitcast i8** %srcptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  call void @llvm.lifetime.end(i64 1, i8* %a) #1
  %26 = load i8, i8* %retval
  ret i8 %26
}

; Function Attrs: nounwind uwtable
define i32 @ConvertUTF8toUTF16(i8** %sourceStart, i8* %sourceEnd, i16** %targetStart, i16* %targetEnd, i32 %flags) #0 {
entry:
  %sourceStart.addr = alloca i8**, align 8
  %sourceEnd.addr = alloca i8*, align 8
  %targetStart.addr = alloca i16**, align 8
  %targetEnd.addr = alloca i16*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %source = alloca i8*, align 8
  %target = alloca i16*, align 8
  %ch = alloca i64, align 8
  %extraBytesToRead = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store i8** %sourceStart, i8*** %sourceStart.addr, align 8, !tbaa !1
  store i8* %sourceEnd, i8** %sourceEnd.addr, align 8, !tbaa !1
  store i16** %targetStart, i16*** %targetStart.addr, align 8, !tbaa !1
  store i16* %targetEnd, i16** %targetEnd.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !5
  %1 = bitcast i8** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %sourceStart.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %2, align 8, !tbaa !1
  store i8* %3, i8** %source, align 8, !tbaa !1
  %4 = bitcast i16** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i16**, i16*** %targetStart.addr, align 8, !tbaa !1
  %6 = load i16*, i16** %5, align 8, !tbaa !1
  store i16* %6, i16** %target, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %7 = load i8*, i8** %source, align 8, !tbaa !1
  %8 = load i8*, i8** %sourceEnd.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 0, i64* %ch, align 8, !tbaa !6
  %10 = bitcast i16* %extraBytesToRead to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = load i8*, i8** %source, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !5
  %idxprom = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @trailingBytesForUTF8, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %13 to i16
  store i16 %conv, i16* %extraBytesToRead, align 2, !tbaa !8
  %14 = load i8*, i8** %source, align 8, !tbaa !1
  %15 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv1 = zext i16 %15 to i32
  %idx.ext = sext i32 %conv1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %16 = load i8*, i8** %sourceEnd.addr, align 8, !tbaa !1
  %cmp2 = icmp uge i8* %add.ptr, %16
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %17 = load i8*, i8** %source, align 8, !tbaa !1
  %18 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv4 = zext i16 %18 to i32
  %add = add nsw i32 %conv4, 1
  %call = call zeroext i8 @isLegalUTF8(i8* %17, i32 %add) #2
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %19 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv7 = zext i16 %19 to i32
  switch i32 %conv7, label %sw.epilog [
    i32 5, label %sw.bb
    i32 4, label %sw.bb.10
    i32 3, label %sw.bb.15
    i32 2, label %sw.bb.20
    i32 1, label %sw.bb.25
    i32 0, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.end.6
  %20 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %source, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %conv8 = zext i8 %21 to i64
  %22 = load i64, i64* %ch, align 8, !tbaa !6
  %add9 = add i64 %22, %conv8
  store i64 %add9, i64* %ch, align 8, !tbaa !6
  %23 = load i64, i64* %ch, align 8, !tbaa !6
  %shl = shl i64 %23, 6
  store i64 %shl, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %if.end.6, %sw.bb
  %24 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr11, i8** %source, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !5
  %conv12 = zext i8 %25 to i64
  %26 = load i64, i64* %ch, align 8, !tbaa !6
  %add13 = add i64 %26, %conv12
  store i64 %add13, i64* %ch, align 8, !tbaa !6
  %27 = load i64, i64* %ch, align 8, !tbaa !6
  %shl14 = shl i64 %27, 6
  store i64 %shl14, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %if.end.6, %sw.bb.10
  %28 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %source, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !5
  %conv17 = zext i8 %29 to i64
  %30 = load i64, i64* %ch, align 8, !tbaa !6
  %add18 = add i64 %30, %conv17
  store i64 %add18, i64* %ch, align 8, !tbaa !6
  %31 = load i64, i64* %ch, align 8, !tbaa !6
  %shl19 = shl i64 %31, 6
  store i64 %shl19, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.20

sw.bb.20:                                         ; preds = %if.end.6, %sw.bb.15
  %32 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr21, i8** %source, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !5
  %conv22 = zext i8 %33 to i64
  %34 = load i64, i64* %ch, align 8, !tbaa !6
  %add23 = add i64 %34, %conv22
  store i64 %add23, i64* %ch, align 8, !tbaa !6
  %35 = load i64, i64* %ch, align 8, !tbaa !6
  %shl24 = shl i64 %35, 6
  store i64 %shl24, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %if.end.6, %sw.bb.20
  %36 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr26, i8** %source, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !5
  %conv27 = zext i8 %37 to i64
  %38 = load i64, i64* %ch, align 8, !tbaa !6
  %add28 = add i64 %38, %conv27
  store i64 %add28, i64* %ch, align 8, !tbaa !6
  %39 = load i64, i64* %ch, align 8, !tbaa !6
  %shl29 = shl i64 %39, 6
  store i64 %shl29, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.30

sw.bb.30:                                         ; preds = %if.end.6, %sw.bb.25
  %40 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr31, i8** %source, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !5
  %conv32 = zext i8 %41 to i64
  %42 = load i64, i64* %ch, align 8, !tbaa !6
  %add33 = add i64 %42, %conv32
  store i64 %add33, i64* %ch, align 8, !tbaa !6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.30, %if.end.6
  %43 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %idxprom34 = zext i16 %43 to i64
  %arrayidx35 = getelementptr inbounds [6 x i64], [6 x i64]* @offsetsFromUTF8, i32 0, i64 %idxprom34
  %44 = load i64, i64* %arrayidx35, align 8, !tbaa !6
  %45 = load i64, i64* %ch, align 8, !tbaa !6
  %sub = sub i64 %45, %44
  store i64 %sub, i64* %ch, align 8, !tbaa !6
  %46 = load i16*, i16** %target, align 8, !tbaa !1
  %47 = load i16*, i16** %targetEnd.addr, align 8, !tbaa !1
  %cmp36 = icmp uge i16* %46, %47
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %sw.epilog
  %48 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv39 = zext i16 %48 to i32
  %add40 = add nsw i32 %conv39, 1
  %49 = load i8*, i8** %source, align 8, !tbaa !1
  %idx.ext41 = sext i32 %add40 to i64
  %idx.neg = sub i64 0, %idx.ext41
  %add.ptr42 = getelementptr inbounds i8, i8* %49, i64 %idx.neg
  store i8* %add.ptr42, i8** %source, align 8, !tbaa !1
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %sw.epilog
  %50 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp44 = icmp ule i64 %50, 65535
  br i1 %cmp44, label %if.then.46, label %if.else.66

if.then.46:                                       ; preds = %if.end.43
  %51 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp47 = icmp uge i64 %51, 55296
  br i1 %cmp47, label %land.lhs.true, label %if.else.62

land.lhs.true:                                    ; preds = %if.then.46
  %52 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp49 = icmp ule i64 %52, 57343
  br i1 %cmp49, label %if.then.51, label %if.else.62

if.then.51:                                       ; preds = %land.lhs.true
  %53 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %53, 0
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.then.51
  %54 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv55 = zext i16 %54 to i32
  %add56 = add nsw i32 %conv55, 1
  %55 = load i8*, i8** %source, align 8, !tbaa !1
  %idx.ext57 = sext i32 %add56 to i64
  %idx.neg58 = sub i64 0, %idx.ext57
  %add.ptr59 = getelementptr inbounds i8, i8* %55, i64 %idx.neg58
  store i8* %add.ptr59, i8** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.51
  %56 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %incdec.ptr60, i16** %target, align 8, !tbaa !1
  store i16 -3, i16* %56, align 2, !tbaa !8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else
  br label %if.end.65

if.else.62:                                       ; preds = %land.lhs.true, %if.then.46
  %57 = load i64, i64* %ch, align 8, !tbaa !6
  %conv63 = trunc i64 %57 to i16
  %58 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr64 = getelementptr inbounds i16, i16* %58, i32 1
  store i16* %incdec.ptr64, i16** %target, align 8, !tbaa !1
  store i16 %conv63, i16* %58, align 2, !tbaa !8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.end.61
  br label %if.end.100

if.else.66:                                       ; preds = %if.end.43
  %59 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp67 = icmp ugt i64 %59, 1114111
  br i1 %cmp67, label %if.then.69, label %if.else.81

if.then.69:                                       ; preds = %if.else.66
  %60 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp70 = icmp eq i32 %60, 0
  br i1 %cmp70, label %if.then.72, label %if.else.78

if.then.72:                                       ; preds = %if.then.69
  store i32 3, i32* %result, align 4, !tbaa !5
  %61 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv73 = zext i16 %61 to i32
  %add74 = add nsw i32 %conv73, 1
  %62 = load i8*, i8** %source, align 8, !tbaa !1
  %idx.ext75 = sext i32 %add74 to i64
  %idx.neg76 = sub i64 0, %idx.ext75
  %add.ptr77 = getelementptr inbounds i8, i8* %62, i64 %idx.neg76
  store i8* %add.ptr77, i8** %source, align 8, !tbaa !1
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else.78:                                       ; preds = %if.then.69
  %63 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr79 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %incdec.ptr79, i16** %target, align 8, !tbaa !1
  store i16 -3, i16* %63, align 2, !tbaa !8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78
  br label %if.end.99

if.else.81:                                       ; preds = %if.else.66
  %64 = load i16*, i16** %target, align 8, !tbaa !1
  %add.ptr82 = getelementptr inbounds i16, i16* %64, i64 1
  %65 = load i16*, i16** %targetEnd.addr, align 8, !tbaa !1
  %cmp83 = icmp uge i16* %add.ptr82, %65
  br i1 %cmp83, label %if.then.85, label %if.end.91

if.then.85:                                       ; preds = %if.else.81
  %66 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv86 = zext i16 %66 to i32
  %add87 = add nsw i32 %conv86, 1
  %67 = load i8*, i8** %source, align 8, !tbaa !1
  %idx.ext88 = sext i32 %add87 to i64
  %idx.neg89 = sub i64 0, %idx.ext88
  %add.ptr90 = getelementptr inbounds i8, i8* %67, i64 %idx.neg89
  store i8* %add.ptr90, i8** %source, align 8, !tbaa !1
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.91:                                        ; preds = %if.else.81
  %68 = load i64, i64* %ch, align 8, !tbaa !6
  %sub92 = sub i64 %68, 65536
  store i64 %sub92, i64* %ch, align 8, !tbaa !6
  %69 = load i64, i64* %ch, align 8, !tbaa !6
  %shr = lshr i64 %69, 10
  %add93 = add i64 %shr, 55296
  %conv94 = trunc i64 %add93 to i16
  %70 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr95 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %incdec.ptr95, i16** %target, align 8, !tbaa !1
  store i16 %conv94, i16* %70, align 2, !tbaa !8
  %71 = load i64, i64* %ch, align 8, !tbaa !6
  %and = and i64 %71, 1023
  %add96 = add i64 %and, 56320
  %conv97 = trunc i64 %add96 to i16
  %72 = load i16*, i16** %target, align 8, !tbaa !1
  %incdec.ptr98 = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %incdec.ptr98, i16** %target, align 8, !tbaa !1
  store i16 %conv97, i16* %72, align 2, !tbaa !8
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.91, %if.end.80
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.65
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.100, %if.then.85, %if.then.72, %if.then.54, %if.then.38, %if.then.5, %if.then
  %73 = bitcast i16* %extraBytesToRead to i8*
  call void @llvm.lifetime.end(i64 2, i8* %73) #1
  %74 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %75 = load i8*, i8** %source, align 8, !tbaa !1
  %76 = load i8**, i8*** %sourceStart.addr, align 8, !tbaa !1
  store i8* %75, i8** %76, align 8, !tbaa !1
  %77 = load i16*, i16** %target, align 8, !tbaa !1
  %78 = load i16**, i16*** %targetStart.addr, align 8, !tbaa !1
  store i16* %77, i16** %78, align 8, !tbaa !1
  %79 = load i32, i32* %result, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %80 = bitcast i16** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %80) #1
  %81 = bitcast i8** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %81) #1
  %82 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %82) #1
  ret i32 %79

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @ConvertUTF32toUTF8(i64** %sourceStart, i64* %sourceEnd, i8** %targetStart, i8* %targetEnd, i32 %flags) #0 {
entry:
  %sourceStart.addr = alloca i64**, align 8
  %sourceEnd.addr = alloca i64*, align 8
  %targetStart.addr = alloca i8**, align 8
  %targetEnd.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %source = alloca i64*, align 8
  %target = alloca i8*, align 8
  %ch = alloca i64, align 8
  %bytesToWrite = alloca i16, align 2
  %byteMask = alloca i64, align 8
  %byteMark = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store i64** %sourceStart, i64*** %sourceStart.addr, align 8, !tbaa !1
  store i64* %sourceEnd, i64** %sourceEnd.addr, align 8, !tbaa !1
  store i8** %targetStart, i8*** %targetStart.addr, align 8, !tbaa !1
  store i8* %targetEnd, i8** %targetEnd.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !5
  %1 = bitcast i64** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i64**, i64*** %sourceStart.addr, align 8, !tbaa !1
  %3 = load i64*, i64** %2, align 8, !tbaa !1
  store i64* %3, i64** %source, align 8, !tbaa !1
  %4 = bitcast i8** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i8**, i8*** %targetStart.addr, align 8, !tbaa !1
  %6 = load i8*, i8** %5, align 8, !tbaa !1
  store i8* %6, i8** %target, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %7 = load i64*, i64** %source, align 8, !tbaa !1
  %8 = load i64*, i64** %sourceEnd.addr, align 8, !tbaa !1
  %cmp = icmp ult i64* %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast i16* %bytesToWrite to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  store i16 0, i16* %bytesToWrite, align 2, !tbaa !8
  %11 = bitcast i64* %byteMask to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  store i64 191, i64* %byteMask, align 8, !tbaa !6
  %12 = bitcast i64* %byteMark to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  store i64 128, i64* %byteMark, align 8, !tbaa !6
  %13 = load i64*, i64** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i64, i64* %13, i32 1
  store i64* %incdec.ptr, i64** %source, align 8, !tbaa !1
  %14 = load i64, i64* %13, align 8, !tbaa !6
  store i64 %14, i64* %ch, align 8, !tbaa !6
  %15 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %15, 0
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %while.body
  %16 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp2 = icmp uge i64 %16, 55296
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %17 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp3 = icmp ule i64 %17, 57343
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %18 = load i64*, i64** %source, align 8, !tbaa !1
  %incdec.ptr5 = getelementptr inbounds i64, i64* %18, i32 -1
  store i64* %incdec.ptr5, i64** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %while.body
  %19 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp7 = icmp ult i64 %19, 128
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  store i16 1, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.21

if.else:                                          ; preds = %if.end.6
  %20 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp9 = icmp ult i64 %20, 2048
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  store i16 2, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.20

if.else.11:                                       ; preds = %if.else
  %21 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp12 = icmp ult i64 %21, 65536
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else.11
  store i16 3, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.19

if.else.14:                                       ; preds = %if.else.11
  %22 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp15 = icmp ule i64 %22, 1114111
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.14
  store i16 4, i16* %bytesToWrite, align 2, !tbaa !8
  br label %if.end.18

if.else.17:                                       ; preds = %if.else.14
  store i16 3, i16* %bytesToWrite, align 2, !tbaa !8
  store i64 65533, i64* %ch, align 8, !tbaa !6
  store i32 3, i32* %result, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.13
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.10
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.8
  %23 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv = zext i16 %23 to i32
  %24 = load i8*, i8** %target, align 8, !tbaa !1
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  store i8* %add.ptr, i8** %target, align 8, !tbaa !1
  %25 = load i8*, i8** %target, align 8, !tbaa !1
  %26 = load i8*, i8** %targetEnd.addr, align 8, !tbaa !1
  %cmp22 = icmp ugt i8* %25, %26
  br i1 %cmp22, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.21
  %27 = load i64*, i64** %source, align 8, !tbaa !1
  %incdec.ptr25 = getelementptr inbounds i64, i64* %27, i32 -1
  store i64* %incdec.ptr25, i64** %source, align 8, !tbaa !1
  %28 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv26 = zext i16 %28 to i32
  %29 = load i8*, i8** %target, align 8, !tbaa !1
  %idx.ext27 = sext i32 %conv26 to i64
  %idx.neg = sub i64 0, %idx.ext27
  %add.ptr28 = getelementptr inbounds i8, i8* %29, i64 %idx.neg
  store i8* %add.ptr28, i8** %target, align 8, !tbaa !1
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.29:                                        ; preds = %if.end.21
  %30 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv30 = zext i16 %30 to i32
  switch i32 %conv30, label %sw.epilog [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.33
    i32 2, label %sw.bb.39
    i32 1, label %sw.bb.45
  ]

sw.bb:                                            ; preds = %if.end.29
  %31 = load i64, i64* %ch, align 8, !tbaa !6
  %or = or i64 %31, 128
  %and = and i64 %or, 191
  %conv31 = trunc i64 %and to i8
  %32 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr32 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %incdec.ptr32, i8** %target, align 8, !tbaa !1
  store i8 %conv31, i8* %incdec.ptr32, align 1, !tbaa !5
  %33 = load i64, i64* %ch, align 8, !tbaa !6
  %shr = lshr i64 %33, 6
  store i64 %shr, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.33

sw.bb.33:                                         ; preds = %if.end.29, %sw.bb
  %34 = load i64, i64* %ch, align 8, !tbaa !6
  %or34 = or i64 %34, 128
  %and35 = and i64 %or34, 191
  %conv36 = trunc i64 %and35 to i8
  %35 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr37 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %incdec.ptr37, i8** %target, align 8, !tbaa !1
  store i8 %conv36, i8* %incdec.ptr37, align 1, !tbaa !5
  %36 = load i64, i64* %ch, align 8, !tbaa !6
  %shr38 = lshr i64 %36, 6
  store i64 %shr38, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.39

sw.bb.39:                                         ; preds = %if.end.29, %sw.bb.33
  %37 = load i64, i64* %ch, align 8, !tbaa !6
  %or40 = or i64 %37, 128
  %and41 = and i64 %or40, 191
  %conv42 = trunc i64 %and41 to i8
  %38 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr43 = getelementptr inbounds i8, i8* %38, i32 -1
  store i8* %incdec.ptr43, i8** %target, align 8, !tbaa !1
  store i8 %conv42, i8* %incdec.ptr43, align 1, !tbaa !5
  %39 = load i64, i64* %ch, align 8, !tbaa !6
  %shr44 = lshr i64 %39, 6
  store i64 %shr44, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.45

sw.bb.45:                                         ; preds = %if.end.29, %sw.bb.39
  %40 = load i64, i64* %ch, align 8, !tbaa !6
  %41 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %idxprom = zext i16 %41 to i64
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* @firstByteMark, i32 0, i64 %idxprom
  %42 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv46 = zext i8 %42 to i64
  %or47 = or i64 %40, %conv46
  %conv48 = trunc i64 %or47 to i8
  %43 = load i8*, i8** %target, align 8, !tbaa !1
  %incdec.ptr49 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %incdec.ptr49, i8** %target, align 8, !tbaa !1
  store i8 %conv48, i8* %incdec.ptr49, align 1, !tbaa !5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.45, %if.end.29
  %44 = load i16, i16* %bytesToWrite, align 2, !tbaa !8
  %conv50 = zext i16 %44 to i32
  %45 = load i8*, i8** %target, align 8, !tbaa !1
  %idx.ext51 = sext i32 %conv50 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %45, i64 %idx.ext51
  store i8* %add.ptr52, i8** %target, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then.24, %if.then.4
  %46 = bitcast i64* %byteMark to i8*
  call void @llvm.lifetime.end(i64 8, i8* %46) #1
  %47 = bitcast i64* %byteMask to i8*
  call void @llvm.lifetime.end(i64 8, i8* %47) #1
  %48 = bitcast i16* %bytesToWrite to i8*
  call void @llvm.lifetime.end(i64 2, i8* %48) #1
  %49 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %49) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %50 = load i64*, i64** %source, align 8, !tbaa !1
  %51 = load i64**, i64*** %sourceStart.addr, align 8, !tbaa !1
  store i64* %50, i64** %51, align 8, !tbaa !1
  %52 = load i8*, i8** %target, align 8, !tbaa !1
  %53 = load i8**, i8*** %targetStart.addr, align 8, !tbaa !1
  store i8* %52, i8** %53, align 8, !tbaa !1
  %54 = load i32, i32* %result, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %55 = bitcast i8** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #1
  %56 = bitcast i64** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #1
  %57 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %57) #1
  ret i32 %54

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @ConvertUTF8toUTF32(i8** %sourceStart, i8* %sourceEnd, i64** %targetStart, i64* %targetEnd, i32 %flags) #0 {
entry:
  %sourceStart.addr = alloca i8**, align 8
  %sourceEnd.addr = alloca i8*, align 8
  %targetStart.addr = alloca i64**, align 8
  %targetEnd.addr = alloca i64*, align 8
  %flags.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %source = alloca i8*, align 8
  %target = alloca i64*, align 8
  %ch = alloca i64, align 8
  %extraBytesToRead = alloca i16, align 2
  %cleanup.dest.slot = alloca i32
  store i8** %sourceStart, i8*** %sourceStart.addr, align 8, !tbaa !1
  store i8* %sourceEnd, i8** %sourceEnd.addr, align 8, !tbaa !1
  store i64** %targetStart, i64*** %targetStart.addr, align 8, !tbaa !1
  store i64* %targetEnd, i64** %targetEnd.addr, align 8, !tbaa !1
  store i32 %flags, i32* %flags.addr, align 4, !tbaa !5
  %0 = bitcast i32* %result to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %result, align 4, !tbaa !5
  %1 = bitcast i8** %source to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8**, i8*** %sourceStart.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %2, align 8, !tbaa !1
  store i8* %3, i8** %source, align 8, !tbaa !1
  %4 = bitcast i64** %target to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = load i64**, i64*** %targetStart.addr, align 8, !tbaa !1
  %6 = load i64*, i64** %5, align 8, !tbaa !1
  store i64* %6, i64** %target, align 8, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %7 = load i8*, i8** %source, align 8, !tbaa !1
  %8 = load i8*, i8** %sourceEnd.addr, align 8, !tbaa !1
  %cmp = icmp ult i8* %7, %8
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  store i64 0, i64* %ch, align 8, !tbaa !6
  %10 = bitcast i16* %extraBytesToRead to i8*
  call void @llvm.lifetime.start(i64 2, i8* %10) #1
  %11 = load i8*, i8** %source, align 8, !tbaa !1
  %12 = load i8, i8* %11, align 1, !tbaa !5
  %idxprom = zext i8 %12 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @trailingBytesForUTF8, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1, !tbaa !5
  %conv = sext i8 %13 to i16
  store i16 %conv, i16* %extraBytesToRead, align 2, !tbaa !8
  %14 = load i8*, i8** %source, align 8, !tbaa !1
  %15 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv1 = zext i16 %15 to i32
  %idx.ext = sext i32 %conv1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %16 = load i8*, i8** %sourceEnd.addr, align 8, !tbaa !1
  %cmp2 = icmp uge i8* %add.ptr, %16
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %while.body
  %17 = load i8*, i8** %source, align 8, !tbaa !1
  %18 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv4 = zext i16 %18 to i32
  %add = add nsw i32 %conv4, 1
  %call = call zeroext i8 @isLegalUTF8(i8* %17, i32 %add) #2
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.end
  %19 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv7 = zext i16 %19 to i32
  switch i32 %conv7, label %sw.epilog [
    i32 5, label %sw.bb
    i32 4, label %sw.bb.10
    i32 3, label %sw.bb.15
    i32 2, label %sw.bb.20
    i32 1, label %sw.bb.25
    i32 0, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.end.6
  %20 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr, i8** %source, align 8, !tbaa !1
  %21 = load i8, i8* %20, align 1, !tbaa !5
  %conv8 = zext i8 %21 to i64
  %22 = load i64, i64* %ch, align 8, !tbaa !6
  %add9 = add i64 %22, %conv8
  store i64 %add9, i64* %ch, align 8, !tbaa !6
  %23 = load i64, i64* %ch, align 8, !tbaa !6
  %shl = shl i64 %23, 6
  store i64 %shl, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.10

sw.bb.10:                                         ; preds = %if.end.6, %sw.bb
  %24 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr11 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr11, i8** %source, align 8, !tbaa !1
  %25 = load i8, i8* %24, align 1, !tbaa !5
  %conv12 = zext i8 %25 to i64
  %26 = load i64, i64* %ch, align 8, !tbaa !6
  %add13 = add i64 %26, %conv12
  store i64 %add13, i64* %ch, align 8, !tbaa !6
  %27 = load i64, i64* %ch, align 8, !tbaa !6
  %shl14 = shl i64 %27, 6
  store i64 %shl14, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %if.end.6, %sw.bb.10
  %28 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr16 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr16, i8** %source, align 8, !tbaa !1
  %29 = load i8, i8* %28, align 1, !tbaa !5
  %conv17 = zext i8 %29 to i64
  %30 = load i64, i64* %ch, align 8, !tbaa !6
  %add18 = add i64 %30, %conv17
  store i64 %add18, i64* %ch, align 8, !tbaa !6
  %31 = load i64, i64* %ch, align 8, !tbaa !6
  %shl19 = shl i64 %31, 6
  store i64 %shl19, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.20

sw.bb.20:                                         ; preds = %if.end.6, %sw.bb.15
  %32 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr21 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr21, i8** %source, align 8, !tbaa !1
  %33 = load i8, i8* %32, align 1, !tbaa !5
  %conv22 = zext i8 %33 to i64
  %34 = load i64, i64* %ch, align 8, !tbaa !6
  %add23 = add i64 %34, %conv22
  store i64 %add23, i64* %ch, align 8, !tbaa !6
  %35 = load i64, i64* %ch, align 8, !tbaa !6
  %shl24 = shl i64 %35, 6
  store i64 %shl24, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.25

sw.bb.25:                                         ; preds = %if.end.6, %sw.bb.20
  %36 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr26 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr26, i8** %source, align 8, !tbaa !1
  %37 = load i8, i8* %36, align 1, !tbaa !5
  %conv27 = zext i8 %37 to i64
  %38 = load i64, i64* %ch, align 8, !tbaa !6
  %add28 = add i64 %38, %conv27
  store i64 %add28, i64* %ch, align 8, !tbaa !6
  %39 = load i64, i64* %ch, align 8, !tbaa !6
  %shl29 = shl i64 %39, 6
  store i64 %shl29, i64* %ch, align 8, !tbaa !6
  br label %sw.bb.30

sw.bb.30:                                         ; preds = %if.end.6, %sw.bb.25
  %40 = load i8*, i8** %source, align 8, !tbaa !1
  %incdec.ptr31 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr31, i8** %source, align 8, !tbaa !1
  %41 = load i8, i8* %40, align 1, !tbaa !5
  %conv32 = zext i8 %41 to i64
  %42 = load i64, i64* %ch, align 8, !tbaa !6
  %add33 = add i64 %42, %conv32
  store i64 %add33, i64* %ch, align 8, !tbaa !6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.30, %if.end.6
  %43 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %idxprom34 = zext i16 %43 to i64
  %arrayidx35 = getelementptr inbounds [6 x i64], [6 x i64]* @offsetsFromUTF8, i32 0, i64 %idxprom34
  %44 = load i64, i64* %arrayidx35, align 8, !tbaa !6
  %45 = load i64, i64* %ch, align 8, !tbaa !6
  %sub = sub i64 %45, %44
  store i64 %sub, i64* %ch, align 8, !tbaa !6
  %46 = load i64*, i64** %target, align 8, !tbaa !1
  %47 = load i64*, i64** %targetEnd.addr, align 8, !tbaa !1
  %cmp36 = icmp uge i64* %46, %47
  br i1 %cmp36, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %sw.epilog
  %48 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv39 = zext i16 %48 to i32
  %add40 = add nsw i32 %conv39, 1
  %49 = load i8*, i8** %source, align 8, !tbaa !1
  %idx.ext41 = sext i32 %add40 to i64
  %idx.neg = sub i64 0, %idx.ext41
  %add.ptr42 = getelementptr inbounds i8, i8* %49, i64 %idx.neg
  store i8* %add.ptr42, i8** %source, align 8, !tbaa !1
  store i32 2, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.end.43:                                        ; preds = %sw.epilog
  %50 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp44 = icmp ule i64 %50, 1114111
  br i1 %cmp44, label %if.then.46, label %if.else.65

if.then.46:                                       ; preds = %if.end.43
  %51 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp47 = icmp uge i64 %51, 55296
  br i1 %cmp47, label %land.lhs.true, label %if.else.62

land.lhs.true:                                    ; preds = %if.then.46
  %52 = load i64, i64* %ch, align 8, !tbaa !6
  %cmp49 = icmp ule i64 %52, 57343
  br i1 %cmp49, label %if.then.51, label %if.else.62

if.then.51:                                       ; preds = %land.lhs.true
  %53 = load i32, i32* %flags.addr, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %53, 0
  br i1 %cmp52, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %if.then.51
  %54 = load i16, i16* %extraBytesToRead, align 2, !tbaa !8
  %conv55 = zext i16 %54 to i32
  %add56 = add nsw i32 %conv55, 1
  %55 = load i8*, i8** %source, align 8, !tbaa !1
  %idx.ext57 = sext i32 %add56 to i64
  %idx.neg58 = sub i64 0, %idx.ext57
  %add.ptr59 = getelementptr inbounds i8, i8* %55, i64 %idx.neg58
  store i8* %add.ptr59, i8** %source, align 8, !tbaa !1
  store i32 3, i32* %result, align 4, !tbaa !5
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %if.then.51
  %56 = load i64*, i64** %target, align 8, !tbaa !1
  %incdec.ptr60 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %incdec.ptr60, i64** %target, align 8, !tbaa !1
  store i64 65533, i64* %56, align 8, !tbaa !6
  br label %if.end.61

if.end.61:                                        ; preds = %if.else
  br label %if.end.64

if.else.62:                                       ; preds = %land.lhs.true, %if.then.46
  %57 = load i64, i64* %ch, align 8, !tbaa !6
  %58 = load i64*, i64** %target, align 8, !tbaa !1
  %incdec.ptr63 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %incdec.ptr63, i64** %target, align 8, !tbaa !1
  store i64 %57, i64* %58, align 8, !tbaa !6
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.end.61
  br label %if.end.67

if.else.65:                                       ; preds = %if.end.43
  store i32 3, i32* %result, align 4, !tbaa !5
  %59 = load i64*, i64** %target, align 8, !tbaa !1
  %incdec.ptr66 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %incdec.ptr66, i64** %target, align 8, !tbaa !1
  store i64 65533, i64* %59, align 8, !tbaa !6
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.end.64
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.67, %if.then.54, %if.then.38, %if.then.5, %if.then
  %60 = bitcast i16* %extraBytesToRead to i8*
  call void @llvm.lifetime.end(i64 2, i8* %60) #1
  %61 = bitcast i64* %ch to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond

while.end:                                        ; preds = %cleanup, %while.cond
  %62 = load i8*, i8** %source, align 8, !tbaa !1
  %63 = load i8**, i8*** %sourceStart.addr, align 8, !tbaa !1
  store i8* %62, i8** %63, align 8, !tbaa !1
  %64 = load i64*, i64** %target, align 8, !tbaa !1
  %65 = load i64**, i64*** %targetStart.addr, align 8, !tbaa !1
  store i64* %64, i64** %65, align 8, !tbaa !1
  %66 = load i32, i32* %result, align 4, !tbaa !5
  store i32 1, i32* %cleanup.dest.slot
  %67 = bitcast i64** %target to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast i8** %source to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast i32* %result to i8*
  call void @llvm.lifetime.end(i64 4, i8* %69) #1
  ret i32 %66

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!3, !3, i64 0}
!6 = !{!7, !7, i64 0}
!7 = !{!"long", !3, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !3, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !3, i64 0}
