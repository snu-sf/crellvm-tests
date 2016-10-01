; ModuleID = './MultiSource.Applications.ALAC/4.encode.ag_enc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.BitBuffer = type { i8*, i8*, i32, i32 }

; Function Attrs: nounwind uwtable
define i32 @dyn_comp(%struct.AGParamRec* %params, i32* %pc, %struct.BitBuffer* %bitstream, i32 %numSamples, i32 %bitSize, i32* %outNumBits) #0 {
entry:
  %retval = alloca i32, align 4
  %params.addr = alloca %struct.AGParamRec*, align 8
  %pc.addr = alloca i32*, align 8
  %bitstream.addr = alloca %struct.BitBuffer*, align 8
  %numSamples.addr = alloca i32, align 4
  %bitSize.addr = alloca i32, align 4
  %outNumBits.addr = alloca i32*, align 8
  %out = alloca i8*, align 8
  %bitPos = alloca i32, align 4
  %startPos = alloca i32, align 4
  %m = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i32, align 4
  %mz = alloca i32, align 4
  %nz = alloca i32, align 4
  %numBits = alloca i32, align 4
  %value = alloca i32, align 4
  %del = alloca i32, align 4
  %zmode = alloca i32, align 4
  %overflow = alloca i32, align 4
  %overflowbits = alloca i32, align 4
  %status = alloca i32, align 4
  %mb = alloca i32, align 4
  %pb = alloca i32, align 4
  %kb = alloca i32, align 4
  %wb = alloca i32, align 4
  %rowPos = alloca i32, align 4
  %rowSize = alloca i32, align 4
  %rowJump = alloca i32, align 4
  %inPtr = alloca i32*, align 8
  store %struct.AGParamRec* %params, %struct.AGParamRec** %params.addr, align 8
  store i32* %pc, i32** %pc.addr, align 8
  store %struct.BitBuffer* %bitstream, %struct.BitBuffer** %bitstream.addr, align 8
  store i32 %numSamples, i32* %numSamples.addr, align 4
  store i32 %bitSize, i32* %bitSize.addr, align 4
  store i32* %outNumBits, i32** %outNumBits.addr, align 8
  store i32 0, i32* %rowPos, align 4
  %0 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %sw = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %0, i32 0, i32 7
  %1 = load i32, i32* %sw, align 4
  store i32 %1, i32* %rowSize, align 4
  %2 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %fw = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %2, i32 0, i32 6
  %3 = load i32, i32* %fw, align 4
  %4 = load i32, i32* %rowSize, align 4
  %sub = sub i32 %3, %4
  store i32 %sub, i32* %rowJump, align 4
  %5 = load i32*, i32** %pc.addr, align 8
  store i32* %5, i32** %inPtr, align 8
  %6 = load i32*, i32** %outNumBits.addr, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %bitSize.addr, align 4
  %cmp = icmp sge i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* %bitSize.addr, align 4
  %cmp1 = icmp sle i32 %8, 32
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 -50, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %9 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %cur = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %9, i32 0, i32 0
  %10 = load i8*, i8** %cur, align 8
  store i8* %10, i8** %out, align 8
  %11 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %bitIndex = getelementptr inbounds %struct.BitBuffer, %struct.BitBuffer* %11, i32 0, i32 2
  %12 = load i32, i32* %bitIndex, align 4
  store i32 %12, i32* %startPos, align 4
  %13 = load i32, i32* %startPos, align 4
  store i32 %13, i32* %bitPos, align 4
  %14 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %mb0 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %14, i32 0, i32 1
  %15 = load i32, i32* %mb0, align 4
  %16 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %mb2 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %16, i32 0, i32 0
  store i32 %15, i32* %mb2, align 4
  store i32 %15, i32* %mb, align 4
  %17 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %pb3 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %17, i32 0, i32 2
  %18 = load i32, i32* %pb3, align 4
  store i32 %18, i32* %pb, align 4
  %19 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %kb4 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %19, i32 0, i32 3
  %20 = load i32, i32* %kb4, align 4
  store i32 %20, i32* %kb, align 4
  %21 = load %struct.AGParamRec*, %struct.AGParamRec** %params.addr, align 8
  %wb5 = getelementptr inbounds %struct.AGParamRec, %struct.AGParamRec* %21, i32 0, i32 4
  %22 = load i32, i32* %wb5, align 4
  store i32 %22, i32* %wb, align 4
  store i32 0, i32* %zmode, align 4
  store i32 0, i32* %c, align 4
  store i32 0, i32* %status, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.67, %if.end
  %23 = load i32, i32* %c, align 4
  %24 = load i32, i32* %numSamples.addr, align 4
  %cmp6 = icmp ult i32 %23, %24
  br i1 %cmp6, label %while.body, label %while.end.68

