; ModuleID = './MultiSource.Applications.ClamAV/75.libclamav_upx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@upx_inflate2b.magic = private unnamed_addr constant [4 x i32] [i32 264, i32 272, i32 213, i32 0], align 16
@upx_inflate2d.magic = private unnamed_addr constant [3 x i32] [i32 284, i32 292, i32 0], align 4
@upx_inflate2e.magic = private unnamed_addr constant [3 x i32] [i32 296, i32 304, i32 0], align 4
@.str = private unnamed_addr constant [39 x i8] c"UPX: bad magic - scanning for imports\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\8D\BE\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"UPX: wrong realstuff size\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"UPX: no luck - scanning for PE\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"UPX: no luck - brutally crafing a reasonable PE\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"UPX: malloc failed - giving up rebuild\0A\00", align 1
@.str.6 = private unnamed_addr constant [209 x i8] c"MZ\90\00\02\00\00\00\04\00\0F\00\FF\FF\00\00\B0\00\00\00\00\00\00\00@\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\00\00\00\0E\1F\B4\09\BA\0D\00\CD!\B4L\CD!This file was created by ClamAV for internal use and should not be run.\0D\0AClamAV - A GPL virus scanner - http://www.clamav.net\0D\0A$\00\00\00\00", align 1
@.str.7 = private unnamed_addr constant [289 x i8] c"PE\00\00L\01\01\00CLAM\00\00\00\00\00\00\00\00\E0\00\83\8F\0B\01\00\00\00\10\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\10\00\00\00\10\00\00\00\00@\00\00\10\00\00\00\02\00\00\01\00\00\00\00\00\00\00\03\00\0A\00\00\00\00\00\FF\FF\FF\FF\00\02\00\00\00\00\00\00\02\00\00\00\00\00\10\00\00\10\00\00\00\00\10\00\00\10\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00.clam01\00\FF\FF\FF\FF\00\10\00\00\FF\FF\FF\FF\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"UPX: PE structure added to uncompressed data\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"UPX: Sect %d out of bounds - giving up rebuild\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"UPX: wrong raw size - giving up rebuild\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"UPX: PE structure rebuilt from compressed file\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @upx_inflate2b(i8* %src, i32 %ssize, i8* %dst, i32* %dsize, i32 %upx0, i32 %upx1, i32 %ep) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32*, align 8
  %upx0.addr = alloca i32, align 4
  %upx1.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %backbytes = alloca i32, align 4
  %unp_offset = alloca i32, align 4
  %backsize = alloca i32, align 4
  %myebx = alloca i32, align 4
  %scur = alloca i32, align 4
  %dcur = alloca i32, align 4
  %i = alloca i32, align 4
  %magic = alloca [4 x i32], align 16
  %oob = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %dsize, i32** %dsize.addr, align 8
  store i32 %upx0, i32* %upx0.addr, align 4
  store i32 %upx1, i32* %upx1.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 -1, i32* %unp_offset, align 4
  store i32 0, i32* %myebx, align 4
  store i32 0, i32* %scur, align 4
  store i32 0, i32* %dcur, align 4
  %0 = bitcast [4 x i32]* %magic to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([4 x i32]* @upx_inflate2b.magic to i8*), i64 16, i32 16, i1 false)
  br label %while.body

while.body:                                       ; preds = %entry, %for.end
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i32, i32* %ssize.addr, align 4
  %call = call i32 @doubleebx(i8* %1, i32* %myebx, i32* %scur, i32 %2)
  store i32 %call, i32* %oob, align 4
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.cond.1
  %3 = load i32, i32* %scur, align 4
  %4 = load i32, i32* %ssize.addr, align 4
  %cmp3 = icmp uge i32 %3, %4
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.2
  %5 = load i32, i32* %dcur, align 4
  %6 = load i32*, i32** %dsize.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp4 = icmp uge i32 %5, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body.2
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %scur, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %scur, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %11 = load i32, i32* %dcur, align 4
  %inc5 = add i32 %11, 1
  store i32 %inc5, i32* %dcur, align 4
  %idxprom6 = zext i32 %11 to i64
  %12 = load i8*, i8** %dst.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  store i8 %10, i8* %arrayidx7, align 1
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %13 = load i32, i32* %oob, align 4
  %cmp8 = icmp eq i32 %13, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %while.end
  store i32 1, i32* %backbytes, align 4
  br label %while.body.12

while.body.12:                                    ; preds = %if.end.10, %if.end.22
  %14 = load i8*, i8** %src.addr, align 8
  %15 = load i32, i32* %ssize.addr, align 4
  %call13 = call i32 @doubleebx(i8* %14, i32* %myebx, i32* %scur, i32 %15)
  store i32 %call13, i32* %oob, align 4
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %while.body.12
  %16 = load i32, i32* %backbytes, align 4
  %mul = mul nsw i32 %16, 2
  %17 = load i32, i32* %oob, align 4
  %add = add nsw i32 %mul, %17
  store i32 %add, i32* %backbytes, align 4
  %18 = load i8*, i8** %src.addr, align 8
  %19 = load i32, i32* %ssize.addr, align 4
  %call17 = call i32 @doubleebx(i8* %18, i32* %myebx, i32* %scur, i32 %19)
  store i32 %call17, i32* %oob, align 4
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %20 = load i32, i32* %oob, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.20
  br label %while.end.23

if.end.22:                                        ; preds = %if.end.20
  br label %while.body.12

while.end.23:                                     ; preds = %if.then.21
  %21 = load i32, i32* %backbytes, align 4
  %sub = sub nsw i32 %21, 3
  store i32 %sub, i32* %backbytes, align 4
  %22 = load i32, i32* %backbytes, align 4
  %cmp24 = icmp sge i32 %22, 0
  br i1 %cmp24, label %if.then.25, label %if.end.36

if.then.25:                                       ; preds = %while.end.23
  %23 = load i32, i32* %scur, align 4
  %24 = load i32, i32* %ssize.addr, align 4
  %cmp26 = icmp uge i32 %23, %24
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.25
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.25
  %25 = load i32, i32* %backbytes, align 4
  %shl = shl i32 %25, 8
  store i32 %shl, i32* %backbytes, align 4
  %26 = load i32, i32* %scur, align 4
  %inc29 = add i32 %26, 1
  store i32 %inc29, i32* %scur, align 4
  %idxprom30 = zext i32 %26 to i64
  %27 = load i8*, i8** %src.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %27, i64 %idxprom30
  %28 = load i8, i8* %arrayidx31, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* %backbytes, align 4
  %add32 = add nsw i32 %29, %conv
  store i32 %add32, i32* %backbytes, align 4
  %30 = load i32, i32* %backbytes, align 4
  %xor = xor i32 %30, -1
  store i32 %xor, i32* %backbytes, align 4
  %31 = load i32, i32* %backbytes, align 4
  %tobool33 = icmp ne i32 %31, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.28
  br label %while.end.152

if.end.35:                                        ; preds = %if.end.28
  %32 = load i32, i32* %backbytes, align 4
  store i32 %32, i32* %unp_offset, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %while.end.23
  %33 = load i8*, i8** %src.addr, align 8
  %34 = load i32, i32* %ssize.addr, align 4
  %call37 = call i32 @doubleebx(i8* %33, i32* %myebx, i32* %scur, i32 %34)
  store i32 %call37, i32* %backsize, align 4
  %cmp38 = icmp eq i32 %call37, -1
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  store i32 -1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %if.end.36
  %35 = load i8*, i8** %src.addr, align 8
  %36 = load i32, i32* %ssize.addr, align 4
  %call42 = call i32 @doubleebx(i8* %35, i32* %myebx, i32* %scur, i32 %36)
  store i32 %call42, i32* %oob, align 4
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.41
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.41
  %37 = load i32, i32* %backsize, align 4
  %mul47 = mul i32 %37, 2
  %38 = load i32, i32* %oob, align 4
  %add48 = add i32 %mul47, %38
  store i32 %add48, i32* %backsize, align 4
  %39 = load i32, i32* %backsize, align 4
  %tobool49 = icmp ne i32 %39, 0
  br i1 %tobool49, label %if.end.67, label %if.then.50

if.then.50:                                       ; preds = %if.end.46
  %40 = load i32, i32* %backsize, align 4
  %inc51 = add i32 %40, 1
  store i32 %inc51, i32* %backsize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.50
  %41 = load i8*, i8** %src.addr, align 8
  %42 = load i32, i32* %ssize.addr, align 4
  %call52 = call i32 @doubleebx(i8* %41, i32* %myebx, i32* %scur, i32 %42)
  store i32 %call52, i32* %oob, align 4
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %do.body
  %43 = load i32, i32* %backsize, align 4
  %mul57 = mul i32 %43, 2
  %44 = load i32, i32* %oob, align 4
  %add58 = add i32 %mul57, %44
  store i32 %add58, i32* %backsize, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.56
  %45 = load i8*, i8** %src.addr, align 8
  %46 = load i32, i32* %ssize.addr, align 4
  %call59 = call i32 @doubleebx(i8* %45, i32* %myebx, i32* %scur, i32 %46)
  store i32 %call59, i32* %oob, align 4
  %cmp60 = icmp eq i32 %call59, 0
  br i1 %cmp60, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %47 = load i32, i32* %oob, align 4
  %cmp62 = icmp eq i32 %47, -1
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %do.end
  %48 = load i32, i32* %backsize, align 4
  %add66 = add i32 %48, 2
  store i32 %add66, i32* %backsize, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.65, %if.end.46
  %49 = load i32, i32* %unp_offset, align 4
  %cmp68 = icmp ult i32 %49, -3328
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %if.end.67
  %50 = load i32, i32* %backsize, align 4
  %inc71 = add i32 %50, 1
  store i32 %inc71, i32* %backsize, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %if.end.67
  %51 = load i32, i32* %backsize, align 4
  %inc73 = add i32 %51, 1
  store i32 %inc73, i32* %backsize, align 4
  %52 = load i32*, i32** %dsize.addr, align 8
  %53 = load i32, i32* %52, align 4
  %cmp74 = icmp ugt i32 %53, 0
  br i1 %cmp74, label %land.lhs.true, label %if.then.139

land.lhs.true:                                    ; preds = %if.end.72
  %54 = load i32, i32* %backsize, align 4
  %cmp76 = icmp ugt i32 %54, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.then.139

land.lhs.true.78:                                 ; preds = %land.lhs.true
  %55 = load i32, i32* %backsize, align 4
  %56 = load i32*, i32** %dsize.addr, align 8
  %57 = load i32, i32* %56, align 4
  %cmp79 = icmp ule i32 %55, %57
  br i1 %cmp79, label %land.lhs.true.81, label %if.then.139

land.lhs.true.81:                                 ; preds = %land.lhs.true.78
  %58 = load i8*, i8** %dst.addr, align 8
  %59 = load i32, i32* %dcur, align 4
  %idx.ext = zext i32 %59 to i64
  %add.ptr = getelementptr inbounds i8, i8* %58, i64 %idx.ext
  %60 = load i32, i32* %unp_offset, align 4
  %idx.ext82 = sext i32 %60 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext82
  %61 = load i8*, i8** %dst.addr, align 8
  %cmp84 = icmp uge i8* %add.ptr83, %61
  br i1 %cmp84, label %land.lhs.true.86, label %if.then.139

land.lhs.true.86:                                 ; preds = %land.lhs.true.81
  %62 = load i8*, i8** %dst.addr, align 8
  %63 = load i32, i32* %dcur, align 4
  %idx.ext87 = zext i32 %63 to i64
  %add.ptr88 = getelementptr inbounds i8, i8* %62, i64 %idx.ext87
  %64 = load i32, i32* %unp_offset, align 4
  %idx.ext89 = sext i32 %64 to i64
  %add.ptr90 = getelementptr inbounds i8, i8* %add.ptr88, i64 %idx.ext89
  %65 = load i32, i32* %backsize, align 4
  %idx.ext91 = zext i32 %65 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %add.ptr90, i64 %idx.ext91
  %66 = load i8*, i8** %dst.addr, align 8
  %67 = load i32*, i32** %dsize.addr, align 8
  %68 = load i32, i32* %67, align 4
  %idx.ext93 = zext i32 %68 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %66, i64 %idx.ext93
  %cmp95 = icmp ule i8* %add.ptr92, %add.ptr94
  br i1 %cmp95, label %land.lhs.true.97, label %if.then.139

land.lhs.true.97:                                 ; preds = %land.lhs.true.86
  %69 = load i8*, i8** %dst.addr, align 8
  %70 = load i32, i32* %dcur, align 4
  %idx.ext98 = zext i32 %70 to i64
  %add.ptr99 = getelementptr inbounds i8, i8* %69, i64 %idx.ext98
  %71 = load i32, i32* %unp_offset, align 4
  %idx.ext100 = sext i32 %71 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %add.ptr99, i64 %idx.ext100
  %72 = load i32, i32* %backsize, align 4
  %idx.ext102 = zext i32 %72 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %add.ptr101, i64 %idx.ext102
  %73 = load i8*, i8** %dst.addr, align 8
  %cmp104 = icmp ugt i8* %add.ptr103, %73
  br i1 %cmp104, label %lor.lhs.false.106, label %if.then.139

lor.lhs.false.106:                                ; preds = %land.lhs.true.97
  %74 = load i32*, i32** %dsize.addr, align 8
  %75 = load i32, i32* %74, align 4
  %cmp107 = icmp ugt i32 %75, 0
  br i1 %cmp107, label %land.lhs.true.109, label %if.then.139

