; ModuleID = './MultiSource.Benchmarks.TSVC/47.Packing-flt.tsc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalData = type { [32000 x float], [3 x i32], [4 x i8], [32000 x float], [5 x i32], [12 x i8], [32000 x float], [7 x i32], [4 x i8], [32000 x float], [11 x i32], [4 x i8], [32000 x float], [13 x i32], [12 x i8], [256 x [256 x float]], [17 x i32], [12 x i8], [256 x [256 x float]], [19 x i32], [4 x i8], [256 x [256 x float]], [23 x i32], [4 x i8], [256 x [256 x float]] }

@global_data = common global %struct.GlobalData zeroinitializer, align 16
@a = constant float* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), align 16
@b = constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 128016) to float*), align 16
@c = constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256048) to float*), align 16
@d = constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 384080) to float*), align 16
@e = constant float* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512128) to float*), align 16
@aa = constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 640192) to [256 x float]*), align 16
@bb = constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 902416) to [256 x float]*), align 16
@cc = constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1164640) to [256 x float]*), align 16
@tt = constant [256 x float]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1426880) to [256 x float]*), align 16
@array = common global [65536 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [7 x i8] c"%.*g \0A\00", align 1
@digits = internal global i32 6, align 4
@temp = common global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"s000 \00", align 1
@X = common global [32000 x float] zeroinitializer, align 16
@Y = common global [32000 x float] zeroinitializer, align 16
@Z = common global [32000 x float] zeroinitializer, align 16
@U = common global [32000 x float] zeroinitializer, align 16
@V = common global [32000 x float] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"s111 \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"s112 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"s113 \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"s114 \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"s115 \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"s116 \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"s118 \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"s119 \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"s121 \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"s122 \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"s123 \00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"s124 \00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"s125 \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"s126 \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"s127 \00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"s128 \00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"s131 \00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"s132 \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"s141 \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"s151 \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"s152 \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"s161 \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"s162 \00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"s171 \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"s172 \00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"s173 \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"s174 \00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"s175 \00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"s176 \00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"s211 \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"s212 \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"s221 \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"s222 \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"s231 \00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"s232 \00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"s233 \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"s234 \00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"s235 \00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"s241 \00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"s242 \00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"s243 \00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"s244 \00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"s251 \00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"s252 \00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"s253 \00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"s254 \00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"s255 \00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"s256 \00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"s257 \00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"s258 \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"s261 \00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"s271 \00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"s272 \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"s273 \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"s274 \00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"s275 \00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"s276 \00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"s277 \00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"s278 \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"s279 \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"s2710\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"s2711\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"s2712\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"s281 \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"s291 \00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"s292 \00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"s293 \00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"s2101\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"s2102\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"s2111\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"s311 \00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"s312 \00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"s313 \00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"s314 \00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"s315 \00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"s316 \00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"s317 \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"s318 \00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"s319 \00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"s3110\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"s3111\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"s3112\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"s3113\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"s321 \00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"s322 \00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"s323 \00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"s331 \00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"s332 \00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"s341 \00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"s342 \00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"s343 \00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"s351 \00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"s352 \00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"s353 \00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"s411 \00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"s412 \00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c"s413 \00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"s414 \00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"s415 \00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"s421 \00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"s422 \00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"s423 \00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"s424 \00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"s431 \00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"s432 \00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"s441 \00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"s442 \00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"s443 \00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"s451 \00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"s452 \00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"s453 \00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"s471 \00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"s481 \00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"s482 \00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"s491 \00", align 1
@.str.117 = private unnamed_addr constant [6 x i8] c"s4112\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"s4113\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"s4114\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"s4115\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"s4116\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"s4117\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"s4121\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"va\09\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"vag  \00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"vas  \00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"vif  \00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"vpv  \00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"vtv  \00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"vpvtv\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"vpvts\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"vpvpv\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"vtvtv\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"vsumr\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"vdotr\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"vbor \00", align 1
@ntimes = internal global i32 200000, align 4
@.str.137 = private unnamed_addr constant [14 x i8] c"S341\09 %.2f \09\09\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"S342\09 %.2f \09\09\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"S343\09 %.2f \09\09\00", align 1
@xx = common global float* null, align 8
@.str.140 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@indx = common global [32000 x i32] zeroinitializer, align 16
@.str.141 = private unnamed_addr constant [31 x i8] c"Running each loop %d times...\0A\00", align 1
@.str.142 = private unnamed_addr constant [30 x i8] c"Loop \09 Time(Sec) \09 Checksum \0A\00", align 1
@x = common global [32000 x float] zeroinitializer, align 16
@temp_int = common global i32 0, align 4
@yy = common global float* null, align 8

; Function Attrs: nounwind uwtable
define i32 @set1d(float* %arr, float %value, i32 %stride) #0 {
entry:
  %arr.addr = alloca float*, align 8
  %value.addr = alloca float, align 4
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i24 = alloca i32, align 4
  store float* %arr, float** %arr.addr, align 8
  store float %value, float* %value.addr, align 4
  store i32 %stride, i32* %stride.addr, align 4
  %0 = load i32, i32* %stride.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 32000
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %conv = sitofp i32 %add to float
  %conv2 = fpext float %conv to double
  %div = fdiv double 1.000000e+00, %conv2
  %conv3 = fptrunc double %div to float
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %arr.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %conv3, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %stride.addr, align 4
  %cmp4 = icmp eq i32 %6, -2
  br i1 %cmp4, label %if.then.6, label %if.else.23

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %i7, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %if.then.6
  %7 = load i32, i32* %i7, align 4
  %cmp9 = icmp slt i32 %7, 32000
  br i1 %cmp9, label %for.body.11, label %for.end.22

for.body.11:                                      ; preds = %for.cond.8
  %8 = load i32, i32* %i7, align 4
  %add12 = add nsw i32 %8, 1
  %9 = load i32, i32* %i7, align 4
  %add13 = add nsw i32 %9, 1
  %mul = mul nsw i32 %add12, %add13
  %conv14 = sitofp i32 %mul to float
  %conv15 = fpext float %conv14 to double
  %div16 = fdiv double 1.000000e+00, %conv15
  %conv17 = fptrunc double %div16 to float
  %10 = load i32, i32* %i7, align 4
  %idxprom18 = sext i32 %10 to i64
  %11 = load float*, float** %arr.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %11, i64 %idxprom18
  store float %conv17, float* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.11
  %12 = load i32, i32* %i7, align 4
  %inc21 = add nsw i32 %12, 1
  store i32 %inc21, i32* %i7, align 4
  br label %for.cond.8

for.end.22:                                       ; preds = %for.cond.8
  br label %if.end

if.else.23:                                       ; preds = %if.else
  store i32 0, i32* %i24, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.31, %if.else.23
  %13 = load i32, i32* %i24, align 4
  %cmp26 = icmp slt i32 %13, 32000
  br i1 %cmp26, label %for.body.28, label %for.end.33

for.body.28:                                      ; preds = %for.cond.25
  %14 = load float, float* %value.addr, align 4
  %15 = load i32, i32* %i24, align 4
  %idxprom29 = sext i32 %15 to i64
  %16 = load float*, float** %arr.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %16, i64 %idxprom29
  store float %14, float* %arrayidx30, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.28
  %17 = load i32, i32* %stride.addr, align 4
  %18 = load i32, i32* %i24, align 4
  %add32 = add nsw i32 %18, %17
  store i32 %add32, i32* %i24, align 4
  br label %for.cond.25

for.end.33:                                       ; preds = %for.cond.25
  br label %if.end

if.end:                                           ; preds = %for.end.33, %for.end.22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @set1ds(i32 %_n, float* %arr, float %value, i32 %stride) #0 {
entry:
  %_n.addr = alloca i32, align 4
  %arr.addr = alloca float*, align 8
  %value.addr = alloca float, align 4
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i24 = alloca i32, align 4
  store i32 %_n, i32* %_n.addr, align 4
  store float* %arr, float** %arr.addr, align 8
  store float %value, float* %value.addr, align 4
  store i32 %stride, i32* %stride.addr, align 4
  %0 = load i32, i32* %stride.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 32000
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %conv = sitofp i32 %add to float
  %conv2 = fpext float %conv to double
  %div = fdiv double 1.000000e+00, %conv2
  %conv3 = fptrunc double %div to float
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %arr.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float %conv3, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %stride.addr, align 4
  %cmp4 = icmp eq i32 %6, -2
  br i1 %cmp4, label %if.then.6, label %if.else.23

if.then.6:                                        ; preds = %if.else
  store i32 0, i32* %i7, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %if.then.6
  %7 = load i32, i32* %i7, align 4
  %cmp9 = icmp slt i32 %7, 32000
  br i1 %cmp9, label %for.body.11, label %for.end.22

for.body.11:                                      ; preds = %for.cond.8
  %8 = load i32, i32* %i7, align 4
  %add12 = add nsw i32 %8, 1
  %9 = load i32, i32* %i7, align 4
  %add13 = add nsw i32 %9, 1
  %mul = mul nsw i32 %add12, %add13
  %conv14 = sitofp i32 %mul to float
  %conv15 = fpext float %conv14 to double
  %div16 = fdiv double 1.000000e+00, %conv15
  %conv17 = fptrunc double %div16 to float
  %10 = load i32, i32* %i7, align 4
  %idxprom18 = sext i32 %10 to i64
  %11 = load float*, float** %arr.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %11, i64 %idxprom18
  store float %conv17, float* %arrayidx19, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.11
  %12 = load i32, i32* %i7, align 4
  %inc21 = add nsw i32 %12, 1
  store i32 %inc21, i32* %i7, align 4
  br label %for.cond.8

for.end.22:                                       ; preds = %for.cond.8
  br label %if.end

if.else.23:                                       ; preds = %if.else
  store i32 0, i32* %i24, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.31, %if.else.23
  %13 = load i32, i32* %i24, align 4
  %cmp26 = icmp slt i32 %13, 32000
  br i1 %cmp26, label %for.body.28, label %for.end.33

for.body.28:                                      ; preds = %for.cond.25
  %14 = load float, float* %value.addr, align 4
  %15 = load i32, i32* %i24, align 4
  %idxprom29 = sext i32 %15 to i64
  %16 = load float*, float** %arr.addr, align 8
  %arrayidx30 = getelementptr inbounds float, float* %16, i64 %idxprom29
  store float %14, float* %arrayidx30, align 4
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.28
  %17 = load i32, i32* %stride.addr, align 4
  %18 = load i32, i32* %i24, align 4
  %add32 = add nsw i32 %18, %17
  store i32 %add32, i32* %i24, align 4
  br label %for.cond.25

for.end.33:                                       ; preds = %for.cond.25
  br label %if.end

if.end:                                           ; preds = %for.end.33, %for.end.22
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @set2d([256 x float]* %arr, float %value, i32 %stride) #0 {
entry:
  %arr.addr = alloca [256 x float]*, align 8
  %value.addr = alloca float, align 4
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i15 = alloca i32, align 4
  %j20 = alloca i32, align 4
  %i42 = alloca i32, align 4
  %j47 = alloca i32, align 4
  store [256 x float]* %arr, [256 x float]** %arr.addr, align 8
  store float %value, float* %value.addr, align 4
  store i32 %stride, i32* %stride.addr, align 4
  %0 = load i32, i32* %stride.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %2, 256
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 %3, 1
  %conv = sitofp i32 %add to float
  %conv5 = fpext float %conv to double
  %div = fdiv double 1.000000e+00, %conv5
  %conv6 = fptrunc double %div to float
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %5 to i64
  %6 = load [256 x float]*, [256 x float]** %arr.addr, align 8
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %6, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx, i32 0, i64 %idxprom
  store float %conv6, float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  br label %if.end.62

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %stride.addr, align 4
  %cmp12 = icmp eq i32 %9, -2
  br i1 %cmp12, label %if.then.14, label %if.else.41

if.then.14:                                       ; preds = %if.else
  store i32 0, i32* %i15, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.38, %if.then.14
  %10 = load i32, i32* %i15, align 4
  %cmp17 = icmp slt i32 %10, 256
  br i1 %cmp17, label %for.body.19, label %for.end.40

for.body.19:                                      ; preds = %for.cond.16
  store i32 0, i32* %j20, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.35, %for.body.19
  %11 = load i32, i32* %j20, align 4
  %cmp22 = icmp slt i32 %11, 256
  br i1 %cmp22, label %for.body.24, label %for.end.37

for.body.24:                                      ; preds = %for.cond.21
  %12 = load i32, i32* %i15, align 4
  %add25 = add nsw i32 %12, 1
  %13 = load i32, i32* %i15, align 4
  %add26 = add nsw i32 %13, 1
  %mul = mul nsw i32 %add25, %add26
  %conv27 = sitofp i32 %mul to float
  %conv28 = fpext float %conv27 to double
  %div29 = fdiv double 1.000000e+00, %conv28
  %conv30 = fptrunc double %div29 to float
  %14 = load i32, i32* %j20, align 4
  %idxprom31 = sext i32 %14 to i64
  %15 = load i32, i32* %i15, align 4
  %idxprom32 = sext i32 %15 to i64
  %16 = load [256 x float]*, [256 x float]** %arr.addr, align 8
  %arrayidx33 = getelementptr inbounds [256 x float], [256 x float]* %16, i64 %idxprom32
  %arrayidx34 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx33, i32 0, i64 %idxprom31
  store float %conv30, float* %arrayidx34, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.24
  %17 = load i32, i32* %j20, align 4
  %inc36 = add nsw i32 %17, 1
  store i32 %inc36, i32* %j20, align 4
  br label %for.cond.21

for.end.37:                                       ; preds = %for.cond.21
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %18 = load i32, i32* %i15, align 4
  %inc39 = add nsw i32 %18, 1
  store i32 %inc39, i32* %i15, align 4
  br label %for.cond.16

for.end.40:                                       ; preds = %for.cond.16
  br label %if.end

if.else.41:                                       ; preds = %if.else
  store i32 0, i32* %i42, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.59, %if.else.41
  %19 = load i32, i32* %i42, align 4
  %cmp44 = icmp slt i32 %19, 256
  br i1 %cmp44, label %for.body.46, label %for.end.61

for.body.46:                                      ; preds = %for.cond.43
  store i32 0, i32* %j47, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.56, %for.body.46
  %20 = load i32, i32* %j47, align 4
  %cmp49 = icmp slt i32 %20, 256
  br i1 %cmp49, label %for.body.51, label %for.end.58

for.body.51:                                      ; preds = %for.cond.48
  %21 = load float, float* %value.addr, align 4
  %22 = load i32, i32* %j47, align 4
  %idxprom52 = sext i32 %22 to i64
  %23 = load i32, i32* %i42, align 4
  %idxprom53 = sext i32 %23 to i64
  %24 = load [256 x float]*, [256 x float]** %arr.addr, align 8
  %arrayidx54 = getelementptr inbounds [256 x float], [256 x float]* %24, i64 %idxprom53
  %arrayidx55 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx54, i32 0, i64 %idxprom52
  store float %21, float* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.51
  %25 = load i32, i32* %stride.addr, align 4
  %26 = load i32, i32* %j47, align 4
  %add57 = add nsw i32 %26, %25
  store i32 %add57, i32* %j47, align 4
  br label %for.cond.48

for.end.58:                                       ; preds = %for.cond.48
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58
  %27 = load i32, i32* %i42, align 4
  %inc60 = add nsw i32 %27, 1
  store i32 %inc60, i32* %i42, align 4
  br label %for.cond.43

for.end.61:                                       ; preds = %for.cond.43
  br label %if.end

if.end:                                           ; preds = %for.end.61, %for.end.40
  br label %if.end.62

if.end.62:                                        ; preds = %if.end, %for.end.11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define float @sum1d(float* %arr) #0 {
entry:
  %arr.addr = alloca float*, align 8
  %ret = alloca float, align 4
  %i = alloca i32, align 4
  store float* %arr, float** %arr.addr, align 8
  store float 0.000000e+00, float* %ret, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load float*, float** %arr.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load float, float* %ret, align 4
  %add = fadd float %4, %3
  store float %add, float* %ret, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load float, float* %ret, align 4
  ret float %6
}

; Function Attrs: nounwind uwtable
define void @check(i32 %name) #0 {
entry:
  %name.addr = alloca i32, align 4
  %suma = alloca float, align 4
  %sumb = alloca float, align 4
  %sumc = alloca float, align 4
  %sumd = alloca float, align 4
  %sume = alloca float, align 4
  %i = alloca i32, align 4
  %sumaa = alloca float, align 4
  %sumbb = alloca float, align 4
  %sumcc = alloca float, align 4
  %i13 = alloca i32, align 4
  %j = alloca i32, align 4
  %sumarray = alloca float, align 4
  %i41 = alloca i32, align 4
  store i32 %name, i32* %name.addr, align 4
  store float 0.000000e+00, float* %suma, align 4
  store float 0.000000e+00, float* %sumb, align 4
  store float 0.000000e+00, float* %sumc, align 4
  store float 0.000000e+00, float* %sumd, align 4
  store float 0.000000e+00, float* %sume, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load float*, float** @a, align 16
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load float, float* %suma, align 4
  %add = fadd float %4, %3
  store float %add, float* %suma, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load float*, float** @b, align 16
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %8 = load float, float* %sumb, align 4
  %add3 = fadd float %8, %7
  store float %add3, float* %sumb, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load float*, float** @c, align 16
  %arrayidx5 = getelementptr inbounds float, float* %10, i64 %idxprom4
  %11 = load float, float* %arrayidx5, align 4
  %12 = load float, float* %sumc, align 4
  %add6 = fadd float %12, %11
  store float %add6, float* %sumc, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load float*, float** @d, align 16
  %arrayidx8 = getelementptr inbounds float, float* %14, i64 %idxprom7
  %15 = load float, float* %arrayidx8, align 4
  %16 = load float, float* %sumd, align 4
  %add9 = fadd float %16, %15
  store float %add9, float* %sumd, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load float*, float** @e, align 16
  %arrayidx11 = getelementptr inbounds float, float* %18, i64 %idxprom10
  %19 = load float, float* %arrayidx11, align 4
  %20 = load float, float* %sume, align 4
  %add12 = fadd float %20, %19
  store float %add12, float* %sume, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store float 0.000000e+00, float* %sumaa, align 4
  store float 0.000000e+00, float* %sumbb, align 4
  store float 0.000000e+00, float* %sumcc, align 4
  store i32 0, i32* %i13, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.38, %for.end
  %22 = load i32, i32* %i13, align 4
  %cmp15 = icmp slt i32 %22, 256
  br i1 %cmp15, label %for.body.16, label %for.end.40

for.body.16:                                      ; preds = %for.cond.14
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.35, %for.body.16
  %23 = load i32, i32* %j, align 4
  %cmp18 = icmp slt i32 %23, 256
  br i1 %cmp18, label %for.body.19, label %for.end.37

for.body.19:                                      ; preds = %for.cond.17
  %24 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %24 to i64
  %25 = load i32, i32* %i13, align 4
  %idxprom21 = sext i32 %25 to i64
  %26 = load [256 x float]*, [256 x float]** @aa, align 16
  %arrayidx22 = getelementptr inbounds [256 x float], [256 x float]* %26, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx22, i32 0, i64 %idxprom20
  %27 = load float, float* %arrayidx23, align 4
  %28 = load float, float* %sumaa, align 4
  %add24 = fadd float %28, %27
  store float %add24, float* %sumaa, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load i32, i32* %i13, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load [256 x float]*, [256 x float]** @bb, align 16
  %arrayidx27 = getelementptr inbounds [256 x float], [256 x float]* %31, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx27, i32 0, i64 %idxprom25
  %32 = load float, float* %arrayidx28, align 4
  %33 = load float, float* %sumbb, align 4
  %add29 = fadd float %33, %32
  store float %add29, float* %sumbb, align 4
  %34 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i32, i32* %i13, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load [256 x float]*, [256 x float]** @cc, align 16
  %arrayidx32 = getelementptr inbounds [256 x float], [256 x float]* %36, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx32, i32 0, i64 %idxprom30
  %37 = load float, float* %arrayidx33, align 4
  %38 = load float, float* %sumcc, align 4
  %add34 = fadd float %38, %37
  store float %add34, float* %sumcc, align 4
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.19
  %39 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %39, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.17

for.end.37:                                       ; preds = %for.cond.17
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end.37
  %40 = load i32, i32* %i13, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, i32* %i13, align 4
  br label %for.cond.14

for.end.40:                                       ; preds = %for.cond.14
  store float 0.000000e+00, float* %sumarray, align 4
  store i32 0, i32* %i41, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.48, %for.end.40
  %41 = load i32, i32* %i41, align 4
  %cmp43 = icmp slt i32 %41, 65536
  br i1 %cmp43, label %for.body.44, label %for.end.50

for.body.44:                                      ; preds = %for.cond.42
  %42 = load i32, i32* %i41, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [65536 x float], [65536 x float]* @array, i32 0, i64 %idxprom45
  %43 = load float, float* %arrayidx46, align 4
  %44 = load float, float* %sumarray, align 4
  %add47 = fadd float %44, %43
  store float %add47, float* %sumarray, align 4
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.44
  %45 = load i32, i32* %i41, align 4
  %inc49 = add nsw i32 %45, 1
  store i32 %inc49, i32* %i41, align 4
  br label %for.cond.42

for.end.50:                                       ; preds = %for.cond.42
  %46 = load i32, i32* %name.addr, align 4
  %cmp51 = icmp eq i32 %46, 1
  br i1 %cmp51, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.50
  %47 = load i32, i32* @digits, align 4
  %48 = load float, float* %suma, align 4
  %conv = fpext float %48 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %47, double %conv)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.50
  %49 = load i32, i32* %name.addr, align 4
  %cmp52 = icmp eq i32 %49, 2
  br i1 %cmp52, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.end
  %50 = load i32, i32* @digits, align 4
  %51 = load float, float* %sumb, align 4
  %conv55 = fpext float %51 to double
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %50, double %conv55)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.end
  %52 = load i32, i32* %name.addr, align 4
  %cmp58 = icmp eq i32 %52, 3
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %if.end.57
  %53 = load i32, i32* @digits, align 4
  %54 = load float, float* %sumc, align 4
  %conv61 = fpext float %54 to double
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %53, double %conv61)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %if.end.57
  %55 = load i32, i32* %name.addr, align 4
  %cmp64 = icmp eq i32 %55, 4
  br i1 %cmp64, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.end.63
  %56 = load i32, i32* @digits, align 4
  %57 = load float, float* %sumd, align 4
  %conv67 = fpext float %57 to double
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %56, double %conv67)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.end.63
  %58 = load i32, i32* %name.addr, align 4
  %cmp70 = icmp eq i32 %58, 5
  br i1 %cmp70, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %if.end.69
  %59 = load i32, i32* @digits, align 4
  %60 = load float, float* %sume, align 4
  %conv73 = fpext float %60 to double
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %59, double %conv73)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.end.69
  %61 = load i32, i32* %name.addr, align 4
  %cmp76 = icmp eq i32 %61, 11
  br i1 %cmp76, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.end.75
  %62 = load i32, i32* @digits, align 4
  %63 = load float, float* %sumaa, align 4
  %conv79 = fpext float %63 to double
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %62, double %conv79)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.end.75
  %64 = load i32, i32* %name.addr, align 4
  %cmp82 = icmp eq i32 %64, 22
  br i1 %cmp82, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.end.81
  %65 = load i32, i32* @digits, align 4
  %66 = load float, float* %sumbb, align 4
  %conv85 = fpext float %66 to double
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %65, double %conv85)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.end.81
  %67 = load i32, i32* %name.addr, align 4
  %cmp88 = icmp eq i32 %67, 33
  br i1 %cmp88, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %if.end.87
  %68 = load i32, i32* @digits, align 4
  %69 = load float, float* %sumcc, align 4
  %conv91 = fpext float %69 to double
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %68, double %conv91)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %if.end.87
  %70 = load i32, i32* %name.addr, align 4
  %cmp94 = icmp eq i32 %70, 0
  br i1 %cmp94, label %if.then.96, label %if.end.99