while.body:                                       ; preds = %while.cond
  %25 = load i32, i32* %mb, align 4
  %shr = lshr i32 %25, 9
  store i32 %shr, i32* %m, align 4
  %26 = load i32, i32* %m, align 4
  %call = call i32 @lg3a(i32 %26)
  store i32 %call, i32* %k, align 4
  %27 = load i32, i32* %k, align 4
  %28 = load i32, i32* %kb, align 4
  %cmp7 = icmp ugt i32 %27, %28
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %while.body
  %29 = load i32, i32* %kb, align 4
  store i32 %29, i32* %k, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %while.body
  %30 = load i32, i32* %k, align 4
  %shl = shl i32 1, %30
  %sub10 = sub nsw i32 %shl, 1
  store i32 %sub10, i32* %m, align 4
  %31 = load i32*, i32** %inPtr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %incdec.ptr, i32** %inPtr, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %del, align 4
  %33 = load i32, i32* %rowPos, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %rowPos, align 4
  %34 = load i32, i32* %del, align 4
  %call11 = call i32 @abs_func(i32 %34)
  %shl12 = shl i32 %call11, 1
  %35 = load i32, i32* %del, align 4
  %shr13 = ashr i32 %35, 31
  %and = and i32 %shr13, 1
  %sub14 = sub nsw i32 %shl12, %and
  %36 = load i32, i32* %zmode, align 4
  %sub15 = sub nsw i32 %sub14, %36
  store i32 %sub15, i32* %n, align 4
  %37 = load i32, i32* %bitSize.addr, align 4
  %38 = load i32, i32* %m, align 4
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %n, align 4
  %call16 = call i32 @dyn_code_32bit(i32 %37, i32 %38, i32 %39, i32 %40, i32* %numBits, i32* %value, i32* %overflow, i32* %overflowbits)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.9
  %41 = load i8*, i8** %out, align 8
  %42 = load i32, i32* %bitPos, align 4
  %43 = load i32, i32* %numBits, align 4
  %44 = load i32, i32* %value, align 4
  call void @dyn_jam_noDeref(i8* %41, i32 %42, i32 %43, i32 %44)
  %45 = load i32, i32* %numBits, align 4
  %46 = load i32, i32* %bitPos, align 4
  %add = add i32 %46, %45
  store i32 %add, i32* %bitPos, align 4
  %47 = load i8*, i8** %out, align 8
  %48 = load i32, i32* %bitPos, align 4
  %49 = load i32, i32* %overflowbits, align 4
  %50 = load i32, i32* %overflow, align 4
  call void @dyn_jam_noDeref_large(i8* %47, i32 %48, i32 %49, i32 %50)
  %51 = load i32, i32* %overflowbits, align 4
  %52 = load i32, i32* %bitPos, align 4
  %add18 = add i32 %52, %51
  store i32 %add18, i32* %bitPos, align 4
  br label %if.end.20