land.lhs.true.109:                                ; preds = %lor.lhs.false.106
  %76 = load i32, i32* %backsize, align 4
  %cmp110 = icmp ugt i32 %76, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.then.139

land.lhs.true.112:                                ; preds = %land.lhs.true.109
  %77 = load i32, i32* %backsize, align 4
  %78 = load i32*, i32** %dsize.addr, align 8
  %79 = load i32, i32* %78, align 4
  %cmp113 = icmp ule i32 %77, %79
  br i1 %cmp113, label %land.lhs.true.115, label %if.then.139

land.lhs.true.115:                                ; preds = %land.lhs.true.112
  %80 = load i8*, i8** %dst.addr, align 8
  %81 = load i32, i32* %dcur, align 4
  %idx.ext116 = zext i32 %81 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %80, i64 %idx.ext116
  %82 = load i8*, i8** %dst.addr, align 8
  %cmp118 = icmp uge i8* %add.ptr117, %82
  br i1 %cmp118, label %land.lhs.true.120, label %if.then.139

land.lhs.true.120:                                ; preds = %land.lhs.true.115
  %83 = load i8*, i8** %dst.addr, align 8
  %84 = load i32, i32* %dcur, align 4
  %idx.ext121 = zext i32 %84 to i64
  %add.ptr122 = getelementptr inbounds i8, i8* %83, i64 %idx.ext121
  %85 = load i32, i32* %backsize, align 4
  %idx.ext123 = zext i32 %85 to i64
  %add.ptr124 = getelementptr inbounds i8, i8* %add.ptr122, i64 %idx.ext123
  %86 = load i8*, i8** %dst.addr, align 8
  %87 = load i32*, i32** %dsize.addr, align 8
  %88 = load i32, i32* %87, align 4
  %idx.ext125 = zext i32 %88 to i64
  %add.ptr126 = getelementptr inbounds i8, i8* %86, i64 %idx.ext125
  %cmp127 = icmp ule i8* %add.ptr124, %add.ptr126
  br i1 %cmp127, label %land.lhs.true.129, label %if.then.139

land.lhs.true.129:                                ; preds = %land.lhs.true.120
  %89 = load i8*, i8** %dst.addr, align 8
  %90 = load i32, i32* %dcur, align 4
  %idx.ext130 = zext i32 %90 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %89, i64 %idx.ext130
  %91 = load i32, i32* %backsize, align 4
  %idx.ext132 = zext i32 %91 to i64
  %add.ptr133 = getelementptr inbounds i8, i8* %add.ptr131, i64 %idx.ext132
  %92 = load i8*, i8** %dst.addr, align 8
  %cmp134 = icmp ugt i8* %add.ptr133, %92
  br i1 %cmp134, label %lor.lhs.false.136, label %if.then.139

lor.lhs.false.136:                                ; preds = %land.lhs.true.129
  %93 = load i32, i32* %unp_offset, align 4
  %cmp137 = icmp sge i32 %93, 0
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %lor.lhs.false.136, %land.lhs.true.129, %land.lhs.true.120, %land.lhs.true.115, %land.lhs.true.112, %land.lhs.true.109, %lor.lhs.false.106, %land.lhs.true.97, %land.lhs.true.86, %land.lhs.true.81, %land.lhs.true.78, %land.lhs.true, %if.end.72
  store i32 -1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %lor.lhs.false.136
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.140
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %backsize, align 4
  %cmp141 = icmp ult i32 %94, %95
  br i1 %cmp141, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %96 = load i32, i32* %dcur, align 4
  %97 = load i32, i32* %unp_offset, align 4
  %add143 = add i32 %96, %97
  %98 = load i32, i32* %i, align 4
  %add144 = add i32 %add143, %98
  %idxprom145 = zext i32 %add144 to i64
  %99 = load i8*, i8** %dst.addr, align 8
  %arrayidx146 = getelementptr inbounds i8, i8* %99, i64 %idxprom145
  %100 = load i8, i8* %arrayidx146, align 1
  %101 = load i32, i32* %dcur, align 4
  %102 = load i32, i32* %i, align 4
  %add147 = add i32 %101, %102
  %idxprom148 = zext i32 %add147 to i64
  %103 = load i8*, i8** %dst.addr, align 8
  %arrayidx149 = getelementptr inbounds i8, i8* %103, i64 %idxprom148
  store i8 %100, i8* %arrayidx149, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %104 = load i32, i32* %i, align 4
  %inc150 = add i32 %104, 1
  store i32 %inc150, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %105 = load i32, i32* %backsize, align 4
  %106 = load i32, i32* %dcur, align 4
  %add151 = add i32 %106, %105
  store i32 %add151, i32* %dcur, align 4
  br label %while.body

while.end.152:                                    ; preds = %if.then.34
  %107 = load i8*, i8** %src.addr, align 8
  %108 = load i32, i32* %ssize.addr, align 4
  %109 = load i8*, i8** %dst.addr, align 8
  %110 = load i32*, i32** %dsize.addr, align 8
  %111 = load i32, i32* %ep.addr, align 4
  %112 = load i32, i32* %upx0.addr, align 4
  %113 = load i32, i32* %upx1.addr, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %magic, i32 0, i32 0
  %114 = load i32, i32* %dcur, align 4
  %call153 = call i32 @pefromupx(i8* %107, i32 %108, i8* %109, i32* %110, i32 %111, i32 %112, i32 %113, i32* %arraydecay, i32 %114)
  store i32 %call153, i32* %retval
  br label %return

return:                                           ; preds = %while.end.152, %if.then.139, %if.then.64, %if.then.55, %if.then.45, %if.then.40, %if.then.27, %if.then.19, %if.then.15, %if.then.9, %if.then
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal i32 @doubleebx(i8* %src, i32* %myebx, i32* %scur, i32 %ssize) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %myebx.addr = alloca i32*, align 8
  %scur.addr = alloca i32*, align 8
  %ssize.addr = alloca i32, align 4
  %oldebx = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32* %myebx, i32** %myebx.addr, align 8
  store i32* %scur, i32** %scur.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  %0 = load i32*, i32** %myebx.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %oldebx, align 4
  %2 = load i32*, i32** %myebx.addr, align 8
  %3 = load i32, i32* %2, align 4
  %mul = mul i32 %3, 2
  store i32 %mul, i32* %2, align 4
  %4 = load i32, i32* %oldebx, align 4
  %and = and i32 %4, 2147483647
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.21, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ssize.addr, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.then.16

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %ssize.addr, align 4
  %cmp1 = icmp ule i32 4, %6
  br i1 %cmp1, label %land.lhs.true.2, label %if.then.16

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load i8*, i8** %src.addr, align 8
  %8 = load i32*, i32** %scur.addr, align 8
  %9 = load i32, i32* %8, align 4
  %idx.ext = zext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %idx.ext
  %10 = load i8*, i8** %src.addr, align 8
  %cmp3 = icmp uge i8* %add.ptr, %10
  br i1 %cmp3, label %land.lhs.true.4, label %if.then.16

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %11 = load i8*, i8** %src.addr, align 8
  %12 = load i32*, i32** %scur.addr, align 8
  %13 = load i32, i32* %12, align 4
  %idx.ext5 = zext i32 %13 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %11, i64 %idx.ext5
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 4
  %14 = load i8*, i8** %src.addr, align 8
  %15 = load i32, i32* %ssize.addr, align 4
  %idx.ext8 = zext i32 %15 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 %idx.ext8
  %cmp10 = icmp ule i8* %add.ptr7, %add.ptr9
  br i1 %cmp10, label %land.lhs.true.11, label %if.then.16

land.lhs.true.11:                                 ; preds = %land.lhs.true.4
  %16 = load i8*, i8** %src.addr, align 8
  %17 = load i32*, i32** %scur.addr, align 8
  %18 = load i32, i32* %17, align 4
  %idx.ext12 = zext i32 %18 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %16, i64 %idx.ext12
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr13, i64 4
  %19 = load i8*, i8** %src.addr, align 8
  %cmp15 = icmp ugt i8* %add.ptr14, %19
  br i1 %cmp15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true.11, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.11
  %20 = load i8*, i8** %src.addr, align 8
  %21 = load i32*, i32** %scur.addr, align 8
  %22 = load i32, i32* %21, align 4
  %idx.ext17 = zext i32 %22 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %20, i64 %idx.ext17
  %23 = bitcast i8* %add.ptr18 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %oldebx, align 4
  %25 = load i32, i32* %oldebx, align 4
  %mul19 = mul i32 %25, 2
  %add = add i32 %mul19, 1
  %26 = load i32*, i32** %myebx.addr, align 8
  store i32 %add, i32* %26, align 4
  %27 = load i32*, i32** %scur.addr, align 8
  %28 = load i32, i32* %27, align 4
  %add20 = add i32 %28, 4
  store i32 %add20, i32* %27, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %entry
  %29 = load i32, i32* %oldebx, align 4
  %shr = lshr i32 %29, 31
  store i32 %shr, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.16
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @pefromupx(i8* %src, i32 %ssize, i8* %dst, i32* %dsize, i32 %ep, i32 %upx0, i32 %upx1, i32* %magic, i32 %dend) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32*, align 8
  %ep.addr = alloca i32, align 4
  %upx0.addr = alloca i32, align 4
  %upx1.addr = alloca i32, align 4
  %magic.addr = alloca i32*, align 8
  %dend.addr = alloca i32, align 4
  %imports = alloca i8*, align 8
  %sections = alloca i8*, align 8
  %pehdr = alloca i8*, align 8
  %newbuf = alloca i8*, align 8
  %sectcnt = alloca i32, align 4
  %upd = alloca i32, align 4
  %realstuffsz = alloca i32, align 4
  %valign = alloca i32, align 4
  %foffset = alloca i32, align 4
  %pt = alloca i8*, align 8
  %rebsz = alloca i32, align 4
  %vsize = alloca i32, align 4
  %urva = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %dsize, i32** %dsize.addr, align 8
  store i32 %ep, i32* %ep.addr, align 4
  store i32 %upx0, i32* %upx0.addr, align 4
  store i32 %upx1, i32* %upx1.addr, align 4
  store i32* %magic, i32** %magic.addr, align 8
  store i32 %dend, i32* %dend.addr, align 4
  store i8* null, i8** %pehdr, align 8
  store i32 0, i32* %sectcnt, align 4
  store i32 1, i32* %upd, align 4
  store i32 0, i32* %realstuffsz, align 4
  store i32 0, i32* %valign, align 4
  store i32 456, i32* %foffset, align 4
  %0 = load i8*, i8** %dst.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %src.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end
  %2 = load i32, i32* %sectcnt, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %sectcnt, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i32*, i32** %magic.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %valign, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %ep.addr, align 4
  %6 = load i32, i32* %upx1.addr, align 4
  %sub = sub i32 %5, %6
  %7 = load i32, i32* %valign, align 4
  %add = add i32 %sub, %7
  %8 = load i32, i32* %ssize.addr, align 4
  %sub2 = sub i32 %8, 5
  %cmp3 = icmp ule i32 %add, %sub2
  br i1 %cmp3, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, i32* %ep.addr, align 4
  %10 = load i32, i32* %upx1.addr, align 4
  %sub4 = sub i32 %9, %10
  %11 = load i32, i32* %valign, align 4
  %add5 = add i32 %sub4, %11
  %sub6 = sub i32 %add5, 2
  %idxprom7 = zext i32 %sub6 to i64
  %12 = load i8*, i8** %src.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %idxprom7
  %13 = load i8, i8* %arrayidx8, align 1
  %conv = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv, -115
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.21

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %14 = load i32, i32* %ep.addr, align 4
  %15 = load i32, i32* %upx1.addr, align 4
  %sub12 = sub i32 %14, %15
  %16 = load i32, i32* %valign, align 4
  %add13 = add i32 %sub12, %16
  %sub14 = sub i32 %add13, 1
  %idxprom15 = zext i32 %sub14 to i64
  %17 = load i8*, i8** %src.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  %18 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp eq i32 %conv17, -66
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.11
  br label %while.end

if.end.21:                                        ; preds = %land.lhs.true.11, %land.lhs.true, %while.body
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  %19 = load i32, i32* %valign, align 4
  %tobool22 = icmp ne i32 %19, 0
  br i1 %tobool22, label %if.end.62, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %while.end
  %20 = load i32, i32* %ep.addr, align 4
  %21 = load i32, i32* %upx1.addr, align 4
  %sub24 = sub i32 %20, %21
  %add25 = add i32 %sub24, 128
  %22 = load i32, i32* %ssize.addr, align 4
  %sub26 = sub i32 %22, 8
  %cmp27 = icmp ult i32 %add25, %sub26
  br i1 %cmp27, label %if.then.29, label %if.end.62

if.then.29:                                       ; preds = %land.lhs.true.23
  %23 = load i32, i32* %ep.addr, align 4
  %24 = load i32, i32* %upx1.addr, align 4
  %sub30 = sub i32 %23, %24
  %add31 = add i32 %sub30, 128
  %idxprom32 = zext i32 %add31 to i64
  %25 = load i8*, i8** %src.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %25, i64 %idxprom32
  store i8* %arrayidx33, i8** %pt, align 8
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0))
  br label %while.cond.34

while.cond.34:                                    ; preds = %if.end.60, %if.then.29
  %26 = load i8*, i8** %pt, align 8
  %27 = load i32, i32* %ssize.addr, align 4
  %conv35 = zext i32 %27 to i64
  %28 = load i8*, i8** %pt, align 8
  %29 = load i8*, i8** %src.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub36 = sub nsw i64 %conv35, %sub.ptr.sub
  %sub37 = sub nsw i64 %sub36, 8
  %conv38 = trunc i64 %sub37 to i32
  %call = call i8* @cli_memstr(i8* %26, i32 %conv38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 2)
  store i8* %call, i8** %pt, align 8
  %tobool39 = icmp ne i8* %call, null
  br i1 %tobool39, label %while.body.40, label %while.end.61