if.then.96:                                       ; preds = %if.end.93
  %71 = load i32, i32* @digits, align 4
  %72 = load float, float* %sumarray, align 4
  %conv97 = fpext float %72 to double
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %71, double %conv97)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.96, %if.end.93
  %73 = load i32, i32* %name.addr, align 4
  %cmp100 = icmp eq i32 %73, 12
  br i1 %cmp100, label %if.then.102, label %if.end.106

if.then.102:                                      ; preds = %if.end.99
  %74 = load i32, i32* @digits, align 4
  %75 = load float, float* %suma, align 4
  %76 = load float, float* %sumb, align 4
  %add103 = fadd float %75, %76
  %conv104 = fpext float %add103 to double
  %call105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %74, double %conv104)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.102, %if.end.99
  %77 = load i32, i32* %name.addr, align 4
  %cmp107 = icmp eq i32 %77, 25
  br i1 %cmp107, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %if.end.106
  %78 = load i32, i32* @digits, align 4
  %79 = load float, float* %sumb, align 4
  %80 = load float, float* %sume, align 4
  %add110 = fadd float %79, %80
  %conv111 = fpext float %add110 to double
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %78, double %conv111)
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %if.end.106
  %81 = load i32, i32* %name.addr, align 4
  %cmp114 = icmp eq i32 %81, 13
  br i1 %cmp114, label %if.then.116, label %if.end.120

if.then.116:                                      ; preds = %if.end.113
  %82 = load i32, i32* @digits, align 4
  %83 = load float, float* %suma, align 4
  %84 = load float, float* %sumc, align 4
  %add117 = fadd float %83, %84
  %conv118 = fpext float %add117 to double
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %82, double %conv118)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.116, %if.end.113
  %85 = load i32, i32* %name.addr, align 4
  %cmp121 = icmp eq i32 %85, 123
  br i1 %cmp121, label %if.then.123, label %if.end.128

if.then.123:                                      ; preds = %if.end.120
  %86 = load i32, i32* @digits, align 4
  %87 = load float, float* %suma, align 4
  %88 = load float, float* %sumb, align 4
  %add124 = fadd float %87, %88
  %89 = load float, float* %sumc, align 4
  %add125 = fadd float %add124, %89
  %conv126 = fpext float %add125 to double
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %86, double %conv126)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.123, %if.end.120
  %90 = load i32, i32* %name.addr, align 4
  %cmp129 = icmp eq i32 %90, 1122
  br i1 %cmp129, label %if.then.131, label %if.end.135

if.then.131:                                      ; preds = %if.end.128
  %91 = load i32, i32* @digits, align 4
  %92 = load float, float* %sumaa, align 4
  %93 = load float, float* %sumbb, align 4
  %add132 = fadd float %92, %93
  %conv133 = fpext float %add132 to double
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %91, double %conv133)
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.131, %if.end.128
  %94 = load i32, i32* %name.addr, align 4
  %cmp136 = icmp eq i32 %94, 112233
  br i1 %cmp136, label %if.then.138, label %if.end.143

if.then.138:                                      ; preds = %if.end.135
  %95 = load i32, i32* @digits, align 4
  %96 = load float, float* %sumaa, align 4
  %97 = load float, float* %sumbb, align 4
  %add139 = fadd float %96, %97
  %98 = load float, float* %sumcc, align 4
  %add140 = fadd float %add139, %98
  %conv141 = fpext float %add140 to double
  %call142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %95, double %conv141)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.138, %if.end.135
  %99 = load i32, i32* %name.addr, align 4
  %cmp144 = icmp eq i32 %99, 111
  br i1 %cmp144, label %if.then.146, label %if.end.150

if.then.146:                                      ; preds = %if.end.143
  %100 = load i32, i32* @digits, align 4
  %101 = load float, float* %sumaa, align 4
  %102 = load float, float* %suma, align 4
  %add147 = fadd float %101, %102
  %conv148 = fpext float %add147 to double
  %call149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %100, double %conv148)
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.146, %if.end.143
  %103 = load i32, i32* %name.addr, align 4
  %cmp151 = icmp eq i32 %103, -1
  br i1 %cmp151, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.end.150
  %104 = load i32, i32* @digits, align 4
  %105 = load float, float* @temp, align 4
  %conv154 = fpext float %105 to double
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %104, double %conv154)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.end.150
  %106 = load i32, i32* %name.addr, align 4
  %cmp157 = icmp eq i32 %106, -12
  br i1 %cmp157, label %if.then.159, label %if.end.163

if.then.159:                                      ; preds = %if.end.156
  %107 = load i32, i32* @digits, align 4
  %108 = load float, float* @temp, align 4
  %109 = load float, float* %sumb, align 4
  %add160 = fadd float %108, %109
  %conv161 = fpext float %add160 to double
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %107, double %conv161)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.159, %if.end.156
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @init(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %any = alloca float, align 4
  %zero = alloca float, align 4
  %half = alloca float, align 4
  %one = alloca float, align 4
  %two = alloca float, align 4
  %small = alloca float, align 4
  %unit = alloca i32, align 4
  %frac = alloca i32, align 4
  %frac2 = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store float 0.000000e+00, float* %any, align 4
  store float 0.000000e+00, float* %zero, align 4
  store float 5.000000e-01, float* %half, align 4
  store float 1.000000e+00, float* %one, align 4
  store float 2.000000e+00, float* %two, align 4
  store float 0x3EB0C6F7A0000000, float* %small, align 4
  store i32 1, i32* %unit, align 4
  store i32 -1, i32* %frac, align 4
  store i32 -2, i32* %frac2, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 32000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 1, %2
  %conv = sitofp i32 %add to float
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [32000 x float], [32000 x float]* @X, i32 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %add1 = add nsw i32 2, %4
  %conv2 = sitofp i32 %add1 to float
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [32000 x float], [32000 x float]* @Y, i32 0, i64 %idxprom3
  store float %conv2, float* %arrayidx4, align 4
  %6 = load i32, i32* %i, align 4
  %add5 = add nsw i32 3, %6
  %conv6 = sitofp i32 %add5 to float
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [32000 x float], [32000 x float]* @Z, i32 0, i64 %idxprom7
  store float %conv6, float* %arrayidx8, align 4
  %8 = load i32, i32* %i, align 4
  %add9 = add nsw i32 4, %8
  %conv10 = sitofp i32 %add9 to float
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [32000 x float], [32000 x float]* @U, i32 0, i64 %idxprom11
  store float %conv10, float* %arrayidx12, align 4
  %10 = load i32, i32* %i, align 4
  %add13 = add nsw i32 5, %10
  %conv14 = sitofp i32 %add13 to float
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [32000 x float], [32000 x float]* @V, i32 0, i64 %idxprom15
  store float %conv14, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.1110

if.else:                                          ; preds = %entry
  %13 = load i8*, i8** %name.addr, align 8
  %call17 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #4
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.25, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %14 = load float*, float** @a, align 16
  %15 = load float, float* %one, align 4
  %16 = load i32, i32* %unit, align 4
  %call20 = call i32 @set1d(float* %14, float %15, i32 %16)
  %17 = load float*, float** @b, align 16
  %18 = load float, float* %any, align 4
  %19 = load i32, i32* %frac2, align 4
  %call21 = call i32 @set1d(float* %17, float %18, i32 %19)
  %20 = load float*, float** @c, align 16
  %21 = load float, float* %any, align 4
  %22 = load i32, i32* %frac2, align 4
  %call22 = call i32 @set1d(float* %20, float %21, i32 %22)
  %23 = load float*, float** @d, align 16
  %24 = load float, float* %any, align 4
  %25 = load i32, i32* %frac2, align 4
  %call23 = call i32 @set1d(float* %23, float %24, i32 %25)
  %26 = load float*, float** @e, align 16
  %27 = load float, float* %any, align 4
  %28 = load i32, i32* %frac2, align 4
  %call24 = call i32 @set1d(float* %26, float %27, i32 %28)
  br label %if.end.1109

if.else.25:                                       ; preds = %if.else
  %29 = load i8*, i8** %name.addr, align 8
  %call26 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #4
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else.31, label %if.then.28

if.then.28:                                       ; preds = %if.else.25
  %30 = load float*, float** @a, align 16
  %31 = load float, float* %one, align 4
  %32 = load i32, i32* %unit, align 4
  %call29 = call i32 @set1d(float* %30, float %31, i32 %32)
  %33 = load float*, float** @b, align 16
  %34 = load float, float* %any, align 4
  %35 = load i32, i32* %frac2, align 4
  %call30 = call i32 @set1d(float* %33, float %34, i32 %35)
  br label %if.end.1108

if.else.31:                                       ; preds = %if.else.25
  %36 = load i8*, i8** %name.addr, align 8
  %call32 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #4
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else.37, label %if.then.34

if.then.34:                                       ; preds = %if.else.31
  %37 = load float*, float** @a, align 16
  %38 = load float, float* %one, align 4
  %39 = load i32, i32* %unit, align 4
  %call35 = call i32 @set1d(float* %37, float %38, i32 %39)
  %40 = load float*, float** @b, align 16
  %41 = load float, float* %any, align 4
  %42 = load i32, i32* %frac2, align 4
  %call36 = call i32 @set1d(float* %40, float %41, i32 %42)
  br label %if.end.1107

if.else.37:                                       ; preds = %if.else.31
  %43 = load i8*, i8** %name.addr, align 8
  %call38 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #4
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else.43, label %if.then.40

if.then.40:                                       ; preds = %if.else.37
  %44 = load [256 x float]*, [256 x float]** @aa, align 16
  %45 = load float, float* %any, align 4
  %46 = load i32, i32* %frac, align 4
  %call41 = call i32 @set2d([256 x float]* %44, float %45, i32 %46)
  %47 = load [256 x float]*, [256 x float]** @bb, align 16
  %48 = load float, float* %any, align 4
  %49 = load i32, i32* %frac2, align 4
  %call42 = call i32 @set2d([256 x float]* %47, float %48, i32 %49)
  br label %if.end.1106

if.else.43:                                       ; preds = %if.else.37
  %50 = load i8*, i8** %name.addr, align 8
  %call44 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #4
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else.51, label %if.then.46

if.then.46:                                       ; preds = %if.else.43
  %51 = load float*, float** @a, align 16
  %52 = load float, float* %one, align 4
  %53 = load i32, i32* %unit, align 4
  %call47 = call i32 @set1d(float* %51, float %52, i32 %53)
  %54 = load [256 x float]*, [256 x float]** @aa, align 16
  %55 = load float, float* %small, align 4
  %56 = load i32, i32* %unit, align 4
  %call48 = call i32 @set2d([256 x float]* %54, float %55, i32 %56)
  %57 = load [256 x float]*, [256 x float]** @bb, align 16
  %58 = load float, float* %small, align 4
  %59 = load i32, i32* %unit, align 4
  %call49 = call i32 @set2d([256 x float]* %57, float %58, i32 %59)
  %60 = load [256 x float]*, [256 x float]** @cc, align 16
  %61 = load float, float* %small, align 4
  %62 = load i32, i32* %unit, align 4
  %call50 = call i32 @set2d([256 x float]* %60, float %61, i32 %62)
  br label %if.end.1105

if.else.51:                                       ; preds = %if.else.43
  %63 = load i8*, i8** %name.addr, align 8
  %call52 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #4
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.56, label %if.then.54

if.then.54:                                       ; preds = %if.else.51
  %64 = load float*, float** @a, align 16
  %65 = load float, float* %one, align 4
  %66 = load i32, i32* %unit, align 4
  %call55 = call i32 @set1d(float* %64, float %65, i32 %66)
  br label %if.end.1104

if.else.56:                                       ; preds = %if.else.51
  %67 = load i8*, i8** %name.addr, align 8
  %call57 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #4
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.else.62, label %if.then.59

if.then.59:                                       ; preds = %if.else.56
  %68 = load float*, float** @a, align 16
  %69 = load float, float* %one, align 4
  %70 = load i32, i32* %unit, align 4
  %call60 = call i32 @set1d(float* %68, float %69, i32 %70)
  %71 = load [256 x float]*, [256 x float]** @bb, align 16
  %72 = load float, float* %small, align 4
  %73 = load i32, i32* %unit, align 4
  %call61 = call i32 @set2d([256 x float]* %71, float %72, i32 %73)
  br label %if.end.1103

if.else.62:                                       ; preds = %if.else.56
  %74 = load i8*, i8** %name.addr, align 8
  %call63 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #4
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.else.68, label %if.then.65

if.then.65:                                       ; preds = %if.else.62
  %75 = load [256 x float]*, [256 x float]** @aa, align 16
  %76 = load float, float* %one, align 4
  %77 = load i32, i32* %unit, align 4
  %call66 = call i32 @set2d([256 x float]* %75, float %76, i32 %77)
  %78 = load [256 x float]*, [256 x float]** @bb, align 16
  %79 = load float, float* %any, align 4
  %80 = load i32, i32* %frac2, align 4
  %call67 = call i32 @set2d([256 x float]* %78, float %79, i32 %80)
  br label %if.end.1102

if.else.68:                                       ; preds = %if.else.62
  %81 = load i8*, i8** %name.addr, align 8
  %call69 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #4
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else.74, label %if.then.71

if.then.71:                                       ; preds = %if.else.68
  %82 = load float*, float** @a, align 16
  %83 = load float, float* %one, align 4
  %84 = load i32, i32* %unit, align 4
  %call72 = call i32 @set1d(float* %82, float %83, i32 %84)
  %85 = load float*, float** @b, align 16
  %86 = load float, float* %any, align 4
  %87 = load i32, i32* %frac2, align 4
  %call73 = call i32 @set1d(float* %85, float %86, i32 %87)
  br label %if.end.1101

if.else.74:                                       ; preds = %if.else.68
  %88 = load i8*, i8** %name.addr, align 8
  %call75 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #4
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.else.80, label %if.then.77

if.then.77:                                       ; preds = %if.else.74
  %89 = load float*, float** @a, align 16
  %90 = load float, float* %one, align 4
  %91 = load i32, i32* %unit, align 4
  %call78 = call i32 @set1d(float* %89, float %90, i32 %91)
  %92 = load float*, float** @b, align 16
  %93 = load float, float* %any, align 4
  %94 = load i32, i32* %frac2, align 4
  %call79 = call i32 @set1d(float* %92, float %93, i32 %94)
  br label %if.end.1100

if.else.80:                                       ; preds = %if.else.74
  %95 = load i8*, i8** %name.addr, align 8
  %call81 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #4
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.else.89, label %if.then.83

if.then.83:                                       ; preds = %if.else.80
  %96 = load float*, float** @a, align 16
  %97 = load float, float* %zero, align 4
  %98 = load i32, i32* %unit, align 4
  %call84 = call i32 @set1d(float* %96, float %97, i32 %98)
  %99 = load float*, float** @b, align 16
  %100 = load float, float* %one, align 4
  %101 = load i32, i32* %unit, align 4
  %call85 = call i32 @set1d(float* %99, float %100, i32 %101)
  %102 = load float*, float** @c, align 16
  %103 = load float, float* %one, align 4
  %104 = load i32, i32* %unit, align 4
  %call86 = call i32 @set1d(float* %102, float %103, i32 %104)
  %105 = load float*, float** @d, align 16
  %106 = load float, float* %any, align 4
  %107 = load i32, i32* %frac, align 4
  %call87 = call i32 @set1d(float* %105, float %106, i32 %107)
  %108 = load float*, float** @e, align 16
  %109 = load float, float* %any, align 4
  %110 = load i32, i32* %frac, align 4
  %call88 = call i32 @set1d(float* %108, float %109, i32 %110)
  br label %if.end.1099

if.else.89:                                       ; preds = %if.else.80
  %111 = load i8*, i8** %name.addr, align 8
  %call90 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #4
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.else.98, label %if.then.92

if.then.92:                                       ; preds = %if.else.89
  %112 = load float*, float** @a, align 16
  %113 = load float, float* %zero, align 4
  %114 = load i32, i32* %unit, align 4
  %call93 = call i32 @set1d(float* %112, float %113, i32 %114)
  %115 = load float*, float** @b, align 16
  %116 = load float, float* %one, align 4
  %117 = load i32, i32* %unit, align 4
  %call94 = call i32 @set1d(float* %115, float %116, i32 %117)
  %118 = load float*, float** @c, align 16
  %119 = load float, float* %one, align 4
  %120 = load i32, i32* %unit, align 4
  %call95 = call i32 @set1d(float* %118, float %119, i32 %120)
  %121 = load float*, float** @d, align 16
  %122 = load float, float* %any, align 4
  %123 = load i32, i32* %frac, align 4
  %call96 = call i32 @set1d(float* %121, float %122, i32 %123)
  %124 = load float*, float** @e, align 16
  %125 = load float, float* %any, align 4
  %126 = load i32, i32* %frac, align 4
  %call97 = call i32 @set1d(float* %124, float %125, i32 %126)
  br label %if.end.1098

if.else.98:                                       ; preds = %if.else.89
  %127 = load i8*, i8** %name.addr, align 8
  %call99 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #4
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.else.106, label %if.then.101

if.then.101:                                      ; preds = %if.else.98
  %128 = load float, float* %zero, align 4
  %129 = load i32, i32* %unit, align 4
  %call102 = call i32 @set1ds(i32 1024000000, float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i32 0, i32 0), float %128, i32 %129)
  %130 = load [256 x float]*, [256 x float]** @aa, align 16
  %131 = load float, float* %one, align 4
  %132 = load i32, i32* %unit, align 4
  %call103 = call i32 @set2d([256 x float]* %130, float %131, i32 %132)
  %133 = load [256 x float]*, [256 x float]** @bb, align 16
  %134 = load float, float* %half, align 4
  %135 = load i32, i32* %unit, align 4
  %call104 = call i32 @set2d([256 x float]* %133, float %134, i32 %135)
  %136 = load [256 x float]*, [256 x float]** @cc, align 16
  %137 = load float, float* %two, align 4
  %138 = load i32, i32* %unit, align 4
  %call105 = call i32 @set2d([256 x float]* %136, float %137, i32 %138)
  br label %if.end.1097

if.else.106:                                      ; preds = %if.else.98
  %139 = load i8*, i8** %name.addr, align 8
  %call107 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #4
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.else.113, label %if.then.109

if.then.109:                                      ; preds = %if.else.106
  %140 = load [256 x float]*, [256 x float]** @bb, align 16
  %141 = load float, float* %one, align 4
  %142 = load i32, i32* %unit, align 4
  %call110 = call i32 @set2d([256 x float]* %140, float %141, i32 %142)
  %143 = load float, float* %any, align 4
  %144 = load i32, i32* %frac, align 4
  %call111 = call i32 @set1ds(i32 1024000000, float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i32 0, i32 0), float %143, i32 %144)
  %145 = load [256 x float]*, [256 x float]** @cc, align 16
  %146 = load float, float* %any, align 4
  %147 = load i32, i32* %frac, align 4
  %call112 = call i32 @set2d([256 x float]* %145, float %146, i32 %147)
  br label %if.end.1096

if.else.113:                                      ; preds = %if.else.106
  %148 = load i8*, i8** %name.addr, align 8
  %call114 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #4
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.else.122, label %if.then.116

if.then.116:                                      ; preds = %if.else.113
  %149 = load float*, float** @a, align 16
  %150 = load float, float* %zero, align 4
  %151 = load i32, i32* %unit, align 4
  %call117 = call i32 @set1d(float* %149, float %150, i32 %151)
  %152 = load float*, float** @b, align 16
  %153 = load float, float* %one, align 4
  %154 = load i32, i32* %unit, align 4
  %call118 = call i32 @set1d(float* %152, float %153, i32 %154)
  %155 = load float*, float** @c, align 16
  %156 = load float, float* %any, align 4
  %157 = load i32, i32* %frac, align 4
  %call119 = call i32 @set1d(float* %155, float %156, i32 %157)
  %158 = load float*, float** @d, align 16
  %159 = load float, float* %any, align 4
  %160 = load i32, i32* %frac, align 4
  %call120 = call i32 @set1d(float* %158, float %159, i32 %160)
  %161 = load float*, float** @e, align 16
  %162 = load float, float* %any, align 4
  %163 = load i32, i32* %frac, align 4
  %call121 = call i32 @set1d(float* %161, float %162, i32 %163)
  br label %if.end.1095

if.else.122:                                      ; preds = %if.else.113
  %164 = load i8*, i8** %name.addr, align 8
  %call123 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #4
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.else.130, label %if.then.125

if.then.125:                                      ; preds = %if.else.122
  %165 = load float*, float** @a, align 16
  %166 = load float, float* %zero, align 4
  %167 = load i32, i32* %unit, align 4
  %call126 = call i32 @set1d(float* %165, float %166, i32 %167)
  %168 = load float*, float** @b, align 16
  %169 = load float, float* %two, align 4
  %170 = load i32, i32* %unit, align 4
  %call127 = call i32 @set1d(float* %168, float %169, i32 %170)
  %171 = load float*, float** @c, align 16
  %172 = load float, float* %one, align 4
  %173 = load i32, i32* %unit, align 4
  %call128 = call i32 @set1d(float* %171, float %172, i32 %173)
  %174 = load float*, float** @d, align 16
  %175 = load float, float* %one, align 4
  %176 = load i32, i32* %unit, align 4
  %call129 = call i32 @set1d(float* %174, float %175, i32 %176)
  br label %if.end.1094

if.else.130:                                      ; preds = %if.else.122
  %177 = load i8*, i8** %name.addr, align 8
  %call131 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #4
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.else.136, label %if.then.133

if.then.133:                                      ; preds = %if.else.130
  %178 = load float*, float** @a, align 16
  %179 = load float, float* %one, align 4
  %180 = load i32, i32* %unit, align 4
  %call134 = call i32 @set1d(float* %178, float %179, i32 %180)
  %181 = load float*, float** @b, align 16
  %182 = load float, float* %any, align 4
  %183 = load i32, i32* %frac2, align 4
  %call135 = call i32 @set1d(float* %181, float %182, i32 %183)
  br label %if.end.1093

if.else.136:                                      ; preds = %if.else.130
  %184 = load i8*, i8** %name.addr, align 8
  %call137 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #4
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.else.143, label %if.then.139

if.then.139:                                      ; preds = %if.else.136
  %185 = load [256 x float]*, [256 x float]** @aa, align 16
  %186 = load float, float* %one, align 4
  %187 = load i32, i32* %unit, align 4
  %call140 = call i32 @set2d([256 x float]* %185, float %186, i32 %187)
  %188 = load float*, float** @b, align 16
  %189 = load float, float* %any, align 4
  %190 = load i32, i32* %frac, align 4
  %call141 = call i32 @set1d(float* %188, float %189, i32 %190)
  %191 = load float*, float** @c, align 16
  %192 = load float, float* %any, align 4
  %193 = load i32, i32* %frac, align 4
  %call142 = call i32 @set1d(float* %191, float %192, i32 %193)
  br label %if.end.1092