if.else:                                          ; preds = %if.end.9
  %53 = load i8*, i8** %out, align 8
  %54 = load i32, i32* %bitPos, align 4
  %55 = load i32, i32* %numBits, align 4
  %56 = load i32, i32* %value, align 4
  call void @dyn_jam_noDeref(i8* %53, i32 %54, i32 %55, i32 %56)
  %57 = load i32, i32* %numBits, align 4
  %58 = load i32, i32* %bitPos, align 4
  %add19 = add i32 %58, %57
  store i32 %add19, i32* %bitPos, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.17
  %59 = load i32, i32* %c, align 4
  %inc21 = add i32 %59, 1
  store i32 %inc21, i32* %c, align 4
  %60 = load i32, i32* %rowPos, align 4
  %61 = load i32, i32* %rowSize, align 4
  %cmp22 = icmp sge i32 %60, %61
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i32 0, i32* %rowPos, align 4
  %62 = load i32, i32* %rowJump, align 4
  %63 = load i32*, i32** %inPtr, align 8
  %idx.ext = sext i32 %62 to i64
  %add.ptr = getelementptr inbounds i32, i32* %63, i64 %idx.ext
  store i32* %add.ptr, i32** %inPtr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %64 = load i32, i32* %pb, align 4
  %65 = load i32, i32* %n, align 4
  %66 = load i32, i32* %zmode, align 4
  %add25 = add i32 %65, %66
  %mul = mul i32 %64, %add25
  %67 = load i32, i32* %mb, align 4
  %add26 = add i32 %mul, %67
  %68 = load i32, i32* %pb, align 4
  %69 = load i32, i32* %mb, align 4
  %mul27 = mul i32 %68, %69
  %shr28 = lshr i32 %mul27, 9
  %sub29 = sub i32 %add26, %shr28
  store i32 %sub29, i32* %mb, align 4
  %70 = load i32, i32* %n, align 4
  %cmp30 = icmp ugt i32 %70, 65535
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.24
  store i32 65535, i32* %mb, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.end.24
  store i32 0, i32* %zmode, align 4
  %71 = load i32, i32* %c, align 4
  %72 = load i32, i32* %numSamples.addr, align 4
  %cmp33 = icmp ule i32 %71, %72
  br i1 %cmp33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.end.32
  store i32 -50, i32* %status, align 4
  br label %Exit

if.end.35:                                        ; preds = %if.end.32
  %73 = load i32, i32* %mb, align 4
  %shl36 = shl i32 %73, 2
  %cmp37 = icmp ult i32 %shl36, 512
  br i1 %cmp37, label %land.lhs.true.38, label %if.end.67

land.lhs.true.38:                                 ; preds = %if.end.35
  %74 = load i32, i32* %c, align 4
  %75 = load i32, i32* %numSamples.addr, align 4
  %cmp39 = icmp ult i32 %74, %75
  br i1 %cmp39, label %if.then.40, label %if.end.67

if.then.40:                                       ; preds = %land.lhs.true.38
  store i32 1, i32* %zmode, align 4
  store i32 0, i32* %nz, align 4
  br label %while.cond.41

while.cond.41:                                    ; preds = %if.end.56, %if.then.40
  %76 = load i32, i32* %c, align 4
  %77 = load i32, i32* %numSamples.addr, align 4
  %cmp42 = icmp ult i32 %76, %77
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.41
  %78 = load i32*, i32** %inPtr, align 8
  %79 = load i32, i32* %78, align 4
  %cmp43 = icmp eq i32 %79, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.41
  %80 = phi i1 [ false, %while.cond.41 ], [ %cmp43, %land.rhs ]
  br i1 %80, label %while.body.44, label %while.end

while.body.44:                                    ; preds = %land.end
  %81 = load i32*, i32** %inPtr, align 8
  %incdec.ptr45 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %incdec.ptr45, i32** %inPtr, align 8
  %82 = load i32, i32* %nz, align 4
  %inc46 = add i32 %82, 1
  store i32 %inc46, i32* %nz, align 4
  %83 = load i32, i32* %c, align 4
  %inc47 = add i32 %83, 1
  store i32 %inc47, i32* %c, align 4
  %84 = load i32, i32* %rowPos, align 4
  %inc48 = add nsw i32 %84, 1
  store i32 %inc48, i32* %rowPos, align 4
  %85 = load i32, i32* %rowSize, align 4
  %cmp49 = icmp sge i32 %inc48, %85
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %while.body.44
  store i32 0, i32* %rowPos, align 4
  %86 = load i32, i32* %rowJump, align 4
  %87 = load i32*, i32** %inPtr, align 8
  %idx.ext51 = sext i32 %86 to i64
  %add.ptr52 = getelementptr inbounds i32, i32* %87, i64 %idx.ext51
  store i32* %add.ptr52, i32** %inPtr, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %while.body.44
  %88 = load i32, i32* %nz, align 4
  %cmp54 = icmp uge i32 %88, 65535
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  store i32 0, i32* %zmode, align 4
  br label %while.end

