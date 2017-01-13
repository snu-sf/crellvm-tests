; ModuleID = './MultiSource.Applications.ALAC/15.decode.ag_dec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: nounwind uwtable
define void @set_standard_ag_params(%struct.AGParamRec* %params, i32 %fullwidth, i32 %sectorwidth) #0 {
entry:
  %params.addr = alloca %struct.AGParamRec*, align 8
  %fullwidth.addr = alloca i32, align 4
  %sectorwidth.addr = alloca i32, align 4
  store %struct.AGParamRec* %params, %struct.AGParamRec** %params.addr, align 8
  store i32 %fullwidth, i32* %fullwidth.addr, align 4
  store i32 %sectorwidth, i32* %sectorwidth.addr, align 4
  %0 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %1 = load i32, i32* %fullwidth.addr, align 4
  %2 = load i32, i32* %sectorwidth.addr, align 4
  call void @set_ag_params(%struct.AGParamRec* %0, i32 10, i32 40, i32 14, i32 %1, i32 %2, i32 255)
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_ag_params(%struct.AGParamRec* %params, i32 %m, i32 %p, i32 %k, i32 %f, i32 %s, i32 %maxrun) #0 {
entry:
  %params.addr = alloca %struct.AGParamRec*, align 8
  %m.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %f.addr = alloca i32, align 4
  %s.addr = alloca i32, align 4
  %maxrun.addr = alloca i32, align 4
  store %struct.AGParamRec* %params, %struct.AGParamRec** %params.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %f, i32* %f.addr, align 4
  store i32 %s, i32* %s.addr, align 4
  store i32 %maxrun, i32* %maxrun.addr, align 4
  %0 = load i32, i32* %m.addr, align 4
  %1 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %mb0 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %1, i32 0, i32 1
  store i32 %0, i32* %mb0, align 4
  %2 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %mb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %2, i32 0, i32 0
  store i32 %0, i32* %mb, align 4
  %3 = load i32, i32* %p.addr, align 4
  %4 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %pb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %4, i32 0, i32 2
  store i32 %3, i32* %pb, align 4
  %5 = load i32, i32* %k.addr, align 4
  %6 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %kb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %6, i32 0, i32 3
  store i32 %5, i32* %kb, align 4
  %7 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %kb1 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %7, i32 0, i32 3
  %8 = load i32, i32* %kb1, align 4
  %shl = shl i32 1, %8
  %sub = sub i32 %shl, 1
  %9 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %wb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %9, i32 0, i32 4
  store i32 %sub, i32* %wb, align 4
  %10 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %pb2 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %10, i32 0, i32 2
  %11 = load i32, i32* %pb2, align 4
  %sub3 = sub i32 512, %11
  %12 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %qb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %12, i32 0, i32 5
  store i32 %sub3, i32* %qb, align 4
  %13 = load i32, i32* %f.addr, align 4
  %14 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %fw = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %14, i32 0, i32 6
  store i32 %13, i32* %fw, align 4
  %15 = load i32, i32* %s.addr, align 4
  %16 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %sw = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %16, i32 0, i32 7
  store i32 %15, i32* %sw, align 4
  %17 = load i32, i32* %maxrun.addr, align 4
  %18 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %maxrun4 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %18, i32 0, i32 8
  store i32 %17, i32* %maxrun4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @dyn_decomp(%struct.AGParamRec* %params, %struct.BitBuffer* %bitstream, i32* %pc, i32 %numSamples, i32 %maxSize, i32* %outNumBits) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.AGParamRec*, align 8
  %bitstream.addr = alloca %struct.BitBuffer*, align 8
  %pc.addr = alloca i32*, align 8
  %numSamples.addr = alloca i32, align 4
  %maxSize.addr = alloca i32, align 4
  %outNumBits.addr = alloca i32*, align 8
  %in = alloca i8*, align 8
  %outPtr = alloca i32*, align 8
  %bitPos = alloca i32, align 4
  %startPos = alloca i32, align 4
  %maxPos = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %mz = alloca i32, align 4
  %del = alloca i32, align 4
  %zmode = alloca i32, align 4
  %mb = alloca i32, align 4
  %pb_local = alloca i32, align 4
  %kb_local = alloca i32, align 4
  %wb_local = alloca i32, align 4
  %status = alloca i32, align 4
  %ndecode = alloca i32, align 4
  %multiplier = alloca i32, align 4
  store %struct.AGParamRec* %params, %struct.AGParamRec** %params.addr, align 8
  store %struct.BitBuffer* %bitstream, %struct.BitBuffer** %bitstream.addr, align 8
  store i32* %pc, i32** %pc.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %maxSize, i32* %maxSize.addr, align 4
  store i32* %outNumBits, i32** %outNumBits.addr, align 8
  %0 = load i32*, i32** %pc.addr, align 8
  store i32* %0, i32** %outPtr, align 8
  %1 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %pb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %1, i32 0, i32 2
  %2 = load i32, i32* %pb, align 4
  store i32 %2, i32* %pb_local, align 4
  %3 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %kb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %3, i32 0, i32 3
  %4 = load i32, i32* %kb, align 4
  store i32 %4, i32* %kb_local, align 4
  %5 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %wb = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %5, i32 0, i32 4
  %6 = load i32, i32* %wb, align 4
  store i32 %6, i32* %wb_local, align 4
  %7 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %cmp = icmp ne %struct.BitBuffer* %7, null
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %8 = load i32*, i32** %pc.addr, align 8
  %cmp1 = icmp ne i32* %8, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %9 = load i32*, i32** %outNumBits.addr, align 8
  %cmp3 = icmp ne i32* %9, null
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  store i32 -50, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2
  %10 = load i32*, i32** %outNumBits.addr, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %11, i32 0, i32 0
  %12 = load i8*, i8** %cur, align 8
  store i8* %12, i8** %in, align 8
  %13 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %13, i32 0, i32 2
  %14 = load i32, i32* %bitIndex, align 4
  store i32 %14, i32* %startPos, align 4
  %15 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %byteSize = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %15, i32 0, i32 3
  %16 = load i32, i32* %byteSize, align 4
  %mul = mul i32 %16, 8
  store i32 %mul, i32* %maxPos, align 4
  %17 = load i32, i32* %startPos, align 4
  store i32 %17, i32* %bitPos, align 4
  %18 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %mb0 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %18, i32 0, i32 1
  %19 = load i32, i32* %mb0, align 4
  store i32 %19, i32* %mb, align 4
  store i32 0, i32* %zmode, align 4
  store i32 0, i32* %c, align 4
  store i32 0, i32* %status, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %if.end
  %20 = load i32, i32* %c, align 4
  %21 = load i32, i32* %numSamples.addr, align 4
  %cmp4 = icmp ult i32 %20, %21
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load i32, i32* %bitPos, align 4
  %23 = load i32, i32* %maxPos, align 4
  %cmp5 = icmp ult i32 %22, %23
  br i1 %cmp5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %while.body
  store i32 -50, i32* %status, align 4
  br label %Exit

