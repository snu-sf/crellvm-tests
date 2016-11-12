; ModuleID = './plug-ins/gimpressionist/plasma.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GRand = type opaque
%struct.ppm = type { i32, i32, i8* }

@random_generator = external global %struct._GRand*, align 8

; Function Attrs: nounwind uwtable
define void @mkgrayplasma(%struct.ppm* %p, float %turb) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %turb.addr = alloca float, align 4
  %y = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store float %turb, float* %turb.addr, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %1 = load float, float* %turb.addr, align 4
  call void @mkplasma_red(%struct.ppm* %0, float %1)
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 0
  %3 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %3, 3
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4
  %mul1 = mul nsw i32 %mul, %5
  store i32 %mul1, i32* %l, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %y, align 4
  %7 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %y, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 2
  %10 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %12 = load i32, i32* %y, align 4
  %add = add nsw i32 %12, 2
  %idxprom2 = sext i32 %add to i64
  %13 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col3 = getelementptr inbounds %struct.ppm, %struct.ppm* %13, i32 0, i32 2
  %14 = load i8*, i8** %col3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 %idxprom2
  store i8 %11, i8* %arrayidx4, align 1
  %15 = load i32, i32* %y, align 4
  %add5 = add nsw i32 %15, 1
  %idxprom6 = sext i32 %add5 to i64
  %16 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col7 = getelementptr inbounds %struct.ppm, %struct.ppm* %16, i32 0, i32 2
  %17 = load i8*, i8** %col7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 %idxprom6
  store i8 %11, i8* %arrayidx8, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %y, align 4
  %add9 = add nsw i32 %18, 3
  store i32 %add9, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mkplasma_red(%struct.ppm* %p, float %turb) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %turb.addr = alloca float, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store float %turb, float* %turb.addr, align 4
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %2 = load i32, i32* %x, align 4
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1 = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 0
  %4 = load i32, i32* %width1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %y, align 4
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 1
  %7 = load i32, i32* %height, align 4
  %cmp3 = icmp slt i32 %5, %7
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %rowstride, align 4
  %mul5 = mul nsw i32 %8, %9
  %10 = load i32, i32* %x, align 4
  %mul6 = mul nsw i32 %10, 3
  %add = add nsw i32 %mul5, %mul6
  %add7 = add nsw i32 %add, 0
  %idxprom = sext i32 %add7 to i64
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 2
  %12 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i32, i32* %y, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %14 = load i32, i32* %x, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %x, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %15 = load i32, i32* %x, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %x, align 4
  %16 = load i32, i32* %y, align 4
  %dec11 = add nsw i32 %16, -1
  store i32 %dec11, i32* %y, align 4
  %17 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %call = call i32 @g_rand_int_range(%struct._GRand* %17, i32 1, i32 256)
  %conv = trunc i32 %call to i8
  %18 = load i32, i32* %rowstride, align 4
  %mul12 = mul nsw i32 0, %18
  %add13 = add nsw i32 %mul12, 0
  %add14 = add nsw i32 %add13, 0
  %idxprom15 = sext i32 %add14 to i64
  %19 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col16 = getelementptr inbounds %struct.ppm, %struct.ppm* %19, i32 0, i32 2
  %20 = load i8*, i8** %col16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 %idxprom15
  store i8 %conv, i8* %arrayidx17, align 1
  %21 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %call18 = call i32 @g_rand_int_range(%struct._GRand* %21, i32 1, i32 256)
  %conv19 = trunc i32 %call18 to i8
  %22 = load i32, i32* %y, align 4
  %23 = load i32, i32* %rowstride, align 4
  %mul20 = mul nsw i32 %22, %23
  %add21 = add nsw i32 %mul20, 0
  %add22 = add nsw i32 %add21, 0
  %idxprom23 = sext i32 %add22 to i64
  %24 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col24 = getelementptr inbounds %struct.ppm, %struct.ppm* %24, i32 0, i32 2
  %25 = load i8*, i8** %col24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %25, i64 %idxprom23
  store i8 %conv19, i8* %arrayidx25, align 1
  %26 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %call26 = call i32 @g_rand_int_range(%struct._GRand* %26, i32 1, i32 256)
  %conv27 = trunc i32 %call26 to i8
  %27 = load i32, i32* %rowstride, align 4
  %mul28 = mul nsw i32 0, %27
  %28 = load i32, i32* %x, align 4
  %mul29 = mul nsw i32 %28, 3
  %add30 = add nsw i32 %mul28, %mul29
  %add31 = add nsw i32 %add30, 0
  %idxprom32 = sext i32 %add31 to i64
  %29 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col33 = getelementptr inbounds %struct.ppm, %struct.ppm* %29, i32 0, i32 2
  %30 = load i8*, i8** %col33, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %30, i64 %idxprom32
  store i8 %conv27, i8* %arrayidx34, align 1
  %31 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %call35 = call i32 @g_rand_int_range(%struct._GRand* %31, i32 1, i32 256)
  %conv36 = trunc i32 %call35 to i8
  %32 = load i32, i32* %y, align 4
  %33 = load i32, i32* %rowstride, align 4
  %mul37 = mul nsw i32 %32, %33
  %34 = load i32, i32* %x, align 4
  %mul38 = mul nsw i32 %34, 3
  %add39 = add nsw i32 %mul37, %mul38
  %add40 = add nsw i32 %add39, 0
  %idxprom41 = sext i32 %add40 to i64
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col42 = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 2
  %36 = load i8*, i8** %col42, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %36, i64 %idxprom41
  store i8 %conv36, i8* %arrayidx43, align 1
  %37 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %38 = load i32, i32* %x, align 4
  %39 = load i32, i32* %y, align 4
  %40 = load float, float* %turb.addr, align 4
  call void @mkplasma_sub(%struct.ppm* %37, i32 0, i32 %38, i32 0, i32 %39, float %40)
  ret void
}

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @mkplasma_sub(%struct.ppm* %p, i32 %x1, i32 %x2, i32 %y1, i32 %y2, float %turb) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %x1.addr = alloca i32, align 4
  %x2.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  %y2.addr = alloca i32, align 4
  %turb.addr = alloca float, align 4
  %rowstride = alloca i32, align 4
  %r = alloca i32, align 4
  %xr = alloca i32, align 4
  %yr = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %x2, i32* %x2.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  store i32 %y2, i32* %y2.addr, align 4
  store float %turb, float* %turb.addr, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %rowstride, align 4
  store i32 0, i32* %r, align 4
  %2 = load i32, i32* %x1.addr, align 4
  %3 = load i32, i32* %x2.addr, align 4
  %sub = sub nsw i32 %2, %3
  %call = call i32 @abs(i32 %sub) #3
  store i32 %call, i32* %xr, align 4
  %4 = load i32, i32* %y1.addr, align 4
  %5 = load i32, i32* %y2.addr, align 4
  %sub1 = sub nsw i32 %4, %5
  %call2 = call i32 @abs(i32 %sub1) #3
  store i32 %call2, i32* %yr, align 4
  %6 = load i32, i32* %xr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %yr, align 4
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.268

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %x1.addr, align 4
  %9 = load i32, i32* %x2.addr, align 4
  %add = add nsw i32 %8, %9
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %nx, align 4
  %10 = load i32, i32* %y1.addr, align 4
  %11 = load i32, i32* %y2.addr, align 4
  %add4 = add nsw i32 %10, %11
  %div5 = sdiv i32 %add4, 2
  store i32 %div5, i32* %ny, align 4
  %12 = load i32, i32* %y1.addr, align 4
  %13 = load i32, i32* %rowstride, align 4
  %mul6 = mul nsw i32 %12, %13
  %14 = load i32, i32* %nx, align 4
  %mul7 = mul nsw i32 %14, 3
  %add8 = add nsw i32 %mul6, %mul7
  %15 = load i32, i32* %r, align 4
  %add9 = add nsw i32 %add8, %15
  %idxprom = sext i32 %add9 to i64
  %16 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %16, i32 0, i32 2
  %17 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 %idxprom
  %18 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %18, 0
  br i1 %tobool, label %if.end.48, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %19 = load i32, i32* %y1.addr, align 4
  %20 = load i32, i32* %rowstride, align 4
  %mul11 = mul nsw i32 %19, %20
  %21 = load i32, i32* %x1.addr, align 4
  %mul12 = mul nsw i32 %21, 3
  %add13 = add nsw i32 %mul11, %mul12
  %22 = load i32, i32* %r, align 4
  %add14 = add nsw i32 %add13, %22
  %idxprom15 = sext i32 %add14 to i64
  %23 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col16 = getelementptr inbounds %struct.ppm, %struct.ppm* %23, i32 0, i32 2
  %24 = load i8*, i8** %col16, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %24, i64 %idxprom15
  %25 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* %y1.addr, align 4
  %27 = load i32, i32* %rowstride, align 4
  %mul18 = mul nsw i32 %26, %27
  %28 = load i32, i32* %x2.addr, align 4
  %mul19 = mul nsw i32 %28, 3
  %add20 = add nsw i32 %mul18, %mul19
  %29 = load i32, i32* %r, align 4
  %add21 = add nsw i32 %add20, %29
  %idxprom22 = sext i32 %add21 to i64
  %30 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col23 = getelementptr inbounds %struct.ppm, %struct.ppm* %30, i32 0, i32 2
  %31 = load i8*, i8** %col23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %31, i64 %idxprom22
  %32 = load i8, i8* %arrayidx24, align 1
  %conv25 = zext i8 %32 to i32
  %add26 = add nsw i32 %conv, %conv25
  %conv27 = sitofp i32 %add26 to double
  %div28 = fdiv double %conv27, 2.000000e+00
  %33 = load float, float* %turb.addr, align 4
  %conv29 = fpext float %33 to double
  %34 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %35 = load i32, i32* %xr, align 4
  %sub30 = sub nsw i32 0, %35
  %conv31 = sitofp i32 %sub30 to double
  %div32 = fdiv double %conv31, 2.000000e+00
  %36 = load i32, i32* %xr, align 4
  %conv33 = sitofp i32 %36 to double
  %div34 = fdiv double %conv33, 2.000000e+00
  %call35 = call double @g_rand_double_range(%struct._GRand* %34, double %div32, double %div34)
  %mul36 = fmul double %conv29, %call35
  %add37 = fadd double %div28, %mul36
  %conv38 = fptosi double %add37 to i32
  %call39 = call i32 @pfix(i32 %conv38)
  %conv40 = trunc i32 %call39 to i8
  %37 = load i32, i32* %y1.addr, align 4
  %38 = load i32, i32* %rowstride, align 4
  %mul41 = mul nsw i32 %37, %38
  %39 = load i32, i32* %nx, align 4
  %mul42 = mul nsw i32 %39, 3
  %add43 = add nsw i32 %mul41, %mul42
  %40 = load i32, i32* %r, align 4
  %add44 = add nsw i32 %add43, %40
  %idxprom45 = sext i32 %add44 to i64
  %41 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col46 = getelementptr inbounds %struct.ppm, %struct.ppm* %41, i32 0, i32 2
  %42 = load i8*, i8** %col46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %42, i64 %idxprom45
  store i8 %conv40, i8* %arrayidx47, align 1
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.10, %if.end
  %43 = load i32, i32* %y2.addr, align 4
  %44 = load i32, i32* %rowstride, align 4
  %mul49 = mul nsw i32 %43, %44
  %45 = load i32, i32* %nx, align 4
  %mul50 = mul nsw i32 %45, 3
  %add51 = add nsw i32 %mul49, %mul50
  %46 = load i32, i32* %r, align 4
  %add52 = add nsw i32 %add51, %46
  %idxprom53 = sext i32 %add52 to i64
  %47 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col54 = getelementptr inbounds %struct.ppm, %struct.ppm* %47, i32 0, i32 2
  %48 = load i8*, i8** %col54, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %48, i64 %idxprom53
  %49 = load i8, i8* %arrayidx55, align 1
  %tobool56 = icmp ne i8 %49, 0
  br i1 %tobool56, label %if.end.96, label %if.then.57

