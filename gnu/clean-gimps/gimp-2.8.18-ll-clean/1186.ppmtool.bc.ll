; ModuleID = './plug-ins/gimpressionist/ppmtool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppm = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BrushHeader = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c".gbr\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ppm_load: Unable to open file \22%s\22!\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"ppm_load: File \22%s\22 not PPM/PGM? (line=\22%s\22)%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"ppm_load: File \22%s\22 not valid PPM/PGM? (line=\22%s\22)%c\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to save PPM file '%s': %s\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"P6\0A%d %d\0A255\0A\00", align 1
@edgepad.testcol = private unnamed_addr constant [3 x i8] c"\00\FF\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"load_gimp_brush: Unable to open file \22%s\22!\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ppm_kill(%struct.ppm* %p) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 2
  %1 = load i8*, i8** %col, align 8
  call void @g_free(i8* %1)
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col1 = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 2
  store i8* null, i8** %col1, align 8
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 0
  store i32 0, i32* %width, align 4
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i32 0, i32 1
  store i32 0, i32* %height, align 4
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @ppm_new(%struct.ppm* %p, i32 %xs, i32 %ys) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %xs.addr = alloca i32, align 4
  %ys.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %bgcol = alloca [3 x i8], align 1
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %xs, i32* %xs.addr, align 4
  store i32 %ys, i32* %ys.addr, align 4
  %0 = bitcast [3 x i8]* %bgcol to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 3, i32 1, i1 false)
  %1 = load i32, i32* %xs.addr, align 4
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %xs.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ys.addr, align 4
  %cmp1 = icmp slt i32 %2, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %ys.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %xs.addr, align 4
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i32 0, i32 0
  store i32 %3, i32* %width, align 4
  %5 = load i32, i32* %ys.addr, align 4
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 1
  store i32 %5, i32* %height, align 4
  %7 = load i32, i32* %xs.addr, align 4
  %mul = mul nsw i32 %7, 3
  %8 = load i32, i32* %ys.addr, align 4
  %mul4 = mul nsw i32 %mul, %8
  %conv = sext i32 %mul4 to i64
  %call = call noalias i8* @g_malloc(i64 %conv)
  %9 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 2
  store i8* %call, i8** %col, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %xs.addr, align 4
  %mul5 = mul nsw i32 %11, 3
  %12 = load i32, i32* %ys.addr, align 4
  %mul6 = mul nsw i32 %mul5, %12
  %cmp7 = icmp slt i32 %10, %mul6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* %bgcol, i32 0, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %14 = load i32, i32* %x, align 4
  %add = add nsw i32 %14, 0
  %idxprom = sext i32 %add to i64
  %15 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col9 = getelementptr inbounds %struct.ppm, %struct.ppm* %15, i32 0, i32 2
  %16 = load i8*, i8** %col9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %16, i64 %idxprom
  store i8 %13, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [3 x i8], [3 x i8]* %bgcol, i32 0, i64 1
  %17 = load i8, i8* %arrayidx11, align 1
  %18 = load i32, i32* %x, align 4
  %add12 = add nsw i32 %18, 1
  %idxprom13 = sext i32 %add12 to i64
  %19 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col14 = getelementptr inbounds %struct.ppm, %struct.ppm* %19, i32 0, i32 2
  %20 = load i8*, i8** %col14, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %20, i64 %idxprom13
  store i8 %17, i8* %arrayidx15, align 1
  %arrayidx16 = getelementptr inbounds [3 x i8], [3 x i8]* %bgcol, i32 0, i64 2
  %21 = load i8, i8* %arrayidx16, align 1
  %22 = load i32, i32* %x, align 4
  %add17 = add nsw i32 %22, 2
  %idxprom18 = sext i32 %add17 to i64
  %23 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col19 = getelementptr inbounds %struct.ppm, %struct.ppm* %23, i32 0, i32 2
  %24 = load i8*, i8** %col19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 %idxprom18
  store i8 %21, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %x, align 4
  %add21 = add nsw i32 %25, 3
  store i32 %add21, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare noalias i8* @g_malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @get_rgb(%struct.ppm* %s, float %xo, float %yo, i8* %d) #0 {
entry:
  %s.addr = alloca %struct.ppm*, align 8
  %xo.addr = alloca float, align 4
  %yo.addr = alloca float, align 4
  %d.addr = alloca i8*, align 8
  %ix = alloca float, align 4
  %iy = alloca float, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x1y1 = alloca float, align 4
  %x2y1 = alloca float, align 4
  %x1y2 = alloca float, align 4
  %x2y2 = alloca float, align 4
  %r = alloca float, align 4
  %g = alloca float, align 4
  %b = alloca float, align 4
  %bail = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store %struct.ppm* %s, %struct.ppm** %s.addr, align 8
  store float %xo, float* %xo.addr, align 4
  store float %yo, float* %yo.addr, align 4
  store i8* %d, i8** %d.addr, align 8
  store i32 0, i32* %bail, align 4
  %0 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %rowstride, align 4
  %2 = load float, float* %xo.addr, align 4
  %conv = fpext float %2 to double
  %cmp = fcmp olt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %bail, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %3 = load float, float* %xo.addr, align 4
  %4 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %width2 = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i32 0, i32 0
  %5 = load i32, i32* %width2, align 4
  %sub = sub nsw i32 %5, 1
  %conv3 = sitofp i32 %sub to float
  %cmp4 = fcmp oge float %3, %conv3
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %6 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %width7 = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 0
  %7 = load i32, i32* %width7, align 4
  %sub8 = sub nsw i32 %7, 1
  %conv9 = sitofp i32 %sub8 to float
  store float %conv9, float* %xo.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %8 = load float, float* %yo.addr, align 4
  %conv11 = fpext float %8 to double
  %cmp12 = fcmp olt double %conv11, 0.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.end.10
  store i32 1, i32* %bail, align 4
  br label %if.end.25

if.else.15:                                       ; preds = %if.end.10
  %9 = load float, float* %yo.addr, align 4
  %10 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %10, i32 0, i32 1
  %11 = load i32, i32* %height, align 4
  %sub16 = sub nsw i32 %11, 1
  %conv17 = sitofp i32 %sub16 to float
  %cmp18 = fcmp oge float %9, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.else.15
  %12 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %height21 = getelementptr inbounds %struct.ppm, %struct.ppm* %12, i32 0, i32 1
  %13 = load i32, i32* %height21, align 4
  %sub22 = sub nsw i32 %13, 1
  %conv23 = sitofp i32 %sub22 to float
  store float %conv23, float* %yo.addr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.20, %if.else.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then.14
  %14 = load i32, i32* %bail, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.25
  %15 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 2
  store i8 0, i8* %arrayidx, align 1
  %16 = load i8*, i8** %d.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %arrayidx27, align 1
  %17 = load i8*, i8** %d.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %arrayidx28, align 1
  br label %return

if.end.29:                                        ; preds = %if.end.25
  %18 = load float, float* %xo.addr, align 4
  %conv30 = fptosi float %18 to i32
  %conv31 = sitofp i32 %conv30 to float
  store float %conv31, float* %ix, align 4
  %19 = load float, float* %yo.addr, align 4
  %conv32 = fptosi float %19 to i32
  %conv33 = sitofp i32 %conv32 to float
  store float %conv33, float* %iy, align 4
  %20 = load float, float* %ix, align 4
  %conv34 = fptosi float %20 to i32
  store i32 %conv34, i32* %x1, align 4
  %21 = load float, float* %ix, align 4
  %add = fadd float %21, 1.000000e+00
  %conv35 = fptosi float %add to i32
  store i32 %conv35, i32* %x2, align 4
  %22 = load float, float* %iy, align 4
  %conv36 = fptosi float %22 to i32
  store i32 %conv36, i32* %y1, align 4
  %23 = load float, float* %iy, align 4
  %add37 = fadd float %23, 1.000000e+00
  %conv38 = fptosi float %add37 to i32
  store i32 %conv38, i32* %y2, align 4
  %24 = load float, float* %xo.addr, align 4
  %conv39 = fpext float %24 to double
  %sub40 = fsub double 1.000000e+00, %conv39
  %25 = load float, float* %ix, align 4
  %conv41 = fpext float %25 to double
  %add42 = fadd double %sub40, %conv41
  %26 = load float, float* %yo.addr, align 4
  %conv43 = fpext float %26 to double
  %sub44 = fsub double 1.000000e+00, %conv43
  %27 = load float, float* %iy, align 4
  %conv45 = fpext float %27 to double
  %add46 = fadd double %sub44, %conv45
  %mul47 = fmul double %add42, %add46
  %conv48 = fptrunc double %mul47 to float
  store float %conv48, float* %x1y1, align 4
  %28 = load float, float* %xo.addr, align 4
  %29 = load float, float* %ix, align 4
  %sub49 = fsub float %28, %29
  %conv50 = fpext float %sub49 to double
  %30 = load float, float* %yo.addr, align 4
  %conv51 = fpext float %30 to double
  %sub52 = fsub double 1.000000e+00, %conv51
  %31 = load float, float* %iy, align 4
  %conv53 = fpext float %31 to double
  %add54 = fadd double %sub52, %conv53
  %mul55 = fmul double %conv50, %add54
  %conv56 = fptrunc double %mul55 to float
  store float %conv56, float* %x2y1, align 4
  %32 = load float, float* %xo.addr, align 4
  %conv57 = fpext float %32 to double
  %sub58 = fsub double 1.000000e+00, %conv57
  %33 = load float, float* %ix, align 4
  %conv59 = fpext float %33 to double
  %add60 = fadd double %sub58, %conv59
  %34 = load float, float* %yo.addr, align 4
  %35 = load float, float* %iy, align 4
  %sub61 = fsub float %34, %35
  %conv62 = fpext float %sub61 to double
  %mul63 = fmul double %add60, %conv62
  %conv64 = fptrunc double %mul63 to float
  store float %conv64, float* %x1y2, align 4
  %36 = load float, float* %xo.addr, align 4
  %37 = load float, float* %ix, align 4
  %sub65 = fsub float %36, %37
  %38 = load float, float* %yo.addr, align 4
  %39 = load float, float* %iy, align 4
  %sub66 = fsub float %38, %39
  %mul67 = fmul float %sub65, %sub66
  store float %mul67, float* %x2y2, align 4
  %40 = load i32, i32* %y1, align 4
  %41 = load i32, i32* %rowstride, align 4
  %mul68 = mul nsw i32 %40, %41
  %42 = load i32, i32* %x1, align 4
  %mul69 = mul nsw i32 %42, 3
  %add70 = add nsw i32 %mul68, %mul69
  %add71 = add nsw i32 %add70, 0
  %idxprom = sext i32 %add71 to i64
  %43 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %43, i32 0, i32 2
  %44 = load i8*, i8** %col, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %44, i64 %idxprom
  %45 = load i8, i8* %arrayidx72, align 1
  %conv73 = zext i8 %45 to i32
  %conv74 = sitofp i32 %conv73 to float
  %46 = load float, float* %x1y1, align 4
  %mul75 = fmul float %conv74, %46
  store float %mul75, float* %r, align 4
  %47 = load i32, i32* %y1, align 4
  %48 = load i32, i32* %rowstride, align 4
  %mul76 = mul nsw i32 %47, %48
  %49 = load i32, i32* %x1, align 4
  %mul77 = mul nsw i32 %49, 3
  %add78 = add nsw i32 %mul76, %mul77
  %add79 = add nsw i32 %add78, 1
  %idxprom80 = sext i32 %add79 to i64
  %50 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col81 = getelementptr inbounds %struct.ppm, %struct.ppm* %50, i32 0, i32 2
  %51 = load i8*, i8** %col81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %51, i64 %idxprom80
  %52 = load i8, i8* %arrayidx82, align 1
  %conv83 = zext i8 %52 to i32
  %conv84 = sitofp i32 %conv83 to float
  %53 = load float, float* %x1y1, align 4
  %mul85 = fmul float %conv84, %53
  store float %mul85, float* %g, align 4
  %54 = load i32, i32* %y1, align 4
  %55 = load i32, i32* %rowstride, align 4
  %mul86 = mul nsw i32 %54, %55
  %56 = load i32, i32* %x1, align 4
  %mul87 = mul nsw i32 %56, 3
  %add88 = add nsw i32 %mul86, %mul87
  %add89 = add nsw i32 %add88, 2
  %idxprom90 = sext i32 %add89 to i64
  %57 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col91 = getelementptr inbounds %struct.ppm, %struct.ppm* %57, i32 0, i32 2
  %58 = load i8*, i8** %col91, align 8
  %arrayidx92 = getelementptr inbounds i8, i8* %58, i64 %idxprom90
  %59 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %59 to i32
  %conv94 = sitofp i32 %conv93 to float
  %60 = load float, float* %x1y1, align 4
  %mul95 = fmul float %conv94, %60
  store float %mul95, float* %b, align 4
  %61 = load float, float* %x2y1, align 4
  %conv96 = fpext float %61 to double
  %cmp97 = fcmp ogt double %conv96, 0.000000e+00
  br i1 %cmp97, label %if.then.99, label %if.end.111

if.then.99:                                       ; preds = %if.end.29
  %62 = load i32, i32* %y1, align 4
  %63 = load i32, i32* %rowstride, align 4
  %mul100 = mul nsw i32 %62, %63
  %64 = load i32, i32* %x2, align 4
  %mul101 = mul nsw i32 %64, 3
  %add102 = add nsw i32 %mul100, %mul101
  %add103 = add nsw i32 %add102, 0
  %idxprom104 = sext i32 %add103 to i64
  %65 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col105 = getelementptr inbounds %struct.ppm, %struct.ppm* %65, i32 0, i32 2
  %66 = load i8*, i8** %col105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %66, i64 %idxprom104
  %67 = load i8, i8* %arrayidx106, align 1
  %conv107 = zext i8 %67 to i32
  %conv108 = sitofp i32 %conv107 to float
  %68 = load float, float* %x2y1, align 4
  %mul109 = fmul float %conv108, %68
  %69 = load float, float* %r, align 4
  %add110 = fadd float %69, %mul109
  store float %add110, float* %r, align 4
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.99, %if.end.29
  %70 = load float, float* %x2y1, align 4
  %conv112 = fpext float %70 to double
  %cmp113 = fcmp ogt double %conv112, 0.000000e+00
  br i1 %cmp113, label %if.then.115, label %if.end.127

if.then.115:                                      ; preds = %if.end.111
  %71 = load i32, i32* %y1, align 4
  %72 = load i32, i32* %rowstride, align 4
  %mul116 = mul nsw i32 %71, %72
  %73 = load i32, i32* %x2, align 4
  %mul117 = mul nsw i32 %73, 3
  %add118 = add nsw i32 %mul116, %mul117
  %add119 = add nsw i32 %add118, 1
  %idxprom120 = sext i32 %add119 to i64
  %74 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col121 = getelementptr inbounds %struct.ppm, %struct.ppm* %74, i32 0, i32 2
  %75 = load i8*, i8** %col121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %75, i64 %idxprom120
  %76 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %76 to i32
  %conv124 = sitofp i32 %conv123 to float
  %77 = load float, float* %x2y1, align 4
  %mul125 = fmul float %conv124, %77
  %78 = load float, float* %g, align 4
  %add126 = fadd float %78, %mul125
  store float %add126, float* %g, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.115, %if.end.111
  %79 = load float, float* %x2y1, align 4
  %conv128 = fpext float %79 to double
  %cmp129 = fcmp ogt double %conv128, 0.000000e+00
  br i1 %cmp129, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %if.end.127
  %80 = load i32, i32* %y1, align 4
  %81 = load i32, i32* %rowstride, align 4
  %mul132 = mul nsw i32 %80, %81
  %82 = load i32, i32* %x2, align 4
  %mul133 = mul nsw i32 %82, 3
  %add134 = add nsw i32 %mul132, %mul133
  %add135 = add nsw i32 %add134, 2
  %idxprom136 = sext i32 %add135 to i64
  %83 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col137 = getelementptr inbounds %struct.ppm, %struct.ppm* %83, i32 0, i32 2
  %84 = load i8*, i8** %col137, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %84, i64 %idxprom136
  %85 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %85 to i32
  %conv140 = sitofp i32 %conv139 to float
  %86 = load float, float* %x2y1, align 4
  %mul141 = fmul float %conv140, %86
  %87 = load float, float* %b, align 4
  %add142 = fadd float %87, %mul141
  store float %add142, float* %b, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.131, %if.end.127
  %88 = load float, float* %x1y2, align 4
  %conv144 = fpext float %88 to double
  %cmp145 = fcmp ogt double %conv144, 0.000000e+00
  br i1 %cmp145, label %if.then.147, label %if.end.159

if.then.147:                                      ; preds = %if.end.143
  %89 = load i32, i32* %y2, align 4
  %90 = load i32, i32* %rowstride, align 4
  %mul148 = mul nsw i32 %89, %90
  %91 = load i32, i32* %x1, align 4
  %mul149 = mul nsw i32 %91, 3
  %add150 = add nsw i32 %mul148, %mul149
  %add151 = add nsw i32 %add150, 0
  %idxprom152 = sext i32 %add151 to i64
  %92 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col153 = getelementptr inbounds %struct.ppm, %struct.ppm* %92, i32 0, i32 2
  %93 = load i8*, i8** %col153, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %93, i64 %idxprom152
  %94 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %94 to i32
  %conv156 = sitofp i32 %conv155 to float
  %95 = load float, float* %x1y2, align 4
  %mul157 = fmul float %conv156, %95
  %96 = load float, float* %r, align 4
  %add158 = fadd float %96, %mul157
  store float %add158, float* %r, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.147, %if.end.143
  %97 = load float, float* %x1y2, align 4
  %conv160 = fpext float %97 to double
  %cmp161 = fcmp ogt double %conv160, 0.000000e+00
  br i1 %cmp161, label %if.then.163, label %if.end.175

if.then.163:                                      ; preds = %if.end.159
  %98 = load i32, i32* %y2, align 4
  %99 = load i32, i32* %rowstride, align 4
  %mul164 = mul nsw i32 %98, %99
  %100 = load i32, i32* %x1, align 4
  %mul165 = mul nsw i32 %100, 3
  %add166 = add nsw i32 %mul164, %mul165
  %add167 = add nsw i32 %add166, 1
  %idxprom168 = sext i32 %add167 to i64
  %101 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col169 = getelementptr inbounds %struct.ppm, %struct.ppm* %101, i32 0, i32 2
  %102 = load i8*, i8** %col169, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %102, i64 %idxprom168
  %103 = load i8, i8* %arrayidx170, align 1
  %conv171 = zext i8 %103 to i32
  %conv172 = sitofp i32 %conv171 to float
  %104 = load float, float* %x1y2, align 4
  %mul173 = fmul float %conv172, %104
  %105 = load float, float* %g, align 4
  %add174 = fadd float %105, %mul173
  store float %add174, float* %g, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.163, %if.end.159
  %106 = load float, float* %x1y2, align 4
  %conv176 = fpext float %106 to double
  %cmp177 = fcmp ogt double %conv176, 0.000000e+00
  br i1 %cmp177, label %if.then.179, label %if.end.191

if.then.179:                                      ; preds = %if.end.175
  %107 = load i32, i32* %y2, align 4
  %108 = load i32, i32* %rowstride, align 4
  %mul180 = mul nsw i32 %107, %108
  %109 = load i32, i32* %x1, align 4
  %mul181 = mul nsw i32 %109, 3
  %add182 = add nsw i32 %mul180, %mul181
  %add183 = add nsw i32 %add182, 2
  %idxprom184 = sext i32 %add183 to i64
  %110 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col185 = getelementptr inbounds %struct.ppm, %struct.ppm* %110, i32 0, i32 2
  %111 = load i8*, i8** %col185, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %111, i64 %idxprom184
  %112 = load i8, i8* %arrayidx186, align 1
  %conv187 = zext i8 %112 to i32
  %conv188 = sitofp i32 %conv187 to float
  %113 = load float, float* %x1y2, align 4
  %mul189 = fmul float %conv188, %113
  %114 = load float, float* %b, align 4
  %add190 = fadd float %114, %mul189
  store float %add190, float* %b, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.179, %if.end.175
  %115 = load float, float* %x2y2, align 4
  %conv192 = fpext float %115 to double
  %cmp193 = fcmp ogt double %conv192, 0.000000e+00
  br i1 %cmp193, label %if.then.195, label %if.end.207