if.end.7:                                         ; preds = %while.body
  %24 = load i32, i32* %mb, align 4
  %shr = lshr i32 %24, 9
  store i32 %shr, i32* %m, align 4
  %25 = load i32, i32* %m, align 4
  %call = call i32 @lg3a(i32 %25)
  store i32 %call, i32* %k, align 4
  %26 = load i32, i32* %k, align 4
  %27 = load i32, i32* %kb_local, align 4
  %cmp8 = icmp ult i32 %26, %27
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %28 = load i32, i32* %k, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %29 = load i32, i32* %kb_local, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ]
  store i32 %cond, i32* %k, align 4
  %30 = load i32, i32* %k, align 4
  %shl = shl i32 1, %30
  %sub = sub nsw i32 %shl, 1
  store i32 %sub, i32* %m, align 4
  %31 = load i8*, i8** %in, align 8
  %32 = load i32, i32* %m, align 4
  %33 = load i32, i32* %k, align 4
  %34 = load i32, i32* %maxSize.addr, align 4
  %call9 = call i32 @dyn_get_32bit(i8* %31, i32* %bitPos, i32 %32, i32 %33, i32 %34)
  store i32 %call9, i32* %n, align 4
  %35 = load i32, i32* %n, align 4
  %36 = load i32, i32* %zmode, align 4
  %add = add i32 %35, %36
  store i32 %add, i32* %ndecode, align 4
  %37 = load i32, i32* %ndecode, align 4
  %and = and i32 %37, 1
  %sub10 = sub i32 0, %and
  store i32 %sub10, i32* %multiplier, align 4
  %38 = load i32, i32* %multiplier, align 4
  %or = or i32 %38, 1
  store i32 %or, i32* %multiplier, align 4
  %39 = load i32, i32* %ndecode, align 4
  %add11 = add i32 %39, 1
  %shr12 = lshr i32 %add11, 1
  %40 = load i32, i32* %multiplier, align 4
  %mul13 = mul i32 %shr12, %40
  store i32 %mul13, i32* %del, align 4
  %41 = load i32, i32* %del, align 4
  %42 = load i32*, i32** %outPtr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %incdec.ptr, i32** %outPtr, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %c, align 4
  %inc = add i32 %43, 1
  store i32 %inc, i32* %c, align 4
  %44 = load i32, i32* %pb_local, align 4
  %45 = load i32, i32* %n, align 4
  %46 = load i32, i32* %zmode, align 4
  %add14 = add i32 %45, %46
  %mul15 = mul i32 %44, %add14
  %47 = load i32, i32* %mb, align 4
  %add16 = add i32 %mul15, %47
  %48 = load i32, i32* %pb_local, align 4
  %49 = load i32, i32* %mb, align 4
  %mul17 = mul i32 %48, %49
  %shr18 = lshr i32 %mul17, 9
  %sub19 = sub i32 %add16, %shr18
  store i32 %sub19, i32* %mb, align 4
  %50 = load i32, i32* %n, align 4
  %cmp20 = icmp ugt i32 %50, 65535
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %cond.end
  store i32 65535, i32* %mb, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %cond.end
  store i32 0, i32* %zmode, align 4
  %51 = load i32, i32* %mb, align 4
  %shl23 = shl i32 %51, 2
  %cmp24 = icmp ult i32 %shl23, 512
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.48

