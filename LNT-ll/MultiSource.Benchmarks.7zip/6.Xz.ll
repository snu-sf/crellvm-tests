; ModuleID = './MultiSource.Benchmarks.7zip/6.Xz.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CXzStream = type { i16, i64, i64, %struct.CXzBlockSizes*, i64 }
%struct.CXzBlockSizes = type { i64, i64 }
%struct.ISzAlloc = type { i8* (i8*, i64)*, void (i8*, i8*)* }
%struct.CXzCheck = type { i32, i32, i64, %struct.CSha256 }
%struct.CSha256 = type { [8 x i32], i64, [64 x i8] }

@XZ_SIG = global [6 x i8] c"\FD7zXZ\00", align 1
@XZ_FOOTER_SIG = global [2 x i8] c"YZ", align 1

; Function Attrs: nounwind uwtable
define i32 @Xz_WriteVarInt(i8* %buf, i64 %v) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %v.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %v, i64* %v.addr, align 8
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i64, i64* %v.addr, align 8
  %and = and i64 %0, 127
  %or = or i64 %and, 128
  %conv = trunc i64 %or to i8
  %1 = load i32, i32* %i, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  %3 = load i64, i64* %v.addr, align 8
  %shr = lshr i64 %3, 7
  store i64 %shr, i64* %v.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = load i64, i64* %v.addr, align 8
  %cmp = icmp ne i64 %4, 0
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i32, i32* %i, align 4
  %sub = sub i32 %5, 1
  %idxprom2 = zext i32 %sub to i64
  %6 = load i8*, i8** %buf.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %and5 = and i32 %conv4, 127
  %conv6 = trunc i32 %and5 to i8
  store i8 %conv6, i8* %arrayidx3, align 1
  %8 = load i32, i32* %i, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @Xz_Construct(%struct.CXzStream* %p) #0 {
entry:
  %p.addr = alloca %struct.CXzStream*, align 8
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  %0 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocksAllocated = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %0, i32 0, i32 2
  store i64 0, i64* %numBlocksAllocated, align 8
  %1 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %1, i32 0, i32 1
  store i64 0, i64* %numBlocks, align 8
  %2 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %2, i32 0, i32 3
  store %struct.CXzBlockSizes* null, %struct.CXzBlockSizes** %blocks, align 8
  %3 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %flags = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %3, i32 0, i32 0
  store i16 0, i16* %flags, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define void @Xz_Free(%struct.CXzStream* %p, %struct.ISzAlloc* %alloc) #0 {
entry:
  %p.addr = alloca %struct.CXzStream*, align 8
  %alloc.addr = alloca %struct.ISzAlloc*, align 8
  store %struct.CXzStream* %p, %struct.CXzStream** %p.addr, align 8
  store %struct.ISzAlloc* %alloc, %struct.ISzAlloc** %alloc.addr, align 8
  %0 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %Free = getelementptr inbounds %struct.ISzAlloc, %struct.ISzAlloc* %0, i32 0, i32 1
  %1 = load void (i8*, i8*)*, void (i8*, i8*)** %Free, align 8
  %2 = load %struct.ISzAlloc*, %struct.ISzAlloc** %alloc.addr, align 8
  %3 = bitcast %struct.ISzAlloc* %2 to i8*
  %4 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %4, i32 0, i32 3
  %5 = load %struct.CXzBlockSizes*, %struct.CXzBlockSizes** %blocks, align 8
  %6 = bitcast %struct.CXzBlockSizes* %5 to i8*
  call void %1(i8* %3, i8* %6)
  %7 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocksAllocated = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %7, i32 0, i32 2
  store i64 0, i64* %numBlocksAllocated, align 8
  %8 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %numBlocks = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %8, i32 0, i32 1
  store i64 0, i64* %numBlocks, align 8
  %9 = load %struct.CXzStream*, %struct.CXzStream** %p.addr, align 8
  %blocks1 = getelementptr inbounds %struct.CXzStream, %struct.CXzStream* %9, i32 0, i32 3
  store %struct.CXzBlockSizes* null, %struct.CXzBlockSizes** %blocks1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @XzFlags_GetCheckSize(i16 zeroext %f) #0 {
