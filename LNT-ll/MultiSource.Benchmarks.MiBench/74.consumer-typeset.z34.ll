; ModuleID = './MultiSource.Benchmarks.MiBench/74.consumer-typeset.z34.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.rect_coord = type { double, double }
%struct.polar_coord = type { double, double }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

; Function Attrs: nounwind uwtable
define void @RotateSize(i32* %xcb, i32* %xcf, i32* %xrb, i32* %xrf, %union.rec* %y, i32 %theta) #0 {
entry:
  %xcb.addr = alloca i32*, align 8
  %xcf.addr = alloca i32*, align 8
  %xrb.addr = alloca i32*, align 8
  %xrf.addr = alloca i32*, align 8
  %y.addr = alloca %union.rec*, align 8
  %theta.addr = alloca i32, align 4
  %ycorners = alloca [4 x %struct.rect_coord], align 16
  %xcorner = alloca %struct.rect_coord, align 8
  %pol = alloca %struct.polar_coord, align 8
  %maxx = alloca double, align 8
  %maxy = alloca double, align 8
  %minx = alloca double, align 8
  %miny = alloca double, align 8
  %ang = alloca double, align 8
  %i = alloca i32, align 4
  store i32* %xcb, i32** %xcb.addr, align 8
  store i32* %xcf, i32** %xcf.addr, align 8
  store i32* %xrb, i32** %xrb.addr, align 8
  store i32* %xrf, i32** %xrf.addr, align 8
  store %union.rec* %y, %union.rec** %y.addr, align 8
  store i32 %theta, i32* %theta.addr, align 4
  %0 = load i32, i32* %theta.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 2.000000e+00
  %mul1 = fmul double %mul, 0x400921FB54442D18
  %div = fdiv double %mul1, 4.608000e+04
  store double %div, double* %ang, align 8
  %1 = load %union.rec*, %union.rec** %y.addr, align 8
  %os1 = bitcast %union.rec* %1 to %struct.word_type*
  %ou3 = getelementptr inbounds %struct.word_type, %struct.word_type* %os1, i32 0, i32 3
  %os31 = bitcast %union.THIRD_UNION* %ou3 to %struct.anon.6*
  %ofwd = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os31, i32 0, i32 1
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %conv2 = sitofp i32 %2 to float
  %conv3 = fpext float %conv2 to double
  %arrayidx4 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 0
  %x = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx4, i32 0, i32 0
  store double %conv3, double* %x, align 8
  %3 = load %union.rec*, %union.rec** %y.addr, align 8
  %os15 = bitcast %union.rec* %3 to %struct.word_type*
  %ou36 = getelementptr inbounds %struct.word_type, %struct.word_type* %os15, i32 0, i32 3
  %os317 = bitcast %union.THIRD_UNION* %ou36 to %struct.anon.6*
  %oback = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os317, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [2 x i32], [2 x i32]* %oback, i32 0, i64 1
  %4 = load i32, i32* %arrayidx8, align 4
  %conv9 = sitofp i32 %4 to float
  %conv10 = fpext float %conv9 to double
  %arrayidx11 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 0
  %y12 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx11, i32 0, i32 1
  store double %conv10, double* %y12, align 8
  %5 = load %union.rec*, %union.rec** %y.addr, align 8
  %os113 = bitcast %union.rec* %5 to %struct.word_type*
  %ou314 = getelementptr inbounds %struct.word_type, %struct.word_type* %os113, i32 0, i32 3
  %os3115 = bitcast %union.THIRD_UNION* %ou314 to %struct.anon.6*
  %oback16 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3115, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [2 x i32], [2 x i32]* %oback16, i32 0, i64 0
  %6 = load i32, i32* %arrayidx17, align 4
  %conv18 = sitofp i32 %6 to float
  %sub = fsub float -0.000000e+00, %conv18
  %conv19 = fpext float %sub to double
  %arrayidx20 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 1
  %x21 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx20, i32 0, i32 0
  store double %conv19, double* %x21, align 8
  %7 = load %union.rec*, %union.rec** %y.addr, align 8
  %os122 = bitcast %union.rec* %7 to %struct.word_type*
  %ou323 = getelementptr inbounds %struct.word_type, %struct.word_type* %os122, i32 0, i32 3
  %os3124 = bitcast %union.THIRD_UNION* %ou323 to %struct.anon.6*
  %oback25 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3124, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [2 x i32], [2 x i32]* %oback25, i32 0, i64 1
  %8 = load i32, i32* %arrayidx26, align 4
  %conv27 = sitofp i32 %8 to float
  %conv28 = fpext float %conv27 to double
  %arrayidx29 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 1
  %y30 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx29, i32 0, i32 1
  store double %conv28, double* %y30, align 8
  %9 = load %union.rec*, %union.rec** %y.addr, align 8
  %os131 = bitcast %union.rec* %9 to %struct.word_type*
  %ou332 = getelementptr inbounds %struct.word_type, %struct.word_type* %os131, i32 0, i32 3
  %os3133 = bitcast %union.THIRD_UNION* %ou332 to %struct.anon.6*
  %oback34 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3133, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [2 x i32], [2 x i32]* %oback34, i32 0, i64 0
  %10 = load i32, i32* %arrayidx35, align 4
  %conv36 = sitofp i32 %10 to float
  %sub37 = fsub float -0.000000e+00, %conv36
  %conv38 = fpext float %sub37 to double
  %arrayidx39 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 2
  %x40 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx39, i32 0, i32 0
  store double %conv38, double* %x40, align 8
  %11 = load %union.rec*, %union.rec** %y.addr, align 8
  %os141 = bitcast %union.rec* %11 to %struct.word_type*
  %ou342 = getelementptr inbounds %struct.word_type, %struct.word_type* %os141, i32 0, i32 3
  %os3143 = bitcast %union.THIRD_UNION* %ou342 to %struct.anon.6*
  %ofwd44 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3143, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd44, i32 0, i64 1
  %12 = load i32, i32* %arrayidx45, align 4
  %conv46 = sitofp i32 %12 to float
  %sub47 = fsub float -0.000000e+00, %conv46
  %conv48 = fpext float %sub47 to double
  %arrayidx49 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 2
  %y50 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx49, i32 0, i32 1
  store double %conv48, double* %y50, align 8
  %13 = load %union.rec*, %union.rec** %y.addr, align 8
  %os151 = bitcast %union.rec* %13 to %struct.word_type*
  %ou352 = getelementptr inbounds %struct.word_type, %struct.word_type* %os151, i32 0, i32 3
  %os3153 = bitcast %union.THIRD_UNION* %ou352 to %struct.anon.6*
  %ofwd54 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3153, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd54, i32 0, i64 0
  %14 = load i32, i32* %arrayidx55, align 4
  %conv56 = sitofp i32 %14 to float
  %conv57 = fpext float %conv56 to double
  %arrayidx58 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 3
  %x59 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx58, i32 0, i32 0
  store double %conv57, double* %x59, align 8
  %15 = load %union.rec*, %union.rec** %y.addr, align 8
  %os160 = bitcast %union.rec* %15 to %struct.word_type*
  %ou361 = getelementptr inbounds %struct.word_type, %struct.word_type* %os160, i32 0, i32 3
  %os3162 = bitcast %union.THIRD_UNION* %ou361 to %struct.anon.6*
  %ofwd63 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %os3162, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [2 x i32], [2 x i32]* %ofwd63, i32 0, i64 1
  %16 = load i32, i32* %arrayidx64, align 4
  %conv65 = sitofp i32 %16 to float
  %sub66 = fsub float -0.000000e+00, %conv65
  %conv67 = fpext float %sub66 to double
  %arrayidx68 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 3
  %y69 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx68, i32 0, i32 1
  store double %conv67, double* %y69, align 8
  store double -8.388607e+06, double* %maxy, align 8
  store double -8.388607e+06, double* %maxx, align 8
  store double 8.388607e+06, double* %miny, align 8
  store double 8.388607e+06, double* %minx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %17, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx71 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom
  %x72 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx71, i32 0, i32 0
  %19 = load double, double* %x72, align 8
  %cmp73 = fcmp oeq double %19, 0.000000e+00
  br i1 %cmp73, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %20 to i64
  %arrayidx76 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom75
  %y77 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx76, i32 0, i32 1
  %21 = load double, double* %y77, align 8
  %cmp78 = fcmp oeq double %21, 0.000000e+00
  br i1 %cmp78, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %radius = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  store double 0.000000e+00, double* %radius, align 8
  %angle = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  store double 0.000000e+00, double* %angle, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %22 to i64
  %arrayidx81 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom80
  %y82 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx81, i32 0, i32 1
  %23 = load double, double* %y82, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %24 to i64
  %arrayidx84 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom83
  %x85 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx84, i32 0, i32 0
  %25 = load double, double* %x85, align 8
  %call = call double @atan2(double %23, double %25) #2
  %angle86 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  store double %call, double* %angle86, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %26 to i64
  %arrayidx88 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom87
  %x89 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx88, i32 0, i32 0
  %27 = load double, double* %x89, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %28 to i64
  %arrayidx91 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom90
  %x92 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx91, i32 0, i32 0
  %29 = load double, double* %x92, align 8
  %mul93 = fmul double %27, %29
  %30 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %30 to i64
  %arrayidx95 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom94
  %y96 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx95, i32 0, i32 1
  %31 = load double, double* %y96, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %32 to i64
  %arrayidx98 = getelementptr inbounds [4 x %struct.rect_coord], [4 x %struct.rect_coord]* %ycorners, i32 0, i64 %idxprom97
  %y99 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %arrayidx98, i32 0, i32 1
  %33 = load double, double* %y99, align 8
  %mul100 = fmul double %31, %33
  %add = fadd double %mul93, %mul100
  %call101 = call double @sqrt(double %add) #2
  %radius102 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  store double %call101, double* %radius102, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %34 = load double, double* %ang, align 8
  %angle103 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  %35 = load double, double* %angle103, align 8
  %add104 = fadd double %35, %34
  store double %add104, double* %angle103, align 8
  %radius105 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  %36 = load double, double* %radius105, align 8
  %angle106 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  %37 = load double, double* %angle106, align 8
  %call107 = call double @cos(double %37) #2
  %mul108 = fmul double %36, %call107
  %x109 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  store double %mul108, double* %x109, align 8
  %radius110 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 1
  %38 = load double, double* %radius110, align 8
  %angle111 = getelementptr inbounds %struct.polar_coord, %struct.polar_coord* %pol, i32 0, i32 0
  %39 = load double, double* %angle111, align 8
  %call112 = call double @sin(double %39) #2
  %mul113 = fmul double %38, %call112
  %y114 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  store double %mul113, double* %y114, align 8
  %40 = load double, double* %maxx, align 8
  %x115 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %41 = load double, double* %x115, align 8
  %cmp116 = fcmp olt double %40, %41
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %x118 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %42 = load double, double* %x118, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %43 = load double, double* %maxx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %42, %cond.true ], [ %43, %cond.false ]
  store double %cond, double* %maxx, align 8
  %44 = load double, double* %minx, align 8
  %x119 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %45 = load double, double* %x119, align 8
  %cmp120 = fcmp olt double %44, %45
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end
  %46 = load double, double* %minx, align 8
  br label %cond.end.125