land.lhs.true.25:                                 ; preds = %if.end.22
  %52 = load i32, i32* %c, align 4
  %53 = load i32, i32* %numSamples.addr, align 4
  %cmp26 = icmp ult i32 %52, %53
  br i1 %cmp26, label %if.then.27, label %if.end.48

if.then.27:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %zmode, align 4
  %54 = load i32, i32* %mb, align 4
  %call28 = call i32 @lead(i32 %54)
  %sub29 = sub nsw i32 %call28, 24
  %55 = load i32, i32* %mb, align 4
  %add30 = add i32 %55, 16
  %shr31 = lshr i32 %add30, 6
  %add32 = add i32 %sub29, %shr31
  store i32 %add32, i32* %k, align 4
  %56 = load i32, i32* %k, align 4
  %shl33 = shl i32 1, %56
  %sub34 = sub nsw i32 %shl33, 1
  %57 = load i32, i32* %wb_local, align 4
  %and35 = and i32 %sub34, %57
  store i32 %and35, i32* %mz, align 4
  %58 = load i8*, i8** %in, align 8
  %59 = load i32, i32* %mz, align 4
  %60 = load i32, i32* %k, align 4
  %call36 = call i32 @dyn_get(i8* %58, i32* %bitPos, i32 %59, i32 %60)
  store i32 %call36, i32* %n, align 4
  %61 = load i32, i32* %c, align 4
  %62 = load i32, i32* %n, align 4
  %add37 = add i32 %61, %62
  %63 = load i32, i32* %numSamples.addr, align 4
  %cmp38 = icmp ule i32 %add37, %63
  br i1 %cmp38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.27
  store i32 -50, i32* %status, align 4
  br label %Exit