if.then.195:                                      ; preds = %if.end.191
  %116 = load i32, i32* %y2, align 4
  %117 = load i32, i32* %rowstride, align 4
  %mul196 = mul nsw i32 %116, %117
  %118 = load i32, i32* %x2, align 4
  %mul197 = mul nsw i32 %118, 3
  %add198 = add nsw i32 %mul196, %mul197
  %add199 = add nsw i32 %add198, 0
  %idxprom200 = sext i32 %add199 to i64
  %119 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col201 = getelementptr inbounds %struct.ppm, %struct.ppm* %119, i32 0, i32 2
  %120 = load i8*, i8** %col201, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %120, i64 %idxprom200
  %121 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %121 to i32
  %conv204 = sitofp i32 %conv203 to float
  %122 = load float, float* %x2y2, align 4
  %mul205 = fmul float %conv204, %122
  %123 = load float, float* %r, align 4
  %add206 = fadd float %123, %mul205
  store float %add206, float* %r, align 4
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.195, %if.end.191
  %124 = load float, float* %x2y2, align 4
  %conv208 = fpext float %124 to double
  %cmp209 = fcmp ogt double %conv208, 0.000000e+00
  br i1 %cmp209, label %if.then.211, label %if.end.223

if.then.211:                                      ; preds = %if.end.207
  %125 = load i32, i32* %y2, align 4
  %126 = load i32, i32* %rowstride, align 4
  %mul212 = mul nsw i32 %125, %126
  %127 = load i32, i32* %x2, align 4
  %mul213 = mul nsw i32 %127, 3
  %add214 = add nsw i32 %mul212, %mul213
  %add215 = add nsw i32 %add214, 1
  %idxprom216 = sext i32 %add215 to i64
  %128 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col217 = getelementptr inbounds %struct.ppm, %struct.ppm* %128, i32 0, i32 2
  %129 = load i8*, i8** %col217, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %129, i64 %idxprom216
  %130 = load i8, i8* %arrayidx218, align 1
  %conv219 = zext i8 %130 to i32
  %conv220 = sitofp i32 %conv219 to float
  %131 = load float, float* %x2y2, align 4
  %mul221 = fmul float %conv220, %131
  %132 = load float, float* %g, align 4
  %add222 = fadd float %132, %mul221
  store float %add222, float* %g, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.211, %if.end.207
  %133 = load float, float* %x2y2, align 4
  %conv224 = fpext float %133 to double
  %cmp225 = fcmp ogt double %conv224, 0.000000e+00
  br i1 %cmp225, label %if.then.227, label %if.end.239

if.then.227:                                      ; preds = %if.end.223
  %134 = load i32, i32* %y2, align 4
  %135 = load i32, i32* %rowstride, align 4
  %mul228 = mul nsw i32 %134, %135
  %136 = load i32, i32* %x2, align 4
  %mul229 = mul nsw i32 %136, 3
  %add230 = add nsw i32 %mul228, %mul229
  %add231 = add nsw i32 %add230, 2
  %idxprom232 = sext i32 %add231 to i64
  %137 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col233 = getelementptr inbounds %struct.ppm, %struct.ppm* %137, i32 0, i32 2
  %138 = load i8*, i8** %col233, align 8
  %arrayidx234 = getelementptr inbounds i8, i8* %138, i64 %idxprom232
  %139 = load i8, i8* %arrayidx234, align 1
  %conv235 = zext i8 %139 to i32
  %conv236 = sitofp i32 %conv235 to float
  %140 = load float, float* %x2y2, align 4
  %mul237 = fmul float %conv236, %140
  %141 = load float, float* %b, align 4
  %add238 = fadd float %141, %mul237
  store float %add238, float* %b, align 4
  br label %if.end.239

if.end.239:                                       ; preds = %if.then.227, %if.end.223
  %142 = load float, float* %r, align 4
  %conv240 = fptoui float %142 to i8
  %143 = load i8*, i8** %d.addr, align 8
  %arrayidx241 = getelementptr inbounds i8, i8* %143, i64 0
  store i8 %conv240, i8* %arrayidx241, align 1
  %144 = load float, float* %g, align 4
  %conv242 = fptoui float %144 to i8
  %145 = load i8*, i8** %d.addr, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %145, i64 1
  store i8 %conv242, i8* %arrayidx243, align 1
  %146 = load float, float* %b, align 4
  %conv244 = fptoui float %146 to i8
  %147 = load i8*, i8** %d.addr, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %147, i64 2
  store i8 %conv244, i8* %arrayidx245, align 1
  br label %return

return:                                           ; preds = %if.end.239, %if.then.26
  ret void
}

; Function Attrs: nounwind uwtable
define void @resize(%struct.ppm* %p, i32 %nx, i32 %ny) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xs = alloca float, align 4
  %ys = alloca float, align 4
  %tmp = alloca %struct.ppm, align 8
  %row = alloca i8*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %conv = sitofp i32 %1 to float
  %2 = load i32, i32* %nx.addr, align 4
  %conv1 = sitofp i32 %2 to float
  %div = fdiv float %conv, %conv1
  store float %div, float* %xs, align 4
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 1
  %4 = load i32, i32* %height, align 4
  %conv2 = sitofp i32 %4 to float
  %5 = load i32, i32* %ny.addr, align 4
  %conv3 = sitofp i32 %5 to float
  %div4 = fdiv float %conv2, %conv3
  store float %div4, float* %ys, align 4
  %6 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false)
  %7 = load i32, i32* %nx.addr, align 4
  %8 = load i32, i32* %ny.addr, align 4
  call void @ppm_new(%struct.ppm* %tmp, i32 %7, i32 %8)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %ny.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %11 = load i8*, i8** %col, align 8
  %12 = load i32, i32* %y, align 4
  %width7 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %13 = load i32, i32* %width7, align 4
  %mul = mul nsw i32 %12, %13
  %mul8 = mul nsw i32 %mul, 3
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %14 = load i32, i32* %x, align 4
  %15 = load i32, i32* %nx.addr, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %16 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %17 = load i32, i32* %x, align 4
  %conv13 = sitofp i32 %17 to float
  %18 = load float, float* %xs, align 4
  %mul14 = fmul float %conv13, %18
  %19 = load i32, i32* %y, align 4
  %conv15 = sitofp i32 %19 to float
  %20 = load float, float* %ys, align 4
  %mul16 = fmul float %conv15, %20
  %21 = load i32, i32* %x, align 4
  %mul17 = mul nsw i32 %21, 3
  %idxprom = sext i32 %mul17 to i64
  %22 = load i8*, i8** %row, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %idxprom
  call void @get_rgb(%struct.ppm* %16, float %mul14, float %mul16, i8* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body.12
  %23 = load i32, i32* %x, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %24 = load i32, i32* %y, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %y, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %25 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %25)
  %width21 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %26 = load i32, i32* %width21, align 4
  %27 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width22 = getelementptr inbounds %struct.ppm, %struct.ppm* %27, i32 0, i32 0
  store i32 %26, i32* %width22, align 4
  %height23 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %28 = load i32, i32* %height23, align 4
  %29 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height24 = getelementptr inbounds %struct.ppm, %struct.ppm* %29, i32 0, i32 1
  store i32 %28, i32* %height24, align 4
  %col25 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %30 = load i8*, i8** %col25, align 8
  %31 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col26 = getelementptr inbounds %struct.ppm, %struct.ppm* %31, i32 0, i32 2
  store i8* %30, i8** %col26, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @rescale(%struct.ppm* %p, double %sc) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %sc.addr = alloca double, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store double %sc, double* %sc.addr, align 8
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4
  %conv = sitofp i32 %2 to double
  %3 = load double, double* %sc.addr, align 8
  %mul = fmul double %conv, %3
  %conv1 = fptosi double %mul to i32
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4
  %conv2 = sitofp i32 %5 to double
  %6 = load double, double* %sc.addr, align 8
  %mul3 = fmul double %conv2, %6
  %conv4 = fptosi double %mul3 to i32
  call void @resize(%struct.ppm* %0, i32 %conv1, i32 %conv4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @resize_fast(%struct.ppm* %p, i32 %nx, i32 %ny) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %xs = alloca float, align 4
  %ys = alloca float, align 4
  %tmp = alloca %struct.ppm, align 8
  %rx = alloca i32, align 4
  %ry = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %conv = sitofp i32 %1 to float
  %2 = load i32, i32* %nx.addr, align 4
  %conv1 = sitofp i32 %2 to float
  %div = fdiv float %conv, %conv1
  store float %div, float* %xs, align 4
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 1
  %4 = load i32, i32* %height, align 4
  %conv2 = sitofp i32 %4 to float
  %5 = load i32, i32* %ny.addr, align 4
  %conv3 = sitofp i32 %5 to float
  %div4 = fdiv float %conv2, %conv3
  store float %div4, float* %ys, align 4
  %6 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false)
  %7 = load i32, i32* %nx.addr, align 4
  %8 = load i32, i32* %ny.addr, align 4
  call void @ppm_new(%struct.ppm* %tmp, i32 %7, i32 %8)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %ny.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %nx.addr, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %13 = load i32, i32* %x, align 4
  %conv11 = sitofp i32 %13 to float
  %14 = load float, float* %xs, align 4
  %mul = fmul float %conv11, %14
  %conv12 = fptosi float %mul to i32
  store i32 %conv12, i32* %rx, align 4
  %15 = load i32, i32* %y, align 4
  %conv14 = sitofp i32 %15 to float
  %16 = load float, float* %ys, align 4
  %mul15 = fmul float %conv14, %16
  %conv16 = fptosi float %mul15 to i32
  store i32 %conv16, i32* %ry, align 4
  %17 = load i32, i32* %y, align 4
  %width17 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %18 = load i32, i32* %width17, align 4
  %mul18 = mul nsw i32 %17, %18
  %mul19 = mul nsw i32 %mul18, 3
  %19 = load i32, i32* %x, align 4
  %mul20 = mul nsw i32 %19, 3
  %add = add nsw i32 %mul19, %mul20
  %idxprom = sext i32 %add to i64
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %20 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %idxprom
  %21 = load i32, i32* %ry, align 4
  %22 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width21 = getelementptr inbounds %struct.ppm, %struct.ppm* %22, i32 0, i32 0
  %23 = load i32, i32* %width21, align 4
  %mul22 = mul nsw i32 %21, %23
  %mul23 = mul nsw i32 %mul22, 3
  %24 = load i32, i32* %rx, align 4
  %mul24 = mul nsw i32 %24, 3
  %add25 = add nsw i32 %mul23, %mul24
  %idxprom26 = sext i32 %add25 to i64
  %25 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col27 = getelementptr inbounds %struct.ppm, %struct.ppm* %25, i32 0, i32 2
  %26 = load i8*, i8** %col27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 %idxprom26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %arrayidx28, i64 3, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %27 = load i32, i32* %x, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %28 = load i32, i32* %y, align 4
  %inc30 = add nsw i32 %28, 1
  store i32 %inc30, i32* %y, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  %29 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %29)
  %width32 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %30 = load i32, i32* %width32, align 4
  %31 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width33 = getelementptr inbounds %struct.ppm, %struct.ppm* %31, i32 0, i32 0
  store i32 %30, i32* %width33, align 4
  %height34 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %32 = load i32, i32* %height34, align 4
  %33 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height35 = getelementptr inbounds %struct.ppm, %struct.ppm* %33, i32 0, i32 1
  store i32 %32, i32* %height35, align 4
  %col36 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %34 = load i8*, i8** %col36, align 8
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col37 = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 2
  store i8* %34, i8** %col37, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define void @ppm_load(i8* %fn, %struct.ppm* %p) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %p.addr = alloca %struct.ppm*, align 8
  %line = alloca [200 x i8], align 16
  %y = alloca i32, align 4
  %pgm = alloca i32, align 4
  %f = alloca %struct._IO_FILE*, align 8
  %tmpcol = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 0, i32* %pgm, align 4
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %sub = sub i64 %call, 4
  %1 = load i8*, i8** %fn.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %sub
  %call1 = call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #6
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %fn.addr, align 8
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @load_gimp_brush(i8* %2, %struct.ppm* %3)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %fn.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen_from_search_path(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f, align 8
  %5 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %6, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %7 = load i8*, i8** %fn.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %7)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* %call5)
  %8 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_new(%struct.ppm* %8, i32 10, i32 10)
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call7 = call i32 @readline(%struct._IO_FILE* %9, i8* %arraydecay, i32 200)
  %arraydecay8 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call9 = call i32 @strcmp(i8* %arraydecay8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #6
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %if.end.6
  %arraydecay12 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call13 = call i32 @strcmp(i8* %arraydecay12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #6
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %if.then.11
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call16 = call i32 @fclose(%struct._IO_FILE* %10)
  %11 = load i8*, i8** %fn.addr, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %11)
  %arraydecay18 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %call17, i8* %arraydecay18, i32 7)
  %12 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_new(%struct.ppm* %12, i32 10, i32 10)
  br label %return

if.end.19:                                        ; preds = %if.then.11
  store i32 1, i32* %pgm, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay21 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call22 = call i32 @readline(%struct._IO_FILE* %13, i8* %arraydecay21, i32 200)
  %arraydecay23 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call24 = call i32 @atoi(i8* %arraydecay23) #6
  %14 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %14, i32 0, i32 0
  store i32 %call24, i32* %width, align 4
  %arraydecay25 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call26 = call i8* @strchr(i8* %arraydecay25, i32 32) #6
  %add.ptr = getelementptr inbounds i8, i8* %call26, i64 1
  %call27 = call i32 @atoi(i8* %add.ptr) #6
  %15 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %15, i32 0, i32 1
  store i32 %call27, i32* %height, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %arraydecay28 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call29 = call i32 @readline(%struct._IO_FILE* %16, i8* %arraydecay28, i32 200)
  %arraydecay30 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  %call31 = call i32 @strcmp(i8* %arraydecay30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #6
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.end.20
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call34 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load i8*, i8** %fn.addr, align 8
  %call35 = call i8* @gimp_filename_to_utf8(i8* %18)
  %arraydecay36 = getelementptr inbounds [200 x i8], [200 x i8]* %line, i32 0, i32 0
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i32 0, i32 0), i8* %call35, i8* %arraydecay36, i32 7)
  %19 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_new(%struct.ppm* %19, i32 10, i32 10)
  br label %return

if.end.37:                                        ; preds = %if.end.20
  %20 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height38 = getelementptr inbounds %struct.ppm, %struct.ppm* %20, i32 0, i32 1
  %21 = load i32, i32* %height38, align 4
  %22 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width39 = getelementptr inbounds %struct.ppm, %struct.ppm* %22, i32 0, i32 0
  %23 = load i32, i32* %width39, align 4
  %mul = mul nsw i32 %21, %23
  %mul40 = mul nsw i32 %mul, 3
  %conv = sext i32 %mul40 to i64
  %call41 = call noalias i8* @g_malloc(i64 %conv)
  %24 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %24, i32 0, i32 2
  store i8* %call41, i8** %col, align 8
  %25 = load i32, i32* %pgm, align 4
  %tobool42 = icmp ne i32 %25, 0
  br i1 %tobool42, label %if.else, label %if.then.43

if.then.43:                                       ; preds = %if.end.37
  %26 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col44 = getelementptr inbounds %struct.ppm, %struct.ppm* %26, i32 0, i32 2
  %27 = load i8*, i8** %col44, align 8
  %28 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height45 = getelementptr inbounds %struct.ppm, %struct.ppm* %28, i32 0, i32 1
  %29 = load i32, i32* %height45, align 4
  %mul46 = mul nsw i32 %29, 3
  %30 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width47 = getelementptr inbounds %struct.ppm, %struct.ppm* %30, i32 0, i32 0
  %31 = load i32, i32* %width47, align 4
  %mul48 = mul nsw i32 %mul46, %31
  %conv49 = sext i32 %mul48 to i64
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call50 = call i64 @fread(i8* %27, i64 %conv49, i64 1, %struct._IO_FILE* %32)
  br label %if.end.70

if.else:                                          ; preds = %if.end.37
  %33 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width51 = getelementptr inbounds %struct.ppm, %struct.ppm* %33, i32 0, i32 0
  %34 = load i32, i32* %width51, align 4
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height52 = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 1
  %36 = load i32, i32* %height52, align 4
  %mul53 = mul nsw i32 %34, %36
  %conv54 = sext i32 %mul53 to i64
  %call55 = call noalias i8* @g_malloc(i64 %conv54)
  store i8* %call55, i8** %tmpcol, align 8
  %37 = load i8*, i8** %tmpcol, align 8
  %38 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height56 = getelementptr inbounds %struct.ppm, %struct.ppm* %38, i32 0, i32 1
  %39 = load i32, i32* %height56, align 4
  %40 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width57 = getelementptr inbounds %struct.ppm, %struct.ppm* %40, i32 0, i32 0
  %41 = load i32, i32* %width57, align 4
  %mul58 = mul nsw i32 %39, %41
  %conv59 = sext i32 %mul58 to i64
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call60 = call i64 @fread(i8* %37, i64 %conv59, i64 1, %struct._IO_FILE* %42)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %43 = load i32, i32* %y, align 4
  %44 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width61 = getelementptr inbounds %struct.ppm, %struct.ppm* %44, i32 0, i32 0
  %45 = load i32, i32* %width61, align 4
  %46 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height62 = getelementptr inbounds %struct.ppm, %struct.ppm* %46, i32 0, i32 1
  %47 = load i32, i32* %height62, align 4
  %mul63 = mul nsw i32 %45, %47
  %mul64 = mul nsw i32 %mul63, 3
  %cmp = icmp slt i32 %43, %mul64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %y, align 4
  %div = sdiv i32 %48, 3
  %idxprom = sext i32 %div to i64
  %49 = load i8*, i8** %tmpcol, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %49, i64 %idxprom
  %50 = load i8, i8* %arrayidx66, align 1
  %51 = load i32, i32* %y, align 4
  %idxprom67 = sext i32 %51 to i64
  %52 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col68 = getelementptr inbounds %struct.ppm, %struct.ppm* %52, i32 0, i32 2
  %53 = load i8*, i8** %col68, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %53, i64 %idxprom67
  store i8 %50, i8* %arrayidx69, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %y, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load i8*, i8** %tmpcol, align 8
  call void @g_free(i8* %55)
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %if.then.43
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call71 = call i32 @fclose(%struct._IO_FILE* %56)
  br label %return

return:                                           ; preds = %if.end.70, %if.then.33, %if.then.15, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @load_gimp_brush(i8* %fn, %struct.ppm* %p) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %p.addr = alloca %struct.ppm*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %hdr = alloca %struct._BrushHeader, align 4
  %ptr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  store i8* %fn, i8** %fn.addr, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call %struct._IO_FILE* @fopen_from_search_path(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %fn.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %3)
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0), i8* %call1)
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_new(%struct.ppm* %4, i32 10, i32 10)
  br label %return

