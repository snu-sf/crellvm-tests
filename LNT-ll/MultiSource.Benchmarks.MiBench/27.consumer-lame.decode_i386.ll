; ModuleID = './MultiSource.Benchmarks.MiBench/27.consumer-lame.decode_i386.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpstr = type { %struct.buf*, %struct.buf*, i32, i32, i32, %struct.frame, [2 x [2304 x i8]], [2 x [2 x [576 x double]]], [2 x i32], i64, i32, [2 x [2 x [272 x double]]], i32 }
%struct.buf = type { i8*, i64, i64, %struct.buf*, %struct.buf* }
%struct.frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@synth_1to1.step = internal constant i32 2, align 4
@gmp = external global %struct.mpstr*, align 8
@decwin = external global [544 x double], align 16

; Function Attrs: nounwind uwtable
define i32 @synth_1to1_mono(double* %bandPtr, i8* %samples, i32* %pnt) #0 {
entry:
  %bandPtr.addr = alloca double*, align 8
  %samples.addr = alloca i8*, align 8
  %pnt.addr = alloca i32*, align 8
  %samples_tmp = alloca [64 x i16], align 16
  %tmp1 = alloca i16*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %pnt1 = alloca i32, align 4
  store double* %bandPtr, double** %bandPtr.addr, align 8, !tbaa !1
  store i8* %samples, i8** %samples.addr, align 8, !tbaa !1
  store i32* %pnt, i32** %pnt.addr, align 8, !tbaa !1
  %0 = bitcast [64 x i16]* %samples_tmp to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast i16** %tmp1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %arraydecay = getelementptr inbounds [64 x i16], [64 x i16]* %samples_tmp, i32 0, i32 0
  store i16* %arraydecay, i16** %tmp1, align 8, !tbaa !1
  %2 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #1
  %3 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = bitcast i32* %pnt1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %4) #1
  store i32 0, i32* %pnt1, align 4, !tbaa !5
  %5 = load double*, double** %bandPtr.addr, align 8, !tbaa !1
  %arraydecay1 = getelementptr inbounds [64 x i16], [64 x i16]* %samples_tmp, i32 0, i32 0
  %6 = bitcast i16* %arraydecay1 to i8*
  %call = call i32 @synth_1to1(double* %5, i32 0, i8* %6, i32* %pnt1)
  store i32 %call, i32* %ret, align 4, !tbaa !5
  %7 = load i32*, i32** %pnt.addr, align 8, !tbaa !1
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = load i8*, i8** %samples.addr, align 8, !tbaa !1
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr, i8** %samples.addr, align 8, !tbaa !1
  store i32 0, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %10, 32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i16*, i16** %tmp1, align 8, !tbaa !1
  %12 = load i16, i16* %11, align 2, !tbaa !7
  %13 = load i8*, i8** %samples.addr, align 8, !tbaa !1
  %14 = bitcast i8* %13 to i16*
  store i16 %12, i16* %14, align 2, !tbaa !7
  %15 = load i8*, i8** %samples.addr, align 8, !tbaa !1
  %add.ptr2 = getelementptr inbounds i8, i8* %15, i64 2
  store i8* %add.ptr2, i8** %samples.addr, align 8, !tbaa !1
  %16 = load i16*, i16** %tmp1, align 8, !tbaa !1
  %add.ptr3 = getelementptr inbounds i16, i16* %16, i64 2
  store i16* %add.ptr3, i16** %tmp1, align 8, !tbaa !1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32*, i32** %pnt.addr, align 8, !tbaa !1
  %19 = load i32, i32* %18, align 4, !tbaa !5
  %add = add nsw i32 %19, 64
  store i32 %add, i32* %18, align 4, !tbaa !5
  %20 = load i32, i32* %ret, align 4, !tbaa !5
  %21 = bitcast i32* %pnt1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %21) #1
  %22 = bitcast i32* %ret to i8*
  call void @llvm.lifetime.end(i64 4, i8* %22) #1
  %23 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %23) #1
  %24 = bitcast i16** %tmp1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast [64 x i16]* %samples_tmp to i8*
  call void @llvm.lifetime.end(i64 128, i8* %25) #1
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define i32 @synth_1to1(double* %bandPtr, i32 %channel, i8* %out, i32* %pnt) #0 {
entry:
  %bandPtr.addr = alloca double*, align 8
  %channel.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %pnt.addr = alloca i32*, align 8
  %bo = alloca i32, align 4
  %samples = alloca i16*, align 8
  %b0 = alloca double*, align 8
  %buf = alloca [272 x double]*, align 8
  %clip = alloca i32, align 4
  %bo1 = alloca i32, align 4
  %j = alloca i32, align 4
  %window = alloca double*, align 8
  %sum = alloca double, align 8
  %sum109 = alloca double, align 8
  %sum162 = alloca double, align 8
  store double* %bandPtr, double** %bandPtr.addr, align 8, !tbaa !1
  store i32 %channel, i32* %channel.addr, align 4, !tbaa !5
  store i8* %out, i8** %out.addr, align 8, !tbaa !1
  store i32* %pnt, i32** %pnt.addr, align 8, !tbaa !1
  %0 = bitcast i32* %bo to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast i16** %samples to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %out.addr, align 8, !tbaa !1
  %3 = load i32*, i32** %pnt.addr, align 8, !tbaa !1
  %4 = load i32, i32* %3, align 4, !tbaa !5
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %5 = bitcast i8* %add.ptr to i16*
  store i16* %5, i16** %samples, align 8, !tbaa !1
  %6 = bitcast double** %b0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast [272 x double]** %buf to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast i32* %clip to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  store i32 0, i32* %clip, align 4, !tbaa !5
  %9 = bitcast i32* %bo1 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %synth_bo = getelementptr inbounds %struct.mpstr, %struct.mpstr* %10, i32 0, i32 12
  %11 = load i32, i32* %synth_bo, align 4, !tbaa !9
  store i32 %11, i32* %bo, align 4, !tbaa !5
  %12 = load i32, i32* %channel.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %bo, align 4, !tbaa !5
  %dec = add nsw i32 %13, -1
  store i32 %dec, i32* %bo, align 4, !tbaa !5
  %14 = load i32, i32* %bo, align 4, !tbaa !5
  %and = and i32 %14, 15
  store i32 %and, i32* %bo, align 4, !tbaa !5
  %15 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %synth_buffs = getelementptr inbounds %struct.mpstr, %struct.mpstr* %15, i32 0, i32 11
  %arrayidx = getelementptr inbounds [2 x [2 x [272 x double]]], [2 x [2 x [272 x double]]]* %synth_buffs, i32 0, i64 0
  %arraydecay = getelementptr inbounds [2 x [272 x double]], [2 x [272 x double]]* %arrayidx, i32 0, i32 0
  store [272 x double]* %arraydecay, [272 x double]** %buf, align 8, !tbaa !1
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i16*, i16** %samples, align 8, !tbaa !1
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %samples, align 8, !tbaa !1
  %17 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %synth_buffs1 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %17, i32 0, i32 11
  %arrayidx2 = getelementptr inbounds [2 x [2 x [272 x double]]], [2 x [2 x [272 x double]]]* %synth_buffs1, i32 0, i64 1
  %arraydecay3 = getelementptr inbounds [2 x [272 x double]], [2 x [272 x double]]* %arrayidx2, i32 0, i32 0
  store [272 x double]* %arraydecay3, [272 x double]** %buf, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load i32, i32* %bo, align 4, !tbaa !5
  %and4 = and i32 %18, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.18