if.else.143:                                      ; preds = %if.else.136
  %194 = load i8*, i8** %name.addr, align 8
  %call144 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #4
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.else.149, label %if.then.146

if.then.146:                                      ; preds = %if.else.143
  %195 = load float, float* %one, align 4
  %196 = load i32, i32* %unit, align 4
  %call147 = call i32 @set1ds(i32 1024000000, float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i32 0, i32 0), float %195, i32 %196)
  %197 = load [256 x float]*, [256 x float]** @bb, align 16
  %198 = load float, float* %any, align 4
  %199 = load i32, i32* %frac2, align 4
  %call148 = call i32 @set2d([256 x float]* %197, float %198, i32 %199)
  br label %if.end.1091

if.else.149:                                      ; preds = %if.else.143
  %200 = load i8*, i8** %name.addr, align 8
  %call150 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #4
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.else.155, label %if.then.152

if.then.152:                                      ; preds = %if.else.149
  %201 = load float*, float** @a, align 16
  %202 = load float, float* %one, align 4
  %203 = load i32, i32* %unit, align 4
  %call153 = call i32 @set1d(float* %201, float %202, i32 %203)
  %204 = load float*, float** @b, align 16
  %205 = load float, float* %any, align 4
  %206 = load i32, i32* %frac2, align 4
  %call154 = call i32 @set1d(float* %204, float %205, i32 %206)
  br label %if.end.1090

if.else.155:                                      ; preds = %if.else.149
  %207 = load i8*, i8** %name.addr, align 8
  %call156 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #4
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.else.164, label %if.then.158

if.then.158:                                      ; preds = %if.else.155
  %208 = load float*, float** @a, align 16
  %209 = load float, float* %one, align 4
  %210 = load i32, i32* %unit, align 4
  %call159 = call i32 @set1d(float* %208, float %209, i32 %210)
  %211 = load float*, float** @b, align 16
  %212 = load float, float* %zero, align 4
  %213 = load i32, i32* %unit, align 4
  %call160 = call i32 @set1d(float* %211, float %212, i32 %213)
  %214 = load float*, float** @c, align 16
  %215 = load float, float* %any, align 4
  %216 = load i32, i32* %frac, align 4
  %call161 = call i32 @set1d(float* %214, float %215, i32 %216)
  %217 = load float*, float** @d, align 16
  %218 = load float, float* %any, align 4
  %219 = load i32, i32* %frac, align 4
  %call162 = call i32 @set1d(float* %217, float %218, i32 %219)
  %220 = load float*, float** @e, align 16
  %221 = load float, float* %any, align 4
  %222 = load i32, i32* %frac, align 4
  %call163 = call i32 @set1d(float* %220, float %221, i32 %222)
  br label %if.end.1089

if.else.164:                                      ; preds = %if.else.155
  %223 = load i8*, i8** %name.addr, align 8
  %call165 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #4
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.else.176, label %if.then.167

if.then.167:                                      ; preds = %if.else.164
  %224 = load float*, float** @a, align 16
  %225 = load float, float* %one, align 4
  %226 = load i32, i32* %unit, align 4
  %call168 = call i32 @set1d(float* %224, float %225, i32 %226)
  %227 = load float*, float** @b, align 16
  %arrayidx169 = getelementptr inbounds float, float* %227, i64 0
  %228 = load float, float* %one, align 4
  %call170 = call i32 @set1ds(i32 16000, float* %arrayidx169, float %228, i32 2)
  %229 = load float*, float** @b, align 16
  %arrayidx171 = getelementptr inbounds float, float* %229, i64 1
  %230 = load float, float* %one, align 4
  %sub = fsub float -0.000000e+00, %230
  %call172 = call i32 @set1ds(i32 16000, float* %arrayidx171, float %sub, i32 2)
  %231 = load float*, float** @c, align 16
  %232 = load float, float* %one, align 4
  %233 = load i32, i32* %unit, align 4
  %call173 = call i32 @set1d(float* %231, float %232, i32 %233)
  %234 = load float*, float** @d, align 16
  %235 = load float, float* %any, align 4
  %236 = load i32, i32* %frac, align 4
  %call174 = call i32 @set1d(float* %234, float %235, i32 %236)
  %237 = load float*, float** @e, align 16
  %238 = load float, float* %any, align 4
  %239 = load i32, i32* %frac, align 4
  %call175 = call i32 @set1d(float* %237, float %238, i32 %239)
  br label %if.end.1088