if.then.57:                                       ; preds = %if.end.48
  %50 = load i32, i32* %y2.addr, align 4
  %51 = load i32, i32* %rowstride, align 4
  %mul58 = mul nsw i32 %50, %51
  %52 = load i32, i32* %x1.addr, align 4
  %mul59 = mul nsw i32 %52, 3
  %add60 = add nsw i32 %mul58, %mul59
  %53 = load i32, i32* %r, align 4
  %add61 = add nsw i32 %add60, %53
  %idxprom62 = sext i32 %add61 to i64
  %54 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col63 = getelementptr inbounds %struct.ppm, %struct.ppm* %54, i32 0, i32 2
  %55 = load i8*, i8** %col63, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %55, i64 %idxprom62
  %56 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %56 to i32
  %57 = load i32, i32* %y2.addr, align 4
  %58 = load i32, i32* %rowstride, align 4
  %mul66 = mul nsw i32 %57, %58
  %59 = load i32, i32* %x2.addr, align 4
  %mul67 = mul nsw i32 %59, 3
  %add68 = add nsw i32 %mul66, %mul67
  %60 = load i32, i32* %r, align 4
  %add69 = add nsw i32 %add68, %60
  %idxprom70 = sext i32 %add69 to i64
  %61 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col71 = getelementptr inbounds %struct.ppm, %struct.ppm* %61, i32 0, i32 2
  %62 = load i8*, i8** %col71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %62, i64 %idxprom70
  %63 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %63 to i32
  %add74 = add nsw i32 %conv65, %conv73
  %conv75 = sitofp i32 %add74 to double
  %div76 = fdiv double %conv75, 2.000000e+00
  %64 = load float, float* %turb.addr, align 4
  %conv77 = fpext float %64 to double
  %65 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %66 = load i32, i32* %xr, align 4
  %sub78 = sub nsw i32 0, %66
  %conv79 = sitofp i32 %sub78 to double
  %div80 = fdiv double %conv79, 2.000000e+00
  %67 = load i32, i32* %xr, align 4
  %conv81 = sitofp i32 %67 to double
  %div82 = fdiv double %conv81, 2.000000e+00
  %call83 = call double @g_rand_double_range(%struct._GRand* %65, double %div80, double %div82)
  %mul84 = fmul double %conv77, %call83
  %add85 = fadd double %div76, %mul84
  %conv86 = fptosi double %add85 to i32
  %call87 = call i32 @pfix(i32 %conv86)
  %conv88 = trunc i32 %call87 to i8
  %68 = load i32, i32* %y2.addr, align 4
  %69 = load i32, i32* %rowstride, align 4
  %mul89 = mul nsw i32 %68, %69
  %70 = load i32, i32* %nx, align 4
  %mul90 = mul nsw i32 %70, 3
  %add91 = add nsw i32 %mul89, %mul90
  %71 = load i32, i32* %r, align 4
  %add92 = add nsw i32 %add91, %71
  %idxprom93 = sext i32 %add92 to i64
  %72 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col94 = getelementptr inbounds %struct.ppm, %struct.ppm* %72, i32 0, i32 2
  %73 = load i8*, i8** %col94, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %73, i64 %idxprom93
  store i8 %conv88, i8* %arrayidx95, align 1
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.57, %if.end.48
  %74 = load i32, i32* %ny, align 4
  %75 = load i32, i32* %rowstride, align 4
  %mul97 = mul nsw i32 %74, %75
  %76 = load i32, i32* %x1.addr, align 4
  %mul98 = mul nsw i32 %76, 3
  %add99 = add nsw i32 %mul97, %mul98
  %77 = load i32, i32* %r, align 4
  %add100 = add nsw i32 %add99, %77
  %idxprom101 = sext i32 %add100 to i64
  %78 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col102 = getelementptr inbounds %struct.ppm, %struct.ppm* %78, i32 0, i32 2
  %79 = load i8*, i8** %col102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %79, i64 %idxprom101
  %80 = load i8, i8* %arrayidx103, align 1
  %tobool104 = icmp ne i8 %80, 0
  br i1 %tobool104, label %if.end.144, label %if.then.105