if.then.6:                                        ; preds = %if.end
  %19 = load [272 x double]*, [272 x double]** %buf, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds [272 x double], [272 x double]* %19, i64 0
  %arraydecay8 = getelementptr inbounds [272 x double], [272 x double]* %arrayidx7, i32 0, i32 0
  store double* %arraydecay8, double** %b0, align 8, !tbaa !1
  %20 = load i32, i32* %bo, align 4, !tbaa !5
  store i32 %20, i32* %bo1, align 4, !tbaa !5
  %21 = load [272 x double]*, [272 x double]** %buf, align 8, !tbaa !1
  %arrayidx9 = getelementptr inbounds [272 x double], [272 x double]* %21, i64 1
  %arraydecay10 = getelementptr inbounds [272 x double], [272 x double]* %arrayidx9, i32 0, i32 0
  %22 = load i32, i32* %bo, align 4, !tbaa !5
  %add = add nsw i32 %22, 1
  %and11 = and i32 %add, 15
  %idx.ext12 = sext i32 %and11 to i64
  %add.ptr13 = getelementptr inbounds double, double* %arraydecay10, i64 %idx.ext12
  %23 = load [272 x double]*, [272 x double]** %buf, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds [272 x double], [272 x double]* %23, i64 0
  %arraydecay15 = getelementptr inbounds [272 x double], [272 x double]* %arrayidx14, i32 0, i32 0
  %24 = load i32, i32* %bo, align 4, !tbaa !5
  %idx.ext16 = sext i32 %24 to i64
  %add.ptr17 = getelementptr inbounds double, double* %arraydecay15, i64 %idx.ext16
  %25 = load double*, double** %bandPtr.addr, align 8, !tbaa !1
  call void @dct64(double* %add.ptr13, double* %add.ptr17, double* %25)
  br label %if.end.31