if.else.176:                                      ; preds = %if.else.164
  %240 = load i8*, i8** %name.addr, align 8
  %call177 = call i32 @strcmp(i8* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #4
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.else.183, label %if.then.179

if.then.179:                                      ; preds = %if.else.176
  %241 = load float*, float** @a, align 16
  %242 = load float, float* %one, align 4
  %243 = load i32, i32* %unit, align 4
  %call180 = call i32 @set1d(float* %241, float %242, i32 %243)
  %244 = load float*, float** @b, align 16
  %245 = load float, float* %any, align 4
  %246 = load i32, i32* %frac, align 4
  %call181 = call i32 @set1d(float* %244, float %245, i32 %246)
  %247 = load float*, float** @c, align 16
  %248 = load float, float* %any, align 4
  %249 = load i32, i32* %frac, align 4
  %call182 = call i32 @set1d(float* %247, float %248, i32 %249)
  br label %if.end.1087

if.else.183:                                      ; preds = %if.else.176
  %250 = load i8*, i8** %name.addr, align 8
  %call184 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #4
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.else.189, label %if.then.186

if.then.186:                                      ; preds = %if.else.183
  %251 = load float*, float** @a, align 16
  %252 = load float, float* %one, align 4
  %253 = load i32, i32* %unit, align 4
  %call187 = call i32 @set1d(float* %251, float %252, i32 %253)
  %254 = load float*, float** @b, align 16
  %255 = load float, float* %any, align 4
  %256 = load i32, i32* %frac2, align 4
  %call188 = call i32 @set1d(float* %254, float %255, i32 %256)
  br label %if.end.1086

if.else.189:                                      ; preds = %if.else.183
  %257 = load i8*, i8** %name.addr, align 8
  %call190 = call i32 @strcmp(i8* %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #4
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.else.195, label %if.then.192

if.then.192:                                      ; preds = %if.else.189
  %258 = load float*, float** @a, align 16
  %259 = load float, float* %one, align 4
  %260 = load i32, i32* %unit, align 4
  %call193 = call i32 @set1d(float* %258, float %259, i32 %260)
  %261 = load float*, float** @b, align 16
  %262 = load float, float* %any, align 4
  %263 = load i32, i32* %frac2, align 4
  %call194 = call i32 @set1d(float* %261, float %262, i32 %263)
  br label %if.end.1085

if.else.195:                                      ; preds = %if.else.189
  %264 = load i8*, i8** %name.addr, align 8
  %call196 = call i32 @strcmp(i8* %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #4
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.else.201, label %if.then.198

if.then.198:                                      ; preds = %if.else.195
  %265 = load float*, float** @a, align 16
  %266 = load float, float* %one, align 4
  %267 = load i32, i32* %unit, align 4
  %call199 = call i32 @set1d(float* %265, float %266, i32 %267)
  %268 = load float*, float** @b, align 16
  %269 = load float, float* %any, align 4
  %270 = load i32, i32* %frac2, align 4
  %call200 = call i32 @set1d(float* %268, float %269, i32 %270)
  br label %if.end.1084

if.else.201:                                      ; preds = %if.else.195
  %271 = load i8*, i8** %name.addr, align 8
  %call202 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #4
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.else.207, label %if.then.204

if.then.204:                                      ; preds = %if.else.201
  %272 = load float*, float** @a, align 16
  %273 = load float, float* %one, align 4
  %274 = load i32, i32* %unit, align 4
  %call205 = call i32 @set1d(float* %272, float %273, i32 %274)
  %275 = load float*, float** @b, align 16
  %276 = load float, float* %any, align 4
  %277 = load i32, i32* %frac2, align 4
  %call206 = call i32 @set1d(float* %275, float %276, i32 %277)
  br label %if.end.1083

if.else.207:                                      ; preds = %if.else.201
  %278 = load i8*, i8** %name.addr, align 8
  %call208 = call i32 @strcmp(i8* %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #4
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %if.else.213, label %if.then.210

if.then.210:                                      ; preds = %if.else.207
  %279 = load float*, float** @a, align 16
  %280 = load float, float* %one, align 4
  %281 = load i32, i32* %unit, align 4
  %call211 = call i32 @set1d(float* %279, float %280, i32 %281)
  %282 = load float*, float** @b, align 16
  %283 = load float, float* %any, align 4
  %284 = load i32, i32* %frac2, align 4
  %call212 = call i32 @set1d(float* %282, float %283, i32 %284)
  br label %if.end.1082

if.else.213:                                      ; preds = %if.else.207
  %285 = load i8*, i8** %name.addr, align 8
  %call214 = call i32 @strcmp(i8* %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #4
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.else.220, label %if.then.216

if.then.216:                                      ; preds = %if.else.213
  %286 = load float*, float** @a, align 16
  %287 = load float, float* %one, align 4
  %288 = load i32, i32* %unit, align 4
  %call217 = call i32 @set1d(float* %286, float %287, i32 %288)
  %289 = load float*, float** @b, align 16
  %290 = load float, float* %any, align 4
  %291 = load i32, i32* %frac, align 4
  %call218 = call i32 @set1d(float* %289, float %290, i32 %291)
  %292 = load float*, float** @c, align 16
  %293 = load float, float* %any, align 4
  %294 = load i32, i32* %frac, align 4
  %call219 = call i32 @set1d(float* %292, float %293, i32 %294)
  br label %if.end.1081

if.else.220:                                      ; preds = %if.else.213
  %295 = load i8*, i8** %name.addr, align 8
  %call221 = call i32 @strcmp(i8* %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)) #4
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.else.229, label %if.then.223

if.then.223:                                      ; preds = %if.else.220
  %296 = load float*, float** @a, align 16
  %297 = load float, float* %zero, align 4
  %298 = load i32, i32* %unit, align 4
  %call224 = call i32 @set1d(float* %296, float %297, i32 %298)
  %299 = load float*, float** @b, align 16
  %300 = load float, float* %one, align 4
  %301 = load i32, i32* %unit, align 4
  %call225 = call i32 @set1d(float* %299, float %300, i32 %301)
  %302 = load float*, float** @c, align 16
  %303 = load float, float* %any, align 4
  %304 = load i32, i32* %frac, align 4
  %call226 = call i32 @set1d(float* %302, float %303, i32 %304)
  %305 = load float*, float** @d, align 16
  %306 = load float, float* %any, align 4
  %307 = load i32, i32* %frac, align 4
  %call227 = call i32 @set1d(float* %305, float %306, i32 %307)
  %308 = load float*, float** @e, align 16
  %309 = load float, float* %any, align 4
  %310 = load i32, i32* %frac, align 4
  %call228 = call i32 @set1d(float* %308, float %309, i32 %310)
  br label %if.end.1080

if.else.229:                                      ; preds = %if.else.220
  %311 = load i8*, i8** %name.addr, align 8
  %call230 = call i32 @strcmp(i8* %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #4
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %if.else.237, label %if.then.232

if.then.232:                                      ; preds = %if.else.229
  %312 = load float*, float** @a, align 16
  %313 = load float, float* %any, align 4
  %314 = load i32, i32* %frac, align 4
  %call233 = call i32 @set1d(float* %312, float %313, i32 %314)
  %315 = load float*, float** @b, align 16
  %316 = load float, float* %one, align 4
  %317 = load i32, i32* %unit, align 4
  %call234 = call i32 @set1d(float* %315, float %316, i32 %317)
  %318 = load float*, float** @c, align 16
  %319 = load float, float* %one, align 4
  %320 = load i32, i32* %unit, align 4
  %call235 = call i32 @set1d(float* %318, float %319, i32 %320)
  %321 = load float*, float** @d, align 16
  %322 = load float, float* %any, align 4
  %323 = load i32, i32* %frac, align 4
  %call236 = call i32 @set1d(float* %321, float %322, i32 %323)
  br label %if.end.1079

if.else.237:                                      ; preds = %if.else.229
  %324 = load i8*, i8** %name.addr, align 8
  %call238 = call i32 @strcmp(i8* %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #4
  %tobool239 = icmp ne i32 %call238, 0
  br i1 %tobool239, label %if.else.245, label %if.then.240

if.then.240:                                      ; preds = %if.else.237
  %325 = load float*, float** @a, align 16
  %326 = load float, float* %one, align 4
  %327 = load i32, i32* %unit, align 4
  %call241 = call i32 @set1d(float* %325, float %326, i32 %327)
  %328 = load float*, float** @b, align 16
  %329 = load float, float* %any, align 4
  %330 = load i32, i32* %frac, align 4
  %call242 = call i32 @set1d(float* %328, float %329, i32 %330)
  %331 = load float*, float** @c, align 16
  %332 = load float, float* %any, align 4
  %333 = load i32, i32* %frac, align 4
  %call243 = call i32 @set1d(float* %331, float %332, i32 %333)
  %334 = load float*, float** @d, align 16
  %335 = load float, float* %any, align 4
  %336 = load i32, i32* %frac, align 4
  %call244 = call i32 @set1d(float* %334, float %335, i32 %336)
  br label %if.end.1078

if.else.245:                                      ; preds = %if.else.237
  %337 = load i8*, i8** %name.addr, align 8
  %call246 = call i32 @strcmp(i8* %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #4
  %tobool247 = icmp ne i32 %call246, 0
  br i1 %tobool247, label %if.else.252, label %if.then.248

if.then.248:                                      ; preds = %if.else.245
  %338 = load float*, float** @a, align 16
  %339 = load float, float* %zero, align 4
  %340 = load i32, i32* %unit, align 4
  %call249 = call i32 @set1d(float* %338, float %339, i32 %340)
  %341 = load float*, float** @b, align 16
  %342 = load float, float* %one, align 4
  %343 = load i32, i32* %unit, align 4
  %call250 = call i32 @set1d(float* %341, float %342, i32 %343)
  %344 = load float*, float** @c, align 16
  %345 = load float, float* %one, align 4
  %346 = load i32, i32* %unit, align 4
  %call251 = call i32 @set1d(float* %344, float %345, i32 %346)
  br label %if.end.1077

if.else.252:                                      ; preds = %if.else.245
  %347 = load i8*, i8** %name.addr, align 8
  %call253 = call i32 @strcmp(i8* %347, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #4
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.else.258, label %if.then.255

if.then.255:                                      ; preds = %if.else.252
  %348 = load [256 x float]*, [256 x float]** @aa, align 16
  %349 = load float, float* %one, align 4
  %350 = load i32, i32* %unit, align 4
  %call256 = call i32 @set2d([256 x float]* %348, float %349, i32 %350)
  %351 = load [256 x float]*, [256 x float]** @bb, align 16
  %352 = load float, float* %any, align 4
  %353 = load i32, i32* %frac2, align 4
  %call257 = call i32 @set2d([256 x float]* %351, float %352, i32 %353)
  br label %if.end.1076

if.else.258:                                      ; preds = %if.else.252
  %354 = load i8*, i8** %name.addr, align 8
  %call259 = call i32 @strcmp(i8* %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #4
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.else.264, label %if.then.261

if.then.261:                                      ; preds = %if.else.258
  %355 = load [256 x float]*, [256 x float]** @aa, align 16
  %356 = load float, float* %one, align 4
  %357 = load i32, i32* %unit, align 4
  %call262 = call i32 @set2d([256 x float]* %355, float %356, i32 %357)
  %358 = load [256 x float]*, [256 x float]** @bb, align 16
  %359 = load float, float* %zero, align 4
  %360 = load i32, i32* %unit, align 4
  %call263 = call i32 @set2d([256 x float]* %358, float %359, i32 %360)
  br label %if.end.1075

if.else.264:                                      ; preds = %if.else.258
  %361 = load i8*, i8** %name.addr, align 8
  %call265 = call i32 @strcmp(i8* %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #4
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.else.271, label %if.then.267

if.then.267:                                      ; preds = %if.else.264
  %362 = load [256 x float]*, [256 x float]** @aa, align 16
  %363 = load float, float* %any, align 4
  %364 = load i32, i32* %frac, align 4
  %call268 = call i32 @set2d([256 x float]* %362, float %363, i32 %364)
  %365 = load [256 x float]*, [256 x float]** @bb, align 16
  %366 = load float, float* %any, align 4
  %367 = load i32, i32* %frac, align 4
  %call269 = call i32 @set2d([256 x float]* %365, float %366, i32 %367)
  %368 = load [256 x float]*, [256 x float]** @cc, align 16
  %369 = load float, float* %any, align 4
  %370 = load i32, i32* %frac, align 4
  %call270 = call i32 @set2d([256 x float]* %368, float %369, i32 %370)
  br label %if.end.1074

if.else.271:                                      ; preds = %if.else.264
  %371 = load i8*, i8** %name.addr, align 8
  %call272 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #4
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.else.278, label %if.then.274

if.then.274:                                      ; preds = %if.else.271
  %372 = load [256 x float]*, [256 x float]** @aa, align 16
  %373 = load float, float* %one, align 4
  %374 = load i32, i32* %unit, align 4
  %call275 = call i32 @set2d([256 x float]* %372, float %373, i32 %374)
  %375 = load [256 x float]*, [256 x float]** @bb, align 16
  %376 = load float, float* %any, align 4
  %377 = load i32, i32* %frac, align 4
  %call276 = call i32 @set2d([256 x float]* %375, float %376, i32 %377)
  %378 = load [256 x float]*, [256 x float]** @cc, align 16
  %379 = load float, float* %any, align 4
  %380 = load i32, i32* %frac, align 4
  %call277 = call i32 @set2d([256 x float]* %378, float %379, i32 %380)
  br label %if.end.1073

if.else.278:                                      ; preds = %if.else.271
  %381 = load i8*, i8** %name.addr, align 8
  %call279 = call i32 @strcmp(i8* %381, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #4
  %tobool280 = icmp ne i32 %call279, 0
  br i1 %tobool280, label %if.else.287, label %if.then.281

if.then.281:                                      ; preds = %if.else.278
  %382 = load float*, float** @a, align 16
  %383 = load float, float* %one, align 4
  %384 = load i32, i32* %unit, align 4
  %call282 = call i32 @set1d(float* %382, float %383, i32 %384)
  %385 = load float*, float** @b, align 16
  %386 = load float, float* %any, align 4
  %387 = load i32, i32* %frac, align 4
  %call283 = call i32 @set1d(float* %385, float %386, i32 %387)
  %388 = load float*, float** @c, align 16
  %389 = load float, float* %any, align 4
  %390 = load i32, i32* %frac, align 4
  %call284 = call i32 @set1d(float* %388, float %389, i32 %390)
  %391 = load [256 x float]*, [256 x float]** @aa, align 16
  %392 = load float, float* %one, align 4
  %393 = load i32, i32* %unit, align 4
  %call285 = call i32 @set2d([256 x float]* %391, float %392, i32 %393)
  %394 = load [256 x float]*, [256 x float]** @bb, align 16
  %395 = load float, float* %any, align 4
  %396 = load i32, i32* %frac2, align 4
  %call286 = call i32 @set2d([256 x float]* %394, float %395, i32 %396)
  br label %if.end.1072

if.else.287:                                      ; preds = %if.else.278
  %397 = load i8*, i8** %name.addr, align 8
  %call288 = call i32 @strcmp(i8* %397, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #4
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.else.295, label %if.then.290

if.then.290:                                      ; preds = %if.else.287
  %398 = load float*, float** @a, align 16
  %399 = load float, float* %one, align 4
  %400 = load i32, i32* %unit, align 4
  %call291 = call i32 @set1d(float* %398, float %399, i32 %400)
  %401 = load float*, float** @b, align 16
  %402 = load float, float* %one, align 4
  %403 = load i32, i32* %unit, align 4
  %call292 = call i32 @set1d(float* %401, float %402, i32 %403)
  %404 = load float*, float** @c, align 16
  %405 = load float, float* %one, align 4
  %406 = load i32, i32* %unit, align 4
  %call293 = call i32 @set1d(float* %404, float %405, i32 %406)
  %407 = load float*, float** @d, align 16
  %408 = load float, float* %one, align 4
  %409 = load i32, i32* %unit, align 4
  %call294 = call i32 @set1d(float* %407, float %408, i32 %409)
  br label %if.end.1071

if.else.295:                                      ; preds = %if.else.287
  %410 = load i8*, i8** %name.addr, align 8
  %call296 = call i32 @strcmp(i8* %410, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #4
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.else.303, label %if.then.298

if.then.298:                                      ; preds = %if.else.295
  %411 = load float*, float** @a, align 16
  %412 = load float, float* %small, align 4
  %413 = load i32, i32* %unit, align 4
  %call299 = call i32 @set1d(float* %411, float %412, i32 %413)
  %414 = load float*, float** @b, align 16
  %415 = load float, float* %small, align 4
  %416 = load i32, i32* %unit, align 4
  %call300 = call i32 @set1d(float* %414, float %415, i32 %416)
  %417 = load float*, float** @c, align 16
  %418 = load float, float* %small, align 4
  %419 = load i32, i32* %unit, align 4
  %call301 = call i32 @set1d(float* %417, float %418, i32 %419)
  %420 = load float*, float** @d, align 16
  %421 = load float, float* %small, align 4
  %422 = load i32, i32* %unit, align 4
  %call302 = call i32 @set1d(float* %420, float %421, i32 %422)
  br label %if.end.1070

if.else.303:                                      ; preds = %if.else.295
  %423 = load i8*, i8** %name.addr, align 8
  %call304 = call i32 @strcmp(i8* %423, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #4
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %if.else.312, label %if.then.306

if.then.306:                                      ; preds = %if.else.303
  %424 = load float*, float** @a, align 16
  %425 = load float, float* %zero, align 4
  %426 = load i32, i32* %unit, align 4
  %call307 = call i32 @set1d(float* %424, float %425, i32 %426)
  %427 = load float*, float** @b, align 16
  %428 = load float, float* %one, align 4
  %429 = load i32, i32* %unit, align 4
  %call308 = call i32 @set1d(float* %427, float %428, i32 %429)
  %430 = load float*, float** @c, align 16
  %431 = load float, float* %any, align 4
  %432 = load i32, i32* %frac, align 4
  %call309 = call i32 @set1d(float* %430, float %431, i32 %432)
  %433 = load float*, float** @d, align 16
  %434 = load float, float* %any, align 4
  %435 = load i32, i32* %frac, align 4
  %call310 = call i32 @set1d(float* %433, float %434, i32 %435)
  %436 = load float*, float** @e, align 16
  %437 = load float, float* %any, align 4
  %438 = load i32, i32* %frac, align 4
  %call311 = call i32 @set1d(float* %436, float %437, i32 %438)
  br label %if.end.1069

if.else.312:                                      ; preds = %if.else.303
  %439 = load i8*, i8** %name.addr, align 8
  %call313 = call i32 @strcmp(i8* %439, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #4
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.else.320, label %if.then.315

if.then.315:                                      ; preds = %if.else.312
  %440 = load float*, float** @a, align 16
  %441 = load float, float* %zero, align 4
  %442 = load i32, i32* %unit, align 4
  %call316 = call i32 @set1d(float* %440, float %441, i32 %442)
  %443 = load float*, float** @b, align 16
  %444 = load float, float* %one, align 4
  %445 = load i32, i32* %unit, align 4
  %call317 = call i32 @set1d(float* %443, float %444, i32 %445)
  %446 = load float*, float** @c, align 16
  %447 = load float, float* %small, align 4
  %448 = load i32, i32* %unit, align 4
  %call318 = call i32 @set1d(float* %446, float %447, i32 %448)
  %449 = load float*, float** @d, align 16
  %450 = load float, float* %small, align 4
  %451 = load i32, i32* %unit, align 4
  %call319 = call i32 @set1d(float* %449, float %450, i32 %451)
  br label %if.end.1068

if.else.320:                                      ; preds = %if.else.312
  %452 = load i8*, i8** %name.addr, align 8
  %call321 = call i32 @strcmp(i8* %452, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #4
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.else.329, label %if.then.323

if.then.323:                                      ; preds = %if.else.320
  %453 = load float*, float** @a, align 16
  %454 = load float, float* %zero, align 4
  %455 = load i32, i32* %unit, align 4
  %call324 = call i32 @set1d(float* %453, float %454, i32 %455)
  %456 = load float*, float** @b, align 16
  %457 = load float, float* %one, align 4
  %458 = load i32, i32* %unit, align 4
  %call325 = call i32 @set1d(float* %456, float %457, i32 %458)
  %459 = load float*, float** @c, align 16
  %460 = load float, float* %any, align 4
  %461 = load i32, i32* %frac, align 4
  %call326 = call i32 @set1d(float* %459, float %460, i32 %461)
  %462 = load float*, float** @d, align 16
  %463 = load float, float* %any, align 4
  %464 = load i32, i32* %frac, align 4
  %call327 = call i32 @set1d(float* %462, float %463, i32 %464)
  %465 = load float*, float** @e, align 16
  %466 = load float, float* %any, align 4
  %467 = load i32, i32* %frac, align 4
  %call328 = call i32 @set1d(float* %465, float %466, i32 %467)
  br label %if.end.1067

if.else.329:                                      ; preds = %if.else.320
  %468 = load i8*, i8** %name.addr, align 8
  %call330 = call i32 @strcmp(i8* %468, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)) #4
  %tobool331 = icmp ne i32 %call330, 0
  br i1 %tobool331, label %if.else.336, label %if.then.332

if.then.332:                                      ; preds = %if.else.329
  %469 = load float*, float** @a, align 16
  %470 = load float, float* %zero, align 4
  %471 = load i32, i32* %unit, align 4
  %call333 = call i32 @set1d(float* %469, float %470, i32 %471)
  %472 = load float*, float** @b, align 16
  %473 = load float, float* %one, align 4
  %474 = load i32, i32* %unit, align 4
  %call334 = call i32 @set1d(float* %472, float %473, i32 %474)
  %475 = load float*, float** @c, align 16
  %476 = load float, float* %one, align 4
  %477 = load i32, i32* %unit, align 4
  %call335 = call i32 @set1d(float* %475, float %476, i32 %477)
  br label %if.end.1066

if.else.336:                                      ; preds = %if.else.329
  %478 = load i8*, i8** %name.addr, align 8
  %call337 = call i32 @strcmp(i8* %478, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)) #4
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.else.344, label %if.then.339

if.then.339:                                      ; preds = %if.else.336
  %479 = load float*, float** @a, align 16
  %480 = load float, float* %one, align 4
  %481 = load i32, i32* %unit, align 4
  %call340 = call i32 @set1d(float* %479, float %480, i32 %481)
  %482 = load float*, float** @b, align 16
  %483 = load float, float* %small, align 4
  %484 = load i32, i32* %unit, align 4
  %call341 = call i32 @set1d(float* %482, float %483, i32 %484)
  %485 = load float*, float** @c, align 16
  %486 = load float, float* %one, align 4
  %487 = load i32, i32* %unit, align 4
  %call342 = call i32 @set1d(float* %485, float %486, i32 %487)
  %488 = load float*, float** @d, align 16
  %489 = load float, float* %any, align 4
  %490 = load i32, i32* %frac, align 4
  %call343 = call i32 @set1d(float* %488, float %489, i32 %490)
  br label %if.end.1065

if.else.344:                                      ; preds = %if.else.336
  %491 = load i8*, i8** %name.addr, align 8
  %call345 = call i32 @strcmp(i8* %491, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0)) #4
  %tobool346 = icmp ne i32 %call345, 0
  br i1 %tobool346, label %if.else.350, label %if.then.347

if.then.347:                                      ; preds = %if.else.344
  %492 = load float*, float** @a, align 16
  %493 = load float, float* %zero, align 4
  %494 = load i32, i32* %unit, align 4
  %call348 = call i32 @set1d(float* %492, float %493, i32 %494)
  %495 = load float*, float** @b, align 16
  %496 = load float, float* %one, align 4
  %497 = load i32, i32* %unit, align 4
  %call349 = call i32 @set1d(float* %495, float %496, i32 %497)
  br label %if.end.1064

if.else.350:                                      ; preds = %if.else.344
  %498 = load i8*, i8** %name.addr, align 8
  %call351 = call i32 @strcmp(i8* %498, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #4
  %tobool352 = icmp ne i32 %call351, 0
  br i1 %tobool352, label %if.else.356, label %if.then.353

if.then.353:                                      ; preds = %if.else.350
  %499 = load float*, float** @a, align 16
  %500 = load float, float* %zero, align 4
  %501 = load i32, i32* %unit, align 4
  %call354 = call i32 @set1d(float* %499, float %500, i32 %501)
  %502 = load float*, float** @b, align 16
  %503 = load float, float* %one, align 4
  %504 = load i32, i32* %unit, align 4
  %call355 = call i32 @set1d(float* %502, float %503, i32 %504)
  br label %if.end.1063

if.else.356:                                      ; preds = %if.else.350
  %505 = load i8*, i8** %name.addr, align 8
  %call357 = call i32 @strcmp(i8* %505, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #4
  %tobool358 = icmp ne i32 %call357, 0
  br i1 %tobool358, label %if.else.363, label %if.then.359

if.then.359:                                      ; preds = %if.else.356
  %506 = load float*, float** @a, align 16
  %507 = load float, float* %one, align 4
  %508 = load i32, i32* %unit, align 4
  %call360 = call i32 @set1d(float* %506, float %507, i32 %508)
  %509 = load [256 x float]*, [256 x float]** @aa, align 16
  %510 = load float, float* %two, align 4
  %511 = load i32, i32* %unit, align 4
  %call361 = call i32 @set2d([256 x float]* %509, float %510, i32 %511)
  %512 = load [256 x float]*, [256 x float]** @bb, align 16
  %513 = load float, float* %one, align 4
  %514 = load i32, i32* %unit, align 4
  %call362 = call i32 @set2d([256 x float]* %512, float %513, i32 %514)
  br label %if.end.1062

if.else.363:                                      ; preds = %if.else.356
  %515 = load i8*, i8** %name.addr, align 8
  %call364 = call i32 @strcmp(i8* %515, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0)) #4
  %tobool365 = icmp ne i32 %call364, 0
  br i1 %tobool365, label %if.else.370, label %if.then.366

if.then.366:                                      ; preds = %if.else.363
  %516 = load float*, float** @a, align 16
  %517 = load float, float* %one, align 4
  %518 = load i32, i32* %unit, align 4
  %call367 = call i32 @set1d(float* %516, float %517, i32 %518)
  %519 = load [256 x float]*, [256 x float]** @aa, align 16
  %520 = load float, float* %two, align 4
  %521 = load i32, i32* %unit, align 4
  %call368 = call i32 @set2d([256 x float]* %519, float %520, i32 %521)
  %522 = load [256 x float]*, [256 x float]** @bb, align 16
  %523 = load float, float* %one, align 4
  %524 = load i32, i32* %unit, align 4
  %call369 = call i32 @set2d([256 x float]* %522, float %523, i32 %524)
  br label %if.end.1061

if.else.370:                                      ; preds = %if.else.363
  %525 = load i8*, i8** %name.addr, align 8
  %call371 = call i32 @strcmp(i8* %525, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0)) #4
  %tobool372 = icmp ne i32 %call371, 0
  br i1 %tobool372, label %if.else.380, label %if.then.373

if.then.373:                                      ; preds = %if.else.370
  %526 = load float*, float** @a, align 16
  %527 = load float, float* %any, align 4
  %528 = load i32, i32* %frac, align 4
  %call374 = call i32 @set1d(float* %526, float %527, i32 %528)
  %529 = load float*, float** @b, align 16
  %530 = load float, float* %zero, align 4
  %531 = load i32, i32* %unit, align 4
  %call375 = call i32 @set1d(float* %529, float %530, i32 %531)
  %532 = load float*, float** @c, align 16
  %533 = load float, float* %any, align 4
  %534 = load i32, i32* %frac, align 4
  %call376 = call i32 @set1d(float* %532, float %533, i32 %534)
  %535 = load float*, float** @d, align 16
  %536 = load float, float* %any, align 4
  %537 = load i32, i32* %frac, align 4
  %call377 = call i32 @set1d(float* %535, float %536, i32 %537)
  %538 = load float*, float** @e, align 16
  %539 = load float, float* %zero, align 4
  %540 = load i32, i32* %unit, align 4
  %call378 = call i32 @set1d(float* %538, float %539, i32 %540)
  %541 = load [256 x float]*, [256 x float]** @aa, align 16
  %542 = load float, float* %any, align 4
  %543 = load i32, i32* %frac, align 4
  %call379 = call i32 @set2d([256 x float]* %541, float %542, i32 %543)
  br label %if.end.1060

if.else.380:                                      ; preds = %if.else.370
  %544 = load i8*, i8** %name.addr, align 8
  %call381 = call i32 @strcmp(i8* %544, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0)) #4
  %tobool382 = icmp ne i32 %call381, 0
  br i1 %tobool382, label %if.else.388, label %if.then.383

if.then.383:                                      ; preds = %if.else.380
  %545 = load float*, float** @a, align 16
  %546 = load float, float* %one, align 4
  %547 = load i32, i32* %unit, align 4
  %call384 = call i32 @set1d(float* %545, float %546, i32 %547)
  %548 = load float*, float** @b, align 16
  %549 = load float, float* %any, align 4
  %550 = load i32, i32* %frac2, align 4
  %call385 = call i32 @set1d(float* %548, float %549, i32 %550)
  %551 = load float*, float** @c, align 16
  %552 = load float, float* %any, align 4
  %553 = load i32, i32* %frac2, align 4
  %call386 = call i32 @set1d(float* %551, float %552, i32 %553)
  %554 = load float*, float** @d, align 16
  %555 = load float, float* %one, align 4
  %556 = load i32, i32* %unit, align 4
  %call387 = call i32 @set1d(float* %554, float %555, i32 %556)
  br label %if.end.1059

if.else.388:                                      ; preds = %if.else.380
  %557 = load i8*, i8** %name.addr, align 8
  %call389 = call i32 @strcmp(i8* %557, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0)) #4
  %tobool390 = icmp ne i32 %call389, 0
  br i1 %tobool390, label %if.else.395, label %if.then.391

if.then.391:                                      ; preds = %if.else.388
  %558 = load float*, float** @a, align 16
  %559 = load float, float* %one, align 4
  %560 = load i32, i32* %unit, align 4
  %call392 = call i32 @set1d(float* %558, float %559, i32 %560)
  %561 = load float*, float** @b, align 16
  %562 = load float, float* %any, align 4
  %563 = load i32, i32* %frac, align 4
  %call393 = call i32 @set1d(float* %561, float %562, i32 %563)
  %564 = load float*, float** @c, align 16
  %565 = load float, float* %any, align 4
  %566 = load i32, i32* %frac, align 4
  %call394 = call i32 @set1d(float* %564, float %565, i32 %566)
  br label %if.end.1058

if.else.395:                                      ; preds = %if.else.388
  %567 = load i8*, i8** %name.addr, align 8
  %call396 = call i32 @strcmp(i8* %567, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)) #4
  %tobool397 = icmp ne i32 %call396, 0
  br i1 %tobool397, label %if.else.404, label %if.then.398

if.then.398:                                      ; preds = %if.else.395
  %568 = load float*, float** @a, align 16
  %569 = load float, float* %one, align 4
  %570 = load i32, i32* %unit, align 4
  %call399 = call i32 @set1d(float* %568, float %569, i32 %570)
  %571 = load float*, float** @b, align 16
  %572 = load float, float* %one, align 4
  %573 = load i32, i32* %unit, align 4
  %call400 = call i32 @set1d(float* %571, float %572, i32 %573)
  %574 = load float*, float** @c, align 16
  %575 = load float, float* %any, align 4
  %576 = load i32, i32* %frac, align 4
  %call401 = call i32 @set1d(float* %574, float %575, i32 %576)
  %577 = load float*, float** @d, align 16
  %578 = load float, float* %any, align 4
  %579 = load i32, i32* %frac, align 4
  %call402 = call i32 @set1d(float* %577, float %578, i32 %579)
  %580 = load float*, float** @e, align 16
  %581 = load float, float* %two, align 4
  %582 = load i32, i32* %unit, align 4
  %call403 = call i32 @set1d(float* %580, float %581, i32 %582)
  br label %if.end.1057

if.else.404:                                      ; preds = %if.else.395
  %583 = load i8*, i8** %name.addr, align 8
  %call405 = call i32 @strcmp(i8* %583, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #4
  %tobool406 = icmp ne i32 %call405, 0
  br i1 %tobool406, label %if.else.413, label %if.then.407

if.then.407:                                      ; preds = %if.else.404
  %584 = load float*, float** @a, align 16
  %585 = load float, float* %one, align 4
  %586 = load i32, i32* %unit, align 4
  %call408 = call i32 @set1d(float* %584, float %585, i32 %586)
  %587 = load float*, float** @b, align 16
  %588 = load float, float* %one, align 4
  %589 = load i32, i32* %unit, align 4
  %call409 = call i32 @set1d(float* %587, float %588, i32 %589)
  %590 = load float*, float** @c, align 16
  %591 = load float, float* %one, align 4
  %592 = load i32, i32* %unit, align 4
  %call410 = call i32 @set1d(float* %590, float %591, i32 %592)
  %593 = load float*, float** @d, align 16
  %594 = load float, float* %small, align 4
  %595 = load i32, i32* %unit, align 4
  %call411 = call i32 @set1d(float* %593, float %594, i32 %595)
  %596 = load float*, float** @e, align 16
  %597 = load float, float* %any, align 4
  %598 = load i32, i32* %frac, align 4
  %call412 = call i32 @set1d(float* %596, float %597, i32 %598)
  br label %if.end.1056

if.else.413:                                      ; preds = %if.else.404
  %599 = load i8*, i8** %name.addr, align 8
  %call414 = call i32 @strcmp(i8* %599, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)) #4
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %if.else.422, label %if.then.416

if.then.416:                                      ; preds = %if.else.413
  %600 = load float*, float** @a, align 16
  %601 = load float, float* %zero, align 4
  %602 = load i32, i32* %unit, align 4
  %call417 = call i32 @set1d(float* %600, float %601, i32 %602)
  %603 = load float*, float** @b, align 16
  %604 = load float, float* %one, align 4
  %605 = load i32, i32* %unit, align 4
  %call418 = call i32 @set1d(float* %603, float %604, i32 %605)
  %606 = load float*, float** @c, align 16
  %607 = load float, float* %one, align 4
  %608 = load i32, i32* %unit, align 4
  %call419 = call i32 @set1d(float* %606, float %607, i32 %608)
  %609 = load float*, float** @d, align 16
  %610 = load float, float* %any, align 4
  %611 = load i32, i32* %frac, align 4
  %call420 = call i32 @set1d(float* %609, float %610, i32 %611)
  %612 = load float*, float** @e, align 16
  %613 = load float, float* %any, align 4
  %614 = load i32, i32* %frac, align 4
  %call421 = call i32 @set1d(float* %612, float %613, i32 %614)
  br label %if.end.1055

if.else.422:                                      ; preds = %if.else.413
  %615 = load i8*, i8** %name.addr, align 8
  %call423 = call i32 @strcmp(i8* %615, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)) #4
  %tobool424 = icmp ne i32 %call423, 0
  br i1 %tobool424, label %if.else.429, label %if.then.425

if.then.425:                                      ; preds = %if.else.422
  %616 = load [256 x float]*, [256 x float]** @aa, align 16
  %617 = load float, float* %one, align 4
  %618 = load i32, i32* %unit, align 4
  %call426 = call i32 @set2d([256 x float]* %616, float %617, i32 %618)
  %619 = load [256 x float]*, [256 x float]** @bb, align 16
  %620 = load float, float* %small, align 4
  %621 = load i32, i32* %unit, align 4
  %call427 = call i32 @set2d([256 x float]* %619, float %620, i32 %621)
  %622 = load [256 x float]*, [256 x float]** @cc, align 16
  %623 = load float, float* %small, align 4
  %624 = load i32, i32* %unit, align 4
  %call428 = call i32 @set2d([256 x float]* %622, float %623, i32 %624)
  br label %if.end.1054

if.else.429:                                      ; preds = %if.else.422
  %625 = load i8*, i8** %name.addr, align 8
  %call430 = call i32 @strcmp(i8* %625, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)) #4
  %tobool431 = icmp ne i32 %call430, 0
  br i1 %tobool431, label %if.else.437, label %if.then.432

if.then.432:                                      ; preds = %if.else.429
  %626 = load float*, float** @a, align 16
  %627 = load float, float* %one, align 4
  %628 = load i32, i32* %unit, align 4
  %call433 = call i32 @set1d(float* %626, float %627, i32 %628)
  %629 = load float*, float** @b, align 16
  %630 = load float, float* %any, align 4
  %631 = load i32, i32* %frac, align 4
  %call434 = call i32 @set1d(float* %629, float %630, i32 %631)
  %632 = load float*, float** @c, align 16
  %633 = load float, float* %any, align 4
  %634 = load i32, i32* %frac, align 4
  %call435 = call i32 @set1d(float* %632, float %633, i32 %634)
  %635 = load float*, float** @d, align 16
  %636 = load float, float* %any, align 4
  %637 = load i32, i32* %frac, align 4
  %call436 = call i32 @set1d(float* %635, float %636, i32 %637)
  br label %if.end.1053

if.else.437:                                      ; preds = %if.else.429
  %638 = load i8*, i8** %name.addr, align 8
  %call438 = call i32 @strcmp(i8* %638, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)) #4
  %tobool439 = icmp ne i32 %call438, 0
  br i1 %tobool439, label %if.else.449, label %if.then.440

if.then.440:                                      ; preds = %if.else.437
  %639 = load float*, float** @a, align 16
  %640 = load float, float* %one, align 4
  %641 = load i32, i32* %unit, align 4
  %call441 = call i32 @set1d(float* %639, float %640, i32 %641)
  %642 = load float*, float** @b, align 16
  %643 = load float, float* %one, align 4
  %644 = load i32, i32* %unit, align 4
  %call442 = call i32 @set1ds(i32 16000, float* %642, float %643, i32 %644)
  %645 = load float*, float** @b, align 16
  %arrayidx443 = getelementptr inbounds float, float* %645, i64 16000
  %646 = load float, float* %one, align 4
  %sub444 = fsub float -0.000000e+00, %646
  %647 = load i32, i32* %unit, align 4
  %call445 = call i32 @set1ds(i32 16000, float* %arrayidx443, float %sub444, i32 %647)
  %648 = load float*, float** @c, align 16
  %649 = load float, float* %any, align 4
  %650 = load i32, i32* %frac, align 4
  %call446 = call i32 @set1d(float* %648, float %649, i32 %650)
  %651 = load float*, float** @d, align 16
  %652 = load float, float* %any, align 4
  %653 = load i32, i32* %frac, align 4
  %call447 = call i32 @set1d(float* %651, float %652, i32 %653)
  %654 = load float*, float** @e, align 16
  %655 = load float, float* %any, align 4
  %656 = load i32, i32* %frac, align 4
  %call448 = call i32 @set1d(float* %654, float %655, i32 %656)
  br label %if.end.1052

if.else.449:                                      ; preds = %if.else.437
  %657 = load i8*, i8** %name.addr, align 8
  %call450 = call i32 @strcmp(i8* %657, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0)) #4
  %tobool451 = icmp ne i32 %call450, 0
  br i1 %tobool451, label %if.else.461, label %if.then.452

if.then.452:                                      ; preds = %if.else.449
  %658 = load float*, float** @a, align 16
  %659 = load float, float* %one, align 4
  %sub453 = fsub float -0.000000e+00, %659
  %660 = load i32, i32* %unit, align 4
  %call454 = call i32 @set1ds(i32 16000, float* %658, float %sub453, i32 %660)
  %661 = load float*, float** @a, align 16
  %arrayidx455 = getelementptr inbounds float, float* %661, i64 16000
  %662 = load float, float* %one, align 4
  %663 = load i32, i32* %unit, align 4
  %call456 = call i32 @set1ds(i32 16000, float* %arrayidx455, float %662, i32 %663)
  %664 = load float*, float** @b, align 16
  %665 = load float, float* %one, align 4
  %666 = load i32, i32* %unit, align 4
  %call457 = call i32 @set1d(float* %664, float %665, i32 %666)
  %667 = load float*, float** @c, align 16
  %668 = load float, float* %any, align 4
  %669 = load i32, i32* %frac, align 4
  %call458 = call i32 @set1d(float* %667, float %668, i32 %669)
  %670 = load float*, float** @d, align 16
  %671 = load float, float* %any, align 4
  %672 = load i32, i32* %frac, align 4
  %call459 = call i32 @set1d(float* %670, float %671, i32 %672)
  %673 = load float*, float** @e, align 16
  %674 = load float, float* %any, align 4
  %675 = load i32, i32* %frac, align 4
  %call460 = call i32 @set1d(float* %673, float %674, i32 %675)
  br label %if.end.1051

if.else.461:                                      ; preds = %if.else.449
  %676 = load i8*, i8** %name.addr, align 8
  %call462 = call i32 @strcmp(i8* %676, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0)) #4
  %tobool463 = icmp ne i32 %call462, 0
  br i1 %tobool463, label %if.else.473, label %if.then.464

if.then.464:                                      ; preds = %if.else.461
  %677 = load float*, float** @a, align 16
  %678 = load float, float* %one, align 4
  %sub465 = fsub float -0.000000e+00, %678
  %679 = load i32, i32* %unit, align 4
  %call466 = call i32 @set1ds(i32 16000, float* %677, float %sub465, i32 %679)
  %680 = load float*, float** @a, align 16
  %arrayidx467 = getelementptr inbounds float, float* %680, i64 16000
  %681 = load float, float* %one, align 4
  %682 = load i32, i32* %unit, align 4
  %call468 = call i32 @set1ds(i32 16000, float* %arrayidx467, float %681, i32 %682)
  %683 = load float*, float** @b, align 16
  %684 = load float, float* %one, align 4
  %685 = load i32, i32* %unit, align 4
  %call469 = call i32 @set1d(float* %683, float %684, i32 %685)
  %686 = load float*, float** @c, align 16
  %687 = load float, float* %any, align 4
  %688 = load i32, i32* %frac, align 4
  %call470 = call i32 @set1d(float* %686, float %687, i32 %688)
  %689 = load float*, float** @d, align 16
  %690 = load float, float* %any, align 4
  %691 = load i32, i32* %frac, align 4
  %call471 = call i32 @set1d(float* %689, float %690, i32 %691)
  %692 = load float*, float** @e, align 16
  %693 = load float, float* %any, align 4
  %694 = load i32, i32* %frac, align 4
  %call472 = call i32 @set1d(float* %692, float %693, i32 %694)
  br label %if.end.1050

if.else.473:                                      ; preds = %if.else.461
  %695 = load i8*, i8** %name.addr, align 8
  %call474 = call i32 @strcmp(i8* %695, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0)) #4
  %tobool475 = icmp ne i32 %call474, 0
  br i1 %tobool475, label %if.else.482, label %if.then.476

if.then.476:                                      ; preds = %if.else.473
  %696 = load float*, float** @a, align 16
  %697 = load float, float* %one, align 4
  %698 = load i32, i32* %unit, align 4
  %call477 = call i32 @set1d(float* %696, float %697, i32 %698)
  %699 = load float*, float** @b, align 16
  %700 = load float, float* %one, align 4
  %701 = load i32, i32* %unit, align 4
  %call478 = call i32 @set1d(float* %699, float %700, i32 %701)
  %702 = load float*, float** @c, align 16
  %703 = load float, float* %any, align 4
  %704 = load i32, i32* %frac, align 4
  %call479 = call i32 @set1d(float* %702, float %703, i32 %704)
  %705 = load float*, float** @d, align 16
  %706 = load float, float* %any, align 4
  %707 = load i32, i32* %frac, align 4
  %call480 = call i32 @set1d(float* %705, float %706, i32 %707)
  %708 = load float*, float** @e, align 16
  %709 = load float, float* %any, align 4
  %710 = load i32, i32* %frac, align 4
  %call481 = call i32 @set1d(float* %708, float %709, i32 %710)
  br label %if.end.1049

if.else.482:                                      ; preds = %if.else.473
  %711 = load i8*, i8** %name.addr, align 8
  %call483 = call i32 @strcmp(i8* %711, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0)) #4
  %tobool484 = icmp ne i32 %call483, 0
  br i1 %tobool484, label %if.else.489, label %if.then.485

if.then.485:                                      ; preds = %if.else.482
  %712 = load float*, float** @a, align 16
  %713 = load float, float* %one, align 4
  %714 = load i32, i32* %unit, align 4
  %call486 = call i32 @set1d(float* %712, float %713, i32 %714)
  %715 = load float*, float** @b, align 16
  %716 = load float, float* %any, align 4
  %717 = load i32, i32* %frac, align 4
  %call487 = call i32 @set1d(float* %715, float %716, i32 %717)
  %718 = load float*, float** @c, align 16
  %719 = load float, float* %any, align 4
  %720 = load i32, i32* %frac, align 4
  %call488 = call i32 @set1d(float* %718, float %719, i32 %720)
  br label %if.end.1048

if.else.489:                                      ; preds = %if.else.482
  %721 = load i8*, i8** %name.addr, align 8
  %call490 = call i32 @strcmp(i8* %721, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0)) #4
  %tobool491 = icmp ne i32 %call490, 0
  br i1 %tobool491, label %if.else.496, label %if.then.492

if.then.492:                                      ; preds = %if.else.489
  %722 = load float*, float** @a, align 16
  %723 = load float, float* %one, align 4
  %724 = load i32, i32* %unit, align 4
  %call493 = call i32 @set1d(float* %722, float %723, i32 %724)
  %725 = load float*, float** @b, align 16
  %726 = load float, float* %any, align 4
  %727 = load i32, i32* %frac, align 4
  %call494 = call i32 @set1d(float* %725, float %726, i32 %727)
  %728 = load float*, float** @c, align 16
  %729 = load float, float* %any, align 4
  %730 = load i32, i32* %frac, align 4
  %call495 = call i32 @set1d(float* %728, float %729, i32 %730)
  br label %if.end.1047

if.else.496:                                      ; preds = %if.else.489
  %731 = load i8*, i8** %name.addr, align 8
  %call497 = call i32 @strcmp(i8* %731, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0)) #4
  %tobool498 = icmp ne i32 %call497, 0
  br i1 %tobool498, label %if.else.503, label %if.then.499

if.then.499:                                      ; preds = %if.else.496
  %732 = load float*, float** @a, align 16
  %733 = load float, float* %zero, align 4
  %734 = load i32, i32* %unit, align 4
  %call500 = call i32 @set1d(float* %732, float %733, i32 %734)
  %735 = load float*, float** @b, align 16
  %736 = load float, float* %one, align 4
  %737 = load i32, i32* %unit, align 4
  %call501 = call i32 @set1d(float* %735, float %736, i32 %737)
  %738 = load float*, float** @c, align 16
  %739 = load float, float* %one, align 4
  %740 = load i32, i32* %unit, align 4
  %call502 = call i32 @set1d(float* %738, float %739, i32 %740)
  br label %if.end.1046

if.else.503:                                      ; preds = %if.else.496
  %741 = load i8*, i8** %name.addr, align 8
  %call504 = call i32 @strcmp(i8* %741, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0)) #4
  %tobool505 = icmp ne i32 %call504, 0
  br i1 %tobool505, label %if.else.509, label %if.then.506