cond.false.123:                                   ; preds = %cond.end
  %x124 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 0
  %47 = load double, double* %x124, align 8
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.123, %cond.true.122
  %cond126 = phi double [ %46, %cond.true.122 ], [ %47, %cond.false.123 ]
  store double %cond126, double* %minx, align 8
  %48 = load double, double* %maxy, align 8
  %y127 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %49 = load double, double* %y127, align 8
  %cmp128 = fcmp olt double %48, %49
  br i1 %cmp128, label %cond.true.130, label %cond.false.132

cond.true.130:                                    ; preds = %cond.end.125
  %y131 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %50 = load double, double* %y131, align 8
  br label %cond.end.133

cond.false.132:                                   ; preds = %cond.end.125
  %51 = load double, double* %maxy, align 8
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.132, %cond.true.130
  %cond134 = phi double [ %50, %cond.true.130 ], [ %51, %cond.false.132 ]
  store double %cond134, double* %maxy, align 8
  %52 = load double, double* %miny, align 8
  %y135 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %53 = load double, double* %y135, align 8
  %cmp136 = fcmp olt double %52, %53
  br i1 %cmp136, label %cond.true.138, label %cond.false.139

cond.true.138:                                    ; preds = %cond.end.133
  %54 = load double, double* %miny, align 8
  br label %cond.end.141