entry:
  %f.addr = alloca i16, align 2
  %t = alloca i32, align 4
  store i16 %f, i16* %f.addr, align 2
  %0 = load i16, i16* %f.addr, align 2
  %conv = zext i16 %0 to i32
  %and = and i32 %conv, 15
  store i32 %and, i32* %t, align 4
  %1 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %t, align 4
  %sub = sub nsw i32 %2, 1
  %div = sdiv i32 %sub, 3
  %shl = shl i32 4, %div
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %shl, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @XzCheck_Init(%struct.CXzCheck* %p, i32 %mode) #0 {
entry:
  %p.addr = alloca %struct.CXzCheck*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.CXzCheck* %p, %struct.CXzCheck** %p.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %mode1 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %1, i32 0, i32 0
  store i32 %0, i32* %mode1, align 4
  %2 = load i32, i32* %mode.addr, align 4
  switch i32 %2, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.2
    i32 10, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %3, i32 0, i32 1
  store i32 -1, i32* %crc, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %4 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc64 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %4, i32 0, i32 2
  store i64 -1, i64* %crc64, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %sha = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %5, i32 0, i32 3
  call void @Sha256_Init(%struct.CSha256* %sha)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @Sha256_Init(%struct.CSha256*) #1

; Function Attrs: nounwind uwtable
define void @XzCheck_Update(%struct.CXzCheck* %p, i8* %data, i64 %size) #0 {
entry:
  %p.addr = alloca %struct.CXzCheck*, align 8
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  store %struct.CXzCheck* %p, %struct.CXzCheck** %p.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %mode = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i32 0, i32 0
  %1 = load i32, i32* %mode, align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.2
    i32 10, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %2, i32 0, i32 1
  %3 = load i32, i32* %crc, align 4
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %call = call i32 @CrcUpdate(i32 %3, i8* %4, i64 %5)
  %6 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc1 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %6, i32 0, i32 1
  store i32 %call, i32* %crc1, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc64 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %7, i32 0, i32 2
  %8 = load i64, i64* %crc64, align 8
  %9 = load i8*, i8** %data.addr, align 8
  %10 = load i64, i64* %size.addr, align 8
  %call3 = call i64 @Crc64Update(i64 %8, i8* %9, i64 %10)
  %11 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc644 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %11, i32 0, i32 2
  store i64 %call3, i64* %crc644, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %sha = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %12, i32 0, i32 3
  %13 = load i8*, i8** %data.addr, align 8
  %14 = load i64, i64* %size.addr, align 8
  call void @Sha256_Update(%struct.CSha256* %sha, i8* %13, i64 %14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.5, %sw.bb.2, %sw.bb
  ret void
}

declare i32 @CrcUpdate(i32, i8*, i64) #1

declare i64 @Crc64Update(i64, i8*, i64) #1

declare void @Sha256_Update(%struct.CSha256*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @XzCheck_Final(%struct.CXzCheck* %p, i8* %digest) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.CXzCheck*, align 8
  %digest.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %v = alloca i64, align 8
  store %struct.CXzCheck* %p, %struct.CXzCheck** %p.addr, align 8
  store i8* %digest, i8** %digest.addr, align 8
  %0 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %mode = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %0, i32 0, i32 0
  %1 = load i32, i32* %mode, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb.1
    i32 10, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %2, i32 0, i32 1
  %3 = load i32, i32* %crc, align 4
  %xor = xor i32 %3, -1
  %4 = load i8*, i8** %digest.addr, align 8
  %5 = bitcast i8* %4 to i32*
  store i32 %xor, i32* %5, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %crc64 = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %6, i32 0, i32 2
  %7 = load i64, i64* %crc64, align 8
  %xor2 = xor i64 %7, -1
  store i64 %xor2, i64* %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %v, align 8
  %and = and i64 %9, 255
  %conv = trunc i64 %and to i8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i8*, i8** %digest.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  %13 = load i64, i64* %v, align 8
  %shr = lshr i64 %13, 8
  store i64 %shr, i64* %v, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %14 = load %struct.CXzCheck*, %struct.CXzCheck** %p.addr, align 8
  %sha = getelementptr inbounds %struct.CXzCheck, %struct.CXzCheck* %14, i32 0, i32 3
  %15 = load i8*, i8** %digest.addr, align 8
  call void @Sha256_Final(%struct.CSha256* %sha, i8* %15)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.3, %for.end, %sw.bb
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @Sha256_Final(%struct.CSha256*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