while.body.40:                                    ; preds = %while.cond.34
  %30 = load i8*, i8** %pt, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %30, i64 6
  %31 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp eq i32 %conv42, -117
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.60

land.lhs.true.45:                                 ; preds = %while.body.40
  %32 = load i8*, i8** %pt, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %32, i64 7
  %33 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %33 to i32
  %cmp48 = icmp eq i32 %conv47, 7
  br i1 %cmp48, label %if.then.50, label %if.end.60

if.then.50:                                       ; preds = %land.lhs.true.45
  %34 = load i8*, i8** %pt, align 8
  %35 = load i8*, i8** %src.addr, align 8
  %sub.ptr.lhs.cast51 = ptrtoint i8* %34 to i64
  %sub.ptr.rhs.cast52 = ptrtoint i8* %35 to i64
  %sub.ptr.sub53 = sub i64 %sub.ptr.lhs.cast51, %sub.ptr.rhs.cast52
  %add54 = add nsw i64 %sub.ptr.sub53, 2
  %36 = load i32, i32* %ep.addr, align 4
  %conv55 = zext i32 %36 to i64
  %sub56 = sub nsw i64 %add54, %conv55
  %37 = load i32, i32* %upx1.addr, align 4
  %conv57 = zext i32 %37 to i64
  %add58 = add nsw i64 %sub56, %conv57
  %conv59 = trunc i64 %add58 to i32
  store i32 %conv59, i32* %valign, align 4
  br label %while.end.61

if.end.60:                                        ; preds = %land.lhs.true.45, %while.body.40
  %38 = load i8*, i8** %pt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %pt, align 8
  br label %while.cond.34

while.end.61:                                     ; preds = %if.then.50, %while.cond.34
  br label %if.end.62

if.end.62:                                        ; preds = %while.end.61, %land.lhs.true.23, %while.end
  %39 = load i32, i32* %valign, align 4
  %tobool63 = icmp ne i32 %39, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.201

land.lhs.true.64:                                 ; preds = %if.end.62
  %40 = load i32, i32* %ssize.addr, align 4
  %cmp65 = icmp ugt i32 %40, 0
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.201

land.lhs.true.67:                                 ; preds = %land.lhs.true.64
  %41 = load i32, i32* %ssize.addr, align 4
  %cmp68 = icmp ule i32 4, %41
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.201

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %42 = load i8*, i8** %src.addr, align 8
  %43 = load i32, i32* %ep.addr, align 4
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds i8, i8* %42, i64 %idx.ext
  %44 = load i32, i32* %upx1.addr, align 4
  %idx.ext71 = zext i32 %44 to i64
  %idx.neg = sub i64 0, %idx.ext71
  %add.ptr72 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %45 = load i32, i32* %valign, align 4
  %idx.ext73 = zext i32 %45 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %add.ptr72, i64 %idx.ext73
  %46 = load i8*, i8** %src.addr, align 8
  %cmp75 = icmp uge i8* %add.ptr74, %46
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.201

land.lhs.true.77:                                 ; preds = %land.lhs.true.70
  %47 = load i8*, i8** %src.addr, align 8
  %48 = load i32, i32* %ep.addr, align 4
  %idx.ext78 = zext i32 %48 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %47, i64 %idx.ext78
  %49 = load i32, i32* %upx1.addr, align 4
  %idx.ext80 = zext i32 %49 to i64
  %idx.neg81 = sub i64 0, %idx.ext80
  %add.ptr82 = getelementptr inbounds i8, i8* %add.ptr79, i64 %idx.neg81
  %50 = load i32, i32* %valign, align 4
  %idx.ext83 = zext i32 %50 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %add.ptr82, i64 %idx.ext83
  %add.ptr85 = getelementptr inbounds i8, i8* %add.ptr84, i64 4
  %51 = load i8*, i8** %src.addr, align 8
  %52 = load i32, i32* %ssize.addr, align 4
  %idx.ext86 = zext i32 %52 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %51, i64 %idx.ext86
  %cmp88 = icmp ule i8* %add.ptr85, %add.ptr87
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.201

land.lhs.true.90:                                 ; preds = %land.lhs.true.77
  %53 = load i8*, i8** %src.addr, align 8
  %54 = load i32, i32* %ep.addr, align 4
  %idx.ext91 = zext i32 %54 to i64
  %add.ptr92 = getelementptr inbounds i8, i8* %53, i64 %idx.ext91
  %55 = load i32, i32* %upx1.addr, align 4
  %idx.ext93 = zext i32 %55 to i64
  %idx.neg94 = sub i64 0, %idx.ext93
  %add.ptr95 = getelementptr inbounds i8, i8* %add.ptr92, i64 %idx.neg94
  %56 = load i32, i32* %valign, align 4
  %idx.ext96 = zext i32 %56 to i64
  %add.ptr97 = getelementptr inbounds i8, i8* %add.ptr95, i64 %idx.ext96
  %add.ptr98 = getelementptr inbounds i8, i8* %add.ptr97, i64 4
  %57 = load i8*, i8** %src.addr, align 8
  %cmp99 = icmp ugt i8* %add.ptr98, %57
  br i1 %cmp99, label %if.then.101, label %if.end.201

if.then.101:                                      ; preds = %land.lhs.true.90
  %58 = load i8*, i8** %dst.addr, align 8
  %59 = load i8*, i8** %src.addr, align 8
  %60 = load i32, i32* %ep.addr, align 4
  %idx.ext102 = zext i32 %60 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %59, i64 %idx.ext102
  %61 = load i32, i32* %upx1.addr, align 4
  %idx.ext104 = zext i32 %61 to i64
  %idx.neg105 = sub i64 0, %idx.ext104
  %add.ptr106 = getelementptr inbounds i8, i8* %add.ptr103, i64 %idx.neg105
  %62 = load i32, i32* %valign, align 4
  %idx.ext107 = zext i32 %62 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %add.ptr106, i64 %idx.ext107
  %63 = bitcast i8* %add.ptr108 to i32*
  %64 = load i32, i32* %63, align 4
  %idx.ext109 = sext i32 %64 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %58, i64 %idx.ext109
  store i8* %add.ptr110, i8** %imports, align 8
  %65 = load i8*, i8** %imports, align 8
  %66 = load i8*, i8** %dst.addr, align 8
  %sub.ptr.lhs.cast111 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast112 = ptrtoint i8* %66 to i64
  %sub.ptr.sub113 = sub i64 %sub.ptr.lhs.cast111, %sub.ptr.rhs.cast112
  %conv114 = trunc i64 %sub.ptr.sub113 to i32
  store i32 %conv114, i32* %realstuffsz, align 4
  %67 = load i32, i32* %realstuffsz, align 4
  %68 = load i32*, i32** %dsize.addr, align 8
  %69 = load i32, i32* %68, align 4
  %cmp115 = icmp uge i32 %67, %69
  br i1 %cmp115, label %if.then.117, label %if.else

if.then.117:                                      ; preds = %if.then.101
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.200

if.else:                                          ; preds = %if.then.101
  %70 = load i8*, i8** %imports, align 8
  store i8* %70, i8** %pehdr, align 8
  br label %while.cond.118

while.cond.118:                                   ; preds = %while.end.192, %if.else
  %71 = load i32*, i32** %dsize.addr, align 8
  %72 = load i32, i32* %71, align 4
  %cmp119 = icmp ugt i32 %72, 0
  br i1 %cmp119, label %land.lhs.true.121, label %land.end

land.lhs.true.121:                                ; preds = %while.cond.118
  %73 = load i32*, i32** %dsize.addr, align 8
  %74 = load i32, i32* %73, align 4
  %cmp122 = icmp ule i32 8, %74
  br i1 %cmp122, label %land.lhs.true.124, label %land.end

land.lhs.true.124:                                ; preds = %land.lhs.true.121
  %75 = load i8*, i8** %pehdr, align 8
  %76 = load i8*, i8** %dst.addr, align 8
  %cmp125 = icmp uge i8* %75, %76
  br i1 %cmp125, label %land.lhs.true.127, label %land.end

land.lhs.true.127:                                ; preds = %land.lhs.true.124
  %77 = load i8*, i8** %pehdr, align 8
  %add.ptr128 = getelementptr inbounds i8, i8* %77, i64 8
  %78 = load i8*, i8** %dst.addr, align 8
  %79 = load i32*, i32** %dsize.addr, align 8
  %80 = load i32, i32* %79, align 4
  %idx.ext129 = zext i32 %80 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %78, i64 %idx.ext129
  %cmp131 = icmp ule i8* %add.ptr128, %add.ptr130
  br i1 %cmp131, label %land.lhs.true.133, label %land.end

land.lhs.true.133:                                ; preds = %land.lhs.true.127
  %81 = load i8*, i8** %pehdr, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %81, i64 8
  %82 = load i8*, i8** %dst.addr, align 8
  %cmp135 = icmp ugt i8* %add.ptr134, %82
  br i1 %cmp135, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.133
  %83 = load i8*, i8** %pehdr, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %tobool137 = icmp ne i32 %85, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.133, %land.lhs.true.127, %land.lhs.true.124, %land.lhs.true.121, %while.cond.118
  %86 = phi i1 [ false, %land.lhs.true.133 ], [ false, %land.lhs.true.127 ], [ false, %land.lhs.true.124 ], [ false, %land.lhs.true.121 ], [ false, %while.cond.118 ], [ %tobool137, %land.rhs ]
  br i1 %86, label %while.body.138, label %while.end.194

while.body.138:                                   ; preds = %land.end
  %87 = load i8*, i8** %pehdr, align 8
  %add.ptr139 = getelementptr inbounds i8, i8* %87, i64 8
  store i8* %add.ptr139, i8** %pehdr, align 8
  br label %while.cond.140

while.cond.140:                                   ; preds = %while.end.190, %while.body.138
  %88 = load i32*, i32** %dsize.addr, align 8
  %89 = load i32, i32* %88, align 4
  %cmp141 = icmp ugt i32 %89, 0
  br i1 %cmp141, label %land.lhs.true.143, label %land.end.162

land.lhs.true.143:                                ; preds = %while.cond.140
  %90 = load i32*, i32** %dsize.addr, align 8
  %91 = load i32, i32* %90, align 4
  %cmp144 = icmp ule i32 2, %91
  br i1 %cmp144, label %land.lhs.true.146, label %land.end.162

land.lhs.true.146:                                ; preds = %land.lhs.true.143
  %92 = load i8*, i8** %pehdr, align 8
  %93 = load i8*, i8** %dst.addr, align 8
  %cmp147 = icmp uge i8* %92, %93
  br i1 %cmp147, label %land.lhs.true.149, label %land.end.162

land.lhs.true.149:                                ; preds = %land.lhs.true.146
  %94 = load i8*, i8** %pehdr, align 8
  %add.ptr150 = getelementptr inbounds i8, i8* %94, i64 2
  %95 = load i8*, i8** %dst.addr, align 8
  %96 = load i32*, i32** %dsize.addr, align 8
  %97 = load i32, i32* %96, align 4
  %idx.ext151 = zext i32 %97 to i64
  %add.ptr152 = getelementptr inbounds i8, i8* %95, i64 %idx.ext151
  %cmp153 = icmp ule i8* %add.ptr150, %add.ptr152
  br i1 %cmp153, label %land.lhs.true.155, label %land.end.162

land.lhs.true.155:                                ; preds = %land.lhs.true.149
  %98 = load i8*, i8** %pehdr, align 8
  %add.ptr156 = getelementptr inbounds i8, i8* %98, i64 2
  %99 = load i8*, i8** %dst.addr, align 8
  %cmp157 = icmp ugt i8* %add.ptr156, %99
  br i1 %cmp157, label %land.rhs.159, label %land.end.162

land.rhs.159:                                     ; preds = %land.lhs.true.155
  %100 = load i8*, i8** %pehdr, align 8
  %101 = load i8, i8* %100, align 1
  %conv160 = sext i8 %101 to i32
  %tobool161 = icmp ne i32 %conv160, 0
  br label %land.end.162

land.end.162:                                     ; preds = %land.rhs.159, %land.lhs.true.155, %land.lhs.true.149, %land.lhs.true.146, %land.lhs.true.143, %while.cond.140
  %102 = phi i1 [ false, %land.lhs.true.155 ], [ false, %land.lhs.true.149 ], [ false, %land.lhs.true.146 ], [ false, %land.lhs.true.143 ], [ false, %while.cond.140 ], [ %tobool161, %land.rhs.159 ]
  br i1 %102, label %while.body.163, label %while.end.192

while.body.163:                                   ; preds = %land.end.162
  %103 = load i8*, i8** %pehdr, align 8
  %incdec.ptr164 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr164, i8** %pehdr, align 8
  br label %while.cond.165

while.cond.165:                                   ; preds = %while.body.188, %while.body.163
  %104 = load i32*, i32** %dsize.addr, align 8
  %105 = load i32, i32* %104, align 4
  %cmp166 = icmp ugt i32 %105, 0
  br i1 %cmp166, label %land.lhs.true.168, label %land.end.187

land.lhs.true.168:                                ; preds = %while.cond.165
  %106 = load i32*, i32** %dsize.addr, align 8
  %107 = load i32, i32* %106, align 4
  %cmp169 = icmp ule i32 2, %107
  br i1 %cmp169, label %land.lhs.true.171, label %land.end.187