if.then.105:                                      ; preds = %if.end.96
  %81 = load i32, i32* %y1.addr, align 4
  %82 = load i32, i32* %rowstride, align 4
  %mul106 = mul nsw i32 %81, %82
  %83 = load i32, i32* %x1.addr, align 4
  %mul107 = mul nsw i32 %83, 3
  %add108 = add nsw i32 %mul106, %mul107
  %84 = load i32, i32* %r, align 4
  %add109 = add nsw i32 %add108, %84
  %idxprom110 = sext i32 %add109 to i64
  %85 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col111 = getelementptr inbounds %struct.ppm, %struct.ppm* %85, i32 0, i32 2
  %86 = load i8*, i8** %col111, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %86, i64 %idxprom110
  %87 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %87 to i32
  %88 = load i32, i32* %y2.addr, align 4
  %89 = load i32, i32* %rowstride, align 4
  %mul114 = mul nsw i32 %88, %89
  %90 = load i32, i32* %x1.addr, align 4
  %mul115 = mul nsw i32 %90, 3
  %add116 = add nsw i32 %mul114, %mul115
  %91 = load i32, i32* %r, align 4
  %add117 = add nsw i32 %add116, %91
  %idxprom118 = sext i32 %add117 to i64
  %92 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col119 = getelementptr inbounds %struct.ppm, %struct.ppm* %92, i32 0, i32 2
  %93 = load i8*, i8** %col119, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %93, i64 %idxprom118
  %94 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %94 to i32
  %add122 = add nsw i32 %conv113, %conv121
  %conv123 = sitofp i32 %add122 to double
  %div124 = fdiv double %conv123, 2.000000e+00
  %95 = load float, float* %turb.addr, align 4
  %conv125 = fpext float %95 to double
  %96 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %97 = load i32, i32* %yr, align 4
  %sub126 = sub nsw i32 0, %97
  %conv127 = sitofp i32 %sub126 to double
  %div128 = fdiv double %conv127, 2.000000e+00
  %98 = load i32, i32* %yr, align 4
  %conv129 = sitofp i32 %98 to double
  %div130 = fdiv double %conv129, 2.000000e+00
  %call131 = call double @g_rand_double_range(%struct._GRand* %96, double %div128, double %div130)
  %mul132 = fmul double %conv125, %call131
  %add133 = fadd double %div124, %mul132
  %conv134 = fptosi double %add133 to i32
  %call135 = call i32 @pfix(i32 %conv134)
  %conv136 = trunc i32 %call135 to i8
  %99 = load i32, i32* %ny, align 4
  %100 = load i32, i32* %rowstride, align 4
  %mul137 = mul nsw i32 %99, %100
  %101 = load i32, i32* %x1.addr, align 4
  %mul138 = mul nsw i32 %101, 3
  %add139 = add nsw i32 %mul137, %mul138
  %102 = load i32, i32* %r, align 4
  %add140 = add nsw i32 %add139, %102
  %idxprom141 = sext i32 %add140 to i64
  %103 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col142 = getelementptr inbounds %struct.ppm, %struct.ppm* %103, i32 0, i32 2
  %104 = load i8*, i8** %col142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %104, i64 %idxprom141
  store i8 %conv136, i8* %arrayidx143, align 1
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.105, %if.end.96
  %105 = load i32, i32* %ny, align 4
  %106 = load i32, i32* %rowstride, align 4
  %mul145 = mul nsw i32 %105, %106
  %107 = load i32, i32* %x2.addr, align 4
  %mul146 = mul nsw i32 %107, 3
  %add147 = add nsw i32 %mul145, %mul146
  %108 = load i32, i32* %r, align 4
  %add148 = add nsw i32 %add147, %108
  %idxprom149 = sext i32 %add148 to i64
  %109 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col150 = getelementptr inbounds %struct.ppm, %struct.ppm* %109, i32 0, i32 2
  %110 = load i8*, i8** %col150, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %110, i64 %idxprom149
  %111 = load i8, i8* %arrayidx151, align 1
  %tobool152 = icmp ne i8 %111, 0
  br i1 %tobool152, label %if.end.192, label %if.then.153