if.then.506:                                      ; preds = %if.else.503
  %742 = load float*, float** @a, align 16
  %743 = load float, float* %zero, align 4
  %744 = load i32, i32* %unit, align 4
  %call507 = call i32 @set1d(float* %742, float %743, i32 %744)
  %745 = load float*, float** @b, align 16
  %746 = load float, float* %one, align 4
  %747 = load i32, i32* %unit, align 4
  %call508 = call i32 @set1d(float* %745, float %746, i32 %747)
  br label %if.end.1045

if.else.509:                                      ; preds = %if.else.503
  %748 = load i8*, i8** %name.addr, align 8
  %call510 = call i32 @strcmp(i8* %748, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0)) #4
  %tobool511 = icmp ne i32 %call510, 0
  br i1 %tobool511, label %if.else.515, label %if.then.512

if.then.512:                                      ; preds = %if.else.509
  %749 = load float*, float** @a, align 16
  %750 = load float, float* %zero, align 4
  %751 = load i32, i32* %unit, align 4
  %call513 = call i32 @set1d(float* %749, float %750, i32 %751)
  %752 = load float*, float** @b, align 16
  %753 = load float, float* %one, align 4
  %754 = load i32, i32* %unit, align 4
  %call514 = call i32 @set1d(float* %752, float %753, i32 %754)
  br label %if.end.1044

if.else.515:                                      ; preds = %if.else.509
  %755 = load i8*, i8** %name.addr, align 8
  %call516 = call i32 @strcmp(i8* %755, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #4
  %tobool517 = icmp ne i32 %call516, 0
  br i1 %tobool517, label %if.else.520, label %if.then.518

if.then.518:                                      ; preds = %if.else.515
  %756 = load float*, float** @a, align 16
  %757 = load float, float* %any, align 4
  %758 = load i32, i32* %frac, align 4
  %call519 = call i32 @set1d(float* %756, float %757, i32 %758)
  br label %if.end.1043

if.else.520:                                      ; preds = %if.else.515
  %759 = load i8*, i8** %name.addr, align 8
  %call521 = call i32 @strcmp(i8* %759, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0)) #4
  %tobool522 = icmp ne i32 %call521, 0
  br i1 %tobool522, label %if.else.527, label %if.then.523

if.then.523:                                      ; preds = %if.else.520
  %760 = load [256 x float]*, [256 x float]** @aa, align 16
  %761 = load float, float* %one, align 4
  %762 = load i32, i32* %unit, align 4
  %call524 = call i32 @set2d([256 x float]* %760, float %761, i32 %762)
  %763 = load [256 x float]*, [256 x float]** @bb, align 16
  %764 = load float, float* %any, align 4
  %765 = load i32, i32* %frac, align 4
  %call525 = call i32 @set2d([256 x float]* %763, float %764, i32 %765)
  %766 = load [256 x float]*, [256 x float]** @cc, align 16
  %767 = load float, float* %any, align 4
  %768 = load i32, i32* %frac, align 4
  %call526 = call i32 @set2d([256 x float]* %766, float %767, i32 %768)
  br label %if.end.1042

if.else.527:                                      ; preds = %if.else.520
  %769 = load i8*, i8** %name.addr, align 8
  %call528 = call i32 @strcmp(i8* %769, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #4
  %tobool529 = icmp ne i32 %call528, 0
  br i1 %tobool529, label %if.else.532, label %if.then.530

if.then.530:                                      ; preds = %if.else.527
  %770 = load [256 x float]*, [256 x float]** @aa, align 16
  %771 = load float, float* %zero, align 4
  %772 = load i32, i32* %unit, align 4
  %call531 = call i32 @set2d([256 x float]* %770, float %771, i32 %772)
  br label %if.end.1041

if.else.532:                                      ; preds = %if.else.527
  %773 = load i8*, i8** %name.addr, align 8
  %call533 = call i32 @strcmp(i8* %773, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0)) #4
  %tobool534 = icmp ne i32 %call533, 0
  br i1 %tobool534, label %if.else.537, label %if.then.535

if.then.535:                                      ; preds = %if.else.532
  %774 = load [256 x float]*, [256 x float]** @aa, align 16
  %775 = load float, float* %zero, align 4
  %776 = load i32, i32* %unit, align 4
  %call536 = call i32 @set2d([256 x float]* %774, float %775, i32 %776)
  br label %if.end.1040

if.else.537:                                      ; preds = %if.else.532
  %777 = load i8*, i8** %name.addr, align 8
  %call538 = call i32 @strcmp(i8* %777, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0)) #4
  %tobool539 = icmp ne i32 %call538, 0
  br i1 %tobool539, label %if.else.542, label %if.then.540

if.then.540:                                      ; preds = %if.else.537
  %778 = load float*, float** @a, align 16
  %779 = load float, float* %any, align 4
  %780 = load i32, i32* %frac, align 4
  %call541 = call i32 @set1d(float* %778, float %779, i32 %780)
  br label %if.end.1039

if.else.542:                                      ; preds = %if.else.537
  %781 = load i8*, i8** %name.addr, align 8
  %call543 = call i32 @strcmp(i8* %781, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0)) #4
  %tobool544 = icmp ne i32 %call543, 0
  br i1 %tobool544, label %if.else.547, label %if.then.545

if.then.545:                                      ; preds = %if.else.542
  %782 = load float*, float** @a, align 16
  %783 = load i32, i32* %unit, align 4
  %call546 = call i32 @set1d(float* %782, float 0x3FF0000100000000, i32 %783)
  br label %if.end.1038

if.else.547:                                      ; preds = %if.else.542
  %784 = load i8*, i8** %name.addr, align 8
  %call548 = call i32 @strcmp(i8* %784, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0)) #4
  %tobool549 = icmp ne i32 %call548, 0
  br i1 %tobool549, label %if.else.553, label %if.then.550

if.then.550:                                      ; preds = %if.else.547
  %785 = load float*, float** @a, align 16
  %786 = load float, float* %any, align 4
  %787 = load i32, i32* %frac, align 4
  %call551 = call i32 @set1d(float* %785, float %786, i32 %787)
  %788 = load float*, float** @b, align 16
  %789 = load float, float* %any, align 4
  %790 = load i32, i32* %frac, align 4
  %call552 = call i32 @set1d(float* %788, float %789, i32 %790)
  br label %if.end.1037

if.else.553:                                      ; preds = %if.else.547
  %791 = load i8*, i8** %name.addr, align 8
  %call554 = call i32 @strcmp(i8* %791, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #4
  %tobool555 = icmp ne i32 %call554, 0
  br i1 %tobool555, label %if.else.558, label %if.then.556

if.then.556:                                      ; preds = %if.else.553
  %792 = load float*, float** @a, align 16
  %793 = load float, float* %any, align 4
  %794 = load i32, i32* %frac, align 4
  %call557 = call i32 @set1d(float* %792, float %793, i32 %794)
  br label %if.end.1036

if.else.558:                                      ; preds = %if.else.553
  %795 = load i8*, i8** %name.addr, align 8
  %call559 = call i32 @strcmp(i8* %795, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)) #4
  %tobool560 = icmp ne i32 %call559, 0
  br i1 %tobool560, label %if.else.563, label %if.then.561

if.then.561:                                      ; preds = %if.else.558
  %796 = load float*, float** @a, align 16
  %797 = load float, float* %any, align 4
  %798 = load i32, i32* %frac, align 4
  %call562 = call i32 @set1d(float* %796, float %797, i32 %798)
  br label %if.end.1035

if.else.563:                                      ; preds = %if.else.558
  %799 = load i8*, i8** %name.addr, align 8
  %call564 = call i32 @strcmp(i8* %799, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0)) #4
  %tobool565 = icmp ne i32 %call564, 0
  br i1 %tobool565, label %if.else.568, label %if.then.566

if.then.566:                                      ; preds = %if.else.563
  %800 = load float*, float** @a, align 16
  %801 = load float, float* %any, align 4
  %802 = load i32, i32* %frac, align 4
  %call567 = call i32 @set1d(float* %800, float %801, i32 %802)
  br label %if.end.1034

if.else.568:                                      ; preds = %if.else.563
  %803 = load i8*, i8** %name.addr, align 8
  %call569 = call i32 @strcmp(i8* %803, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0)) #4
  %tobool570 = icmp ne i32 %call569, 0
  br i1 %tobool570, label %if.else.572, label %if.then.571

if.then.571:                                      ; preds = %if.else.568
  br label %if.end.1033

if.else.572:                                      ; preds = %if.else.568
  %804 = load i8*, i8** %name.addr, align 8
  %call573 = call i32 @strcmp(i8* %804, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0)) #4
  %tobool574 = icmp ne i32 %call573, 0
  br i1 %tobool574, label %if.else.579, label %if.then.575

if.then.575:                                      ; preds = %if.else.572
  %805 = load float*, float** @a, align 16
  %806 = load float, float* %any, align 4
  %807 = load i32, i32* %frac, align 4
  %call576 = call i32 @set1d(float* %805, float %806, i32 %807)
  %808 = load float, float* %two, align 4
  %sub577 = fsub float -0.000000e+00, %808
  %809 = load float*, float** @a, align 16
  %arrayidx578 = getelementptr inbounds float, float* %809, i64 31999
  store float %sub577, float* %arrayidx578, align 4
  br label %if.end.1032

if.else.579:                                      ; preds = %if.else.572
  %810 = load i8*, i8** %name.addr, align 8
  %call580 = call i32 @strcmp(i8* %810, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)) #4
  %tobool581 = icmp ne i32 %call580, 0
  br i1 %tobool581, label %if.else.588, label %if.then.582

if.then.582:                                      ; preds = %if.else.579
  %811 = load float*, float** @a, align 16
  %812 = load float, float* %zero, align 4
  %813 = load i32, i32* %unit, align 4
  %call583 = call i32 @set1d(float* %811, float %812, i32 %813)
  %814 = load float*, float** @b, align 16
  %815 = load float, float* %zero, align 4
  %816 = load i32, i32* %unit, align 4
  %call584 = call i32 @set1d(float* %814, float %815, i32 %816)
  %817 = load float*, float** @c, align 16
  %818 = load float, float* %any, align 4
  %819 = load i32, i32* %frac, align 4
  %call585 = call i32 @set1d(float* %817, float %818, i32 %819)
  %820 = load float*, float** @d, align 16
  %821 = load float, float* %any, align 4
  %822 = load i32, i32* %frac, align 4
  %call586 = call i32 @set1d(float* %820, float %821, i32 %822)
  %823 = load float*, float** @e, align 16
  %824 = load float, float* %any, align 4
  %825 = load i32, i32* %frac, align 4
  %call587 = call i32 @set1d(float* %823, float %824, i32 %825)
  br label %if.end.1031

if.else.588:                                      ; preds = %if.else.579
  %826 = load i8*, i8** %name.addr, align 8
  %call589 = call i32 @strcmp(i8* %826, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0)) #4
  %tobool590 = icmp ne i32 %call589, 0
  br i1 %tobool590, label %if.else.595, label %if.then.591

if.then.591:                                      ; preds = %if.else.588
  %827 = load [256 x float]*, [256 x float]** @aa, align 16
  %828 = load float, float* %any, align 4
  %829 = load i32, i32* %frac, align 4
  %call592 = call i32 @set2d([256 x float]* %827, float %828, i32 %829)
  %830 = load float, float* %two, align 4
  %831 = load [256 x float]*, [256 x float]** @aa, align 16
  %arrayidx593 = getelementptr inbounds [256 x float], [256 x float]* %831, i64 255
  %arrayidx594 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx593, i32 0, i64 255
  store float %830, float* %arrayidx594, align 4
  br label %if.end.1030

if.else.595:                                      ; preds = %if.else.588
  %832 = load i8*, i8** %name.addr, align 8
  %call596 = call i32 @strcmp(i8* %832, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0)) #4
  %tobool597 = icmp ne i32 %call596, 0
  br i1 %tobool597, label %if.else.600, label %if.then.598

if.then.598:                                      ; preds = %if.else.595
  %833 = load float*, float** @a, align 16
  %834 = load float, float* %any, align 4
  %835 = load i32, i32* %frac, align 4
  %call599 = call i32 @set1d(float* %833, float %834, i32 %835)
  br label %if.end.1029

if.else.600:                                      ; preds = %if.else.595
  %836 = load i8*, i8** %name.addr, align 8
  %call601 = call i32 @strcmp(i8* %836, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0)) #4
  %tobool602 = icmp ne i32 %call601, 0
  br i1 %tobool602, label %if.else.606, label %if.then.603

if.then.603:                                      ; preds = %if.else.600
  %837 = load float*, float** @a, align 16
  %838 = load float, float* %any, align 4
  %839 = load i32, i32* %frac2, align 4
  %call604 = call i32 @set1d(float* %837, float %838, i32 %839)
  %840 = load float*, float** @b, align 16
  %841 = load float, float* %zero, align 4
  %842 = load i32, i32* %unit, align 4
  %call605 = call i32 @set1d(float* %840, float %841, i32 %842)
  br label %if.end.1028

if.else.606:                                      ; preds = %if.else.600
  %843 = load i8*, i8** %name.addr, align 8
  %call607 = call i32 @strcmp(i8* %843, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0)) #4
  %tobool608 = icmp ne i32 %call607, 0
  br i1 %tobool608, label %if.else.613, label %if.then.609

if.then.609:                                      ; preds = %if.else.606
  %844 = load float*, float** @a, align 16
  %845 = load float, float* %any, align 4
  %846 = load i32, i32* %frac, align 4
  %call610 = call i32 @set1d(float* %844, float %845, i32 %846)
  %847 = load float, float* %two, align 4
  %sub611 = fsub float -0.000000e+00, %847
  %848 = load float*, float** @a, align 16
  %arrayidx612 = getelementptr inbounds float, float* %848, i64 31999
  store float %sub611, float* %arrayidx612, align 4
  br label %if.end.1027

if.else.613:                                      ; preds = %if.else.606
  %849 = load i8*, i8** %name.addr, align 8
  %call614 = call i32 @strcmp(i8* %849, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0)) #4
  %tobool615 = icmp ne i32 %call614, 0
  br i1 %tobool615, label %if.else.619, label %if.then.616

if.then.616:                                      ; preds = %if.else.613
  %850 = load float*, float** @a, align 16
  %851 = load float, float* %one, align 4
  %852 = load i32, i32* %unit, align 4
  %call617 = call i32 @set1d(float* %850, float %851, i32 %852)
  %853 = load float*, float** @b, align 16
  %854 = load float, float* %zero, align 4
  %855 = load i32, i32* %unit, align 4
  %call618 = call i32 @set1d(float* %853, float %854, i32 %855)
  br label %if.end.1026

if.else.619:                                      ; preds = %if.else.613
  %856 = load i8*, i8** %name.addr, align 8
  %call620 = call i32 @strcmp(i8* %856, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)) #4
  %tobool621 = icmp ne i32 %call620, 0
  br i1 %tobool621, label %if.else.626, label %if.then.622

if.then.622:                                      ; preds = %if.else.619
  %857 = load float*, float** @a, align 16
  %858 = load float, float* %one, align 4
  %859 = load i32, i32* %unit, align 4
  %call623 = call i32 @set1d(float* %857, float %858, i32 %859)
  %860 = load float*, float** @b, align 16
  %861 = load float, float* %zero, align 4
  %862 = load i32, i32* %unit, align 4
  %call624 = call i32 @set1d(float* %860, float %861, i32 %862)
  %863 = load float*, float** @c, align 16
  %864 = load float, float* %zero, align 4
  %865 = load i32, i32* %unit, align 4
  %call625 = call i32 @set1d(float* %863, float %864, i32 %865)
  br label %if.end.1025

if.else.626:                                      ; preds = %if.else.619
  %866 = load i8*, i8** %name.addr, align 8
  %call627 = call i32 @strcmp(i8* %866, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0)) #4
  %tobool628 = icmp ne i32 %call627, 0
  br i1 %tobool628, label %if.else.635, label %if.then.629

if.then.629:                                      ; preds = %if.else.626
  %867 = load float*, float** @a, align 16
  %868 = load float, float* %one, align 4
  %869 = load i32, i32* %unit, align 4
  %call630 = call i32 @set1d(float* %867, float %868, i32 %869)
  %870 = load float*, float** @b, align 16
  %871 = load float, float* %one, align 4
  %872 = load i32, i32* %unit, align 4
  %call631 = call i32 @set1d(float* %870, float %871, i32 %872)
  %873 = load float*, float** @c, align 16
  %874 = load float, float* %any, align 4
  %875 = load i32, i32* %frac, align 4
  %call632 = call i32 @set1d(float* %873, float %874, i32 %875)
  %876 = load float*, float** @d, align 16
  %877 = load float, float* %any, align 4
  %878 = load i32, i32* %frac, align 4
  %call633 = call i32 @set1d(float* %876, float %877, i32 %878)
  %879 = load float*, float** @e, align 16
  %880 = load float, float* %any, align 4
  %881 = load i32, i32* %frac, align 4
  %call634 = call i32 @set1d(float* %879, float %880, i32 %881)
  br label %if.end.1024

if.else.635:                                      ; preds = %if.else.626
  %882 = load i8*, i8** %name.addr, align 8
  %call636 = call i32 @strcmp(i8* %882, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0)) #4
  %tobool637 = icmp ne i32 %call636, 0
  br i1 %tobool637, label %if.else.642, label %if.then.638

if.then.638:                                      ; preds = %if.else.635
  %883 = load float*, float** @a, align 16
  %884 = load float, float* %any, align 4
  %885 = load i32, i32* %frac, align 4
  %call639 = call i32 @set1d(float* %883, float %884, i32 %885)
  %886 = load float, float* %one, align 4
  %sub640 = fsub float -0.000000e+00, %886
  %887 = load float*, float** @a, align 16
  %arrayidx641 = getelementptr inbounds float, float* %887, i64 31999
  store float %sub640, float* %arrayidx641, align 4
  br label %if.end.1023

if.else.642:                                      ; preds = %if.else.635
  %888 = load i8*, i8** %name.addr, align 8
  %call643 = call i32 @strcmp(i8* %888, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0)) #4
  %tobool644 = icmp ne i32 %call643, 0
  br i1 %tobool644, label %if.else.648, label %if.then.645

if.then.645:                                      ; preds = %if.else.642
  %889 = load float*, float** @a, align 16
  %890 = load float, float* %any, align 4
  %891 = load i32, i32* %frac2, align 4
  %call646 = call i32 @set1d(float* %889, float %890, i32 %891)
  %892 = load float, float* %two, align 4
  %893 = load float*, float** @a, align 16
  %arrayidx647 = getelementptr inbounds float, float* %893, i64 31999
  store float %892, float* %arrayidx647, align 4
  br label %if.end.1022

