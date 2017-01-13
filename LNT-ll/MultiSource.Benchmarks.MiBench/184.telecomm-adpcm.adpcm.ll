; ModuleID = './MultiSource.Benchmarks.MiBench/184.telecomm-adpcm.adpcm.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adpcm_state = type { i16, i8 }

@stepsizeTable = internal global [89 x i32] [i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 16, i32 17, i32 19, i32 21, i32 23, i32 25, i32 28, i32 31, i32 34, i32 37, i32 41, i32 45, i32 50, i32 55, i32 60, i32 66, i32 73, i32 80, i32 88, i32 97, i32 107, i32 118, i32 130, i32 143, i32 157, i32 173, i32 190, i32 209, i32 230, i32 253, i32 279, i32 307, i32 337, i32 371, i32 408, i32 449, i32 494, i32 544, i32 598, i32 658, i32 724, i32 796, i32 876, i32 963, i32 1060, i32 1166, i32 1282, i32 1411, i32 1552, i32 1707, i32 1878, i32 2066, i32 2272, i32 2499, i32 2749, i32 3024, i32 3327, i32 3660, i32 4026, i32 4428, i32 4871, i32 5358, i32 5894, i32 6484, i32 7132, i32 7845, i32 8630, i32 9493, i32 10442, i32 11487, i32 12635, i32 13899, i32 15289, i32 16818, i32 18500, i32 20350, i32 22385, i32 24623, i32 27086, i32 29794, i32 32767], align 16
@indexTable = internal global [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8, i32 -1, i32 -1, i32 -1, i32 -1, i32 2, i32 4, i32 6, i32 8], align 16