if.else.18:                                       ; preds = %if.end
  %26 = load [272 x double]*, [272 x double]** %buf, align 8, !tbaa !1
  %arrayidx19 = getelementptr inbounds [272 x double], [272 x double]* %26, i64 1
  %arraydecay20 = getelementptr inbounds [272 x double], [272 x double]* %arrayidx19, i32 0, i32 0
  store double* %arraydecay20, double** %b0, align 8, !tbaa !1
  %27 = load i32, i32* %bo, align 4, !tbaa !5
  %add21 = add nsw i32 %27, 1
  store i32 %add21, i32* %bo1, align 4, !tbaa !5
  %28 = load [272 x double]*, [272 x double]** %buf, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds [272 x double], [272 x double]* %28, i64 0
  %arraydecay23 = getelementptr inbounds [272 x double], [272 x double]* %arrayidx22, i32 0, i32 0
  %29 = load i32, i32* %bo, align 4, !tbaa !5
  %idx.ext24 = sext i32 %29 to i64
  %add.ptr25 = getelementptr inbounds double, double* %arraydecay23, i64 %idx.ext24
  %30 = load [272 x double]*, [272 x double]** %buf, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds [272 x double], [272 x double]* %30, i64 1
  %arraydecay27 = getelementptr inbounds [272 x double], [272 x double]* %arrayidx26, i32 0, i32 0
  %31 = load i32, i32* %bo, align 4, !tbaa !5
  %idx.ext28 = sext i32 %31 to i64
  %add.ptr29 = getelementptr inbounds double, double* %arraydecay27, i64 %idx.ext28
  %add.ptr30 = getelementptr inbounds double, double* %add.ptr29, i64 1
  %32 = load double*, double** %bandPtr.addr, align 8, !tbaa !1
  call void @dct64(double* %add.ptr25, double* %add.ptr30, double* %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.18, %if.then.6
  %33 = load i32, i32* %bo, align 4, !tbaa !5
  %34 = load %struct.mpstr*, %struct.mpstr** @gmp, align 8, !tbaa !1
  %synth_bo32 = getelementptr inbounds %struct.mpstr, %struct.mpstr* %34, i32 0, i32 12
  store i32 %33, i32* %synth_bo32, align 4, !tbaa !9
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %35) #1
  %36 = bitcast double** %window to i8*
  call void @llvm.lifetime.start(i64 8, i8* %36) #1
  %37 = load i32, i32* %bo1, align 4, !tbaa !5
  %idx.ext33 = sext i32 %37 to i64
  %idx.neg = sub i64 0, %idx.ext33
  %add.ptr34 = getelementptr inbounds double, double* getelementptr inbounds ([544 x double], [544 x double]* @decwin, i32 0, i64 16), i64 %idx.neg
  store double* %add.ptr34, double** %window, align 8, !tbaa !1
  store i32 16, i32* %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %38 = load i32, i32* %j, align 4, !tbaa !5
  %tobool35 = icmp ne i32 %38, 0
  br i1 %tobool35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = bitcast double* %sum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %39) #1
  %40 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds double, double* %40, i64 0
  %41 = load double, double* %arrayidx36, align 8, !tbaa !13
  %42 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds double, double* %42, i64 0
  %43 = load double, double* %arrayidx37, align 8, !tbaa !13
  %mul = fmul double %41, %43
  store double %mul, double* %sum, align 8, !tbaa !13
  %44 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds double, double* %44, i64 1
  %45 = load double, double* %arrayidx38, align 8, !tbaa !13
  %46 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx39 = getelementptr inbounds double, double* %46, i64 1
  %47 = load double, double* %arrayidx39, align 8, !tbaa !13
  %mul40 = fmul double %45, %47
  %48 = load double, double* %sum, align 8, !tbaa !13
  %sub = fsub double %48, %mul40
  store double %sub, double* %sum, align 8, !tbaa !13
  %49 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds double, double* %49, i64 2
  %50 = load double, double* %arrayidx41, align 8, !tbaa !13
  %51 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds double, double* %51, i64 2
  %52 = load double, double* %arrayidx42, align 8, !tbaa !13
  %mul43 = fmul double %50, %52
  %53 = load double, double* %sum, align 8, !tbaa !13
  %add44 = fadd double %53, %mul43
  store double %add44, double* %sum, align 8, !tbaa !13
  %54 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx45 = getelementptr inbounds double, double* %54, i64 3
  %55 = load double, double* %arrayidx45, align 8, !tbaa !13
  %56 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds double, double* %56, i64 3
  %57 = load double, double* %arrayidx46, align 8, !tbaa !13
  %mul47 = fmul double %55, %57
  %58 = load double, double* %sum, align 8, !tbaa !13
  %sub48 = fsub double %58, %mul47
  store double %sub48, double* %sum, align 8, !tbaa !13
  %59 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx49 = getelementptr inbounds double, double* %59, i64 4
  %60 = load double, double* %arrayidx49, align 8, !tbaa !13
  %61 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds double, double* %61, i64 4
  %62 = load double, double* %arrayidx50, align 8, !tbaa !13
  %mul51 = fmul double %60, %62
  %63 = load double, double* %sum, align 8, !tbaa !13
  %add52 = fadd double %63, %mul51
  store double %add52, double* %sum, align 8, !tbaa !13
  %64 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx53 = getelementptr inbounds double, double* %64, i64 5
  %65 = load double, double* %arrayidx53, align 8, !tbaa !13
  %66 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds double, double* %66, i64 5
  %67 = load double, double* %arrayidx54, align 8, !tbaa !13
  %mul55 = fmul double %65, %67
  %68 = load double, double* %sum, align 8, !tbaa !13
  %sub56 = fsub double %68, %mul55
  store double %sub56, double* %sum, align 8, !tbaa !13
  %69 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds double, double* %69, i64 6
  %70 = load double, double* %arrayidx57, align 8, !tbaa !13
  %71 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds double, double* %71, i64 6
  %72 = load double, double* %arrayidx58, align 8, !tbaa !13
  %mul59 = fmul double %70, %72
  %73 = load double, double* %sum, align 8, !tbaa !13
  %add60 = fadd double %73, %mul59
  store double %add60, double* %sum, align 8, !tbaa !13
  %74 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds double, double* %74, i64 7
  %75 = load double, double* %arrayidx61, align 8, !tbaa !13
  %76 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds double, double* %76, i64 7
  %77 = load double, double* %arrayidx62, align 8, !tbaa !13
  %mul63 = fmul double %75, %77
  %78 = load double, double* %sum, align 8, !tbaa !13
  %sub64 = fsub double %78, %mul63
  store double %sub64, double* %sum, align 8, !tbaa !13
  %79 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx65 = getelementptr inbounds double, double* %79, i64 8
  %80 = load double, double* %arrayidx65, align 8, !tbaa !13
  %81 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds double, double* %81, i64 8
  %82 = load double, double* %arrayidx66, align 8, !tbaa !13
  %mul67 = fmul double %80, %82
  %83 = load double, double* %sum, align 8, !tbaa !13
  %add68 = fadd double %83, %mul67
  store double %add68, double* %sum, align 8, !tbaa !13
  %84 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx69 = getelementptr inbounds double, double* %84, i64 9
  %85 = load double, double* %arrayidx69, align 8, !tbaa !13
  %86 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds double, double* %86, i64 9
  %87 = load double, double* %arrayidx70, align 8, !tbaa !13
  %mul71 = fmul double %85, %87
  %88 = load double, double* %sum, align 8, !tbaa !13
  %sub72 = fsub double %88, %mul71
  store double %sub72, double* %sum, align 8, !tbaa !13
  %89 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx73 = getelementptr inbounds double, double* %89, i64 10
  %90 = load double, double* %arrayidx73, align 8, !tbaa !13
  %91 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds double, double* %91, i64 10
  %92 = load double, double* %arrayidx74, align 8, !tbaa !13
  %mul75 = fmul double %90, %92
  %93 = load double, double* %sum, align 8, !tbaa !13
  %add76 = fadd double %93, %mul75
  store double %add76, double* %sum, align 8, !tbaa !13
  %94 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds double, double* %94, i64 11
  %95 = load double, double* %arrayidx77, align 8, !tbaa !13
  %96 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds double, double* %96, i64 11
  %97 = load double, double* %arrayidx78, align 8, !tbaa !13
  %mul79 = fmul double %95, %97
  %98 = load double, double* %sum, align 8, !tbaa !13
  %sub80 = fsub double %98, %mul79
  store double %sub80, double* %sum, align 8, !tbaa !13
  %99 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds double, double* %99, i64 12
  %100 = load double, double* %arrayidx81, align 8, !tbaa !13
  %101 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds double, double* %101, i64 12
  %102 = load double, double* %arrayidx82, align 8, !tbaa !13
  %mul83 = fmul double %100, %102
  %103 = load double, double* %sum, align 8, !tbaa !13
  %add84 = fadd double %103, %mul83
  store double %add84, double* %sum, align 8, !tbaa !13
  %104 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx85 = getelementptr inbounds double, double* %104, i64 13
  %105 = load double, double* %arrayidx85, align 8, !tbaa !13
  %106 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds double, double* %106, i64 13
  %107 = load double, double* %arrayidx86, align 8, !tbaa !13
  %mul87 = fmul double %105, %107
  %108 = load double, double* %sum, align 8, !tbaa !13
  %sub88 = fsub double %108, %mul87
  store double %sub88, double* %sum, align 8, !tbaa !13
  %109 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx89 = getelementptr inbounds double, double* %109, i64 14
  %110 = load double, double* %arrayidx89, align 8, !tbaa !13
  %111 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds double, double* %111, i64 14
  %112 = load double, double* %arrayidx90, align 8, !tbaa !13
  %mul91 = fmul double %110, %112
  %113 = load double, double* %sum, align 8, !tbaa !13
  %add92 = fadd double %113, %mul91
  store double %add92, double* %sum, align 8, !tbaa !13
  %114 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx93 = getelementptr inbounds double, double* %114, i64 15
  %115 = load double, double* %arrayidx93, align 8, !tbaa !13
  %116 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds double, double* %116, i64 15
  %117 = load double, double* %arrayidx94, align 8, !tbaa !13
  %mul95 = fmul double %115, %117
  %118 = load double, double* %sum, align 8, !tbaa !13
  %sub96 = fsub double %118, %mul95
  store double %sub96, double* %sum, align 8, !tbaa !13
  %119 = load double, double* %sum, align 8, !tbaa !13
  %cmp = fcmp ogt double %119, 3.276700e+04
  br i1 %cmp, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %for.body
  %120 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 32767, i16* %120, align 2, !tbaa !7
  %121 = load i32, i32* %clip, align 4, !tbaa !5
  %inc = add nsw i32 %121, 1
  store i32 %inc, i32* %clip, align 4, !tbaa !5
  br label %if.end.104