if.else.648:                                      ; preds = %if.else.642
  %894 = load i8*, i8** %name.addr, align 8
  %call649 = call i32 @strcmp(i8* %894, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)) #4
  %tobool650 = icmp ne i32 %call649, 0
  br i1 %tobool650, label %if.else.654, label %if.then.651

if.then.651:                                      ; preds = %if.else.648
  %895 = load float*, float** @a, align 16
  %896 = load float, float* %zero, align 4
  %897 = load i32, i32* %unit, align 4
  %call652 = call i32 @set1d(float* %895, float %896, i32 %897)
  %898 = load float*, float** @b, align 16
  %899 = load float, float* %any, align 4
  %900 = load i32, i32* %frac, align 4
  %call653 = call i32 @set1d(float* %898, float %899, i32 %900)
  br label %if.end.1021

if.else.654:                                      ; preds = %if.else.648
  %901 = load i8*, i8** %name.addr, align 8
  %call655 = call i32 @strcmp(i8* %901, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0)) #4
  %tobool656 = icmp ne i32 %call655, 0
  br i1 %tobool656, label %if.else.660, label %if.then.657

if.then.657:                                      ; preds = %if.else.654
  %902 = load float*, float** @a, align 16
  %903 = load float, float* %any, align 4
  %904 = load i32, i32* %frac, align 4
  %call658 = call i32 @set1d(float* %902, float %903, i32 %904)
  %905 = load float*, float** @b, align 16
  %906 = load float, float* %any, align 4
  %907 = load i32, i32* %frac, align 4
  %call659 = call i32 @set1d(float* %905, float %906, i32 %907)
  br label %if.end.1020

if.else.660:                                      ; preds = %if.else.654
  %908 = load i8*, i8** %name.addr, align 8
  %call661 = call i32 @strcmp(i8* %908, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0)) #4
  %tobool662 = icmp ne i32 %call661, 0
  br i1 %tobool662, label %if.else.666, label %if.then.663

if.then.663:                                      ; preds = %if.else.660
  %909 = load [256 x float]*, [256 x float]** @aa, align 16
  %910 = load float, float* %any, align 4
  %911 = load i32, i32* %frac, align 4
  %call664 = call i32 @set2d([256 x float]* %909, float %910, i32 %911)
  %912 = load [256 x float]*, [256 x float]** @bb, align 16
  %913 = load float, float* %one, align 4
  %914 = load i32, i32* %unit, align 4
  %call665 = call i32 @set2d([256 x float]* %912, float %913, i32 %914)
  br label %if.end.1019

if.else.666:                                      ; preds = %if.else.660
  %915 = load i8*, i8** %name.addr, align 8
  %call667 = call i32 @strcmp(i8* %915, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0)) #4
  %tobool668 = icmp ne i32 %call667, 0
  br i1 %tobool668, label %if.else.673, label %if.then.669

if.then.669:                                      ; preds = %if.else.666
  %916 = load float*, float** @a, align 16
  %917 = load float, float* %one, align 4
  %918 = load i32, i32* %unit, align 4
  %call670 = call i32 @set1d(float* %916, float %917, i32 %918)
  %919 = load float*, float** @b, align 16
  %920 = load float, float* %one, align 4
  %921 = load i32, i32* %unit, align 4
  %call671 = call i32 @set1d(float* %919, float %920, i32 %921)
  %922 = load float*, float** @c, align 16
  %arrayidx672 = getelementptr inbounds float, float* %922, i64 0
  store float 1.000000e+00, float* %arrayidx672, align 4
  br label %if.end.1018

if.else.673:                                      ; preds = %if.else.666
  %923 = load i8*, i8** %name.addr, align 8
  %call674 = call i32 @strcmp(i8* %923, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0)) #4
  %tobool675 = icmp ne i32 %call674, 0
  br i1 %tobool675, label %if.else.679, label %if.then.676

if.then.676:                                      ; preds = %if.else.673
  %924 = load float*, float** @a, align 16
  %925 = load float, float* %any, align 4
  %926 = load i32, i32* %frac, align 4
  %call677 = call i32 @set1d(float* %924, float %925, i32 %926)
  %927 = load float*, float** @b, align 16
  %928 = load float, float* %any, align 4
  %929 = load i32, i32* %frac, align 4
  %call678 = call i32 @set1d(float* %927, float %928, i32 %929)
  br label %if.end.1017

if.else.679:                                      ; preds = %if.else.673
  %930 = load i8*, i8** %name.addr, align 8
  %call680 = call i32 @strcmp(i8* %930, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0)) #4
  %tobool681 = icmp ne i32 %call680, 0
  br i1 %tobool681, label %if.else.686, label %if.then.682

if.then.682:                                      ; preds = %if.else.679
  %931 = load float*, float** @a, align 16
  %932 = load float, float* %one, align 4
  %933 = load i32, i32* %unit, align 4
  %call683 = call i32 @set1d(float* %931, float %932, i32 %933)
  %934 = load float*, float** @b, align 16
  %935 = load float, float* %one, align 4
  %936 = load i32, i32* %unit, align 4
  %call684 = call i32 @set1d(float* %934, float %935, i32 %936)
  %937 = load float*, float** @c, align 16
  %arrayidx685 = getelementptr inbounds float, float* %937, i64 0
  store float 1.000000e+00, float* %arrayidx685, align 4
  br label %if.end.1016

if.else.686:                                      ; preds = %if.else.679
  %938 = load i8*, i8** %name.addr, align 8
  %call687 = call i32 @strcmp(i8* %938, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0)) #4
  %tobool688 = icmp ne i32 %call687, 0
  br i1 %tobool688, label %if.else.693, label %if.then.689

if.then.689:                                      ; preds = %if.else.686
  %939 = load float*, float** @a, align 16
  %940 = load float, float* %one, align 4
  %941 = load i32, i32* %unit, align 4
  %call690 = call i32 @set1d(float* %939, float %940, i32 %941)
  %942 = load float*, float** @b, align 16
  %943 = load float, float* %any, align 4
  %944 = load i32, i32* %frac, align 4
  %call691 = call i32 @set1d(float* %942, float %943, i32 %944)
  %945 = load float*, float** @c, align 16
  %946 = load float, float* %any, align 4
  %947 = load i32, i32* %frac, align 4
  %call692 = call i32 @set1d(float* %945, float %946, i32 %947)
  br label %if.end.1015

if.else.693:                                      ; preds = %if.else.686
  %948 = load i8*, i8** %name.addr, align 8
  %call694 = call i32 @strcmp(i8* %948, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0)) #4
  %tobool695 = icmp ne i32 %call694, 0
  br i1 %tobool695, label %if.else.700, label %if.then.696

if.then.696:                                      ; preds = %if.else.693
  %949 = load float*, float** @a, align 16
  %950 = load float, float* %one, align 4
  %951 = load i32, i32* %unit, align 4
  %call697 = call i32 @set1d(float* %949, float %950, i32 %951)
  %952 = load float*, float** @b, align 16
  %953 = load float, float* %any, align 4
  %954 = load i32, i32* %frac, align 4
  %call698 = call i32 @set1d(float* %952, float %953, i32 %954)
  %955 = load float*, float** @c, align 16
  %956 = load float, float* %any, align 4
  %957 = load i32, i32* %frac, align 4
  %call699 = call i32 @set1d(float* %955, float %956, i32 %957)
  br label %if.end.1014

if.else.700:                                      ; preds = %if.else.693
  %958 = load i8*, i8** %name.addr, align 8
  %call701 = call i32 @strcmp(i8* %958, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0)) #4
  %tobool702 = icmp ne i32 %call701, 0
  br i1 %tobool702, label %if.else.709, label %if.then.703

if.then.703:                                      ; preds = %if.else.700
  %959 = load float*, float** @a, align 16
  %960 = load float, float* %zero, align 4
  %961 = load i32, i32* %unit, align 4
  %call704 = call i32 @set1d(float* %959, float %960, i32 %961)
  %962 = load float*, float** @b, align 16
  %963 = load float, float* %one, align 4
  %964 = load i32, i32* %unit, align 4
  %call705 = call i32 @set1d(float* %962, float %963, i32 %964)
  %965 = load float*, float** @c, align 16
  %966 = load float, float* %one, align 4
  %967 = load i32, i32* %unit, align 4
  %call706 = call i32 @set1d(float* %965, float %966, i32 %967)
  %968 = load float*, float** @d, align 16
  %969 = load float, float* %any, align 4
  %970 = load i32, i32* %frac, align 4
  %call707 = call i32 @set1d(float* %968, float %969, i32 %970)
  %971 = load float*, float** @e, align 16
  %972 = load float, float* %any, align 4
  %973 = load i32, i32* %frac, align 4
  %call708 = call i32 @set1d(float* %971, float %972, i32 %973)
  br label %if.end.1013

if.else.709:                                      ; preds = %if.else.700
  %974 = load i8*, i8** %name.addr, align 8
  %call710 = call i32 @strcmp(i8* %974, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0)) #4
  %tobool711 = icmp ne i32 %call710, 0
  br i1 %tobool711, label %if.else.716, label %if.then.712

if.then.712:                                      ; preds = %if.else.709
  %975 = load [256 x float]*, [256 x float]** @aa, align 16
  %976 = load float, float* %one, align 4
  %977 = load i32, i32* %unit, align 4
  %call713 = call i32 @set2d([256 x float]* %975, float %976, i32 %977)
  %978 = load [256 x float]*, [256 x float]** @bb, align 16
  %979 = load float, float* %any, align 4
  %980 = load i32, i32* %frac, align 4
  %call714 = call i32 @set2d([256 x float]* %978, float %979, i32 %980)
  %981 = load [256 x float]*, [256 x float]** @cc, align 16
  %982 = load float, float* %any, align 4
  %983 = load i32, i32* %frac, align 4
  %call715 = call i32 @set2d([256 x float]* %981, float %982, i32 %983)
  br label %if.end.1012

if.else.716:                                      ; preds = %if.else.709
  %984 = load i8*, i8** %name.addr, align 8
  %call717 = call i32 @strcmp(i8* %984, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0)) #4
  %tobool718 = icmp ne i32 %call717, 0
  br i1 %tobool718, label %if.else.725, label %if.then.719

if.then.719:                                      ; preds = %if.else.716
  %985 = load float*, float** @a, align 16
  %986 = load float, float* %one, align 4
  %987 = load i32, i32* %unit, align 4
  %call720 = call i32 @set1d(float* %985, float %986, i32 %987)
  %988 = load float*, float** @b, align 16
  %989 = load float, float* %any, align 4
  %990 = load i32, i32* %frac, align 4
  %call721 = call i32 @set1d(float* %988, float %989, i32 %990)
  %991 = load float*, float** @c, align 16
  %992 = load float, float* %any, align 4
  %993 = load i32, i32* %frac, align 4
  %call722 = call i32 @set1d(float* %991, float %992, i32 %993)
  %994 = load float, float* %one, align 4
  %sub723 = fsub float -0.000000e+00, %994
  %995 = load float*, float** @a, align 16
  %arrayidx724 = getelementptr inbounds float, float* %995, i64 31999
  store float %sub723, float* %arrayidx724, align 4
  br label %if.end.1011

if.else.725:                                      ; preds = %if.else.716
  %996 = load i8*, i8** %name.addr, align 8
  %call726 = call i32 @strcmp(i8* %996, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0)) #4
  %tobool727 = icmp ne i32 %call726, 0
  br i1 %tobool727, label %if.else.731, label %if.then.728

if.then.728:                                      ; preds = %if.else.725
  %997 = load float*, float** @a, align 16
  %998 = load float, float* %any, align 4
  %999 = load i32, i32* %frac2, align 4
  %call729 = call i32 @set1d(float* %997, float %998, i32 %999)
  %1000 = load float*, float** @b, align 16
  %1001 = load float, float* %one, align 4
  %1002 = load i32, i32* %unit, align 4
  %call730 = call i32 @set1d(float* %1000, float %1001, i32 %1002)
  br label %if.end.1010

if.else.731:                                      ; preds = %if.else.725
  %1003 = load i8*, i8** %name.addr, align 8
  %call732 = call i32 @strcmp(i8* %1003, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0)) #4
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %if.else.737, label %if.then.734

if.then.734:                                      ; preds = %if.else.731
  %1004 = load float, float* %one, align 4
  %1005 = load i32, i32* %unit, align 4
  %call735 = call i32 @set1d(float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i32 0, i32 0), float %1004, i32 %1005)
  %1006 = load float*, float** @a, align 16
  %1007 = load float, float* %any, align 4
  %1008 = load i32, i32* %frac2, align 4
  %call736 = call i32 @set1d(float* %1006, float %1007, i32 %1008)
  br label %if.end.1009

if.else.737:                                      ; preds = %if.else.731
  %1009 = load i8*, i8** %name.addr, align 8
  %call738 = call i32 @strcmp(i8* %1009, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0)) #4
  %tobool739 = icmp ne i32 %call738, 0
  br i1 %tobool739, label %if.else.743, label %if.then.740

if.then.740:                                      ; preds = %if.else.737
  %1010 = load float, float* %zero, align 4
  %1011 = load i32, i32* %unit, align 4
  %call741 = call i32 @set1d(float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i32 0, i32 0), float %1010, i32 %1011)
  %1012 = load float*, float** @a, align 16
  %1013 = load float, float* %any, align 4
  %1014 = load i32, i32* %frac2, align 4
  %call742 = call i32 @set1d(float* %1012, float %1013, i32 %1014)
  br label %if.end.1008

if.else.743:                                      ; preds = %if.else.737
  %1015 = load i8*, i8** %name.addr, align 8
  %call744 = call i32 @strcmp(i8* %1015, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0)) #4
  %tobool745 = icmp ne i32 %call744, 0
  br i1 %tobool745, label %if.else.749, label %if.then.746

if.then.746:                                      ; preds = %if.else.743
  %1016 = load float, float* %one, align 4
  %1017 = load i32, i32* %unit, align 4
  %call747 = call i32 @set1d(float* getelementptr inbounds ([65536 x float], [65536 x float]* @array, i32 0, i32 0), float %1016, i32 %1017)
  %1018 = load float*, float** @a, align 16
  %1019 = load float, float* %any, align 4
  %1020 = load i32, i32* %frac2, align 4
  %call748 = call i32 @set1d(float* %1018, float %1019, i32 %1020)
  br label %if.end.1007

if.else.749:                                      ; preds = %if.else.743
  %1021 = load i8*, i8** %name.addr, align 8
  %call750 = call i32 @strcmp(i8* %1021, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)) #4
  %tobool751 = icmp ne i32 %call750, 0
  br i1 %tobool751, label %if.else.755, label %if.then.752

if.then.752:                                      ; preds = %if.else.749
  %1022 = load float*, float** @a, align 16
  %1023 = load float, float* %one, align 4
  %1024 = load i32, i32* %unit, align 4
  %call753 = call i32 @set1d(float* %1022, float %1023, i32 %1024)
  %1025 = load float*, float** @b, align 16
  %1026 = load float, float* %any, align 4
  %1027 = load i32, i32* %frac2, align 4
  %call754 = call i32 @set1d(float* %1025, float %1026, i32 %1027)
  br label %if.end.1006

if.else.755:                                      ; preds = %if.else.749
  %1028 = load i8*, i8** %name.addr, align 8
  %call756 = call i32 @strcmp(i8* %1028, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0)) #4
  %tobool757 = icmp ne i32 %call756, 0
  br i1 %tobool757, label %if.else.761, label %if.then.758

if.then.758:                                      ; preds = %if.else.755
  %1029 = load float*, float** @a, align 16
  %1030 = load float, float* %one, align 4
  %1031 = load i32, i32* %unit, align 4
  %call759 = call i32 @set1d(float* %1029, float %1030, i32 %1031)
  %1032 = load float*, float** @b, align 16
  %1033 = load float, float* %any, align 4
  %1034 = load i32, i32* %frac2, align 4
  %call760 = call i32 @set1d(float* %1032, float %1033, i32 %1034)
  br label %if.end.1005

if.else.761:                                      ; preds = %if.else.755
  %1035 = load i8*, i8** %name.addr, align 8
  %call762 = call i32 @strcmp(i8* %1035, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0)) #4
  %tobool763 = icmp ne i32 %call762, 0
  br i1 %tobool763, label %if.else.775, label %if.then.764

if.then.764:                                      ; preds = %if.else.761
  %1036 = load float*, float** @a, align 16
  %1037 = load float, float* %one, align 4
  %1038 = load i32, i32* %unit, align 4
  %call765 = call i32 @set1d(float* %1036, float %1037, i32 %1038)
  %1039 = load float*, float** @b, align 16
  %1040 = load float, float* %any, align 4
  %1041 = load i32, i32* %frac, align 4
  %call766 = call i32 @set1d(float* %1039, float %1040, i32 %1041)
  %1042 = load float*, float** @c, align 16
  %1043 = load float, float* %any, align 4
  %1044 = load i32, i32* %frac, align 4
  %call767 = call i32 @set1d(float* %1042, float %1043, i32 %1044)
  %1045 = load float*, float** @d, align 16
  %arrayidx768 = getelementptr inbounds float, float* %1045, i64 0
  %1046 = load float, float* %one, align 4
  %sub769 = fsub float -0.000000e+00, %1046
  %1047 = load i32, i32* %unit, align 4
  %call770 = call i32 @set1ds(i32 10666, float* %arrayidx768, float %sub769, i32 %1047)
  %1048 = load float*, float** @d, align 16
  %arrayidx771 = getelementptr inbounds float, float* %1048, i64 10666
  %1049 = load float, float* %zero, align 4
  %1050 = load i32, i32* %unit, align 4
  %call772 = call i32 @set1ds(i32 10666, float* %arrayidx771, float %1049, i32 %1050)
  %1051 = load float*, float** @d, align 16
  %arrayidx773 = getelementptr inbounds float, float* %1051, i64 21333
  %1052 = load float, float* %one, align 4
  %1053 = load i32, i32* %unit, align 4
  %call774 = call i32 @set1ds(i32 10667, float* %arrayidx773, float %1052, i32 %1053)
  br label %if.end.1004

if.else.775:                                      ; preds = %if.else.761
  %1054 = load i8*, i8** %name.addr, align 8
  %call776 = call i32 @strcmp(i8* %1054, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0)) #4
  %tobool777 = icmp ne i32 %call776, 0
  br i1 %tobool777, label %if.else.784, label %if.then.778

if.then.778:                                      ; preds = %if.else.775
  %1055 = load float*, float** @a, align 16
  %1056 = load float, float* %one, align 4
  %1057 = load i32, i32* %unit, align 4
  %call779 = call i32 @set1d(float* %1055, float %1056, i32 %1057)
  %1058 = load float*, float** @b, align 16
  %1059 = load float, float* %any, align 4
  %1060 = load i32, i32* %frac, align 4
  %call780 = call i32 @set1d(float* %1058, float %1059, i32 %1060)
  %1061 = load float*, float** @c, align 16
  %1062 = load float, float* %any, align 4
  %1063 = load i32, i32* %frac, align 4
  %call781 = call i32 @set1d(float* %1061, float %1062, i32 %1063)
  %1064 = load float*, float** @d, align 16
  %1065 = load float, float* %any, align 4
  %1066 = load i32, i32* %frac, align 4
  %call782 = call i32 @set1d(float* %1064, float %1065, i32 %1066)
  %1067 = load float*, float** @e, align 16
  %1068 = load float, float* %any, align 4
  %1069 = load i32, i32* %frac, align 4
  %call783 = call i32 @set1d(float* %1067, float %1068, i32 %1069)
  br label %if.end.1003

if.else.784:                                      ; preds = %if.else.775
  %1070 = load i8*, i8** %name.addr, align 8
  %call785 = call i32 @strcmp(i8* %1070, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0)) #4
  %tobool786 = icmp ne i32 %call785, 0
  br i1 %tobool786, label %if.else.791, label %if.then.787

if.then.787:                                      ; preds = %if.else.784
  %1071 = load float*, float** @a, align 16
  %1072 = load float, float* %one, align 4
  %1073 = load i32, i32* %unit, align 4
  %call788 = call i32 @set1d(float* %1071, float %1072, i32 %1073)
  %1074 = load float*, float** @b, align 16
  %1075 = load float, float* %any, align 4
  %1076 = load i32, i32* %frac, align 4
  %call789 = call i32 @set1d(float* %1074, float %1075, i32 %1076)
  %1077 = load float*, float** @c, align 16
  %1078 = load float, float* %any, align 4
  %1079 = load i32, i32* %frac, align 4
  %call790 = call i32 @set1d(float* %1077, float %1078, i32 %1079)
  br label %if.end.1002

if.else.791:                                      ; preds = %if.else.784
  %1080 = load i8*, i8** %name.addr, align 8
  %call792 = call i32 @strcmp(i8* %1080, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0)) #4
  %tobool793 = icmp ne i32 %call792, 0
  br i1 %tobool793, label %if.else.797, label %if.then.794

if.then.794:                                      ; preds = %if.else.791
  %1081 = load float*, float** @b, align 16
  %1082 = load float, float* %any, align 4
  %1083 = load i32, i32* %frac, align 4
  %call795 = call i32 @set1d(float* %1081, float %1082, i32 %1083)
  %1084 = load float*, float** @c, align 16
  %1085 = load float, float* %any, align 4
  %1086 = load i32, i32* %frac, align 4
  %call796 = call i32 @set1d(float* %1084, float %1085, i32 %1086)
  br label %if.end.1001

if.else.797:                                      ; preds = %if.else.791
  %1087 = load i8*, i8** %name.addr, align 8
  %call798 = call i32 @strcmp(i8* %1087, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0)) #4
  %tobool799 = icmp ne i32 %call798, 0
  br i1 %tobool799, label %if.else.804, label %if.then.800

if.then.800:                                      ; preds = %if.else.797
  %1088 = load float*, float** @a, align 16
  %1089 = load float, float* %zero, align 4
  %1090 = load i32, i32* %unit, align 4
  %call801 = call i32 @set1d(float* %1088, float %1089, i32 %1090)
  %1091 = load float*, float** @b, align 16
  %1092 = load float, float* %one, align 4
  %1093 = load i32, i32* %unit, align 4
  %call802 = call i32 @set1d(float* %1091, float %1092, i32 %1093)
  %1094 = load float*, float** @c, align 16
  %1095 = load float, float* %small, align 4
  %1096 = load i32, i32* %unit, align 4
  %call803 = call i32 @set1d(float* %1094, float %1095, i32 %1096)
  br label %if.end.1000

if.else.804:                                      ; preds = %if.else.797
  %1097 = load i8*, i8** %name.addr, align 8
  %call805 = call i32 @strcmp(i8* %1097, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0)) #4
  %tobool806 = icmp ne i32 %call805, 0
  br i1 %tobool806, label %if.else.810, label %if.then.807

if.then.807:                                      ; preds = %if.else.804
  %1098 = load float*, float** @a, align 16
  %1099 = load float, float* %zero, align 4
  %1100 = load i32, i32* %unit, align 4
  %call808 = call i32 @set1d(float* %1098, float %1099, i32 %1100)
  %1101 = load float*, float** @b, align 16
  %1102 = load float, float* %any, align 4
  %1103 = load i32, i32* %frac2, align 4
  %call809 = call i32 @set1d(float* %1101, float %1102, i32 %1103)
  br label %if.end.999