; Function Attrs: nounwind uwtable
define void @adpcm_coder(i16* %indata, i8* %outdata, i32 %len, %struct.adpcm_state* %state) #0 {
entry:
  %indata.addr = alloca i16*, align 8
  %outdata.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca %struct.adpcm_state*, align 8
  %inp = alloca i16*, align 8
  %outp = alloca i8*, align 8
  %val = alloca i32, align 4
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %diff = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %outputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store i16* %indata, i16** %indata.addr, align 8
  store i8* %outdata, i8** %outdata.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.adpcm_state* %state, %struct.adpcm_state** %state.addr, align 8
  %0 = load i8*, i8** %outdata.addr, align 8
  store i8* %0, i8** %outp, align 8
  %1 = load i16*, i16** %indata.addr, align 8
  store i16* %1, i16** %inp, align 8
  %2 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %valprev = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %2, i32 0, i32 0
  %3 = load i16, i16* %valprev, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %valpred, align 4
  %4 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %4, i32 0, i32 1
  %5 = load i8, i8* %index1, align 1
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, i32* %index, align 4
  %6 = load i32, i32* %index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %step, align 4
  store i32 1, i32* %bufferstep, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %len.addr, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i16*, i16** %inp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %9, i32 1
  store i16* %incdec.ptr, i16** %inp, align 8
  %10 = load i16, i16* %9, align 2
  %conv4 = sext i16 %10 to i32
  store i32 %conv4, i32* %val, align 4
  %11 = load i32, i32* %val, align 4
  %12 = load i32, i32* %valpred, align 4
  %sub = sub nsw i32 %11, %12
  store i32 %sub, i32* %diff, align 4
  %13 = load i32, i32* %diff, align 4
  %cmp5 = icmp slt i32 %13, 0
  %cond = select i1 %cmp5, i32 8, i32 0
  store i32 %cond, i32* %sign, align 4
  %14 = load i32, i32* %sign, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load i32, i32* %diff, align 4
  %sub7 = sub nsw i32 0, %15
  store i32 %sub7, i32* %diff, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, i32* %delta, align 4
  %16 = load i32, i32* %step, align 4
  %shr = ashr i32 %16, 3
  store i32 %shr, i32* %vpdiff, align 4
  %17 = load i32, i32* %diff, align 4
  %18 = load i32, i32* %step, align 4
  %cmp8 = icmp sge i32 %17, %18
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  store i32 4, i32* %delta, align 4
  %19 = load i32, i32* %step, align 4
  %20 = load i32, i32* %diff, align 4
  %sub11 = sub nsw i32 %20, %19
  store i32 %sub11, i32* %diff, align 4
  %21 = load i32, i32* %step, align 4
  %22 = load i32, i32* %vpdiff, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, i32* %vpdiff, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %23 = load i32, i32* %step, align 4
  %shr13 = ashr i32 %23, 1
  store i32 %shr13, i32* %step, align 4
  %24 = load i32, i32* %diff, align 4
  %25 = load i32, i32* %step, align 4
  %cmp14 = icmp sge i32 %24, %25
  br i1 %cmp14, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.end.12
  %26 = load i32, i32* %delta, align 4
  %or = or i32 %26, 2
  store i32 %or, i32* %delta, align 4
  %27 = load i32, i32* %step, align 4
  %28 = load i32, i32* %diff, align 4
  %sub17 = sub nsw i32 %28, %27
  store i32 %sub17, i32* %diff, align 4
  %29 = load i32, i32* %step, align 4
  %30 = load i32, i32* %vpdiff, align 4
  %add18 = add nsw i32 %30, %29
  store i32 %add18, i32* %vpdiff, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.end.12
  %31 = load i32, i32* %step, align 4
  %shr20 = ashr i32 %31, 1
  store i32 %shr20, i32* %step, align 4
  %32 = load i32, i32* %diff, align 4
  %33 = load i32, i32* %step, align 4
  %cmp21 = icmp sge i32 %32, %33
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.19
  %34 = load i32, i32* %delta, align 4
  %or24 = or i32 %34, 1
  store i32 %or24, i32* %delta, align 4
  %35 = load i32, i32* %step, align 4
  %36 = load i32, i32* %vpdiff, align 4
  %add25 = add nsw i32 %36, %35
  store i32 %add25, i32* %vpdiff, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.19
  %37 = load i32, i32* %sign, align 4
  %tobool27 = icmp ne i32 %37, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.26
  %38 = load i32, i32* %vpdiff, align 4
  %39 = load i32, i32* %valpred, align 4
  %sub29 = sub nsw i32 %39, %38
  store i32 %sub29, i32* %valpred, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end.26
  %40 = load i32, i32* %vpdiff, align 4
  %41 = load i32, i32* %valpred, align 4
  %add30 = add nsw i32 %41, %40
  store i32 %add30, i32* %valpred, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.28
  %42 = load i32, i32* %valpred, align 4
  %cmp32 = icmp sgt i32 %42, 32767
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.end.31
  store i32 32767, i32* %valpred, align 4
  br label %if.end.40

if.else.35:                                       ; preds = %if.end.31
  %43 = load i32, i32* %valpred, align 4
  %cmp36 = icmp slt i32 %43, -32768
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.else.35
  store i32 -32768, i32* %valpred, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.else.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.34
  %44 = load i32, i32* %sign, align 4
  %45 = load i32, i32* %delta, align 4
  %or41 = or i32 %45, %44
  store i32 %or41, i32* %delta, align 4
  %46 = load i32, i32* %delta, align 4
  %idxprom42 = sext i32 %46 to i64
  %arrayidx43 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i64 %idxprom42
  %47 = load i32, i32* %arrayidx43, align 4
  %48 = load i32, i32* %index, align 4
  %add44 = add nsw i32 %48, %47
  store i32 %add44, i32* %index, align 4
  %49 = load i32, i32* %index, align 4
  %cmp45 = icmp slt i32 %49, 0
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.40
  store i32 0, i32* %index, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %if.end.40
  %50 = load i32, i32* %index, align 4
  %cmp49 = icmp sgt i32 %50, 88
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  store i32 88, i32* %index, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  %51 = load i32, i32* %index, align 4
  %idxprom53 = sext i32 %51 to i64
  %arrayidx54 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom53
  %52 = load i32, i32* %arrayidx54, align 4
  store i32 %52, i32* %step, align 4
  %53 = load i32, i32* %bufferstep, align 4
  %tobool55 = icmp ne i32 %53, 0
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.end.52
  %54 = load i32, i32* %delta, align 4
  %shl = shl i32 %54, 4
  %and = and i32 %shl, 240
  store i32 %and, i32* %outputbuffer, align 4
  br label %if.end.62