if.end:                                           ; preds = %entry
  %5 = bitcast %struct._BrushHeader* %hdr to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call2 = call i64 @fread(i8* %5, i64 1, i64 28, %struct._IO_FILE* %6)
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %7, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %x, align 4
  %idxprom = sext i32 %8 to i64
  %9 = bitcast %struct._BrushHeader* %hdr to i32*
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  call void @msb2lsb(i32* %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %hdr, i32 0, i32 2
  %12 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %hdr, i32 0, i32 3
  %13 = load i32, i32* %height, align 4
  call void @ppm_new(%struct.ppm* %11, i32 %12, i32 %13)
  %width3 = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %hdr, i32 0, i32 2
  %14 = load i32, i32* %width3, align 4
  %conv = zext i32 %14 to i64
  %call4 = call noalias i8* @g_malloc(i64 %conv)
  store i8* %call4, i8** %ptr, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %header_size = getelementptr inbounds %struct._BrushHeader, %struct._BrushHeader* %hdr, i32 0, i32 0
  %16 = load i32, i32* %header_size, align 4
  %conv5 = zext i32 %16 to i64
  %call6 = call i32 @fseek(%struct._IO_FILE* %15, i64 %conv5, i32 0)
  store i32 0, i32* %y, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.39, %for.end
  %17 = load i32, i32* %y, align 4
  %18 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height8 = getelementptr inbounds %struct.ppm, %struct.ppm* %18, i32 0, i32 1
  %19 = load i32, i32* %height8, align 4
  %cmp9 = icmp slt i32 %17, %19
  br i1 %cmp9, label %for.body.11, label %for.end.41

for.body.11:                                      ; preds = %for.cond.7
  %20 = load i8*, i8** %ptr, align 8
  %21 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width12 = getelementptr inbounds %struct.ppm, %struct.ppm* %21, i32 0, i32 0
  %22 = load i32, i32* %width12, align 4
  %conv13 = sext i32 %22 to i64
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call14 = call i64 @fread(i8* %20, i64 %conv13, i64 1, %struct._IO_FILE* %23)
  store i32 0, i32* %x, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.36, %for.body.11
  %24 = load i32, i32* %x, align 4
  %25 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width16 = getelementptr inbounds %struct.ppm, %struct.ppm* %25, i32 0, i32 0
  %26 = load i32, i32* %width16, align 4
  %cmp17 = icmp slt i32 %24, %26
  br i1 %cmp17, label %for.body.19, label %for.end.38

for.body.19:                                      ; preds = %for.cond.15
  %27 = load i32, i32* %y, align 4
  %28 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width20 = getelementptr inbounds %struct.ppm, %struct.ppm* %28, i32 0, i32 0
  %29 = load i32, i32* %width20, align 4
  %mul = mul nsw i32 %27, %29
  %mul21 = mul nsw i32 %mul, 3
  %30 = load i32, i32* %x, align 4
  %mul22 = mul nsw i32 %30, 3
  %add = add nsw i32 %mul21, %mul22
  store i32 %add, i32* %k, align 4
  %31 = load i32, i32* %x, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load i8*, i8** %ptr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %32, i64 %idxprom23
  %33 = load i8, i8* %arrayidx24, align 1
  %34 = load i32, i32* %k, align 4
  %add25 = add nsw i32 %34, 2
  %idxprom26 = sext i32 %add25 to i64
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 2
  %36 = load i8*, i8** %col, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %36, i64 %idxprom26
  store i8 %33, i8* %arrayidx27, align 1
  %37 = load i32, i32* %k, align 4
  %add28 = add nsw i32 %37, 1
  %idxprom29 = sext i32 %add28 to i64
  %38 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col30 = getelementptr inbounds %struct.ppm, %struct.ppm* %38, i32 0, i32 2
  %39 = load i8*, i8** %col30, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %39, i64 %idxprom29
  store i8 %33, i8* %arrayidx31, align 1
  %40 = load i32, i32* %k, align 4
  %add32 = add nsw i32 %40, 0
  %idxprom33 = sext i32 %add32 to i64
  %41 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col34 = getelementptr inbounds %struct.ppm, %struct.ppm* %41, i32 0, i32 2
  %42 = load i8*, i8** %col34, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %42, i64 %idxprom33
  store i8 %33, i8* %arrayidx35, align 1
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.19
  %43 = load i32, i32* %x, align 4
  %inc37 = add nsw i32 %43, 1
  store i32 %inc37, i32* %x, align 4
  br label %for.cond.15

for.end.38:                                       ; preds = %for.cond.15
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.end.38
  %44 = load i32, i32* %y, align 4
  %inc40 = add nsw i32 %44, 1
  store i32 %inc40, i32* %y, align 4
  br label %for.cond.7

for.end.41:                                       ; preds = %for.cond.7
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call42 = call i32 @fclose(%struct._IO_FILE* %45)
  %46 = load i8*, i8** %ptr, align 8
  call void @g_free(i8* %46)
  br label %return

return:                                           ; preds = %for.end.41, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @fopen_from_search_path(i8* %fn, i8* %mode) #0 {
entry:
  %fn.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  %full_filename = alloca i8*, align 8
  store i8* %fn, i8** %fn.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %1 = load i8*, i8** %mode.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* %1)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %fn.addr, align 8
  %call1 = call i8* @findfile(i8* %3)
  store i8* %call1, i8** %full_filename, align 8
  %4 = load i8*, i8** %full_filename, align 8
  %5 = load i8*, i8** %mode.addr, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %4, i8* %5)
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %f, align 8
  %6 = load i8*, i8** %full_filename, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  ret %struct._IO_FILE* %7
}

declare void @g_printerr(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @readline(%struct._IO_FILE* %f, i8* %buffer, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._IO_FILE*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %buffer.addr, align 8
  %1 = load i32, i32* %len.addr, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call = call i8* @fgets(i8* %0, i32 %1, %struct._IO_FILE* %2)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %3 = load i8*, i8** %buffer.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 35
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %5 = load i8*, i8** %buffer.addr, align 8
  %call2 = call i8* @g_strchomp(i8* %5)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @fill(%struct.ppm* %p, i8* %c) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %c.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %col = alloca i8, align 1
  %row = alloca i8*, align 8
  %k = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i8* %c, i8** %c.addr, align 8
  %0 = load i8*, i8** %c.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i8*, i8** %c.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %c.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %6 = load i8*, i8** %c.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %6, i64 2
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv5, %conv7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %c.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx10, align 1
  store i8 %9, i8* %col, align 1
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %y, align 4
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 1
  %12 = load i32, i32* %height, align 4
  %cmp11 = icmp slt i32 %10, %12
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col13 = getelementptr inbounds %struct.ppm, %struct.ppm* %13, i32 0, i32 2
  %14 = load i8*, i8** %col13, align 8
  %15 = load i32, i32* %y, align 4
  %16 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %16, i32 0, i32 0
  %17 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %15, %17
  %mul14 = mul nsw i32 %mul, 3
  %idx.ext = sext i32 %mul14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 %idx.ext
  %18 = load i8, i8* %col, align 1
  %conv15 = zext i8 %18 to i32
  %19 = trunc i32 %conv15 to i8
  %20 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width16 = getelementptr inbounds %struct.ppm, %struct.ppm* %20, i32 0, i32 0
  %21 = load i32, i32* %width16, align 4
  %mul17 = mul nsw i32 %21, 3
  %conv18 = sext i32 %mul17 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 %19, i64 %conv18, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %y, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %y, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.49, %if.else
  %23 = load i32, i32* %y, align 4
  %24 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height20 = getelementptr inbounds %struct.ppm, %struct.ppm* %24, i32 0, i32 1
  %25 = load i32, i32* %height20, align 4
  %cmp21 = icmp slt i32 %23, %25
  br i1 %cmp21, label %for.body.23, label %for.end.51

for.body.23:                                      ; preds = %for.cond.19
  %26 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col24 = getelementptr inbounds %struct.ppm, %struct.ppm* %26, i32 0, i32 2
  %27 = load i8*, i8** %col24, align 8
  %28 = load i32, i32* %y, align 4
  %29 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width25 = getelementptr inbounds %struct.ppm, %struct.ppm* %29, i32 0, i32 0
  %30 = load i32, i32* %width25, align 4
  %mul26 = mul nsw i32 %28, %30
  %mul27 = mul nsw i32 %mul26, 3
  %idx.ext28 = sext i32 %mul27 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %27, i64 %idx.ext28
  store i8* %add.ptr29, i8** %row, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.46, %for.body.23
  %31 = load i32, i32* %x, align 4
  %32 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width31 = getelementptr inbounds %struct.ppm, %struct.ppm* %32, i32 0, i32 0
  %33 = load i32, i32* %width31, align 4
  %cmp32 = icmp slt i32 %31, %33
  br i1 %cmp32, label %for.body.34, label %for.end.48

for.body.34:                                      ; preds = %for.cond.30
  %34 = load i32, i32* %x, align 4
  %mul35 = mul nsw i32 %34, 3
  store i32 %mul35, i32* %k, align 4
  %35 = load i8*, i8** %c.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx36, align 1
  %37 = load i32, i32* %k, align 4
  %add = add nsw i32 %37, 0
  %idxprom = sext i32 %add to i64
  %38 = load i8*, i8** %row, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %38, i64 %idxprom
  store i8 %36, i8* %arrayidx37, align 1
  %39 = load i8*, i8** %c.addr, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %39, i64 1
  %40 = load i8, i8* %arrayidx38, align 1
  %41 = load i32, i32* %k, align 4
  %add39 = add nsw i32 %41, 1
  %idxprom40 = sext i32 %add39 to i64
  %42 = load i8*, i8** %row, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %42, i64 %idxprom40
  store i8 %40, i8* %arrayidx41, align 1
  %43 = load i8*, i8** %c.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %43, i64 2
  %44 = load i8, i8* %arrayidx42, align 1
  %45 = load i32, i32* %k, align 4
  %add43 = add nsw i32 %45, 2
  %idxprom44 = sext i32 %add43 to i64
  %46 = load i8*, i8** %row, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %46, i64 %idxprom44
  store i8 %44, i8* %arrayidx45, align 1
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.34
  %47 = load i32, i32* %x, align 4
  %inc47 = add nsw i32 %47, 1
  store i32 %inc47, i32* %x, align 4
  br label %for.cond.30

for.end.48:                                       ; preds = %for.cond.30
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %48 = load i32, i32* %y, align 4
  %inc50 = add nsw i32 %48, 1
  store i32 %inc50, i32* %y, align 4
  br label %for.cond.19

for.end.51:                                       ; preds = %for.cond.19
  br label %if.end

if.end:                                           ; preds = %for.end.51, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppm_copy(%struct.ppm* %s, %struct.ppm* %p) #0 {
entry:
  %s.addr = alloca %struct.ppm*, align 8
  %p.addr = alloca %struct.ppm*, align 8
  store %struct.ppm* %s, %struct.ppm** %s.addr, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %0)
  %1 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width1 = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 0
  store i32 %2, i32* %width1, align 4
  %4 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i32 0, i32 1
  %5 = load i32, i32* %height, align 4
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height2 = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 1
  store i32 %5, i32* %height2, align 4
  %7 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %7, i32 0, i32 2
  %8 = load i8*, i8** %col, align 8
  %9 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width3 = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 0
  %10 = load i32, i32* %width3, align 4
  %mul = mul nsw i32 %10, 3
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height4 = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 1
  %12 = load i32, i32* %height4, align 4
  %mul5 = mul nsw i32 %mul, %12
  %call = call noalias i8* @g_memdup(i8* %8, i32 %mul5)
  %13 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col6 = getelementptr inbounds %struct.ppm, %struct.ppm* %13, i32 0, i32 2
  store i8* %call, i8** %col6, align 8
  ret void
}

declare noalias i8* @g_memdup(i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @free_rotate(%struct.ppm* %p, double %amount) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %amount.addr = alloca double, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %nx = alloca double, align 8
  %ny = alloca double, align 8
  %tmp = alloca %struct.ppm, align 8
  %f = alloca double, align 8
  %rowstride = alloca i32, align 4
  %r = alloca double, align 8
  %d = alloca double, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store double %amount, double* %amount.addr, align 8
  %0 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load double, double* %amount.addr, align 8
  %mul = fmul double %1, 0x400921FB54442D18
  %mul2 = fmul double %mul, 2.000000e+00
  %div = fdiv double %mul2, 3.600000e+02
  store double %div, double* %f, align 8
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 0
  %3 = load i32, i32* %width, align 4
  %mul4 = mul nsw i32 %3, 3
  store i32 %mul4, i32* %rowstride, align 4
  %4 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width5 = getelementptr inbounds %struct.ppm, %struct.ppm* %4, i32 0, i32 0
  %5 = load i32, i32* %width5, align 4
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 1
  %7 = load i32, i32* %height, align 4
  call void @ppm_new(%struct.ppm* %tmp, i32 %5, i32 %7)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %entry
  %8 = load i32, i32* %y, align 4
  %9 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height6 = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 1
  %10 = load i32, i32* %height6, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.58

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %x, align 4
  %12 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width8 = getelementptr inbounds %struct.ppm, %struct.ppm* %12, i32 0, i32 0
  %13 = load i32, i32* %width8, align 4
  %cmp9 = icmp slt i32 %11, %13
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %14 = load i32, i32* %x, align 4
  %conv = sitofp i32 %14 to double
  %15 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width13 = getelementptr inbounds %struct.ppm, %struct.ppm* %15, i32 0, i32 0
  %16 = load i32, i32* %width13, align 4
  %conv14 = sitofp i32 %16 to double
  %div15 = fdiv double %conv14, 2.000000e+00
  %sub = fsub double %conv, %div15
  %call = call double @fabs(double %sub) #7
  store double %call, double* %nx, align 8
  %17 = load i32, i32* %y, align 4
  %conv16 = sitofp i32 %17 to double
  %18 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height17 = getelementptr inbounds %struct.ppm, %struct.ppm* %18, i32 0, i32 1
  %19 = load i32, i32* %height17, align 4
  %conv18 = sitofp i32 %19 to double
  %div19 = fdiv double %conv18, 2.000000e+00
  %sub20 = fsub double %conv16, %div19
  %call21 = call double @fabs(double %sub20) #7
  store double %call21, double* %ny, align 8
  %20 = load double, double* %nx, align 8
  %21 = load double, double* %nx, align 8
  %mul22 = fmul double %20, %21
  %22 = load double, double* %ny, align 8
  %23 = load double, double* %ny, align 8
  %mul23 = fmul double %22, %23
  %add = fadd double %mul22, %mul23
  %call24 = call double @sqrt(double %add) #2
  store double %call24, double* %r, align 8
  %24 = load i32, i32* %y, align 4
  %conv25 = sitofp i32 %24 to double
  %25 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height26 = getelementptr inbounds %struct.ppm, %struct.ppm* %25, i32 0, i32 1
  %26 = load i32, i32* %height26, align 4
  %conv27 = sitofp i32 %26 to double
  %div28 = fdiv double %conv27, 2.000000e+00
  %sub29 = fsub double %conv25, %div28
  %27 = load i32, i32* %x, align 4
  %conv30 = sitofp i32 %27 to double
  %28 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width31 = getelementptr inbounds %struct.ppm, %struct.ppm* %28, i32 0, i32 0
  %29 = load i32, i32* %width31, align 4
  %conv32 = sitofp i32 %29 to double
  %div33 = fdiv double %conv32, 2.000000e+00
  %sub34 = fsub double %conv30, %div33
  %call35 = call double @atan2(double %sub29, double %sub34) #2
  store double %call35, double* %d, align 8
  %30 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width36 = getelementptr inbounds %struct.ppm, %struct.ppm* %30, i32 0, i32 0
  %31 = load i32, i32* %width36, align 4
  %conv37 = sitofp i32 %31 to double
  %div38 = fdiv double %conv37, 2.000000e+00
  %32 = load double, double* %d, align 8
  %33 = load double, double* %f, align 8
  %sub39 = fsub double %32, %33
  %call40 = call double @cos(double %sub39) #2
  %34 = load double, double* %r, align 8
  %mul41 = fmul double %call40, %34
  %add42 = fadd double %div38, %mul41
  store double %add42, double* %nx, align 8
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height43 = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 1
  %36 = load i32, i32* %height43, align 4
  %conv44 = sitofp i32 %36 to double
  %div45 = fdiv double %conv44, 2.000000e+00
  %37 = load double, double* %d, align 8
  %38 = load double, double* %f, align 8
  %sub46 = fsub double %37, %38
  %call47 = call double @sin(double %sub46) #2
  %39 = load double, double* %r, align 8
  %mul48 = fmul double %call47, %39
  %add49 = fadd double %div45, %mul48
  store double %add49, double* %ny, align 8
  %40 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %41 = load double, double* %nx, align 8
  %conv50 = fptrunc double %41 to float
  %42 = load double, double* %ny, align 8
  %conv51 = fptrunc double %42 to float
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %43 = load i8*, i8** %col, align 8
  %44 = load i32, i32* %y, align 4
  %45 = load i32, i32* %rowstride, align 4
  %mul52 = mul nsw i32 %44, %45
  %idx.ext = sext i32 %mul52 to i64
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  %46 = load i32, i32* %x, align 4
  %mul53 = mul nsw i32 %46, 3
  %idx.ext54 = sext i32 %mul53 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext54
  call void @get_rgb(%struct.ppm* %40, float %conv50, float %conv51, i8* %add.ptr55)
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %47 = load i32, i32* %x, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %48 = load i32, i32* %y, align 4
  %inc57 = add nsw i32 %48, 1
  store i32 %inc57, i32* %y, align 4
  br label %for.cond

for.end.58:                                       ; preds = %for.cond
  %49 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %49)
  %width59 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %50 = load i32, i32* %width59, align 4
  %51 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width60 = getelementptr inbounds %struct.ppm, %struct.ppm* %51, i32 0, i32 0
  store i32 %50, i32* %width60, align 4
  %height61 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %52 = load i32, i32* %height61, align 4
  %53 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height62 = getelementptr inbounds %struct.ppm, %struct.ppm* %53, i32 0, i32 1
  store i32 %52, i32* %height62, align 4
  %col63 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %54 = load i8*, i8** %col63, align 8
  %55 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col64 = getelementptr inbounds %struct.ppm, %struct.ppm* %55, i32 0, i32 2
  store i8* %54, i8** %col64, align 8
  ret void
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind
declare double @sqrt(double) #5

; Function Attrs: nounwind
declare double @atan2(double, double) #5

; Function Attrs: nounwind
declare double @cos(double) #5

; Function Attrs: nounwind
declare double @sin(double) #5

; Function Attrs: nounwind uwtable
define void @crop(%struct.ppm* %p, i32 %lx, i32 %ly, i32 %hx, i32 %hy) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %lx.addr = alloca i32, align 4
  %ly.addr = alloca i32, align 4
  %hx.addr = alloca i32, align 4
  %hy.addr = alloca i32, align 4
  %tmp = alloca %struct.ppm, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %srowstride = alloca i32, align 4
  %drowstride = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %lx, i32* %lx.addr, align 4
  store i32 %ly, i32* %ly.addr, align 4
  store i32 %hx, i32* %hx.addr, align 4
  store i32 %hy, i32* %hy.addr, align 4
  %0 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, i32* %srowstride, align 4
  %3 = load i32, i32* %hx.addr, align 4
  %4 = load i32, i32* %lx.addr, align 4
  %sub = sub nsw i32 %3, %4
  %5 = load i32, i32* %hy.addr, align 4
  %6 = load i32, i32* %ly.addr, align 4
  %sub5 = sub nsw i32 %5, %6
  call void @ppm_new(%struct.ppm* %tmp, i32 %sub, i32 %sub5)
  %width6 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %7 = load i32, i32* %width6, align 4
  %mul7 = mul nsw i32 %7, 3
  store i32 %mul7, i32* %drowstride, align 4
  %8 = load i32, i32* %ly.addr, align 4
  store i32 %8, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %9 = load i32, i32* %y, align 4
  %10 = load i32, i32* %hy.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %lx.addr, align 4
  store i32 %11, i32* %x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %hx.addr, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %ly.addr, align 4
  %sub11 = sub nsw i32 %14, %15
  %16 = load i32, i32* %drowstride, align 4
  %mul12 = mul nsw i32 %sub11, %16
  %17 = load i32, i32* %x, align 4
  %18 = load i32, i32* %lx.addr, align 4
  %sub13 = sub nsw i32 %17, %18
  %mul14 = mul nsw i32 %sub13, 3
  %add = add nsw i32 %mul12, %mul14
  %idxprom = sext i32 %add to i64
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %19 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %19, i64 %idxprom
  %20 = load i32, i32* %y, align 4
  %21 = load i32, i32* %srowstride, align 4
  %mul15 = mul nsw i32 %20, %21
  %22 = load i32, i32* %x, align 4
  %mul16 = mul nsw i32 %22, 3
  %add17 = add nsw i32 %mul15, %mul16
  %idxprom18 = sext i32 %add17 to i64
  %23 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col19 = getelementptr inbounds %struct.ppm, %struct.ppm* %23, i32 0, i32 2
  %24 = load i8*, i8** %col19, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %24, i64 %idxprom18
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %arrayidx20, i64 3, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %25 = load i32, i32* %x, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end
  %26 = load i32, i32* %y, align 4
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %y, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %27 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %27)
  %col24 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %28 = load i8*, i8** %col24, align 8
  %29 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col25 = getelementptr inbounds %struct.ppm, %struct.ppm* %29, i32 0, i32 2
  store i8* %28, i8** %col25, align 8
  %width26 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %30 = load i32, i32* %width26, align 4
  %31 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width27 = getelementptr inbounds %struct.ppm, %struct.ppm* %31, i32 0, i32 0
  store i32 %30, i32* %width27, align 4
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %32 = load i32, i32* %height, align 4
  %33 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height28 = getelementptr inbounds %struct.ppm, %struct.ppm* %33, i32 0, i32 1
  store i32 %32, i32* %height28, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @autocrop(%struct.ppm* %p, i32 %room) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %room.addr = alloca i32, align 4
  %lx = alloca i32, align 4
  %hx = alloca i32, align 4
  %ly = alloca i32, align 4
  %hy = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %n = alloca i32, align 4
  %tc = alloca [3 x i8], align 1
  %tmp = alloca %struct.ppm, align 8
  %rowstride = alloca i32, align 4
  %drowstride = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %room, i32* %room.addr, align 4
  store i32 0, i32* %lx, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  store i32 %1, i32* %hx, align 4
  store i32 0, i32* %ly, align 4
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 1
  %3 = load i32, i32* %height, align 4
  store i32 %3, i32* %hy, align 4
  store i32 0, i32* %n, align 4
  %4 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 8, i1 false)
  %5 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width2 = getelementptr inbounds %struct.ppm, %struct.ppm* %5, i32 0, i32 0
  %6 = load i32, i32* %width2, align 4
  %mul = mul nsw i32 %6, 3
  store i32 %mul, i32* %rowstride, align 4
  %7 = bitcast [3 x i8]* %tc to i8*
  %8 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %8, i32 0, i32 2
  %9 = load i8*, i8** %col, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %9, i64 3, i32 1, i1 false)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %10 = load i32, i32* %y, align 4
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height4 = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 1
  %12 = load i32, i32* %height4, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load i32, i32* %x, align 4
  %14 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width6 = getelementptr inbounds %struct.ppm, %struct.ppm* %14, i32 0, i32 0
  %15 = load i32, i32* %width6, align 4
  %cmp7 = icmp slt i32 %13, %15
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %16 = bitcast [3 x i8]* %tc to i8*
  %17 = load i32, i32* %y, align 4
  %18 = load i32, i32* %rowstride, align 4
  %mul9 = mul nsw i32 %17, %18
  %19 = load i32, i32* %x, align 4
  %mul10 = mul nsw i32 %19, 3
  %add = add nsw i32 %mul9, %mul10
  %idxprom = sext i32 %add to i64
  %20 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col11 = getelementptr inbounds %struct.ppm, %struct.ppm* %20, i32 0, i32 2
  %21 = load i8*, i8** %col11, align 8
  %arrayidx = getelementptr inbounds i8, i8* %21, i64 %idxprom
  %call = call i32 @memcmp(i8* %16, i8* %arrayidx, i64 3) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.8
  %22 = load i32, i32* %n, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %n, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %x, align 4
  %inc12 = add nsw i32 %23, 1
  store i32 %inc12, i32* %x, align 4
  br label %for.cond.5