if.end.40:                                        ; preds = %if.then.27
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %n, align 4
  %cmp41 = icmp ult i32 %64, %65
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32*, i32** %outPtr, align 8
  %incdec.ptr42 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %incdec.ptr42, i32** %outPtr, align 8
  store i32 0, i32* %66, align 4
  %67 = load i32, i32* %c, align 4
  %inc43 = add i32 %67, 1
  store i32 %inc43, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %68 = load i32, i32* %j, align 4
  %inc44 = add i32 %68, 1
  store i32 %inc44, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %69 = load i32, i32* %n, align 4
  %cmp45 = icmp uge i32 %69, 65535
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  store i32 0, i32* %zmode, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %for.end
  store i32 0, i32* %mb, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true.25, %if.end.22
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %Exit

Exit:                                             ; preds = %while.end, %if.then.39, %if.then.6
  %70 = load i32, i32* %bitPos, align 4
  %71 = load i32, i32* %startPos, align 4
  %sub49 = sub i32 %70, %71
  %72 = load i32*, i32** %outNumBits.addr, align 8
  store i32 %sub49, i32* %72, align 4
  %73 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %74 = load i32*, i32** %outNumBits.addr, align 8
  %75 = load i32, i32* %74, align 4
  call void @BitBufferAdvance(%struct.BitBuffer* %73, i32 %75)
  %76 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %cur50 = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %76, i32 0, i32 0
  %77 = load i8*, i8** %cur50, align 8
  %78 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %end = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %78, i32 0, i32 1
  %79 = load i8*, i8** %end, align 8
  %cmp51 = icmp ule i8* %77, %79
  br i1 %cmp51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %Exit
  store i32 -50, i32* %status, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %Exit
  %80 = load i32, i32* %status, align 4
  store i32 %80, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then
  %81 = load i32, i32* %retval
  ret i32 %81
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @lg3a(i32 %x) #1 {
entry:
  %x.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %0, 3
  store i32 %add, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %call = call i32 @lead(i32 %1)
  store i32 %call, i32* %result, align 4
  %2 = load i32, i32* %result, align 4
  %sub = sub nsw i32 31, %2
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @dyn_get_32bit(i8* %in, i32* %bitPos, i32 %m, i32 %k, i32 %maxbits) #2 {
entry:
  %in.addr = alloca i8*, align 8
  %bitPos.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %maxbits.addr = alloca i32, align 4
  %tempbits = alloca i32, align 4
  %v = alloca i32, align 4
  %streamlong = alloca i32, align 4
  %result = alloca i32, align 4
  %notI = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32* %bitPos, i32** %bitPos.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %maxbits, i32* %maxbits.addr, align 4
  %0 = load i32*, i32** %bitPos.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %tempbits, align 4
  %2 = load i8*, i8** %in.addr, align 8
  %3 = load i32, i32* %tempbits, align 4
  %shr = lshr i32 %3, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call = call i32 @read32bit(i8* %add.ptr)
  store i32 %call, i32* %streamlong, align 4
  %4 = load i32, i32* %tempbits, align 4
  %and = and i32 %4, 7
  %5 = load i32, i32* %streamlong, align 4
  %shl = shl i32 %5, %and
  store i32 %shl, i32* %streamlong, align 4
  %6 = load i32, i32* %streamlong, align 4
  %neg = xor i32 %6, -1
  store i32 %neg, i32* %notI, align 4
  %7 = load i32, i32* %notI, align 4
  %call1 = call i32 @lead(i32 %7)
  store i32 %call1, i32* %result, align 4
  %8 = load i32, i32* %result, align 4
  %cmp = icmp uge i32 %8, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i8*, i8** %in.addr, align 8
  %10 = load i32, i32* %tempbits, align 4
  %add = add i32 %10, 9
  %11 = load i32, i32* %maxbits.addr, align 4
  %call2 = call i32 @getstreambits(i8* %9, i32 %add, i32 %11)
  store i32 %call2, i32* %result, align 4
  %12 = load i32, i32* %maxbits.addr, align 4
  %add3 = add nsw i32 9, %12
  %13 = load i32, i32* %tempbits, align 4
  %add4 = add i32 %13, %add3
  store i32 %add4, i32* %tempbits, align 4
  br label %if.end.20