if.then.153:                                      ; preds = %if.end.144
  %112 = load i32, i32* %y1.addr, align 4
  %113 = load i32, i32* %rowstride, align 4
  %mul154 = mul nsw i32 %112, %113
  %114 = load i32, i32* %x2.addr, align 4
  %mul155 = mul nsw i32 %114, 3
  %add156 = add nsw i32 %mul154, %mul155
  %115 = load i32, i32* %r, align 4
  %add157 = add nsw i32 %add156, %115
  %idxprom158 = sext i32 %add157 to i64
  %116 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col159 = getelementptr inbounds %struct.ppm, %struct.ppm* %116, i32 0, i32 2
  %117 = load i8*, i8** %col159, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %117, i64 %idxprom158
  %118 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %118 to i32
  %119 = load i32, i32* %y2.addr, align 4
  %120 = load i32, i32* %rowstride, align 4
  %mul162 = mul nsw i32 %119, %120
  %121 = load i32, i32* %x2.addr, align 4
  %mul163 = mul nsw i32 %121, 3
  %add164 = add nsw i32 %mul162, %mul163
  %122 = load i32, i32* %r, align 4
  %add165 = add nsw i32 %add164, %122
  %idxprom166 = sext i32 %add165 to i64
  %123 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col167 = getelementptr inbounds %struct.ppm, %struct.ppm* %123, i32 0, i32 2
  %124 = load i8*, i8** %col167, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %124, i64 %idxprom166
  %125 = load i8, i8* %arrayidx168, align 1
  %conv169 = zext i8 %125 to i32
  %add170 = add nsw i32 %conv161, %conv169
  %conv171 = sitofp i32 %add170 to double
  %div172 = fdiv double %conv171, 2.000000e+00
  %126 = load float, float* %turb.addr, align 4
  %conv173 = fpext float %126 to double
  %127 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %128 = load i32, i32* %yr, align 4
  %sub174 = sub nsw i32 0, %128
  %conv175 = sitofp i32 %sub174 to double
  %div176 = fdiv double %conv175, 2.000000e+00
  %129 = load i32, i32* %yr, align 4
  %conv177 = sitofp i32 %129 to double
  %div178 = fdiv double %conv177, 2.000000e+00
  %call179 = call double @g_rand_double_range(%struct._GRand* %127, double %div176, double %div178)
  %mul180 = fmul double %conv173, %call179
  %add181 = fadd double %div172, %mul180
  %conv182 = fptosi double %add181 to i32
  %call183 = call i32 @pfix(i32 %conv182)
  %conv184 = trunc i32 %call183 to i8
  %130 = load i32, i32* %ny, align 4
  %131 = load i32, i32* %rowstride, align 4
  %mul185 = mul nsw i32 %130, %131
  %132 = load i32, i32* %x2.addr, align 4
  %mul186 = mul nsw i32 %132, 3
  %add187 = add nsw i32 %mul185, %mul186
  %133 = load i32, i32* %r, align 4
  %add188 = add nsw i32 %add187, %133
  %idxprom189 = sext i32 %add188 to i64
  %134 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col190 = getelementptr inbounds %struct.ppm, %struct.ppm* %134, i32 0, i32 2
  %135 = load i8*, i8** %col190, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %135, i64 %idxprom189
  store i8 %conv184, i8* %arrayidx191, align 1
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.153, %if.end.144
  %136 = load i32, i32* %ny, align 4
  %137 = load i32, i32* %rowstride, align 4
  %mul193 = mul nsw i32 %136, %137
  %138 = load i32, i32* %nx, align 4
  %mul194 = mul nsw i32 %138, 3
  %add195 = add nsw i32 %mul193, %mul194
  %139 = load i32, i32* %r, align 4
  %add196 = add nsw i32 %add195, %139
  %idxprom197 = sext i32 %add196 to i64
  %140 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col198 = getelementptr inbounds %struct.ppm, %struct.ppm* %140, i32 0, i32 2
  %141 = load i8*, i8** %col198, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %141, i64 %idxprom197
  %142 = load i8, i8* %arrayidx199, align 1
  %tobool200 = icmp ne i8 %142, 0
  br i1 %tobool200, label %if.end.260, label %if.then.201