for.end:                                          ; preds = %if.then, %for.cond.5
  %24 = load i32, i32* %n, align 4
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  br label %for.end.18

if.end.15:                                        ; preds = %for.end
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %25 = load i32, i32* %y, align 4
  %inc17 = add nsw i32 %25, 1
  store i32 %inc17, i32* %y, align 4
  br label %for.cond

for.end.18:                                       ; preds = %if.then.14, %for.cond
  %26 = load i32, i32* %n, align 4
  %tobool19 = icmp ne i32 %26, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end.18
  %27 = load i32, i32* %y, align 4
  store i32 %27, i32* %ly, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %for.end.18
  %28 = bitcast [3 x i8]* %tc to i8*
  %29 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height22 = getelementptr inbounds %struct.ppm, %struct.ppm* %29, i32 0, i32 1
  %30 = load i32, i32* %height22, align 4
  %sub = sub nsw i32 %30, 1
  %31 = load i32, i32* %rowstride, align 4
  %mul23 = mul nsw i32 %sub, %31
  %idxprom24 = sext i32 %mul23 to i64
  %32 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col25 = getelementptr inbounds %struct.ppm, %struct.ppm* %32, i32 0, i32 2
  %33 = load i8*, i8** %col25, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %33, i64 %idxprom24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %arrayidx26, i64 3, i32 1, i1 false)
  %34 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height27 = getelementptr inbounds %struct.ppm, %struct.ppm* %34, i32 0, i32 1
  %35 = load i32, i32* %height27, align 4
  %sub28 = sub nsw i32 %35, 1
  store i32 %sub28, i32* %y, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.53, %if.end.21
  %36 = load i32, i32* %y, align 4
  %cmp30 = icmp sge i32 %36, 0
  br i1 %cmp30, label %for.body.31, label %for.end.54

for.body.31:                                      ; preds = %for.cond.29
  store i32 0, i32* %n, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.47, %for.body.31
  %37 = load i32, i32* %x, align 4
  %38 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width33 = getelementptr inbounds %struct.ppm, %struct.ppm* %38, i32 0, i32 0
  %39 = load i32, i32* %width33, align 4
  %cmp34 = icmp slt i32 %37, %39
  br i1 %cmp34, label %for.body.35, label %for.end.49

for.body.35:                                      ; preds = %for.cond.32
  %40 = bitcast [3 x i8]* %tc to i8*
  %41 = load i32, i32* %y, align 4
  %42 = load i32, i32* %rowstride, align 4
  %mul36 = mul nsw i32 %41, %42
  %43 = load i32, i32* %x, align 4
  %mul37 = mul nsw i32 %43, 3
  %add38 = add nsw i32 %mul36, %mul37
  %idxprom39 = sext i32 %add38 to i64
  %44 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col40 = getelementptr inbounds %struct.ppm, %struct.ppm* %44, i32 0, i32 2
  %45 = load i8*, i8** %col40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %45, i64 %idxprom39
  %call42 = call i32 @memcmp(i8* %40, i8* %arrayidx41, i64 3) #6
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.body.35
  %46 = load i32, i32* %n, align 4
  %inc45 = add nsw i32 %46, 1
  store i32 %inc45, i32* %n, align 4
  br label %for.end.49

if.end.46:                                        ; preds = %for.body.35
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %47 = load i32, i32* %x, align 4
  %inc48 = add nsw i32 %47, 1
  store i32 %inc48, i32* %x, align 4
  br label %for.cond.32

for.end.49:                                       ; preds = %if.then.44, %for.cond.32
  %48 = load i32, i32* %n, align 4
  %tobool50 = icmp ne i32 %48, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.end.49
  br label %for.end.54

if.end.52:                                        ; preds = %for.end.49
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %49 = load i32, i32* %y, align 4
  %dec = add nsw i32 %49, -1
  store i32 %dec, i32* %y, align 4
  br label %for.cond.29

for.end.54:                                       ; preds = %if.then.51, %for.cond.29
  %50 = load i32, i32* %n, align 4
  %tobool55 = icmp ne i32 %50, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %for.end.54
  %51 = load i32, i32* %y, align 4
  %add57 = add nsw i32 %51, 1
  store i32 %add57, i32* %hy, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %for.end.54
  %52 = load i32, i32* %hy, align 4
  %53 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height59 = getelementptr inbounds %struct.ppm, %struct.ppm* %53, i32 0, i32 1
  %54 = load i32, i32* %height59, align 4
  %cmp60 = icmp sge i32 %52, %54
  br i1 %cmp60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.end.58
  %55 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height62 = getelementptr inbounds %struct.ppm, %struct.ppm* %55, i32 0, i32 1
  %56 = load i32, i32* %height62, align 4
  %sub63 = sub nsw i32 %56, 1
  store i32 %sub63, i32* %hy, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.61, %if.end.58
  %57 = bitcast [3 x i8]* %tc to i8*
  %58 = load i32, i32* %ly, align 4
  %59 = load i32, i32* %rowstride, align 4
  %mul65 = mul nsw i32 %58, %59
  %idxprom66 = sext i32 %mul65 to i64
  %60 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col67 = getelementptr inbounds %struct.ppm, %struct.ppm* %60, i32 0, i32 2
  %61 = load i8*, i8** %col67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %61, i64 %idxprom66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %arrayidx68, i64 3, i32 1, i1 false)
  store i32 0, i32* %x, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.95, %if.end.64
  %62 = load i32, i32* %x, align 4
  %63 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width70 = getelementptr inbounds %struct.ppm, %struct.ppm* %63, i32 0, i32 0
  %64 = load i32, i32* %width70, align 4
  %cmp71 = icmp slt i32 %62, %64
  br i1 %cmp71, label %for.body.72, label %for.end.97

for.body.72:                                      ; preds = %for.cond.69
  store i32 0, i32* %n, align 4
  %65 = load i32, i32* %ly, align 4
  store i32 %65, i32* %y, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.89, %for.body.72
  %66 = load i32, i32* %y, align 4
  %67 = load i32, i32* %hy, align 4
  %cmp74 = icmp sle i32 %66, %67
  br i1 %cmp74, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.73
  %68 = load i32, i32* %y, align 4
  %69 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height75 = getelementptr inbounds %struct.ppm, %struct.ppm* %69, i32 0, i32 1
  %70 = load i32, i32* %height75, align 4
  %cmp76 = icmp slt i32 %68, %70
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.73
  %71 = phi i1 [ false, %for.cond.73 ], [ %cmp76, %land.rhs ]
  br i1 %71, label %for.body.77, label %for.end.91

for.body.77:                                      ; preds = %land.end
  %72 = bitcast [3 x i8]* %tc to i8*
  %73 = load i32, i32* %y, align 4
  %74 = load i32, i32* %rowstride, align 4
  %mul78 = mul nsw i32 %73, %74
  %75 = load i32, i32* %x, align 4
  %mul79 = mul nsw i32 %75, 3
  %add80 = add nsw i32 %mul78, %mul79
  %idxprom81 = sext i32 %add80 to i64
  %76 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col82 = getelementptr inbounds %struct.ppm, %struct.ppm* %76, i32 0, i32 2
  %77 = load i8*, i8** %col82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %77, i64 %idxprom81
  %call84 = call i32 @memcmp(i8* %72, i8* %arrayidx83, i64 3) #6
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %for.body.77
  %78 = load i32, i32* %n, align 4
  %inc87 = add nsw i32 %78, 1
  store i32 %inc87, i32* %n, align 4
  br label %for.end.91

if.end.88:                                        ; preds = %for.body.77
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %79 = load i32, i32* %y, align 4
  %inc90 = add nsw i32 %79, 1
  store i32 %inc90, i32* %y, align 4
  br label %for.cond.73

for.end.91:                                       ; preds = %if.then.86, %land.end
  %80 = load i32, i32* %n, align 4
  %tobool92 = icmp ne i32 %80, 0
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %for.end.91
  br label %for.end.97

if.end.94:                                        ; preds = %for.end.91
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %81 = load i32, i32* %x, align 4
  %inc96 = add nsw i32 %81, 1
  store i32 %inc96, i32* %x, align 4
  br label %for.cond.69

for.end.97:                                       ; preds = %if.then.93, %for.cond.69
  %82 = load i32, i32* %n, align 4
  %tobool98 = icmp ne i32 %82, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %for.end.97
  %83 = load i32, i32* %x, align 4
  store i32 %83, i32* %lx, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %for.end.97
  %84 = bitcast [3 x i8]* %tc to i8*
  %85 = load i32, i32* %ly, align 4
  %86 = load i32, i32* %rowstride, align 4
  %mul101 = mul nsw i32 %85, %86
  %87 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width102 = getelementptr inbounds %struct.ppm, %struct.ppm* %87, i32 0, i32 0
  %88 = load i32, i32* %width102, align 4
  %sub103 = sub nsw i32 %88, 1
  %mul104 = mul nsw i32 %sub103, 3
  %add105 = add nsw i32 %mul101, %mul104
  %idxprom106 = sext i32 %add105 to i64
  %89 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col107 = getelementptr inbounds %struct.ppm, %struct.ppm* %89, i32 0, i32 2
  %90 = load i8*, i8** %col107, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %90, i64 %idxprom106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %arrayidx108, i64 3, i32 1, i1 false)
  %91 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width109 = getelementptr inbounds %struct.ppm, %struct.ppm* %91, i32 0, i32 0
  %92 = load i32, i32* %width109, align 4
  %sub110 = sub nsw i32 %92, 1
  store i32 %sub110, i32* %x, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.134, %if.end.100
  %93 = load i32, i32* %x, align 4
  %cmp112 = icmp sge i32 %93, 0
  br i1 %cmp112, label %for.body.113, label %for.end.136

for.body.113:                                     ; preds = %for.cond.111
  store i32 0, i32* %n, align 4
  %94 = load i32, i32* %ly, align 4
  store i32 %94, i32* %y, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.128, %for.body.113
  %95 = load i32, i32* %y, align 4
  %96 = load i32, i32* %hy, align 4
  %cmp115 = icmp sle i32 %95, %96
  br i1 %cmp115, label %for.body.116, label %for.end.130

for.body.116:                                     ; preds = %for.cond.114
  %97 = bitcast [3 x i8]* %tc to i8*
  %98 = load i32, i32* %y, align 4
  %99 = load i32, i32* %rowstride, align 4
  %mul117 = mul nsw i32 %98, %99
  %100 = load i32, i32* %x, align 4
  %mul118 = mul nsw i32 %100, 3
  %add119 = add nsw i32 %mul117, %mul118
  %idxprom120 = sext i32 %add119 to i64
  %101 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col121 = getelementptr inbounds %struct.ppm, %struct.ppm* %101, i32 0, i32 2
  %102 = load i8*, i8** %col121, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %102, i64 %idxprom120
  %call123 = call i32 @memcmp(i8* %97, i8* %arrayidx122, i64 3) #6
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %for.body.116
  %103 = load i32, i32* %n, align 4
  %inc126 = add nsw i32 %103, 1
  store i32 %inc126, i32* %n, align 4
  br label %for.end.130

if.end.127:                                       ; preds = %for.body.116
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %104 = load i32, i32* %y, align 4
  %inc129 = add nsw i32 %104, 1
  store i32 %inc129, i32* %y, align 4
  br label %for.cond.114

for.end.130:                                      ; preds = %if.then.125, %for.cond.114
  %105 = load i32, i32* %n, align 4
  %tobool131 = icmp ne i32 %105, 0
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.end.130
  br label %for.end.136

if.end.133:                                       ; preds = %for.end.130
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %106 = load i32, i32* %x, align 4
  %dec135 = add nsw i32 %106, -1
  store i32 %dec135, i32* %x, align 4
  br label %for.cond.111

for.end.136:                                      ; preds = %if.then.132, %for.cond.111
  %107 = load i32, i32* %n, align 4
  %tobool137 = icmp ne i32 %107, 0
  br i1 %tobool137, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %for.end.136
  %108 = load i32, i32* %x, align 4
  %add139 = add nsw i32 %108, 1
  store i32 %add139, i32* %hx, align 4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %for.end.136
  %109 = load i32, i32* %room.addr, align 4
  %110 = load i32, i32* %lx, align 4
  %sub141 = sub nsw i32 %110, %109
  store i32 %sub141, i32* %lx, align 4
  %111 = load i32, i32* %lx, align 4
  %cmp142 = icmp slt i32 %111, 0
  br i1 %cmp142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.140
  store i32 0, i32* %lx, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.end.140
  %112 = load i32, i32* %room.addr, align 4
  %113 = load i32, i32* %ly, align 4
  %sub145 = sub nsw i32 %113, %112
  store i32 %sub145, i32* %ly, align 4
  %114 = load i32, i32* %ly, align 4
  %cmp146 = icmp slt i32 %114, 0
  br i1 %cmp146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.144
  store i32 0, i32* %ly, align 4
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.end.144
  %115 = load i32, i32* %room.addr, align 4
  %116 = load i32, i32* %hx, align 4
  %add149 = add nsw i32 %116, %115
  store i32 %add149, i32* %hx, align 4
  %117 = load i32, i32* %hx, align 4
  %118 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width150 = getelementptr inbounds %struct.ppm, %struct.ppm* %118, i32 0, i32 0
  %119 = load i32, i32* %width150, align 4
  %cmp151 = icmp sge i32 %117, %119
  br i1 %cmp151, label %if.then.152, label %if.end.155

if.then.152:                                      ; preds = %if.end.148
  %120 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width153 = getelementptr inbounds %struct.ppm, %struct.ppm* %120, i32 0, i32 0
  %121 = load i32, i32* %width153, align 4
  %sub154 = sub nsw i32 %121, 1
  store i32 %sub154, i32* %hx, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.152, %if.end.148
  %122 = load i32, i32* %room.addr, align 4
  %123 = load i32, i32* %hy, align 4
  %add156 = add nsw i32 %123, %122
  store i32 %add156, i32* %hy, align 4
  %124 = load i32, i32* %hy, align 4
  %125 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height157 = getelementptr inbounds %struct.ppm, %struct.ppm* %125, i32 0, i32 1
  %126 = load i32, i32* %height157, align 4
  %cmp158 = icmp sge i32 %124, %126
  br i1 %cmp158, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %if.end.155
  %127 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height160 = getelementptr inbounds %struct.ppm, %struct.ppm* %127, i32 0, i32 1
  %128 = load i32, i32* %height160, align 4
  %sub161 = sub nsw i32 %128, 1
  store i32 %sub161, i32* %hy, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %if.end.155
  %129 = load i32, i32* %hx, align 4
  %130 = load i32, i32* %lx, align 4
  %sub163 = sub nsw i32 %129, %130
  %131 = load i32, i32* %hy, align 4
  %132 = load i32, i32* %ly, align 4
  %sub164 = sub nsw i32 %131, %132
  call void @ppm_new(%struct.ppm* %tmp, i32 %sub163, i32 %sub164)
  %width165 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %133 = load i32, i32* %width165, align 4
  %mul166 = mul nsw i32 %133, 3
  store i32 %mul166, i32* %drowstride, align 4
  %134 = load i32, i32* %ly, align 4
  store i32 %134, i32* %y, align 4
  br label %for.cond.167

for.cond.167:                                     ; preds = %for.inc.190, %if.end.162
  %135 = load i32, i32* %y, align 4
  %136 = load i32, i32* %hy, align 4
  %cmp168 = icmp slt i32 %135, %136
  br i1 %cmp168, label %for.body.169, label %for.end.192

for.body.169:                                     ; preds = %for.cond.167
  %137 = load i32, i32* %lx, align 4
  store i32 %137, i32* %x, align 4
  br label %for.cond.170

for.cond.170:                                     ; preds = %for.inc.187, %for.body.169
  %138 = load i32, i32* %x, align 4
  %139 = load i32, i32* %hx, align 4
  %cmp171 = icmp slt i32 %138, %139
  br i1 %cmp171, label %for.body.172, label %for.end.189

for.body.172:                                     ; preds = %for.cond.170
  %140 = load i32, i32* %y, align 4
  %141 = load i32, i32* %ly, align 4
  %sub173 = sub nsw i32 %140, %141
  %142 = load i32, i32* %drowstride, align 4
  %mul174 = mul nsw i32 %sub173, %142
  %143 = load i32, i32* %x, align 4
  %144 = load i32, i32* %lx, align 4
  %sub175 = sub nsw i32 %143, %144
  %mul176 = mul nsw i32 %sub175, 3
  %add177 = add nsw i32 %mul174, %mul176
  %idxprom178 = sext i32 %add177 to i64
  %col179 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %145 = load i8*, i8** %col179, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %145, i64 %idxprom178
  %146 = load i32, i32* %y, align 4
  %147 = load i32, i32* %rowstride, align 4
  %mul181 = mul nsw i32 %146, %147
  %148 = load i32, i32* %x, align 4
  %mul182 = mul nsw i32 %148, 3
  %add183 = add nsw i32 %mul181, %mul182
  %idxprom184 = sext i32 %add183 to i64
  %149 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col185 = getelementptr inbounds %struct.ppm, %struct.ppm* %149, i32 0, i32 2
  %150 = load i8*, i8** %col185, align 8
  %arrayidx186 = getelementptr inbounds i8, i8* %150, i64 %idxprom184
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx180, i8* %arrayidx186, i64 3, i32 1, i1 false)
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.172
  %151 = load i32, i32* %x, align 4
  %inc188 = add nsw i32 %151, 1
  store i32 %inc188, i32* %x, align 4
  br label %for.cond.170