if.end.56:                                        ; preds = %if.end.53
  br label %while.cond.41

while.end:                                        ; preds = %if.then.55, %land.end
  %89 = load i32, i32* %mb, align 4
  %call57 = call i32 @lead(i32 %89)
  %sub58 = sub nsw i32 %call57, 24
  %90 = load i32, i32* %mb, align 4
  %add59 = add i32 %90, 16
  %shr60 = lshr i32 %add59, 6
  %add61 = add i32 %sub58, %shr60
  store i32 %add61, i32* %k, align 4
  %91 = load i32, i32* %k, align 4
  %shl62 = shl i32 1, %91
  %sub63 = sub nsw i32 %shl62, 1
  %92 = load i32, i32* %wb, align 4
  %and64 = and i32 %sub63, %92
  store i32 %and64, i32* %mz, align 4
  %93 = load i32, i32* %mz, align 4
  %94 = load i32, i32* %k, align 4
  %95 = load i32, i32* %nz, align 4
  %call65 = call i32 @dyn_code(i32 %93, i32 %94, i32 %95, i32* %numBits)
  store i32 %call65, i32* %value, align 4
  %96 = load i8*, i8** %out, align 8
  %97 = load i32, i32* %bitPos, align 4
  %98 = load i32, i32* %numBits, align 4
  %99 = load i32, i32* %value, align 4
  call void @dyn_jam_noDeref(i8* %96, i32 %97, i32 %98, i32 %99)
  %100 = load i32, i32* %numBits, align 4
  %101 = load i32, i32* %bitPos, align 4
  %add66 = add i32 %101, %100
  store i32 %add66, i32* %bitPos, align 4
  store i32 0, i32* %mb, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %while.end, %land.lhs.true.38, %if.end.35
  br label %while.cond

while.end.68:                                     ; preds = %while.cond
  %102 = load i32, i32* %bitPos, align 4
  %103 = load i32, i32* %startPos, align 4
  %sub69 = sub i32 %102, %103
  %104 = load i32*, i32** %outNumBits.addr, align 8
  store i32 %sub69, i32* %104, align 4
  %105 = load %struct.BitBuffer*, %struct.BitBuffer** %bitstream.addr, align 8
  %106 = load i32*, i32** %outNumBits.addr, align 8
  %107 = load i32, i32* %106, align 4
  call void @BitBufferAdvance(%struct.BitBuffer* %105, i32 %107)
  br label %Exit

Exit:                                             ; preds = %while.end.68, %if.then.34
  %108 = load i32, i32* %status, align 4
  store i32 %108, i32* %retval
  br label %return

return:                                           ; preds = %Exit, %if.then
  %109 = load i32, i32* %retval
  ret i32 %109
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

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @abs_func(i32 %a) #1 {
entry:
  %a.addr = alloca i32, align 4
  %isneg = alloca i32, align 4
  %xorval = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %shr = ashr i32 %0, 31
  store i32 %shr, i32* %isneg, align 4
  %1 = load i32, i32* %a.addr, align 4
  %2 = load i32, i32* %isneg, align 4
  %xor = xor i32 %1, %2
  store i32 %xor, i32* %xorval, align 4
  %3 = load i32, i32* %xorval, align 4
  %4 = load i32, i32* %isneg, align 4
  %sub = sub nsw i32 %3, %4
  store i32 %sub, i32* %result, align 4
  %5 = load i32, i32* %result, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @dyn_code_32bit(i32 %maxbits, i32 %m, i32 %k, i32 %n, i32* %outNumBits, i32* %outValue, i32* %overflow, i32* %overflowbits) #2 {