if.then.201:                                      ; preds = %if.end.192
  %143 = load i32, i32* %y1.addr, align 4
  %144 = load i32, i32* %rowstride, align 4
  %mul202 = mul nsw i32 %143, %144
  %145 = load i32, i32* %x1.addr, align 4
  %mul203 = mul nsw i32 %145, 3
  %add204 = add nsw i32 %mul202, %mul203
  %146 = load i32, i32* %r, align 4
  %add205 = add nsw i32 %add204, %146
  %idxprom206 = sext i32 %add205 to i64
  %147 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col207 = getelementptr inbounds %struct.ppm, %struct.ppm* %147, i32 0, i32 2
  %148 = load i8*, i8** %col207, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %148, i64 %idxprom206
  %149 = load i8, i8* %arrayidx208, align 1
  %conv209 = zext i8 %149 to i32
  %150 = load i32, i32* %y1.addr, align 4
  %151 = load i32, i32* %rowstride, align 4
  %mul210 = mul nsw i32 %150, %151
  %152 = load i32, i32* %x2.addr, align 4
  %mul211 = mul nsw i32 %152, 3
  %add212 = add nsw i32 %mul210, %mul211
  %153 = load i32, i32* %r, align 4
  %add213 = add nsw i32 %add212, %153
  %idxprom214 = sext i32 %add213 to i64
  %154 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col215 = getelementptr inbounds %struct.ppm, %struct.ppm* %154, i32 0, i32 2
  %155 = load i8*, i8** %col215, align 8
  %arrayidx216 = getelementptr inbounds i8, i8* %155, i64 %idxprom214
  %156 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %156 to i32
  %add218 = add nsw i32 %conv209, %conv217
  %157 = load i32, i32* %y2.addr, align 4
  %158 = load i32, i32* %rowstride, align 4
  %mul219 = mul nsw i32 %157, %158
  %159 = load i32, i32* %x1.addr, align 4
  %mul220 = mul nsw i32 %159, 3
  %add221 = add nsw i32 %mul219, %mul220
  %160 = load i32, i32* %r, align 4
  %add222 = add nsw i32 %add221, %160
  %idxprom223 = sext i32 %add222 to i64
  %161 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col224 = getelementptr inbounds %struct.ppm, %struct.ppm* %161, i32 0, i32 2
  %162 = load i8*, i8** %col224, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %162, i64 %idxprom223
  %163 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %163 to i32
  %add227 = add nsw i32 %add218, %conv226
  %164 = load i32, i32* %y2.addr, align 4
  %165 = load i32, i32* %rowstride, align 4
  %mul228 = mul nsw i32 %164, %165
  %166 = load i32, i32* %x2.addr, align 4
  %mul229 = mul nsw i32 %166, 3
  %add230 = add nsw i32 %mul228, %mul229
  %167 = load i32, i32* %r, align 4
  %add231 = add nsw i32 %add230, %167
  %idxprom232 = sext i32 %add231 to i64
  %168 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col233 = getelementptr inbounds %struct.ppm, %struct.ppm* %168, i32 0, i32 2
  %169 = load i8*, i8** %col233, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %169, i64 %idxprom232
  %170 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %170 to i32
  %add236 = add nsw i32 %add227, %conv235
  %conv237 = sitofp i32 %add236 to double
  %div238 = fdiv double %conv237, 4.000000e+00
  %171 = load float, float* %turb.addr, align 4
  %conv239 = fpext float %171 to double
  %172 = load %struct._GRand*, %struct._GRand** @random_generator, align 8
  %173 = load i32, i32* %xr, align 4
  %174 = load i32, i32* %yr, align 4
  %add240 = add nsw i32 %173, %174
  %sub241 = sub nsw i32 0, %add240
  %conv242 = sitofp i32 %sub241 to double
  %div243 = fdiv double %conv242, 4.000000e+00
  %175 = load i32, i32* %xr, align 4
  %176 = load i32, i32* %yr, align 4
  %add244 = add nsw i32 %175, %176
  %conv245 = sitofp i32 %add244 to double
  %div246 = fdiv double %conv245, 4.000000e+00
  %call247 = call double @g_rand_double_range(%struct._GRand* %172, double %div243, double %div246)
  %mul248 = fmul double %conv239, %call247
  %add249 = fadd double %div238, %mul248
  %conv250 = fptosi double %add249 to i32
  %call251 = call i32 @pfix(i32 %conv250)
  %conv252 = trunc i32 %call251 to i8
  %177 = load i32, i32* %ny, align 4
  %178 = load i32, i32* %rowstride, align 4
  %mul253 = mul nsw i32 %177, %178
  %179 = load i32, i32* %nx, align 4
  %mul254 = mul nsw i32 %179, 3
  %add255 = add nsw i32 %mul253, %mul254
  %180 = load i32, i32* %r, align 4
  %add256 = add nsw i32 %add255, %180
  %idxprom257 = sext i32 %add256 to i64
  %181 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col258 = getelementptr inbounds %struct.ppm, %struct.ppm* %181, i32 0, i32 2
  %182 = load i8*, i8** %col258, align 8
  %arrayidx259 = getelementptr inbounds i8, i8* %182, i64 %idxprom257
  store i8 %conv252, i8* %arrayidx259, align 1
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.201, %if.end.192
  %183 = load i32, i32* %xr, align 4
  %cmp261 = icmp sgt i32 %183, 1
  br i1 %cmp261, label %if.then.263, label %if.end.264