for.end.189:                                      ; preds = %for.cond.170
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.end.189
  %152 = load i32, i32* %y, align 4
  %inc191 = add nsw i32 %152, 1
  store i32 %inc191, i32* %y, align 4
  br label %for.cond.167

for.end.192:                                      ; preds = %for.cond.167
  %153 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %153)
  %col193 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %154 = load i8*, i8** %col193, align 8
  %155 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col194 = getelementptr inbounds %struct.ppm, %struct.ppm* %155, i32 0, i32 2
  store i8* %154, i8** %col194, align 8
  %width195 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %156 = load i32, i32* %width195, align 4
  %157 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width196 = getelementptr inbounds %struct.ppm, %struct.ppm* %157, i32 0, i32 0
  store i32 %156, i32* %width196, align 4
  %height197 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %158 = load i32, i32* %height197, align 4
  %159 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height198 = getelementptr inbounds %struct.ppm, %struct.ppm* %159, i32 0, i32 1
  store i32 %158, i32* %height198, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @ppm_pad(%struct.ppm* %p, i32 %left, i32 %right, i32 %top, i32 %bottom, i8* %bg) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  %bottom.addr = alloca i32, align 4
  %bg.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tmp = alloca %struct.ppm, align 8
  %row = alloca i8*, align 8
  %srcrow = alloca i8*, align 8
  %k = alloca i32, align 4
  %k39 = alloca i32, align 4
  %k62 = alloca i32, align 4
  %k103 = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  store i32 %top, i32* %top.addr, align 4
  store i32 %bottom, i32* %bottom.addr, align 4
  store i8* %bg, i8** %bg.addr, align 8
  %0 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4
  %3 = load i32, i32* %left.addr, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* %right.addr, align 4
  %add1 = add nsw i32 %add, %4
  %5 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %5, i32 0, i32 1
  %6 = load i32, i32* %height, align 4
  %7 = load i32, i32* %top.addr, align 4
  %add2 = add nsw i32 %6, %7
  %8 = load i32, i32* %bottom.addr, align 4
  %add3 = add nsw i32 %add2, %8
  call void @ppm_new(%struct.ppm* %tmp, i32 %add1, i32 %add3)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.120, %entry
  %9 = load i32, i32* %y, align 4
  %height4 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %10 = load i32, i32* %height4, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.122

for.body:                                         ; preds = %for.cond
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %11 = load i8*, i8** %col, align 8
  %12 = load i32, i32* %y, align 4
  %width7 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %13 = load i32, i32* %width7, align 4
  %mul = mul nsw i32 %12, %13
  %mul8 = mul nsw i32 %mul, 3
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  store i8* %add.ptr, i8** %row, align 8
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %top.addr, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %16 = load i32, i32* %y, align 4
  %height10 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %17 = load i32, i32* %height10, align 4
  %18 = load i32, i32* %bottom.addr, align 4
  %sub = sub nsw i32 %17, %18
  %cmp11 = icmp sge i32 %16, %sub
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %x, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then
  %19 = load i32, i32* %x, align 4
  %width13 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %20 = load i32, i32* %width13, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %21 = load i32, i32* %x, align 4
  %mul17 = mul nsw i32 %21, 3
  store i32 %mul17, i32* %k, align 4
  %22 = load i8*, i8** %bg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx, align 1
  %24 = load i32, i32* %k, align 4
  %add18 = add nsw i32 %24, 0
  %idxprom = sext i32 %add18 to i64
  %25 = load i8*, i8** %row, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  store i8 %23, i8* %arrayidx19, align 1
  %26 = load i8*, i8** %bg.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx20, align 1
  %28 = load i32, i32* %k, align 4
  %add21 = add nsw i32 %28, 1
  %idxprom22 = sext i32 %add21 to i64
  %29 = load i8*, i8** %row, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %29, i64 %idxprom22
  store i8 %27, i8* %arrayidx23, align 1
  %30 = load i8*, i8** %bg.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx24, align 1
  %32 = load i32, i32* %k, align 4
  %add25 = add nsw i32 %32, 2
  %idxprom26 = sext i32 %add25 to i64
  %33 = load i8*, i8** %row, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %33, i64 %idxprom26
  store i8 %31, i8* %arrayidx27, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %34 = load i32, i32* %x, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.120

if.end:                                           ; preds = %lor.lhs.false
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col28 = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 2
  %36 = load i8*, i8** %col28, align 8
  %37 = load i32, i32* %y, align 4
  %38 = load i32, i32* %top.addr, align 4
  %sub29 = sub nsw i32 %37, %38
  %39 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width30 = getelementptr inbounds %struct.ppm, %struct.ppm* %39, i32 0, i32 0
  %40 = load i32, i32* %width30, align 4
  %mul31 = mul nsw i32 %sub29, %40
  %mul32 = mul nsw i32 %mul31, 3
  %idx.ext33 = sext i32 %mul32 to i64
  %add.ptr34 = getelementptr inbounds i8, i8* %36, i64 %idx.ext33
  store i8* %add.ptr34, i8** %srcrow, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.53, %if.end
  %41 = load i32, i32* %x, align 4
  %42 = load i32, i32* %left.addr, align 4
  %cmp36 = icmp slt i32 %41, %42
  br i1 %cmp36, label %for.body.37, label %for.end.55

for.body.37:                                      ; preds = %for.cond.35
  %43 = load i32, i32* %x, align 4
  %mul40 = mul nsw i32 %43, 3
  store i32 %mul40, i32* %k39, align 4
  %44 = load i8*, i8** %bg.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx41, align 1
  %46 = load i32, i32* %k39, align 4
  %add42 = add nsw i32 %46, 0
  %idxprom43 = sext i32 %add42 to i64
  %47 = load i8*, i8** %row, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %47, i64 %idxprom43
  store i8 %45, i8* %arrayidx44, align 1
  %48 = load i8*, i8** %bg.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %48, i64 1
  %49 = load i8, i8* %arrayidx45, align 1
  %50 = load i32, i32* %k39, align 4
  %add46 = add nsw i32 %50, 1
  %idxprom47 = sext i32 %add46 to i64
  %51 = load i8*, i8** %row, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %51, i64 %idxprom47
  store i8 %49, i8* %arrayidx48, align 1
  %52 = load i8*, i8** %bg.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %52, i64 2
  %53 = load i8, i8* %arrayidx49, align 1
  %54 = load i32, i32* %k39, align 4
  %add50 = add nsw i32 %54, 2
  %idxprom51 = sext i32 %add50 to i64
  %55 = load i8*, i8** %row, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %55, i64 %idxprom51
  store i8 %53, i8* %arrayidx52, align 1
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.body.37
  %56 = load i32, i32* %x, align 4
  %inc54 = add nsw i32 %56, 1
  store i32 %inc54, i32* %x, align 4
  br label %for.cond.35

for.end.55:                                       ; preds = %for.cond.35
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.95, %for.end.55
  %57 = load i32, i32* %x, align 4
  %width57 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %58 = load i32, i32* %width57, align 4
  %59 = load i32, i32* %right.addr, align 4
  %sub58 = sub nsw i32 %58, %59
  %cmp59 = icmp slt i32 %57, %sub58
  br i1 %cmp59, label %for.body.60, label %for.end.97

for.body.60:                                      ; preds = %for.cond.56
  %60 = load i32, i32* %y, align 4
  %width63 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %61 = load i32, i32* %width63, align 4
  %mul64 = mul nsw i32 %60, %61
  %mul65 = mul nsw i32 %mul64, 3
  %62 = load i32, i32* %x, align 4
  %mul66 = mul nsw i32 %62, 3
  %add67 = add nsw i32 %mul65, %mul66
  store i32 %add67, i32* %k62, align 4
  %63 = load i32, i32* %x, align 4
  %64 = load i32, i32* %left.addr, align 4
  %sub68 = sub nsw i32 %63, %64
  %mul69 = mul nsw i32 %sub68, 3
  %add70 = add nsw i32 %mul69, 0
  %idxprom71 = sext i32 %add70 to i64
  %65 = load i8*, i8** %srcrow, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %65, i64 %idxprom71
  %66 = load i8, i8* %arrayidx72, align 1
  %67 = load i32, i32* %k62, align 4
  %add73 = add nsw i32 %67, 0
  %idxprom74 = sext i32 %add73 to i64
  %col75 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %68 = load i8*, i8** %col75, align 8
  %arrayidx76 = getelementptr inbounds i8, i8* %68, i64 %idxprom74
  store i8 %66, i8* %arrayidx76, align 1
  %69 = load i32, i32* %x, align 4
  %70 = load i32, i32* %left.addr, align 4
  %sub77 = sub nsw i32 %69, %70
  %mul78 = mul nsw i32 %sub77, 3
  %add79 = add nsw i32 %mul78, 1
  %idxprom80 = sext i32 %add79 to i64
  %71 = load i8*, i8** %srcrow, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %71, i64 %idxprom80
  %72 = load i8, i8* %arrayidx81, align 1
  %73 = load i32, i32* %k62, align 4
  %add82 = add nsw i32 %73, 1
  %idxprom83 = sext i32 %add82 to i64
  %col84 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %74 = load i8*, i8** %col84, align 8
  %arrayidx85 = getelementptr inbounds i8, i8* %74, i64 %idxprom83
  store i8 %72, i8* %arrayidx85, align 1
  %75 = load i32, i32* %x, align 4
  %76 = load i32, i32* %left.addr, align 4
  %sub86 = sub nsw i32 %75, %76
  %mul87 = mul nsw i32 %sub86, 3
  %add88 = add nsw i32 %mul87, 2
  %idxprom89 = sext i32 %add88 to i64
  %77 = load i8*, i8** %srcrow, align 8
  %arrayidx90 = getelementptr inbounds i8, i8* %77, i64 %idxprom89
  %78 = load i8, i8* %arrayidx90, align 1
  %79 = load i32, i32* %k62, align 4
  %add91 = add nsw i32 %79, 2
  %idxprom92 = sext i32 %add91 to i64
  %col93 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %80 = load i8*, i8** %col93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %80, i64 %idxprom92
  store i8 %78, i8* %arrayidx94, align 1
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.60
  %81 = load i32, i32* %x, align 4
  %inc96 = add nsw i32 %81, 1
  store i32 %inc96, i32* %x, align 4
  br label %for.cond.56

for.end.97:                                       ; preds = %for.cond.56
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.117, %for.end.97
  %82 = load i32, i32* %x, align 4
  %width99 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %83 = load i32, i32* %width99, align 4
  %cmp100 = icmp slt i32 %82, %83
  br i1 %cmp100, label %for.body.101, label %for.end.119

for.body.101:                                     ; preds = %for.cond.98
  %84 = load i32, i32* %x, align 4
  %mul104 = mul nsw i32 %84, 3
  store i32 %mul104, i32* %k103, align 4
  %85 = load i8*, i8** %bg.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %85, i64 0
  %86 = load i8, i8* %arrayidx105, align 1
  %87 = load i32, i32* %k103, align 4
  %add106 = add nsw i32 %87, 0
  %idxprom107 = sext i32 %add106 to i64
  %88 = load i8*, i8** %row, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %88, i64 %idxprom107
  store i8 %86, i8* %arrayidx108, align 1
  %89 = load i8*, i8** %bg.addr, align 8
  %arrayidx109 = getelementptr inbounds i8, i8* %89, i64 1
  %90 = load i8, i8* %arrayidx109, align 1
  %91 = load i32, i32* %k103, align 4
  %add110 = add nsw i32 %91, 1
  %idxprom111 = sext i32 %add110 to i64
  %92 = load i8*, i8** %row, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %92, i64 %idxprom111
  store i8 %90, i8* %arrayidx112, align 1
  %93 = load i8*, i8** %bg.addr, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %93, i64 2
  %94 = load i8, i8* %arrayidx113, align 1
  %95 = load i32, i32* %k103, align 4
  %add114 = add nsw i32 %95, 2
  %idxprom115 = sext i32 %add114 to i64
  %96 = load i8*, i8** %row, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %96, i64 %idxprom115
  store i8 %94, i8* %arrayidx116, align 1
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.101
  %97 = load i32, i32* %x, align 4
  %inc118 = add nsw i32 %97, 1
  store i32 %inc118, i32* %x, align 4
  br label %for.cond.98

for.end.119:                                      ; preds = %for.cond.98
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.end.119, %for.end
  %98 = load i32, i32* %y, align 4
  %inc121 = add nsw i32 %98, 1
  store i32 %inc121, i32* %y, align 4
  br label %for.cond

for.end.122:                                      ; preds = %for.cond
  %99 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %99)
  %width123 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %100 = load i32, i32* %width123, align 4
  %101 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width124 = getelementptr inbounds %struct.ppm, %struct.ppm* %101, i32 0, i32 0
  store i32 %100, i32* %width124, align 4
  %height125 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %102 = load i32, i32* %height125, align 4
  %103 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height126 = getelementptr inbounds %struct.ppm, %struct.ppm* %103, i32 0, i32 1
  store i32 %102, i32* %height126, align 4
  %col127 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %104 = load i8*, i8** %col127, align 8
  %105 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col128 = getelementptr inbounds %struct.ppm, %struct.ppm* %105, i32 0, i32 2
  store i8* %104, i8** %col128, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppm_save(%struct.ppm* %p, i8* %fn) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %fn.addr = alloca i8*, align 8
  %f = alloca %struct._IO_FILE*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load i8*, i8** %fn.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %f, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i32 0, i32 0)) #2
  %2 = load i8*, i8** %fn.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  %call3 = call i32* @__errno_location() #7
  %3 = load i32, i32* %call3, align 4
  %call4 = call i8* @g_strerror(i32 %3) #7
  call void (i8*, ...) @g_message(i8* %call1, i8* %call2, i8* %call4)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %5 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %5, i32 0, i32 0
  %6 = load i32, i32* %width, align 4
  %7 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %7, i32 0, i32 1
  %8 = load i32, i32* %height, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %6, i32 %8)
  %9 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 2
  %10 = load i8*, i8** %col, align 8
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width6 = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 0
  %12 = load i32, i32* %width6, align 4
  %mul = mul nsw i32 %12, 3
  %13 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height7 = getelementptr inbounds %struct.ppm, %struct.ppm* %13, i32 0, i32 1
  %14 = load i32, i32* %height7, align 4
  %mul8 = mul nsw i32 %mul, %14
  %conv = sext i32 %mul8 to i64
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call9 = call i64 @fwrite(i8* %10, i64 %conv, i64 1, %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %16)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @edgepad(%struct.ppm* %p, i32 %left, i32 %right, i32 %top, i32 %bottom) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %top.addr = alloca i32, align 4
  %bottom.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %tmp = alloca %struct.ppm, align 8
  %testcol = alloca [3 x i8], align 1
  %srowstride = alloca i32, align 4
  %drowstride = alloca i32, align 4
  %col59 = alloca i8*, align 8
  %tmprow = alloca i8*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  store i32 %top, i32* %top.addr, align 4
  store i32 %bottom, i32* %bottom.addr, align 4
  %0 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = bitcast [3 x i8]* %testcol to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @edgepad.testcol, i32 0, i32 0), i64 3, i32 1, i1 false)
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 0
  %3 = load i32, i32* %width, align 4
  %4 = load i32, i32* %left.addr, align 4
  %add = add nsw i32 %3, %4
  %5 = load i32, i32* %right.addr, align 4
  %add4 = add nsw i32 %add, %5
  %6 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %6, i32 0, i32 1
  %7 = load i32, i32* %height, align 4
  %8 = load i32, i32* %top.addr, align 4
  %add5 = add nsw i32 %7, %8
  %9 = load i32, i32* %bottom.addr, align 4
  %add6 = add nsw i32 %add5, %9
  call void @ppm_new(%struct.ppm* %tmp, i32 %add4, i32 %add6)
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %testcol, i32 0, i32 0
  call void @fill(%struct.ppm* %tmp, i8* %arraydecay)
  %10 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width7 = getelementptr inbounds %struct.ppm, %struct.ppm* %10, i32 0, i32 0
  %11 = load i32, i32* %width7, align 4
  %mul = mul nsw i32 %11, 3
  store i32 %mul, i32* %srowstride, align 4
  %width8 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %12 = load i32, i32* %width8, align 4
  %mul9 = mul nsw i32 %12, 3
  store i32 %mul9, i32* %drowstride, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %top.addr, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %y, align 4
  %16 = load i32, i32* %drowstride, align 4
  %mul10 = mul nsw i32 %15, %16
  %17 = load i32, i32* %left.addr, align 4
  %mul11 = mul nsw i32 %17, 3
  %add12 = add nsw i32 %mul10, %mul11
  %idxprom = sext i32 %add12 to i64
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %18 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %idxprom
  %19 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col13 = getelementptr inbounds %struct.ppm, %struct.ppm* %19, i32 0, i32 2
  %20 = load i8*, i8** %col13, align 8
  %21 = load i32, i32* %srowstride, align 4
  %conv = sext i32 %21 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx, i8* %20, i64 %conv, i32 1, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %y, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.29, %for.end
  %23 = load i32, i32* %y, align 4
  %24 = load i32, i32* %top.addr, align 4
  %sub = sub nsw i32 %23, %24
  %25 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height15 = getelementptr inbounds %struct.ppm, %struct.ppm* %25, i32 0, i32 1
  %26 = load i32, i32* %height15, align 4
  %cmp16 = icmp slt i32 %sub, %26
  br i1 %cmp16, label %for.body.18, label %for.end.31

for.body.18:                                      ; preds = %for.cond.14
  %27 = load i32, i32* %y, align 4
  %28 = load i32, i32* %drowstride, align 4
  %mul19 = mul nsw i32 %27, %28
  %29 = load i32, i32* %left.addr, align 4
  %mul20 = mul nsw i32 %29, 3
  %add21 = add nsw i32 %mul19, %mul20
  %idxprom22 = sext i32 %add21 to i64
  %col23 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %30 = load i8*, i8** %col23, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %30, i64 %idxprom22
  %31 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col25 = getelementptr inbounds %struct.ppm, %struct.ppm* %31, i32 0, i32 2
  %32 = load i8*, i8** %col25, align 8
  %33 = load i32, i32* %y, align 4
  %34 = load i32, i32* %top.addr, align 4
  %sub26 = sub nsw i32 %33, %34
  %35 = load i32, i32* %srowstride, align 4
  %mul27 = mul nsw i32 %sub26, %35
  %idx.ext = sext i32 %mul27 to i64
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %idx.ext
  %36 = load i32, i32* %srowstride, align 4
  %conv28 = sext i32 %36 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx24, i8* %add.ptr, i64 %conv28, i32 1, i1 false)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.18
  %37 = load i32, i32* %y, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, i32* %y, align 4
  br label %for.cond.14

for.end.31:                                       ; preds = %for.cond.14
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.50, %for.end.31
  %38 = load i32, i32* %y, align 4
  %height33 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %39 = load i32, i32* %height33, align 4
  %cmp34 = icmp slt i32 %38, %39
  br i1 %cmp34, label %for.body.36, label %for.end.52

for.body.36:                                      ; preds = %for.cond.32
  %40 = load i32, i32* %y, align 4
  %41 = load i32, i32* %drowstride, align 4
  %mul37 = mul nsw i32 %40, %41
  %42 = load i32, i32* %left.addr, align 4
  %mul38 = mul nsw i32 %42, 3
  %add39 = add nsw i32 %mul37, %mul38
  %idxprom40 = sext i32 %add39 to i64
  %col41 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %43 = load i8*, i8** %col41, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %43, i64 %idxprom40
  %44 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col43 = getelementptr inbounds %struct.ppm, %struct.ppm* %44, i32 0, i32 2
  %45 = load i8*, i8** %col43, align 8
  %46 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height44 = getelementptr inbounds %struct.ppm, %struct.ppm* %46, i32 0, i32 1
  %47 = load i32, i32* %height44, align 4
  %sub45 = sub nsw i32 %47, 1
  %48 = load i32, i32* %srowstride, align 4
  %mul46 = mul nsw i32 %sub45, %48
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %45, i64 %idx.ext47
  %49 = load i32, i32* %srowstride, align 4
  %conv49 = sext i32 %49 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx42, i8* %add.ptr48, i64 %conv49, i32 1, i1 false)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.36
  %50 = load i32, i32* %y, align 4
  %inc51 = add nsw i32 %50, 1
  store i32 %inc51, i32* %y, align 4
  br label %for.cond.32