if.else.810:                                      ; preds = %if.else.804
  %1104 = load i8*, i8** %name.addr, align 8
  %call811 = call i32 @strcmp(i8* %1104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0)) #4
  %tobool812 = icmp ne i32 %call811, 0
  br i1 %tobool812, label %if.else.819, label %if.then.813

if.then.813:                                      ; preds = %if.else.810
  %1105 = load float*, float** @a, align 16
  %1106 = load float, float* %one, align 4
  %1107 = load i32, i32* %unit, align 4
  %call814 = call i32 @set1d(float* %1105, float %1106, i32 %1107)
  %1108 = load float*, float** @b, align 16
  %1109 = load float, float* %one, align 4
  %1110 = load i32, i32* %unit, align 4
  %call815 = call i32 @set1d(float* %1108, float %1109, i32 %1110)
  %1111 = load float*, float** @c, align 16
  %1112 = load float, float* %one, align 4
  %1113 = load i32, i32* %unit, align 4
  %call816 = call i32 @set1d(float* %1111, float %1112, i32 %1113)
  %1114 = load float*, float** @d, align 16
  %1115 = load float, float* %any, align 4
  %1116 = load i32, i32* %frac, align 4
  %call817 = call i32 @set1d(float* %1114, float %1115, i32 %1116)
  %1117 = load float*, float** @e, align 16
  %1118 = load float, float* %any, align 4
  %1119 = load i32, i32* %frac, align 4
  %call818 = call i32 @set1d(float* %1117, float %1118, i32 %1119)
  br label %if.end.998

if.else.819:                                      ; preds = %if.else.810
  %1120 = load i8*, i8** %name.addr, align 8
  %call820 = call i32 @strcmp(i8* %1120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0)) #4
  %tobool821 = icmp ne i32 %call820, 0
  br i1 %tobool821, label %if.else.827, label %if.then.822

if.then.822:                                      ; preds = %if.else.819
  %1121 = load float*, float** @a, align 16
  %1122 = load float, float* %one, align 4
  %1123 = load i32, i32* %unit, align 4
  %call823 = call i32 @set1d(float* %1121, float %1122, i32 %1123)
  %1124 = load float*, float** @b, align 16
  %1125 = load float, float* %any, align 4
  %1126 = load i32, i32* %frac, align 4
  %call824 = call i32 @set1d(float* %1124, float %1125, i32 %1126)
  %1127 = load float*, float** @c, align 16
  %1128 = load float, float* %any, align 4
  %1129 = load i32, i32* %frac, align 4
  %call825 = call i32 @set1d(float* %1127, float %1128, i32 %1129)
  %1130 = load float*, float** @d, align 16
  %1131 = load float, float* %any, align 4
  %1132 = load i32, i32* %frac, align 4
  %call826 = call i32 @set1d(float* %1130, float %1131, i32 %1132)
  br label %if.end.997

if.else.827:                                      ; preds = %if.else.819
  %1133 = load i8*, i8** %name.addr, align 8
  %call828 = call i32 @strcmp(i8* %1133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0)) #4
  %tobool829 = icmp ne i32 %call828, 0
  br i1 %tobool829, label %if.else.834, label %if.then.830

if.then.830:                                      ; preds = %if.else.827
  %1134 = load float*, float** @a, align 16
  %1135 = load float, float* %one, align 4
  %1136 = load i32, i32* %unit, align 4
  %call831 = call i32 @set1d(float* %1134, float %1135, i32 %1136)
  %1137 = load float*, float** @b, align 16
  %1138 = load float, float* %any, align 4
  %1139 = load i32, i32* %frac, align 4
  %call832 = call i32 @set1d(float* %1137, float %1138, i32 %1139)
  %1140 = load float*, float** @c, align 16
  %1141 = load float, float* %any, align 4
  %1142 = load i32, i32* %frac, align 4
  %call833 = call i32 @set1d(float* %1140, float %1141, i32 %1142)
  br label %if.end.996

if.else.834:                                      ; preds = %if.else.827
  %1143 = load i8*, i8** %name.addr, align 8
  %call835 = call i32 @strcmp(i8* %1143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0)) #4
  %tobool836 = icmp ne i32 %call835, 0
  br i1 %tobool836, label %if.else.842, label %if.then.837

if.then.837:                                      ; preds = %if.else.834
  %1144 = load float*, float** @a, align 16
  %1145 = load float, float* %zero, align 4
  %1146 = load i32, i32* %unit, align 4
  %call838 = call i32 @set1d(float* %1144, float %1145, i32 %1146)
  %1147 = load float*, float** @b, align 16
  %1148 = load float, float* %one, align 4
  %1149 = load i32, i32* %unit, align 4
  %call839 = call i32 @set1d(float* %1147, float %1148, i32 %1149)
  %1150 = load float*, float** @c, align 16
  %1151 = load float, float* %any, align 4
  %1152 = load i32, i32* %frac, align 4
  %call840 = call i32 @set1d(float* %1150, float %1151, i32 %1152)
  %1153 = load float*, float** @d, align 16
  %1154 = load float, float* %any, align 4
  %1155 = load i32, i32* %frac, align 4
  %call841 = call i32 @set1d(float* %1153, float %1154, i32 %1155)
  br label %if.end.995

if.else.842:                                      ; preds = %if.else.834
  %1156 = load i8*, i8** %name.addr, align 8
  %call843 = call i32 @strcmp(i8* %1156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0)) #4
  %tobool844 = icmp ne i32 %call843, 0
  br i1 %tobool844, label %if.else.848, label %if.then.845

if.then.845:                                      ; preds = %if.else.842
  %1157 = load float*, float** @a, align 16
  %1158 = load float, float* %one, align 4
  %1159 = load i32, i32* %unit, align 4
  %call846 = call i32 @set1d(float* %1157, float %1158, i32 %1159)
  %1160 = load float*, float** @b, align 16
  %1161 = load float, float* %any, align 4
  %1162 = load i32, i32* %frac, align 4
  %call847 = call i32 @set1d(float* %1160, float %1161, i32 %1162)
  br label %if.end.994

if.else.848:                                      ; preds = %if.else.842
  %1163 = load i8*, i8** %name.addr, align 8
  %call849 = call i32 @strcmp(i8* %1163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0)) #4
  %tobool850 = icmp ne i32 %call849, 0
  br i1 %tobool850, label %if.else.855, label %if.then.851

if.then.851:                                      ; preds = %if.else.848
  %1164 = load float*, float** @a, align 16
  %1165 = load float, float* %zero, align 4
  %1166 = load i32, i32* %unit, align 4
  %call852 = call i32 @set1d(float* %1164, float %1165, i32 %1166)
  %1167 = load float*, float** @b, align 16
  %1168 = load float, float* %one, align 4
  %1169 = load i32, i32* %unit, align 4
  %call853 = call i32 @set1d(float* %1167, float %1168, i32 %1169)
  %1170 = load float*, float** @c, align 16
  %1171 = load float, float* %any, align 4
  %1172 = load i32, i32* %frac2, align 4
  %call854 = call i32 @set1d(float* %1170, float %1171, i32 %1172)
  br label %if.end.993

if.else.855:                                      ; preds = %if.else.848
  %1173 = load i8*, i8** %name.addr, align 8
  %call856 = call i32 @strcmp(i8* %1173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0)) #4
  %tobool857 = icmp ne i32 %call856, 0
  br i1 %tobool857, label %if.else.863, label %if.then.858

if.then.858:                                      ; preds = %if.else.855
  %1174 = load float*, float** @a, align 16
  %1175 = load float, float* %zero, align 4
  %1176 = load i32, i32* %unit, align 4
  %call859 = call i32 @set1d(float* %1174, float %1175, i32 %1176)
  %1177 = load float*, float** @b, align 16
  %1178 = load float, float* %one, align 4
  %1179 = load i32, i32* %unit, align 4
  %call860 = call i32 @set1d(float* %1177, float %1178, i32 %1179)
  %1180 = load float*, float** @c, align 16
  %1181 = load float, float* %any, align 4
  %1182 = load i32, i32* %frac, align 4
  %call861 = call i32 @set1d(float* %1180, float %1181, i32 %1182)
  %1183 = load float*, float** @d, align 16
  %1184 = load float, float* %any, align 4
  %1185 = load i32, i32* %frac, align 4
  %call862 = call i32 @set1d(float* %1183, float %1184, i32 %1185)
  br label %if.end.992

if.else.863:                                      ; preds = %if.else.855
  %1186 = load i8*, i8** %name.addr, align 8
  %call864 = call i32 @strcmp(i8* %1186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0)) #4
  %tobool865 = icmp ne i32 %call864, 0
  br i1 %tobool865, label %if.else.869, label %if.then.866

if.then.866:                                      ; preds = %if.else.863
  %1187 = load float*, float** @a, align 16
  %1188 = load float, float* %any, align 4
  %1189 = load i32, i32* %frac, align 4
  %call867 = call i32 @set1d(float* %1187, float %1188, i32 %1189)
  %1190 = load float*, float** @b, align 16
  %1191 = load float, float* %any, align 4
  %1192 = load i32, i32* %frac, align 4
  %call868 = call i32 @set1d(float* %1190, float %1191, i32 %1192)
  br label %if.end.991

if.else.869:                                      ; preds = %if.else.863
  %1193 = load i8*, i8** %name.addr, align 8
  %call870 = call i32 @strcmp(i8* %1193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0)) #4
  %tobool871 = icmp ne i32 %call870, 0
  br i1 %tobool871, label %if.else.875, label %if.then.872

if.then.872:                                      ; preds = %if.else.869
  %1194 = load float*, float** @a, align 16
  %1195 = load float, float* %any, align 4
  %1196 = load i32, i32* %frac, align 4
  %call873 = call i32 @set1d(float* %1194, float %1195, i32 %1196)
  %1197 = load [256 x float]*, [256 x float]** @aa, align 16
  %1198 = load float, float* %any, align 4
  %1199 = load i32, i32* %frac, align 4
  %call874 = call i32 @set2d([256 x float]* %1197, float %1198, i32 %1199)
  br label %if.end.990

if.else.875:                                      ; preds = %if.else.869
  %1200 = load i8*, i8** %name.addr, align 8
  %call876 = call i32 @strcmp(i8* %1200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0)) #4
  %tobool877 = icmp ne i32 %call876, 0
  br i1 %tobool877, label %if.else.883, label %if.then.878

if.then.878:                                      ; preds = %if.else.875
  %1201 = load float*, float** @a, align 16
  %1202 = load float, float* %zero, align 4
  %1203 = load i32, i32* %unit, align 4
  %call879 = call i32 @set1d(float* %1201, float %1202, i32 %1203)
  %1204 = load float*, float** @b, align 16
  %1205 = load float, float* %one, align 4
  %1206 = load i32, i32* %unit, align 4
  %call880 = call i32 @set1d(float* %1204, float %1205, i32 %1206)
  %1207 = load float*, float** @c, align 16
  %1208 = load float, float* %any, align 4
  %1209 = load i32, i32* %frac, align 4
  %call881 = call i32 @set1d(float* %1207, float %1208, i32 %1209)
  %1210 = load float*, float** @d, align 16
  %1211 = load float, float* %any, align 4
  %1212 = load i32, i32* %frac, align 4
  %call882 = call i32 @set1d(float* %1210, float %1211, i32 %1212)
  br label %if.end.989

if.else.883:                                      ; preds = %if.else.875
  %1213 = load i8*, i8** %name.addr, align 8
  %call884 = call i32 @strcmp(i8* %1213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0)) #4
  %tobool885 = icmp ne i32 %call884, 0
  br i1 %tobool885, label %if.else.890, label %if.then.886

if.then.886:                                      ; preds = %if.else.883
  %1214 = load float*, float** @a, align 16
  %1215 = load float, float* %one, align 4
  %1216 = load i32, i32* %unit, align 4
  %call887 = call i32 @set1d(float* %1214, float %1215, i32 %1216)
  %1217 = load float*, float** @b, align 16
  %1218 = load float, float* %any, align 4
  %1219 = load i32, i32* %frac, align 4
  %call888 = call i32 @set1d(float* %1217, float %1218, i32 %1219)
  %1220 = load float*, float** @c, align 16
  %1221 = load float, float* %any, align 4
  %1222 = load i32, i32* %frac, align 4
  %call889 = call i32 @set1d(float* %1220, float %1221, i32 %1222)
  br label %if.end.988

if.else.890:                                      ; preds = %if.else.883
  %1223 = load i8*, i8** %name.addr, align 8
  %call891 = call i32 @strcmp(i8* %1223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0)) #4
  %tobool892 = icmp ne i32 %call891, 0
  br i1 %tobool892, label %if.else.896, label %if.then.893

if.then.893:                                      ; preds = %if.else.890
  %1224 = load float*, float** @a, align 16
  %1225 = load float, float* %zero, align 4
  %1226 = load i32, i32* %unit, align 4
  %call894 = call i32 @set1d(float* %1224, float %1225, i32 %1226)
  %1227 = load float*, float** @b, align 16
  %1228 = load float, float* %any, align 4
  %1229 = load i32, i32* %frac2, align 4
  %call895 = call i32 @set1d(float* %1227, float %1228, i32 %1229)
  br label %if.end.987

if.else.896:                                      ; preds = %if.else.890
  %1230 = load i8*, i8** %name.addr, align 8
  %call897 = call i32 @strcmp(i8* %1230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i32 0, i32 0)) #4
  %tobool898 = icmp ne i32 %call897, 0
  br i1 %tobool898, label %if.else.902, label %if.then.899

if.then.899:                                      ; preds = %if.else.896
  %1231 = load float*, float** @a, align 16
  %1232 = load float, float* %zero, align 4
  %1233 = load i32, i32* %unit, align 4
  %call900 = call i32 @set1d(float* %1231, float %1232, i32 %1233)
  %1234 = load float*, float** @b, align 16
  %1235 = load float, float* %any, align 4
  %1236 = load i32, i32* %frac2, align 4
  %call901 = call i32 @set1d(float* %1234, float %1235, i32 %1236)
  br label %if.end.986

if.else.902:                                      ; preds = %if.else.896
  %1237 = load i8*, i8** %name.addr, align 8
  %call903 = call i32 @strcmp(i8* %1237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0)) #4
  %tobool904 = icmp ne i32 %call903, 0
  br i1 %tobool904, label %if.else.908, label %if.then.905

if.then.905:                                      ; preds = %if.else.902
  %1238 = load float*, float** @a, align 16
  %1239 = load float, float* %zero, align 4
  %1240 = load i32, i32* %unit, align 4
  %call906 = call i32 @set1d(float* %1238, float %1239, i32 %1240)
  %1241 = load float*, float** @b, align 16
  %1242 = load float, float* %any, align 4
  %1243 = load i32, i32* %frac2, align 4
  %call907 = call i32 @set1d(float* %1241, float %1242, i32 %1243)
  br label %if.end.985

if.else.908:                                      ; preds = %if.else.902
  %1244 = load i8*, i8** %name.addr, align 8
  %call909 = call i32 @strcmp(i8* %1244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0)) #4
  %tobool910 = icmp ne i32 %call909, 0
  br i1 %tobool910, label %if.else.914, label %if.then.911

if.then.911:                                      ; preds = %if.else.908
  %1245 = load float*, float** @a, align 16
  %1246 = load float, float* %zero, align 4
  %1247 = load i32, i32* %unit, align 4
  %call912 = call i32 @set1d(float* %1245, float %1246, i32 %1247)
  %1248 = load float*, float** @b, align 16
  %1249 = load float, float* %any, align 4
  %1250 = load i32, i32* %frac2, align 4
  %call913 = call i32 @set1d(float* %1248, float %1249, i32 %1250)
  br label %if.end.984

if.else.914:                                      ; preds = %if.else.908
  %1251 = load i8*, i8** %name.addr, align 8
  %call915 = call i32 @strcmp(i8* %1251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0)) #4
  %tobool916 = icmp ne i32 %call915, 0
  br i1 %tobool916, label %if.else.920, label %if.then.917

if.then.917:                                      ; preds = %if.else.914
  %1252 = load float*, float** @a, align 16
  %1253 = load float, float* %zero, align 4
  %1254 = load i32, i32* %unit, align 4
  %call918 = call i32 @set1d(float* %1252, float %1253, i32 %1254)
  %1255 = load float*, float** @b, align 16
  %1256 = load float, float* %any, align 4
  %1257 = load i32, i32* %frac2, align 4
  %call919 = call i32 @set1d(float* %1255, float %1256, i32 %1257)
  br label %if.end.983

if.else.920:                                      ; preds = %if.else.914
  %1258 = load i8*, i8** %name.addr, align 8
  %call921 = call i32 @strcmp(i8* %1258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0)) #4
  %tobool922 = icmp ne i32 %call921, 0
  br i1 %tobool922, label %if.else.926, label %if.then.923

if.then.923:                                      ; preds = %if.else.920
  %1259 = load float*, float** @a, align 16
  %1260 = load float, float* %one, align 4
  %1261 = load i32, i32* %unit, align 4
  %call924 = call i32 @set1d(float* %1259, float %1260, i32 %1261)
  %1262 = load float*, float** @b, align 16
  %1263 = load float, float* %one, align 4
  %1264 = load i32, i32* %unit, align 4
  %call925 = call i32 @set1d(float* %1262, float %1263, i32 %1264)
  br label %if.end.982

if.else.926:                                      ; preds = %if.else.920
  %1265 = load i8*, i8** %name.addr, align 8
  %call927 = call i32 @strcmp(i8* %1265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0)) #4
  %tobool928 = icmp ne i32 %call927, 0
  br i1 %tobool928, label %if.else.933, label %if.then.929

if.then.929:                                      ; preds = %if.else.926
  %1266 = load float*, float** @a, align 16
  %1267 = load float, float* %one, align 4
  %1268 = load i32, i32* %unit, align 4
  %call930 = call i32 @set1d(float* %1266, float %1267, i32 %1268)
  %1269 = load float*, float** @b, align 16
  %1270 = load float, float* %any, align 4
  %1271 = load i32, i32* %frac, align 4
  %call931 = call i32 @set1d(float* %1269, float %1270, i32 %1271)
  %1272 = load float*, float** @c, align 16
  %1273 = load float, float* %any, align 4
  %1274 = load i32, i32* %frac, align 4
  %call932 = call i32 @set1d(float* %1272, float %1273, i32 %1274)
  br label %if.end.981

if.else.933:                                      ; preds = %if.else.926
  %1275 = load i8*, i8** %name.addr, align 8
  %call934 = call i32 @strcmp(i8* %1275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0)) #4
  %tobool935 = icmp ne i32 %call934, 0
  br i1 %tobool935, label %if.else.939, label %if.then.936

if.then.936:                                      ; preds = %if.else.933
  %1276 = load float*, float** @a, align 16
  %1277 = load float, float* %one, align 4
  %1278 = load i32, i32* %unit, align 4
  %call937 = call i32 @set1d(float* %1276, float %1277, i32 %1278)
  %1279 = load float*, float** @b, align 16
  %1280 = load float, float* %any, align 4
  %1281 = load i32, i32* %frac2, align 4
  %call938 = call i32 @set1d(float* %1279, float %1280, i32 %1281)
  br label %if.end.980

if.else.939:                                      ; preds = %if.else.933
  %1282 = load i8*, i8** %name.addr, align 8
  %call940 = call i32 @strcmp(i8* %1282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0)) #4
  %tobool941 = icmp ne i32 %call940, 0
  br i1 %tobool941, label %if.else.947, label %if.then.942

if.then.942:                                      ; preds = %if.else.939
  %1283 = load float*, float** @a, align 16
  %1284 = load float, float* %any, align 4
  %1285 = load i32, i32* %frac2, align 4
  %call943 = call i32 @set1d(float* %1283, float %1284, i32 %1285)
  %1286 = load float*, float** @b, align 16
  %1287 = load float, float* %one, align 4
  %1288 = load i32, i32* %unit, align 4
  %call944 = call i32 @set1d(float* %1286, float %1287, i32 %1288)
  %1289 = load float*, float** @c, align 16
  %1290 = load float, float* %one, align 4
  %sub945 = fsub float -0.000000e+00, %1290
  %1291 = load i32, i32* %unit, align 4
  %call946 = call i32 @set1d(float* %1289, float %sub945, i32 %1291)
  br label %if.end.979

if.else.947:                                      ; preds = %if.else.939
  %1292 = load i8*, i8** %name.addr, align 8
  %call948 = call i32 @strcmp(i8* %1292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0)) #4
  %tobool949 = icmp ne i32 %call948, 0
  br i1 %tobool949, label %if.else.954, label %if.then.950

if.then.950:                                      ; preds = %if.else.947
  %1293 = load float*, float** @a, align 16
  %1294 = load float, float* %one, align 4
  %1295 = load i32, i32* %unit, align 4
  %call951 = call i32 @set1d(float* %1293, float %1294, i32 %1295)
  %1296 = load float*, float** @b, align 16
  %1297 = load float, float* %two, align 4
  %1298 = load i32, i32* %unit, align 4
  %call952 = call i32 @set1d(float* %1296, float %1297, i32 %1298)
  %1299 = load float*, float** @c, align 16
  %1300 = load float, float* %half, align 4
  %1301 = load i32, i32* %unit, align 4
  %call953 = call i32 @set1d(float* %1299, float %1300, i32 %1301)
  br label %if.end.978

if.else.954:                                      ; preds = %if.else.947
  %1302 = load i8*, i8** %name.addr, align 8
  %call955 = call i32 @strcmp(i8* %1302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0)) #4
  %tobool956 = icmp ne i32 %call955, 0
  br i1 %tobool956, label %if.else.959, label %if.then.957

if.then.957:                                      ; preds = %if.else.954
  %1303 = load float*, float** @a, align 16
  %1304 = load float, float* %any, align 4
  %1305 = load i32, i32* %frac, align 4
  %call958 = call i32 @set1d(float* %1303, float %1304, i32 %1305)
  br label %if.end.977

if.else.959:                                      ; preds = %if.else.954
  %1306 = load i8*, i8** %name.addr, align 8
  %call960 = call i32 @strcmp(i8* %1306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0)) #4
  %tobool961 = icmp ne i32 %call960, 0
  br i1 %tobool961, label %if.else.965, label %if.then.962

if.then.962:                                      ; preds = %if.else.959
  %1307 = load float*, float** @a, align 16
  %1308 = load float, float* %any, align 4
  %1309 = load i32, i32* %frac, align 4
  %call963 = call i32 @set1d(float* %1307, float %1308, i32 %1309)
  %1310 = load float*, float** @b, align 16
  %1311 = load float, float* %any, align 4
  %1312 = load i32, i32* %frac, align 4
  %call964 = call i32 @set1d(float* %1310, float %1311, i32 %1312)
  br label %if.end.976

if.else.965:                                      ; preds = %if.else.959
  %1313 = load i8*, i8** %name.addr, align 8
  %call966 = call i32 @strcmp(i8* %1313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0)) #4
  %tobool967 = icmp ne i32 %call966, 0
  br i1 %tobool967, label %if.else.975, label %if.then.968