if.else.57:                                       ; preds = %if.end.52
  %55 = load i32, i32* %delta, align 4
  %and58 = and i32 %55, 15
  %56 = load i32, i32* %outputbuffer, align 4
  %or59 = or i32 %and58, %56
  %conv60 = trunc i32 %or59 to i8
  %57 = load i8*, i8** %outp, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr61, i8** %outp, align 8
  store i8 %conv60, i8* %57, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.57, %if.then.56
  %58 = load i32, i32* %bufferstep, align 4
  %tobool63 = icmp ne i32 %58, 0
  %lnot = xor i1 %tobool63, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bufferstep, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %59 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %59, -1
  store i32 %dec, i32* %len.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load i32, i32* %bufferstep, align 4
  %tobool64 = icmp ne i32 %60, 0
  br i1 %tobool64, label %if.end.68, label %if.then.65

if.then.65:                                       ; preds = %for.end
  %61 = load i32, i32* %outputbuffer, align 4
  %conv66 = trunc i32 %61 to i8
  %62 = load i8*, i8** %outp, align 8
  %incdec.ptr67 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr67, i8** %outp, align 8
  store i8 %conv66, i8* %62, align 1
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %for.end
  %63 = load i32, i32* %valpred, align 4
  %conv69 = trunc i32 %63 to i16
  %64 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %valprev70 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %64, i32 0, i32 0
  store i16 %conv69, i16* %valprev70, align 2
  %65 = load i32, i32* %index, align 4
  %conv71 = trunc i32 %65 to i8
  %66 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %index72 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %66, i32 0, i32 1
  store i8 %conv71, i8* %index72, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @adpcm_decoder(i8* %indata, i16* %outdata, i32 %len, %struct.adpcm_state* %state) #0 {