for.end.52:                                       ; preds = %for.cond.32
  store i32 0, i32* %y, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.106, %for.end.52
  %51 = load i32, i32* %y, align 4
  %height54 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %52 = load i32, i32* %height54, align 4
  %cmp55 = icmp slt i32 %51, %52
  br i1 %cmp55, label %for.body.57, label %for.end.108

for.body.57:                                      ; preds = %for.cond.53
  %col61 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %53 = load i8*, i8** %col61, align 8
  %54 = load i32, i32* %y, align 4
  %55 = load i32, i32* %drowstride, align 4
  %mul62 = mul nsw i32 %54, %55
  %idx.ext63 = sext i32 %mul62 to i64
  %add.ptr64 = getelementptr inbounds i8, i8* %53, i64 %idx.ext63
  store i8* %add.ptr64, i8** %tmprow, align 8
  %col65 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %56 = load i8*, i8** %col65, align 8
  %57 = load i32, i32* %y, align 4
  %58 = load i32, i32* %drowstride, align 4
  %mul66 = mul nsw i32 %57, %58
  %idx.ext67 = sext i32 %mul66 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %56, i64 %idx.ext67
  %59 = load i32, i32* %left.addr, align 4
  %mul69 = mul nsw i32 %59, 3
  %idx.ext70 = sext i32 %mul69 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %add.ptr68, i64 %idx.ext70
  store i8* %add.ptr71, i8** %col59, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.79, %for.body.57
  %60 = load i32, i32* %x, align 4
  %61 = load i32, i32* %left.addr, align 4
  %cmp73 = icmp slt i32 %60, %61
  br i1 %cmp73, label %for.body.75, label %for.end.81

for.body.75:                                      ; preds = %for.cond.72
  %62 = load i32, i32* %x, align 4
  %mul76 = mul nsw i32 %62, 3
  %idxprom77 = sext i32 %mul76 to i64
  %63 = load i8*, i8** %tmprow, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %63, i64 %idxprom77
  %64 = load i8*, i8** %col59, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx78, i8* %64, i64 3, i32 1, i1 false)
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.75
  %65 = load i32, i32* %x, align 4
  %inc80 = add nsw i32 %65, 1
  store i32 %inc80, i32* %x, align 4
  br label %for.cond.72

for.end.81:                                       ; preds = %for.cond.72
  %col82 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %66 = load i8*, i8** %col82, align 8
  %67 = load i32, i32* %y, align 4
  %68 = load i32, i32* %drowstride, align 4
  %mul83 = mul nsw i32 %67, %68
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %66, i64 %idx.ext84
  %width86 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %69 = load i32, i32* %width86, align 4
  %70 = load i32, i32* %right.addr, align 4
  %sub87 = sub nsw i32 %69, %70
  %sub88 = sub nsw i32 %sub87, 1
  %mul89 = mul nsw i32 %sub88, 3
  %idx.ext90 = sext i32 %mul89 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %add.ptr85, i64 %idx.ext90
  store i8* %add.ptr91, i8** %col59, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.103, %for.end.81
  %71 = load i32, i32* %x, align 4
  %72 = load i32, i32* %right.addr, align 4
  %cmp93 = icmp slt i32 %71, %72
  br i1 %cmp93, label %for.body.95, label %for.end.105

for.body.95:                                      ; preds = %for.cond.92
  %73 = load i32, i32* %x, align 4
  %width96 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %74 = load i32, i32* %width96, align 4
  %add97 = add nsw i32 %73, %74
  %75 = load i32, i32* %right.addr, align 4
  %sub98 = sub nsw i32 %add97, %75
  %sub99 = sub nsw i32 %sub98, 1
  %mul100 = mul nsw i32 %sub99, 3
  %idxprom101 = sext i32 %mul100 to i64
  %76 = load i8*, i8** %tmprow, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %76, i64 %idxprom101
  %77 = load i8*, i8** %col59, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %arrayidx102, i8* %77, i64 3, i32 1, i1 false)
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.95
  %78 = load i32, i32* %x, align 4
  %inc104 = add nsw i32 %78, 1
  store i32 %inc104, i32* %x, align 4
  br label %for.cond.92

for.end.105:                                      ; preds = %for.cond.92
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %79 = load i32, i32* %y, align 4
  %inc107 = add nsw i32 %79, 1
  store i32 %inc107, i32* %y, align 4
  br label %for.cond.53

for.end.108:                                      ; preds = %for.cond.53
  %80 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %80)
  %width109 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %81 = load i32, i32* %width109, align 4
  %82 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width110 = getelementptr inbounds %struct.ppm, %struct.ppm* %82, i32 0, i32 0
  store i32 %81, i32* %width110, align 4
  %height111 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %83 = load i32, i32* %height111, align 4
  %84 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height112 = getelementptr inbounds %struct.ppm, %struct.ppm* %84, i32 0, i32 1
  store i32 %83, i32* %height112, align 4
  %col113 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %85 = load i8*, i8** %col113, align 8
  %86 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col114 = getelementptr inbounds %struct.ppm, %struct.ppm* %86, i32 0, i32 2
  store i8* %85, i8** %col114, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppm_apply_gamma(%struct.ppm* %p, float %e, i32 %r, i32 %g, i32 %b) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %e.addr = alloca float, align 4
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %l = alloca i32, align 4
  %xlat = alloca [256 x i8], align 16
  %pix = alloca i8*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store float %e, float* %e.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 1
  %3 = load i32, i32* %height, align 4
  %mul1 = mul nsw i32 %mul, %3
  store i32 %mul1, i32* %l, align 4
  %4 = load float, float* %e.addr, align 4
  %conv = fpext float %4 to double
  %cmp = fcmp ogt double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %x, align 4
  %cmp3 = icmp slt i32 %5, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %x, align 4
  %conv5 = sitofp i32 %6 to double
  %div = fdiv double %conv5, 2.550000e+02
  %7 = load float, float* %e.addr, align 4
  %conv6 = fpext float %7 to double
  %div7 = fdiv double 1.000000e+00, %conv6
  %call = call double @pow(double %div, double %div7) #2
  %mul8 = fmul double %call, 2.550000e+02
  %conv9 = fptoui double %mul8 to i8
  %8 = load i32, i32* %x, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom
  store i8 %conv9, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.40

if.else:                                          ; preds = %entry
  %10 = load float, float* %e.addr, align 4
  %conv10 = fpext float %10 to double
  %cmp11 = fcmp olt double %conv10, 0.000000e+00
  br i1 %cmp11, label %if.then.13, label %if.else.30

if.then.13:                                       ; preds = %if.else
  store i32 0, i32* %x, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.27, %if.then.13
  %11 = load i32, i32* %x, align 4
  %cmp15 = icmp slt i32 %11, 256
  br i1 %cmp15, label %for.body.17, label %for.end.29

for.body.17:                                      ; preds = %for.cond.14
  %12 = load i32, i32* %x, align 4
  %conv18 = sitofp i32 %12 to double
  %div19 = fdiv double %conv18, 2.550000e+02
  %13 = load float, float* %e.addr, align 4
  %conv20 = fpext float %13 to double
  %div21 = fdiv double -1.000000e+00, %conv20
  %call22 = call double @pow(double %div19, double %div21) #2
  %mul23 = fmul double %call22, 2.550000e+02
  %conv24 = fptoui double %mul23 to i8
  %14 = load i32, i32* %x, align 4
  %sub = sub nsw i32 255, %14
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom25
  store i8 %conv24, i8* %arrayidx26, align 1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.17
  %15 = load i32, i32* %x, align 4
  %inc28 = add nsw i32 %15, 1
  store i32 %inc28, i32* %x, align 4
  br label %for.cond.14

for.end.29:                                       ; preds = %for.cond.14
  br label %if.end

if.else.30:                                       ; preds = %if.else
  store i32 0, i32* %x, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.37, %if.else.30
  %16 = load i32, i32* %x, align 4
  %cmp32 = icmp slt i32 %16, 256
  br i1 %cmp32, label %for.body.34, label %for.end.39

for.body.34:                                      ; preds = %for.cond.31
  %17 = load i32, i32* %x, align 4
  %idxprom35 = sext i32 %17 to i64
  %arrayidx36 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom35
  store i8 0, i8* %arrayidx36, align 1
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.34
  %18 = load i32, i32* %x, align 4
  %inc38 = add nsw i32 %18, 1
  store i32 %inc38, i32* %x, align 4
  br label %for.cond.31

for.end.39:                                       ; preds = %for.cond.31
  br label %if.end

if.end:                                           ; preds = %for.end.39, %for.end.29
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %for.end
  %19 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %19, i32 0, i32 2
  %20 = load i8*, i8** %col, align 8
  store i8* %20, i8** %pix, align 8
  %21 = load i32, i32* %r.addr, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %if.end.40
  store i32 0, i32* %x, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.52, %if.then.41
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %l, align 4
  %cmp43 = icmp slt i32 %22, %23
  br i1 %cmp43, label %for.body.45, label %for.end.53

for.body.45:                                      ; preds = %for.cond.42
  %24 = load i32, i32* %x, align 4
  %idxprom46 = sext i32 %24 to i64
  %25 = load i8*, i8** %pix, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %25, i64 %idxprom46
  %26 = load i8, i8* %arrayidx47, align 1
  %idxprom48 = zext i8 %26 to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom48
  %27 = load i8, i8* %arrayidx49, align 1
  %28 = load i32, i32* %x, align 4
  %idxprom50 = sext i32 %28 to i64
  %29 = load i8*, i8** %pix, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %29, i64 %idxprom50
  store i8 %27, i8* %arrayidx51, align 1
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.45
  %30 = load i32, i32* %x, align 4
  %add = add nsw i32 %30, 3
  store i32 %add, i32* %x, align 4
  br label %for.cond.42

for.end.53:                                       ; preds = %for.cond.42
  br label %if.end.54

if.end.54:                                        ; preds = %for.end.53, %if.end.40
  %31 = load i32, i32* %g.addr, align 4
  %tobool55 = icmp ne i32 %31, 0
  br i1 %tobool55, label %if.then.56, label %if.end.70

if.then.56:                                       ; preds = %if.end.54
  store i32 1, i32* %x, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.67, %if.then.56
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %l, align 4
  %cmp58 = icmp slt i32 %32, %33
  br i1 %cmp58, label %for.body.60, label %for.end.69

for.body.60:                                      ; preds = %for.cond.57
  %34 = load i32, i32* %x, align 4
  %idxprom61 = sext i32 %34 to i64
  %35 = load i8*, i8** %pix, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %35, i64 %idxprom61
  %36 = load i8, i8* %arrayidx62, align 1
  %idxprom63 = zext i8 %36 to i64
  %arrayidx64 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom63
  %37 = load i8, i8* %arrayidx64, align 1
  %38 = load i32, i32* %x, align 4
  %idxprom65 = sext i32 %38 to i64
  %39 = load i8*, i8** %pix, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %39, i64 %idxprom65
  store i8 %37, i8* %arrayidx66, align 1
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.60
  %40 = load i32, i32* %x, align 4
  %add68 = add nsw i32 %40, 3
  store i32 %add68, i32* %x, align 4
  br label %for.cond.57

for.end.69:                                       ; preds = %for.cond.57
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %if.end.54
  %41 = load i32, i32* %b.addr, align 4
  %tobool71 = icmp ne i32 %41, 0
  br i1 %tobool71, label %if.then.72, label %if.end.86

if.then.72:                                       ; preds = %if.end.70
  store i32 2, i32* %x, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.83, %if.then.72
  %42 = load i32, i32* %x, align 4
  %43 = load i32, i32* %l, align 4
  %cmp74 = icmp slt i32 %42, %43
  br i1 %cmp74, label %for.body.76, label %for.end.85

for.body.76:                                      ; preds = %for.cond.73
  %44 = load i32, i32* %x, align 4
  %idxprom77 = sext i32 %44 to i64
  %45 = load i8*, i8** %pix, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %45, i64 %idxprom77
  %46 = load i8, i8* %arrayidx78, align 1
  %idxprom79 = zext i8 %46 to i64
  %arrayidx80 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom79
  %47 = load i8, i8* %arrayidx80, align 1
  %48 = load i32, i32* %x, align 4
  %idxprom81 = sext i32 %48 to i64
  %49 = load i8*, i8** %pix, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %49, i64 %idxprom81
  store i8 %47, i8* %arrayidx82, align 1
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.76
  %50 = load i32, i32* %x, align 4
  %add84 = add nsw i32 %50, 3
  store i32 %add84, i32* %x, align 4
  br label %for.cond.73

for.end.85:                                       ; preds = %for.cond.73
  br label %if.end.86

if.end.86:                                        ; preds = %for.end.85, %if.end.70
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #5

; Function Attrs: nounwind uwtable
define void @ppm_apply_brightness(%struct.ppm* %p, float %e, i32 %r, i32 %g, i32 %b) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %e.addr = alloca float, align 4
  %r.addr = alloca i32, align 4
  %g.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %l = alloca i32, align 4
  %xlat = alloca [256 x i8], align 16
  %pix = alloca i8*, align 8
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store float %e, float* %e.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  %2 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 1
  %3 = load i32, i32* %height, align 4
  %mul1 = mul nsw i32 %mul, %3
  store i32 %mul1, i32* %l, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %4, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %x, align 4
  %conv = sitofp i32 %5 to float
  %6 = load float, float* %e.addr, align 4
  %mul2 = fmul float %conv, %6
  %conv3 = fptoui float %mul2 to i8
  %7 = load i32, i32* %x, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %x, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %9, i32 0, i32 2
  %10 = load i8*, i8** %col, align 8
  store i8* %10, i8** %pix, align 8
  %11 = load i32, i32* %r.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %x, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.14, %if.then
  %12 = load i32, i32* %x, align 4
  %13 = load i32, i32* %l, align 4
  %cmp5 = icmp slt i32 %12, %13
  br i1 %cmp5, label %for.body.7, label %for.end.15

for.body.7:                                       ; preds = %for.cond.4
  %14 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load i8*, i8** %pix, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %15, i64 %idxprom8
  %16 = load i8, i8* %arrayidx9, align 1
  %idxprom10 = zext i8 %16 to i64
  %arrayidx11 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom10
  %17 = load i8, i8* %arrayidx11, align 1
  %18 = load i32, i32* %x, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load i8*, i8** %pix, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %19, i64 %idxprom12
  store i8 %17, i8* %arrayidx13, align 1
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.7
  %20 = load i32, i32* %x, align 4
  %add = add nsw i32 %20, 3
  store i32 %add, i32* %x, align 4
  br label %for.cond.4

for.end.15:                                       ; preds = %for.cond.4
  br label %if.end

if.end:                                           ; preds = %for.end.15, %for.end
  %21 = load i32, i32* %g.addr, align 4
  %tobool16 = icmp ne i32 %21, 0
  br i1 %tobool16, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %if.end
  store i32 1, i32* %x, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.28, %if.then.17
  %22 = load i32, i32* %x, align 4
  %23 = load i32, i32* %l, align 4
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %for.body.21, label %for.end.30

for.body.21:                                      ; preds = %for.cond.18
  %24 = load i32, i32* %x, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load i8*, i8** %pix, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %25, i64 %idxprom22
  %26 = load i8, i8* %arrayidx23, align 1
  %idxprom24 = zext i8 %26 to i64
  %arrayidx25 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom24
  %27 = load i8, i8* %arrayidx25, align 1
  %28 = load i32, i32* %x, align 4
  %idxprom26 = sext i32 %28 to i64
  %29 = load i8*, i8** %pix, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %29, i64 %idxprom26
  store i8 %27, i8* %arrayidx27, align 1
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.21
  %30 = load i32, i32* %x, align 4
  %add29 = add nsw i32 %30, 3
  store i32 %add29, i32* %x, align 4
  br label %for.cond.18

for.end.30:                                       ; preds = %for.cond.18
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %if.end
  %31 = load i32, i32* %b.addr, align 4
  %tobool32 = icmp ne i32 %31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.47

if.then.33:                                       ; preds = %if.end.31
  store i32 2, i32* %x, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.44, %if.then.33
  %32 = load i32, i32* %x, align 4
  %33 = load i32, i32* %l, align 4
  %cmp35 = icmp slt i32 %32, %33
  br i1 %cmp35, label %for.body.37, label %for.end.46

for.body.37:                                      ; preds = %for.cond.34
  %34 = load i32, i32* %x, align 4
  %idxprom38 = sext i32 %34 to i64
  %35 = load i8*, i8** %pix, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %35, i64 %idxprom38
  %36 = load i8, i8* %arrayidx39, align 1
  %idxprom40 = zext i8 %36 to i64
  %arrayidx41 = getelementptr inbounds [256 x i8], [256 x i8]* %xlat, i32 0, i64 %idxprom40
  %37 = load i8, i8* %arrayidx41, align 1
  %38 = load i32, i32* %x, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i8*, i8** %pix, align 8
  %arrayidx43 = getelementptr inbounds i8, i8* %39, i64 %idxprom42
  store i8 %37, i8* %arrayidx43, align 1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.37
  %40 = load i32, i32* %x, align 4
  %add45 = add nsw i32 %40, 3
  store i32 %add45, i32* %x, align 4
  br label %for.cond.34

for.end.46:                                       ; preds = %for.cond.34
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %if.end.31
  ret void
}

; Function Attrs: nounwind uwtable
define void @blur(%struct.ppm* %p, i32 %xrad, i32 %yrad) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %xrad.addr = alloca i32, align 4
  %yrad.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %k = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  %tmp = alloca %struct.ppm, align 8
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %n = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store i32 %xrad, i32* %xrad.addr, align 4
  store i32 %yrad, i32* %yrad.addr, align 4
  %0 = bitcast %struct.ppm* %tmp to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %1, i32 0, i32 0
  %2 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %2, 3
  store i32 %mul, i32* %rowstride, align 4
  %3 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width6 = getelementptr inbounds %struct.ppm, %struct.ppm* %3, i32 0, i32 0
  %4 = load i32, i32* %width6, align 4
  %5 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %5, i32 0, i32 1
  %6 = load i32, i32* %height, align 4
  call void @ppm_new(%struct.ppm* %tmp, i32 %4, i32 %6)
  store i32 0, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.76, %entry
  %7 = load i32, i32* %y, align 4
  %8 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height7 = getelementptr inbounds %struct.ppm, %struct.ppm* %8, i32 0, i32 1
  %9 = load i32, i32* %height7, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end.78

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.73, %for.body
  %10 = load i32, i32* %x, align 4
  %11 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width9 = getelementptr inbounds %struct.ppm, %struct.ppm* %11, i32 0, i32 0
  %12 = load i32, i32* %width9, align 4
  %cmp10 = icmp slt i32 %10, %12
  br i1 %cmp10, label %for.body.11, label %for.end.75

for.body.11:                                      ; preds = %for.cond.8
  store i32 0, i32* %n, align 4
  store i32 0, i32* %b, align 4
  store i32 0, i32* %g, align 4
  store i32 0, i32* %r, align 4
  %13 = load i32, i32* %y, align 4
  %14 = load i32, i32* %yrad.addr, align 4
  %sub = sub nsw i32 %13, %14
  store i32 %sub, i32* %ty, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.50, %for.body.11
  %15 = load i32, i32* %ty, align 4
  %16 = load i32, i32* %y, align 4
  %17 = load i32, i32* %yrad.addr, align 4
  %add = add nsw i32 %16, %17
  %cmp13 = icmp sle i32 %15, %add
  br i1 %cmp13, label %for.body.14, label %for.end.52

for.body.14:                                      ; preds = %for.cond.12
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %xrad.addr, align 4
  %sub15 = sub nsw i32 %18, %19
  store i32 %sub15, i32* %tx, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.14
  %20 = load i32, i32* %tx, align 4
  %21 = load i32, i32* %x, align 4
  %22 = load i32, i32* %xrad.addr, align 4
  %add17 = add nsw i32 %21, %22
  %cmp18 = icmp sle i32 %20, %add17
  br i1 %cmp18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.16
  %23 = load i32, i32* %ty, align 4
  %cmp20 = icmp slt i32 %23, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.19
  br label %for.inc

if.end:                                           ; preds = %for.body.19
  %24 = load i32, i32* %ty, align 4
  %25 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height21 = getelementptr inbounds %struct.ppm, %struct.ppm* %25, i32 0, i32 1
  %26 = load i32, i32* %height21, align 4
  %cmp22 = icmp sge i32 %24, %26
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  br label %for.inc