if.else.98:                                       ; preds = %for.body
  %122 = load double, double* %sum, align 8, !tbaa !13
  %cmp99 = fcmp olt double %122, -3.276800e+04
  br i1 %cmp99, label %if.then.100, label %if.else.102

if.then.100:                                      ; preds = %if.else.98
  %123 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 -32768, i16* %123, align 2, !tbaa !7
  %124 = load i32, i32* %clip, align 4, !tbaa !5
  %inc101 = add nsw i32 %124, 1
  store i32 %inc101, i32* %clip, align 4, !tbaa !5
  br label %if.end.103

if.else.102:                                      ; preds = %if.else.98
  %125 = load double, double* %sum, align 8, !tbaa !13
  %conv = fptosi double %125 to i16
  %126 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 %conv, i16* %126, align 2, !tbaa !7
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.then.100
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.then.97
  %127 = bitcast double* %sum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  br label %for.inc

for.inc:                                          ; preds = %if.end.104
  %128 = load i32, i32* %j, align 4, !tbaa !5
  %dec105 = add nsw i32 %128, -1
  store i32 %dec105, i32* %j, align 4, !tbaa !5
  %129 = load double*, double** %b0, align 8, !tbaa !1
  %add.ptr106 = getelementptr inbounds double, double* %129, i64 16
  store double* %add.ptr106, double** %b0, align 8, !tbaa !1
  %130 = load double*, double** %window, align 8, !tbaa !1
  %add.ptr107 = getelementptr inbounds double, double* %130, i64 32
  store double* %add.ptr107, double** %window, align 8, !tbaa !1
  %131 = load i16*, i16** %samples, align 8, !tbaa !1
  %add.ptr108 = getelementptr inbounds i16, i16* %131, i64 2
  store i16* %add.ptr108, i16** %samples, align 8, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %132 = bitcast double* %sum109 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %132) #1
  %133 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds double, double* %133, i64 0
  %134 = load double, double* %arrayidx110, align 8, !tbaa !13
  %135 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds double, double* %135, i64 0
  %136 = load double, double* %arrayidx111, align 8, !tbaa !13
  %mul112 = fmul double %134, %136
  store double %mul112, double* %sum109, align 8, !tbaa !13
  %137 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx113 = getelementptr inbounds double, double* %137, i64 2
  %138 = load double, double* %arrayidx113, align 8, !tbaa !13
  %139 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds double, double* %139, i64 2
  %140 = load double, double* %arrayidx114, align 8, !tbaa !13
  %mul115 = fmul double %138, %140
  %141 = load double, double* %sum109, align 8, !tbaa !13
  %add116 = fadd double %141, %mul115
  store double %add116, double* %sum109, align 8, !tbaa !13
  %142 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds double, double* %142, i64 4
  %143 = load double, double* %arrayidx117, align 8, !tbaa !13
  %144 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds double, double* %144, i64 4
  %145 = load double, double* %arrayidx118, align 8, !tbaa !13
  %mul119 = fmul double %143, %145
  %146 = load double, double* %sum109, align 8, !tbaa !13
  %add120 = fadd double %146, %mul119
  store double %add120, double* %sum109, align 8, !tbaa !13
  %147 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds double, double* %147, i64 6
  %148 = load double, double* %arrayidx121, align 8, !tbaa !13
  %149 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds double, double* %149, i64 6
  %150 = load double, double* %arrayidx122, align 8, !tbaa !13
  %mul123 = fmul double %148, %150
  %151 = load double, double* %sum109, align 8, !tbaa !13
  %add124 = fadd double %151, %mul123
  store double %add124, double* %sum109, align 8, !tbaa !13
  %152 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx125 = getelementptr inbounds double, double* %152, i64 8
  %153 = load double, double* %arrayidx125, align 8, !tbaa !13
  %154 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds double, double* %154, i64 8
  %155 = load double, double* %arrayidx126, align 8, !tbaa !13
  %mul127 = fmul double %153, %155
  %156 = load double, double* %sum109, align 8, !tbaa !13
  %add128 = fadd double %156, %mul127
  store double %add128, double* %sum109, align 8, !tbaa !13
  %157 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx129 = getelementptr inbounds double, double* %157, i64 10
  %158 = load double, double* %arrayidx129, align 8, !tbaa !13
  %159 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds double, double* %159, i64 10
  %160 = load double, double* %arrayidx130, align 8, !tbaa !13
  %mul131 = fmul double %158, %160
  %161 = load double, double* %sum109, align 8, !tbaa !13
  %add132 = fadd double %161, %mul131
  store double %add132, double* %sum109, align 8, !tbaa !13
  %162 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx133 = getelementptr inbounds double, double* %162, i64 12
  %163 = load double, double* %arrayidx133, align 8, !tbaa !13
  %164 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds double, double* %164, i64 12
  %165 = load double, double* %arrayidx134, align 8, !tbaa !13
  %mul135 = fmul double %163, %165
  %166 = load double, double* %sum109, align 8, !tbaa !13
  %add136 = fadd double %166, %mul135
  store double %add136, double* %sum109, align 8, !tbaa !13
  %167 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds double, double* %167, i64 14
  %168 = load double, double* %arrayidx137, align 8, !tbaa !13
  %169 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds double, double* %169, i64 14
  %170 = load double, double* %arrayidx138, align 8, !tbaa !13
  %mul139 = fmul double %168, %170
  %171 = load double, double* %sum109, align 8, !tbaa !13
  %add140 = fadd double %171, %mul139
  store double %add140, double* %sum109, align 8, !tbaa !13
  %172 = load double, double* %sum109, align 8, !tbaa !13
  %cmp141 = fcmp ogt double %172, 3.276700e+04
  br i1 %cmp141, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %for.end
  %173 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 32767, i16* %173, align 2, !tbaa !7
  %174 = load i32, i32* %clip, align 4, !tbaa !5
  %inc144 = add nsw i32 %174, 1
  store i32 %inc144, i32* %clip, align 4, !tbaa !5
  br label %if.end.153