land.lhs.true.171:                                ; preds = %land.lhs.true.168
  %108 = load i8*, i8** %pehdr, align 8
  %109 = load i8*, i8** %dst.addr, align 8
  %cmp172 = icmp uge i8* %108, %109
  br i1 %cmp172, label %land.lhs.true.174, label %land.end.187

land.lhs.true.174:                                ; preds = %land.lhs.true.171
  %110 = load i8*, i8** %pehdr, align 8
  %add.ptr175 = getelementptr inbounds i8, i8* %110, i64 2
  %111 = load i8*, i8** %dst.addr, align 8
  %112 = load i32*, i32** %dsize.addr, align 8
  %113 = load i32, i32* %112, align 4
  %idx.ext176 = zext i32 %113 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %111, i64 %idx.ext176
  %cmp178 = icmp ule i8* %add.ptr175, %add.ptr177
  br i1 %cmp178, label %land.lhs.true.180, label %land.end.187

land.lhs.true.180:                                ; preds = %land.lhs.true.174
  %114 = load i8*, i8** %pehdr, align 8
  %add.ptr181 = getelementptr inbounds i8, i8* %114, i64 2
  %115 = load i8*, i8** %dst.addr, align 8
  %cmp182 = icmp ugt i8* %add.ptr181, %115
  br i1 %cmp182, label %land.rhs.184, label %land.end.187

land.rhs.184:                                     ; preds = %land.lhs.true.180
  %116 = load i8*, i8** %pehdr, align 8
  %117 = load i8, i8* %116, align 1
  %conv185 = sext i8 %117 to i32
  %tobool186 = icmp ne i32 %conv185, 0
  br label %land.end.187

land.end.187:                                     ; preds = %land.rhs.184, %land.lhs.true.180, %land.lhs.true.174, %land.lhs.true.171, %land.lhs.true.168, %while.cond.165
  %118 = phi i1 [ false, %land.lhs.true.180 ], [ false, %land.lhs.true.174 ], [ false, %land.lhs.true.171 ], [ false, %land.lhs.true.168 ], [ false, %while.cond.165 ], [ %tobool186, %land.rhs.184 ]
  br i1 %118, label %while.body.188, label %while.end.190

while.body.188:                                   ; preds = %land.end.187
  %119 = load i8*, i8** %pehdr, align 8
  %incdec.ptr189 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr189, i8** %pehdr, align 8
  br label %while.cond.165

while.end.190:                                    ; preds = %land.end.187
  %120 = load i8*, i8** %pehdr, align 8
  %incdec.ptr191 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr191, i8** %pehdr, align 8
  br label %while.cond.140

while.end.192:                                    ; preds = %land.end.162
  %121 = load i8*, i8** %pehdr, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %incdec.ptr193, i8** %pehdr, align 8
  br label %while.cond.118

while.end.194:                                    ; preds = %land.end
  %122 = load i8*, i8** %pehdr, align 8
  %add.ptr195 = getelementptr inbounds i8, i8* %122, i64 4
  store i8* %add.ptr195, i8** %pehdr, align 8
  %123 = load i8*, i8** %dst.addr, align 8
  %124 = load i32*, i32** %dsize.addr, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i8*, i8** %pehdr, align 8
  %call196 = call i8* @checkpe(i8* %123, i32 %125, i8* %126, i32* %valign, i32* %sectcnt)
  store i8* %call196, i8** %sections, align 8
  %tobool197 = icmp ne i8* %call196, null
  br i1 %tobool197, label %if.end.199, label %if.then.198

if.then.198:                                      ; preds = %while.end.194
  store i8* null, i8** %pehdr, align 8
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.198, %while.end.194
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.117
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %land.lhs.true.90, %land.lhs.true.77, %land.lhs.true.70, %land.lhs.true.67, %land.lhs.true.64, %if.end.62
  %127 = load i8*, i8** %pehdr, align 8
  %tobool202 = icmp ne i8* %127, null
  br i1 %tobool202, label %if.end.228, label %land.lhs.true.203

land.lhs.true.203:                                ; preds = %if.end.201
  %128 = load i32, i32* %dend.addr, align 4
  %cmp204 = icmp ugt i32 %128, 288
  br i1 %cmp204, label %if.then.206, label %if.end.228

if.then.206:                                      ; preds = %land.lhs.true.203
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  %129 = load i32, i32* %dend.addr, align 4
  %sub207 = sub i32 %129, 248
  %sub208 = sub i32 %sub207, 40
  %idxprom209 = zext i32 %sub208 to i64
  %130 = load i8*, i8** %dst.addr, align 8
  %arrayidx210 = getelementptr inbounds i8, i8* %130, i64 %idxprom209
  store i8* %arrayidx210, i8** %pehdr, align 8
  br label %while.cond.211

while.cond.211:                                   ; preds = %if.end.218, %if.then.206
  %131 = load i8*, i8** %pehdr, align 8
  %132 = load i8*, i8** %dst.addr, align 8
  %cmp212 = icmp ugt i8* %131, %132
  br i1 %cmp212, label %while.body.214, label %while.end.220

while.body.214:                                   ; preds = %while.cond.211
  %133 = load i8*, i8** %dst.addr, align 8
  %134 = load i32*, i32** %dsize.addr, align 8
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %pehdr, align 8
  %call215 = call i8* @checkpe(i8* %133, i32 %135, i8* %136, i32* %valign, i32* %sectcnt)
  store i8* %call215, i8** %sections, align 8
  %tobool216 = icmp ne i8* %call215, null
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %while.body.214
  br label %while.end.220

if.end.218:                                       ; preds = %while.body.214
  %137 = load i8*, i8** %pehdr, align 8
  %incdec.ptr219 = getelementptr inbounds i8, i8* %137, i32 -1
  store i8* %incdec.ptr219, i8** %pehdr, align 8
  br label %while.cond.211

while.end.220:                                    ; preds = %if.then.217, %while.cond.211
  %138 = load i8*, i8** %pehdr, align 8
  %139 = load i8*, i8** %dst.addr, align 8
  %sub.ptr.lhs.cast221 = ptrtoint i8* %138 to i64
  %sub.ptr.rhs.cast222 = ptrtoint i8* %139 to i64
  %sub.ptr.sub223 = sub i64 %sub.ptr.lhs.cast221, %sub.ptr.rhs.cast222
  %conv224 = trunc i64 %sub.ptr.sub223 to i32
  store i32 %conv224, i32* %realstuffsz, align 4
  %tobool225 = icmp ne i32 %conv224, 0
  br i1 %tobool225, label %if.end.227, label %if.then.226

if.then.226:                                      ; preds = %while.end.220
  store i8* null, i8** %pehdr, align 8
  br label %if.end.227

if.end.227:                                       ; preds = %if.then.226, %while.end.220
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %land.lhs.true.203, %if.end.201
  %140 = load i8*, i8** %pehdr, align 8
  %tobool229 = icmp ne i8* %140, null
  br i1 %tobool229, label %if.end.253, label %if.then.230

if.then.230:                                      ; preds = %if.end.228
  %141 = load i32, i32* %dend.addr, align 4
  %div = udiv i32 %141, 4096
  %142 = load i32, i32* %dend.addr, align 4
  %rem = urem i32 %142, 4096
  %cmp231 = icmp ne i32 %rem, 0
  %conv232 = zext i1 %cmp231 to i32
  %add233 = add i32 %div, %conv232
  %mul = mul i32 %add233, 4096
  store i32 %mul, i32* %rebsz, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0))
  %143 = load i32, i32* %rebsz, align 4
  %add234 = add i32 %143, 512
  %conv235 = zext i32 %add234 to i64
  %call236 = call i8* @cli_calloc(i64 %conv235, i64 1)
  store i8* %call236, i8** %newbuf, align 8
  %tobool237 = icmp ne i8* %call236, null
  br i1 %tobool237, label %if.end.239, label %if.then.238

if.then.238:                                      ; preds = %if.then.230
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.239:                                       ; preds = %if.then.230
  %144 = load i8*, i8** %newbuf, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %144, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.6, i32 0, i32 0), i64 208, i32 1, i1 false)
  %145 = load i8*, i8** %newbuf, align 8
  %add.ptr240 = getelementptr inbounds i8, i8* %145, i64 208
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr240, i8* getelementptr inbounds ([289 x i8], [289 x i8]* @.str.7, i32 0, i32 0), i64 288, i32 1, i1 false)
  %146 = load i8*, i8** %newbuf, align 8
  %add.ptr241 = getelementptr inbounds i8, i8* %146, i64 512
  %147 = load i8*, i8** %dst.addr, align 8
  %148 = load i32, i32* %dend.addr, align 4
  %conv242 = zext i32 %148 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr241, i8* %147, i64 %conv242, i32 1, i1 false)
  %149 = load i8*, i8** %dst.addr, align 8
  %150 = load i8*, i8** %newbuf, align 8
  %151 = load i32, i32* %dend.addr, align 4
  %add243 = add i32 %151, 512
  %conv244 = zext i32 %add243 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %149, i8* %150, i64 %conv244, i32 1, i1 false)
  %152 = load i8*, i8** %newbuf, align 8
  call void @free(i8* %152) #1
  %153 = load i32, i32* %rebsz, align 4
  %add245 = add i32 %153, 4096
  %154 = load i8*, i8** %dst.addr, align 8
  %add.ptr246 = getelementptr inbounds i8, i8* %154, i64 208
  %add.ptr247 = getelementptr inbounds i8, i8* %add.ptr246, i64 80
  %155 = bitcast i8* %add.ptr247 to i32*
  store i32 %add245, i32* %155, align 4
  %156 = load i32, i32* %rebsz, align 4
  %157 = load i8*, i8** %dst.addr, align 8
  %add.ptr248 = getelementptr inbounds i8, i8* %157, i64 208
  %add.ptr249 = getelementptr inbounds i8, i8* %add.ptr248, i64 256
  %158 = bitcast i8* %add.ptr249 to i32*
  store i32 %156, i32* %158, align 4
  %159 = load i32, i32* %rebsz, align 4
  %160 = load i8*, i8** %dst.addr, align 8
  %add.ptr250 = getelementptr inbounds i8, i8* %160, i64 208
  %add.ptr251 = getelementptr inbounds i8, i8* %add.ptr250, i64 264
  %161 = bitcast i8* %add.ptr251 to i32*
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %rebsz, align 4
  %add252 = add i32 %162, 512
  %163 = load i32*, i32** %dsize.addr, align 8
  store i32 %add252, i32* %163, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

if.end.253:                                       ; preds = %if.end.228
  %164 = load i32, i32* %valign, align 4
  %tobool254 = icmp ne i32 %164, 0
  br i1 %tobool254, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.253
  %165 = load i32, i32* %foffset, align 4
  %166 = load i32, i32* %sectcnt, align 4
  %mul255 = mul i32 40, %166
  %add256 = add i32 %165, %mul255
  %167 = load i32, i32* %valign, align 4
  %div257 = udiv i32 %add256, %167
  %168 = load i32, i32* %foffset, align 4
  %169 = load i32, i32* %sectcnt, align 4
  %mul258 = mul i32 40, %169
  %add259 = add i32 %168, %mul258
  %170 = load i32, i32* %valign, align 4
  %rem260 = urem i32 %add259, %170
  %cmp261 = icmp ne i32 %rem260, 0
  %conv262 = zext i1 %cmp261 to i32
  %add263 = add i32 %div257, %conv262
  %171 = load i32, i32* %valign, align 4
  %mul264 = mul i32 %add263, %171
  br label %cond.end

cond.false:                                       ; preds = %if.end.253
  %172 = load i32, i32* %foffset, align 4
  %173 = load i32, i32* %sectcnt, align 4
  %mul265 = mul i32 40, %173
  %add266 = add i32 %172, %mul265
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul264, %cond.true ], [ %add266, %cond.false ]
  store i32 %cond, i32* %foffset, align 4
  store i32 0, i32* %upd, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %174 = load i32, i32* %upd, align 4
  %175 = load i32, i32* %sectcnt, align 4
  %cmp267 = icmp ult i32 %174, %175
  br i1 %cmp267, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %176 = load i32, i32* %valign, align 4
  %tobool269 = icmp ne i32 %176, 0
  br i1 %tobool269, label %cond.true.270, label %cond.false.279

cond.true.270:                                    ; preds = %for.body
  %177 = load i8*, i8** %sections, align 8
  %add.ptr271 = getelementptr inbounds i8, i8* %177, i64 8
  %178 = bitcast i8* %add.ptr271 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %valign, align 4
  %div272 = udiv i32 %179, %180
  %181 = load i8*, i8** %sections, align 8
  %add.ptr273 = getelementptr inbounds i8, i8* %181, i64 8
  %182 = bitcast i8* %add.ptr273 to i32*
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %valign, align 4
  %rem274 = urem i32 %183, %184
  %cmp275 = icmp ne i32 %rem274, 0
  %conv276 = zext i1 %cmp275 to i32
  %add277 = add i32 %div272, %conv276
  %185 = load i32, i32* %valign, align 4
  %mul278 = mul i32 %add277, %185
  br label %cond.end.281

cond.false.279:                                   ; preds = %for.body
  %186 = load i8*, i8** %sections, align 8
  %add.ptr280 = getelementptr inbounds i8, i8* %186, i64 8
  %187 = bitcast i8* %add.ptr280 to i32*
  %188 = load i32, i32* %187, align 4
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.279, %cond.true.270
  %cond282 = phi i32 [ %mul278, %cond.true.270 ], [ %188, %cond.false.279 ]
  store i32 %cond282, i32* %vsize, align 4
  %189 = load i32, i32* %valign, align 4
  %tobool283 = icmp ne i32 %189, 0
  br i1 %tobool283, label %cond.true.284, label %cond.false.288