if.else:                                          ; preds = %entry
  %14 = load i32, i32* %result, align 4
  %15 = load i32, i32* %tempbits, align 4
  %add5 = add i32 %15, %14
  store i32 %add5, i32* %tempbits, align 4
  %16 = load i32, i32* %tempbits, align 4
  %add6 = add i32 %16, 1
  store i32 %add6, i32* %tempbits, align 4
  %17 = load i32, i32* %k.addr, align 4
  %cmp7 = icmp ne i32 %17, 1
  br i1 %cmp7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.else
  %18 = load i32, i32* %result, align 4
  %add9 = add i32 %18, 1
  %19 = load i32, i32* %streamlong, align 4
  %shl10 = shl i32 %19, %add9
  store i32 %shl10, i32* %streamlong, align 4
  %20 = load i32, i32* %streamlong, align 4
  %21 = load i32, i32* %k.addr, align 4
  %sub = sub nsw i32 32, %21
  %shr11 = lshr i32 %20, %sub
  store i32 %shr11, i32* %v, align 4
  %22 = load i32, i32* %k.addr, align 4
  %23 = load i32, i32* %tempbits, align 4
  %add12 = add i32 %23, %22
  store i32 %add12, i32* %tempbits, align 4
  %24 = load i32, i32* %tempbits, align 4
  %sub13 = sub i32 %24, 1
  store i32 %sub13, i32* %tempbits, align 4
  %25 = load i32, i32* %result, align 4
  %26 = load i32, i32* %m.addr, align 4
  %mul = mul i32 %25, %26
  store i32 %mul, i32* %result, align 4
  %27 = load i32, i32* %v, align 4
  %cmp14 = icmp uge i32 %27, 2
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.8
  %28 = load i32, i32* %v, align 4
  %sub16 = sub i32 %28, 1
  %29 = load i32, i32* %result, align 4
  %add17 = add i32 %29, %sub16
  store i32 %add17, i32* %result, align 4
  %30 = load i32, i32* %tempbits, align 4
  %add18 = add i32 %30, 1
  store i32 %add18, i32* %tempbits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then
  %31 = load i32, i32* %tempbits, align 4
  %32 = load i32*, i32** %bitPos.addr, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %result, align 4
  ret i32 %33
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lead(i32 %m) #2 {
entry:
  %m.addr = alloca i32, align 4
  %j = alloca i64, align 8
  %c = alloca i64, align 8
  store i32 %m, i32* %m.addr, align 4
  store i64 2147483648, i64* %c, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %j, align 8
  %cmp = icmp slt i64 %0, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %c, align 8
  %2 = load i32, i32* %m.addr, align 4
  %conv = sext i32 %2 to i64
  %and = and i64 %1, %conv
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %3 = load i64, i64* %c, align 8
  %shr = lshr i64 %3, 1
  store i64 %shr, i64* %c, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i64, i64* %j, align 8
  %inc = add nsw i64 %4, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i64, i64* %j, align 8
  %conv3 = trunc i64 %5 to i32
  ret i32 %conv3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @dyn_get(i8* %in, i32* %bitPos, i32 %m, i32 %k) #2 {