if.else.145:                                      ; preds = %for.end
  %175 = load double, double* %sum109, align 8, !tbaa !13
  %cmp146 = fcmp olt double %175, -3.276800e+04
  br i1 %cmp146, label %if.then.148, label %if.else.150

if.then.148:                                      ; preds = %if.else.145
  %176 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 -32768, i16* %176, align 2, !tbaa !7
  %177 = load i32, i32* %clip, align 4, !tbaa !5
  %inc149 = add nsw i32 %177, 1
  store i32 %inc149, i32* %clip, align 4, !tbaa !5
  br label %if.end.152

if.else.150:                                      ; preds = %if.else.145
  %178 = load double, double* %sum109, align 8, !tbaa !13
  %conv151 = fptosi double %178 to i16
  %179 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 %conv151, i16* %179, align 2, !tbaa !7
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.150, %if.then.148
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.143
  %180 = load double*, double** %b0, align 8, !tbaa !1
  %add.ptr154 = getelementptr inbounds double, double* %180, i64 -16
  store double* %add.ptr154, double** %b0, align 8, !tbaa !1
  %181 = load double*, double** %window, align 8, !tbaa !1
  %add.ptr155 = getelementptr inbounds double, double* %181, i64 -32
  store double* %add.ptr155, double** %window, align 8, !tbaa !1
  %182 = load i16*, i16** %samples, align 8, !tbaa !1
  %add.ptr156 = getelementptr inbounds i16, i16* %182, i64 2
  store i16* %add.ptr156, i16** %samples, align 8, !tbaa !1
  %183 = bitcast double* %sum109 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %183) #1
  %184 = load i32, i32* %bo1, align 4, !tbaa !5
  %shl = shl i32 %184, 1
  %185 = load double*, double** %window, align 8, !tbaa !1
  %idx.ext157 = sext i32 %shl to i64
  %add.ptr158 = getelementptr inbounds double, double* %185, i64 %idx.ext157
  store double* %add.ptr158, double** %window, align 8, !tbaa !1
  store i32 15, i32* %j, align 4, !tbaa !5
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.240, %if.end.153
  %186 = load i32, i32* %j, align 4, !tbaa !5
  %tobool160 = icmp ne i32 %186, 0
  br i1 %tobool160, label %for.body.161, label %for.end.245