cond.true.284:                                    ; preds = %cond.end.281
  %190 = load i8*, i8** %sections, align 8
  %add.ptr285 = getelementptr inbounds i8, i8* %190, i64 12
  %191 = bitcast i8* %add.ptr285 to i32*
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %valign, align 4
  %div286 = udiv i32 %192, %193
  %194 = load i32, i32* %valign, align 4
  %mul287 = mul i32 %div286, %194
  br label %cond.end.290

cond.false.288:                                   ; preds = %cond.end.281
  %195 = load i8*, i8** %sections, align 8
  %add.ptr289 = getelementptr inbounds i8, i8* %195, i64 12
  %196 = bitcast i8* %add.ptr289 to i32*
  %197 = load i32, i32* %196, align 4
  br label %cond.end.290

cond.end.290:                                     ; preds = %cond.false.288, %cond.true.284
  %cond291 = phi i32 [ %mul287, %cond.true.284 ], [ %197, %cond.false.288 ]
  store i32 %cond291, i32* %urva, align 4
  %198 = load i32, i32* %realstuffsz, align 4
  %cmp292 = icmp ugt i32 %198, 0
  br i1 %cmp292, label %land.lhs.true.294, label %if.then.312

land.lhs.true.294:                                ; preds = %cond.end.290
  %199 = load i32, i32* %vsize, align 4
  %cmp295 = icmp ugt i32 %199, 0
  br i1 %cmp295, label %land.lhs.true.297, label %if.then.312

land.lhs.true.297:                                ; preds = %land.lhs.true.294
  %200 = load i32, i32* %vsize, align 4
  %201 = load i32, i32* %realstuffsz, align 4
  %cmp298 = icmp ule i32 %200, %201
  br i1 %cmp298, label %land.lhs.true.300, label %if.then.312

land.lhs.true.300:                                ; preds = %land.lhs.true.297
  %202 = load i32, i32* %urva, align 4
  %203 = load i32, i32* %upx0.addr, align 4
  %cmp301 = icmp uge i32 %202, %203
  br i1 %cmp301, label %land.lhs.true.303, label %if.then.312

land.lhs.true.303:                                ; preds = %land.lhs.true.300
  %204 = load i32, i32* %urva, align 4
  %205 = load i32, i32* %vsize, align 4
  %add304 = add i32 %204, %205
  %206 = load i32, i32* %upx0.addr, align 4
  %207 = load i32, i32* %realstuffsz, align 4
  %add305 = add i32 %206, %207
  %cmp306 = icmp ule i32 %add304, %add305
  br i1 %cmp306, label %land.lhs.true.308, label %if.then.312

land.lhs.true.308:                                ; preds = %land.lhs.true.303
  %208 = load i32, i32* %urva, align 4
  %209 = load i32, i32* %vsize, align 4
  %add309 = add i32 %208, %209
  %210 = load i32, i32* %upx0.addr, align 4
  %cmp310 = icmp ugt i32 %add309, %210
  br i1 %cmp310, label %if.end.313, label %if.then.312

if.then.312:                                      ; preds = %land.lhs.true.308, %land.lhs.true.303, %land.lhs.true.300, %land.lhs.true.297, %land.lhs.true.294, %cond.end.290
  %211 = load i32, i32* %upd, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i32 %211)
  store i32 0, i32* %retval
  br label %return

if.end.313:                                       ; preds = %land.lhs.true.308
  %212 = load i32, i32* %vsize, align 4
  %213 = load i8*, i8** %sections, align 8
  %add.ptr314 = getelementptr inbounds i8, i8* %213, i64 8
  %214 = bitcast i8* %add.ptr314 to i32*
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %urva, align 4
  %216 = load i8*, i8** %sections, align 8
  %add.ptr315 = getelementptr inbounds i8, i8* %216, i64 12
  %217 = bitcast i8* %add.ptr315 to i32*
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %vsize, align 4
  %219 = load i8*, i8** %sections, align 8
  %add.ptr316 = getelementptr inbounds i8, i8* %219, i64 16
  %220 = bitcast i8* %add.ptr316 to i32*
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* %foffset, align 4
  %222 = load i8*, i8** %sections, align 8
  %add.ptr317 = getelementptr inbounds i8, i8* %222, i64 20
  %223 = bitcast i8* %add.ptr317 to i32*
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %vsize, align 4
  %225 = load i32, i32* %foffset, align 4
  %add318 = add i32 %225, %224
  store i32 %add318, i32* %foffset, align 4
  %226 = load i8*, i8** %sections, align 8
  %add.ptr319 = getelementptr inbounds i8, i8* %226, i64 40
  store i8* %add.ptr319, i8** %sections, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.313
  %227 = load i32, i32* %upd, align 4
  %inc320 = add i32 %227, 1
  store i32 %inc320, i32* %upd, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %228 = load i8*, i8** %pehdr, align 8
  %add.ptr321 = getelementptr inbounds i8, i8* %228, i64 8
  %229 = bitcast i8* %add.ptr321 to i32*
  store i32 1296124995, i32* %229, align 4
  %230 = load i32, i32* %valign, align 4
  %231 = load i8*, i8** %pehdr, align 8
  %add.ptr322 = getelementptr inbounds i8, i8* %231, i64 60
  %232 = bitcast i8* %add.ptr322 to i32*
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %foffset, align 4
  %conv323 = zext i32 %233 to i64
  %call324 = call i8* @cli_calloc(i64 %conv323, i64 1)
  store i8* %call324, i8** %newbuf, align 8
  %tobool325 = icmp ne i8* %call324, null
  br i1 %tobool325, label %if.end.327, label %if.then.326

if.then.326:                                      ; preds = %for.end
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.327:                                       ; preds = %for.end
  %234 = load i8*, i8** %newbuf, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %234, i8* getelementptr inbounds ([209 x i8], [209 x i8]* @.str.6, i32 0, i32 0), i64 208, i32 1, i1 false)
  %235 = load i8*, i8** %newbuf, align 8
  %add.ptr328 = getelementptr inbounds i8, i8* %235, i64 208
  %236 = load i8*, i8** %pehdr, align 8
  %237 = load i32, i32* %sectcnt, align 4
  %mul329 = mul i32 40, %237
  %add330 = add i32 248, %mul329
  %conv331 = zext i32 %add330 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr328, i8* %236, i64 %conv331, i32 1, i1 false)
  %238 = load i8*, i8** %pehdr, align 8
  %add.ptr332 = getelementptr inbounds i8, i8* %238, i64 248
  store i8* %add.ptr332, i8** %sections, align 8
  store i32 0, i32* %upd, align 4
  br label %for.cond.333

for.cond.333:                                     ; preds = %for.inc.349, %if.end.327
  %239 = load i32, i32* %upd, align 4
  %240 = load i32, i32* %sectcnt, align 4
  %cmp334 = icmp ult i32 %239, %240
  br i1 %cmp334, label %for.body.336, label %for.end.351

for.body.336:                                     ; preds = %for.cond.333
  %241 = load i8*, i8** %newbuf, align 8
  %242 = load i8*, i8** %sections, align 8
  %add.ptr337 = getelementptr inbounds i8, i8* %242, i64 20
  %243 = bitcast i8* %add.ptr337 to i32*
  %244 = load i32, i32* %243, align 4
  %idx.ext338 = sext i32 %244 to i64
  %add.ptr339 = getelementptr inbounds i8, i8* %241, i64 %idx.ext338
  %245 = load i8*, i8** %dst.addr, align 8
  %246 = load i8*, i8** %sections, align 8
  %add.ptr340 = getelementptr inbounds i8, i8* %246, i64 12
  %247 = bitcast i8* %add.ptr340 to i32*
  %248 = load i32, i32* %247, align 4
  %idx.ext341 = sext i32 %248 to i64
  %add.ptr342 = getelementptr inbounds i8, i8* %245, i64 %idx.ext341
  %249 = load i32, i32* %upx0.addr, align 4
  %idx.ext343 = zext i32 %249 to i64
  %idx.neg344 = sub i64 0, %idx.ext343
  %add.ptr345 = getelementptr inbounds i8, i8* %add.ptr342, i64 %idx.neg344
  %250 = load i8*, i8** %sections, align 8
  %add.ptr346 = getelementptr inbounds i8, i8* %250, i64 16
  %251 = bitcast i8* %add.ptr346 to i32*
  %252 = load i32, i32* %251, align 4
  %conv347 = sext i32 %252 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr339, i8* %add.ptr345, i64 %conv347, i32 1, i1 false)
  %253 = load i8*, i8** %sections, align 8
  %add.ptr348 = getelementptr inbounds i8, i8* %253, i64 40
  store i8* %add.ptr348, i8** %sections, align 8
  br label %for.inc.349

for.inc.349:                                      ; preds = %for.body.336
  %254 = load i32, i32* %upd, align 4
  %inc350 = add i32 %254, 1
  store i32 %inc350, i32* %upd, align 4
  br label %for.cond.333

for.end.351:                                      ; preds = %for.cond.333
  %255 = load i32, i32* %foffset, align 4
  %256 = load i32*, i32** %dsize.addr, align 8
  %257 = load i32, i32* %256, align 4
  %add352 = add i32 %257, 8192
  %cmp353 = icmp ugt i32 %255, %add352
  br i1 %cmp353, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %for.end.351
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i32 0, i32 0))
  %258 = load i8*, i8** %newbuf, align 8
  call void @free(i8* %258) #1
  store i32 0, i32* %retval
  br label %return

if.end.356:                                       ; preds = %for.end.351
  %259 = load i8*, i8** %dst.addr, align 8
  %260 = load i8*, i8** %newbuf, align 8
  %261 = load i32, i32* %foffset, align 4
  %conv357 = zext i32 %261 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %259, i8* %260, i64 %conv357, i32 1, i1 false)
  %262 = load i32, i32* %foffset, align 4
  %263 = load i32*, i32** %dsize.addr, align 8
  store i32 %262, i32* %263, align 4
  %264 = load i8*, i8** %newbuf, align 8
  call void @free(i8* %264) #1
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.356, %if.then.355, %if.then.326, %if.then.312, %if.end.239, %if.then.238, %if.then
  %265 = load i32, i32* %retval
  ret i32 %265
}

; Function Attrs: nounwind uwtable
define i32 @upx_inflate2d(i8* %src, i32 %ssize, i8* %dst, i32* %dsize, i32 %upx0, i32 %upx1, i32 %ep) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32*, align 8
  %upx0.addr = alloca i32, align 4
  %upx1.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %backbytes = alloca i32, align 4
  %unp_offset = alloca i32, align 4
  %backsize = alloca i32, align 4
  %myebx = alloca i32, align 4
  %scur = alloca i32, align 4
  %dcur = alloca i32, align 4
  %i = alloca i32, align 4
  %magic = alloca [3 x i32], align 4
  %oob = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %dsize, i32** %dsize.addr, align 8
  store i32 %upx0, i32* %upx0.addr, align 4
  store i32 %upx1, i32* %upx1.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 -1, i32* %unp_offset, align 4
  store i32 0, i32* %myebx, align 4
  store i32 0, i32* %scur, align 4
  store i32 0, i32* %dcur, align 4
  %0 = bitcast [3 x i32]* %magic to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i32]* @upx_inflate2d.magic to i8*), i64 12, i32 4, i1 false)
  br label %while.body

while.body:                                       ; preds = %entry, %for.end
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end, %while.body
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i32, i32* %ssize.addr, align 4
  %call = call i32 @doubleebx(i8* %1, i32* %myebx, i32* %scur, i32 %2)
  store i32 %call, i32* %oob, align 4
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %while.body.2, label %while.end

while.body.2:                                     ; preds = %while.cond.1
  %3 = load i32, i32* %scur, align 4
  %4 = load i32, i32* %ssize.addr, align 4
  %cmp3 = icmp uge i32 %3, %4
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body.2
  %5 = load i32, i32* %dcur, align 4
  %6 = load i32*, i32** %dsize.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp4 = icmp uge i32 %5, %7
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body.2
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %scur, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %scur, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %11 = load i32, i32* %dcur, align 4
  %inc5 = add i32 %11, 1
  store i32 %inc5, i32* %dcur, align 4
  %idxprom6 = zext i32 %11 to i64
  %12 = load i8*, i8** %dst.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 %idxprom6
  store i8 %10, i8* %arrayidx7, align 1
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %13 = load i32, i32* %oob, align 4
  %cmp8 = icmp eq i32 %13, -1
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %while.end
  store i32 1, i32* %backbytes, align 4
  br label %while.body.12

while.body.12:                                    ; preds = %if.end.10, %if.end.26
  %14 = load i8*, i8** %src.addr, align 8
  %15 = load i32, i32* %ssize.addr, align 4
  %call13 = call i32 @doubleebx(i8* %14, i32* %myebx, i32* %scur, i32 %15)
  store i32 %call13, i32* %oob, align 4
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %while.body.12
  %16 = load i32, i32* %backbytes, align 4
  %mul = mul nsw i32 %16, 2
  %17 = load i32, i32* %oob, align 4
  %add = add nsw i32 %mul, %17
  store i32 %add, i32* %backbytes, align 4
  %18 = load i8*, i8** %src.addr, align 8
  %19 = load i32, i32* %ssize.addr, align 4
  %call17 = call i32 @doubleebx(i8* %18, i32* %myebx, i32* %scur, i32 %19)
  store i32 %call17, i32* %oob, align 4
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %20 = load i32, i32* %oob, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.20
  br label %while.end.29