entry:
  %maxbits.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %outNumBits.addr = alloca i32*, align 8
  %outValue.addr = alloca i32*, align 8
  %overflow.addr = alloca i32*, align 8
  %overflowbits.addr = alloca i32*, align 8
  %div = alloca i32, align 4
  %mod = alloca i32, align 4
  %de = alloca i32, align 4
  %numBits = alloca i32, align 4
  %value = alloca i32, align 4
  %didOverflow = alloca i32, align 4
  store i32 %maxbits, i32* %maxbits.addr, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %outNumBits, i32** %outNumBits.addr, align 8
  store i32* %outValue, i32** %outValue.addr, align 8
  store i32* %overflow, i32** %overflow.addr, align 8
  store i32* %overflowbits, i32** %overflowbits.addr, align 8
  store i32 0, i32* %didOverflow, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  %div1 = udiv i32 %0, %1
  store i32 %div1, i32* %div, align 4
  %2 = load i32, i32* %div, align 4
  %cmp = icmp ult i32 %2, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %m.addr, align 4
  %5 = load i32, i32* %div, align 4
  %mul = mul i32 %4, %5
  %sub = sub i32 %3, %mul
  store i32 %sub, i32* %mod, align 4
  %6 = load i32, i32* %mod, align 4
  %cmp2 = icmp eq i32 %6, 0
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %de, align 4
  %7 = load i32, i32* %div, align 4
  %8 = load i32, i32* %k.addr, align 4
  %add = add i32 %7, %8
  %add3 = add i32 %add, 1
  %9 = load i32, i32* %de, align 4
  %sub4 = sub i32 %add3, %9
  store i32 %sub4, i32* %numBits, align 4
  %10 = load i32, i32* %div, align 4
  %shl = shl i32 1, %10
  %sub5 = sub nsw i32 %shl, 1
  %11 = load i32, i32* %numBits, align 4
  %12 = load i32, i32* %div, align 4
  %sub6 = sub i32 %11, %12
  %shl7 = shl i32 %sub5, %sub6
  %13 = load i32, i32* %mod, align 4
  %add8 = add i32 %shl7, %13
  %add9 = add i32 %add8, 1
  %14 = load i32, i32* %de, align 4
  %sub10 = sub i32 %add9, %14
  store i32 %sub10, i32* %value, align 4
  %15 = load i32, i32* %numBits, align 4
  %cmp11 = icmp ugt i32 %15, 25
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  br label %codeasescape

if.end:                                           ; preds = %if.then
  br label %if.end.14

if.else:                                          ; preds = %entry
  br label %codeasescape