if.end.24:                                        ; preds = %if.end
  %27 = load i32, i32* %tx, align 4
  %cmp25 = icmp slt i32 %27, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.24
  br label %for.inc

if.end.27:                                        ; preds = %if.end.24
  %28 = load i32, i32* %tx, align 4
  %29 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width28 = getelementptr inbounds %struct.ppm, %struct.ppm* %29, i32 0, i32 0
  %30 = load i32, i32* %width28, align 4
  %cmp29 = icmp sge i32 %28, %30
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.27
  br label %for.inc

if.end.31:                                        ; preds = %if.end.27
  %31 = load i32, i32* %ty, align 4
  %32 = load i32, i32* %rowstride, align 4
  %mul32 = mul nsw i32 %31, %32
  %33 = load i32, i32* %tx, align 4
  %mul33 = mul nsw i32 %33, 3
  %add34 = add nsw i32 %mul32, %mul33
  store i32 %add34, i32* %k, align 4
  %34 = load i32, i32* %k, align 4
  %add35 = add nsw i32 %34, 0
  %idxprom = sext i32 %add35 to i64
  %35 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %35, i32 0, i32 2
  %36 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 %idxprom
  %37 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %37 to i32
  %38 = load i32, i32* %r, align 4
  %add36 = add nsw i32 %38, %conv
  store i32 %add36, i32* %r, align 4
  %39 = load i32, i32* %k, align 4
  %add37 = add nsw i32 %39, 1
  %idxprom38 = sext i32 %add37 to i64
  %40 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col39 = getelementptr inbounds %struct.ppm, %struct.ppm* %40, i32 0, i32 2
  %41 = load i8*, i8** %col39, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %41, i64 %idxprom38
  %42 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %42 to i32
  %43 = load i32, i32* %g, align 4
  %add42 = add nsw i32 %43, %conv41
  store i32 %add42, i32* %g, align 4
  %44 = load i32, i32* %k, align 4
  %add43 = add nsw i32 %44, 2
  %idxprom44 = sext i32 %add43 to i64
  %45 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col45 = getelementptr inbounds %struct.ppm, %struct.ppm* %45, i32 0, i32 2
  %46 = load i8*, i8** %col45, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %46, i64 %idxprom44
  %47 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %47 to i32
  %48 = load i32, i32* %b, align 4
  %add48 = add nsw i32 %48, %conv47
  store i32 %add48, i32* %b, align 4
  %49 = load i32, i32* %n, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %n, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.31, %if.then.30, %if.then.26, %if.then.23, %if.then
  %50 = load i32, i32* %tx, align 4
  %inc49 = add nsw i32 %50, 1
  store i32 %inc49, i32* %tx, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end
  %51 = load i32, i32* %ty, align 4
  %inc51 = add nsw i32 %51, 1
  store i32 %inc51, i32* %ty, align 4
  br label %for.cond.12

for.end.52:                                       ; preds = %for.cond.12
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %rowstride, align 4
  %mul53 = mul nsw i32 %52, %53
  %54 = load i32, i32* %x, align 4
  %mul54 = mul nsw i32 %54, 3
  %add55 = add nsw i32 %mul53, %mul54
  store i32 %add55, i32* %k, align 4
  %55 = load i32, i32* %r, align 4
  %56 = load i32, i32* %n, align 4
  %div = sdiv i32 %55, %56
  %conv56 = trunc i32 %div to i8
  %57 = load i32, i32* %k, align 4
  %add57 = add nsw i32 %57, 0
  %idxprom58 = sext i32 %add57 to i64
  %col59 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %58 = load i8*, i8** %col59, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %58, i64 %idxprom58
  store i8 %conv56, i8* %arrayidx60, align 1
  %59 = load i32, i32* %g, align 4
  %60 = load i32, i32* %n, align 4
  %div61 = sdiv i32 %59, %60
  %conv62 = trunc i32 %div61 to i8
  %61 = load i32, i32* %k, align 4
  %add63 = add nsw i32 %61, 1
  %idxprom64 = sext i32 %add63 to i64
  %col65 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %62 = load i8*, i8** %col65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %62, i64 %idxprom64
  store i8 %conv62, i8* %arrayidx66, align 1
  %63 = load i32, i32* %b, align 4
  %64 = load i32, i32* %n, align 4
  %div67 = sdiv i32 %63, %64
  %conv68 = trunc i32 %div67 to i8
  %65 = load i32, i32* %k, align 4
  %add69 = add nsw i32 %65, 2
  %idxprom70 = sext i32 %add69 to i64
  %col71 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %66 = load i8*, i8** %col71, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %66, i64 %idxprom70
  store i8 %conv68, i8* %arrayidx72, align 1
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.52
  %67 = load i32, i32* %x, align 4
  %inc74 = add nsw i32 %67, 1
  store i32 %inc74, i32* %x, align 4
  br label %for.cond.8

for.end.75:                                       ; preds = %for.cond.8
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %68 = load i32, i32* %y, align 4
  %inc77 = add nsw i32 %68, 1
  store i32 %inc77, i32* %y, align 4
  br label %for.cond

for.end.78:                                       ; preds = %for.cond
  %69 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  call void @ppm_kill(%struct.ppm* %69)
  %width79 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 0
  %70 = load i32, i32* %width79, align 4
  %71 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %width80 = getelementptr inbounds %struct.ppm, %struct.ppm* %71, i32 0, i32 0
  store i32 %70, i32* %width80, align 4
  %height81 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 1
  %72 = load i32, i32* %height81, align 4
  %73 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %height82 = getelementptr inbounds %struct.ppm, %struct.ppm* %73, i32 0, i32 1
  store i32 %72, i32* %height82, align 4
  %col83 = getelementptr inbounds %struct.ppm, %struct.ppm* %tmp, i32 0, i32 2
  %74 = load i8*, i8** %col83, align 8
  %75 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %col84 = getelementptr inbounds %struct.ppm, %struct.ppm* %75, i32 0, i32 2
  store i8* %74, i8** %col84, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppm_put_rgb_fast(%struct.ppm* %s, float %xo, float %yo, i8* %d) #0 {
entry:
  %s.addr = alloca %struct.ppm*, align 8
  %xo.addr = alloca float, align 4
  %yo.addr = alloca float, align 4
  %d.addr = alloca i8*, align 8
  %tp = alloca i8*, align 8
  store %struct.ppm* %s, %struct.ppm** %s.addr, align 8
  store float %xo, float* %xo.addr, align 4
  store float %yo, float* %yo.addr, align 4
  store i8* %d, i8** %d.addr, align 8
  %0 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 2
  %1 = load i8*, i8** %col, align 8
  %2 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %2, i32 0, i32 0
  %3 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %3, 3
  %4 = load float, float* %yo.addr, align 4
  %conv = fpext float %4 to double
  %add = fadd double %conv, 5.000000e-01
  %conv1 = fptosi double %add to i32
  %mul2 = mul nsw i32 %mul, %conv1
  %idx.ext = sext i32 %mul2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %5 = load float, float* %xo.addr, align 4
  %conv3 = fpext float %5 to double
  %add4 = fadd double %conv3, 5.000000e-01
  %conv5 = fptosi double %add4 to i32
  %mul6 = mul nsw i32 3, %conv5
  %idx.ext7 = sext i32 %mul6 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.ext7
  store i8* %add.ptr8, i8** %tp, align 8
  %6 = load i8*, i8** %d.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i8*, i8** %tp, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %7, i8* %arrayidx9, align 1
  %9 = load i8*, i8** %d.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx10, align 1
  %11 = load i8*, i8** %tp, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 1
  store i8 %10, i8* %arrayidx11, align 1
  %12 = load i8*, i8** %d.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx12, align 1
  %14 = load i8*, i8** %tp, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 %13, i8* %arrayidx13, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppm_put_rgb(%struct.ppm* %s, float %xo, float %yo, i8* %d) #0 {