entry:
  %in.addr = alloca i8*, align 8
  %bitPos.addr = alloca i32*, align 8
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %tempbits = alloca i32, align 4
  %result = alloca i32, align 4
  %pre = alloca i32, align 4
  %v = alloca i32, align 4
  %streamlong = alloca i32, align 4
  %notI = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32* %bitPos, i32** %bitPos.addr, align 8
  store i32 %m, i32* %m.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32*, i32** %bitPos.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %tempbits, align 4
  store i32 0, i32* %pre, align 4
  %2 = load i8*, i8** %in.addr, align 8
  %3 = load i32, i32* %tempbits, align 4
  %shr = lshr i32 %3, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %call = call i32 @read32bit(i8* %add.ptr)
  store i32 %call, i32* %streamlong, align 4
  %4 = load i32, i32* %tempbits, align 4
  %and = and i32 %4, 7
  %5 = load i32, i32* %streamlong, align 4
  %shl = shl i32 %5, %and
  store i32 %shl, i32* %streamlong, align 4
  %6 = load i32, i32* %streamlong, align 4
  %neg = xor i32 %6, -1
  store i32 %neg, i32* %notI, align 4
  %7 = load i32, i32* %notI, align 4
  %call1 = call i32 @lead(i32 %7)
  store i32 %call1, i32* %pre, align 4
  %8 = load i32, i32* %pre, align 4
  %cmp = icmp uge i32 %8, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 9, i32* %pre, align 4
  %9 = load i32, i32* %pre, align 4
  %10 = load i32, i32* %tempbits, align 4
  %add = add i32 %10, %9
  store i32 %add, i32* %tempbits, align 4
  %11 = load i32, i32* %pre, align 4
  %12 = load i32, i32* %streamlong, align 4
  %shl2 = shl i32 %12, %11
  store i32 %shl2, i32* %streamlong, align 4
  %13 = load i32, i32* %streamlong, align 4
  %shr3 = lshr i32 %13, 16
  store i32 %shr3, i32* %result, align 4
  %14 = load i32, i32* %tempbits, align 4
  %add4 = add i32 %14, 16
  store i32 %add4, i32* %tempbits, align 4
  br label %if.end.18

if.else:                                          ; preds = %entry
  %15 = load i32, i32* %pre, align 4
  %16 = load i32, i32* %tempbits, align 4
  %add5 = add i32 %16, %15
  store i32 %add5, i32* %tempbits, align 4
  %17 = load i32, i32* %tempbits, align 4
  %add6 = add i32 %17, 1
  store i32 %add6, i32* %tempbits, align 4
  %18 = load i32, i32* %pre, align 4
  %add7 = add i32 %18, 1
  %19 = load i32, i32* %streamlong, align 4
  %shl8 = shl i32 %19, %add7
  store i32 %shl8, i32* %streamlong, align 4
  %20 = load i32, i32* %streamlong, align 4
  %21 = load i32, i32* %k.addr, align 4
  %sub = sub i32 32, %21
  %shr9 = lshr i32 %20, %sub
  store i32 %shr9, i32* %v, align 4
  %22 = load i32, i32* %k.addr, align 4
  %23 = load i32, i32* %tempbits, align 4
  %add10 = add i32 %23, %22
  store i32 %add10, i32* %tempbits, align 4
  %24 = load i32, i32* %pre, align 4
  %25 = load i32, i32* %m.addr, align 4
  %mul = mul i32 %24, %25
  %26 = load i32, i32* %v, align 4
  %add11 = add i32 %mul, %26
  %sub12 = sub i32 %add11, 1
  store i32 %sub12, i32* %result, align 4
  %27 = load i32, i32* %v, align 4
  %cmp13 = icmp ult i32 %27, 2
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else
  %28 = load i32, i32* %v, align 4
  %sub15 = sub i32 %28, 1
  %29 = load i32, i32* %result, align 4
  %sub16 = sub i32 %29, %sub15
  store i32 %sub16, i32* %result, align 4
  %30 = load i32, i32* %tempbits, align 4
  %sub17 = sub i32 %30, 1
  store i32 %sub17, i32* %tempbits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  %31 = load i32, i32* %tempbits, align 4
  %32 = load i32*, i32** %bitPos.addr, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %result, align 4
  ret i32 %33
}