if.end.22:                                        ; preds = %if.end.20
  %21 = load i32, i32* %backbytes, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %backbytes, align 4
  %22 = load i8*, i8** %src.addr, align 8
  %23 = load i32, i32* %ssize.addr, align 4
  %call23 = call i32 @doubleebx(i8* %22, i32* %myebx, i32* %scur, i32 %23)
  store i32 %call23, i32* %oob, align 4
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store i32 -1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %24 = load i32, i32* %backbytes, align 4
  %mul27 = mul nsw i32 %24, 2
  %25 = load i32, i32* %oob, align 4
  %add28 = add nsw i32 %mul27, %25
  store i32 %add28, i32* %backbytes, align 4
  br label %while.body.12

while.end.29:                                     ; preds = %if.then.21
  store i32 0, i32* %backsize, align 4
  %26 = load i32, i32* %backbytes, align 4
  %sub = sub nsw i32 %26, 3
  store i32 %sub, i32* %backbytes, align 4
  %27 = load i32, i32* %backbytes, align 4
  %cmp30 = icmp sge i32 %27, 0
  br i1 %cmp30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %while.end.29
  %28 = load i32, i32* %scur, align 4
  %29 = load i32, i32* %ssize.addr, align 4
  %cmp32 = icmp uge i32 %28, %29
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.31
  store i32 -1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %if.then.31
  %30 = load i32, i32* %backbytes, align 4
  %shl = shl i32 %30, 8
  store i32 %shl, i32* %backbytes, align 4
  %31 = load i32, i32* %scur, align 4
  %inc35 = add i32 %31, 1
  store i32 %inc35, i32* %scur, align 4
  %idxprom36 = zext i32 %31 to i64
  %32 = load i8*, i8** %src.addr, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %32, i64 %idxprom36
  %33 = load i8, i8* %arrayidx37, align 1
  %conv = zext i8 %33 to i32
  %34 = load i32, i32* %backbytes, align 4
  %add38 = add nsw i32 %34, %conv
  store i32 %add38, i32* %backbytes, align 4
  %35 = load i32, i32* %backbytes, align 4
  %xor = xor i32 %35, -1
  store i32 %xor, i32* %backbytes, align 4
  %36 = load i32, i32* %backbytes, align 4
  %tobool39 = icmp ne i32 %36, 0
  br i1 %tobool39, label %if.end.41, label %if.then.40

if.then.40:                                       ; preds = %if.end.34
  br label %while.end.158

if.end.41:                                        ; preds = %if.end.34
  %37 = load i32, i32* %backbytes, align 4
  %and = and i32 %37, 1
  store i32 %and, i32* %backsize, align 4
  %38 = load i32, i32* %backbytes, align 4
  %shr = ashr i32 %38, 1
  store i32 %shr, i32* %backbytes, align 4
  %39 = load i32, i32* %backbytes, align 4
  store i32 %39, i32* %unp_offset, align 4
  br label %if.end.47

if.else:                                          ; preds = %while.end.29
  %40 = load i8*, i8** %src.addr, align 8
  %41 = load i32, i32* %ssize.addr, align 4
  %call42 = call i32 @doubleebx(i8* %40, i32* %myebx, i32* %scur, i32 %41)
  store i32 %call42, i32* %backsize, align 4
  %cmp43 = icmp eq i32 %call42, -1
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.41
  %42 = load i8*, i8** %src.addr, align 8
  %43 = load i32, i32* %ssize.addr, align 4
  %call48 = call i32 @doubleebx(i8* %42, i32* %myebx, i32* %scur, i32 %43)
  store i32 %call48, i32* %oob, align 4
  %cmp49 = icmp eq i32 %call48, -1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  store i32 -1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %if.end.47
  %44 = load i32, i32* %backsize, align 4
  %mul53 = mul i32 %44, 2
  %45 = load i32, i32* %oob, align 4
  %add54 = add i32 %mul53, %45
  store i32 %add54, i32* %backsize, align 4
  %46 = load i32, i32* %backsize, align 4
  %tobool55 = icmp ne i32 %46, 0
  br i1 %tobool55, label %if.end.73, label %if.then.56

if.then.56:                                       ; preds = %if.end.52
  %47 = load i32, i32* %backsize, align 4
  %inc57 = add i32 %47, 1
  store i32 %inc57, i32* %backsize, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.56
  %48 = load i8*, i8** %src.addr, align 8
  %49 = load i32, i32* %ssize.addr, align 4
  %call58 = call i32 @doubleebx(i8* %48, i32* %myebx, i32* %scur, i32 %49)
  store i32 %call58, i32* %oob, align 4
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %do.body
  %50 = load i32, i32* %backsize, align 4
  %mul63 = mul i32 %50, 2
  %51 = load i32, i32* %oob, align 4
  %add64 = add i32 %mul63, %51
  store i32 %add64, i32* %backsize, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.62
  %52 = load i8*, i8** %src.addr, align 8
  %53 = load i32, i32* %ssize.addr, align 4
  %call65 = call i32 @doubleebx(i8* %52, i32* %myebx, i32* %scur, i32 %53)
  store i32 %call65, i32* %oob, align 4
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %54 = load i32, i32* %oob, align 4
  %cmp68 = icmp eq i32 %54, -1
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %do.end
  %55 = load i32, i32* %backsize, align 4
  %add72 = add i32 %55, 2
  store i32 %add72, i32* %backsize, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %if.end.52
  %56 = load i32, i32* %unp_offset, align 4
  %cmp74 = icmp ult i32 %56, -1280
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.73
  %57 = load i32, i32* %backsize, align 4
  %inc77 = add i32 %57, 1
  store i32 %inc77, i32* %backsize, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.73
  %58 = load i32, i32* %backsize, align 4
  %inc79 = add i32 %58, 1
  store i32 %inc79, i32* %backsize, align 4
  %59 = load i32*, i32** %dsize.addr, align 8
  %60 = load i32, i32* %59, align 4
  %cmp80 = icmp ugt i32 %60, 0
  br i1 %cmp80, label %land.lhs.true, label %if.then.145

land.lhs.true:                                    ; preds = %if.end.78
  %61 = load i32, i32* %backsize, align 4
  %cmp82 = icmp ugt i32 %61, 0
  br i1 %cmp82, label %land.lhs.true.84, label %if.then.145

land.lhs.true.84:                                 ; preds = %land.lhs.true
  %62 = load i32, i32* %backsize, align 4
  %63 = load i32*, i32** %dsize.addr, align 8
  %64 = load i32, i32* %63, align 4
  %cmp85 = icmp ule i32 %62, %64
  br i1 %cmp85, label %land.lhs.true.87, label %if.then.145

land.lhs.true.87:                                 ; preds = %land.lhs.true.84
  %65 = load i8*, i8** %dst.addr, align 8
  %66 = load i32, i32* %dcur, align 4
  %idx.ext = zext i32 %66 to i64
  %add.ptr = getelementptr inbounds i8, i8* %65, i64 %idx.ext
  %67 = load i32, i32* %unp_offset, align 4
  %idx.ext88 = sext i32 %67 to i64
  %add.ptr89 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext88
  %68 = load i8*, i8** %dst.addr, align 8
  %cmp90 = icmp uge i8* %add.ptr89, %68
  br i1 %cmp90, label %land.lhs.true.92, label %if.then.145

land.lhs.true.92:                                 ; preds = %land.lhs.true.87
  %69 = load i8*, i8** %dst.addr, align 8
  %70 = load i32, i32* %dcur, align 4
  %idx.ext93 = zext i32 %70 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %69, i64 %idx.ext93
  %71 = load i32, i32* %unp_offset, align 4
  %idx.ext95 = sext i32 %71 to i64
  %add.ptr96 = getelementptr inbounds i8, i8* %add.ptr94, i64 %idx.ext95
  %72 = load i32, i32* %backsize, align 4
  %idx.ext97 = zext i32 %72 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %add.ptr96, i64 %idx.ext97
  %73 = load i8*, i8** %dst.addr, align 8
  %74 = load i32*, i32** %dsize.addr, align 8
  %75 = load i32, i32* %74, align 4
  %idx.ext99 = zext i32 %75 to i64
  %add.ptr100 = getelementptr inbounds i8, i8* %73, i64 %idx.ext99
  %cmp101 = icmp ule i8* %add.ptr98, %add.ptr100
  br i1 %cmp101, label %land.lhs.true.103, label %if.then.145

land.lhs.true.103:                                ; preds = %land.lhs.true.92
  %76 = load i8*, i8** %dst.addr, align 8
  %77 = load i32, i32* %dcur, align 4
  %idx.ext104 = zext i32 %77 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %76, i64 %idx.ext104
  %78 = load i32, i32* %unp_offset, align 4
  %idx.ext106 = sext i32 %78 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr105, i64 %idx.ext106
  %79 = load i32, i32* %backsize, align 4
  %idx.ext108 = zext i32 %79 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %add.ptr107, i64 %idx.ext108
  %80 = load i8*, i8** %dst.addr, align 8
  %cmp110 = icmp ugt i8* %add.ptr109, %80
  br i1 %cmp110, label %lor.lhs.false.112, label %if.then.145

lor.lhs.false.112:                                ; preds = %land.lhs.true.103
  %81 = load i32*, i32** %dsize.addr, align 8
  %82 = load i32, i32* %81, align 4
  %cmp113 = icmp ugt i32 %82, 0
  br i1 %cmp113, label %land.lhs.true.115, label %if.then.145

land.lhs.true.115:                                ; preds = %lor.lhs.false.112
  %83 = load i32, i32* %backsize, align 4
  %cmp116 = icmp ugt i32 %83, 0
  br i1 %cmp116, label %land.lhs.true.118, label %if.then.145

land.lhs.true.118:                                ; preds = %land.lhs.true.115
  %84 = load i32, i32* %backsize, align 4
  %85 = load i32*, i32** %dsize.addr, align 8
  %86 = load i32, i32* %85, align 4
  %cmp119 = icmp ule i32 %84, %86
  br i1 %cmp119, label %land.lhs.true.121, label %if.then.145

land.lhs.true.121:                                ; preds = %land.lhs.true.118
  %87 = load i8*, i8** %dst.addr, align 8
  %88 = load i32, i32* %dcur, align 4
  %idx.ext122 = zext i32 %88 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %87, i64 %idx.ext122
  %89 = load i8*, i8** %dst.addr, align 8
  %cmp124 = icmp uge i8* %add.ptr123, %89
  br i1 %cmp124, label %land.lhs.true.126, label %if.then.145

land.lhs.true.126:                                ; preds = %land.lhs.true.121
  %90 = load i8*, i8** %dst.addr, align 8
  %91 = load i32, i32* %dcur, align 4
  %idx.ext127 = zext i32 %91 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %90, i64 %idx.ext127
  %92 = load i32, i32* %backsize, align 4
  %idx.ext129 = zext i32 %92 to i64
  %add.ptr130 = getelementptr inbounds i8, i8* %add.ptr128, i64 %idx.ext129
  %93 = load i8*, i8** %dst.addr, align 8
  %94 = load i32*, i32** %dsize.addr, align 8
  %95 = load i32, i32* %94, align 4
  %idx.ext131 = zext i32 %95 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %93, i64 %idx.ext131
  %cmp133 = icmp ule i8* %add.ptr130, %add.ptr132
  br i1 %cmp133, label %land.lhs.true.135, label %if.then.145

land.lhs.true.135:                                ; preds = %land.lhs.true.126
  %96 = load i8*, i8** %dst.addr, align 8
  %97 = load i32, i32* %dcur, align 4
  %idx.ext136 = zext i32 %97 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %96, i64 %idx.ext136
  %98 = load i32, i32* %backsize, align 4
  %idx.ext138 = zext i32 %98 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %add.ptr137, i64 %idx.ext138
  %99 = load i8*, i8** %dst.addr, align 8
  %cmp140 = icmp ugt i8* %add.ptr139, %99
  br i1 %cmp140, label %lor.lhs.false.142, label %if.then.145

lor.lhs.false.142:                                ; preds = %land.lhs.true.135
  %100 = load i32, i32* %unp_offset, align 4
  %cmp143 = icmp sge i32 %100, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %lor.lhs.false.142, %land.lhs.true.135, %land.lhs.true.126, %land.lhs.true.121, %land.lhs.true.118, %land.lhs.true.115, %lor.lhs.false.112, %land.lhs.true.103, %land.lhs.true.92, %land.lhs.true.87, %land.lhs.true.84, %land.lhs.true, %if.end.78
  store i32 -1, i32* %retval
  br label %return

if.end.146:                                       ; preds = %lor.lhs.false.142
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.146
  %101 = load i32, i32* %i, align 4
  %102 = load i32, i32* %backsize, align 4
  %cmp147 = icmp ult i32 %101, %102
  br i1 %cmp147, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %103 = load i32, i32* %dcur, align 4
  %104 = load i32, i32* %unp_offset, align 4
  %add149 = add i32 %103, %104
  %105 = load i32, i32* %i, align 4
  %add150 = add i32 %add149, %105
  %idxprom151 = zext i32 %add150 to i64
  %106 = load i8*, i8** %dst.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %106, i64 %idxprom151
  %107 = load i8, i8* %arrayidx152, align 1
  %108 = load i32, i32* %dcur, align 4
  %109 = load i32, i32* %i, align 4
  %add153 = add i32 %108, %109
  %idxprom154 = zext i32 %add153 to i64
  %110 = load i8*, i8** %dst.addr, align 8
  %arrayidx155 = getelementptr inbounds i8, i8* %110, i64 %idxprom154
  store i8 %107, i8* %arrayidx155, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %111 = load i32, i32* %i, align 4
  %inc156 = add i32 %111, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %112 = load i32, i32* %backsize, align 4
  %113 = load i32, i32* %dcur, align 4
  %add157 = add i32 %113, %112
  store i32 %add157, i32* %dcur, align 4
  br label %while.body