if.then.968:                                      ; preds = %if.else.965
  %1314 = load float*, float** @a, align 16
  %1315 = load float, float* %any, align 4
  %1316 = load i32, i32* %frac, align 4
  %call969 = call i32 @set1d(float* %1314, float %1315, i32 %1316)
  %1317 = load float*, float** @b, align 16
  %1318 = load float, float* %any, align 4
  %1319 = load i32, i32* %frac, align 4
  %call970 = call i32 @set1d(float* %1317, float %1318, i32 %1319)
  %1320 = load float*, float** @c, align 16
  %1321 = load float, float* %one, align 4
  %1322 = load i32, i32* %frac, align 4
  %call971 = call i32 @set1d(float* %1320, float %1321, i32 %1322)
  %1323 = load float*, float** @d, align 16
  %1324 = load float, float* %two, align 4
  %1325 = load i32, i32* %frac, align 4
  %call972 = call i32 @set1d(float* %1323, float %1324, i32 %1325)
  %1326 = load float*, float** @e, align 16
  %1327 = load float, float* %half, align 4
  %1328 = load i32, i32* %frac, align 4
  %call973 = call i32 @set1d(float* %1326, float %1327, i32 %1328)
  %1329 = load [256 x float]*, [256 x float]** @aa, align 16
  %1330 = load float, float* %any, align 4
  %1331 = load i32, i32* %frac, align 4
  %call974 = call i32 @set2d([256 x float]* %1329, float %1330, i32 %1331)
  br label %if.end

if.else.975:                                      ; preds = %if.else.965
  br label %if.end

if.end:                                           ; preds = %if.else.975, %if.then.968
  br label %if.end.976

if.end.976:                                       ; preds = %if.end, %if.then.962
  br label %if.end.977

if.end.977:                                       ; preds = %if.end.976, %if.then.957
  br label %if.end.978

if.end.978:                                       ; preds = %if.end.977, %if.then.950
  br label %if.end.979

if.end.979:                                       ; preds = %if.end.978, %if.then.942
  br label %if.end.980

if.end.980:                                       ; preds = %if.end.979, %if.then.936
  br label %if.end.981

if.end.981:                                       ; preds = %if.end.980, %if.then.929
  br label %if.end.982

if.end.982:                                       ; preds = %if.end.981, %if.then.923
  br label %if.end.983

if.end.983:                                       ; preds = %if.end.982, %if.then.917
  br label %if.end.984

if.end.984:                                       ; preds = %if.end.983, %if.then.911
  br label %if.end.985

if.end.985:                                       ; preds = %if.end.984, %if.then.905
  br label %if.end.986

if.end.986:                                       ; preds = %if.end.985, %if.then.899
  br label %if.end.987

if.end.987:                                       ; preds = %if.end.986, %if.then.893
  br label %if.end.988

if.end.988:                                       ; preds = %if.end.987, %if.then.886
  br label %if.end.989

if.end.989:                                       ; preds = %if.end.988, %if.then.878
  br label %if.end.990

if.end.990:                                       ; preds = %if.end.989, %if.then.872
  br label %if.end.991

if.end.991:                                       ; preds = %if.end.990, %if.then.866
  br label %if.end.992

if.end.992:                                       ; preds = %if.end.991, %if.then.858
  br label %if.end.993

if.end.993:                                       ; preds = %if.end.992, %if.then.851
  br label %if.end.994

if.end.994:                                       ; preds = %if.end.993, %if.then.845
  br label %if.end.995

if.end.995:                                       ; preds = %if.end.994, %if.then.837
  br label %if.end.996

if.end.996:                                       ; preds = %if.end.995, %if.then.830
  br label %if.end.997

if.end.997:                                       ; preds = %if.end.996, %if.then.822
  br label %if.end.998

if.end.998:                                       ; preds = %if.end.997, %if.then.813
  br label %if.end.999

if.end.999:                                       ; preds = %if.end.998, %if.then.807
  br label %if.end.1000

if.end.1000:                                      ; preds = %if.end.999, %if.then.800
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.end.1000, %if.then.794
  br label %if.end.1002

if.end.1002:                                      ; preds = %if.end.1001, %if.then.787
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.end.1002, %if.then.778
  br label %if.end.1004

if.end.1004:                                      ; preds = %if.end.1003, %if.then.764
  br label %if.end.1005

if.end.1005:                                      ; preds = %if.end.1004, %if.then.758
  br label %if.end.1006

if.end.1006:                                      ; preds = %if.end.1005, %if.then.752
  br label %if.end.1007

if.end.1007:                                      ; preds = %if.end.1006, %if.then.746
  br label %if.end.1008

if.end.1008:                                      ; preds = %if.end.1007, %if.then.740
  br label %if.end.1009

if.end.1009:                                      ; preds = %if.end.1008, %if.then.734
  br label %if.end.1010

if.end.1010:                                      ; preds = %if.end.1009, %if.then.728
  br label %if.end.1011

if.end.1011:                                      ; preds = %if.end.1010, %if.then.719
  br label %if.end.1012

if.end.1012:                                      ; preds = %if.end.1011, %if.then.712
  br label %if.end.1013

if.end.1013:                                      ; preds = %if.end.1012, %if.then.703
  br label %if.end.1014

if.end.1014:                                      ; preds = %if.end.1013, %if.then.696
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.end.1014, %if.then.689
  br label %if.end.1016

if.end.1016:                                      ; preds = %if.end.1015, %if.then.682
  br label %if.end.1017

if.end.1017:                                      ; preds = %if.end.1016, %if.then.676
  br label %if.end.1018

if.end.1018:                                      ; preds = %if.end.1017, %if.then.669
  br label %if.end.1019

if.end.1019:                                      ; preds = %if.end.1018, %if.then.663
  br label %if.end.1020

if.end.1020:                                      ; preds = %if.end.1019, %if.then.657
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.end.1020, %if.then.651
  br label %if.end.1022

if.end.1022:                                      ; preds = %if.end.1021, %if.then.645
  br label %if.end.1023

if.end.1023:                                      ; preds = %if.end.1022, %if.then.638
  br label %if.end.1024

if.end.1024:                                      ; preds = %if.end.1023, %if.then.629
  br label %if.end.1025

if.end.1025:                                      ; preds = %if.end.1024, %if.then.622
  br label %if.end.1026

if.end.1026:                                      ; preds = %if.end.1025, %if.then.616
  br label %if.end.1027

if.end.1027:                                      ; preds = %if.end.1026, %if.then.609
  br label %if.end.1028

if.end.1028:                                      ; preds = %if.end.1027, %if.then.603
  br label %if.end.1029

if.end.1029:                                      ; preds = %if.end.1028, %if.then.598
  br label %if.end.1030

if.end.1030:                                      ; preds = %if.end.1029, %if.then.591
  br label %if.end.1031

if.end.1031:                                      ; preds = %if.end.1030, %if.then.582
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.end.1031, %if.then.575
  br label %if.end.1033

if.end.1033:                                      ; preds = %if.end.1032, %if.then.571
  br label %if.end.1034

if.end.1034:                                      ; preds = %if.end.1033, %if.then.566
  br label %if.end.1035

if.end.1035:                                      ; preds = %if.end.1034, %if.then.561
  br label %if.end.1036

if.end.1036:                                      ; preds = %if.end.1035, %if.then.556
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.end.1036, %if.then.550
  br label %if.end.1038

if.end.1038:                                      ; preds = %if.end.1037, %if.then.545
  br label %if.end.1039

if.end.1039:                                      ; preds = %if.end.1038, %if.then.540
  br label %if.end.1040

if.end.1040:                                      ; preds = %if.end.1039, %if.then.535
  br label %if.end.1041

if.end.1041:                                      ; preds = %if.end.1040, %if.then.530
  br label %if.end.1042

if.end.1042:                                      ; preds = %if.end.1041, %if.then.523
  br label %if.end.1043

if.end.1043:                                      ; preds = %if.end.1042, %if.then.518
  br label %if.end.1044

if.end.1044:                                      ; preds = %if.end.1043, %if.then.512
  br label %if.end.1045

if.end.1045:                                      ; preds = %if.end.1044, %if.then.506
  br label %if.end.1046

if.end.1046:                                      ; preds = %if.end.1045, %if.then.499
  br label %if.end.1047

if.end.1047:                                      ; preds = %if.end.1046, %if.then.492
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.end.1047, %if.then.485
  br label %if.end.1049

if.end.1049:                                      ; preds = %if.end.1048, %if.then.476
  br label %if.end.1050

if.end.1050:                                      ; preds = %if.end.1049, %if.then.464
  br label %if.end.1051

if.end.1051:                                      ; preds = %if.end.1050, %if.then.452
  br label %if.end.1052

if.end.1052:                                      ; preds = %if.end.1051, %if.then.440
  br label %if.end.1053

if.end.1053:                                      ; preds = %if.end.1052, %if.then.432
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.end.1053, %if.then.425
  br label %if.end.1055

if.end.1055:                                      ; preds = %if.end.1054, %if.then.416
  br label %if.end.1056

if.end.1056:                                      ; preds = %if.end.1055, %if.then.407
  br label %if.end.1057

if.end.1057:                                      ; preds = %if.end.1056, %if.then.398
  br label %if.end.1058

if.end.1058:                                      ; preds = %if.end.1057, %if.then.391
  br label %if.end.1059

if.end.1059:                                      ; preds = %if.end.1058, %if.then.383
  br label %if.end.1060

if.end.1060:                                      ; preds = %if.end.1059, %if.then.373
  br label %if.end.1061

if.end.1061:                                      ; preds = %if.end.1060, %if.then.366
  br label %if.end.1062

if.end.1062:                                      ; preds = %if.end.1061, %if.then.359
  br label %if.end.1063

if.end.1063:                                      ; preds = %if.end.1062, %if.then.353
  br label %if.end.1064

if.end.1064:                                      ; preds = %if.end.1063, %if.then.347
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.end.1064, %if.then.339
  br label %if.end.1066

if.end.1066:                                      ; preds = %if.end.1065, %if.then.332
  br label %if.end.1067

if.end.1067:                                      ; preds = %if.end.1066, %if.then.323
  br label %if.end.1068

if.end.1068:                                      ; preds = %if.end.1067, %if.then.315
  br label %if.end.1069

if.end.1069:                                      ; preds = %if.end.1068, %if.then.306
  br label %if.end.1070

if.end.1070:                                      ; preds = %if.end.1069, %if.then.298
  br label %if.end.1071

if.end.1071:                                      ; preds = %if.end.1070, %if.then.290
  br label %if.end.1072

if.end.1072:                                      ; preds = %if.end.1071, %if.then.281
  br label %if.end.1073

if.end.1073:                                      ; preds = %if.end.1072, %if.then.274
  br label %if.end.1074

if.end.1074:                                      ; preds = %if.end.1073, %if.then.267
  br label %if.end.1075

if.end.1075:                                      ; preds = %if.end.1074, %if.then.261
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.end.1075, %if.then.255
  br label %if.end.1077

if.end.1077:                                      ; preds = %if.end.1076, %if.then.248
  br label %if.end.1078

if.end.1078:                                      ; preds = %if.end.1077, %if.then.240
  br label %if.end.1079

if.end.1079:                                      ; preds = %if.end.1078, %if.then.232
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.end.1079, %if.then.223
  br label %if.end.1081

if.end.1081:                                      ; preds = %if.end.1080, %if.then.216
  br label %if.end.1082

if.end.1082:                                      ; preds = %if.end.1081, %if.then.210
  br label %if.end.1083

if.end.1083:                                      ; preds = %if.end.1082, %if.then.204
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.end.1083, %if.then.198
  br label %if.end.1085

if.end.1085:                                      ; preds = %if.end.1084, %if.then.192
  br label %if.end.1086

if.end.1086:                                      ; preds = %if.end.1085, %if.then.186
  br label %if.end.1087

if.end.1087:                                      ; preds = %if.end.1086, %if.then.179
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.end.1087, %if.then.167
  br label %if.end.1089

if.end.1089:                                      ; preds = %if.end.1088, %if.then.158
  br label %if.end.1090

if.end.1090:                                      ; preds = %if.end.1089, %if.then.152
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.end.1090, %if.then.146
  br label %if.end.1092

if.end.1092:                                      ; preds = %if.end.1091, %if.then.139
  br label %if.end.1093

if.end.1093:                                      ; preds = %if.end.1092, %if.then.133
  br label %if.end.1094

if.end.1094:                                      ; preds = %if.end.1093, %if.then.125
  br label %if.end.1095

if.end.1095:                                      ; preds = %if.end.1094, %if.then.116
  br label %if.end.1096

if.end.1096:                                      ; preds = %if.end.1095, %if.then.109
  br label %if.end.1097

if.end.1097:                                      ; preds = %if.end.1096, %if.then.101
  br label %if.end.1098

if.end.1098:                                      ; preds = %if.end.1097, %if.then.92
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.end.1098, %if.then.83
  br label %if.end.1100

if.end.1100:                                      ; preds = %if.end.1099, %if.then.77
  br label %if.end.1101

if.end.1101:                                      ; preds = %if.end.1100, %if.then.71
  br label %if.end.1102

if.end.1102:                                      ; preds = %if.end.1101, %if.then.65
  br label %if.end.1103

if.end.1103:                                      ; preds = %if.end.1102, %if.then.59
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.end.1103, %if.then.54
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.end.1104, %if.then.46
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.end.1105, %if.then.40
  br label %if.end.1107

if.end.1107:                                      ; preds = %if.end.1106, %if.then.34
  br label %if.end.1108

if.end.1108:                                      ; preds = %if.end.1107, %if.then.28
  br label %if.end.1109

if.end.1109:                                      ; preds = %if.end.1108, %if.then.19
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.end.1109, %for.end
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @s341() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %j = alloca i32, align 4
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 0, i64* %start_t, align 8
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** @b, align 16
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %cmp4 = fcmp ogt float %5, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load float*, float** @b, align 16
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 %idxprom5
  %9 = load float, float* %arrayidx6, align 4
  %10 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load float*, float** @a, align 16
  %arrayidx8 = getelementptr inbounds float, float* %11, i64 %idxprom7
  store float %9, float* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %13 = load float*, float** @a, align 16
  %14 = load float*, float** @b, align 16
  %15 = load float*, float** @c, align 16
  %16 = load float*, float** @d, align 16
  %17 = load float*, float** @e, align 16
  %18 = load [256 x float]*, [256 x float]** @aa, align 16
  %19 = load [256 x float]*, [256 x float]** @bb, align 16
  %20 = load [256 x float]*, [256 x float]** @cc, align 16
  %call10 = call i32 @dummy(float* %13, float* %14, float* %15, float* %16, float* %17, [256 x float]* %18, [256 x float]* %19, [256 x float]* %20, float 0.000000e+00)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %21 = load i32, i32* %nl, align 4
  %inc12 = add nsw i32 %21, 1
  store i32 %inc12, i32* %nl, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %22 = load i64, i64* %end_t, align 8
  %23 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %22, %23
  store i64 %sub, i64* %clock_dif, align 8
  %24 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %24 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %25 = load double, double* %clock_dif_sec, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), double %25)
  call void @check(i32 1)
  ret i32 0
}

declare i32 @dummy(float*, float*, float*, float*, float*, [256 x float]*, [256 x float]*, [256 x float]*, float) #1

; Function Attrs: nounwind uwtable
define i32 @s342() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %j = alloca i32, align 4
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  store i64 0, i64* %start_t, align 8
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %j, align 4
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** @a, align 16
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %cmp4 = fcmp ogt float %5, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load float*, float** @b, align 16
  %arrayidx6 = getelementptr inbounds float, float* %8, i64 %idxprom5
  %9 = load float, float* %arrayidx6, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load float*, float** @a, align 16
  %arrayidx8 = getelementptr inbounds float, float* %11, i64 %idxprom7
  store float %9, float* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %13 = load float*, float** @a, align 16
  %14 = load float*, float** @b, align 16
  %15 = load float*, float** @c, align 16
  %16 = load float*, float** @d, align 16
  %17 = load float*, float** @e, align 16
  %18 = load [256 x float]*, [256 x float]** @aa, align 16
  %19 = load [256 x float]*, [256 x float]** @bb, align 16
  %20 = load [256 x float]*, [256 x float]** @cc, align 16
  %call10 = call i32 @dummy(float* %13, float* %14, float* %15, float* %16, float* %17, [256 x float]* %18, [256 x float]* %19, [256 x float]* %20, float 0.000000e+00)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %21 = load i32, i32* %nl, align 4
  %inc12 = add nsw i32 %21, 1
  store i32 %inc12, i32* %nl, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %22 = load i64, i64* %end_t, align 8
  %23 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %22, %23
  store i64 %sub, i64* %clock_dif, align 8
  %24 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %24 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %25 = load double, double* %clock_dif_sec, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), double %25)
  call void @check(i32 1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s343() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %k = alloca i32, align 4
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 0, i64* %start_t, align 8
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.21, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %div = sdiv i32 %1, 256
  %mul = mul nsw i32 10, %div
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 -1, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.17, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 256
  br i1 %cmp2, label %for.body.3, label %for.end.19

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %3 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %3, 256
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %5 to i64
  %6 = load [256 x float]*, [256 x float]** @bb, align 16
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %6, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx, i32 0, i64 %idxprom
  %7 = load float, float* %arrayidx8, align 4
  %cmp9 = fcmp ogt float %7, 0.000000e+00
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %8 = load i32, i32* %k, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %k, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load [256 x float]*, [256 x float]** @aa, align 16
  %arrayidx12 = getelementptr inbounds [256 x float], [256 x float]* %11, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [256 x float], [256 x float]* %arrayidx12, i32 0, i64 %idxprom10
  %12 = load float, float* %arrayidx13, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [65536 x float], [65536 x float]* @array, i32 0, i64 %idxprom14
  store float %12, float* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %j, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.1

for.end.19:                                       ; preds = %for.cond.1
  %16 = load float*, float** @a, align 16
  %17 = load float*, float** @b, align 16
  %18 = load float*, float** @c, align 16
  %19 = load float*, float** @d, align 16
  %20 = load float*, float** @e, align 16
  %21 = load [256 x float]*, [256 x float]** @aa, align 16
  %22 = load [256 x float]*, [256 x float]** @bb, align 16
  %23 = load [256 x float]*, [256 x float]** @cc, align 16
  %call20 = call i32 @dummy(float* %16, float* %17, float* %18, float* %19, float* %20, [256 x float]* %21, [256 x float]* %22, [256 x float]* %23, float 0.000000e+00)
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.end.19
  %24 = load i32, i32* %nl, align 4
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, i32* %nl, align 4
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %25 = load i64, i64* %end_t, align 8
  %26 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %25, %26
  store i64 %sub, i64* %clock_dif, align 8
  %27 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %27 to double
  %div24 = fdiv double %conv, 1.000000e+06
  store double %div24, double* %clock_dif_sec, align 8
  %28 = load double, double* %clock_dif_sec, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0), double %28)
  call void @check(i32 0)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @min(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @set(i32* %ip, float* %s1, float* %s2) #0 {
entry:
  %ip.addr = alloca i32*, align 8
  %s1.addr = alloca float*, align 8
  %s2.addr = alloca float*, align 8
  %i = alloca i32, align 4
  %i26 = alloca i32, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store float* %s1, float** %s1.addr, align 8
  store float* %s2, float** %s2.addr, align 8
  %call = call i32 @posix_memalign(i8** bitcast (float** @xx to i8**), i64 16, i64 128000) #5
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %add = add nsw i32 %1, 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %ip.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %add2 = add nsw i32 %4, 2
  %5 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %5, 1
  %idxprom4 = sext i32 %add3 to i64
  %6 = load i32*, i32** %ip.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  store i32 %add2, i32* %arrayidx5, align 4
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %8, 2
  %idxprom7 = sext i32 %add6 to i64
  %9 = load i32*, i32** %ip.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 %idxprom7
  store i32 %7, i32* %arrayidx8, align 4
  %10 = load i32, i32* %i, align 4
  %add9 = add nsw i32 %10, 3
  %11 = load i32, i32* %i, align 4
  %add10 = add nsw i32 %11, 3
  %idxprom11 = sext i32 %add10 to i64
  %12 = load i32*, i32** %ip.addr, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 %idxprom11
  store i32 %add9, i32* %arrayidx12, align 4
  %13 = load i32, i32* %i, align 4
  %add13 = add nsw i32 %13, 1
  %14 = load i32, i32* %i, align 4
  %add14 = add nsw i32 %14, 4
  %idxprom15 = sext i32 %add14 to i64
  %15 = load i32*, i32** %ip.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %15, i64 %idxprom15
  store i32 %add13, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %add17 = add nsw i32 %16, 5
  store i32 %add17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load float*, float** @a, align 16
  %call18 = call i32 @set1d(float* %17, float 1.000000e+00, i32 1)
  %18 = load float*, float** @b, align 16
  %call19 = call i32 @set1d(float* %18, float 1.000000e+00, i32 1)
  %19 = load float*, float** @c, align 16
  %call20 = call i32 @set1d(float* %19, float 1.000000e+00, i32 1)
  %20 = load float*, float** @d, align 16
  %call21 = call i32 @set1d(float* %20, float 1.000000e+00, i32 1)
  %21 = load float*, float** @e, align 16
  %call22 = call i32 @set1d(float* %21, float 1.000000e+00, i32 1)
  %22 = load [256 x float]*, [256 x float]** @aa, align 16
  %call23 = call i32 @set2d([256 x float]* %22, float 0.000000e+00, i32 -1)
  %23 = load [256 x float]*, [256 x float]** @bb, align 16
  %call24 = call i32 @set2d([256 x float]* %23, float 0.000000e+00, i32 -1)
  %24 = load [256 x float]*, [256 x float]** @cc, align 16
  %call25 = call i32 @set2d([256 x float]* %24, float 0.000000e+00, i32 -1)
  store i32 0, i32* %i26, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.34, %for.end
  %25 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %25, 32000
  br i1 %cmp28, label %for.body.29, label %for.end.35

for.body.29:                                      ; preds = %for.cond.27
  %26 = load i32, i32* %i26, align 4
  %add30 = add nsw i32 %26, 1
  %rem = srem i32 %add30, 4
  %add31 = add nsw i32 %rem, 1
  %27 = load i32, i32* %i26, align 4
  %idxprom32 = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [32000 x i32], [32000 x i32]* @indx, i32 0, i64 %idxprom32
  store i32 %add31, i32* %arrayidx33, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.29
  %28 = load i32, i32* %i26, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i26, align 4
  br label %for.cond.27

for.end.35:                                       ; preds = %for.cond.27
  %29 = load float*, float** %s1.addr, align 8
  store float 1.000000e+00, float* %29, align 4
  %30 = load float*, float** %s2.addr, align 8
  store float 2.000000e+00, float* %30, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #3

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n1 = alloca i32, align 4
  %n3 = alloca i32, align 4
  %ip = alloca i32*, align 8
  %s1 = alloca float, align 4
  %s2 = alloca float, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %n1, align 4
  store i32 1, i32* %n3, align 4
  %0 = bitcast i32** %ip to i8**
  %call = call i32 @posix_memalign(i8** %0, i64 16, i64 128000) #5
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %3) #4
  store i32 %call1, i32* @ntimes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @ntimes, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.141, i32 0, i32 0), i32 %4)
  %5 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp sgt i32 %5, 2
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %6, i64 2
  %7 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 @atoi(i8* %7) #4
  store i32 %call6, i32* @digits, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %8 = load i32*, i32** %ip, align 8
  call void @set(i32* %8, float* %s1, float* %s2)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.142, i32 0, i32 0))
  %call9 = call i32 @s341()
  %call10 = call i32 @s342()
  %call11 = call i32 @s343()
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