declare void @BitBufferAdvance(%struct.BitBuffer*, i32) #3

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @read32bit(i8* %buffer) #1 {
entry:
  %buffer.addr = alloca i8*, align 8
  %value = alloca i32, align 4
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl i32 %conv, 24
  %2 = load i8*, i8** %buffer.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %shl3 = shl i32 %conv2, 16
  %or = or i32 %shl, %shl3
  %4 = load i8*, i8** %buffer.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %6 = load i8*, i8** %buffer.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %6, i64 3
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %or10 = or i32 %or7, %conv9
  store i32 %or10, i32* %value, align 4
  %8 = load i32, i32* %value, align 4
  ret i32 %8
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @getstreambits(i8* %in, i32 %bitoffset, i32 %numbits) #1 {
entry:
  %in.addr = alloca i8*, align 8
  %bitoffset.addr = alloca i32, align 4
  %numbits.addr = alloca i32, align 4
  %load1 = alloca i32, align 4
  %load2 = alloca i32, align 4
  %byteoffset = alloca i32, align 4
  %result = alloca i32, align 4
  %load2shift = alloca i32, align 4
  store i8* %in, i8** %in.addr, align 8
  store i32 %bitoffset, i32* %bitoffset.addr, align 4
  store i32 %numbits, i32* %numbits.addr, align 4
  %0 = load i32, i32* %bitoffset.addr, align 4
  %div = sdiv i32 %0, 8
  store i32 %div, i32* %byteoffset, align 4
  %1 = load i8*, i8** %in.addr, align 8
  %2 = load i32, i32* %byteoffset, align 4
  %idx.ext = zext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %call = call i32 @read32bit(i8* %add.ptr)
  store i32 %call, i32* %load1, align 4
  %3 = load i32, i32* %numbits.addr, align 4
  %4 = load i32, i32* %bitoffset.addr, align 4
  %and = and i32 %4, 7
  %add = add nsw i32 %3, %and
  %cmp = icmp sgt i32 %add, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %load1, align 4
  %6 = load i32, i32* %bitoffset.addr, align 4
  %and1 = and i32 %6, 7
  %shl = shl i32 %5, %and1
  store i32 %shl, i32* %result, align 4
  %7 = load i32, i32* %byteoffset, align 4
  %add2 = add i32 %7, 4
  %idxprom = zext i32 %add2 to i64
  %8 = load i8*, i8** %in.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %load2, align 4
  %10 = load i32, i32* %numbits.addr, align 4
  %11 = load i32, i32* %bitoffset.addr, align 4
  %and3 = and i32 %11, 7
  %add4 = add nsw i32 %10, %and3
  %sub = sub nsw i32 %add4, 32
  %sub5 = sub nsw i32 8, %sub
  store i32 %sub5, i32* %load2shift, align 4
  %12 = load i32, i32* %load2shift, align 4
  %13 = load i32, i32* %load2, align 4
  %shr = lshr i32 %13, %12
  store i32 %shr, i32* %load2, align 4
  %14 = load i32, i32* %numbits.addr, align 4
  %sub6 = sub nsw i32 32, %14
  %15 = load i32, i32* %result, align 4
  %shr7 = lshr i32 %15, %sub6
  store i32 %shr7, i32* %result, align 4
  %16 = load i32, i32* %load2, align 4
  %17 = load i32, i32* %result, align 4
  %or = or i32 %17, %16
  store i32 %or, i32* %result, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %load1, align 4
  %19 = load i32, i32* %numbits.addr, align 4
  %sub8 = sub nsw i32 32, %19
  %20 = load i32, i32* %bitoffset.addr, align 4
  %and9 = and i32 %20, 7
  %sub10 = sub nsw i32 %sub8, %and9
  %shr11 = lshr i32 %18, %sub10
  store i32 %shr11, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load i32, i32* %numbits.addr, align 4
  %conv12 = sext i32 %21 to i64
  %cmp13 = icmp ne i64 %conv12, 32
  br i1 %cmp13, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end
  %22 = load i32, i32* %numbits.addr, align 4
  %sh_prom = zext i32 %22 to i64
  %shl16 = shl i64 4294967295, %sh_prom
  %neg = xor i64 %shl16, -1
  %23 = load i32, i32* %result, align 4
  %conv17 = zext i32 %23 to i64
  %and18 = and i64 %conv17, %neg
  %conv19 = trunc i64 %and18 to i32
  store i32 %conv19, i32* %result, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %if.end
  %24 = load i32, i32* %result, align 4
  ret i32 %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