while.end.158:                                    ; preds = %if.then.40
  %114 = load i8*, i8** %src.addr, align 8
  %115 = load i32, i32* %ssize.addr, align 4
  %116 = load i8*, i8** %dst.addr, align 8
  %117 = load i32*, i32** %dsize.addr, align 8
  %118 = load i32, i32* %ep.addr, align 4
  %119 = load i32, i32* %upx0.addr, align 4
  %120 = load i32, i32* %upx1.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %magic, i32 0, i32 0
  %121 = load i32, i32* %dcur, align 4
  %call159 = call i32 @pefromupx(i8* %114, i32 %115, i8* %116, i32* %117, i32 %118, i32 %119, i32 %120, i32* %arraydecay, i32 %121)
  store i32 %call159, i32* %retval
  br label %return

return:                                           ; preds = %while.end.158, %if.then.145, %if.then.70, %if.then.61, %if.then.51, %if.then.45, %if.then.33, %if.then.25, %if.then.19, %if.then.15, %if.then.9, %if.then
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define i32 @upx_inflate2e(i8* %src, i32 %ssize, i8* %dst, i32* %dsize, i32 %upx0, i32 %upx1, i32 %ep) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i8*, align 8
  %ssize.addr = alloca i32, align 4
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32*, align 8
  %upx0.addr = alloca i32, align 4
  %upx1.addr = alloca i32, align 4
  %ep.addr = alloca i32, align 4
  %backbytes = alloca i32, align 4
  %unp_offset = alloca i32, align 4
  %backsize = alloca i32, align 4
  %myebx = alloca i32, align 4
  %scur = alloca i32, align 4
  %dcur = alloca i32, align 4
  %i = alloca i32, align 4
  %magic = alloca [3 x i32], align 4
  %oob = alloca i32, align 4
  store i8* %src, i8** %src.addr, align 8
  store i32 %ssize, i32* %ssize.addr, align 4
  store i8* %dst, i8** %dst.addr, align 8
  store i32* %dsize, i32** %dsize.addr, align 8
  store i32 %upx0, i32* %upx0.addr, align 4
  store i32 %upx1, i32* %upx1.addr, align 4
  store i32 %ep, i32* %ep.addr, align 4
  store i32 -1, i32* %unp_offset, align 4
  store i32 0, i32* %myebx, align 4
  store i32 0, i32* %scur, align 4
  store i32 0, i32* %dcur, align 4
  %0 = bitcast [3 x i32]* %magic to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i32]* @upx_inflate2e.magic to i8*), i64 12, i32 4, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.end.167, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %for.cond
  %1 = load i8*, i8** %src.addr, align 8
  %2 = load i32, i32* %ssize.addr, align 4
  %call = call i32 @doubleebx(i8* %1, i32* %myebx, i32* %scur, i32 %2)
  store i32 %call, i32* %oob, align 4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %oob, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load i32, i32* %scur, align 4
  %5 = load i32, i32* %ssize.addr, align 4
  %cmp1 = icmp uge i32 %4, %5
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %dcur, align 4
  %7 = load i32*, i32** %dsize.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp2 = icmp uge i32 %6, %8
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %9 = load i32, i32* %scur, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %scur, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i8*, i8** %src.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %12 = load i32, i32* %dcur, align 4
  %inc5 = add i32 %12, 1
  store i32 %inc5, i32* %dcur, align 4
  %idxprom6 = zext i32 %12 to i64
  %13 = load i8*, i8** %dst.addr, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  store i8 %11, i8* %arrayidx7, align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %backbytes, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %if.end.23, %while.end
  %14 = load i8*, i8** %src.addr, align 8
  %15 = load i32, i32* %ssize.addr, align 4
  %call9 = call i32 @doubleebx(i8* %14, i32* %myebx, i32* %scur, i32 %15)
  store i32 %call9, i32* %oob, align 4
  %cmp10 = icmp eq i32 %call9, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.cond.8
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.cond.8
  %16 = load i32, i32* %backbytes, align 4
  %mul = mul nsw i32 %16, 2
  %17 = load i32, i32* %oob, align 4
  %add = add nsw i32 %mul, %17
  store i32 %add, i32* %backbytes, align 4
  %18 = load i8*, i8** %src.addr, align 8
  %19 = load i32, i32* %ssize.addr, align 4
  %call13 = call i32 @doubleebx(i8* %18, i32* %myebx, i32* %scur, i32 %19)
  store i32 %call13, i32* %oob, align 4
  %cmp14 = icmp eq i32 %call13, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 -1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %20 = load i32, i32* %oob, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  br label %for.end

if.end.19:                                        ; preds = %if.end.16
  %21 = load i32, i32* %backbytes, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %backbytes, align 4
  %22 = load i8*, i8** %src.addr, align 8
  %23 = load i32, i32* %ssize.addr, align 4
  %call20 = call i32 @doubleebx(i8* %22, i32* %myebx, i32* %scur, i32 %23)
  store i32 %call20, i32* %oob, align 4
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %24 = load i32, i32* %backbytes, align 4
  %mul24 = mul nsw i32 %24, 2
  %25 = load i32, i32* %oob, align 4
  %add25 = add nsw i32 %mul24, %25
  store i32 %add25, i32* %backbytes, align 4
  br label %for.cond.8

for.end:                                          ; preds = %if.then.18
  %26 = load i32, i32* %backbytes, align 4
  %sub = sub nsw i32 %26, 3
  store i32 %sub, i32* %backbytes, align 4
  %27 = load i32, i32* %backbytes, align 4
  %cmp26 = icmp sge i32 %27, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %for.end
  %28 = load i32, i32* %scur, align 4
  %29 = load i32, i32* %ssize.addr, align 4
  %cmp28 = icmp uge i32 %28, %29
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.27
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.27
  %30 = load i32, i32* %backbytes, align 4
  %shl = shl i32 %30, 8
  store i32 %shl, i32* %backbytes, align 4
  %31 = load i32, i32* %scur, align 4
  %inc31 = add i32 %31, 1
  store i32 %inc31, i32* %scur, align 4
  %idxprom32 = zext i32 %31 to i64
  %32 = load i8*, i8** %src.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %32, i64 %idxprom32
  %33 = load i8, i8* %arrayidx33, align 1
  %conv = zext i8 %33 to i32
  %34 = load i32, i32* %backbytes, align 4
  %add34 = add nsw i32 %34, %conv
  store i32 %add34, i32* %backbytes, align 4
  %35 = load i32, i32* %backbytes, align 4
  %xor = xor i32 %35, -1
  store i32 %xor, i32* %backbytes, align 4
  %36 = load i32, i32* %backbytes, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.30
  br label %for.end.169

if.end.37:                                        ; preds = %if.end.30
  %37 = load i32, i32* %backbytes, align 4
  %and = and i32 %37, 1
  store i32 %and, i32* %backsize, align 4
  %38 = load i32, i32* %backbytes, align 4
  %shr = ashr i32 %38, 1
  store i32 %shr, i32* %backbytes, align 4
  %39 = load i32, i32* %backbytes, align 4
  store i32 %39, i32* %unp_offset, align 4
  br label %if.end.43

if.else:                                          ; preds = %for.end
  %40 = load i8*, i8** %src.addr, align 8
  %41 = load i32, i32* %ssize.addr, align 4
  %call38 = call i32 @doubleebx(i8* %40, i32* %myebx, i32* %scur, i32 %41)
  store i32 %call38, i32* %backsize, align 4
  %cmp39 = icmp eq i32 %call38, -1
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.37
  %42 = load i32, i32* %backsize, align 4
  %tobool44 = icmp ne i32 %42, 0
  br i1 %tobool44, label %if.then.45, label %if.else.51

if.then.45:                                       ; preds = %if.end.43
  %43 = load i8*, i8** %src.addr, align 8
  %44 = load i32, i32* %ssize.addr, align 4
  %call46 = call i32 @doubleebx(i8* %43, i32* %myebx, i32* %scur, i32 %44)
  store i32 %call46, i32* %backsize, align 4
  %cmp47 = icmp eq i32 %call46, -1
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.45
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.45
  br label %if.end.82

if.else.51:                                       ; preds = %if.end.43
  store i32 1, i32* %backsize, align 4
  %45 = load i8*, i8** %src.addr, align 8
  %46 = load i32, i32* %ssize.addr, align 4
  %call52 = call i32 @doubleebx(i8* %45, i32* %myebx, i32* %scur, i32 %46)
  store i32 %call52, i32* %oob, align 4
  %cmp53 = icmp eq i32 %call52, -1
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.else.51
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.else.51
  %47 = load i32, i32* %oob, align 4
  %tobool57 = icmp ne i32 %47, 0
  br i1 %tobool57, label %if.then.58, label %if.else.65

if.then.58:                                       ; preds = %if.end.56
  %48 = load i8*, i8** %src.addr, align 8
  %49 = load i32, i32* %ssize.addr, align 4
  %call59 = call i32 @doubleebx(i8* %48, i32* %myebx, i32* %scur, i32 %49)
  store i32 %call59, i32* %oob, align 4
  %cmp60 = icmp eq i32 %call59, -1
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.then.58
  store i32 -1, i32* %retval
  br label %return

if.end.63:                                        ; preds = %if.then.58
  %50 = load i32, i32* %oob, align 4
  %add64 = add nsw i32 2, %50
  store i32 %add64, i32* %backsize, align 4
  br label %if.end.81

if.else.65:                                       ; preds = %if.end.56
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else.65
  %51 = load i8*, i8** %src.addr, align 8
  %52 = load i32, i32* %ssize.addr, align 4
  %call66 = call i32 @doubleebx(i8* %51, i32* %myebx, i32* %scur, i32 %52)
  store i32 %call66, i32* %oob, align 4
  %cmp67 = icmp eq i32 %call66, -1
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %do.body
  %53 = load i32, i32* %backsize, align 4
  %mul71 = mul i32 %53, 2
  %54 = load i32, i32* %oob, align 4
  %add72 = add i32 %mul71, %54
  store i32 %add72, i32* %backsize, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.70
  %55 = load i8*, i8** %src.addr, align 8
  %56 = load i32, i32* %ssize.addr, align 4
  %call73 = call i32 @doubleebx(i8* %55, i32* %myebx, i32* %scur, i32 %56)
  store i32 %call73, i32* %oob, align 4
  %cmp74 = icmp eq i32 %call73, 0
  br i1 %cmp74, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %57 = load i32, i32* %oob, align 4
  %cmp76 = icmp eq i32 %57, -1
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %do.end
  %58 = load i32, i32* %backsize, align 4
  %add80 = add i32 %58, 2
  store i32 %add80, i32* %backsize, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.79, %if.end.63
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.50
  %59 = load i32, i32* %unp_offset, align 4
  %cmp83 = icmp ult i32 %59, -1280
  br i1 %cmp83, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.82
  %60 = load i32, i32* %backsize, align 4
  %inc86 = add i32 %60, 1
  store i32 %inc86, i32* %backsize, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.82
  %61 = load i32, i32* %backsize, align 4
  %add88 = add i32 %61, 2
  store i32 %add88, i32* %backsize, align 4
  %62 = load i32*, i32** %dsize.addr, align 8
  %63 = load i32, i32* %62, align 4
  %cmp89 = icmp ugt i32 %63, 0
  br i1 %cmp89, label %land.lhs.true, label %if.then.154

land.lhs.true:                                    ; preds = %if.end.87
  %64 = load i32, i32* %backsize, align 4
  %cmp91 = icmp ugt i32 %64, 0
  br i1 %cmp91, label %land.lhs.true.93, label %if.then.154

land.lhs.true.93:                                 ; preds = %land.lhs.true
  %65 = load i32, i32* %backsize, align 4
  %66 = load i32*, i32** %dsize.addr, align 8
  %67 = load i32, i32* %66, align 4
  %cmp94 = icmp ule i32 %65, %67
  br i1 %cmp94, label %land.lhs.true.96, label %if.then.154

land.lhs.true.96:                                 ; preds = %land.lhs.true.93
  %68 = load i8*, i8** %dst.addr, align 8
  %69 = load i32, i32* %dcur, align 4
  %idx.ext = zext i32 %69 to i64
  %add.ptr = getelementptr inbounds i8, i8* %68, i64 %idx.ext
  %70 = load i32, i32* %unp_offset, align 4
  %idx.ext97 = sext i32 %70 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext97
  %71 = load i8*, i8** %dst.addr, align 8
  %cmp99 = icmp uge i8* %add.ptr98, %71
  br i1 %cmp99, label %land.lhs.true.101, label %if.then.154

land.lhs.true.101:                                ; preds = %land.lhs.true.96
  %72 = load i8*, i8** %dst.addr, align 8
  %73 = load i32, i32* %dcur, align 4
  %idx.ext102 = zext i32 %73 to i64
  %add.ptr103 = getelementptr inbounds i8, i8* %72, i64 %idx.ext102
  %74 = load i32, i32* %unp_offset, align 4
  %idx.ext104 = sext i32 %74 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %add.ptr103, i64 %idx.ext104
  %75 = load i32, i32* %backsize, align 4
  %idx.ext106 = zext i32 %75 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %add.ptr105, i64 %idx.ext106
  %76 = load i8*, i8** %dst.addr, align 8
  %77 = load i32*, i32** %dsize.addr, align 8
  %78 = load i32, i32* %77, align 4
  %idx.ext108 = zext i32 %78 to i64
  %add.ptr109 = getelementptr inbounds i8, i8* %76, i64 %idx.ext108
  %cmp110 = icmp ule i8* %add.ptr107, %add.ptr109
  br i1 %cmp110, label %land.lhs.true.112, label %if.then.154