entry:
  %indata.addr = alloca i8*, align 8
  %outdata.addr = alloca i16*, align 8
  %len.addr = alloca i32, align 4
  %state.addr = alloca %struct.adpcm_state*, align 8
  %inp = alloca i8*, align 8
  %outp = alloca i16*, align 8
  %sign = alloca i32, align 4
  %delta = alloca i32, align 4
  %step = alloca i32, align 4
  %valpred = alloca i32, align 4
  %vpdiff = alloca i32, align 4
  %index = alloca i32, align 4
  %inputbuffer = alloca i32, align 4
  %bufferstep = alloca i32, align 4
  store i8* %indata, i8** %indata.addr, align 8
  store i16* %outdata, i16** %outdata.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store %struct.adpcm_state* %state, %struct.adpcm_state** %state.addr, align 8
  %0 = load i16*, i16** %outdata.addr, align 8
  store i16* %0, i16** %outp, align 8
  %1 = load i8*, i8** %indata.addr, align 8
  store i8* %1, i8** %inp, align 8
  %2 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %valprev = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %2, i32 0, i32 0
  %3 = load i16, i16* %valprev, align 2
  %conv = sext i16 %3 to i32
  store i32 %conv, i32* %valpred, align 4
  %4 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %index1 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %4, i32 0, i32 1
  %5 = load i8, i8* %index1, align 1
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, i32* %index, align 4
  %6 = load i32, i32* %index, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  store i32 %7, i32* %step, align 4
  store i32 0, i32* %bufferstep, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %len.addr, align 4
  %cmp = icmp sgt i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %bufferstep, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %inputbuffer, align 4
  %and = and i32 %10, 15
  store i32 %and, i32* %delta, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i8*, i8** %inp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %inp, align 8
  %12 = load i8, i8* %11, align 1
  %conv4 = sext i8 %12 to i32
  store i32 %conv4, i32* %inputbuffer, align 4
  %13 = load i32, i32* %inputbuffer, align 4
  %shr = ashr i32 %13, 4
  %and5 = and i32 %shr, 15
  store i32 %and5, i32* %delta, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %bufferstep, align 4
  %tobool6 = icmp ne i32 %14, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %bufferstep, align 4
  %15 = load i32, i32* %delta, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* @indexTable, i32 0, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load i32, i32* %index, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %index, align 4
  %18 = load i32, i32* %index, align 4
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 0, i32* %index, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end
  %19 = load i32, i32* %index, align 4
  %cmp13 = icmp sgt i32 %19, 88
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 88, i32* %index, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.12
  %20 = load i32, i32* %delta, align 4
  %and17 = and i32 %20, 8
  store i32 %and17, i32* %sign, align 4
  %21 = load i32, i32* %delta, align 4
  %and18 = and i32 %21, 7
  store i32 %and18, i32* %delta, align 4
  %22 = load i32, i32* %step, align 4
  %shr19 = ashr i32 %22, 3
  store i32 %shr19, i32* %vpdiff, align 4
  %23 = load i32, i32* %delta, align 4
  %and20 = and i32 %23, 4
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.16
  %24 = load i32, i32* %step, align 4
  %25 = load i32, i32* %vpdiff, align 4
  %add23 = add nsw i32 %25, %24
  store i32 %add23, i32* %vpdiff, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.16
  %26 = load i32, i32* %delta, align 4
  %and25 = and i32 %26, 2
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %27 = load i32, i32* %step, align 4
  %shr28 = ashr i32 %27, 1
  %28 = load i32, i32* %vpdiff, align 4
  %add29 = add nsw i32 %28, %shr28
  store i32 %add29, i32* %vpdiff, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.end.24
  %29 = load i32, i32* %delta, align 4
  %and31 = and i32 %29, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.30
  %30 = load i32, i32* %step, align 4
  %shr34 = ashr i32 %30, 2
  %31 = load i32, i32* %vpdiff, align 4
  %add35 = add nsw i32 %31, %shr34
  store i32 %add35, i32* %vpdiff, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.30
  %32 = load i32, i32* %sign, align 4
  %tobool37 = icmp ne i32 %32, 0
  br i1 %tobool37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.36
  %33 = load i32, i32* %vpdiff, align 4
  %34 = load i32, i32* %valpred, align 4
  %sub = sub nsw i32 %34, %33
  store i32 %sub, i32* %valpred, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %if.end.36
  %35 = load i32, i32* %vpdiff, align 4
  %36 = load i32, i32* %valpred, align 4
  %add40 = add nsw i32 %36, %35
  store i32 %add40, i32* %valpred, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  %37 = load i32, i32* %valpred, align 4
  %cmp42 = icmp sgt i32 %37, 32767
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %if.end.41
  store i32 32767, i32* %valpred, align 4
  br label %if.end.50

if.else.45:                                       ; preds = %if.end.41
  %38 = load i32, i32* %valpred, align 4
  %cmp46 = icmp slt i32 %38, -32768
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.45
  store i32 -32768, i32* %valpred, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.else.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.44
  %39 = load i32, i32* %index, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [89 x i32], [89 x i32]* @stepsizeTable, i32 0, i64 %idxprom51
  %40 = load i32, i32* %arrayidx52, align 4
  store i32 %40, i32* %step, align 4
  %41 = load i32, i32* %valpred, align 4
  %conv53 = trunc i32 %41 to i16
  %42 = load i16*, i16** %outp, align 8
  %incdec.ptr54 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %incdec.ptr54, i16** %outp, align 8
  store i16 %conv53, i16* %42, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %43 = load i32, i32* %len.addr, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %len.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i32, i32* %valpred, align 4
  %conv55 = trunc i32 %44 to i16
  %45 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %valprev56 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %45, i32 0, i32 0
  store i16 %conv55, i16* %valprev56, align 2
  %46 = load i32, i32* %index, align 4
  %conv57 = trunc i32 %46 to i8
  %47 = load %struct.adpcm_state*, %struct.adpcm_state** %state.addr, align 8
  %index58 = getelementptr inbounds %struct.adpcm_state, %struct.adpcm_state* %47, i32 0, i32 1
  store i8 %conv57, i8* %index58, align 1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