cond.false.139:                                   ; preds = %cond.end.133
  %y140 = getelementptr inbounds %struct.rect_coord, %struct.rect_coord* %xcorner, i32 0, i32 1
  %55 = load double, double* %y140, align 8
  br label %cond.end.141

cond.end.141:                                     ; preds = %cond.false.139, %cond.true.138
  %cond142 = phi double [ %54, %cond.true.138 ], [ %55, %cond.false.139 ]
  store double %cond142, double* %miny, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.141
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load double, double* %minx, align 8
  %conv143 = fptosi double %57 to i32
  %sub144 = sub nsw i32 0, %conv143
  %58 = load i32*, i32** %xcb.addr, align 8
  store i32 %sub144, i32* %58, align 4
  %59 = load double, double* %maxx, align 8
  %conv145 = fptosi double %59 to i32
  %60 = load i32*, i32** %xcf.addr, align 8
  store i32 %conv145, i32* %60, align 4
  %61 = load double, double* %maxy, align 8
  %conv146 = fptosi double %61 to i32
  %62 = load i32*, i32** %xrb.addr, align 8
  store i32 %conv146, i32* %62, align 4
  %63 = load double, double* %miny, align 8
  %conv147 = fptosi double %63 to i32
  %sub148 = sub nsw i32 0, %conv147
  %64 = load i32*, i32** %xrf.addr, align 8
  store i32 %sub148, i32* %64, align 4
  ret void
}

; Function Attrs: nounwind
declare double @atan2(double, double) #1

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