entry:
  %s.addr = alloca %struct.ppm*, align 8
  %xo.addr = alloca float, align 4
  %yo.addr = alloca float, align 4
  %d.addr = alloca i8*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %aa = alloca float, align 4
  %ab = alloca float, align 4
  %ba = alloca float, align 4
  %bb = alloca float, align 4
  %k = alloca i32, align 4
  %rowstride = alloca i32, align 4
  store %struct.ppm* %s, %struct.ppm** %s.addr, align 8
  store float %xo, float* %xo.addr, align 4
  store float %yo, float* %yo.addr, align 4
  store i8* %d, i8** %d.addr, align 8
  %0 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %width = getelementptr inbounds %struct.ppm, %struct.ppm* %0, i32 0, i32 0
  %1 = load i32, i32* %width, align 4
  %mul = mul nsw i32 %1, 3
  store i32 %mul, i32* %rowstride, align 4
  %2 = load float, float* %xo.addr, align 4
  %conv = fptosi float %2 to i32
  store i32 %conv, i32* %x, align 4
  %3 = load float, float* %yo.addr, align 4
  %conv1 = fptosi float %3 to i32
  store i32 %conv1, i32* %y, align 4
  %4 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %y, align 4
  %cmp3 = icmp slt i32 %5, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %x, align 4
  %7 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %width6 = getelementptr inbounds %struct.ppm, %struct.ppm* %7, i32 0, i32 0
  %8 = load i32, i32* %width6, align 4
  %sub = sub nsw i32 %8, 1
  %cmp7 = icmp sge i32 %6, %sub
  br i1 %cmp7, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.5
  %9 = load i32, i32* %y, align 4
  %10 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %height = getelementptr inbounds %struct.ppm, %struct.ppm* %10, i32 0, i32 1
  %11 = load i32, i32* %height, align 4
  %sub10 = sub nsw i32 %11, 1
  %cmp11 = icmp sge i32 %9, %sub10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false.5, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  %12 = load i32, i32* %x, align 4
  %conv13 = sitofp i32 %12 to float
  %13 = load float, float* %xo.addr, align 4
  %sub14 = fsub float %13, %conv13
  store float %sub14, float* %xo.addr, align 4
  %14 = load i32, i32* %y, align 4
  %conv15 = sitofp i32 %14 to float
  %15 = load float, float* %yo.addr, align 4
  %sub16 = fsub float %15, %conv15
  store float %sub16, float* %yo.addr, align 4
  %16 = load float, float* %xo.addr, align 4
  %conv17 = fpext float %16 to double
  %sub18 = fsub double 1.000000e+00, %conv17
  %17 = load float, float* %yo.addr, align 4
  %conv19 = fpext float %17 to double
  %sub20 = fsub double 1.000000e+00, %conv19
  %mul21 = fmul double %sub18, %sub20
  %conv22 = fptrunc double %mul21 to float
  store float %conv22, float* %aa, align 4
  %18 = load float, float* %xo.addr, align 4
  %conv23 = fpext float %18 to double
  %19 = load float, float* %yo.addr, align 4
  %conv24 = fpext float %19 to double
  %sub25 = fsub double 1.000000e+00, %conv24
  %mul26 = fmul double %conv23, %sub25
  %conv27 = fptrunc double %mul26 to float
  store float %conv27, float* %ab, align 4
  %20 = load float, float* %xo.addr, align 4
  %conv28 = fpext float %20 to double
  %sub29 = fsub double 1.000000e+00, %conv28
  %21 = load float, float* %yo.addr, align 4
  %conv30 = fpext float %21 to double
  %mul31 = fmul double %sub29, %conv30
  %conv32 = fptrunc double %mul31 to float
  store float %conv32, float* %ba, align 4
  %22 = load float, float* %xo.addr, align 4
  %23 = load float, float* %yo.addr, align 4
  %mul33 = fmul float %22, %23
  store float %mul33, float* %bb, align 4
  %24 = load i32, i32* %y, align 4
  %25 = load i32, i32* %rowstride, align 4
  %mul34 = mul nsw i32 %24, %25
  %26 = load i32, i32* %x, align 4
  %mul35 = mul nsw i32 %26, 3
  %add = add nsw i32 %mul34, %mul35
  store i32 %add, i32* %k, align 4
  %27 = load float, float* %aa, align 4
  %conv36 = fpext float %27 to double
  %sub37 = fsub double 1.000000e+00, %conv36
  %28 = load i32, i32* %k, align 4
  %add38 = add nsw i32 %28, 0
  %idxprom = sext i32 %add38 to i64
  %29 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col = getelementptr inbounds %struct.ppm, %struct.ppm* %29, i32 0, i32 2
  %30 = load i8*, i8** %col, align 8
  %arrayidx = getelementptr inbounds i8, i8* %30, i64 %idxprom
  %31 = load i8, i8* %arrayidx, align 1
  %conv39 = uitofp i8 %31 to double
  %mul40 = fmul double %conv39, %sub37
  %conv41 = fptoui double %mul40 to i8
  store i8 %conv41, i8* %arrayidx, align 1
  %32 = load float, float* %aa, align 4
  %conv42 = fpext float %32 to double
  %sub43 = fsub double 1.000000e+00, %conv42
  %33 = load i32, i32* %k, align 4
  %add44 = add nsw i32 %33, 1
  %idxprom45 = sext i32 %add44 to i64
  %34 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col46 = getelementptr inbounds %struct.ppm, %struct.ppm* %34, i32 0, i32 2
  %35 = load i8*, i8** %col46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %35, i64 %idxprom45
  %36 = load i8, i8* %arrayidx47, align 1
  %conv48 = uitofp i8 %36 to double
  %mul49 = fmul double %conv48, %sub43
  %conv50 = fptoui double %mul49 to i8
  store i8 %conv50, i8* %arrayidx47, align 1
  %37 = load float, float* %aa, align 4
  %conv51 = fpext float %37 to double
  %sub52 = fsub double 1.000000e+00, %conv51
  %38 = load i32, i32* %k, align 4
  %add53 = add nsw i32 %38, 2
  %idxprom54 = sext i32 %add53 to i64
  %39 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col55 = getelementptr inbounds %struct.ppm, %struct.ppm* %39, i32 0, i32 2
  %40 = load i8*, i8** %col55, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %40, i64 %idxprom54
  %41 = load i8, i8* %arrayidx56, align 1
  %conv57 = uitofp i8 %41 to double
  %mul58 = fmul double %conv57, %sub52
  %conv59 = fptoui double %mul58 to i8
  store i8 %conv59, i8* %arrayidx56, align 1
  %42 = load float, float* %ab, align 4
  %conv60 = fpext float %42 to double
  %sub61 = fsub double 1.000000e+00, %conv60
  %43 = load i32, i32* %k, align 4
  %add62 = add nsw i32 %43, 3
  %idxprom63 = sext i32 %add62 to i64
  %44 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col64 = getelementptr inbounds %struct.ppm, %struct.ppm* %44, i32 0, i32 2
  %45 = load i8*, i8** %col64, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %45, i64 %idxprom63
  %46 = load i8, i8* %arrayidx65, align 1
  %conv66 = uitofp i8 %46 to double
  %mul67 = fmul double %conv66, %sub61
  %conv68 = fptoui double %mul67 to i8
  store i8 %conv68, i8* %arrayidx65, align 1
  %47 = load float, float* %ab, align 4
  %conv69 = fpext float %47 to double
  %sub70 = fsub double 1.000000e+00, %conv69
  %48 = load i32, i32* %k, align 4
  %add71 = add nsw i32 %48, 4
  %idxprom72 = sext i32 %add71 to i64
  %49 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col73 = getelementptr inbounds %struct.ppm, %struct.ppm* %49, i32 0, i32 2
  %50 = load i8*, i8** %col73, align 8
  %arrayidx74 = getelementptr inbounds i8, i8* %50, i64 %idxprom72
  %51 = load i8, i8* %arrayidx74, align 1
  %conv75 = uitofp i8 %51 to double
  %mul76 = fmul double %conv75, %sub70
  %conv77 = fptoui double %mul76 to i8
  store i8 %conv77, i8* %arrayidx74, align 1
  %52 = load float, float* %ab, align 4
  %conv78 = fpext float %52 to double
  %sub79 = fsub double 1.000000e+00, %conv78
  %53 = load i32, i32* %k, align 4
  %add80 = add nsw i32 %53, 5
  %idxprom81 = sext i32 %add80 to i64
  %54 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col82 = getelementptr inbounds %struct.ppm, %struct.ppm* %54, i32 0, i32 2
  %55 = load i8*, i8** %col82, align 8
  %arrayidx83 = getelementptr inbounds i8, i8* %55, i64 %idxprom81
  %56 = load i8, i8* %arrayidx83, align 1
  %conv84 = uitofp i8 %56 to double
  %mul85 = fmul double %conv84, %sub79
  %conv86 = fptoui double %mul85 to i8
  store i8 %conv86, i8* %arrayidx83, align 1
  %57 = load float, float* %ba, align 4
  %conv87 = fpext float %57 to double
  %sub88 = fsub double 1.000000e+00, %conv87
  %58 = load i32, i32* %k, align 4
  %59 = load i32, i32* %rowstride, align 4
  %add89 = add nsw i32 %58, %59
  %add90 = add nsw i32 %add89, 0
  %idxprom91 = sext i32 %add90 to i64
  %60 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col92 = getelementptr inbounds %struct.ppm, %struct.ppm* %60, i32 0, i32 2
  %61 = load i8*, i8** %col92, align 8
  %arrayidx93 = getelementptr inbounds i8, i8* %61, i64 %idxprom91
  %62 = load i8, i8* %arrayidx93, align 1
  %conv94 = uitofp i8 %62 to double
  %mul95 = fmul double %conv94, %sub88
  %conv96 = fptoui double %mul95 to i8
  store i8 %conv96, i8* %arrayidx93, align 1
  %63 = load float, float* %ba, align 4
  %conv97 = fpext float %63 to double
  %sub98 = fsub double 1.000000e+00, %conv97
  %64 = load i32, i32* %k, align 4
  %65 = load i32, i32* %rowstride, align 4
  %add99 = add nsw i32 %64, %65
  %add100 = add nsw i32 %add99, 1
  %idxprom101 = sext i32 %add100 to i64
  %66 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col102 = getelementptr inbounds %struct.ppm, %struct.ppm* %66, i32 0, i32 2
  %67 = load i8*, i8** %col102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %67, i64 %idxprom101
  %68 = load i8, i8* %arrayidx103, align 1
  %conv104 = uitofp i8 %68 to double
  %mul105 = fmul double %conv104, %sub98
  %conv106 = fptoui double %mul105 to i8
  store i8 %conv106, i8* %arrayidx103, align 1
  %69 = load float, float* %ba, align 4
  %conv107 = fpext float %69 to double
  %sub108 = fsub double 1.000000e+00, %conv107
  %70 = load i32, i32* %k, align 4
  %71 = load i32, i32* %rowstride, align 4
  %add109 = add nsw i32 %70, %71
  %add110 = add nsw i32 %add109, 2
  %idxprom111 = sext i32 %add110 to i64
  %72 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col112 = getelementptr inbounds %struct.ppm, %struct.ppm* %72, i32 0, i32 2
  %73 = load i8*, i8** %col112, align 8
  %arrayidx113 = getelementptr inbounds i8, i8* %73, i64 %idxprom111
  %74 = load i8, i8* %arrayidx113, align 1
  %conv114 = uitofp i8 %74 to double
  %mul115 = fmul double %conv114, %sub108
  %conv116 = fptoui double %mul115 to i8
  store i8 %conv116, i8* %arrayidx113, align 1
  %75 = load float, float* %bb, align 4
  %conv117 = fpext float %75 to double
  %sub118 = fsub double 1.000000e+00, %conv117
  %76 = load i32, i32* %k, align 4
  %77 = load i32, i32* %rowstride, align 4
  %add119 = add nsw i32 %76, %77
  %add120 = add nsw i32 %add119, 3
  %idxprom121 = sext i32 %add120 to i64
  %78 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col122 = getelementptr inbounds %struct.ppm, %struct.ppm* %78, i32 0, i32 2
  %79 = load i8*, i8** %col122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %79, i64 %idxprom121
  %80 = load i8, i8* %arrayidx123, align 1
  %conv124 = uitofp i8 %80 to double
  %mul125 = fmul double %conv124, %sub118
  %conv126 = fptoui double %mul125 to i8
  store i8 %conv126, i8* %arrayidx123, align 1
  %81 = load float, float* %bb, align 4
  %conv127 = fpext float %81 to double
  %sub128 = fsub double 1.000000e+00, %conv127
  %82 = load i32, i32* %k, align 4
  %83 = load i32, i32* %rowstride, align 4
  %add129 = add nsw i32 %82, %83
  %add130 = add nsw i32 %add129, 4
  %idxprom131 = sext i32 %add130 to i64
  %84 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col132 = getelementptr inbounds %struct.ppm, %struct.ppm* %84, i32 0, i32 2
  %85 = load i8*, i8** %col132, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %85, i64 %idxprom131
  %86 = load i8, i8* %arrayidx133, align 1
  %conv134 = uitofp i8 %86 to double
  %mul135 = fmul double %conv134, %sub128
  %conv136 = fptoui double %mul135 to i8
  store i8 %conv136, i8* %arrayidx133, align 1
  %87 = load float, float* %bb, align 4
  %conv137 = fpext float %87 to double
  %sub138 = fsub double 1.000000e+00, %conv137
  %88 = load i32, i32* %k, align 4
  %89 = load i32, i32* %rowstride, align 4
  %add139 = add nsw i32 %88, %89
  %add140 = add nsw i32 %add139, 5
  %idxprom141 = sext i32 %add140 to i64
  %90 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col142 = getelementptr inbounds %struct.ppm, %struct.ppm* %90, i32 0, i32 2
  %91 = load i8*, i8** %col142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %91, i64 %idxprom141
  %92 = load i8, i8* %arrayidx143, align 1
  %conv144 = uitofp i8 %92 to double
  %mul145 = fmul double %conv144, %sub138
  %conv146 = fptoui double %mul145 to i8
  store i8 %conv146, i8* %arrayidx143, align 1
  %93 = load float, float* %aa, align 4
  %94 = load i8*, i8** %d.addr, align 8
  %arrayidx147 = getelementptr inbounds i8, i8* %94, i64 0
  %95 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %95 to i32
  %conv149 = sitofp i32 %conv148 to float
  %mul150 = fmul float %93, %conv149
  %96 = load i32, i32* %k, align 4
  %add151 = add nsw i32 %96, 0
  %idxprom152 = sext i32 %add151 to i64
  %97 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col153 = getelementptr inbounds %struct.ppm, %struct.ppm* %97, i32 0, i32 2
  %98 = load i8*, i8** %col153, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %98, i64 %idxprom152
  %99 = load i8, i8* %arrayidx154, align 1
  %conv155 = uitofp i8 %99 to float
  %add156 = fadd float %conv155, %mul150
  %conv157 = fptoui float %add156 to i8
  store i8 %conv157, i8* %arrayidx154, align 1
  %100 = load float, float* %aa, align 4
  %101 = load i8*, i8** %d.addr, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %102 to i32
  %conv160 = sitofp i32 %conv159 to float
  %mul161 = fmul float %100, %conv160
  %103 = load i32, i32* %k, align 4
  %add162 = add nsw i32 %103, 1
  %idxprom163 = sext i32 %add162 to i64
  %104 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col164 = getelementptr inbounds %struct.ppm, %struct.ppm* %104, i32 0, i32 2
  %105 = load i8*, i8** %col164, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %105, i64 %idxprom163
  %106 = load i8, i8* %arrayidx165, align 1
  %conv166 = uitofp i8 %106 to float
  %add167 = fadd float %conv166, %mul161
  %conv168 = fptoui float %add167 to i8
  store i8 %conv168, i8* %arrayidx165, align 1
  %107 = load float, float* %aa, align 4
  %108 = load i8*, i8** %d.addr, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %108, i64 2
  %109 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %109 to i32
  %conv171 = sitofp i32 %conv170 to float
  %mul172 = fmul float %107, %conv171
  %110 = load i32, i32* %k, align 4
  %add173 = add nsw i32 %110, 2
  %idxprom174 = sext i32 %add173 to i64
  %111 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col175 = getelementptr inbounds %struct.ppm, %struct.ppm* %111, i32 0, i32 2
  %112 = load i8*, i8** %col175, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %112, i64 %idxprom174
  %113 = load i8, i8* %arrayidx176, align 1
  %conv177 = uitofp i8 %113 to float
  %add178 = fadd float %conv177, %mul172
  %conv179 = fptoui float %add178 to i8
  store i8 %conv179, i8* %arrayidx176, align 1
  %114 = load float, float* %ab, align 4
  %115 = load i8*, i8** %d.addr, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %115, i64 0
  %116 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %116 to i32
  %conv182 = sitofp i32 %conv181 to float
  %mul183 = fmul float %114, %conv182
  %117 = load i32, i32* %k, align 4
  %add184 = add nsw i32 %117, 3
  %idxprom185 = sext i32 %add184 to i64
  %118 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col186 = getelementptr inbounds %struct.ppm, %struct.ppm* %118, i32 0, i32 2
  %119 = load i8*, i8** %col186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %119, i64 %idxprom185
  %120 = load i8, i8* %arrayidx187, align 1
  %conv188 = uitofp i8 %120 to float
  %add189 = fadd float %conv188, %mul183
  %conv190 = fptoui float %add189 to i8
  store i8 %conv190, i8* %arrayidx187, align 1
  %121 = load float, float* %ab, align 4
  %122 = load i8*, i8** %d.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %122, i64 1
  %123 = load i8, i8* %arrayidx191, align 1
  %conv192 = zext i8 %123 to i32
  %conv193 = sitofp i32 %conv192 to float
  %mul194 = fmul float %121, %conv193
  %124 = load i32, i32* %k, align 4
  %add195 = add nsw i32 %124, 4
  %idxprom196 = sext i32 %add195 to i64
  %125 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col197 = getelementptr inbounds %struct.ppm, %struct.ppm* %125, i32 0, i32 2
  %126 = load i8*, i8** %col197, align 8
  %arrayidx198 = getelementptr inbounds i8, i8* %126, i64 %idxprom196
  %127 = load i8, i8* %arrayidx198, align 1
  %conv199 = uitofp i8 %127 to float
  %add200 = fadd float %conv199, %mul194
  %conv201 = fptoui float %add200 to i8
  store i8 %conv201, i8* %arrayidx198, align 1
  %128 = load float, float* %ab, align 4
  %129 = load i8*, i8** %d.addr, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %129, i64 2
  %130 = load i8, i8* %arrayidx202, align 1
  %conv203 = zext i8 %130 to i32
  %conv204 = sitofp i32 %conv203 to float
  %mul205 = fmul float %128, %conv204
  %131 = load i32, i32* %k, align 4
  %add206 = add nsw i32 %131, 5
  %idxprom207 = sext i32 %add206 to i64
  %132 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col208 = getelementptr inbounds %struct.ppm, %struct.ppm* %132, i32 0, i32 2
  %133 = load i8*, i8** %col208, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %133, i64 %idxprom207
  %134 = load i8, i8* %arrayidx209, align 1
  %conv210 = uitofp i8 %134 to float
  %add211 = fadd float %conv210, %mul205
  %conv212 = fptoui float %add211 to i8
  store i8 %conv212, i8* %arrayidx209, align 1
  %135 = load float, float* %ba, align 4
  %136 = load i8*, i8** %d.addr, align 8
  %arrayidx213 = getelementptr inbounds i8, i8* %136, i64 0
  %137 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %137 to i32
  %conv215 = sitofp i32 %conv214 to float
  %mul216 = fmul float %135, %conv215
  %138 = load i32, i32* %k, align 4
  %139 = load i32, i32* %rowstride, align 4
  %add217 = add nsw i32 %138, %139
  %add218 = add nsw i32 %add217, 0
  %idxprom219 = sext i32 %add218 to i64
  %140 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col220 = getelementptr inbounds %struct.ppm, %struct.ppm* %140, i32 0, i32 2
  %141 = load i8*, i8** %col220, align 8
  %arrayidx221 = getelementptr inbounds i8, i8* %141, i64 %idxprom219
  %142 = load i8, i8* %arrayidx221, align 1
  %conv222 = uitofp i8 %142 to float
  %add223 = fadd float %conv222, %mul216
  %conv224 = fptoui float %add223 to i8
  store i8 %conv224, i8* %arrayidx221, align 1
  %143 = load float, float* %ba, align 4
  %144 = load i8*, i8** %d.addr, align 8
  %arrayidx225 = getelementptr inbounds i8, i8* %144, i64 1
  %145 = load i8, i8* %arrayidx225, align 1
  %conv226 = zext i8 %145 to i32
  %conv227 = sitofp i32 %conv226 to float
  %mul228 = fmul float %143, %conv227
  %146 = load i32, i32* %k, align 4
  %147 = load i32, i32* %rowstride, align 4
  %add229 = add nsw i32 %146, %147
  %add230 = add nsw i32 %add229, 1
  %idxprom231 = sext i32 %add230 to i64
  %148 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col232 = getelementptr inbounds %struct.ppm, %struct.ppm* %148, i32 0, i32 2
  %149 = load i8*, i8** %col232, align 8
  %arrayidx233 = getelementptr inbounds i8, i8* %149, i64 %idxprom231
  %150 = load i8, i8* %arrayidx233, align 1
  %conv234 = uitofp i8 %150 to float
  %add235 = fadd float %conv234, %mul228
  %conv236 = fptoui float %add235 to i8
  store i8 %conv236, i8* %arrayidx233, align 1
  %151 = load float, float* %ba, align 4
  %152 = load i8*, i8** %d.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %152, i64 2
  %153 = load i8, i8* %arrayidx237, align 1
  %conv238 = zext i8 %153 to i32
  %conv239 = sitofp i32 %conv238 to float
  %mul240 = fmul float %151, %conv239
  %154 = load i32, i32* %k, align 4
  %155 = load i32, i32* %rowstride, align 4
  %add241 = add nsw i32 %154, %155
  %add242 = add nsw i32 %add241, 2
  %idxprom243 = sext i32 %add242 to i64
  %156 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col244 = getelementptr inbounds %struct.ppm, %struct.ppm* %156, i32 0, i32 2
  %157 = load i8*, i8** %col244, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %157, i64 %idxprom243
  %158 = load i8, i8* %arrayidx245, align 1
  %conv246 = uitofp i8 %158 to float
  %add247 = fadd float %conv246, %mul240
  %conv248 = fptoui float %add247 to i8
  store i8 %conv248, i8* %arrayidx245, align 1
  %159 = load float, float* %bb, align 4
  %160 = load i8*, i8** %d.addr, align 8
  %arrayidx249 = getelementptr inbounds i8, i8* %160, i64 0
  %161 = load i8, i8* %arrayidx249, align 1
  %conv250 = zext i8 %161 to i32
  %conv251 = sitofp i32 %conv250 to float
  %mul252 = fmul float %159, %conv251
  %162 = load i32, i32* %k, align 4
  %163 = load i32, i32* %rowstride, align 4
  %add253 = add nsw i32 %162, %163
  %add254 = add nsw i32 %add253, 3
  %idxprom255 = sext i32 %add254 to i64
  %164 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col256 = getelementptr inbounds %struct.ppm, %struct.ppm* %164, i32 0, i32 2
  %165 = load i8*, i8** %col256, align 8
  %arrayidx257 = getelementptr inbounds i8, i8* %165, i64 %idxprom255
  %166 = load i8, i8* %arrayidx257, align 1
  %conv258 = uitofp i8 %166 to float
  %add259 = fadd float %conv258, %mul252
  %conv260 = fptoui float %add259 to i8
  store i8 %conv260, i8* %arrayidx257, align 1
  %167 = load float, float* %bb, align 4
  %168 = load i8*, i8** %d.addr, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %168, i64 1
  %169 = load i8, i8* %arrayidx261, align 1
  %conv262 = zext i8 %169 to i32
  %conv263 = sitofp i32 %conv262 to float
  %mul264 = fmul float %167, %conv263
  %170 = load i32, i32* %k, align 4
  %171 = load i32, i32* %rowstride, align 4
  %add265 = add nsw i32 %170, %171
  %add266 = add nsw i32 %add265, 4
  %idxprom267 = sext i32 %add266 to i64
  %172 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col268 = getelementptr inbounds %struct.ppm, %struct.ppm* %172, i32 0, i32 2
  %173 = load i8*, i8** %col268, align 8
  %arrayidx269 = getelementptr inbounds i8, i8* %173, i64 %idxprom267
  %174 = load i8, i8* %arrayidx269, align 1
  %conv270 = uitofp i8 %174 to float
  %add271 = fadd float %conv270, %mul264
  %conv272 = fptoui float %add271 to i8
  store i8 %conv272, i8* %arrayidx269, align 1
  %175 = load float, float* %bb, align 4
  %176 = load i8*, i8** %d.addr, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %176, i64 2
  %177 = load i8, i8* %arrayidx273, align 1
  %conv274 = zext i8 %177 to i32
  %conv275 = sitofp i32 %conv274 to float
  %mul276 = fmul float %175, %conv275
  %178 = load i32, i32* %k, align 4
  %179 = load i32, i32* %rowstride, align 4
  %add277 = add nsw i32 %178, %179
  %add278 = add nsw i32 %add277, 5
  %idxprom279 = sext i32 %add278 to i64
  %180 = load %struct.ppm*, %struct.ppm** %s.addr, align 8
  %col280 = getelementptr inbounds %struct.ppm, %struct.ppm* %180, i32 0, i32 2
  %181 = load i8*, i8** %col280, align 8
  %arrayidx281 = getelementptr inbounds i8, i8* %181, i64 %idxprom279
  %182 = load i8, i8* %arrayidx281, align 1
  %conv282 = uitofp i8 %182 to float
  %add283 = fadd float %conv282, %mul276
  %conv284 = fptoui float %add283 to i8
  store i8 %conv284, i8* %arrayidx281, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @ppm_drawline(%struct.ppm* %p, float %fx, float %fy, float %tx, float %ty, i8* %col) #0 {
entry:
  %p.addr = alloca %struct.ppm*, align 8
  %fx.addr = alloca float, align 4
  %fy.addr = alloca float, align 4
  %tx.addr = alloca float, align 4
  %ty.addr = alloca float, align 4
  %col.addr = alloca i8*, align 8
  %i = alloca float, align 4
  %d = alloca float, align 4
  %x = alloca float, align 4
  %y = alloca float, align 4
  store %struct.ppm* %p, %struct.ppm** %p.addr, align 8
  store float %fx, float* %fx.addr, align 4
  store float %fy, float* %fy.addr, align 4
  store float %tx, float* %tx.addr, align 4
  store float %ty, float* %ty.addr, align 4
  store i8* %col, i8** %col.addr, align 8
  %0 = load float, float* %fx.addr, align 4
  %1 = load float, float* %tx.addr, align 4
  %sub = fsub float %0, %1
  %conv = fpext float %sub to double
  %call = call double @fabs(double %conv) #7
  %2 = load float, float* %fy.addr, align 4
  %3 = load float, float* %ty.addr, align 4
  %sub1 = fsub float %2, %3
  %conv2 = fpext float %sub1 to double
  %call3 = call double @fabs(double %conv2) #7
  %cmp = fcmp ogt double %call, %call3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load float, float* %fx.addr, align 4
  %5 = load float, float* %tx.addr, align 4
  %cmp5 = fcmp ogt float %4, %5
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %6 = load float, float* %tx.addr, align 4
  store float %6, float* %i, align 4
  %7 = load float, float* %fx.addr, align 4
  store float %7, float* %tx.addr, align 4
  %8 = load float, float* %i, align 4
  store float %8, float* %fx.addr, align 4
  %9 = load float, float* %ty.addr, align 4
  store float %9, float* %i, align 4
  %10 = load float, float* %fy.addr, align 4
  store float %10, float* %ty.addr, align 4
  %11 = load float, float* %i, align 4
  store float %11, float* %fy.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %12 = load float, float* %ty.addr, align 4
  %13 = load float, float* %fy.addr, align 4
  %sub8 = fsub float %12, %13
  %14 = load float, float* %tx.addr, align 4
  %15 = load float, float* %fx.addr, align 4
  %sub9 = fsub float %14, %15
  %div = fdiv float %sub8, %sub9
  store float %div, float* %d, align 4
  %16 = load float, float* %fy.addr, align 4
  store float %16, float* %y, align 4
  %17 = load float, float* %fx.addr, align 4
  store float %17, float* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load float, float* %x, align 4
  %19 = load float, float* %tx.addr, align 4
  %cmp10 = fcmp ole float %18, %19
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %21 = load float, float* %x, align 4
  %22 = load float, float* %y, align 4
  %23 = load i8*, i8** %col.addr, align 8
  call void @ppm_put_rgb(%struct.ppm* %20, float %21, float %22, i8* %23)
  %24 = load float, float* %d, align 4
  %25 = load float, float* %y, align 4
  %add = fadd float %25, %24
  store float %add, float* %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load float, float* %x, align 4
  %conv12 = fpext float %26 to double
  %add13 = fadd double %conv12, 1.000000e+00
  %conv14 = fptrunc double %add13 to float
  store float %conv14, float* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.else:                                          ; preds = %entry
  %27 = load float, float* %fy.addr, align 4
  %28 = load float, float* %ty.addr, align 4
  %cmp15 = fcmp ogt float %27, %28
  br i1 %cmp15, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  %29 = load float, float* %tx.addr, align 4
  store float %29, float* %i, align 4
  %30 = load float, float* %fx.addr, align 4
  store float %30, float* %tx.addr, align 4
  %31 = load float, float* %i, align 4
  store float %31, float* %fx.addr, align 4
  %32 = load float, float* %ty.addr, align 4
  store float %32, float* %i, align 4
  %33 = load float, float* %fy.addr, align 4
  store float %33, float* %ty.addr, align 4
  %34 = load float, float* %i, align 4
  store float %34, float* %fy.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.else
  %35 = load float, float* %tx.addr, align 4
  %36 = load float, float* %fx.addr, align 4
  %sub19 = fsub float %35, %36
  %37 = load float, float* %ty.addr, align 4
  %38 = load float, float* %fy.addr, align 4
  %sub20 = fsub float %37, %38
  %div21 = fdiv float %sub19, %sub20
  store float %div21, float* %d, align 4
  %39 = load float, float* %fx.addr, align 4
  store float %39, float* %x, align 4
  %40 = load float, float* %fy.addr, align 4
  store float %40, float* %y, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.27, %if.end.18
  %41 = load float, float* %y, align 4
  %42 = load float, float* %ty.addr, align 4
  %cmp23 = fcmp ole float %41, %42
  br i1 %cmp23, label %for.body.25, label %for.end.31

for.body.25:                                      ; preds = %for.cond.22
  %43 = load %struct.ppm*, %struct.ppm** %p.addr, align 8
  %44 = load float, float* %x, align 4
  %45 = load float, float* %y, align 4
  %46 = load i8*, i8** %col.addr, align 8
  call void @ppm_put_rgb(%struct.ppm* %43, float %44, float %45, i8* %46)
  %47 = load float, float* %d, align 4
  %48 = load float, float* %x, align 4
  %add26 = fadd float %48, %47
  store float %add26, float* %x, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.25
  %49 = load float, float* %y, align 4
  %conv28 = fpext float %49 to double
  %add29 = fadd double %conv28, 1.000000e+00
  %conv30 = fptrunc double %add29 to float
  store float %conv30, float* %y, align 4
  br label %for.cond.22

for.end.31:                                       ; preds = %for.cond.22
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.31, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @msb2lsb(i32* %i) #0 {
entry:
  %i.addr = alloca i32*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  store i32* %i, i32** %i.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  %1 = bitcast i32* %0 to i8*
  store i8* %1, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8*, i8** %p, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i8, i8* %arrayidx1, align 1
  %6 = load i8*, i8** %p, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %5, i8* %arrayidx2, align 1
  %7 = load i8, i8* %c, align 1
  %8 = load i8*, i8** %p, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %8, i64 2
  store i8 %7, i8* %arrayidx3, align 1
  %9 = load i8*, i8** %p, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx4, align 1
  store i8 %10, i8* %c, align 1
  %11 = load i8*, i8** %p, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx5, align 1
  %13 = load i8*, i8** %p, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %12, i8* %arrayidx6, align 1
  %14 = load i8, i8* %c, align 1
  %15 = load i8*, i8** %p, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %15, i64 3
  store i8 %14, i8* %arrayidx7, align 1
  ret void
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i8* @findfile(i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i8* @g_strchomp(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