if.then.263:                                      ; preds = %if.end.260
  %184 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %185 = load i32, i32* %x1.addr, align 4
  %186 = load i32, i32* %nx, align 4
  %187 = load i32, i32* %y1.addr, align 4
  %188 = load i32, i32* %ny, align 4
  %189 = load float, float* %turb.addr, align 4
  call void @mkplasma_sub(%struct.ppm* %184, i32 %185, i32 %186, i32 %187, i32 %188, float %189)
  %190 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %191 = load i32, i32* %nx, align 4
  %192 = load i32, i32* %x2.addr, align 4
  %193 = load i32, i32* %y1.addr, align 4
  %194 = load i32, i32* %ny, align 4
  %195 = load float, float* %turb.addr, align 4
  call void @mkplasma_sub(%struct.ppm* %190, i32 %191, i32 %192, i32 %193, i32 %194, float %195)
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.263, %if.end.260
  %196 = load i32, i32* %yr, align 4
  %cmp265 = icmp sgt i32 %196, 1
  br i1 %cmp265, label %if.then.267, label %if.end.268

if.then.267:                                      ; preds = %if.end.264
  %197 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %198 = load i32, i32* %x1.addr, align 4
  %199 = load i32, i32* %nx, align 4
  %200 = load i32, i32* %ny, align 4
  %201 = load i32, i32* %y2.addr, align 4
  %202 = load float, float* %turb.addr, align 4
  call void @mkplasma_sub(%struct.ppm* %197, i32 %198, i32 %199, i32 %200, i32 %201, float %202)
  %203 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %204 = load i32, i32* %nx, align 4
  %205 = load i32, i32* %x2.addr, align 4
  %206 = load i32, i32* %ny, align 4
  %207 = load i32, i32* %y2.addr, align 4
  %208 = load float, float* %turb.addr, align 4
  call void @mkplasma_sub(%struct.ppm* %203, i32 %204, i32 %205, i32 %206, i32 %207, float %208)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then, %if.then.267, %if.end.264
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @pfix(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sgt i32 %1, 255
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 255, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i32, i32* %n.addr, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare double @g_rand_double_range(%struct._GRand*, double, double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