for.body.161:                                     ; preds = %for.cond.159
  %187 = bitcast double* %sum162 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %187) #1
  %188 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds double, double* %188, i64 -1
  %189 = load double, double* %arrayidx163, align 8, !tbaa !13
  %sub164 = fsub double -0.000000e+00, %189
  %190 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds double, double* %190, i64 0
  %191 = load double, double* %arrayidx165, align 8, !tbaa !13
  %mul166 = fmul double %sub164, %191
  store double %mul166, double* %sum162, align 8, !tbaa !13
  %192 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds double, double* %192, i64 -2
  %193 = load double, double* %arrayidx167, align 8, !tbaa !13
  %194 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds double, double* %194, i64 1
  %195 = load double, double* %arrayidx168, align 8, !tbaa !13
  %mul169 = fmul double %193, %195
  %196 = load double, double* %sum162, align 8, !tbaa !13
  %sub170 = fsub double %196, %mul169
  store double %sub170, double* %sum162, align 8, !tbaa !13
  %197 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds double, double* %197, i64 -3
  %198 = load double, double* %arrayidx171, align 8, !tbaa !13
  %199 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds double, double* %199, i64 2
  %200 = load double, double* %arrayidx172, align 8, !tbaa !13
  %mul173 = fmul double %198, %200
  %201 = load double, double* %sum162, align 8, !tbaa !13
  %sub174 = fsub double %201, %mul173
  store double %sub174, double* %sum162, align 8, !tbaa !13
  %202 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds double, double* %202, i64 -4
  %203 = load double, double* %arrayidx175, align 8, !tbaa !13
  %204 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx176 = getelementptr inbounds double, double* %204, i64 3
  %205 = load double, double* %arrayidx176, align 8, !tbaa !13
  %mul177 = fmul double %203, %205
  %206 = load double, double* %sum162, align 8, !tbaa !13
  %sub178 = fsub double %206, %mul177
  store double %sub178, double* %sum162, align 8, !tbaa !13
  %207 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds double, double* %207, i64 -5
  %208 = load double, double* %arrayidx179, align 8, !tbaa !13
  %209 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx180 = getelementptr inbounds double, double* %209, i64 4
  %210 = load double, double* %arrayidx180, align 8, !tbaa !13
  %mul181 = fmul double %208, %210
  %211 = load double, double* %sum162, align 8, !tbaa !13
  %sub182 = fsub double %211, %mul181
  store double %sub182, double* %sum162, align 8, !tbaa !13
  %212 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds double, double* %212, i64 -6
  %213 = load double, double* %arrayidx183, align 8, !tbaa !13
  %214 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx184 = getelementptr inbounds double, double* %214, i64 5
  %215 = load double, double* %arrayidx184, align 8, !tbaa !13
  %mul185 = fmul double %213, %215
  %216 = load double, double* %sum162, align 8, !tbaa !13
  %sub186 = fsub double %216, %mul185
  store double %sub186, double* %sum162, align 8, !tbaa !13
  %217 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds double, double* %217, i64 -7
  %218 = load double, double* %arrayidx187, align 8, !tbaa !13
  %219 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds double, double* %219, i64 6
  %220 = load double, double* %arrayidx188, align 8, !tbaa !13
  %mul189 = fmul double %218, %220
  %221 = load double, double* %sum162, align 8, !tbaa !13
  %sub190 = fsub double %221, %mul189
  store double %sub190, double* %sum162, align 8, !tbaa !13
  %222 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds double, double* %222, i64 -8
  %223 = load double, double* %arrayidx191, align 8, !tbaa !13
  %224 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds double, double* %224, i64 7
  %225 = load double, double* %arrayidx192, align 8, !tbaa !13
  %mul193 = fmul double %223, %225
  %226 = load double, double* %sum162, align 8, !tbaa !13
  %sub194 = fsub double %226, %mul193
  store double %sub194, double* %sum162, align 8, !tbaa !13
  %227 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds double, double* %227, i64 -9
  %228 = load double, double* %arrayidx195, align 8, !tbaa !13
  %229 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx196 = getelementptr inbounds double, double* %229, i64 8
  %230 = load double, double* %arrayidx196, align 8, !tbaa !13
  %mul197 = fmul double %228, %230
  %231 = load double, double* %sum162, align 8, !tbaa !13
  %sub198 = fsub double %231, %mul197
  store double %sub198, double* %sum162, align 8, !tbaa !13
  %232 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds double, double* %232, i64 -10
  %233 = load double, double* %arrayidx199, align 8, !tbaa !13
  %234 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx200 = getelementptr inbounds double, double* %234, i64 9
  %235 = load double, double* %arrayidx200, align 8, !tbaa !13
  %mul201 = fmul double %233, %235
  %236 = load double, double* %sum162, align 8, !tbaa !13
  %sub202 = fsub double %236, %mul201
  store double %sub202, double* %sum162, align 8, !tbaa !13
  %237 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds double, double* %237, i64 -11
  %238 = load double, double* %arrayidx203, align 8, !tbaa !13
  %239 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx204 = getelementptr inbounds double, double* %239, i64 10
  %240 = load double, double* %arrayidx204, align 8, !tbaa !13
  %mul205 = fmul double %238, %240
  %241 = load double, double* %sum162, align 8, !tbaa !13
  %sub206 = fsub double %241, %mul205
  store double %sub206, double* %sum162, align 8, !tbaa !13
  %242 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds double, double* %242, i64 -12
  %243 = load double, double* %arrayidx207, align 8, !tbaa !13
  %244 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds double, double* %244, i64 11
  %245 = load double, double* %arrayidx208, align 8, !tbaa !13
  %mul209 = fmul double %243, %245
  %246 = load double, double* %sum162, align 8, !tbaa !13
  %sub210 = fsub double %246, %mul209
  store double %sub210, double* %sum162, align 8, !tbaa !13
  %247 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds double, double* %247, i64 -13
  %248 = load double, double* %arrayidx211, align 8, !tbaa !13
  %249 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds double, double* %249, i64 12
  %250 = load double, double* %arrayidx212, align 8, !tbaa !13
  %mul213 = fmul double %248, %250
  %251 = load double, double* %sum162, align 8, !tbaa !13
  %sub214 = fsub double %251, %mul213
  store double %sub214, double* %sum162, align 8, !tbaa !13
  %252 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds double, double* %252, i64 -14
  %253 = load double, double* %arrayidx215, align 8, !tbaa !13
  %254 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx216 = getelementptr inbounds double, double* %254, i64 13
  %255 = load double, double* %arrayidx216, align 8, !tbaa !13
  %mul217 = fmul double %253, %255
  %256 = load double, double* %sum162, align 8, !tbaa !13
  %sub218 = fsub double %256, %mul217
  store double %sub218, double* %sum162, align 8, !tbaa !13
  %257 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds double, double* %257, i64 -15
  %258 = load double, double* %arrayidx219, align 8, !tbaa !13
  %259 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx220 = getelementptr inbounds double, double* %259, i64 14
  %260 = load double, double* %arrayidx220, align 8, !tbaa !13
  %mul221 = fmul double %258, %260
  %261 = load double, double* %sum162, align 8, !tbaa !13
  %sub222 = fsub double %261, %mul221
  store double %sub222, double* %sum162, align 8, !tbaa !13
  %262 = load double*, double** %window, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds double, double* %262, i64 0
  %263 = load double, double* %arrayidx223, align 8, !tbaa !13
  %264 = load double*, double** %b0, align 8, !tbaa !1
  %arrayidx224 = getelementptr inbounds double, double* %264, i64 15
  %265 = load double, double* %arrayidx224, align 8, !tbaa !13
  %mul225 = fmul double %263, %265
  %266 = load double, double* %sum162, align 8, !tbaa !13
  %sub226 = fsub double %266, %mul225
  store double %sub226, double* %sum162, align 8, !tbaa !13
  %267 = load double, double* %sum162, align 8, !tbaa !13
  %cmp227 = fcmp ogt double %267, 3.276700e+04
  br i1 %cmp227, label %if.then.229, label %if.else.231