codeasescape:                                     ; preds = %if.else, %if.then.13
  store i32 9, i32* %numBits, align 4
  store i32 511, i32* %value, align 4
  %16 = load i32, i32* %n.addr, align 4
  %17 = load i32*, i32** %overflow.addr, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %maxbits.addr, align 4
  %19 = load i32*, i32** %overflowbits.addr, align 8
  store i32 %18, i32* %19, align 4
  store i32 1, i32* %didOverflow, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %codeasescape, %if.end
  %20 = load i32, i32* %numBits, align 4
  %21 = load i32*, i32** %outNumBits.addr, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %value, align 4
  %23 = load i32*, i32** %outValue.addr, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %didOverflow, align 4
  ret i32 %24
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @dyn_jam_noDeref(i8* %out, i32 %bitPos, i32 %numBits, i32 %value) #1 {
entry:
  %out.addr = alloca i8*, align 8
  %bitPos.addr = alloca i32, align 4
  %numBits.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %i = alloca i32*, align 8
  %mask = alloca i32, align 4
  %curr = alloca i32, align 4
  %shift = alloca i32, align 4
  store i8* %out, i8** %out.addr, align 8
  store i32 %bitPos, i32* %bitPos.addr, align 4
  store i32 %numBits, i32* %numBits.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i8*, i8** %out.addr, align 8
  %1 = load i32, i32* %bitPos.addr, align 4
  %shr = lshr i32 %1, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to i32*
  store i32* %2, i32** %i, align 8
  %3 = load i32*, i32** %i, align 8
  %4 = bitcast i32* %3 to i8*
  %call = call i32 @readBE32bit(i8* %4)
  store i32 %call, i32* %curr, align 4
  %5 = load i32, i32* %bitPos.addr, align 4
  %and = and i32 %5, 7
  %sub = sub i32 32, %and
  %6 = load i32, i32* %numBits.addr, align 4
  %sub1 = sub i32 %sub, %6
  store i32 %sub1, i32* %shift, align 4
  %7 = load i32, i32* %numBits.addr, align 4
  %sub2 = sub i32 32, %7
  %shr3 = lshr i32 -1, %sub2
  store i32 %shr3, i32* %mask, align 4
  %8 = load i32, i32* %shift, align 4
  %9 = load i32, i32* %mask, align 4
  %shl = shl i32 %9, %8
  store i32 %shl, i32* %mask, align 4
  %10 = load i32, i32* %value.addr, align 4
  %11 = load i32, i32* %shift, align 4
  %shl4 = shl i32 %10, %11
  %12 = load i32, i32* %mask, align 4
  %and5 = and i32 %shl4, %12
  store i32 %and5, i32* %value.addr, align 4
  %13 = load i32, i32* %curr, align 4
  %14 = load i32, i32* %mask, align 4
  %neg = xor i32 %14, -1
  %and6 = and i32 %13, %neg
  %15 = load i32, i32* %value.addr, align 4
  %or = or i32 %15, %and6
  store i32 %or, i32* %value.addr, align 4
  %16 = load i32*, i32** %i, align 8
  %17 = bitcast i32* %16 to i8*
  %18 = load i32, i32* %value.addr, align 4
  call void @writeBE32bit(i8* %17, i32 %18)
  ret void
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @dyn_jam_noDeref_large(i8* %out, i32 %bitPos, i32 %numBits, i32 %value) #1 {
entry:
  %out.addr = alloca i8*, align 8
  %bitPos.addr = alloca i32, align 4
  %numBits.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %i = alloca i32*, align 8
  %w = alloca i32, align 4
  %curr = alloca i32, align 4
  %mask = alloca i32, align 4
  %shiftvalue = alloca i32, align 4
  %tailbyte = alloca i8, align 1
  %tailptr = alloca i8*, align 8
  store i8* %out, i8** %out.addr, align 8
  store i32 %bitPos, i32* %bitPos.addr, align 4
  store i32 %numBits, i32* %numBits.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i8*, i8** %out.addr, align 8
  %1 = load i32, i32* %bitPos.addr, align 4
  %shr = lshr i32 %1, 3
  %idx.ext = zext i32 %shr to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to i32*
  store i32* %2, i32** %i, align 8
  %3 = load i32, i32* %bitPos.addr, align 4
  %and = and i32 %3, 7
  %sub = sub i32 32, %and
  %4 = load i32, i32* %numBits.addr, align 4
  %sub1 = sub i32 %sub, %4
  store i32 %sub1, i32* %shiftvalue, align 4
  %5 = load i32*, i32** %i, align 8
  %6 = bitcast i32* %5 to i8*
  %call = call i32 @readBE32bit(i8* %6)
  store i32 %call, i32* %curr, align 4
  %7 = load i32, i32* %shiftvalue, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %value.addr, align 4
  %9 = load i32, i32* %shiftvalue, align 4
  %sub2 = sub nsw i32 0, %9
  %shr3 = lshr i32 %8, %sub2
  store i32 %shr3, i32* %w, align 4
  %10 = load i32, i32* %shiftvalue, align 4
  %sub4 = sub nsw i32 0, %10
  %shr5 = lshr i32 -1, %sub4
  store i32 %shr5, i32* %mask, align 4
  %11 = load i32, i32* %curr, align 4
  %12 = load i32, i32* %mask, align 4
  %neg = xor i32 %12, -1
  %and6 = and i32 %11, %neg
  %13 = load i32, i32* %w, align 4
  %or = or i32 %13, %and6
  store i32 %or, i32* %w, align 4
  %14 = load i32*, i32** %i, align 8
  %15 = bitcast i32* %14 to i8*
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 4
  store i8* %add.ptr7, i8** %tailptr, align 8
  %16 = load i32, i32* %value.addr, align 4
  %17 = load i32, i32* %shiftvalue, align 4
  %add = add nsw i32 8, %17
  %shl = shl i32 %16, %add
  %and8 = and i32 %shl, 255
  %conv = trunc i32 %and8 to i8
  store i8 %conv, i8* %tailbyte, align 1
  %18 = load i8, i8* %tailbyte, align 1
  %19 = load i8*, i8** %tailptr, align 8
  store i8 %18, i8* %19, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %numBits.addr, align 4
  %sub9 = sub i32 32, %20
  %shr10 = lshr i32 -1, %sub9
  store i32 %shr10, i32* %mask, align 4
  %21 = load i32, i32* %shiftvalue, align 4
  %22 = load i32, i32* %mask, align 4
  %shl11 = shl i32 %22, %21
  store i32 %shl11, i32* %mask, align 4
  %23 = load i32, i32* %value.addr, align 4
  %24 = load i32, i32* %shiftvalue, align 4
  %shl12 = shl i32 %23, %24
  %25 = load i32, i32* %mask, align 4
  %and13 = and i32 %shl12, %25
  store i32 %and13, i32* %w, align 4
  %26 = load i32, i32* %curr, align 4
  %27 = load i32, i32* %mask, align 4
  %neg14 = xor i32 %27, -1
  %and15 = and i32 %26, %neg14
  %28 = load i32, i32* %w, align 4
  %or16 = or i32 %28, %and15
  store i32 %or16, i32* %w, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %29 = load i32*, i32** %i, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %w, align 4
  call void @writeBE32bit(i8* %30, i32 %31)
  ret void
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
define internal i32 @dyn_code(i32 %m, i32 %k, i32 %n, i32* %outNumBits) #2 {
entry:
  %m.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %outNumBits.addr = alloca i32*, align 8
  %div = alloca i32, align 4
  %mod = alloca i32, align 4
  %de = alloca i32, align 4
  %numBits = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %outNumBits, i32** %outNumBits.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %m.addr, align 4
  %div1 = sdiv i32 %0, %1
  store i32 %div1, i32* %div, align 4
  %2 = load i32, i32* %div, align 4
  %cmp = icmp uge i32 %2, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 25, i32* %numBits, align 4
  %3 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 33488896, %3
  store i32 %add, i32* %value, align 4
  br label %if.end.15

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* %m.addr, align 4
  %rem = srem i32 %4, %5
  store i32 %rem, i32* %mod, align 4
  %6 = load i32, i32* %mod, align 4
  %cmp2 = icmp eq i32 %6, 0
  %conv = zext i1 %cmp2 to i32
  store i32 %conv, i32* %de, align 4
  %7 = load i32, i32* %div, align 4
  %8 = load i32, i32* %k.addr, align 4
  %add3 = add i32 %7, %8
  %add4 = add i32 %add3, 1
  %9 = load i32, i32* %de, align 4
  %sub = sub i32 %add4, %9
  store i32 %sub, i32* %numBits, align 4
  %10 = load i32, i32* %div, align 4
  %shl = shl i32 1, %10
  %sub5 = sub nsw i32 %shl, 1
  %11 = load i32, i32* %numBits, align 4
  %12 = load i32, i32* %div, align 4
  %sub6 = sub i32 %11, %12
  %shl7 = shl i32 %sub5, %sub6
  %13 = load i32, i32* %mod, align 4
  %add8 = add i32 %shl7, %13
  %add9 = add i32 %add8, 1
  %14 = load i32, i32* %de, align 4
  %sub10 = sub i32 %add9, %14
  store i32 %sub10, i32* %value, align 4
  %15 = load i32, i32* %numBits, align 4
  %cmp11 = icmp ugt i32 %15, 25
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  store i32 25, i32* %numBits, align 4
  %16 = load i32, i32* %n.addr, align 4
  %add14 = add nsw i32 33488896, %16
  store i32 %add14, i32* %value, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %17 = load i32, i32* %numBits, align 4
  %18 = load i32*, i32** %outNumBits.addr, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %value, align 4
  ret i32 %19
}

declare void @BitBufferAdvance(%struct.BitBuffer*, i32) #3

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal i32 @readBE32bit(i8* %buffer) #1 {
entry:
  %buffer.addr = alloca i8*, align 8
  %i = alloca i32*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %i, align 8
  %2 = load i32*, i32** %i, align 8
  %3 = load i32, i32* %2, align 4
  %call = call i32 @Swap32NtoB(i32 %3)
  ret i32 %call
}

; Function Attrs: alwaysinline inlinehint nounwind uwtable
define internal void @writeBE32bit(i8* %buffer, i32 %value) #1 {
entry:
  %buffer.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %i = alloca i32*, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %i, align 8
  %2 = load i32, i32* %value.addr, align 4
  %call = call i32 @Swap32BtoN(i32 %2)
  %3 = load i32*, i32** %i, align 8
  store i32 %call, i32* %3, align 4
  ret void
}

declare i32 @Swap32NtoB(i32) #3

declare i32 @Swap32BtoN(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