land.lhs.true.112:                                ; preds = %land.lhs.true.101
  %79 = load i8*, i8** %dst.addr, align 8
  %80 = load i32, i32* %dcur, align 4
  %idx.ext113 = zext i32 %80 to i64
  %add.ptr114 = getelementptr inbounds i8, i8* %79, i64 %idx.ext113
  %81 = load i32, i32* %unp_offset, align 4
  %idx.ext115 = sext i32 %81 to i64
  %add.ptr116 = getelementptr inbounds i8, i8* %add.ptr114, i64 %idx.ext115
  %82 = load i32, i32* %backsize, align 4
  %idx.ext117 = zext i32 %82 to i64
  %add.ptr118 = getelementptr inbounds i8, i8* %add.ptr116, i64 %idx.ext117
  %83 = load i8*, i8** %dst.addr, align 8
  %cmp119 = icmp ugt i8* %add.ptr118, %83
  br i1 %cmp119, label %lor.lhs.false.121, label %if.then.154

lor.lhs.false.121:                                ; preds = %land.lhs.true.112
  %84 = load i32*, i32** %dsize.addr, align 8
  %85 = load i32, i32* %84, align 4
  %cmp122 = icmp ugt i32 %85, 0
  br i1 %cmp122, label %land.lhs.true.124, label %if.then.154

land.lhs.true.124:                                ; preds = %lor.lhs.false.121
  %86 = load i32, i32* %backsize, align 4
  %cmp125 = icmp ugt i32 %86, 0
  br i1 %cmp125, label %land.lhs.true.127, label %if.then.154

land.lhs.true.127:                                ; preds = %land.lhs.true.124
  %87 = load i32, i32* %backsize, align 4
  %88 = load i32*, i32** %dsize.addr, align 8
  %89 = load i32, i32* %88, align 4
  %cmp128 = icmp ule i32 %87, %89
  br i1 %cmp128, label %land.lhs.true.130, label %if.then.154

land.lhs.true.130:                                ; preds = %land.lhs.true.127
  %90 = load i8*, i8** %dst.addr, align 8
  %91 = load i32, i32* %dcur, align 4
  %idx.ext131 = zext i32 %91 to i64
  %add.ptr132 = getelementptr inbounds i8, i8* %90, i64 %idx.ext131
  %92 = load i8*, i8** %dst.addr, align 8
  %cmp133 = icmp uge i8* %add.ptr132, %92
  br i1 %cmp133, label %land.lhs.true.135, label %if.then.154

land.lhs.true.135:                                ; preds = %land.lhs.true.130
  %93 = load i8*, i8** %dst.addr, align 8
  %94 = load i32, i32* %dcur, align 4
  %idx.ext136 = zext i32 %94 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %93, i64 %idx.ext136
  %95 = load i32, i32* %backsize, align 4
  %idx.ext138 = zext i32 %95 to i64
  %add.ptr139 = getelementptr inbounds i8, i8* %add.ptr137, i64 %idx.ext138
  %96 = load i8*, i8** %dst.addr, align 8
  %97 = load i32*, i32** %dsize.addr, align 8
  %98 = load i32, i32* %97, align 4
  %idx.ext140 = zext i32 %98 to i64
  %add.ptr141 = getelementptr inbounds i8, i8* %96, i64 %idx.ext140
  %cmp142 = icmp ule i8* %add.ptr139, %add.ptr141
  br i1 %cmp142, label %land.lhs.true.144, label %if.then.154

land.lhs.true.144:                                ; preds = %land.lhs.true.135
  %99 = load i8*, i8** %dst.addr, align 8
  %100 = load i32, i32* %dcur, align 4
  %idx.ext145 = zext i32 %100 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %99, i64 %idx.ext145
  %101 = load i32, i32* %backsize, align 4
  %idx.ext147 = zext i32 %101 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %add.ptr146, i64 %idx.ext147
  %102 = load i8*, i8** %dst.addr, align 8
  %cmp149 = icmp ugt i8* %add.ptr148, %102
  br i1 %cmp149, label %lor.lhs.false.151, label %if.then.154

lor.lhs.false.151:                                ; preds = %land.lhs.true.144
  %103 = load i32, i32* %unp_offset, align 4
  %cmp152 = icmp sge i32 %103, 0
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %lor.lhs.false.151, %land.lhs.true.144, %land.lhs.true.135, %land.lhs.true.130, %land.lhs.true.127, %land.lhs.true.124, %lor.lhs.false.121, %land.lhs.true.112, %land.lhs.true.101, %land.lhs.true.96, %land.lhs.true.93, %land.lhs.true, %if.end.87
  store i32 -1, i32* %retval
  br label %return

if.end.155:                                       ; preds = %lor.lhs.false.151
  store i32 0, i32* %i, align 4
  br label %for.cond.156

for.cond.156:                                     ; preds = %for.inc, %if.end.155
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %backsize, align 4
  %cmp157 = icmp ult i32 %104, %105
  br i1 %cmp157, label %for.body, label %for.end.167

for.body:                                         ; preds = %for.cond.156
  %106 = load i32, i32* %dcur, align 4
  %107 = load i32, i32* %unp_offset, align 4
  %add159 = add i32 %106, %107
  %108 = load i32, i32* %i, align 4
  %add160 = add i32 %add159, %108
  %idxprom161 = zext i32 %add160 to i64
  %109 = load i8*, i8** %dst.addr, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %109, i64 %idxprom161
  %110 = load i8, i8* %arrayidx162, align 1
  %111 = load i32, i32* %dcur, align 4
  %112 = load i32, i32* %i, align 4
  %add163 = add i32 %111, %112
  %idxprom164 = zext i32 %add163 to i64
  %113 = load i8*, i8** %dst.addr, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %113, i64 %idxprom164
  store i8 %110, i8* %arrayidx165, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %114 = load i32, i32* %i, align 4
  %inc166 = add i32 %114, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.156

for.end.167:                                      ; preds = %for.cond.156
  %115 = load i32, i32* %backsize, align 4
  %116 = load i32, i32* %dcur, align 4
  %add168 = add i32 %116, %115
  store i32 %add168, i32* %dcur, align 4
  br label %for.cond

for.end.169:                                      ; preds = %if.then.36
  %117 = load i8*, i8** %src.addr, align 8
  %118 = load i32, i32* %ssize.addr, align 4
  %119 = load i8*, i8** %dst.addr, align 8
  %120 = load i32*, i32** %dsize.addr, align 8
  %121 = load i32, i32* %ep.addr, align 4
  %122 = load i32, i32* %upx0.addr, align 4
  %123 = load i32, i32* %upx1.addr, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %magic, i32 0, i32 0
  %124 = load i32, i32* %dcur, align 4
  %call170 = call i32 @pefromupx(i8* %117, i32 %118, i8* %119, i32* %120, i32 %121, i32 %122, i32 %123, i32* %arraydecay, i32 %124)
  store i32 %call170, i32* %retval
  br label %return

return:                                           ; preds = %for.end.169, %if.then.154, %if.then.78, %if.then.69, %if.then.62, %if.then.55, %if.then.49, %if.then.41, %if.then.29, %if.then.22, %if.then.15, %if.then.11, %if.then.3, %if.then
  %125 = load i32, i32* %retval
  ret i32 %125
}

declare void @cli_dbgmsg(i8*, ...) #2

declare i8* @cli_memstr(i8*, i32, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i8* @checkpe(i8* %dst, i32 %dsize, i8* %pehdr, i32* %valign, i32* %sectcnt) #0 {
entry:
  %retval = alloca i8*, align 8
  %dst.addr = alloca i8*, align 8
  %dsize.addr = alloca i32, align 4
  %pehdr.addr = alloca i8*, align 8
  %valign.addr = alloca i32*, align 8
  %sectcnt.addr = alloca i32*, align 8
  %sections = alloca i8*, align 8
  store i8* %dst, i8** %dst.addr, align 8
  store i32 %dsize, i32* %dsize.addr, align 4
  store i8* %pehdr, i8** %pehdr.addr, align 8
  store i32* %valign, i32** %valign.addr, align 8
  store i32* %sectcnt, i32** %sectcnt.addr, align 8
  %0 = load i32, i32* %dsize.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %dsize.addr, align 4
  %cmp1 = icmp ule i32 248, %1
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load i8*, i8** %pehdr.addr, align 8
  %3 = load i8*, i8** %dst.addr, align 8
  %cmp3 = icmp uge i8* %2, %3
  br i1 %cmp3, label %land.lhs.true.4, label %if.then

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %4 = load i8*, i8** %pehdr.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 248
  %5 = load i8*, i8** %dst.addr, align 8
  %6 = load i32, i32* %dsize.addr, align 4
  %idx.ext = zext i32 %6 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %5, i64 %idx.ext
  %cmp6 = icmp ule i8* %add.ptr, %add.ptr5
  br i1 %cmp6, label %land.lhs.true.7, label %if.then

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %7 = load i8*, i8** %pehdr.addr, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %7, i64 248
  %8 = load i8*, i8** %dst.addr, align 8
  %cmp9 = icmp ugt i8* %add.ptr8, %8
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7
  %9 = load i8*, i8** %pehdr.addr, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %cmp10 = icmp ne i32 %11, 17744
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i8* null, i8** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %12 = load i8*, i8** %pehdr.addr, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %12, i64 56
  %13 = bitcast i8* %add.ptr13 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = load i32*, i32** %valign.addr, align 8
  store i32 %14, i32* %15, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.12
  %16 = load i8*, i8** %pehdr.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, i8* %16, i64 248
  store i8* %add.ptr16, i8** %sections, align 8
  %17 = load i8*, i8** %pehdr.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 6
  %18 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %18 to i32
  %19 = load i8*, i8** %pehdr.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 7
  %20 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %20 to i32
  %mul = mul nsw i32 %conv18, 256
  %add = add nsw i32 %conv, %mul
  %21 = load i32*, i32** %sectcnt.addr, align 8
  store i32 %add, i32* %21, align 4
  %tobool19 = icmp ne i32 %add, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.15
  store i8* null, i8** %retval
  br label %return

if.end.21:                                        ; preds = %if.end.15
  %22 = load i32, i32* %dsize.addr, align 4
  %cmp22 = icmp ugt i32 %22, 0
  br i1 %cmp22, label %land.lhs.true.24, label %if.then.49

land.lhs.true.24:                                 ; preds = %if.end.21
  %23 = load i32*, i32** %sectcnt.addr, align 8
  %24 = load i32, i32* %23, align 4
  %mul25 = mul i32 %24, 40
  %cmp26 = icmp ugt i32 %mul25, 0
  br i1 %cmp26, label %land.lhs.true.28, label %if.then.49

land.lhs.true.28:                                 ; preds = %land.lhs.true.24
  %25 = load i32*, i32** %sectcnt.addr, align 8
  %26 = load i32, i32* %25, align 4
  %mul29 = mul i32 %26, 40
  %27 = load i32, i32* %dsize.addr, align 4
  %cmp30 = icmp ule i32 %mul29, %27
  br i1 %cmp30, label %land.lhs.true.32, label %if.then.49

land.lhs.true.32:                                 ; preds = %land.lhs.true.28
  %28 = load i8*, i8** %sections, align 8
  %29 = load i8*, i8** %dst.addr, align 8
  %cmp33 = icmp uge i8* %28, %29
  br i1 %cmp33, label %land.lhs.true.35, label %if.then.49

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %30 = load i8*, i8** %sections, align 8
  %31 = load i32*, i32** %sectcnt.addr, align 8
  %32 = load i32, i32* %31, align 4
  %mul36 = mul i32 %32, 40
  %idx.ext37 = zext i32 %mul36 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %30, i64 %idx.ext37
  %33 = load i8*, i8** %dst.addr, align 8
  %34 = load i32, i32* %dsize.addr, align 4
  %idx.ext39 = zext i32 %34 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %33, i64 %idx.ext39
  %cmp41 = icmp ule i8* %add.ptr38, %add.ptr40
  br i1 %cmp41, label %land.lhs.true.43, label %if.then.49

land.lhs.true.43:                                 ; preds = %land.lhs.true.35
  %35 = load i8*, i8** %sections, align 8
  %36 = load i32*, i32** %sectcnt.addr, align 8
  %37 = load i32, i32* %36, align 4
  %mul44 = mul i32 %37, 40
  %idx.ext45 = zext i32 %mul44 to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %35, i64 %idx.ext45
  %38 = load i8*, i8** %dst.addr, align 8
  %cmp47 = icmp ugt i8* %add.ptr46, %38
  br i1 %cmp47, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.43, %land.lhs.true.35, %land.lhs.true.32, %land.lhs.true.28, %land.lhs.true.24, %if.end.21
  store i8* null, i8** %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.43
  %39 = load i8*, i8** %sections, align 8
  store i8* %39, i8** %retval
  br label %return

return:                                           ; preds = %if.end.50, %if.then.49, %if.then.20, %if.then.14, %if.then.11, %if.then
  %40 = load i8*, i8** %retval
  ret i8* %40
}

declare i8* @cli_calloc(i64, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