if.then.229:                                      ; preds = %for.body.161
  %268 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 32767, i16* %268, align 2, !tbaa !7
  %269 = load i32, i32* %clip, align 4, !tbaa !5
  %inc230 = add nsw i32 %269, 1
  store i32 %inc230, i32* %clip, align 4, !tbaa !5
  br label %if.end.239

if.else.231:                                      ; preds = %for.body.161
  %270 = load double, double* %sum162, align 8, !tbaa !13
  %cmp232 = fcmp olt double %270, -3.276800e+04
  br i1 %cmp232, label %if.then.234, label %if.else.236

if.then.234:                                      ; preds = %if.else.231
  %271 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 -32768, i16* %271, align 2, !tbaa !7
  %272 = load i32, i32* %clip, align 4, !tbaa !5
  %inc235 = add nsw i32 %272, 1
  store i32 %inc235, i32* %clip, align 4, !tbaa !5
  br label %if.end.238

if.else.236:                                      ; preds = %if.else.231
  %273 = load double, double* %sum162, align 8, !tbaa !13
  %conv237 = fptosi double %273 to i16
  %274 = load i16*, i16** %samples, align 8, !tbaa !1
  store i16 %conv237, i16* %274, align 2, !tbaa !7
  br label %if.end.238

if.end.238:                                       ; preds = %if.else.236, %if.then.234
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.then.229
  %275 = bitcast double* %sum162 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %275) #1
  br label %for.inc.240

for.inc.240:                                      ; preds = %if.end.239
  %276 = load i32, i32* %j, align 4, !tbaa !5
  %dec241 = add nsw i32 %276, -1
  store i32 %dec241, i32* %j, align 4, !tbaa !5
  %277 = load double*, double** %b0, align 8, !tbaa !1
  %add.ptr242 = getelementptr inbounds double, double* %277, i64 -16
  store double* %add.ptr242, double** %b0, align 8, !tbaa !1
  %278 = load double*, double** %window, align 8, !tbaa !1
  %add.ptr243 = getelementptr inbounds double, double* %278, i64 -32
  store double* %add.ptr243, double** %window, align 8, !tbaa !1
  %279 = load i16*, i16** %samples, align 8, !tbaa !1
  %add.ptr244 = getelementptr inbounds i16, i16* %279, i64 2
  store i16* %add.ptr244, i16** %samples, align 8, !tbaa !1
  br label %for.cond.159

for.end.245:                                      ; preds = %for.cond.159
  %280 = bitcast double** %window to i8*
  call void @llvm.lifetime.end(i64 8, i8* %280) #1
  %281 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %281) #1
  %282 = load i32*, i32** %pnt.addr, align 8, !tbaa !1
  %283 = load i32, i32* %282, align 4, !tbaa !5
  %add246 = add nsw i32 %283, 128
  store i32 %add246, i32* %282, align 4, !tbaa !5
  %284 = load i32, i32* %clip, align 4, !tbaa !5
  %285 = bitcast i32* %bo1 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %285) #1
  %286 = bitcast i32* %clip to i8*
  call void @llvm.lifetime.end(i64 4, i8* %286) #1
  %287 = bitcast [272 x double]** %buf to i8*
  call void @llvm.lifetime.end(i64 8, i8* %287) #1
  %288 = bitcast double** %b0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %288) #1
  %289 = bitcast i16** %samples to i8*
  call void @llvm.lifetime.end(i64 8, i8* %289) #1
  %290 = bitcast i32* %bo to i8*
  call void @llvm.lifetime.end(i64 4, i8* %290) #1
  ret i32 %284
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare void @dct64(double*, double*, double*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !3, i64 0}
!9 = !{!10, !6, i64 31872}
!10 = !{!"mpstr", !2, i64 0, !2, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !11, i64 28, !3, i64 100, !3, i64 4712, !3, i64 23144, !12, i64 23152, !6, i64 23160, !3, i64 23168, !6, i64 31872}
!11 = !{!"frame", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68}
!12 = !{!"long", !3, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !3, i64 0}
