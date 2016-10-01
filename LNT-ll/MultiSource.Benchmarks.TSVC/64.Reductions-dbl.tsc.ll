; ModuleID = './MultiSource.Benchmarks.TSVC/64.Reductions-dbl.tsc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalData = type { [32000 x double], [3 x i32], [20 x i8], [32000 x double], [5 x i32], [12 x i8], [32000 x double], [7 x i32], [32000 x double], [11 x i32], [20 x i8], [32000 x double], [13 x i32], [12 x i8], [256 x [256 x double]], [17 x i32], [28 x i8], [256 x [256 x double]], [19 x i32], [20 x i8], [256 x [256 x double]], [23 x i32], [256 x [256 x double]] }

@global_data = common global %struct.GlobalData zeroinitializer, align 32
@a = constant double* getelementptr inbounds (%struct.GlobalData, %struct.GlobalData* @global_data, i32 0, i32 0, i32 0), align 32
@b = constant double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 256032) to double*), align 32
@c = constant double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 512064) to double*), align 32
@d = constant double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 768096) to double*), align 32
@e = constant double* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1024160) to double*), align 32
@aa = constant [256 x double]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1280224) to [256 x double]*), align 32
@bb = constant [256 x double]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 1804608) to [256 x double]*), align 32
@cc = constant [256 x double]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 2328992) to [256 x double]*), align 32
@tt = constant [256 x double]* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.GlobalData* @global_data to i8*), i64 2853376) to [256 x double]*), align 32
@array = common global [65536 x double] zeroinitializer, align 32
@.str = private unnamed_addr constant [7 x i8] c"%.*g \0A\00", align 1
@digits = internal global i32 6, align 4
@temp = common global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"s000 \00", align 1
@X = common global [32000 x double] zeroinitializer, align 32
@Y = common global [32000 x double] zeroinitializer, align 32
@Z = common global [32000 x double] zeroinitializer, align 32
@U = common global [32000 x double] zeroinitializer, align 32
@V = common global [32000 x double] zeroinitializer, align 32
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
@.str.137 = private unnamed_addr constant [14 x i8] c"S311\09 %.2f \09\09\00", align 1
@.str.138 = private unnamed_addr constant [16 x i8] c"S31111\09 %.2f \09\09\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"S312\09 %.2f \09\09\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"S313\09 %.2f \09\09\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"S314\09 %.2f \09\09\00", align 1
@.str.142 = private unnamed_addr constant [14 x i8] c"S315\09 %.2f \09\09\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"S316\09 %.2f \09\09\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"S317\09 %.2f \09\09\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"S318\09 %.2f \09\09\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"S319\09 %.2f \09\09\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"S3110\09 %.2f \09\09\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"S13110\09 %.2f \09\09\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"S3111\09 %.2f \09\09\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"S3112\09 %.2f \09\09\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"S3113\09 %.2f \09\09\00", align 1
@xx = common global double* null, align 8
@.str.152 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@indx = common global [32000 x i32] zeroinitializer, align 32
@.str.153 = private unnamed_addr constant [31 x i8] c"Running each loop %d times...\0A\00", align 1
@.str.154 = private unnamed_addr constant [30 x i8] c"Loop \09 Time(Sec) \09 Checksum \0A\00", align 1
@x = common global [32000 x double] zeroinitializer, align 32
@temp_int = common global i32 0, align 4
@yy = common global double* null, align 8

; Function Attrs: nounwind uwtable
define i32 @set1d(double* %arr, double %value, i32 %stride) #0 {
entry:
  %arr.addr = alloca double*, align 8
  %value.addr = alloca double, align 8
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i20 = alloca i32, align 4
  store double* %arr, double** %arr.addr, align 8
  store double %value, double* %value.addr, align 8
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
  %conv = sitofp i32 %add to double
  %div = fdiv double 1.000000e+00, %conv
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %arr.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double %div, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %stride.addr, align 4
  %cmp2 = icmp eq i32 %6, -2
  br i1 %cmp2, label %if.then.4, label %if.else.19

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %i5, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %if.then.4
  %7 = load i32, i32* %i5, align 4
  %cmp7 = icmp slt i32 %7, 32000
  br i1 %cmp7, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.6
  %8 = load i32, i32* %i5, align 4
  %add10 = add nsw i32 %8, 1
  %9 = load i32, i32* %i5, align 4
  %add11 = add nsw i32 %9, 1
  %mul = mul nsw i32 %add10, %add11
  %conv12 = sitofp i32 %mul to double
  %div13 = fdiv double 1.000000e+00, %conv12
  %10 = load i32, i32* %i5, align 4
  %idxprom14 = sext i32 %10 to i64
  %11 = load double*, double** %arr.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %11, i64 %idxprom14
  store double %div13, double* %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.9
  %12 = load i32, i32* %i5, align 4
  %inc17 = add nsw i32 %12, 1
  store i32 %inc17, i32* %i5, align 4
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  br label %if.end

if.else.19:                                       ; preds = %if.else
  store i32 0, i32* %i20, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %if.else.19
  %13 = load i32, i32* %i20, align 4
  %cmp22 = icmp slt i32 %13, 32000
  br i1 %cmp22, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.21
  %14 = load double, double* %value.addr, align 8
  %15 = load i32, i32* %i20, align 4
  %idxprom25 = sext i32 %15 to i64
  %16 = load double*, double** %arr.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %16, i64 %idxprom25
  store double %14, double* %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %17 = load i32, i32* %stride.addr, align 4
  %18 = load i32, i32* %i20, align 4
  %add28 = add nsw i32 %18, %17
  store i32 %add28, i32* %i20, align 4
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  br label %if.end

if.end:                                           ; preds = %for.end.29, %for.end.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @set1ds(i32 %_n, double* %arr, double %value, i32 %stride) #0 {
entry:
  %_n.addr = alloca i32, align 4
  %arr.addr = alloca double*, align 8
  %value.addr = alloca double, align 8
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i20 = alloca i32, align 4
  store i32 %_n, i32* %_n.addr, align 4
  store double* %arr, double** %arr.addr, align 8
  store double %value, double* %value.addr, align 8
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
  %conv = sitofp i32 %add to double
  %div = fdiv double 1.000000e+00, %conv
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** %arr.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double %div, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %stride.addr, align 4
  %cmp2 = icmp eq i32 %6, -2
  br i1 %cmp2, label %if.then.4, label %if.else.19

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %i5, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %if.then.4
  %7 = load i32, i32* %i5, align 4
  %cmp7 = icmp slt i32 %7, 32000
  br i1 %cmp7, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.6
  %8 = load i32, i32* %i5, align 4
  %add10 = add nsw i32 %8, 1
  %9 = load i32, i32* %i5, align 4
  %add11 = add nsw i32 %9, 1
  %mul = mul nsw i32 %add10, %add11
  %conv12 = sitofp i32 %mul to double
  %div13 = fdiv double 1.000000e+00, %conv12
  %10 = load i32, i32* %i5, align 4
  %idxprom14 = sext i32 %10 to i64
  %11 = load double*, double** %arr.addr, align 8
  %arrayidx15 = getelementptr inbounds double, double* %11, i64 %idxprom14
  store double %div13, double* %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.9
  %12 = load i32, i32* %i5, align 4
  %inc17 = add nsw i32 %12, 1
  store i32 %inc17, i32* %i5, align 4
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  br label %if.end

if.else.19:                                       ; preds = %if.else
  store i32 0, i32* %i20, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %if.else.19
  %13 = load i32, i32* %i20, align 4
  %cmp22 = icmp slt i32 %13, 32000
  br i1 %cmp22, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.21
  %14 = load double, double* %value.addr, align 8
  %15 = load i32, i32* %i20, align 4
  %idxprom25 = sext i32 %15 to i64
  %16 = load double*, double** %arr.addr, align 8
  %arrayidx26 = getelementptr inbounds double, double* %16, i64 %idxprom25
  store double %14, double* %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %17 = load i32, i32* %stride.addr, align 4
  %18 = load i32, i32* %i20, align 4
  %add28 = add nsw i32 %18, %17
  store i32 %add28, i32* %i20, align 4
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  br label %if.end

if.end:                                           ; preds = %for.end.29, %for.end.18
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %for.end
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @set2d([256 x double]* %arr, double %value, i32 %stride) #0 {
entry:
  %arr.addr = alloca [256 x double]*, align 8
  %value.addr = alloca double, align 8
  %stride.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i13 = alloca i32, align 4
  %j18 = alloca i32, align 4
  %i38 = alloca i32, align 4
  %j43 = alloca i32, align 4
  store [256 x double]* %arr, [256 x double]** %arr.addr, align 8
  store double %value, double* %value.addr, align 8
  store i32 %stride, i32* %stride.addr, align 4
  %0 = load i32, i32* %stride.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 256
  br i1 %cmp1, label %for.body, label %for.end.9

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
  %conv = sitofp i32 %add to double
  %div = fdiv double 1.000000e+00, %conv
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load [256 x double]*, [256 x double]** %arr.addr, align 8
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* %6, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx, i32 0, i64 %idxprom
  store double %div, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  br label %if.end.58

if.else:                                          ; preds = %entry
  %9 = load i32, i32* %stride.addr, align 4
  %cmp10 = icmp eq i32 %9, -2
  br i1 %cmp10, label %if.then.12, label %if.else.37

if.then.12:                                       ; preds = %if.else
  store i32 0, i32* %i13, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.34, %if.then.12
  %10 = load i32, i32* %i13, align 4
  %cmp15 = icmp slt i32 %10, 256
  br i1 %cmp15, label %for.body.17, label %for.end.36

for.body.17:                                      ; preds = %for.cond.14
  store i32 0, i32* %j18, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.31, %for.body.17
  %11 = load i32, i32* %j18, align 4
  %cmp20 = icmp slt i32 %11, 256
  br i1 %cmp20, label %for.body.22, label %for.end.33

for.body.22:                                      ; preds = %for.cond.19
  %12 = load i32, i32* %i13, align 4
  %add23 = add nsw i32 %12, 1
  %13 = load i32, i32* %i13, align 4
  %add24 = add nsw i32 %13, 1
  %mul = mul nsw i32 %add23, %add24
  %conv25 = sitofp i32 %mul to double
  %div26 = fdiv double 1.000000e+00, %conv25
  %14 = load i32, i32* %j18, align 4
  %idxprom27 = sext i32 %14 to i64
  %15 = load i32, i32* %i13, align 4
  %idxprom28 = sext i32 %15 to i64
  %16 = load [256 x double]*, [256 x double]** %arr.addr, align 8
  %arrayidx29 = getelementptr inbounds [256 x double], [256 x double]* %16, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx29, i32 0, i64 %idxprom27
  store double %div26, double* %arrayidx30, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.22
  %17 = load i32, i32* %j18, align 4
  %inc32 = add nsw i32 %17, 1
  store i32 %inc32, i32* %j18, align 4
  br label %for.cond.19

for.end.33:                                       ; preds = %for.cond.19
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %18 = load i32, i32* %i13, align 4
  %inc35 = add nsw i32 %18, 1
  store i32 %inc35, i32* %i13, align 4
  br label %for.cond.14

for.end.36:                                       ; preds = %for.cond.14
  br label %if.end

if.else.37:                                       ; preds = %if.else
  store i32 0, i32* %i38, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.55, %if.else.37
  %19 = load i32, i32* %i38, align 4
  %cmp40 = icmp slt i32 %19, 256
  br i1 %cmp40, label %for.body.42, label %for.end.57

for.body.42:                                      ; preds = %for.cond.39
  store i32 0, i32* %j43, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.52, %for.body.42
  %20 = load i32, i32* %j43, align 4
  %cmp45 = icmp slt i32 %20, 256
  br i1 %cmp45, label %for.body.47, label %for.end.54

for.body.47:                                      ; preds = %for.cond.44
  %21 = load double, double* %value.addr, align 8
  %22 = load i32, i32* %j43, align 4
  %idxprom48 = sext i32 %22 to i64
  %23 = load i32, i32* %i38, align 4
  %idxprom49 = sext i32 %23 to i64
  %24 = load [256 x double]*, [256 x double]** %arr.addr, align 8
  %arrayidx50 = getelementptr inbounds [256 x double], [256 x double]* %24, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx50, i32 0, i64 %idxprom48
  store double %21, double* %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.47
  %25 = load i32, i32* %stride.addr, align 4
  %26 = load i32, i32* %j43, align 4
  %add53 = add nsw i32 %26, %25
  store i32 %add53, i32* %j43, align 4
  br label %for.cond.44

for.end.54:                                       ; preds = %for.cond.44
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %27 = load i32, i32* %i38, align 4
  %inc56 = add nsw i32 %27, 1
  store i32 %inc56, i32* %i38, align 4
  br label %for.cond.39

for.end.57:                                       ; preds = %for.cond.39
  br label %if.end

if.end:                                           ; preds = %for.end.57, %for.end.36
  br label %if.end.58

if.end.58:                                        ; preds = %if.end, %for.end.9
  ret i32 0
}

; Function Attrs: nounwind uwtable
define double @sum1d(double* %arr) #0 {
entry:
  %arr.addr = alloca double*, align 8
  %ret = alloca double, align 8
  %i = alloca i32, align 4
  store double* %arr, double** %arr.addr, align 8
  store double 0.000000e+00, double* %ret, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double*, double** %arr.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %ret, align 8
  %add = fadd double %4, %3
  store double %add, double* %ret, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load double, double* %ret, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define void @check(i32 %name) #0 {
entry:
  %name.addr = alloca i32, align 4
  %suma = alloca double, align 8
  %sumb = alloca double, align 8
  %sumc = alloca double, align 8
  %sumd = alloca double, align 8
  %sume = alloca double, align 8
  %i = alloca i32, align 4
  %sumaa = alloca double, align 8
  %sumbb = alloca double, align 8
  %sumcc = alloca double, align 8
  %i13 = alloca i32, align 4
  %j = alloca i32, align 4
  %sumarray = alloca double, align 8
  %i41 = alloca i32, align 4
  store i32 %name, i32* %name.addr, align 4
  store double 0.000000e+00, double* %suma, align 8
  store double 0.000000e+00, double* %sumb, align 8
  store double 0.000000e+00, double* %sumc, align 8
  store double 0.000000e+00, double* %sumd, align 8
  store double 0.000000e+00, double* %sume, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %suma, align 8
  %add = fadd double %4, %3
  store double %add, double* %suma, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load double*, double** @b, align 32
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  %7 = load double, double* %arrayidx2, align 8
  %8 = load double, double* %sumb, align 8
  %add3 = fadd double %8, %7
  store double %add3, double* %sumb, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load double*, double** @c, align 32
  %arrayidx5 = getelementptr inbounds double, double* %10, i64 %idxprom4
  %11 = load double, double* %arrayidx5, align 8
  %12 = load double, double* %sumc, align 8
  %add6 = fadd double %12, %11
  store double %add6, double* %sumc, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load double*, double** @d, align 32
  %arrayidx8 = getelementptr inbounds double, double* %14, i64 %idxprom7
  %15 = load double, double* %arrayidx8, align 8
  %16 = load double, double* %sumd, align 8
  %add9 = fadd double %16, %15
  store double %add9, double* %sumd, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load double*, double** @e, align 32
  %arrayidx11 = getelementptr inbounds double, double* %18, i64 %idxprom10
  %19 = load double, double* %arrayidx11, align 8
  %20 = load double, double* %sume, align 8
  %add12 = fadd double %20, %19
  store double %add12, double* %sume, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %sumaa, align 8
  store double 0.000000e+00, double* %sumbb, align 8
  store double 0.000000e+00, double* %sumcc, align 8
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
  %26 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx22 = getelementptr inbounds [256 x double], [256 x double]* %26, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx22, i32 0, i64 %idxprom20
  %27 = load double, double* %arrayidx23, align 8
  %28 = load double, double* %sumaa, align 8
  %add24 = fadd double %28, %27
  store double %add24, double* %sumaa, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load i32, i32* %i13, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load [256 x double]*, [256 x double]** @bb, align 32
  %arrayidx27 = getelementptr inbounds [256 x double], [256 x double]* %31, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx27, i32 0, i64 %idxprom25
  %32 = load double, double* %arrayidx28, align 8
  %33 = load double, double* %sumbb, align 8
  %add29 = fadd double %33, %32
  store double %add29, double* %sumbb, align 8
  %34 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i32, i32* %i13, align 4
  %idxprom31 = sext i32 %35 to i64
  %36 = load [256 x double]*, [256 x double]** @cc, align 32
  %arrayidx32 = getelementptr inbounds [256 x double], [256 x double]* %36, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx32, i32 0, i64 %idxprom30
  %37 = load double, double* %arrayidx33, align 8
  %38 = load double, double* %sumcc, align 8
  %add34 = fadd double %38, %37
  store double %add34, double* %sumcc, align 8
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
  store double 0.000000e+00, double* %sumarray, align 8
  store i32 0, i32* %i41, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.48, %for.end.40
  %41 = load i32, i32* %i41, align 4
  %cmp43 = icmp slt i32 %41, 65536
  br i1 %cmp43, label %for.body.44, label %for.end.50

for.body.44:                                      ; preds = %for.cond.42
  %42 = load i32, i32* %i41, align 4
  %idxprom45 = sext i32 %42 to i64
  %arrayidx46 = getelementptr inbounds [65536 x double], [65536 x double]* @array, i32 0, i64 %idxprom45
  %43 = load double, double* %arrayidx46, align 8
  %44 = load double, double* %sumarray, align 8
  %add47 = fadd double %44, %43
  store double %add47, double* %sumarray, align 8
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
  %48 = load double, double* %suma, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %47, double %48)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.50
  %49 = load i32, i32* %name.addr, align 4
  %cmp52 = icmp eq i32 %49, 2
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end
  %50 = load i32, i32* @digits, align 4
  %51 = load double, double* %sumb, align 8
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %50, double %51)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end
  %52 = load i32, i32* %name.addr, align 4
  %cmp56 = icmp eq i32 %52, 3
  br i1 %cmp56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.55
  %53 = load i32, i32* @digits, align 4
  %54 = load double, double* %sumc, align 8
  %call58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %53, double %54)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.55
  %55 = load i32, i32* %name.addr, align 4
  %cmp60 = icmp eq i32 %55, 4
  br i1 %cmp60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %56 = load i32, i32* @digits, align 4
  %57 = load double, double* %sumd, align 8
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %56, double %57)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.end.59
  %58 = load i32, i32* %name.addr, align 4
  %cmp64 = icmp eq i32 %58, 5
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.63
  %59 = load i32, i32* @digits, align 4
  %60 = load double, double* %sume, align 8
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %59, double %60)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.63
  %61 = load i32, i32* %name.addr, align 4
  %cmp68 = icmp eq i32 %61, 11
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.67
  %62 = load i32, i32* @digits, align 4
  %63 = load double, double* %sumaa, align 8
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %62, double %63)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.end.67
  %64 = load i32, i32* %name.addr, align 4
  %cmp72 = icmp eq i32 %64, 22
  br i1 %cmp72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %if.end.71
  %65 = load i32, i32* @digits, align 4
  %66 = load double, double* %sumbb, align 8
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %65, double %66)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %if.end.71
  %67 = load i32, i32* %name.addr, align 4
  %cmp76 = icmp eq i32 %67, 33
  br i1 %cmp76, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.end.75
  %68 = load i32, i32* @digits, align 4
  %69 = load double, double* %sumcc, align 8
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %68, double %69)
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.77, %if.end.75
  %70 = load i32, i32* %name.addr, align 4
  %cmp80 = icmp eq i32 %70, 0
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %71 = load i32, i32* @digits, align 4
  %72 = load double, double* %sumarray, align 8
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %71, double %72)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  %73 = load i32, i32* %name.addr, align 4
  %cmp84 = icmp eq i32 %73, 12
  br i1 %cmp84, label %if.then.85, label %if.end.88

if.then.85:                                       ; preds = %if.end.83
  %74 = load i32, i32* @digits, align 4
  %75 = load double, double* %suma, align 8
  %76 = load double, double* %sumb, align 8
  %add86 = fadd double %75, %76
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %74, double %add86)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.85, %if.end.83
  %77 = load i32, i32* %name.addr, align 4
  %cmp89 = icmp eq i32 %77, 25
  br i1 %cmp89, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %if.end.88
  %78 = load i32, i32* @digits, align 4
  %79 = load double, double* %sumb, align 8
  %80 = load double, double* %sume, align 8
  %add91 = fadd double %79, %80
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %78, double %add91)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %if.end.88
  %81 = load i32, i32* %name.addr, align 4
  %cmp94 = icmp eq i32 %81, 13
  br i1 %cmp94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.93
  %82 = load i32, i32* @digits, align 4
  %83 = load double, double* %suma, align 8
  %84 = load double, double* %sumc, align 8
  %add96 = fadd double %83, %84
  %call97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %82, double %add96)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.93
  %85 = load i32, i32* %name.addr, align 4
  %cmp99 = icmp eq i32 %85, 123
  br i1 %cmp99, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %if.end.98
  %86 = load i32, i32* @digits, align 4
  %87 = load double, double* %suma, align 8
  %88 = load double, double* %sumb, align 8
  %add101 = fadd double %87, %88
  %89 = load double, double* %sumc, align 8
  %add102 = fadd double %add101, %89
  %call103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %86, double %add102)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %if.end.98
  %90 = load i32, i32* %name.addr, align 4
  %cmp105 = icmp eq i32 %90, 1122
  br i1 %cmp105, label %if.then.106, label %if.end.109

if.then.106:                                      ; preds = %if.end.104
  %91 = load i32, i32* @digits, align 4
  %92 = load double, double* %sumaa, align 8
  %93 = load double, double* %sumbb, align 8
  %add107 = fadd double %92, %93
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %91, double %add107)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.106, %if.end.104
  %94 = load i32, i32* %name.addr, align 4
  %cmp110 = icmp eq i32 %94, 112233
  br i1 %cmp110, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %if.end.109
  %95 = load i32, i32* @digits, align 4
  %96 = load double, double* %sumaa, align 8
  %97 = load double, double* %sumbb, align 8
  %add112 = fadd double %96, %97
  %98 = load double, double* %sumcc, align 8
  %add113 = fadd double %add112, %98
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %95, double %add113)
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.111, %if.end.109
  %99 = load i32, i32* %name.addr, align 4
  %cmp116 = icmp eq i32 %99, 111
  br i1 %cmp116, label %if.then.117, label %if.end.120

if.then.117:                                      ; preds = %if.end.115
  %100 = load i32, i32* @digits, align 4
  %101 = load double, double* %sumaa, align 8
  %102 = load double, double* %suma, align 8
  %add118 = fadd double %101, %102
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %100, double %add118)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.117, %if.end.115
  %103 = load i32, i32* %name.addr, align 4
  %cmp121 = icmp eq i32 %103, -1
  br i1 %cmp121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.end.120
  %104 = load i32, i32* @digits, align 4
  %105 = load double, double* @temp, align 8
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %104, double %105)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.end.120
  %106 = load i32, i32* %name.addr, align 4
  %cmp125 = icmp eq i32 %106, -12
  br i1 %cmp125, label %if.then.126, label %if.end.129

if.then.126:                                      ; preds = %if.end.124
  %107 = load i32, i32* @digits, align 4
  %108 = load double, double* @temp, align 8
  %109 = load double, double* %sumb, align 8
  %add127 = fadd double %108, %109
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %107, double %add127)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.126, %if.end.124
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @init(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %any = alloca double, align 8
  %zero = alloca double, align 8
  %half = alloca double, align 8
  %one = alloca double, align 8
  %two = alloca double, align 8
  %small = alloca double, align 8
  %unit = alloca i32, align 4
  %frac = alloca i32, align 4
  %frac2 = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store double 0.000000e+00, double* %any, align 8
  store double 0.000000e+00, double* %zero, align 8
  store double 5.000000e-01, double* %half, align 8
  store double 1.000000e+00, double* %one, align 8
  store double 2.000000e+00, double* %two, align 8
  store double 1.000000e-06, double* %small, align 8
  store i32 1, i32* %unit, align 4
  store i32 -1, i32* %frac, align 4
  store i32 -2, i32* %frac2, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0)) #5
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
  %conv = sitofp i32 %add to double
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [32000 x double], [32000 x double]* @X, i32 0, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %add1 = add nsw i32 2, %4
  %conv2 = sitofp i32 %add1 to double
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [32000 x double], [32000 x double]* @Y, i32 0, i64 %idxprom3
  store double %conv2, double* %arrayidx4, align 8
  %6 = load i32, i32* %i, align 4
  %add5 = add nsw i32 3, %6
  %conv6 = sitofp i32 %add5 to double
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [32000 x double], [32000 x double]* @Z, i32 0, i64 %idxprom7
  store double %conv6, double* %arrayidx8, align 8
  %8 = load i32, i32* %i, align 4
  %add9 = add nsw i32 4, %8
  %conv10 = sitofp i32 %add9 to double
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [32000 x double], [32000 x double]* @U, i32 0, i64 %idxprom11
  store double %conv10, double* %arrayidx12, align 8
  %10 = load i32, i32* %i, align 4
  %add13 = add nsw i32 5, %10
  %conv14 = sitofp i32 %add13 to double
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [32000 x double], [32000 x double]* @V, i32 0, i64 %idxprom15
  store double %conv14, double* %arrayidx16, align 8
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
  %call17 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0)) #5
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.25, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %14 = load double*, double** @a, align 32
  %15 = load double, double* %one, align 8
  %16 = load i32, i32* %unit, align 4
  %call20 = call i32 @set1d(double* %14, double %15, i32 %16)
  %17 = load double*, double** @b, align 32
  %18 = load double, double* %any, align 8
  %19 = load i32, i32* %frac2, align 4
  %call21 = call i32 @set1d(double* %17, double %18, i32 %19)
  %20 = load double*, double** @c, align 32
  %21 = load double, double* %any, align 8
  %22 = load i32, i32* %frac2, align 4
  %call22 = call i32 @set1d(double* %20, double %21, i32 %22)
  %23 = load double*, double** @d, align 32
  %24 = load double, double* %any, align 8
  %25 = load i32, i32* %frac2, align 4
  %call23 = call i32 @set1d(double* %23, double %24, i32 %25)
  %26 = load double*, double** @e, align 32
  %27 = load double, double* %any, align 8
  %28 = load i32, i32* %frac2, align 4
  %call24 = call i32 @set1d(double* %26, double %27, i32 %28)
  br label %if.end.1109

if.else.25:                                       ; preds = %if.else
  %29 = load i8*, i8** %name.addr, align 8
  %call26 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)) #5
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else.31, label %if.then.28

if.then.28:                                       ; preds = %if.else.25
  %30 = load double*, double** @a, align 32
  %31 = load double, double* %one, align 8
  %32 = load i32, i32* %unit, align 4
  %call29 = call i32 @set1d(double* %30, double %31, i32 %32)
  %33 = load double*, double** @b, align 32
  %34 = load double, double* %any, align 8
  %35 = load i32, i32* %frac2, align 4
  %call30 = call i32 @set1d(double* %33, double %34, i32 %35)
  br label %if.end.1108

if.else.31:                                       ; preds = %if.else.25
  %36 = load i8*, i8** %name.addr, align 8
  %call32 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else.37, label %if.then.34

if.then.34:                                       ; preds = %if.else.31
  %37 = load double*, double** @a, align 32
  %38 = load double, double* %one, align 8
  %39 = load i32, i32* %unit, align 4
  %call35 = call i32 @set1d(double* %37, double %38, i32 %39)
  %40 = load double*, double** @b, align 32
  %41 = load double, double* %any, align 8
  %42 = load i32, i32* %frac2, align 4
  %call36 = call i32 @set1d(double* %40, double %41, i32 %42)
  br label %if.end.1107

if.else.37:                                       ; preds = %if.else.31
  %43 = load i8*, i8** %name.addr, align 8
  %call38 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0)) #5
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else.43, label %if.then.40

if.then.40:                                       ; preds = %if.else.37
  %44 = load [256 x double]*, [256 x double]** @aa, align 32
  %45 = load double, double* %any, align 8
  %46 = load i32, i32* %frac, align 4
  %call41 = call i32 @set2d([256 x double]* %44, double %45, i32 %46)
  %47 = load [256 x double]*, [256 x double]** @bb, align 32
  %48 = load double, double* %any, align 8
  %49 = load i32, i32* %frac2, align 4
  %call42 = call i32 @set2d([256 x double]* %47, double %48, i32 %49)
  br label %if.end.1106

if.else.43:                                       ; preds = %if.else.37
  %50 = load i8*, i8** %name.addr, align 8
  %call44 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)) #5
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else.51, label %if.then.46

if.then.46:                                       ; preds = %if.else.43
  %51 = load double*, double** @a, align 32
  %52 = load double, double* %one, align 8
  %53 = load i32, i32* %unit, align 4
  %call47 = call i32 @set1d(double* %51, double %52, i32 %53)
  %54 = load [256 x double]*, [256 x double]** @aa, align 32
  %55 = load double, double* %small, align 8
  %56 = load i32, i32* %unit, align 4
  %call48 = call i32 @set2d([256 x double]* %54, double %55, i32 %56)
  %57 = load [256 x double]*, [256 x double]** @bb, align 32
  %58 = load double, double* %small, align 8
  %59 = load i32, i32* %unit, align 4
  %call49 = call i32 @set2d([256 x double]* %57, double %58, i32 %59)
  %60 = load [256 x double]*, [256 x double]** @cc, align 32
  %61 = load double, double* %small, align 8
  %62 = load i32, i32* %unit, align 4
  %call50 = call i32 @set2d([256 x double]* %60, double %61, i32 %62)
  br label %if.end.1105

if.else.51:                                       ; preds = %if.else.43
  %63 = load i8*, i8** %name.addr, align 8
  %call52 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #5
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else.56, label %if.then.54

if.then.54:                                       ; preds = %if.else.51
  %64 = load double*, double** @a, align 32
  %65 = load double, double* %one, align 8
  %66 = load i32, i32* %unit, align 4
  %call55 = call i32 @set1d(double* %64, double %65, i32 %66)
  br label %if.end.1104

if.else.56:                                       ; preds = %if.else.51
  %67 = load i8*, i8** %name.addr, align 8
  %call57 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #5
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.else.62, label %if.then.59

if.then.59:                                       ; preds = %if.else.56
  %68 = load double*, double** @a, align 32
  %69 = load double, double* %one, align 8
  %70 = load i32, i32* %unit, align 4
  %call60 = call i32 @set1d(double* %68, double %69, i32 %70)
  %71 = load [256 x double]*, [256 x double]** @bb, align 32
  %72 = load double, double* %small, align 8
  %73 = load i32, i32* %unit, align 4
  %call61 = call i32 @set2d([256 x double]* %71, double %72, i32 %73)
  br label %if.end.1103

if.else.62:                                       ; preds = %if.else.56
  %74 = load i8*, i8** %name.addr, align 8
  %call63 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0)) #5
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.else.68, label %if.then.65

if.then.65:                                       ; preds = %if.else.62
  %75 = load [256 x double]*, [256 x double]** @aa, align 32
  %76 = load double, double* %one, align 8
  %77 = load i32, i32* %unit, align 4
  %call66 = call i32 @set2d([256 x double]* %75, double %76, i32 %77)
  %78 = load [256 x double]*, [256 x double]** @bb, align 32
  %79 = load double, double* %any, align 8
  %80 = load i32, i32* %frac2, align 4
  %call67 = call i32 @set2d([256 x double]* %78, double %79, i32 %80)
  br label %if.end.1102

if.else.68:                                       ; preds = %if.else.62
  %81 = load i8*, i8** %name.addr, align 8
  %call69 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #5
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else.74, label %if.then.71

if.then.71:                                       ; preds = %if.else.68
  %82 = load double*, double** @a, align 32
  %83 = load double, double* %one, align 8
  %84 = load i32, i32* %unit, align 4
  %call72 = call i32 @set1d(double* %82, double %83, i32 %84)
  %85 = load double*, double** @b, align 32
  %86 = load double, double* %any, align 8
  %87 = load i32, i32* %frac2, align 4
  %call73 = call i32 @set1d(double* %85, double %86, i32 %87)
  br label %if.end.1101

if.else.74:                                       ; preds = %if.else.68
  %88 = load i8*, i8** %name.addr, align 8
  %call75 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #5
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.else.80, label %if.then.77

if.then.77:                                       ; preds = %if.else.74
  %89 = load double*, double** @a, align 32
  %90 = load double, double* %one, align 8
  %91 = load i32, i32* %unit, align 4
  %call78 = call i32 @set1d(double* %89, double %90, i32 %91)
  %92 = load double*, double** @b, align 32
  %93 = load double, double* %any, align 8
  %94 = load i32, i32* %frac2, align 4
  %call79 = call i32 @set1d(double* %92, double %93, i32 %94)
  br label %if.end.1100

if.else.80:                                       ; preds = %if.else.74
  %95 = load i8*, i8** %name.addr, align 8
  %call81 = call i32 @strcmp(i8* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #5
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.else.89, label %if.then.83

if.then.83:                                       ; preds = %if.else.80
  %96 = load double*, double** @a, align 32
  %97 = load double, double* %zero, align 8
  %98 = load i32, i32* %unit, align 4
  %call84 = call i32 @set1d(double* %96, double %97, i32 %98)
  %99 = load double*, double** @b, align 32
  %100 = load double, double* %one, align 8
  %101 = load i32, i32* %unit, align 4
  %call85 = call i32 @set1d(double* %99, double %100, i32 %101)
  %102 = load double*, double** @c, align 32
  %103 = load double, double* %one, align 8
  %104 = load i32, i32* %unit, align 4
  %call86 = call i32 @set1d(double* %102, double %103, i32 %104)
  %105 = load double*, double** @d, align 32
  %106 = load double, double* %any, align 8
  %107 = load i32, i32* %frac, align 4
  %call87 = call i32 @set1d(double* %105, double %106, i32 %107)
  %108 = load double*, double** @e, align 32
  %109 = load double, double* %any, align 8
  %110 = load i32, i32* %frac, align 4
  %call88 = call i32 @set1d(double* %108, double %109, i32 %110)
  br label %if.end.1099

if.else.89:                                       ; preds = %if.else.80
  %111 = load i8*, i8** %name.addr, align 8
  %call90 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #5
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.else.98, label %if.then.92

if.then.92:                                       ; preds = %if.else.89
  %112 = load double*, double** @a, align 32
  %113 = load double, double* %zero, align 8
  %114 = load i32, i32* %unit, align 4
  %call93 = call i32 @set1d(double* %112, double %113, i32 %114)
  %115 = load double*, double** @b, align 32
  %116 = load double, double* %one, align 8
  %117 = load i32, i32* %unit, align 4
  %call94 = call i32 @set1d(double* %115, double %116, i32 %117)
  %118 = load double*, double** @c, align 32
  %119 = load double, double* %one, align 8
  %120 = load i32, i32* %unit, align 4
  %call95 = call i32 @set1d(double* %118, double %119, i32 %120)
  %121 = load double*, double** @d, align 32
  %122 = load double, double* %any, align 8
  %123 = load i32, i32* %frac, align 4
  %call96 = call i32 @set1d(double* %121, double %122, i32 %123)
  %124 = load double*, double** @e, align 32
  %125 = load double, double* %any, align 8
  %126 = load i32, i32* %frac, align 4
  %call97 = call i32 @set1d(double* %124, double %125, i32 %126)
  br label %if.end.1098

if.else.98:                                       ; preds = %if.else.89
  %127 = load i8*, i8** %name.addr, align 8
  %call99 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0)) #5
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.else.106, label %if.then.101

if.then.101:                                      ; preds = %if.else.98
  %128 = load double, double* %zero, align 8
  %129 = load i32, i32* %unit, align 4
  %call102 = call i32 @set1ds(i32 1024000000, double* getelementptr inbounds ([65536 x double], [65536 x double]* @array, i32 0, i32 0), double %128, i32 %129)
  %130 = load [256 x double]*, [256 x double]** @aa, align 32
  %131 = load double, double* %one, align 8
  %132 = load i32, i32* %unit, align 4
  %call103 = call i32 @set2d([256 x double]* %130, double %131, i32 %132)
  %133 = load [256 x double]*, [256 x double]** @bb, align 32
  %134 = load double, double* %half, align 8
  %135 = load i32, i32* %unit, align 4
  %call104 = call i32 @set2d([256 x double]* %133, double %134, i32 %135)
  %136 = load [256 x double]*, [256 x double]** @cc, align 32
  %137 = load double, double* %two, align 8
  %138 = load i32, i32* %unit, align 4
  %call105 = call i32 @set2d([256 x double]* %136, double %137, i32 %138)
  br label %if.end.1097

if.else.106:                                      ; preds = %if.else.98
  %139 = load i8*, i8** %name.addr, align 8
  %call107 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #5
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.else.113, label %if.then.109

if.then.109:                                      ; preds = %if.else.106
  %140 = load [256 x double]*, [256 x double]** @bb, align 32
  %141 = load double, double* %one, align 8
  %142 = load i32, i32* %unit, align 4
  %call110 = call i32 @set2d([256 x double]* %140, double %141, i32 %142)
  %143 = load double, double* %any, align 8
  %144 = load i32, i32* %frac, align 4
  %call111 = call i32 @set1ds(i32 1024000000, double* getelementptr inbounds ([65536 x double], [65536 x double]* @array, i32 0, i32 0), double %143, i32 %144)
  %145 = load [256 x double]*, [256 x double]** @cc, align 32
  %146 = load double, double* %any, align 8
  %147 = load i32, i32* %frac, align 4
  %call112 = call i32 @set2d([256 x double]* %145, double %146, i32 %147)
  br label %if.end.1096

if.else.113:                                      ; preds = %if.else.106
  %148 = load i8*, i8** %name.addr, align 8
  %call114 = call i32 @strcmp(i8* %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #5
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.else.122, label %if.then.116

if.then.116:                                      ; preds = %if.else.113
  %149 = load double*, double** @a, align 32
  %150 = load double, double* %zero, align 8
  %151 = load i32, i32* %unit, align 4
  %call117 = call i32 @set1d(double* %149, double %150, i32 %151)
  %152 = load double*, double** @b, align 32
  %153 = load double, double* %one, align 8
  %154 = load i32, i32* %unit, align 4
  %call118 = call i32 @set1d(double* %152, double %153, i32 %154)
  %155 = load double*, double** @c, align 32
  %156 = load double, double* %any, align 8
  %157 = load i32, i32* %frac, align 4
  %call119 = call i32 @set1d(double* %155, double %156, i32 %157)
  %158 = load double*, double** @d, align 32
  %159 = load double, double* %any, align 8
  %160 = load i32, i32* %frac, align 4
  %call120 = call i32 @set1d(double* %158, double %159, i32 %160)
  %161 = load double*, double** @e, align 32
  %162 = load double, double* %any, align 8
  %163 = load i32, i32* %frac, align 4
  %call121 = call i32 @set1d(double* %161, double %162, i32 %163)
  br label %if.end.1095

if.else.122:                                      ; preds = %if.else.113
  %164 = load i8*, i8** %name.addr, align 8
  %call123 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)) #5
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.else.130, label %if.then.125

if.then.125:                                      ; preds = %if.else.122
  %165 = load double*, double** @a, align 32
  %166 = load double, double* %zero, align 8
  %167 = load i32, i32* %unit, align 4
  %call126 = call i32 @set1d(double* %165, double %166, i32 %167)
  %168 = load double*, double** @b, align 32
  %169 = load double, double* %two, align 8
  %170 = load i32, i32* %unit, align 4
  %call127 = call i32 @set1d(double* %168, double %169, i32 %170)
  %171 = load double*, double** @c, align 32
  %172 = load double, double* %one, align 8
  %173 = load i32, i32* %unit, align 4
  %call128 = call i32 @set1d(double* %171, double %172, i32 %173)
  %174 = load double*, double** @d, align 32
  %175 = load double, double* %one, align 8
  %176 = load i32, i32* %unit, align 4
  %call129 = call i32 @set1d(double* %174, double %175, i32 %176)
  br label %if.end.1094

if.else.130:                                      ; preds = %if.else.122
  %177 = load i8*, i8** %name.addr, align 8
  %call131 = call i32 @strcmp(i8* %177, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)) #5
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.else.136, label %if.then.133

if.then.133:                                      ; preds = %if.else.130
  %178 = load double*, double** @a, align 32
  %179 = load double, double* %one, align 8
  %180 = load i32, i32* %unit, align 4
  %call134 = call i32 @set1d(double* %178, double %179, i32 %180)
  %181 = load double*, double** @b, align 32
  %182 = load double, double* %any, align 8
  %183 = load i32, i32* %frac2, align 4
  %call135 = call i32 @set1d(double* %181, double %182, i32 %183)
  br label %if.end.1093

if.else.136:                                      ; preds = %if.else.130
  %184 = load i8*, i8** %name.addr, align 8
  %call137 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0)) #5
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %if.else.143, label %if.then.139

if.then.139:                                      ; preds = %if.else.136
  %185 = load [256 x double]*, [256 x double]** @aa, align 32
  %186 = load double, double* %one, align 8
  %187 = load i32, i32* %unit, align 4
  %call140 = call i32 @set2d([256 x double]* %185, double %186, i32 %187)
  %188 = load double*, double** @b, align 32
  %189 = load double, double* %any, align 8
  %190 = load i32, i32* %frac, align 4
  %call141 = call i32 @set1d(double* %188, double %189, i32 %190)
  %191 = load double*, double** @c, align 32
  %192 = load double, double* %any, align 8
  %193 = load i32, i32* %frac, align 4
  %call142 = call i32 @set1d(double* %191, double %192, i32 %193)
  br label %if.end.1092

if.else.143:                                      ; preds = %if.else.136
  %194 = load i8*, i8** %name.addr, align 8
  %call144 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #5
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.else.149, label %if.then.146

if.then.146:                                      ; preds = %if.else.143
  %195 = load double, double* %one, align 8
  %196 = load i32, i32* %unit, align 4
  %call147 = call i32 @set1ds(i32 1024000000, double* getelementptr inbounds ([65536 x double], [65536 x double]* @array, i32 0, i32 0), double %195, i32 %196)
  %197 = load [256 x double]*, [256 x double]** @bb, align 32
  %198 = load double, double* %any, align 8
  %199 = load i32, i32* %frac2, align 4
  %call148 = call i32 @set2d([256 x double]* %197, double %198, i32 %199)
  br label %if.end.1091

if.else.149:                                      ; preds = %if.else.143
  %200 = load i8*, i8** %name.addr, align 8
  %call150 = call i32 @strcmp(i8* %200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)) #5
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.else.155, label %if.then.152

if.then.152:                                      ; preds = %if.else.149
  %201 = load double*, double** @a, align 32
  %202 = load double, double* %one, align 8
  %203 = load i32, i32* %unit, align 4
  %call153 = call i32 @set1d(double* %201, double %202, i32 %203)
  %204 = load double*, double** @b, align 32
  %205 = load double, double* %any, align 8
  %206 = load i32, i32* %frac2, align 4
  %call154 = call i32 @set1d(double* %204, double %205, i32 %206)
  br label %if.end.1090

if.else.155:                                      ; preds = %if.else.149
  %207 = load i8*, i8** %name.addr, align 8
  %call156 = call i32 @strcmp(i8* %207, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0)) #5
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.else.164, label %if.then.158

if.then.158:                                      ; preds = %if.else.155
  %208 = load double*, double** @a, align 32
  %209 = load double, double* %one, align 8
  %210 = load i32, i32* %unit, align 4
  %call159 = call i32 @set1d(double* %208, double %209, i32 %210)
  %211 = load double*, double** @b, align 32
  %212 = load double, double* %zero, align 8
  %213 = load i32, i32* %unit, align 4
  %call160 = call i32 @set1d(double* %211, double %212, i32 %213)
  %214 = load double*, double** @c, align 32
  %215 = load double, double* %any, align 8
  %216 = load i32, i32* %frac, align 4
  %call161 = call i32 @set1d(double* %214, double %215, i32 %216)
  %217 = load double*, double** @d, align 32
  %218 = load double, double* %any, align 8
  %219 = load i32, i32* %frac, align 4
  %call162 = call i32 @set1d(double* %217, double %218, i32 %219)
  %220 = load double*, double** @e, align 32
  %221 = load double, double* %any, align 8
  %222 = load i32, i32* %frac, align 4
  %call163 = call i32 @set1d(double* %220, double %221, i32 %222)
  br label %if.end.1089

if.else.164:                                      ; preds = %if.else.155
  %223 = load i8*, i8** %name.addr, align 8
  %call165 = call i32 @strcmp(i8* %223, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0)) #5
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.else.176, label %if.then.167

if.then.167:                                      ; preds = %if.else.164
  %224 = load double*, double** @a, align 32
  %225 = load double, double* %one, align 8
  %226 = load i32, i32* %unit, align 4
  %call168 = call i32 @set1d(double* %224, double %225, i32 %226)
  %227 = load double*, double** @b, align 32
  %arrayidx169 = getelementptr inbounds double, double* %227, i64 0
  %228 = load double, double* %one, align 8
  %call170 = call i32 @set1ds(i32 16000, double* %arrayidx169, double %228, i32 2)
  %229 = load double*, double** @b, align 32
  %arrayidx171 = getelementptr inbounds double, double* %229, i64 1
  %230 = load double, double* %one, align 8
  %sub = fsub double -0.000000e+00, %230
  %call172 = call i32 @set1ds(i32 16000, double* %arrayidx171, double %sub, i32 2)
  %231 = load double*, double** @c, align 32
  %232 = load double, double* %one, align 8
  %233 = load i32, i32* %unit, align 4
  %call173 = call i32 @set1d(double* %231, double %232, i32 %233)
  %234 = load double*, double** @d, align 32
  %235 = load double, double* %any, align 8
  %236 = load i32, i32* %frac, align 4
  %call174 = call i32 @set1d(double* %234, double %235, i32 %236)
  %237 = load double*, double** @e, align 32
  %238 = load double, double* %any, align 8
  %239 = load i32, i32* %frac, align 4
  %call175 = call i32 @set1d(double* %237, double %238, i32 %239)
  br label %if.end.1088

if.else.176:                                      ; preds = %if.else.164
  %240 = load i8*, i8** %name.addr, align 8
  %call177 = call i32 @strcmp(i8* %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #5
  %tobool178 = icmp ne i32 %call177, 0
  br i1 %tobool178, label %if.else.183, label %if.then.179

if.then.179:                                      ; preds = %if.else.176
  %241 = load double*, double** @a, align 32
  %242 = load double, double* %one, align 8
  %243 = load i32, i32* %unit, align 4
  %call180 = call i32 @set1d(double* %241, double %242, i32 %243)
  %244 = load double*, double** @b, align 32
  %245 = load double, double* %any, align 8
  %246 = load i32, i32* %frac, align 4
  %call181 = call i32 @set1d(double* %244, double %245, i32 %246)
  %247 = load double*, double** @c, align 32
  %248 = load double, double* %any, align 8
  %249 = load i32, i32* %frac, align 4
  %call182 = call i32 @set1d(double* %247, double %248, i32 %249)
  br label %if.end.1087

if.else.183:                                      ; preds = %if.else.176
  %250 = load i8*, i8** %name.addr, align 8
  %call184 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)) #5
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.else.189, label %if.then.186

if.then.186:                                      ; preds = %if.else.183
  %251 = load double*, double** @a, align 32
  %252 = load double, double* %one, align 8
  %253 = load i32, i32* %unit, align 4
  %call187 = call i32 @set1d(double* %251, double %252, i32 %253)
  %254 = load double*, double** @b, align 32
  %255 = load double, double* %any, align 8
  %256 = load i32, i32* %frac2, align 4
  %call188 = call i32 @set1d(double* %254, double %255, i32 %256)
  br label %if.end.1086

if.else.189:                                      ; preds = %if.else.183
  %257 = load i8*, i8** %name.addr, align 8
  %call190 = call i32 @strcmp(i8* %257, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #5
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.else.195, label %if.then.192

if.then.192:                                      ; preds = %if.else.189
  %258 = load double*, double** @a, align 32
  %259 = load double, double* %one, align 8
  %260 = load i32, i32* %unit, align 4
  %call193 = call i32 @set1d(double* %258, double %259, i32 %260)
  %261 = load double*, double** @b, align 32
  %262 = load double, double* %any, align 8
  %263 = load i32, i32* %frac2, align 4
  %call194 = call i32 @set1d(double* %261, double %262, i32 %263)
  br label %if.end.1085

if.else.195:                                      ; preds = %if.else.189
  %264 = load i8*, i8** %name.addr, align 8
  %call196 = call i32 @strcmp(i8* %264, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0)) #5
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.else.201, label %if.then.198

if.then.198:                                      ; preds = %if.else.195
  %265 = load double*, double** @a, align 32
  %266 = load double, double* %one, align 8
  %267 = load i32, i32* %unit, align 4
  %call199 = call i32 @set1d(double* %265, double %266, i32 %267)
  %268 = load double*, double** @b, align 32
  %269 = load double, double* %any, align 8
  %270 = load i32, i32* %frac2, align 4
  %call200 = call i32 @set1d(double* %268, double %269, i32 %270)
  br label %if.end.1084

if.else.201:                                      ; preds = %if.else.195
  %271 = load i8*, i8** %name.addr, align 8
  %call202 = call i32 @strcmp(i8* %271, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0)) #5
  %tobool203 = icmp ne i32 %call202, 0
  br i1 %tobool203, label %if.else.207, label %if.then.204

if.then.204:                                      ; preds = %if.else.201
  %272 = load double*, double** @a, align 32
  %273 = load double, double* %one, align 8
  %274 = load i32, i32* %unit, align 4
  %call205 = call i32 @set1d(double* %272, double %273, i32 %274)
  %275 = load double*, double** @b, align 32
  %276 = load double, double* %any, align 8
  %277 = load i32, i32* %frac2, align 4
  %call206 = call i32 @set1d(double* %275, double %276, i32 %277)
  br label %if.end.1083

if.else.207:                                      ; preds = %if.else.201
  %278 = load i8*, i8** %name.addr, align 8
  %call208 = call i32 @strcmp(i8* %278, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #5
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %if.else.213, label %if.then.210

if.then.210:                                      ; preds = %if.else.207
  %279 = load double*, double** @a, align 32
  %280 = load double, double* %one, align 8
  %281 = load i32, i32* %unit, align 4
  %call211 = call i32 @set1d(double* %279, double %280, i32 %281)
  %282 = load double*, double** @b, align 32
  %283 = load double, double* %any, align 8
  %284 = load i32, i32* %frac2, align 4
  %call212 = call i32 @set1d(double* %282, double %283, i32 %284)
  br label %if.end.1082

if.else.213:                                      ; preds = %if.else.207
  %285 = load i8*, i8** %name.addr, align 8
  %call214 = call i32 @strcmp(i8* %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0)) #5
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.else.220, label %if.then.216

if.then.216:                                      ; preds = %if.else.213
  %286 = load double*, double** @a, align 32
  %287 = load double, double* %one, align 8
  %288 = load i32, i32* %unit, align 4
  %call217 = call i32 @set1d(double* %286, double %287, i32 %288)
  %289 = load double*, double** @b, align 32
  %290 = load double, double* %any, align 8
  %291 = load i32, i32* %frac, align 4
  %call218 = call i32 @set1d(double* %289, double %290, i32 %291)
  %292 = load double*, double** @c, align 32
  %293 = load double, double* %any, align 8
  %294 = load i32, i32* %frac, align 4
  %call219 = call i32 @set1d(double* %292, double %293, i32 %294)
  br label %if.end.1081

if.else.220:                                      ; preds = %if.else.213
  %295 = load i8*, i8** %name.addr, align 8
  %call221 = call i32 @strcmp(i8* %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)) #5
  %tobool222 = icmp ne i32 %call221, 0
  br i1 %tobool222, label %if.else.229, label %if.then.223

if.then.223:                                      ; preds = %if.else.220
  %296 = load double*, double** @a, align 32
  %297 = load double, double* %zero, align 8
  %298 = load i32, i32* %unit, align 4
  %call224 = call i32 @set1d(double* %296, double %297, i32 %298)
  %299 = load double*, double** @b, align 32
  %300 = load double, double* %one, align 8
  %301 = load i32, i32* %unit, align 4
  %call225 = call i32 @set1d(double* %299, double %300, i32 %301)
  %302 = load double*, double** @c, align 32
  %303 = load double, double* %any, align 8
  %304 = load i32, i32* %frac, align 4
  %call226 = call i32 @set1d(double* %302, double %303, i32 %304)
  %305 = load double*, double** @d, align 32
  %306 = load double, double* %any, align 8
  %307 = load i32, i32* %frac, align 4
  %call227 = call i32 @set1d(double* %305, double %306, i32 %307)
  %308 = load double*, double** @e, align 32
  %309 = load double, double* %any, align 8
  %310 = load i32, i32* %frac, align 4
  %call228 = call i32 @set1d(double* %308, double %309, i32 %310)
  br label %if.end.1080

if.else.229:                                      ; preds = %if.else.220
  %311 = load i8*, i8** %name.addr, align 8
  %call230 = call i32 @strcmp(i8* %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)) #5
  %tobool231 = icmp ne i32 %call230, 0
  br i1 %tobool231, label %if.else.237, label %if.then.232

if.then.232:                                      ; preds = %if.else.229
  %312 = load double*, double** @a, align 32
  %313 = load double, double* %any, align 8
  %314 = load i32, i32* %frac, align 4
  %call233 = call i32 @set1d(double* %312, double %313, i32 %314)
  %315 = load double*, double** @b, align 32
  %316 = load double, double* %one, align 8
  %317 = load i32, i32* %unit, align 4
  %call234 = call i32 @set1d(double* %315, double %316, i32 %317)
  %318 = load double*, double** @c, align 32
  %319 = load double, double* %one, align 8
  %320 = load i32, i32* %unit, align 4
  %call235 = call i32 @set1d(double* %318, double %319, i32 %320)
  %321 = load double*, double** @d, align 32
  %322 = load double, double* %any, align 8
  %323 = load i32, i32* %frac, align 4
  %call236 = call i32 @set1d(double* %321, double %322, i32 %323)
  br label %if.end.1079

if.else.237:                                      ; preds = %if.else.229
  %324 = load i8*, i8** %name.addr, align 8
  %call238 = call i32 @strcmp(i8* %324, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #5
  %tobool239 = icmp ne i32 %call238, 0
  br i1 %tobool239, label %if.else.245, label %if.then.240

if.then.240:                                      ; preds = %if.else.237
  %325 = load double*, double** @a, align 32
  %326 = load double, double* %one, align 8
  %327 = load i32, i32* %unit, align 4
  %call241 = call i32 @set1d(double* %325, double %326, i32 %327)
  %328 = load double*, double** @b, align 32
  %329 = load double, double* %any, align 8
  %330 = load i32, i32* %frac, align 4
  %call242 = call i32 @set1d(double* %328, double %329, i32 %330)
  %331 = load double*, double** @c, align 32
  %332 = load double, double* %any, align 8
  %333 = load i32, i32* %frac, align 4
  %call243 = call i32 @set1d(double* %331, double %332, i32 %333)
  %334 = load double*, double** @d, align 32
  %335 = load double, double* %any, align 8
  %336 = load i32, i32* %frac, align 4
  %call244 = call i32 @set1d(double* %334, double %335, i32 %336)
  br label %if.end.1078

if.else.245:                                      ; preds = %if.else.237
  %337 = load i8*, i8** %name.addr, align 8
  %call246 = call i32 @strcmp(i8* %337, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #5
  %tobool247 = icmp ne i32 %call246, 0
  br i1 %tobool247, label %if.else.252, label %if.then.248

if.then.248:                                      ; preds = %if.else.245
  %338 = load double*, double** @a, align 32
  %339 = load double, double* %zero, align 8
  %340 = load i32, i32* %unit, align 4
  %call249 = call i32 @set1d(double* %338, double %339, i32 %340)
  %341 = load double*, double** @b, align 32
  %342 = load double, double* %one, align 8
  %343 = load i32, i32* %unit, align 4
  %call250 = call i32 @set1d(double* %341, double %342, i32 %343)
  %344 = load double*, double** @c, align 32
  %345 = load double, double* %one, align 8
  %346 = load i32, i32* %unit, align 4
  %call251 = call i32 @set1d(double* %344, double %345, i32 %346)
  br label %if.end.1077

if.else.252:                                      ; preds = %if.else.245
  %347 = load i8*, i8** %name.addr, align 8
  %call253 = call i32 @strcmp(i8* %347, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #5
  %tobool254 = icmp ne i32 %call253, 0
  br i1 %tobool254, label %if.else.258, label %if.then.255

if.then.255:                                      ; preds = %if.else.252
  %348 = load [256 x double]*, [256 x double]** @aa, align 32
  %349 = load double, double* %one, align 8
  %350 = load i32, i32* %unit, align 4
  %call256 = call i32 @set2d([256 x double]* %348, double %349, i32 %350)
  %351 = load [256 x double]*, [256 x double]** @bb, align 32
  %352 = load double, double* %any, align 8
  %353 = load i32, i32* %frac2, align 4
  %call257 = call i32 @set2d([256 x double]* %351, double %352, i32 %353)
  br label %if.end.1076

if.else.258:                                      ; preds = %if.else.252
  %354 = load i8*, i8** %name.addr, align 8
  %call259 = call i32 @strcmp(i8* %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0)) #5
  %tobool260 = icmp ne i32 %call259, 0
  br i1 %tobool260, label %if.else.264, label %if.then.261

if.then.261:                                      ; preds = %if.else.258
  %355 = load [256 x double]*, [256 x double]** @aa, align 32
  %356 = load double, double* %one, align 8
  %357 = load i32, i32* %unit, align 4
  %call262 = call i32 @set2d([256 x double]* %355, double %356, i32 %357)
  %358 = load [256 x double]*, [256 x double]** @bb, align 32
  %359 = load double, double* %zero, align 8
  %360 = load i32, i32* %unit, align 4
  %call263 = call i32 @set2d([256 x double]* %358, double %359, i32 %360)
  br label %if.end.1075

if.else.264:                                      ; preds = %if.else.258
  %361 = load i8*, i8** %name.addr, align 8
  %call265 = call i32 @strcmp(i8* %361, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #5
  %tobool266 = icmp ne i32 %call265, 0
  br i1 %tobool266, label %if.else.271, label %if.then.267

if.then.267:                                      ; preds = %if.else.264
  %362 = load [256 x double]*, [256 x double]** @aa, align 32
  %363 = load double, double* %any, align 8
  %364 = load i32, i32* %frac, align 4
  %call268 = call i32 @set2d([256 x double]* %362, double %363, i32 %364)
  %365 = load [256 x double]*, [256 x double]** @bb, align 32
  %366 = load double, double* %any, align 8
  %367 = load i32, i32* %frac, align 4
  %call269 = call i32 @set2d([256 x double]* %365, double %366, i32 %367)
  %368 = load [256 x double]*, [256 x double]** @cc, align 32
  %369 = load double, double* %any, align 8
  %370 = load i32, i32* %frac, align 4
  %call270 = call i32 @set2d([256 x double]* %368, double %369, i32 %370)
  br label %if.end.1074

if.else.271:                                      ; preds = %if.else.264
  %371 = load i8*, i8** %name.addr, align 8
  %call272 = call i32 @strcmp(i8* %371, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)) #5
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.else.278, label %if.then.274

if.then.274:                                      ; preds = %if.else.271
  %372 = load [256 x double]*, [256 x double]** @aa, align 32
  %373 = load double, double* %one, align 8
  %374 = load i32, i32* %unit, align 4
  %call275 = call i32 @set2d([256 x double]* %372, double %373, i32 %374)
  %375 = load [256 x double]*, [256 x double]** @bb, align 32
  %376 = load double, double* %any, align 8
  %377 = load i32, i32* %frac, align 4
  %call276 = call i32 @set2d([256 x double]* %375, double %376, i32 %377)
  %378 = load [256 x double]*, [256 x double]** @cc, align 32
  %379 = load double, double* %any, align 8
  %380 = load i32, i32* %frac, align 4
  %call277 = call i32 @set2d([256 x double]* %378, double %379, i32 %380)
  br label %if.end.1073

if.else.278:                                      ; preds = %if.else.271
  %381 = load i8*, i8** %name.addr, align 8
  %call279 = call i32 @strcmp(i8* %381, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0)) #5
  %tobool280 = icmp ne i32 %call279, 0
  br i1 %tobool280, label %if.else.287, label %if.then.281

if.then.281:                                      ; preds = %if.else.278
  %382 = load double*, double** @a, align 32
  %383 = load double, double* %one, align 8
  %384 = load i32, i32* %unit, align 4
  %call282 = call i32 @set1d(double* %382, double %383, i32 %384)
  %385 = load double*, double** @b, align 32
  %386 = load double, double* %any, align 8
  %387 = load i32, i32* %frac, align 4
  %call283 = call i32 @set1d(double* %385, double %386, i32 %387)
  %388 = load double*, double** @c, align 32
  %389 = load double, double* %any, align 8
  %390 = load i32, i32* %frac, align 4
  %call284 = call i32 @set1d(double* %388, double %389, i32 %390)
  %391 = load [256 x double]*, [256 x double]** @aa, align 32
  %392 = load double, double* %one, align 8
  %393 = load i32, i32* %unit, align 4
  %call285 = call i32 @set2d([256 x double]* %391, double %392, i32 %393)
  %394 = load [256 x double]*, [256 x double]** @bb, align 32
  %395 = load double, double* %any, align 8
  %396 = load i32, i32* %frac2, align 4
  %call286 = call i32 @set2d([256 x double]* %394, double %395, i32 %396)
  br label %if.end.1072

if.else.287:                                      ; preds = %if.else.278
  %397 = load i8*, i8** %name.addr, align 8
  %call288 = call i32 @strcmp(i8* %397, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #5
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.else.295, label %if.then.290

if.then.290:                                      ; preds = %if.else.287
  %398 = load double*, double** @a, align 32
  %399 = load double, double* %one, align 8
  %400 = load i32, i32* %unit, align 4
  %call291 = call i32 @set1d(double* %398, double %399, i32 %400)
  %401 = load double*, double** @b, align 32
  %402 = load double, double* %one, align 8
  %403 = load i32, i32* %unit, align 4
  %call292 = call i32 @set1d(double* %401, double %402, i32 %403)
  %404 = load double*, double** @c, align 32
  %405 = load double, double* %one, align 8
  %406 = load i32, i32* %unit, align 4
  %call293 = call i32 @set1d(double* %404, double %405, i32 %406)
  %407 = load double*, double** @d, align 32
  %408 = load double, double* %one, align 8
  %409 = load i32, i32* %unit, align 4
  %call294 = call i32 @set1d(double* %407, double %408, i32 %409)
  br label %if.end.1071

if.else.295:                                      ; preds = %if.else.287
  %410 = load i8*, i8** %name.addr, align 8
  %call296 = call i32 @strcmp(i8* %410, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)) #5
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.else.303, label %if.then.298

if.then.298:                                      ; preds = %if.else.295
  %411 = load double*, double** @a, align 32
  %412 = load double, double* %small, align 8
  %413 = load i32, i32* %unit, align 4
  %call299 = call i32 @set1d(double* %411, double %412, i32 %413)
  %414 = load double*, double** @b, align 32
  %415 = load double, double* %small, align 8
  %416 = load i32, i32* %unit, align 4
  %call300 = call i32 @set1d(double* %414, double %415, i32 %416)
  %417 = load double*, double** @c, align 32
  %418 = load double, double* %small, align 8
  %419 = load i32, i32* %unit, align 4
  %call301 = call i32 @set1d(double* %417, double %418, i32 %419)
  %420 = load double*, double** @d, align 32
  %421 = load double, double* %small, align 8
  %422 = load i32, i32* %unit, align 4
  %call302 = call i32 @set1d(double* %420, double %421, i32 %422)
  br label %if.end.1070

if.else.303:                                      ; preds = %if.else.295
  %423 = load i8*, i8** %name.addr, align 8
  %call304 = call i32 @strcmp(i8* %423, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0)) #5
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %if.else.312, label %if.then.306

if.then.306:                                      ; preds = %if.else.303
  %424 = load double*, double** @a, align 32
  %425 = load double, double* %zero, align 8
  %426 = load i32, i32* %unit, align 4
  %call307 = call i32 @set1d(double* %424, double %425, i32 %426)
  %427 = load double*, double** @b, align 32
  %428 = load double, double* %one, align 8
  %429 = load i32, i32* %unit, align 4
  %call308 = call i32 @set1d(double* %427, double %428, i32 %429)
  %430 = load double*, double** @c, align 32
  %431 = load double, double* %any, align 8
  %432 = load i32, i32* %frac, align 4
  %call309 = call i32 @set1d(double* %430, double %431, i32 %432)
  %433 = load double*, double** @d, align 32
  %434 = load double, double* %any, align 8
  %435 = load i32, i32* %frac, align 4
  %call310 = call i32 @set1d(double* %433, double %434, i32 %435)
  %436 = load double*, double** @e, align 32
  %437 = load double, double* %any, align 8
  %438 = load i32, i32* %frac, align 4
  %call311 = call i32 @set1d(double* %436, double %437, i32 %438)
  br label %if.end.1069

if.else.312:                                      ; preds = %if.else.303
  %439 = load i8*, i8** %name.addr, align 8
  %call313 = call i32 @strcmp(i8* %439, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0)) #5
  %tobool314 = icmp ne i32 %call313, 0
  br i1 %tobool314, label %if.else.320, label %if.then.315

if.then.315:                                      ; preds = %if.else.312
  %440 = load double*, double** @a, align 32
  %441 = load double, double* %zero, align 8
  %442 = load i32, i32* %unit, align 4
  %call316 = call i32 @set1d(double* %440, double %441, i32 %442)
  %443 = load double*, double** @b, align 32
  %444 = load double, double* %one, align 8
  %445 = load i32, i32* %unit, align 4
  %call317 = call i32 @set1d(double* %443, double %444, i32 %445)
  %446 = load double*, double** @c, align 32
  %447 = load double, double* %small, align 8
  %448 = load i32, i32* %unit, align 4
  %call318 = call i32 @set1d(double* %446, double %447, i32 %448)
  %449 = load double*, double** @d, align 32
  %450 = load double, double* %small, align 8
  %451 = load i32, i32* %unit, align 4
  %call319 = call i32 @set1d(double* %449, double %450, i32 %451)
  br label %if.end.1068

if.else.320:                                      ; preds = %if.else.312
  %452 = load i8*, i8** %name.addr, align 8
  %call321 = call i32 @strcmp(i8* %452, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0)) #5
  %tobool322 = icmp ne i32 %call321, 0
  br i1 %tobool322, label %if.else.329, label %if.then.323

if.then.323:                                      ; preds = %if.else.320
  %453 = load double*, double** @a, align 32
  %454 = load double, double* %zero, align 8
  %455 = load i32, i32* %unit, align 4
  %call324 = call i32 @set1d(double* %453, double %454, i32 %455)
  %456 = load double*, double** @b, align 32
  %457 = load double, double* %one, align 8
  %458 = load i32, i32* %unit, align 4
  %call325 = call i32 @set1d(double* %456, double %457, i32 %458)
  %459 = load double*, double** @c, align 32
  %460 = load double, double* %any, align 8
  %461 = load i32, i32* %frac, align 4
  %call326 = call i32 @set1d(double* %459, double %460, i32 %461)
  %462 = load double*, double** @d, align 32
  %463 = load double, double* %any, align 8
  %464 = load i32, i32* %frac, align 4
  %call327 = call i32 @set1d(double* %462, double %463, i32 %464)
  %465 = load double*, double** @e, align 32
  %466 = load double, double* %any, align 8
  %467 = load i32, i32* %frac, align 4
  %call328 = call i32 @set1d(double* %465, double %466, i32 %467)
  br label %if.end.1067

if.else.329:                                      ; preds = %if.else.320
  %468 = load i8*, i8** %name.addr, align 8
  %call330 = call i32 @strcmp(i8* %468, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0)) #5
  %tobool331 = icmp ne i32 %call330, 0
  br i1 %tobool331, label %if.else.336, label %if.then.332

if.then.332:                                      ; preds = %if.else.329
  %469 = load double*, double** @a, align 32
  %470 = load double, double* %zero, align 8
  %471 = load i32, i32* %unit, align 4
  %call333 = call i32 @set1d(double* %469, double %470, i32 %471)
  %472 = load double*, double** @b, align 32
  %473 = load double, double* %one, align 8
  %474 = load i32, i32* %unit, align 4
  %call334 = call i32 @set1d(double* %472, double %473, i32 %474)
  %475 = load double*, double** @c, align 32
  %476 = load double, double* %one, align 8
  %477 = load i32, i32* %unit, align 4
  %call335 = call i32 @set1d(double* %475, double %476, i32 %477)
  br label %if.end.1066

if.else.336:                                      ; preds = %if.else.329
  %478 = load i8*, i8** %name.addr, align 8
  %call337 = call i32 @strcmp(i8* %478, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0)) #5
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.else.344, label %if.then.339

if.then.339:                                      ; preds = %if.else.336
  %479 = load double*, double** @a, align 32
  %480 = load double, double* %one, align 8
  %481 = load i32, i32* %unit, align 4
  %call340 = call i32 @set1d(double* %479, double %480, i32 %481)
  %482 = load double*, double** @b, align 32
  %483 = load double, double* %small, align 8
  %484 = load i32, i32* %unit, align 4
  %call341 = call i32 @set1d(double* %482, double %483, i32 %484)
  %485 = load double*, double** @c, align 32
  %486 = load double, double* %one, align 8
  %487 = load i32, i32* %unit, align 4
  %call342 = call i32 @set1d(double* %485, double %486, i32 %487)
  %488 = load double*, double** @d, align 32
  %489 = load double, double* %any, align 8
  %490 = load i32, i32* %frac, align 4
  %call343 = call i32 @set1d(double* %488, double %489, i32 %490)
  br label %if.end.1065

if.else.344:                                      ; preds = %if.else.336
  %491 = load i8*, i8** %name.addr, align 8
  %call345 = call i32 @strcmp(i8* %491, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0)) #5
  %tobool346 = icmp ne i32 %call345, 0
  br i1 %tobool346, label %if.else.350, label %if.then.347

if.then.347:                                      ; preds = %if.else.344
  %492 = load double*, double** @a, align 32
  %493 = load double, double* %zero, align 8
  %494 = load i32, i32* %unit, align 4
  %call348 = call i32 @set1d(double* %492, double %493, i32 %494)
  %495 = load double*, double** @b, align 32
  %496 = load double, double* %one, align 8
  %497 = load i32, i32* %unit, align 4
  %call349 = call i32 @set1d(double* %495, double %496, i32 %497)
  br label %if.end.1064

if.else.350:                                      ; preds = %if.else.344
  %498 = load i8*, i8** %name.addr, align 8
  %call351 = call i32 @strcmp(i8* %498, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0)) #5
  %tobool352 = icmp ne i32 %call351, 0
  br i1 %tobool352, label %if.else.356, label %if.then.353

if.then.353:                                      ; preds = %if.else.350
  %499 = load double*, double** @a, align 32
  %500 = load double, double* %zero, align 8
  %501 = load i32, i32* %unit, align 4
  %call354 = call i32 @set1d(double* %499, double %500, i32 %501)
  %502 = load double*, double** @b, align 32
  %503 = load double, double* %one, align 8
  %504 = load i32, i32* %unit, align 4
  %call355 = call i32 @set1d(double* %502, double %503, i32 %504)
  br label %if.end.1063

if.else.356:                                      ; preds = %if.else.350
  %505 = load i8*, i8** %name.addr, align 8
  %call357 = call i32 @strcmp(i8* %505, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0)) #5
  %tobool358 = icmp ne i32 %call357, 0
  br i1 %tobool358, label %if.else.363, label %if.then.359

if.then.359:                                      ; preds = %if.else.356
  %506 = load double*, double** @a, align 32
  %507 = load double, double* %one, align 8
  %508 = load i32, i32* %unit, align 4
  %call360 = call i32 @set1d(double* %506, double %507, i32 %508)
  %509 = load [256 x double]*, [256 x double]** @aa, align 32
  %510 = load double, double* %two, align 8
  %511 = load i32, i32* %unit, align 4
  %call361 = call i32 @set2d([256 x double]* %509, double %510, i32 %511)
  %512 = load [256 x double]*, [256 x double]** @bb, align 32
  %513 = load double, double* %one, align 8
  %514 = load i32, i32* %unit, align 4
  %call362 = call i32 @set2d([256 x double]* %512, double %513, i32 %514)
  br label %if.end.1062

if.else.363:                                      ; preds = %if.else.356
  %515 = load i8*, i8** %name.addr, align 8
  %call364 = call i32 @strcmp(i8* %515, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0)) #5
  %tobool365 = icmp ne i32 %call364, 0
  br i1 %tobool365, label %if.else.370, label %if.then.366

if.then.366:                                      ; preds = %if.else.363
  %516 = load double*, double** @a, align 32
  %517 = load double, double* %one, align 8
  %518 = load i32, i32* %unit, align 4
  %call367 = call i32 @set1d(double* %516, double %517, i32 %518)
  %519 = load [256 x double]*, [256 x double]** @aa, align 32
  %520 = load double, double* %two, align 8
  %521 = load i32, i32* %unit, align 4
  %call368 = call i32 @set2d([256 x double]* %519, double %520, i32 %521)
  %522 = load [256 x double]*, [256 x double]** @bb, align 32
  %523 = load double, double* %one, align 8
  %524 = load i32, i32* %unit, align 4
  %call369 = call i32 @set2d([256 x double]* %522, double %523, i32 %524)
  br label %if.end.1061

if.else.370:                                      ; preds = %if.else.363
  %525 = load i8*, i8** %name.addr, align 8
  %call371 = call i32 @strcmp(i8* %525, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0)) #5
  %tobool372 = icmp ne i32 %call371, 0
  br i1 %tobool372, label %if.else.380, label %if.then.373

if.then.373:                                      ; preds = %if.else.370
  %526 = load double*, double** @a, align 32
  %527 = load double, double* %any, align 8
  %528 = load i32, i32* %frac, align 4
  %call374 = call i32 @set1d(double* %526, double %527, i32 %528)
  %529 = load double*, double** @b, align 32
  %530 = load double, double* %zero, align 8
  %531 = load i32, i32* %unit, align 4
  %call375 = call i32 @set1d(double* %529, double %530, i32 %531)
  %532 = load double*, double** @c, align 32
  %533 = load double, double* %any, align 8
  %534 = load i32, i32* %frac, align 4
  %call376 = call i32 @set1d(double* %532, double %533, i32 %534)
  %535 = load double*, double** @d, align 32
  %536 = load double, double* %any, align 8
  %537 = load i32, i32* %frac, align 4
  %call377 = call i32 @set1d(double* %535, double %536, i32 %537)
  %538 = load double*, double** @e, align 32
  %539 = load double, double* %zero, align 8
  %540 = load i32, i32* %unit, align 4
  %call378 = call i32 @set1d(double* %538, double %539, i32 %540)
  %541 = load [256 x double]*, [256 x double]** @aa, align 32
  %542 = load double, double* %any, align 8
  %543 = load i32, i32* %frac, align 4
  %call379 = call i32 @set2d([256 x double]* %541, double %542, i32 %543)
  br label %if.end.1060

if.else.380:                                      ; preds = %if.else.370
  %544 = load i8*, i8** %name.addr, align 8
  %call381 = call i32 @strcmp(i8* %544, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0)) #5
  %tobool382 = icmp ne i32 %call381, 0
  br i1 %tobool382, label %if.else.388, label %if.then.383

if.then.383:                                      ; preds = %if.else.380
  %545 = load double*, double** @a, align 32
  %546 = load double, double* %one, align 8
  %547 = load i32, i32* %unit, align 4
  %call384 = call i32 @set1d(double* %545, double %546, i32 %547)
  %548 = load double*, double** @b, align 32
  %549 = load double, double* %any, align 8
  %550 = load i32, i32* %frac2, align 4
  %call385 = call i32 @set1d(double* %548, double %549, i32 %550)
  %551 = load double*, double** @c, align 32
  %552 = load double, double* %any, align 8
  %553 = load i32, i32* %frac2, align 4
  %call386 = call i32 @set1d(double* %551, double %552, i32 %553)
  %554 = load double*, double** @d, align 32
  %555 = load double, double* %one, align 8
  %556 = load i32, i32* %unit, align 4
  %call387 = call i32 @set1d(double* %554, double %555, i32 %556)
  br label %if.end.1059

if.else.388:                                      ; preds = %if.else.380
  %557 = load i8*, i8** %name.addr, align 8
  %call389 = call i32 @strcmp(i8* %557, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0)) #5
  %tobool390 = icmp ne i32 %call389, 0
  br i1 %tobool390, label %if.else.395, label %if.then.391

if.then.391:                                      ; preds = %if.else.388
  %558 = load double*, double** @a, align 32
  %559 = load double, double* %one, align 8
  %560 = load i32, i32* %unit, align 4
  %call392 = call i32 @set1d(double* %558, double %559, i32 %560)
  %561 = load double*, double** @b, align 32
  %562 = load double, double* %any, align 8
  %563 = load i32, i32* %frac, align 4
  %call393 = call i32 @set1d(double* %561, double %562, i32 %563)
  %564 = load double*, double** @c, align 32
  %565 = load double, double* %any, align 8
  %566 = load i32, i32* %frac, align 4
  %call394 = call i32 @set1d(double* %564, double %565, i32 %566)
  br label %if.end.1058

if.else.395:                                      ; preds = %if.else.388
  %567 = load i8*, i8** %name.addr, align 8
  %call396 = call i32 @strcmp(i8* %567, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)) #5
  %tobool397 = icmp ne i32 %call396, 0
  br i1 %tobool397, label %if.else.404, label %if.then.398

if.then.398:                                      ; preds = %if.else.395
  %568 = load double*, double** @a, align 32
  %569 = load double, double* %one, align 8
  %570 = load i32, i32* %unit, align 4
  %call399 = call i32 @set1d(double* %568, double %569, i32 %570)
  %571 = load double*, double** @b, align 32
  %572 = load double, double* %one, align 8
  %573 = load i32, i32* %unit, align 4
  %call400 = call i32 @set1d(double* %571, double %572, i32 %573)
  %574 = load double*, double** @c, align 32
  %575 = load double, double* %any, align 8
  %576 = load i32, i32* %frac, align 4
  %call401 = call i32 @set1d(double* %574, double %575, i32 %576)
  %577 = load double*, double** @d, align 32
  %578 = load double, double* %any, align 8
  %579 = load i32, i32* %frac, align 4
  %call402 = call i32 @set1d(double* %577, double %578, i32 %579)
  %580 = load double*, double** @e, align 32
  %581 = load double, double* %two, align 8
  %582 = load i32, i32* %unit, align 4
  %call403 = call i32 @set1d(double* %580, double %581, i32 %582)
  br label %if.end.1057

if.else.404:                                      ; preds = %if.else.395
  %583 = load i8*, i8** %name.addr, align 8
  %call405 = call i32 @strcmp(i8* %583, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)) #5
  %tobool406 = icmp ne i32 %call405, 0
  br i1 %tobool406, label %if.else.413, label %if.then.407

if.then.407:                                      ; preds = %if.else.404
  %584 = load double*, double** @a, align 32
  %585 = load double, double* %one, align 8
  %586 = load i32, i32* %unit, align 4
  %call408 = call i32 @set1d(double* %584, double %585, i32 %586)
  %587 = load double*, double** @b, align 32
  %588 = load double, double* %one, align 8
  %589 = load i32, i32* %unit, align 4
  %call409 = call i32 @set1d(double* %587, double %588, i32 %589)
  %590 = load double*, double** @c, align 32
  %591 = load double, double* %one, align 8
  %592 = load i32, i32* %unit, align 4
  %call410 = call i32 @set1d(double* %590, double %591, i32 %592)
  %593 = load double*, double** @d, align 32
  %594 = load double, double* %small, align 8
  %595 = load i32, i32* %unit, align 4
  %call411 = call i32 @set1d(double* %593, double %594, i32 %595)
  %596 = load double*, double** @e, align 32
  %597 = load double, double* %any, align 8
  %598 = load i32, i32* %frac, align 4
  %call412 = call i32 @set1d(double* %596, double %597, i32 %598)
  br label %if.end.1056

if.else.413:                                      ; preds = %if.else.404
  %599 = load i8*, i8** %name.addr, align 8
  %call414 = call i32 @strcmp(i8* %599, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0)) #5
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %if.else.422, label %if.then.416

if.then.416:                                      ; preds = %if.else.413
  %600 = load double*, double** @a, align 32
  %601 = load double, double* %zero, align 8
  %602 = load i32, i32* %unit, align 4
  %call417 = call i32 @set1d(double* %600, double %601, i32 %602)
  %603 = load double*, double** @b, align 32
  %604 = load double, double* %one, align 8
  %605 = load i32, i32* %unit, align 4
  %call418 = call i32 @set1d(double* %603, double %604, i32 %605)
  %606 = load double*, double** @c, align 32
  %607 = load double, double* %one, align 8
  %608 = load i32, i32* %unit, align 4
  %call419 = call i32 @set1d(double* %606, double %607, i32 %608)
  %609 = load double*, double** @d, align 32
  %610 = load double, double* %any, align 8
  %611 = load i32, i32* %frac, align 4
  %call420 = call i32 @set1d(double* %609, double %610, i32 %611)
  %612 = load double*, double** @e, align 32
  %613 = load double, double* %any, align 8
  %614 = load i32, i32* %frac, align 4
  %call421 = call i32 @set1d(double* %612, double %613, i32 %614)
  br label %if.end.1055

if.else.422:                                      ; preds = %if.else.413
  %615 = load i8*, i8** %name.addr, align 8
  %call423 = call i32 @strcmp(i8* %615, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)) #5
  %tobool424 = icmp ne i32 %call423, 0
  br i1 %tobool424, label %if.else.429, label %if.then.425

if.then.425:                                      ; preds = %if.else.422
  %616 = load [256 x double]*, [256 x double]** @aa, align 32
  %617 = load double, double* %one, align 8
  %618 = load i32, i32* %unit, align 4
  %call426 = call i32 @set2d([256 x double]* %616, double %617, i32 %618)
  %619 = load [256 x double]*, [256 x double]** @bb, align 32
  %620 = load double, double* %small, align 8
  %621 = load i32, i32* %unit, align 4
  %call427 = call i32 @set2d([256 x double]* %619, double %620, i32 %621)
  %622 = load [256 x double]*, [256 x double]** @cc, align 32
  %623 = load double, double* %small, align 8
  %624 = load i32, i32* %unit, align 4
  %call428 = call i32 @set2d([256 x double]* %622, double %623, i32 %624)
  br label %if.end.1054

if.else.429:                                      ; preds = %if.else.422
  %625 = load i8*, i8** %name.addr, align 8
  %call430 = call i32 @strcmp(i8* %625, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)) #5
  %tobool431 = icmp ne i32 %call430, 0
  br i1 %tobool431, label %if.else.437, label %if.then.432

if.then.432:                                      ; preds = %if.else.429
  %626 = load double*, double** @a, align 32
  %627 = load double, double* %one, align 8
  %628 = load i32, i32* %unit, align 4
  %call433 = call i32 @set1d(double* %626, double %627, i32 %628)
  %629 = load double*, double** @b, align 32
  %630 = load double, double* %any, align 8
  %631 = load i32, i32* %frac, align 4
  %call434 = call i32 @set1d(double* %629, double %630, i32 %631)
  %632 = load double*, double** @c, align 32
  %633 = load double, double* %any, align 8
  %634 = load i32, i32* %frac, align 4
  %call435 = call i32 @set1d(double* %632, double %633, i32 %634)
  %635 = load double*, double** @d, align 32
  %636 = load double, double* %any, align 8
  %637 = load i32, i32* %frac, align 4
  %call436 = call i32 @set1d(double* %635, double %636, i32 %637)
  br label %if.end.1053

if.else.437:                                      ; preds = %if.else.429
  %638 = load i8*, i8** %name.addr, align 8
  %call438 = call i32 @strcmp(i8* %638, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)) #5
  %tobool439 = icmp ne i32 %call438, 0
  br i1 %tobool439, label %if.else.449, label %if.then.440

if.then.440:                                      ; preds = %if.else.437
  %639 = load double*, double** @a, align 32
  %640 = load double, double* %one, align 8
  %641 = load i32, i32* %unit, align 4
  %call441 = call i32 @set1d(double* %639, double %640, i32 %641)
  %642 = load double*, double** @b, align 32
  %643 = load double, double* %one, align 8
  %644 = load i32, i32* %unit, align 4
  %call442 = call i32 @set1ds(i32 16000, double* %642, double %643, i32 %644)
  %645 = load double*, double** @b, align 32
  %arrayidx443 = getelementptr inbounds double, double* %645, i64 16000
  %646 = load double, double* %one, align 8
  %sub444 = fsub double -0.000000e+00, %646
  %647 = load i32, i32* %unit, align 4
  %call445 = call i32 @set1ds(i32 16000, double* %arrayidx443, double %sub444, i32 %647)
  %648 = load double*, double** @c, align 32
  %649 = load double, double* %any, align 8
  %650 = load i32, i32* %frac, align 4
  %call446 = call i32 @set1d(double* %648, double %649, i32 %650)
  %651 = load double*, double** @d, align 32
  %652 = load double, double* %any, align 8
  %653 = load i32, i32* %frac, align 4
  %call447 = call i32 @set1d(double* %651, double %652, i32 %653)
  %654 = load double*, double** @e, align 32
  %655 = load double, double* %any, align 8
  %656 = load i32, i32* %frac, align 4
  %call448 = call i32 @set1d(double* %654, double %655, i32 %656)
  br label %if.end.1052

if.else.449:                                      ; preds = %if.else.437
  %657 = load i8*, i8** %name.addr, align 8
  %call450 = call i32 @strcmp(i8* %657, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0)) #5
  %tobool451 = icmp ne i32 %call450, 0
  br i1 %tobool451, label %if.else.461, label %if.then.452

if.then.452:                                      ; preds = %if.else.449
  %658 = load double*, double** @a, align 32
  %659 = load double, double* %one, align 8
  %sub453 = fsub double -0.000000e+00, %659
  %660 = load i32, i32* %unit, align 4
  %call454 = call i32 @set1ds(i32 16000, double* %658, double %sub453, i32 %660)
  %661 = load double*, double** @a, align 32
  %arrayidx455 = getelementptr inbounds double, double* %661, i64 16000
  %662 = load double, double* %one, align 8
  %663 = load i32, i32* %unit, align 4
  %call456 = call i32 @set1ds(i32 16000, double* %arrayidx455, double %662, i32 %663)
  %664 = load double*, double** @b, align 32
  %665 = load double, double* %one, align 8
  %666 = load i32, i32* %unit, align 4
  %call457 = call i32 @set1d(double* %664, double %665, i32 %666)
  %667 = load double*, double** @c, align 32
  %668 = load double, double* %any, align 8
  %669 = load i32, i32* %frac, align 4
  %call458 = call i32 @set1d(double* %667, double %668, i32 %669)
  %670 = load double*, double** @d, align 32
  %671 = load double, double* %any, align 8
  %672 = load i32, i32* %frac, align 4
  %call459 = call i32 @set1d(double* %670, double %671, i32 %672)
  %673 = load double*, double** @e, align 32
  %674 = load double, double* %any, align 8
  %675 = load i32, i32* %frac, align 4
  %call460 = call i32 @set1d(double* %673, double %674, i32 %675)
  br label %if.end.1051

if.else.461:                                      ; preds = %if.else.449
  %676 = load i8*, i8** %name.addr, align 8
  %call462 = call i32 @strcmp(i8* %676, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0)) #5
  %tobool463 = icmp ne i32 %call462, 0
  br i1 %tobool463, label %if.else.473, label %if.then.464

if.then.464:                                      ; preds = %if.else.461
  %677 = load double*, double** @a, align 32
  %678 = load double, double* %one, align 8
  %sub465 = fsub double -0.000000e+00, %678
  %679 = load i32, i32* %unit, align 4
  %call466 = call i32 @set1ds(i32 16000, double* %677, double %sub465, i32 %679)
  %680 = load double*, double** @a, align 32
  %arrayidx467 = getelementptr inbounds double, double* %680, i64 16000
  %681 = load double, double* %one, align 8
  %682 = load i32, i32* %unit, align 4
  %call468 = call i32 @set1ds(i32 16000, double* %arrayidx467, double %681, i32 %682)
  %683 = load double*, double** @b, align 32
  %684 = load double, double* %one, align 8
  %685 = load i32, i32* %unit, align 4
  %call469 = call i32 @set1d(double* %683, double %684, i32 %685)
  %686 = load double*, double** @c, align 32
  %687 = load double, double* %any, align 8
  %688 = load i32, i32* %frac, align 4
  %call470 = call i32 @set1d(double* %686, double %687, i32 %688)
  %689 = load double*, double** @d, align 32
  %690 = load double, double* %any, align 8
  %691 = load i32, i32* %frac, align 4
  %call471 = call i32 @set1d(double* %689, double %690, i32 %691)
  %692 = load double*, double** @e, align 32
  %693 = load double, double* %any, align 8
  %694 = load i32, i32* %frac, align 4
  %call472 = call i32 @set1d(double* %692, double %693, i32 %694)
  br label %if.end.1050

if.else.473:                                      ; preds = %if.else.461
  %695 = load i8*, i8** %name.addr, align 8
  %call474 = call i32 @strcmp(i8* %695, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0)) #5
  %tobool475 = icmp ne i32 %call474, 0
  br i1 %tobool475, label %if.else.482, label %if.then.476

if.then.476:                                      ; preds = %if.else.473
  %696 = load double*, double** @a, align 32
  %697 = load double, double* %one, align 8
  %698 = load i32, i32* %unit, align 4
  %call477 = call i32 @set1d(double* %696, double %697, i32 %698)
  %699 = load double*, double** @b, align 32
  %700 = load double, double* %one, align 8
  %701 = load i32, i32* %unit, align 4
  %call478 = call i32 @set1d(double* %699, double %700, i32 %701)
  %702 = load double*, double** @c, align 32
  %703 = load double, double* %any, align 8
  %704 = load i32, i32* %frac, align 4
  %call479 = call i32 @set1d(double* %702, double %703, i32 %704)
  %705 = load double*, double** @d, align 32
  %706 = load double, double* %any, align 8
  %707 = load i32, i32* %frac, align 4
  %call480 = call i32 @set1d(double* %705, double %706, i32 %707)
  %708 = load double*, double** @e, align 32
  %709 = load double, double* %any, align 8
  %710 = load i32, i32* %frac, align 4
  %call481 = call i32 @set1d(double* %708, double %709, i32 %710)
  br label %if.end.1049

if.else.482:                                      ; preds = %if.else.473
  %711 = load i8*, i8** %name.addr, align 8
  %call483 = call i32 @strcmp(i8* %711, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0)) #5
  %tobool484 = icmp ne i32 %call483, 0
  br i1 %tobool484, label %if.else.489, label %if.then.485

if.then.485:                                      ; preds = %if.else.482
  %712 = load double*, double** @a, align 32
  %713 = load double, double* %one, align 8
  %714 = load i32, i32* %unit, align 4
  %call486 = call i32 @set1d(double* %712, double %713, i32 %714)
  %715 = load double*, double** @b, align 32
  %716 = load double, double* %any, align 8
  %717 = load i32, i32* %frac, align 4
  %call487 = call i32 @set1d(double* %715, double %716, i32 %717)
  %718 = load double*, double** @c, align 32
  %719 = load double, double* %any, align 8
  %720 = load i32, i32* %frac, align 4
  %call488 = call i32 @set1d(double* %718, double %719, i32 %720)
  br label %if.end.1048

if.else.489:                                      ; preds = %if.else.482
  %721 = load i8*, i8** %name.addr, align 8
  %call490 = call i32 @strcmp(i8* %721, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0)) #5
  %tobool491 = icmp ne i32 %call490, 0
  br i1 %tobool491, label %if.else.496, label %if.then.492

if.then.492:                                      ; preds = %if.else.489
  %722 = load double*, double** @a, align 32
  %723 = load double, double* %one, align 8
  %724 = load i32, i32* %unit, align 4
  %call493 = call i32 @set1d(double* %722, double %723, i32 %724)
  %725 = load double*, double** @b, align 32
  %726 = load double, double* %any, align 8
  %727 = load i32, i32* %frac, align 4
  %call494 = call i32 @set1d(double* %725, double %726, i32 %727)
  %728 = load double*, double** @c, align 32
  %729 = load double, double* %any, align 8
  %730 = load i32, i32* %frac, align 4
  %call495 = call i32 @set1d(double* %728, double %729, i32 %730)
  br label %if.end.1047

if.else.496:                                      ; preds = %if.else.489
  %731 = load i8*, i8** %name.addr, align 8
  %call497 = call i32 @strcmp(i8* %731, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0)) #5
  %tobool498 = icmp ne i32 %call497, 0
  br i1 %tobool498, label %if.else.503, label %if.then.499

if.then.499:                                      ; preds = %if.else.496
  %732 = load double*, double** @a, align 32
  %733 = load double, double* %zero, align 8
  %734 = load i32, i32* %unit, align 4
  %call500 = call i32 @set1d(double* %732, double %733, i32 %734)
  %735 = load double*, double** @b, align 32
  %736 = load double, double* %one, align 8
  %737 = load i32, i32* %unit, align 4
  %call501 = call i32 @set1d(double* %735, double %736, i32 %737)
  %738 = load double*, double** @c, align 32
  %739 = load double, double* %one, align 8
  %740 = load i32, i32* %unit, align 4
  %call502 = call i32 @set1d(double* %738, double %739, i32 %740)
  br label %if.end.1046

if.else.503:                                      ; preds = %if.else.496
  %741 = load i8*, i8** %name.addr, align 8
  %call504 = call i32 @strcmp(i8* %741, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0)) #5
  %tobool505 = icmp ne i32 %call504, 0
  br i1 %tobool505, label %if.else.509, label %if.then.506

if.then.506:                                      ; preds = %if.else.503
  %742 = load double*, double** @a, align 32
  %743 = load double, double* %zero, align 8
  %744 = load i32, i32* %unit, align 4
  %call507 = call i32 @set1d(double* %742, double %743, i32 %744)
  %745 = load double*, double** @b, align 32
  %746 = load double, double* %one, align 8
  %747 = load i32, i32* %unit, align 4
  %call508 = call i32 @set1d(double* %745, double %746, i32 %747)
  br label %if.end.1045

if.else.509:                                      ; preds = %if.else.503
  %748 = load i8*, i8** %name.addr, align 8
  %call510 = call i32 @strcmp(i8* %748, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0)) #5
  %tobool511 = icmp ne i32 %call510, 0
  br i1 %tobool511, label %if.else.515, label %if.then.512

if.then.512:                                      ; preds = %if.else.509
  %749 = load double*, double** @a, align 32
  %750 = load double, double* %zero, align 8
  %751 = load i32, i32* %unit, align 4
  %call513 = call i32 @set1d(double* %749, double %750, i32 %751)
  %752 = load double*, double** @b, align 32
  %753 = load double, double* %one, align 8
  %754 = load i32, i32* %unit, align 4
  %call514 = call i32 @set1d(double* %752, double %753, i32 %754)
  br label %if.end.1044

if.else.515:                                      ; preds = %if.else.509
  %755 = load i8*, i8** %name.addr, align 8
  %call516 = call i32 @strcmp(i8* %755, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0)) #5
  %tobool517 = icmp ne i32 %call516, 0
  br i1 %tobool517, label %if.else.520, label %if.then.518

if.then.518:                                      ; preds = %if.else.515
  %756 = load double*, double** @a, align 32
  %757 = load double, double* %any, align 8
  %758 = load i32, i32* %frac, align 4
  %call519 = call i32 @set1d(double* %756, double %757, i32 %758)
  br label %if.end.1043

if.else.520:                                      ; preds = %if.else.515
  %759 = load i8*, i8** %name.addr, align 8
  %call521 = call i32 @strcmp(i8* %759, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0)) #5
  %tobool522 = icmp ne i32 %call521, 0
  br i1 %tobool522, label %if.else.527, label %if.then.523

if.then.523:                                      ; preds = %if.else.520
  %760 = load [256 x double]*, [256 x double]** @aa, align 32
  %761 = load double, double* %one, align 8
  %762 = load i32, i32* %unit, align 4
  %call524 = call i32 @set2d([256 x double]* %760, double %761, i32 %762)
  %763 = load [256 x double]*, [256 x double]** @bb, align 32
  %764 = load double, double* %any, align 8
  %765 = load i32, i32* %frac, align 4
  %call525 = call i32 @set2d([256 x double]* %763, double %764, i32 %765)
  %766 = load [256 x double]*, [256 x double]** @cc, align 32
  %767 = load double, double* %any, align 8
  %768 = load i32, i32* %frac, align 4
  %call526 = call i32 @set2d([256 x double]* %766, double %767, i32 %768)
  br label %if.end.1042

if.else.527:                                      ; preds = %if.else.520
  %769 = load i8*, i8** %name.addr, align 8
  %call528 = call i32 @strcmp(i8* %769, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0)) #5
  %tobool529 = icmp ne i32 %call528, 0
  br i1 %tobool529, label %if.else.532, label %if.then.530

if.then.530:                                      ; preds = %if.else.527
  %770 = load [256 x double]*, [256 x double]** @aa, align 32
  %771 = load double, double* %zero, align 8
  %772 = load i32, i32* %unit, align 4
  %call531 = call i32 @set2d([256 x double]* %770, double %771, i32 %772)
  br label %if.end.1041

if.else.532:                                      ; preds = %if.else.527
  %773 = load i8*, i8** %name.addr, align 8
  %call533 = call i32 @strcmp(i8* %773, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0)) #5
  %tobool534 = icmp ne i32 %call533, 0
  br i1 %tobool534, label %if.else.537, label %if.then.535

if.then.535:                                      ; preds = %if.else.532
  %774 = load [256 x double]*, [256 x double]** @aa, align 32
  %775 = load double, double* %zero, align 8
  %776 = load i32, i32* %unit, align 4
  %call536 = call i32 @set2d([256 x double]* %774, double %775, i32 %776)
  br label %if.end.1040

if.else.537:                                      ; preds = %if.else.532
  %777 = load i8*, i8** %name.addr, align 8
  %call538 = call i32 @strcmp(i8* %777, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0)) #5
  %tobool539 = icmp ne i32 %call538, 0
  br i1 %tobool539, label %if.else.542, label %if.then.540

if.then.540:                                      ; preds = %if.else.537
  %778 = load double*, double** @a, align 32
  %779 = load double, double* %any, align 8
  %780 = load i32, i32* %frac, align 4
  %call541 = call i32 @set1d(double* %778, double %779, i32 %780)
  br label %if.end.1039

if.else.542:                                      ; preds = %if.else.537
  %781 = load i8*, i8** %name.addr, align 8
  %call543 = call i32 @strcmp(i8* %781, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0)) #5
  %tobool544 = icmp ne i32 %call543, 0
  br i1 %tobool544, label %if.else.547, label %if.then.545

if.then.545:                                      ; preds = %if.else.542
  %782 = load double*, double** @a, align 32
  %783 = load i32, i32* %unit, align 4
  %call546 = call i32 @set1d(double* %782, double 1.000001e+00, i32 %783)
  br label %if.end.1038

if.else.547:                                      ; preds = %if.else.542
  %784 = load i8*, i8** %name.addr, align 8
  %call548 = call i32 @strcmp(i8* %784, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0)) #5
  %tobool549 = icmp ne i32 %call548, 0
  br i1 %tobool549, label %if.else.553, label %if.then.550

if.then.550:                                      ; preds = %if.else.547
  %785 = load double*, double** @a, align 32
  %786 = load double, double* %any, align 8
  %787 = load i32, i32* %frac, align 4
  %call551 = call i32 @set1d(double* %785, double %786, i32 %787)
  %788 = load double*, double** @b, align 32
  %789 = load double, double* %any, align 8
  %790 = load i32, i32* %frac, align 4
  %call552 = call i32 @set1d(double* %788, double %789, i32 %790)
  br label %if.end.1037

if.else.553:                                      ; preds = %if.else.547
  %791 = load i8*, i8** %name.addr, align 8
  %call554 = call i32 @strcmp(i8* %791, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0)) #5
  %tobool555 = icmp ne i32 %call554, 0
  br i1 %tobool555, label %if.else.558, label %if.then.556

if.then.556:                                      ; preds = %if.else.553
  %792 = load double*, double** @a, align 32
  %793 = load double, double* %any, align 8
  %794 = load i32, i32* %frac, align 4
  %call557 = call i32 @set1d(double* %792, double %793, i32 %794)
  br label %if.end.1036

if.else.558:                                      ; preds = %if.else.553
  %795 = load i8*, i8** %name.addr, align 8
  %call559 = call i32 @strcmp(i8* %795, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0)) #5
  %tobool560 = icmp ne i32 %call559, 0
  br i1 %tobool560, label %if.else.563, label %if.then.561

if.then.561:                                      ; preds = %if.else.558
  %796 = load double*, double** @a, align 32
  %797 = load double, double* %any, align 8
  %798 = load i32, i32* %frac, align 4
  %call562 = call i32 @set1d(double* %796, double %797, i32 %798)
  br label %if.end.1035

if.else.563:                                      ; preds = %if.else.558
  %799 = load i8*, i8** %name.addr, align 8
  %call564 = call i32 @strcmp(i8* %799, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0)) #5
  %tobool565 = icmp ne i32 %call564, 0
  br i1 %tobool565, label %if.else.568, label %if.then.566

if.then.566:                                      ; preds = %if.else.563
  %800 = load double*, double** @a, align 32
  %801 = load double, double* %any, align 8
  %802 = load i32, i32* %frac, align 4
  %call567 = call i32 @set1d(double* %800, double %801, i32 %802)
  br label %if.end.1034

if.else.568:                                      ; preds = %if.else.563
  %803 = load i8*, i8** %name.addr, align 8
  %call569 = call i32 @strcmp(i8* %803, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0)) #5
  %tobool570 = icmp ne i32 %call569, 0
  br i1 %tobool570, label %if.else.572, label %if.then.571

if.then.571:                                      ; preds = %if.else.568
  br label %if.end.1033

if.else.572:                                      ; preds = %if.else.568
  %804 = load i8*, i8** %name.addr, align 8
  %call573 = call i32 @strcmp(i8* %804, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0)) #5
  %tobool574 = icmp ne i32 %call573, 0
  br i1 %tobool574, label %if.else.579, label %if.then.575

if.then.575:                                      ; preds = %if.else.572
  %805 = load double*, double** @a, align 32
  %806 = load double, double* %any, align 8
  %807 = load i32, i32* %frac, align 4
  %call576 = call i32 @set1d(double* %805, double %806, i32 %807)
  %808 = load double, double* %two, align 8
  %sub577 = fsub double -0.000000e+00, %808
  %809 = load double*, double** @a, align 32
  %arrayidx578 = getelementptr inbounds double, double* %809, i64 31999
  store double %sub577, double* %arrayidx578, align 8
  br label %if.end.1032

if.else.579:                                      ; preds = %if.else.572
  %810 = load i8*, i8** %name.addr, align 8
  %call580 = call i32 @strcmp(i8* %810, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0)) #5
  %tobool581 = icmp ne i32 %call580, 0
  br i1 %tobool581, label %if.else.588, label %if.then.582

if.then.582:                                      ; preds = %if.else.579
  %811 = load double*, double** @a, align 32
  %812 = load double, double* %zero, align 8
  %813 = load i32, i32* %unit, align 4
  %call583 = call i32 @set1d(double* %811, double %812, i32 %813)
  %814 = load double*, double** @b, align 32
  %815 = load double, double* %zero, align 8
  %816 = load i32, i32* %unit, align 4
  %call584 = call i32 @set1d(double* %814, double %815, i32 %816)
  %817 = load double*, double** @c, align 32
  %818 = load double, double* %any, align 8
  %819 = load i32, i32* %frac, align 4
  %call585 = call i32 @set1d(double* %817, double %818, i32 %819)
  %820 = load double*, double** @d, align 32
  %821 = load double, double* %any, align 8
  %822 = load i32, i32* %frac, align 4
  %call586 = call i32 @set1d(double* %820, double %821, i32 %822)
  %823 = load double*, double** @e, align 32
  %824 = load double, double* %any, align 8
  %825 = load i32, i32* %frac, align 4
  %call587 = call i32 @set1d(double* %823, double %824, i32 %825)
  br label %if.end.1031

if.else.588:                                      ; preds = %if.else.579
  %826 = load i8*, i8** %name.addr, align 8
  %call589 = call i32 @strcmp(i8* %826, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0)) #5
  %tobool590 = icmp ne i32 %call589, 0
  br i1 %tobool590, label %if.else.595, label %if.then.591

if.then.591:                                      ; preds = %if.else.588
  %827 = load [256 x double]*, [256 x double]** @aa, align 32
  %828 = load double, double* %any, align 8
  %829 = load i32, i32* %frac, align 4
  %call592 = call i32 @set2d([256 x double]* %827, double %828, i32 %829)
  %830 = load double, double* %two, align 8
  %831 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx593 = getelementptr inbounds [256 x double], [256 x double]* %831, i64 255
  %arrayidx594 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx593, i32 0, i64 255
  store double %830, double* %arrayidx594, align 8
  br label %if.end.1030

if.else.595:                                      ; preds = %if.else.588
  %832 = load i8*, i8** %name.addr, align 8
  %call596 = call i32 @strcmp(i8* %832, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0)) #5
  %tobool597 = icmp ne i32 %call596, 0
  br i1 %tobool597, label %if.else.600, label %if.then.598

if.then.598:                                      ; preds = %if.else.595
  %833 = load double*, double** @a, align 32
  %834 = load double, double* %any, align 8
  %835 = load i32, i32* %frac, align 4
  %call599 = call i32 @set1d(double* %833, double %834, i32 %835)
  br label %if.end.1029

if.else.600:                                      ; preds = %if.else.595
  %836 = load i8*, i8** %name.addr, align 8
  %call601 = call i32 @strcmp(i8* %836, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0)) #5
  %tobool602 = icmp ne i32 %call601, 0
  br i1 %tobool602, label %if.else.606, label %if.then.603

if.then.603:                                      ; preds = %if.else.600
  %837 = load double*, double** @a, align 32
  %838 = load double, double* %any, align 8
  %839 = load i32, i32* %frac2, align 4
  %call604 = call i32 @set1d(double* %837, double %838, i32 %839)
  %840 = load double*, double** @b, align 32
  %841 = load double, double* %zero, align 8
  %842 = load i32, i32* %unit, align 4
  %call605 = call i32 @set1d(double* %840, double %841, i32 %842)
  br label %if.end.1028

if.else.606:                                      ; preds = %if.else.600
  %843 = load i8*, i8** %name.addr, align 8
  %call607 = call i32 @strcmp(i8* %843, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0)) #5
  %tobool608 = icmp ne i32 %call607, 0
  br i1 %tobool608, label %if.else.613, label %if.then.609

if.then.609:                                      ; preds = %if.else.606
  %844 = load double*, double** @a, align 32
  %845 = load double, double* %any, align 8
  %846 = load i32, i32* %frac, align 4
  %call610 = call i32 @set1d(double* %844, double %845, i32 %846)
  %847 = load double, double* %two, align 8
  %sub611 = fsub double -0.000000e+00, %847
  %848 = load double*, double** @a, align 32
  %arrayidx612 = getelementptr inbounds double, double* %848, i64 31999
  store double %sub611, double* %arrayidx612, align 8
  br label %if.end.1027

if.else.613:                                      ; preds = %if.else.606
  %849 = load i8*, i8** %name.addr, align 8
  %call614 = call i32 @strcmp(i8* %849, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0)) #5
  %tobool615 = icmp ne i32 %call614, 0
  br i1 %tobool615, label %if.else.619, label %if.then.616

if.then.616:                                      ; preds = %if.else.613
  %850 = load double*, double** @a, align 32
  %851 = load double, double* %one, align 8
  %852 = load i32, i32* %unit, align 4
  %call617 = call i32 @set1d(double* %850, double %851, i32 %852)
  %853 = load double*, double** @b, align 32
  %854 = load double, double* %zero, align 8
  %855 = load i32, i32* %unit, align 4
  %call618 = call i32 @set1d(double* %853, double %854, i32 %855)
  br label %if.end.1026

if.else.619:                                      ; preds = %if.else.613
  %856 = load i8*, i8** %name.addr, align 8
  %call620 = call i32 @strcmp(i8* %856, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0)) #5
  %tobool621 = icmp ne i32 %call620, 0
  br i1 %tobool621, label %if.else.626, label %if.then.622

if.then.622:                                      ; preds = %if.else.619
  %857 = load double*, double** @a, align 32
  %858 = load double, double* %one, align 8
  %859 = load i32, i32* %unit, align 4
  %call623 = call i32 @set1d(double* %857, double %858, i32 %859)
  %860 = load double*, double** @b, align 32
  %861 = load double, double* %zero, align 8
  %862 = load i32, i32* %unit, align 4
  %call624 = call i32 @set1d(double* %860, double %861, i32 %862)
  %863 = load double*, double** @c, align 32
  %864 = load double, double* %zero, align 8
  %865 = load i32, i32* %unit, align 4
  %call625 = call i32 @set1d(double* %863, double %864, i32 %865)
  br label %if.end.1025

if.else.626:                                      ; preds = %if.else.619
  %866 = load i8*, i8** %name.addr, align 8
  %call627 = call i32 @strcmp(i8* %866, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0)) #5
  %tobool628 = icmp ne i32 %call627, 0
  br i1 %tobool628, label %if.else.635, label %if.then.629

if.then.629:                                      ; preds = %if.else.626
  %867 = load double*, double** @a, align 32
  %868 = load double, double* %one, align 8
  %869 = load i32, i32* %unit, align 4
  %call630 = call i32 @set1d(double* %867, double %868, i32 %869)
  %870 = load double*, double** @b, align 32
  %871 = load double, double* %one, align 8
  %872 = load i32, i32* %unit, align 4
  %call631 = call i32 @set1d(double* %870, double %871, i32 %872)
  %873 = load double*, double** @c, align 32
  %874 = load double, double* %any, align 8
  %875 = load i32, i32* %frac, align 4
  %call632 = call i32 @set1d(double* %873, double %874, i32 %875)
  %876 = load double*, double** @d, align 32
  %877 = load double, double* %any, align 8
  %878 = load i32, i32* %frac, align 4
  %call633 = call i32 @set1d(double* %876, double %877, i32 %878)
  %879 = load double*, double** @e, align 32
  %880 = load double, double* %any, align 8
  %881 = load i32, i32* %frac, align 4
  %call634 = call i32 @set1d(double* %879, double %880, i32 %881)
  br label %if.end.1024

if.else.635:                                      ; preds = %if.else.626
  %882 = load i8*, i8** %name.addr, align 8
  %call636 = call i32 @strcmp(i8* %882, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0)) #5
  %tobool637 = icmp ne i32 %call636, 0
  br i1 %tobool637, label %if.else.642, label %if.then.638

if.then.638:                                      ; preds = %if.else.635
  %883 = load double*, double** @a, align 32
  %884 = load double, double* %any, align 8
  %885 = load i32, i32* %frac, align 4
  %call639 = call i32 @set1d(double* %883, double %884, i32 %885)
  %886 = load double, double* %one, align 8
  %sub640 = fsub double -0.000000e+00, %886
  %887 = load double*, double** @a, align 32
  %arrayidx641 = getelementptr inbounds double, double* %887, i64 31999
  store double %sub640, double* %arrayidx641, align 8
  br label %if.end.1023

if.else.642:                                      ; preds = %if.else.635
  %888 = load i8*, i8** %name.addr, align 8
  %call643 = call i32 @strcmp(i8* %888, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0)) #5
  %tobool644 = icmp ne i32 %call643, 0
  br i1 %tobool644, label %if.else.648, label %if.then.645

if.then.645:                                      ; preds = %if.else.642
  %889 = load double*, double** @a, align 32
  %890 = load double, double* %any, align 8
  %891 = load i32, i32* %frac2, align 4
  %call646 = call i32 @set1d(double* %889, double %890, i32 %891)
  %892 = load double, double* %two, align 8
  %893 = load double*, double** @a, align 32
  %arrayidx647 = getelementptr inbounds double, double* %893, i64 31999
  store double %892, double* %arrayidx647, align 8
  br label %if.end.1022

if.else.648:                                      ; preds = %if.else.642
  %894 = load i8*, i8** %name.addr, align 8
  %call649 = call i32 @strcmp(i8* %894, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0)) #5
  %tobool650 = icmp ne i32 %call649, 0
  br i1 %tobool650, label %if.else.654, label %if.then.651

if.then.651:                                      ; preds = %if.else.648
  %895 = load double*, double** @a, align 32
  %896 = load double, double* %zero, align 8
  %897 = load i32, i32* %unit, align 4
  %call652 = call i32 @set1d(double* %895, double %896, i32 %897)
  %898 = load double*, double** @b, align 32
  %899 = load double, double* %any, align 8
  %900 = load i32, i32* %frac, align 4
  %call653 = call i32 @set1d(double* %898, double %899, i32 %900)
  br label %if.end.1021

if.else.654:                                      ; preds = %if.else.648
  %901 = load i8*, i8** %name.addr, align 8
  %call655 = call i32 @strcmp(i8* %901, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0)) #5
  %tobool656 = icmp ne i32 %call655, 0
  br i1 %tobool656, label %if.else.660, label %if.then.657

if.then.657:                                      ; preds = %if.else.654
  %902 = load double*, double** @a, align 32
  %903 = load double, double* %any, align 8
  %904 = load i32, i32* %frac, align 4
  %call658 = call i32 @set1d(double* %902, double %903, i32 %904)
  %905 = load double*, double** @b, align 32
  %906 = load double, double* %any, align 8
  %907 = load i32, i32* %frac, align 4
  %call659 = call i32 @set1d(double* %905, double %906, i32 %907)
  br label %if.end.1020

if.else.660:                                      ; preds = %if.else.654
  %908 = load i8*, i8** %name.addr, align 8
  %call661 = call i32 @strcmp(i8* %908, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0)) #5
  %tobool662 = icmp ne i32 %call661, 0
  br i1 %tobool662, label %if.else.666, label %if.then.663

if.then.663:                                      ; preds = %if.else.660
  %909 = load [256 x double]*, [256 x double]** @aa, align 32
  %910 = load double, double* %any, align 8
  %911 = load i32, i32* %frac, align 4
  %call664 = call i32 @set2d([256 x double]* %909, double %910, i32 %911)
  %912 = load [256 x double]*, [256 x double]** @bb, align 32
  %913 = load double, double* %one, align 8
  %914 = load i32, i32* %unit, align 4
  %call665 = call i32 @set2d([256 x double]* %912, double %913, i32 %914)
  br label %if.end.1019

if.else.666:                                      ; preds = %if.else.660
  %915 = load i8*, i8** %name.addr, align 8
  %call667 = call i32 @strcmp(i8* %915, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i32 0, i32 0)) #5
  %tobool668 = icmp ne i32 %call667, 0
  br i1 %tobool668, label %if.else.673, label %if.then.669

if.then.669:                                      ; preds = %if.else.666
  %916 = load double*, double** @a, align 32
  %917 = load double, double* %one, align 8
  %918 = load i32, i32* %unit, align 4
  %call670 = call i32 @set1d(double* %916, double %917, i32 %918)
  %919 = load double*, double** @b, align 32
  %920 = load double, double* %one, align 8
  %921 = load i32, i32* %unit, align 4
  %call671 = call i32 @set1d(double* %919, double %920, i32 %921)
  %922 = load double*, double** @c, align 32
  %arrayidx672 = getelementptr inbounds double, double* %922, i64 0
  store double 1.000000e+00, double* %arrayidx672, align 8
  br label %if.end.1018

if.else.673:                                      ; preds = %if.else.666
  %923 = load i8*, i8** %name.addr, align 8
  %call674 = call i32 @strcmp(i8* %923, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0)) #5
  %tobool675 = icmp ne i32 %call674, 0
  br i1 %tobool675, label %if.else.679, label %if.then.676

if.then.676:                                      ; preds = %if.else.673
  %924 = load double*, double** @a, align 32
  %925 = load double, double* %any, align 8
  %926 = load i32, i32* %frac, align 4
  %call677 = call i32 @set1d(double* %924, double %925, i32 %926)
  %927 = load double*, double** @b, align 32
  %928 = load double, double* %any, align 8
  %929 = load i32, i32* %frac, align 4
  %call678 = call i32 @set1d(double* %927, double %928, i32 %929)
  br label %if.end.1017

if.else.679:                                      ; preds = %if.else.673
  %930 = load i8*, i8** %name.addr, align 8
  %call680 = call i32 @strcmp(i8* %930, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0)) #5
  %tobool681 = icmp ne i32 %call680, 0
  br i1 %tobool681, label %if.else.686, label %if.then.682

if.then.682:                                      ; preds = %if.else.679
  %931 = load double*, double** @a, align 32
  %932 = load double, double* %one, align 8
  %933 = load i32, i32* %unit, align 4
  %call683 = call i32 @set1d(double* %931, double %932, i32 %933)
  %934 = load double*, double** @b, align 32
  %935 = load double, double* %one, align 8
  %936 = load i32, i32* %unit, align 4
  %call684 = call i32 @set1d(double* %934, double %935, i32 %936)
  %937 = load double*, double** @c, align 32
  %arrayidx685 = getelementptr inbounds double, double* %937, i64 0
  store double 1.000000e+00, double* %arrayidx685, align 8
  br label %if.end.1016

if.else.686:                                      ; preds = %if.else.679
  %938 = load i8*, i8** %name.addr, align 8
  %call687 = call i32 @strcmp(i8* %938, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0)) #5
  %tobool688 = icmp ne i32 %call687, 0
  br i1 %tobool688, label %if.else.693, label %if.then.689

if.then.689:                                      ; preds = %if.else.686
  %939 = load double*, double** @a, align 32
  %940 = load double, double* %one, align 8
  %941 = load i32, i32* %unit, align 4
  %call690 = call i32 @set1d(double* %939, double %940, i32 %941)
  %942 = load double*, double** @b, align 32
  %943 = load double, double* %any, align 8
  %944 = load i32, i32* %frac, align 4
  %call691 = call i32 @set1d(double* %942, double %943, i32 %944)
  %945 = load double*, double** @c, align 32
  %946 = load double, double* %any, align 8
  %947 = load i32, i32* %frac, align 4
  %call692 = call i32 @set1d(double* %945, double %946, i32 %947)
  br label %if.end.1015

if.else.693:                                      ; preds = %if.else.686
  %948 = load i8*, i8** %name.addr, align 8
  %call694 = call i32 @strcmp(i8* %948, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0)) #5
  %tobool695 = icmp ne i32 %call694, 0
  br i1 %tobool695, label %if.else.700, label %if.then.696

if.then.696:                                      ; preds = %if.else.693
  %949 = load double*, double** @a, align 32
  %950 = load double, double* %one, align 8
  %951 = load i32, i32* %unit, align 4
  %call697 = call i32 @set1d(double* %949, double %950, i32 %951)
  %952 = load double*, double** @b, align 32
  %953 = load double, double* %any, align 8
  %954 = load i32, i32* %frac, align 4
  %call698 = call i32 @set1d(double* %952, double %953, i32 %954)
  %955 = load double*, double** @c, align 32
  %956 = load double, double* %any, align 8
  %957 = load i32, i32* %frac, align 4
  %call699 = call i32 @set1d(double* %955, double %956, i32 %957)
  br label %if.end.1014

if.else.700:                                      ; preds = %if.else.693
  %958 = load i8*, i8** %name.addr, align 8
  %call701 = call i32 @strcmp(i8* %958, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i32 0, i32 0)) #5
  %tobool702 = icmp ne i32 %call701, 0
  br i1 %tobool702, label %if.else.709, label %if.then.703

if.then.703:                                      ; preds = %if.else.700
  %959 = load double*, double** @a, align 32
  %960 = load double, double* %zero, align 8
  %961 = load i32, i32* %unit, align 4
  %call704 = call i32 @set1d(double* %959, double %960, i32 %961)
  %962 = load double*, double** @b, align 32
  %963 = load double, double* %one, align 8
  %964 = load i32, i32* %unit, align 4
  %call705 = call i32 @set1d(double* %962, double %963, i32 %964)
  %965 = load double*, double** @c, align 32
  %966 = load double, double* %one, align 8
  %967 = load i32, i32* %unit, align 4
  %call706 = call i32 @set1d(double* %965, double %966, i32 %967)
  %968 = load double*, double** @d, align 32
  %969 = load double, double* %any, align 8
  %970 = load i32, i32* %frac, align 4
  %call707 = call i32 @set1d(double* %968, double %969, i32 %970)
  %971 = load double*, double** @e, align 32
  %972 = load double, double* %any, align 8
  %973 = load i32, i32* %frac, align 4
  %call708 = call i32 @set1d(double* %971, double %972, i32 %973)
  br label %if.end.1013

if.else.709:                                      ; preds = %if.else.700
  %974 = load i8*, i8** %name.addr, align 8
  %call710 = call i32 @strcmp(i8* %974, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0)) #5
  %tobool711 = icmp ne i32 %call710, 0
  br i1 %tobool711, label %if.else.716, label %if.then.712

if.then.712:                                      ; preds = %if.else.709
  %975 = load [256 x double]*, [256 x double]** @aa, align 32
  %976 = load double, double* %one, align 8
  %977 = load i32, i32* %unit, align 4
  %call713 = call i32 @set2d([256 x double]* %975, double %976, i32 %977)
  %978 = load [256 x double]*, [256 x double]** @bb, align 32
  %979 = load double, double* %any, align 8
  %980 = load i32, i32* %frac, align 4
  %call714 = call i32 @set2d([256 x double]* %978, double %979, i32 %980)
  %981 = load [256 x double]*, [256 x double]** @cc, align 32
  %982 = load double, double* %any, align 8
  %983 = load i32, i32* %frac, align 4
  %call715 = call i32 @set2d([256 x double]* %981, double %982, i32 %983)
  br label %if.end.1012

if.else.716:                                      ; preds = %if.else.709
  %984 = load i8*, i8** %name.addr, align 8
  %call717 = call i32 @strcmp(i8* %984, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.100, i32 0, i32 0)) #5
  %tobool718 = icmp ne i32 %call717, 0
  br i1 %tobool718, label %if.else.725, label %if.then.719

if.then.719:                                      ; preds = %if.else.716
  %985 = load double*, double** @a, align 32
  %986 = load double, double* %one, align 8
  %987 = load i32, i32* %unit, align 4
  %call720 = call i32 @set1d(double* %985, double %986, i32 %987)
  %988 = load double*, double** @b, align 32
  %989 = load double, double* %any, align 8
  %990 = load i32, i32* %frac, align 4
  %call721 = call i32 @set1d(double* %988, double %989, i32 %990)
  %991 = load double*, double** @c, align 32
  %992 = load double, double* %any, align 8
  %993 = load i32, i32* %frac, align 4
  %call722 = call i32 @set1d(double* %991, double %992, i32 %993)
  %994 = load double, double* %one, align 8
  %sub723 = fsub double -0.000000e+00, %994
  %995 = load double*, double** @a, align 32
  %arrayidx724 = getelementptr inbounds double, double* %995, i64 31999
  store double %sub723, double* %arrayidx724, align 8
  br label %if.end.1011

if.else.725:                                      ; preds = %if.else.716
  %996 = load i8*, i8** %name.addr, align 8
  %call726 = call i32 @strcmp(i8* %996, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i32 0, i32 0)) #5
  %tobool727 = icmp ne i32 %call726, 0
  br i1 %tobool727, label %if.else.731, label %if.then.728

if.then.728:                                      ; preds = %if.else.725
  %997 = load double*, double** @a, align 32
  %998 = load double, double* %any, align 8
  %999 = load i32, i32* %frac2, align 4
  %call729 = call i32 @set1d(double* %997, double %998, i32 %999)
  %1000 = load double*, double** @b, align 32
  %1001 = load double, double* %one, align 8
  %1002 = load i32, i32* %unit, align 4
  %call730 = call i32 @set1d(double* %1000, double %1001, i32 %1002)
  br label %if.end.1010

if.else.731:                                      ; preds = %if.else.725
  %1003 = load i8*, i8** %name.addr, align 8
  %call732 = call i32 @strcmp(i8* %1003, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.102, i32 0, i32 0)) #5
  %tobool733 = icmp ne i32 %call732, 0
  br i1 %tobool733, label %if.else.737, label %if.then.734

if.then.734:                                      ; preds = %if.else.731
  %1004 = load double, double* %one, align 8
  %1005 = load i32, i32* %unit, align 4
  %call735 = call i32 @set1d(double* getelementptr inbounds ([65536 x double], [65536 x double]* @array, i32 0, i32 0), double %1004, i32 %1005)
  %1006 = load double*, double** @a, align 32
  %1007 = load double, double* %any, align 8
  %1008 = load i32, i32* %frac2, align 4
  %call736 = call i32 @set1d(double* %1006, double %1007, i32 %1008)
  br label %if.end.1009

if.else.737:                                      ; preds = %if.else.731
  %1009 = load i8*, i8** %name.addr, align 8
  %call738 = call i32 @strcmp(i8* %1009, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0)) #5
  %tobool739 = icmp ne i32 %call738, 0
  br i1 %tobool739, label %if.else.743, label %if.then.740

if.then.740:                                      ; preds = %if.else.737
  %1010 = load double, double* %zero, align 8
  %1011 = load i32, i32* %unit, align 4
  %call741 = call i32 @set1d(double* getelementptr inbounds ([65536 x double], [65536 x double]* @array, i32 0, i32 0), double %1010, i32 %1011)
  %1012 = load double*, double** @a, align 32
  %1013 = load double, double* %any, align 8
  %1014 = load i32, i32* %frac2, align 4
  %call742 = call i32 @set1d(double* %1012, double %1013, i32 %1014)
  br label %if.end.1008

if.else.743:                                      ; preds = %if.else.737
  %1015 = load i8*, i8** %name.addr, align 8
  %call744 = call i32 @strcmp(i8* %1015, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0)) #5
  %tobool745 = icmp ne i32 %call744, 0
  br i1 %tobool745, label %if.else.749, label %if.then.746

if.then.746:                                      ; preds = %if.else.743
  %1016 = load double, double* %one, align 8
  %1017 = load i32, i32* %unit, align 4
  %call747 = call i32 @set1d(double* getelementptr inbounds ([65536 x double], [65536 x double]* @array, i32 0, i32 0), double %1016, i32 %1017)
  %1018 = load double*, double** @a, align 32
  %1019 = load double, double* %any, align 8
  %1020 = load i32, i32* %frac2, align 4
  %call748 = call i32 @set1d(double* %1018, double %1019, i32 %1020)
  br label %if.end.1007

if.else.749:                                      ; preds = %if.else.743
  %1021 = load i8*, i8** %name.addr, align 8
  %call750 = call i32 @strcmp(i8* %1021, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0)) #5
  %tobool751 = icmp ne i32 %call750, 0
  br i1 %tobool751, label %if.else.755, label %if.then.752

if.then.752:                                      ; preds = %if.else.749
  %1022 = load double*, double** @a, align 32
  %1023 = load double, double* %one, align 8
  %1024 = load i32, i32* %unit, align 4
  %call753 = call i32 @set1d(double* %1022, double %1023, i32 %1024)
  %1025 = load double*, double** @b, align 32
  %1026 = load double, double* %any, align 8
  %1027 = load i32, i32* %frac2, align 4
  %call754 = call i32 @set1d(double* %1025, double %1026, i32 %1027)
  br label %if.end.1006

if.else.755:                                      ; preds = %if.else.749
  %1028 = load i8*, i8** %name.addr, align 8
  %call756 = call i32 @strcmp(i8* %1028, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0)) #5
  %tobool757 = icmp ne i32 %call756, 0
  br i1 %tobool757, label %if.else.761, label %if.then.758

if.then.758:                                      ; preds = %if.else.755
  %1029 = load double*, double** @a, align 32
  %1030 = load double, double* %one, align 8
  %1031 = load i32, i32* %unit, align 4
  %call759 = call i32 @set1d(double* %1029, double %1030, i32 %1031)
  %1032 = load double*, double** @b, align 32
  %1033 = load double, double* %any, align 8
  %1034 = load i32, i32* %frac2, align 4
  %call760 = call i32 @set1d(double* %1032, double %1033, i32 %1034)
  br label %if.end.1005

if.else.761:                                      ; preds = %if.else.755
  %1035 = load i8*, i8** %name.addr, align 8
  %call762 = call i32 @strcmp(i8* %1035, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0)) #5
  %tobool763 = icmp ne i32 %call762, 0
  br i1 %tobool763, label %if.else.775, label %if.then.764

if.then.764:                                      ; preds = %if.else.761
  %1036 = load double*, double** @a, align 32
  %1037 = load double, double* %one, align 8
  %1038 = load i32, i32* %unit, align 4
  %call765 = call i32 @set1d(double* %1036, double %1037, i32 %1038)
  %1039 = load double*, double** @b, align 32
  %1040 = load double, double* %any, align 8
  %1041 = load i32, i32* %frac, align 4
  %call766 = call i32 @set1d(double* %1039, double %1040, i32 %1041)
  %1042 = load double*, double** @c, align 32
  %1043 = load double, double* %any, align 8
  %1044 = load i32, i32* %frac, align 4
  %call767 = call i32 @set1d(double* %1042, double %1043, i32 %1044)
  %1045 = load double*, double** @d, align 32
  %arrayidx768 = getelementptr inbounds double, double* %1045, i64 0
  %1046 = load double, double* %one, align 8
  %sub769 = fsub double -0.000000e+00, %1046
  %1047 = load i32, i32* %unit, align 4
  %call770 = call i32 @set1ds(i32 10666, double* %arrayidx768, double %sub769, i32 %1047)
  %1048 = load double*, double** @d, align 32
  %arrayidx771 = getelementptr inbounds double, double* %1048, i64 10666
  %1049 = load double, double* %zero, align 8
  %1050 = load i32, i32* %unit, align 4
  %call772 = call i32 @set1ds(i32 10666, double* %arrayidx771, double %1049, i32 %1050)
  %1051 = load double*, double** @d, align 32
  %arrayidx773 = getelementptr inbounds double, double* %1051, i64 21333
  %1052 = load double, double* %one, align 8
  %1053 = load i32, i32* %unit, align 4
  %call774 = call i32 @set1ds(i32 10667, double* %arrayidx773, double %1052, i32 %1053)
  br label %if.end.1004

if.else.775:                                      ; preds = %if.else.761
  %1054 = load i8*, i8** %name.addr, align 8
  %call776 = call i32 @strcmp(i8* %1054, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.108, i32 0, i32 0)) #5
  %tobool777 = icmp ne i32 %call776, 0
  br i1 %tobool777, label %if.else.784, label %if.then.778

if.then.778:                                      ; preds = %if.else.775
  %1055 = load double*, double** @a, align 32
  %1056 = load double, double* %one, align 8
  %1057 = load i32, i32* %unit, align 4
  %call779 = call i32 @set1d(double* %1055, double %1056, i32 %1057)
  %1058 = load double*, double** @b, align 32
  %1059 = load double, double* %any, align 8
  %1060 = load i32, i32* %frac, align 4
  %call780 = call i32 @set1d(double* %1058, double %1059, i32 %1060)
  %1061 = load double*, double** @c, align 32
  %1062 = load double, double* %any, align 8
  %1063 = load i32, i32* %frac, align 4
  %call781 = call i32 @set1d(double* %1061, double %1062, i32 %1063)
  %1064 = load double*, double** @d, align 32
  %1065 = load double, double* %any, align 8
  %1066 = load i32, i32* %frac, align 4
  %call782 = call i32 @set1d(double* %1064, double %1065, i32 %1066)
  %1067 = load double*, double** @e, align 32
  %1068 = load double, double* %any, align 8
  %1069 = load i32, i32* %frac, align 4
  %call783 = call i32 @set1d(double* %1067, double %1068, i32 %1069)
  br label %if.end.1003

if.else.784:                                      ; preds = %if.else.775
  %1070 = load i8*, i8** %name.addr, align 8
  %call785 = call i32 @strcmp(i8* %1070, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i32 0, i32 0)) #5
  %tobool786 = icmp ne i32 %call785, 0
  br i1 %tobool786, label %if.else.791, label %if.then.787

if.then.787:                                      ; preds = %if.else.784
  %1071 = load double*, double** @a, align 32
  %1072 = load double, double* %one, align 8
  %1073 = load i32, i32* %unit, align 4
  %call788 = call i32 @set1d(double* %1071, double %1072, i32 %1073)
  %1074 = load double*, double** @b, align 32
  %1075 = load double, double* %any, align 8
  %1076 = load i32, i32* %frac, align 4
  %call789 = call i32 @set1d(double* %1074, double %1075, i32 %1076)
  %1077 = load double*, double** @c, align 32
  %1078 = load double, double* %any, align 8
  %1079 = load i32, i32* %frac, align 4
  %call790 = call i32 @set1d(double* %1077, double %1078, i32 %1079)
  br label %if.end.1002

if.else.791:                                      ; preds = %if.else.784
  %1080 = load i8*, i8** %name.addr, align 8
  %call792 = call i32 @strcmp(i8* %1080, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.110, i32 0, i32 0)) #5
  %tobool793 = icmp ne i32 %call792, 0
  br i1 %tobool793, label %if.else.797, label %if.then.794

if.then.794:                                      ; preds = %if.else.791
  %1081 = load double*, double** @b, align 32
  %1082 = load double, double* %any, align 8
  %1083 = load i32, i32* %frac, align 4
  %call795 = call i32 @set1d(double* %1081, double %1082, i32 %1083)
  %1084 = load double*, double** @c, align 32
  %1085 = load double, double* %any, align 8
  %1086 = load i32, i32* %frac, align 4
  %call796 = call i32 @set1d(double* %1084, double %1085, i32 %1086)
  br label %if.end.1001

if.else.797:                                      ; preds = %if.else.791
  %1087 = load i8*, i8** %name.addr, align 8
  %call798 = call i32 @strcmp(i8* %1087, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.111, i32 0, i32 0)) #5
  %tobool799 = icmp ne i32 %call798, 0
  br i1 %tobool799, label %if.else.804, label %if.then.800

if.then.800:                                      ; preds = %if.else.797
  %1088 = load double*, double** @a, align 32
  %1089 = load double, double* %zero, align 8
  %1090 = load i32, i32* %unit, align 4
  %call801 = call i32 @set1d(double* %1088, double %1089, i32 %1090)
  %1091 = load double*, double** @b, align 32
  %1092 = load double, double* %one, align 8
  %1093 = load i32, i32* %unit, align 4
  %call802 = call i32 @set1d(double* %1091, double %1092, i32 %1093)
  %1094 = load double*, double** @c, align 32
  %1095 = load double, double* %small, align 8
  %1096 = load i32, i32* %unit, align 4
  %call803 = call i32 @set1d(double* %1094, double %1095, i32 %1096)
  br label %if.end.1000

if.else.804:                                      ; preds = %if.else.797
  %1097 = load i8*, i8** %name.addr, align 8
  %call805 = call i32 @strcmp(i8* %1097, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.112, i32 0, i32 0)) #5
  %tobool806 = icmp ne i32 %call805, 0
  br i1 %tobool806, label %if.else.810, label %if.then.807

if.then.807:                                      ; preds = %if.else.804
  %1098 = load double*, double** @a, align 32
  %1099 = load double, double* %zero, align 8
  %1100 = load i32, i32* %unit, align 4
  %call808 = call i32 @set1d(double* %1098, double %1099, i32 %1100)
  %1101 = load double*, double** @b, align 32
  %1102 = load double, double* %any, align 8
  %1103 = load i32, i32* %frac2, align 4
  %call809 = call i32 @set1d(double* %1101, double %1102, i32 %1103)
  br label %if.end.999

if.else.810:                                      ; preds = %if.else.804
  %1104 = load i8*, i8** %name.addr, align 8
  %call811 = call i32 @strcmp(i8* %1104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0)) #5
  %tobool812 = icmp ne i32 %call811, 0
  br i1 %tobool812, label %if.else.819, label %if.then.813

if.then.813:                                      ; preds = %if.else.810
  %1105 = load double*, double** @a, align 32
  %1106 = load double, double* %one, align 8
  %1107 = load i32, i32* %unit, align 4
  %call814 = call i32 @set1d(double* %1105, double %1106, i32 %1107)
  %1108 = load double*, double** @b, align 32
  %1109 = load double, double* %one, align 8
  %1110 = load i32, i32* %unit, align 4
  %call815 = call i32 @set1d(double* %1108, double %1109, i32 %1110)
  %1111 = load double*, double** @c, align 32
  %1112 = load double, double* %one, align 8
  %1113 = load i32, i32* %unit, align 4
  %call816 = call i32 @set1d(double* %1111, double %1112, i32 %1113)
  %1114 = load double*, double** @d, align 32
  %1115 = load double, double* %any, align 8
  %1116 = load i32, i32* %frac, align 4
  %call817 = call i32 @set1d(double* %1114, double %1115, i32 %1116)
  %1117 = load double*, double** @e, align 32
  %1118 = load double, double* %any, align 8
  %1119 = load i32, i32* %frac, align 4
  %call818 = call i32 @set1d(double* %1117, double %1118, i32 %1119)
  br label %if.end.998

if.else.819:                                      ; preds = %if.else.810
  %1120 = load i8*, i8** %name.addr, align 8
  %call820 = call i32 @strcmp(i8* %1120, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0)) #5
  %tobool821 = icmp ne i32 %call820, 0
  br i1 %tobool821, label %if.else.827, label %if.then.822

if.then.822:                                      ; preds = %if.else.819
  %1121 = load double*, double** @a, align 32
  %1122 = load double, double* %one, align 8
  %1123 = load i32, i32* %unit, align 4
  %call823 = call i32 @set1d(double* %1121, double %1122, i32 %1123)
  %1124 = load double*, double** @b, align 32
  %1125 = load double, double* %any, align 8
  %1126 = load i32, i32* %frac, align 4
  %call824 = call i32 @set1d(double* %1124, double %1125, i32 %1126)
  %1127 = load double*, double** @c, align 32
  %1128 = load double, double* %any, align 8
  %1129 = load i32, i32* %frac, align 4
  %call825 = call i32 @set1d(double* %1127, double %1128, i32 %1129)
  %1130 = load double*, double** @d, align 32
  %1131 = load double, double* %any, align 8
  %1132 = load i32, i32* %frac, align 4
  %call826 = call i32 @set1d(double* %1130, double %1131, i32 %1132)
  br label %if.end.997

if.else.827:                                      ; preds = %if.else.819
  %1133 = load i8*, i8** %name.addr, align 8
  %call828 = call i32 @strcmp(i8* %1133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0)) #5
  %tobool829 = icmp ne i32 %call828, 0
  br i1 %tobool829, label %if.else.834, label %if.then.830

if.then.830:                                      ; preds = %if.else.827
  %1134 = load double*, double** @a, align 32
  %1135 = load double, double* %one, align 8
  %1136 = load i32, i32* %unit, align 4
  %call831 = call i32 @set1d(double* %1134, double %1135, i32 %1136)
  %1137 = load double*, double** @b, align 32
  %1138 = load double, double* %any, align 8
  %1139 = load i32, i32* %frac, align 4
  %call832 = call i32 @set1d(double* %1137, double %1138, i32 %1139)
  %1140 = load double*, double** @c, align 32
  %1141 = load double, double* %any, align 8
  %1142 = load i32, i32* %frac, align 4
  %call833 = call i32 @set1d(double* %1140, double %1141, i32 %1142)
  br label %if.end.996

if.else.834:                                      ; preds = %if.else.827
  %1143 = load i8*, i8** %name.addr, align 8
  %call835 = call i32 @strcmp(i8* %1143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.116, i32 0, i32 0)) #5
  %tobool836 = icmp ne i32 %call835, 0
  br i1 %tobool836, label %if.else.842, label %if.then.837

if.then.837:                                      ; preds = %if.else.834
  %1144 = load double*, double** @a, align 32
  %1145 = load double, double* %zero, align 8
  %1146 = load i32, i32* %unit, align 4
  %call838 = call i32 @set1d(double* %1144, double %1145, i32 %1146)
  %1147 = load double*, double** @b, align 32
  %1148 = load double, double* %one, align 8
  %1149 = load i32, i32* %unit, align 4
  %call839 = call i32 @set1d(double* %1147, double %1148, i32 %1149)
  %1150 = load double*, double** @c, align 32
  %1151 = load double, double* %any, align 8
  %1152 = load i32, i32* %frac, align 4
  %call840 = call i32 @set1d(double* %1150, double %1151, i32 %1152)
  %1153 = load double*, double** @d, align 32
  %1154 = load double, double* %any, align 8
  %1155 = load i32, i32* %frac, align 4
  %call841 = call i32 @set1d(double* %1153, double %1154, i32 %1155)
  br label %if.end.995

if.else.842:                                      ; preds = %if.else.834
  %1156 = load i8*, i8** %name.addr, align 8
  %call843 = call i32 @strcmp(i8* %1156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.117, i32 0, i32 0)) #5
  %tobool844 = icmp ne i32 %call843, 0
  br i1 %tobool844, label %if.else.848, label %if.then.845

if.then.845:                                      ; preds = %if.else.842
  %1157 = load double*, double** @a, align 32
  %1158 = load double, double* %one, align 8
  %1159 = load i32, i32* %unit, align 4
  %call846 = call i32 @set1d(double* %1157, double %1158, i32 %1159)
  %1160 = load double*, double** @b, align 32
  %1161 = load double, double* %any, align 8
  %1162 = load i32, i32* %frac, align 4
  %call847 = call i32 @set1d(double* %1160, double %1161, i32 %1162)
  br label %if.end.994

if.else.848:                                      ; preds = %if.else.842
  %1163 = load i8*, i8** %name.addr, align 8
  %call849 = call i32 @strcmp(i8* %1163, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.118, i32 0, i32 0)) #5
  %tobool850 = icmp ne i32 %call849, 0
  br i1 %tobool850, label %if.else.855, label %if.then.851

if.then.851:                                      ; preds = %if.else.848
  %1164 = load double*, double** @a, align 32
  %1165 = load double, double* %zero, align 8
  %1166 = load i32, i32* %unit, align 4
  %call852 = call i32 @set1d(double* %1164, double %1165, i32 %1166)
  %1167 = load double*, double** @b, align 32
  %1168 = load double, double* %one, align 8
  %1169 = load i32, i32* %unit, align 4
  %call853 = call i32 @set1d(double* %1167, double %1168, i32 %1169)
  %1170 = load double*, double** @c, align 32
  %1171 = load double, double* %any, align 8
  %1172 = load i32, i32* %frac2, align 4
  %call854 = call i32 @set1d(double* %1170, double %1171, i32 %1172)
  br label %if.end.993

if.else.855:                                      ; preds = %if.else.848
  %1173 = load i8*, i8** %name.addr, align 8
  %call856 = call i32 @strcmp(i8* %1173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0)) #5
  %tobool857 = icmp ne i32 %call856, 0
  br i1 %tobool857, label %if.else.863, label %if.then.858

if.then.858:                                      ; preds = %if.else.855
  %1174 = load double*, double** @a, align 32
  %1175 = load double, double* %zero, align 8
  %1176 = load i32, i32* %unit, align 4
  %call859 = call i32 @set1d(double* %1174, double %1175, i32 %1176)
  %1177 = load double*, double** @b, align 32
  %1178 = load double, double* %one, align 8
  %1179 = load i32, i32* %unit, align 4
  %call860 = call i32 @set1d(double* %1177, double %1178, i32 %1179)
  %1180 = load double*, double** @c, align 32
  %1181 = load double, double* %any, align 8
  %1182 = load i32, i32* %frac, align 4
  %call861 = call i32 @set1d(double* %1180, double %1181, i32 %1182)
  %1183 = load double*, double** @d, align 32
  %1184 = load double, double* %any, align 8
  %1185 = load i32, i32* %frac, align 4
  %call862 = call i32 @set1d(double* %1183, double %1184, i32 %1185)
  br label %if.end.992

if.else.863:                                      ; preds = %if.else.855
  %1186 = load i8*, i8** %name.addr, align 8
  %call864 = call i32 @strcmp(i8* %1186, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0)) #5
  %tobool865 = icmp ne i32 %call864, 0
  br i1 %tobool865, label %if.else.869, label %if.then.866

if.then.866:                                      ; preds = %if.else.863
  %1187 = load double*, double** @a, align 32
  %1188 = load double, double* %any, align 8
  %1189 = load i32, i32* %frac, align 4
  %call867 = call i32 @set1d(double* %1187, double %1188, i32 %1189)
  %1190 = load double*, double** @b, align 32
  %1191 = load double, double* %any, align 8
  %1192 = load i32, i32* %frac, align 4
  %call868 = call i32 @set1d(double* %1190, double %1191, i32 %1192)
  br label %if.end.991

if.else.869:                                      ; preds = %if.else.863
  %1193 = load i8*, i8** %name.addr, align 8
  %call870 = call i32 @strcmp(i8* %1193, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.121, i32 0, i32 0)) #5
  %tobool871 = icmp ne i32 %call870, 0
  br i1 %tobool871, label %if.else.875, label %if.then.872

if.then.872:                                      ; preds = %if.else.869
  %1194 = load double*, double** @a, align 32
  %1195 = load double, double* %any, align 8
  %1196 = load i32, i32* %frac, align 4
  %call873 = call i32 @set1d(double* %1194, double %1195, i32 %1196)
  %1197 = load [256 x double]*, [256 x double]** @aa, align 32
  %1198 = load double, double* %any, align 8
  %1199 = load i32, i32* %frac, align 4
  %call874 = call i32 @set2d([256 x double]* %1197, double %1198, i32 %1199)
  br label %if.end.990

if.else.875:                                      ; preds = %if.else.869
  %1200 = load i8*, i8** %name.addr, align 8
  %call876 = call i32 @strcmp(i8* %1200, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0)) #5
  %tobool877 = icmp ne i32 %call876, 0
  br i1 %tobool877, label %if.else.883, label %if.then.878

if.then.878:                                      ; preds = %if.else.875
  %1201 = load double*, double** @a, align 32
  %1202 = load double, double* %zero, align 8
  %1203 = load i32, i32* %unit, align 4
  %call879 = call i32 @set1d(double* %1201, double %1202, i32 %1203)
  %1204 = load double*, double** @b, align 32
  %1205 = load double, double* %one, align 8
  %1206 = load i32, i32* %unit, align 4
  %call880 = call i32 @set1d(double* %1204, double %1205, i32 %1206)
  %1207 = load double*, double** @c, align 32
  %1208 = load double, double* %any, align 8
  %1209 = load i32, i32* %frac, align 4
  %call881 = call i32 @set1d(double* %1207, double %1208, i32 %1209)
  %1210 = load double*, double** @d, align 32
  %1211 = load double, double* %any, align 8
  %1212 = load i32, i32* %frac, align 4
  %call882 = call i32 @set1d(double* %1210, double %1211, i32 %1212)
  br label %if.end.989

if.else.883:                                      ; preds = %if.else.875
  %1213 = load i8*, i8** %name.addr, align 8
  %call884 = call i32 @strcmp(i8* %1213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0)) #5
  %tobool885 = icmp ne i32 %call884, 0
  br i1 %tobool885, label %if.else.890, label %if.then.886

if.then.886:                                      ; preds = %if.else.883
  %1214 = load double*, double** @a, align 32
  %1215 = load double, double* %one, align 8
  %1216 = load i32, i32* %unit, align 4
  %call887 = call i32 @set1d(double* %1214, double %1215, i32 %1216)
  %1217 = load double*, double** @b, align 32
  %1218 = load double, double* %any, align 8
  %1219 = load i32, i32* %frac, align 4
  %call888 = call i32 @set1d(double* %1217, double %1218, i32 %1219)
  %1220 = load double*, double** @c, align 32
  %1221 = load double, double* %any, align 8
  %1222 = load i32, i32* %frac, align 4
  %call889 = call i32 @set1d(double* %1220, double %1221, i32 %1222)
  br label %if.end.988

if.else.890:                                      ; preds = %if.else.883
  %1223 = load i8*, i8** %name.addr, align 8
  %call891 = call i32 @strcmp(i8* %1223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.124, i32 0, i32 0)) #5
  %tobool892 = icmp ne i32 %call891, 0
  br i1 %tobool892, label %if.else.896, label %if.then.893

if.then.893:                                      ; preds = %if.else.890
  %1224 = load double*, double** @a, align 32
  %1225 = load double, double* %zero, align 8
  %1226 = load i32, i32* %unit, align 4
  %call894 = call i32 @set1d(double* %1224, double %1225, i32 %1226)
  %1227 = load double*, double** @b, align 32
  %1228 = load double, double* %any, align 8
  %1229 = load i32, i32* %frac2, align 4
  %call895 = call i32 @set1d(double* %1227, double %1228, i32 %1229)
  br label %if.end.987

if.else.896:                                      ; preds = %if.else.890
  %1230 = load i8*, i8** %name.addr, align 8
  %call897 = call i32 @strcmp(i8* %1230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i32 0, i32 0)) #5
  %tobool898 = icmp ne i32 %call897, 0
  br i1 %tobool898, label %if.else.902, label %if.then.899

if.then.899:                                      ; preds = %if.else.896
  %1231 = load double*, double** @a, align 32
  %1232 = load double, double* %zero, align 8
  %1233 = load i32, i32* %unit, align 4
  %call900 = call i32 @set1d(double* %1231, double %1232, i32 %1233)
  %1234 = load double*, double** @b, align 32
  %1235 = load double, double* %any, align 8
  %1236 = load i32, i32* %frac2, align 4
  %call901 = call i32 @set1d(double* %1234, double %1235, i32 %1236)
  br label %if.end.986

if.else.902:                                      ; preds = %if.else.896
  %1237 = load i8*, i8** %name.addr, align 8
  %call903 = call i32 @strcmp(i8* %1237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0)) #5
  %tobool904 = icmp ne i32 %call903, 0
  br i1 %tobool904, label %if.else.908, label %if.then.905

if.then.905:                                      ; preds = %if.else.902
  %1238 = load double*, double** @a, align 32
  %1239 = load double, double* %zero, align 8
  %1240 = load i32, i32* %unit, align 4
  %call906 = call i32 @set1d(double* %1238, double %1239, i32 %1240)
  %1241 = load double*, double** @b, align 32
  %1242 = load double, double* %any, align 8
  %1243 = load i32, i32* %frac2, align 4
  %call907 = call i32 @set1d(double* %1241, double %1242, i32 %1243)
  br label %if.end.985

if.else.908:                                      ; preds = %if.else.902
  %1244 = load i8*, i8** %name.addr, align 8
  %call909 = call i32 @strcmp(i8* %1244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.127, i32 0, i32 0)) #5
  %tobool910 = icmp ne i32 %call909, 0
  br i1 %tobool910, label %if.else.914, label %if.then.911

if.then.911:                                      ; preds = %if.else.908
  %1245 = load double*, double** @a, align 32
  %1246 = load double, double* %zero, align 8
  %1247 = load i32, i32* %unit, align 4
  %call912 = call i32 @set1d(double* %1245, double %1246, i32 %1247)
  %1248 = load double*, double** @b, align 32
  %1249 = load double, double* %any, align 8
  %1250 = load i32, i32* %frac2, align 4
  %call913 = call i32 @set1d(double* %1248, double %1249, i32 %1250)
  br label %if.end.984

if.else.914:                                      ; preds = %if.else.908
  %1251 = load i8*, i8** %name.addr, align 8
  %call915 = call i32 @strcmp(i8* %1251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.128, i32 0, i32 0)) #5
  %tobool916 = icmp ne i32 %call915, 0
  br i1 %tobool916, label %if.else.920, label %if.then.917

if.then.917:                                      ; preds = %if.else.914
  %1252 = load double*, double** @a, align 32
  %1253 = load double, double* %zero, align 8
  %1254 = load i32, i32* %unit, align 4
  %call918 = call i32 @set1d(double* %1252, double %1253, i32 %1254)
  %1255 = load double*, double** @b, align 32
  %1256 = load double, double* %any, align 8
  %1257 = load i32, i32* %frac2, align 4
  %call919 = call i32 @set1d(double* %1255, double %1256, i32 %1257)
  br label %if.end.983

if.else.920:                                      ; preds = %if.else.914
  %1258 = load i8*, i8** %name.addr, align 8
  %call921 = call i32 @strcmp(i8* %1258, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.129, i32 0, i32 0)) #5
  %tobool922 = icmp ne i32 %call921, 0
  br i1 %tobool922, label %if.else.926, label %if.then.923

if.then.923:                                      ; preds = %if.else.920
  %1259 = load double*, double** @a, align 32
  %1260 = load double, double* %one, align 8
  %1261 = load i32, i32* %unit, align 4
  %call924 = call i32 @set1d(double* %1259, double %1260, i32 %1261)
  %1262 = load double*, double** @b, align 32
  %1263 = load double, double* %one, align 8
  %1264 = load i32, i32* %unit, align 4
  %call925 = call i32 @set1d(double* %1262, double %1263, i32 %1264)
  br label %if.end.982

if.else.926:                                      ; preds = %if.else.920
  %1265 = load i8*, i8** %name.addr, align 8
  %call927 = call i32 @strcmp(i8* %1265, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i32 0, i32 0)) #5
  %tobool928 = icmp ne i32 %call927, 0
  br i1 %tobool928, label %if.else.933, label %if.then.929

if.then.929:                                      ; preds = %if.else.926
  %1266 = load double*, double** @a, align 32
  %1267 = load double, double* %one, align 8
  %1268 = load i32, i32* %unit, align 4
  %call930 = call i32 @set1d(double* %1266, double %1267, i32 %1268)
  %1269 = load double*, double** @b, align 32
  %1270 = load double, double* %any, align 8
  %1271 = load i32, i32* %frac, align 4
  %call931 = call i32 @set1d(double* %1269, double %1270, i32 %1271)
  %1272 = load double*, double** @c, align 32
  %1273 = load double, double* %any, align 8
  %1274 = load i32, i32* %frac, align 4
  %call932 = call i32 @set1d(double* %1272, double %1273, i32 %1274)
  br label %if.end.981

if.else.933:                                      ; preds = %if.else.926
  %1275 = load i8*, i8** %name.addr, align 8
  %call934 = call i32 @strcmp(i8* %1275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0)) #5
  %tobool935 = icmp ne i32 %call934, 0
  br i1 %tobool935, label %if.else.939, label %if.then.936

if.then.936:                                      ; preds = %if.else.933
  %1276 = load double*, double** @a, align 32
  %1277 = load double, double* %one, align 8
  %1278 = load i32, i32* %unit, align 4
  %call937 = call i32 @set1d(double* %1276, double %1277, i32 %1278)
  %1279 = load double*, double** @b, align 32
  %1280 = load double, double* %any, align 8
  %1281 = load i32, i32* %frac2, align 4
  %call938 = call i32 @set1d(double* %1279, double %1280, i32 %1281)
  br label %if.end.980

if.else.939:                                      ; preds = %if.else.933
  %1282 = load i8*, i8** %name.addr, align 8
  %call940 = call i32 @strcmp(i8* %1282, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i32 0, i32 0)) #5
  %tobool941 = icmp ne i32 %call940, 0
  br i1 %tobool941, label %if.else.947, label %if.then.942

if.then.942:                                      ; preds = %if.else.939
  %1283 = load double*, double** @a, align 32
  %1284 = load double, double* %any, align 8
  %1285 = load i32, i32* %frac2, align 4
  %call943 = call i32 @set1d(double* %1283, double %1284, i32 %1285)
  %1286 = load double*, double** @b, align 32
  %1287 = load double, double* %one, align 8
  %1288 = load i32, i32* %unit, align 4
  %call944 = call i32 @set1d(double* %1286, double %1287, i32 %1288)
  %1289 = load double*, double** @c, align 32
  %1290 = load double, double* %one, align 8
  %sub945 = fsub double -0.000000e+00, %1290
  %1291 = load i32, i32* %unit, align 4
  %call946 = call i32 @set1d(double* %1289, double %sub945, i32 %1291)
  br label %if.end.979

if.else.947:                                      ; preds = %if.else.939
  %1292 = load i8*, i8** %name.addr, align 8
  %call948 = call i32 @strcmp(i8* %1292, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0)) #5
  %tobool949 = icmp ne i32 %call948, 0
  br i1 %tobool949, label %if.else.954, label %if.then.950

if.then.950:                                      ; preds = %if.else.947
  %1293 = load double*, double** @a, align 32
  %1294 = load double, double* %one, align 8
  %1295 = load i32, i32* %unit, align 4
  %call951 = call i32 @set1d(double* %1293, double %1294, i32 %1295)
  %1296 = load double*, double** @b, align 32
  %1297 = load double, double* %two, align 8
  %1298 = load i32, i32* %unit, align 4
  %call952 = call i32 @set1d(double* %1296, double %1297, i32 %1298)
  %1299 = load double*, double** @c, align 32
  %1300 = load double, double* %half, align 8
  %1301 = load i32, i32* %unit, align 4
  %call953 = call i32 @set1d(double* %1299, double %1300, i32 %1301)
  br label %if.end.978

if.else.954:                                      ; preds = %if.else.947
  %1302 = load i8*, i8** %name.addr, align 8
  %call955 = call i32 @strcmp(i8* %1302, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0)) #5
  %tobool956 = icmp ne i32 %call955, 0
  br i1 %tobool956, label %if.else.959, label %if.then.957

if.then.957:                                      ; preds = %if.else.954
  %1303 = load double*, double** @a, align 32
  %1304 = load double, double* %any, align 8
  %1305 = load i32, i32* %frac, align 4
  %call958 = call i32 @set1d(double* %1303, double %1304, i32 %1305)
  br label %if.end.977

if.else.959:                                      ; preds = %if.else.954
  %1306 = load i8*, i8** %name.addr, align 8
  %call960 = call i32 @strcmp(i8* %1306, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0)) #5
  %tobool961 = icmp ne i32 %call960, 0
  br i1 %tobool961, label %if.else.965, label %if.then.962

if.then.962:                                      ; preds = %if.else.959
  %1307 = load double*, double** @a, align 32
  %1308 = load double, double* %any, align 8
  %1309 = load i32, i32* %frac, align 4
  %call963 = call i32 @set1d(double* %1307, double %1308, i32 %1309)
  %1310 = load double*, double** @b, align 32
  %1311 = load double, double* %any, align 8
  %1312 = load i32, i32* %frac, align 4
  %call964 = call i32 @set1d(double* %1310, double %1311, i32 %1312)
  br label %if.end.976

if.else.965:                                      ; preds = %if.else.959
  %1313 = load i8*, i8** %name.addr, align 8
  %call966 = call i32 @strcmp(i8* %1313, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.136, i32 0, i32 0)) #5
  %tobool967 = icmp ne i32 %call966, 0
  br i1 %tobool967, label %if.else.975, label %if.then.968

if.then.968:                                      ; preds = %if.else.965
  %1314 = load double*, double** @a, align 32
  %1315 = load double, double* %any, align 8
  %1316 = load i32, i32* %frac, align 4
  %call969 = call i32 @set1d(double* %1314, double %1315, i32 %1316)
  %1317 = load double*, double** @b, align 32
  %1318 = load double, double* %any, align 8
  %1319 = load i32, i32* %frac, align 4
  %call970 = call i32 @set1d(double* %1317, double %1318, i32 %1319)
  %1320 = load double*, double** @c, align 32
  %1321 = load double, double* %one, align 8
  %1322 = load i32, i32* %frac, align 4
  %call971 = call i32 @set1d(double* %1320, double %1321, i32 %1322)
  %1323 = load double*, double** @d, align 32
  %1324 = load double, double* %two, align 8
  %1325 = load i32, i32* %frac, align 4
  %call972 = call i32 @set1d(double* %1323, double %1324, i32 %1325)
  %1326 = load double*, double** @e, align 32
  %1327 = load double, double* %half, align 8
  %1328 = load i32, i32* %frac, align 4
  %call973 = call i32 @set1d(double* %1326, double %1327, i32 %1328)
  %1329 = load [256 x double]*, [256 x double]** @aa, align 32
  %1330 = load double, double* %any, align 8
  %1331 = load i32, i32* %frac, align 4
  %call974 = call i32 @set2d([256 x double]* %1329, double %1330, i32 %1331)
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
define i32 @s311() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %sum = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 %1, 10
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load double, double* %sum, align 8
  %add = fadd double %6, %5
  store double %add, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %8 = load double*, double** @a, align 32
  %9 = load double*, double** @b, align 32
  %10 = load double*, double** @c, align 32
  %11 = load double*, double** @d, align 32
  %12 = load double*, double** @e, align 32
  %13 = load [256 x double]*, [256 x double]** @aa, align 32
  %14 = load [256 x double]*, [256 x double]** @bb, align 32
  %15 = load [256 x double]*, [256 x double]** @cc, align 32
  %16 = load double, double* %sum, align 8
  %call4 = call i32 @dummy(double* %8, double* %9, double* %10, double* %11, double* %12, [256 x double]* %13, [256 x double]* %14, [256 x double]* %15, double %16)
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %17 = load i32, i32* %nl, align 4
  %inc6 = add nsw i32 %17, 1
  store i32 %inc6, i32* %nl, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %18 = load i64, i64* %end_t, align 8
  %19 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %18, %19
  store i64 %sub, i64* %clock_dif, align 8
  %20 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %20 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %21 = load double, double* %clock_dif_sec, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.137, i32 0, i32 0), double %21)
  call void @check(i32 1)
  ret i32 0
}

declare i32 @dummy(double*, double*, double*, double*, double*, [256 x double]*, [256 x double]*, [256 x double]*, double) #1

; Function Attrs: nounwind uwtable
define double @test(double* %A) #0 {
entry:
  %A.addr = alloca double*, align 8
  %s = alloca double, align 8
  %i = alloca i32, align 4
  store double* %A, double** %A.addr, align 8
  store double 0.000000e+00, double* %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load double*, double** %A.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load double, double* %s, align 8
  %add = fadd double %4, %3
  store double %add, double* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load double, double* %s, align 8
  ret double %6
}

; Function Attrs: nounwind uwtable
define i32 @s31111() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %sum = alloca double, align 8
  %nl = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 2000, %1
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  %2 = load double*, double** @a, align 32
  %call1 = call double @test(double* %2)
  %3 = load double, double* %sum, align 8
  %add = fadd double %3, %call1
  store double %add, double* %sum, align 8
  %4 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %4, i64 4
  %call2 = call double @test(double* %arrayidx)
  %5 = load double, double* %sum, align 8
  %add3 = fadd double %5, %call2
  store double %add3, double* %sum, align 8
  %6 = load double*, double** @a, align 32
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 8
  %call5 = call double @test(double* %arrayidx4)
  %7 = load double, double* %sum, align 8
  %add6 = fadd double %7, %call5
  store double %add6, double* %sum, align 8
  %8 = load double*, double** @a, align 32
  %arrayidx7 = getelementptr inbounds double, double* %8, i64 12
  %call8 = call double @test(double* %arrayidx7)
  %9 = load double, double* %sum, align 8
  %add9 = fadd double %9, %call8
  store double %add9, double* %sum, align 8
  %10 = load double*, double** @a, align 32
  %arrayidx10 = getelementptr inbounds double, double* %10, i64 16
  %call11 = call double @test(double* %arrayidx10)
  %11 = load double, double* %sum, align 8
  %add12 = fadd double %11, %call11
  store double %add12, double* %sum, align 8
  %12 = load double*, double** @a, align 32
  %arrayidx13 = getelementptr inbounds double, double* %12, i64 20
  %call14 = call double @test(double* %arrayidx13)
  %13 = load double, double* %sum, align 8
  %add15 = fadd double %13, %call14
  store double %add15, double* %sum, align 8
  %14 = load double*, double** @a, align 32
  %arrayidx16 = getelementptr inbounds double, double* %14, i64 24
  %call17 = call double @test(double* %arrayidx16)
  %15 = load double, double* %sum, align 8
  %add18 = fadd double %15, %call17
  store double %add18, double* %sum, align 8
  %16 = load double*, double** @a, align 32
  %arrayidx19 = getelementptr inbounds double, double* %16, i64 28
  %call20 = call double @test(double* %arrayidx19)
  %17 = load double, double* %sum, align 8
  %add21 = fadd double %17, %call20
  store double %add21, double* %sum, align 8
  %18 = load double*, double** @a, align 32
  %19 = load double*, double** @b, align 32
  %20 = load double*, double** @c, align 32
  %21 = load double*, double** @d, align 32
  %22 = load double*, double** @e, align 32
  %23 = load [256 x double]*, [256 x double]** @aa, align 32
  %24 = load [256 x double]*, [256 x double]** @bb, align 32
  %25 = load [256 x double]*, [256 x double]** @cc, align 32
  %26 = load double, double* %sum, align 8
  %call22 = call i32 @dummy(double* %18, double* %19, double* %20, double* %21, double* %22, [256 x double]* %23, [256 x double]* %24, [256 x double]* %25, double %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %nl, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %nl, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %28 = load i64, i64* %end_t, align 8
  %29 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %28, %29
  store i64 %sub, i64* %clock_dif, align 8
  %30 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %30 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %31 = load double, double* %clock_dif_sec, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.138, i32 0, i32 0), double %31)
  call void @check(i32 1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s312() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %prod = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 10, %1
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store double 1.000000e+00, double* %prod, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load double, double* %prod, align 8
  %mul4 = fmul double %6, %5
  store double %mul4, double* %prod, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %8 = load double*, double** @a, align 32
  %9 = load double*, double** @b, align 32
  %10 = load double*, double** @c, align 32
  %11 = load double*, double** @d, align 32
  %12 = load double*, double** @e, align 32
  %13 = load [256 x double]*, [256 x double]** @aa, align 32
  %14 = load [256 x double]*, [256 x double]** @bb, align 32
  %15 = load [256 x double]*, [256 x double]** @cc, align 32
  %16 = load double, double* %prod, align 8
  %call5 = call i32 @dummy(double* %8, double* %9, double* %10, double* %11, double* %12, [256 x double]* %13, [256 x double]* %14, [256 x double]* %15, double %16)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %17 = load i32, i32* %nl, align 4
  %inc7 = add nsw i32 %17, 1
  store i32 %inc7, i32* %nl, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %18 = load i64, i64* %end_t, align 8
  %19 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %18, %19
  store i64 %sub, i64* %clock_dif, align 8
  %20 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %20 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %21 = load double, double* %clock_dif_sec, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.139, i32 0, i32 0), double %21)
  %22 = load double, double* %prod, align 8
  store double %22, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s313() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %dot = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 %1, 5
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %dot, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load double*, double** @b, align 32
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 %idxprom4
  %8 = load double, double* %arrayidx5, align 8
  %mul6 = fmul double %5, %8
  %9 = load double, double* %dot, align 8
  %add = fadd double %9, %mul6
  store double %add, double* %dot, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %11 = load double*, double** @a, align 32
  %12 = load double*, double** @b, align 32
  %13 = load double*, double** @c, align 32
  %14 = load double*, double** @d, align 32
  %15 = load double*, double** @e, align 32
  %16 = load [256 x double]*, [256 x double]** @aa, align 32
  %17 = load [256 x double]*, [256 x double]** @bb, align 32
  %18 = load [256 x double]*, [256 x double]** @cc, align 32
  %19 = load double, double* %dot, align 8
  %call7 = call i32 @dummy(double* %11, double* %12, double* %13, double* %14, double* %15, [256 x double]* %16, [256 x double]* %17, [256 x double]* %18, double %19)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %20 = load i32, i32* %nl, align 4
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, i32* %nl, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %21 = load i64, i64* %end_t, align 8
  %22 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %21, %22
  store i64 %sub, i64* %clock_dif, align 8
  %23 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %23 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %24 = load double, double* %clock_dif_sec, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.140, i32 0, i32 0), double %24)
  %25 = load double, double* %dot, align 8
  store double %25, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s314() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %x = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 %1, 5
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8
  store double %3, double* %x, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** @a, align 32
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx4, align 8
  %8 = load double, double* %x, align 8
  %cmp5 = fcmp ogt double %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load double*, double** @a, align 32
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 %idxprom6
  %11 = load double, double* %arrayidx7, align 8
  store double %11, double* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %13 = load double*, double** @a, align 32
  %14 = load double*, double** @b, align 32
  %15 = load double*, double** @c, align 32
  %16 = load double*, double** @d, align 32
  %17 = load double*, double** @e, align 32
  %18 = load [256 x double]*, [256 x double]** @aa, align 32
  %19 = load [256 x double]*, [256 x double]** @bb, align 32
  %20 = load [256 x double]*, [256 x double]** @cc, align 32
  %21 = load double, double* %x, align 8
  %call8 = call i32 @dummy(double* %13, double* %14, double* %15, double* %16, double* %17, [256 x double]* %18, [256 x double]* %19, [256 x double]* %20, double %21)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %22 = load i32, i32* %nl, align 4
  %inc10 = add nsw i32 %22, 1
  store i32 %inc10, i32* %nl, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %23 = load i64, i64* %end_t, align 8
  %24 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %23, %24
  store i64 %sub, i64* %clock_dif, align 8
  %25 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %25 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %26 = load double, double* %clock_dif_sec, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i32 0, i32 0), double %26)
  %27 = load double, double* %x, align 8
  store double %27, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s315() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %i = alloca i32, align 4
  %x = alloca double, align 8
  %chksum = alloca double, align 8
  %index = alloca i32, align 4
  %nl = alloca i32, align 4
  %i6 = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 32000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %1, 7
  %rem = srem i32 %mul, 32000
  %conv = sitofp i32 %rem to double
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double %conv, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.22, %for.end
  %5 = load i32, i32* %nl, align 4
  %6 = load i32, i32* @ntimes, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.4, label %for.end.24

for.body.4:                                       ; preds = %for.cond.1
  %7 = load double*, double** @a, align 32
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 0
  %8 = load double, double* %arrayidx5, align 8
  store double %8, double* %x, align 8
  store i32 0, i32* %index, align 4
  store i32 0, i32* %i6, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.17, %for.body.4
  %9 = load i32, i32* %i6, align 4
  %cmp8 = icmp slt i32 %9, 32000
  br i1 %cmp8, label %for.body.10, label %for.end.19

for.body.10:                                      ; preds = %for.cond.7
  %10 = load i32, i32* %i6, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load double*, double** @a, align 32
  %arrayidx12 = getelementptr inbounds double, double* %11, i64 %idxprom11
  %12 = load double, double* %arrayidx12, align 8
  %13 = load double, double* %x, align 8
  %cmp13 = fcmp ogt double %12, %13
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.10
  %14 = load i32, i32* %i6, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load double*, double** @a, align 32
  %arrayidx16 = getelementptr inbounds double, double* %15, i64 %idxprom15
  %16 = load double, double* %arrayidx16, align 8
  store double %16, double* %x, align 8
  %17 = load i32, i32* %i6, align 4
  store i32 %17, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.10
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end
  %18 = load i32, i32* %i6, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %i6, align 4
  br label %for.cond.7

for.end.19:                                       ; preds = %for.cond.7
  %19 = load double, double* %x, align 8
  %20 = load i32, i32* %index, align 4
  %conv20 = sitofp i32 %20 to double
  %add = fadd double %19, %conv20
  store double %add, double* %chksum, align 8
  %21 = load double*, double** @a, align 32
  %22 = load double*, double** @b, align 32
  %23 = load double*, double** @c, align 32
  %24 = load double*, double** @d, align 32
  %25 = load double*, double** @e, align 32
  %26 = load [256 x double]*, [256 x double]** @aa, align 32
  %27 = load [256 x double]*, [256 x double]** @bb, align 32
  %28 = load [256 x double]*, [256 x double]** @cc, align 32
  %29 = load double, double* %chksum, align 8
  %call21 = call i32 @dummy(double* %21, double* %22, double* %23, double* %24, double* %25, [256 x double]* %26, [256 x double]* %27, [256 x double]* %28, double %29)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.19
  %30 = load i32, i32* %nl, align 4
  %inc23 = add nsw i32 %30, 1
  store i32 %inc23, i32* %nl, align 4
  br label %for.cond.1

for.end.24:                                       ; preds = %for.cond.1
  store i64 0, i64* %end_t, align 8
  %31 = load i64, i64* %end_t, align 8
  %32 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %31, %32
  store i64 %sub, i64* %clock_dif, align 8
  %33 = load i64, i64* %clock_dif, align 8
  %conv25 = sitofp i64 %33 to double
  %div = fdiv double %conv25, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %34 = load double, double* %clock_dif_sec, align 8
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), double %34)
  %35 = load i32, i32* %index, align 4
  %conv27 = sitofp i32 %35 to double
  %36 = load double, double* %x, align 8
  %add28 = fadd double %conv27, %36
  %add29 = fadd double %add28, 1.000000e+00
  store double %add29, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s316() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %x = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 %1, 5
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8
  store double %3, double* %x, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** @a, align 32
  %arrayidx4 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx4, align 8
  %8 = load double, double* %x, align 8
  %cmp5 = fcmp olt double %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load double*, double** @a, align 32
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 %idxprom6
  %11 = load double, double* %arrayidx7, align 8
  store double %11, double* %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %13 = load double*, double** @a, align 32
  %14 = load double*, double** @b, align 32
  %15 = load double*, double** @c, align 32
  %16 = load double*, double** @d, align 32
  %17 = load double*, double** @e, align 32
  %18 = load [256 x double]*, [256 x double]** @aa, align 32
  %19 = load [256 x double]*, [256 x double]** @bb, align 32
  %20 = load [256 x double]*, [256 x double]** @cc, align 32
  %21 = load double, double* %x, align 8
  %call8 = call i32 @dummy(double* %13, double* %14, double* %15, double* %16, double* %17, [256 x double]* %18, [256 x double]* %19, [256 x double]* %20, double %21)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %22 = load i32, i32* %nl, align 4
  %inc10 = add nsw i32 %22, 1
  store i32 %inc10, i32* %nl, align 4
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %23 = load i64, i64* %end_t, align 8
  %24 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %23, %24
  store i64 %sub, i64* %clock_dif, align 8
  %25 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %25 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %26 = load double, double* %clock_dif_sec, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i32 0, i32 0), double %26)
  %27 = load double, double* %x, align 8
  store double %27, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s317() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %q = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 5, %1
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store double 1.000000e+00, double* %q, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 16000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load double, double* %q, align 8
  %mul4 = fmul double %3, 9.900000e-01
  store double %mul4, double* %q, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %5 = load double*, double** @a, align 32
  %6 = load double*, double** @b, align 32
  %7 = load double*, double** @c, align 32
  %8 = load double*, double** @d, align 32
  %9 = load double*, double** @e, align 32
  %10 = load [256 x double]*, [256 x double]** @aa, align 32
  %11 = load [256 x double]*, [256 x double]** @bb, align 32
  %12 = load [256 x double]*, [256 x double]** @cc, align 32
  %13 = load double, double* %q, align 8
  %call5 = call i32 @dummy(double* %5, double* %6, double* %7, double* %8, double* %9, [256 x double]* %10, [256 x double]* %11, [256 x double]* %12, double %13)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %14 = load i32, i32* %nl, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, i32* %nl, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %15 = load i64, i64* %end_t, align 8
  %16 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %15, %16
  store i64 %sub, i64* %clock_dif, align 8
  %17 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %17 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %18 = load double, double* %clock_dif_sec, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0), double %18)
  %19 = load double, double* %q, align 8
  store double %19, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s318(i32 %inc) #0 {
entry:
  %inc.addr = alloca i32, align 4
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %k = alloca i32, align 4
  %index = alloca i32, align 4
  %max = alloca double, align 8
  %chksum = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %inc, i32* %inc.addr, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %div = sdiv i32 %1, 2
  %cmp = icmp slt i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4
  store i32 0, i32* %index, align 4
  %2 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8
  %conv = fptosi double %3 to i32
  %call1 = call i32 @abs(i32 %conv) #6
  %conv2 = sitofp i32 %call1 to double
  store double %conv2, double* %max, align 8
  %4 = load i32, i32* %inc.addr, align 4
  %5 = load i32, i32* %k, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %k, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, 32000
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %7 = load i32, i32* %k, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load double*, double** @a, align 32
  %arrayidx7 = getelementptr inbounds double, double* %8, i64 %idxprom
  %9 = load double, double* %arrayidx7, align 8
  %conv8 = fptosi double %9 to i32
  %call9 = call i32 @abs(i32 %conv8) #6
  %conv10 = sitofp i32 %call9 to double
  %10 = load double, double* %max, align 8
  %cmp11 = fcmp ole double %conv10, %10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  br label %L5

if.end:                                           ; preds = %for.body.6
  %11 = load i32, i32* %i, align 4
  store i32 %11, i32* %index, align 4
  %12 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load double*, double** @a, align 32
  %arrayidx14 = getelementptr inbounds double, double* %13, i64 %idxprom13
  %14 = load double, double* %arrayidx14, align 8
  %conv15 = fptosi double %14 to i32
  %call16 = call i32 @abs(i32 %conv15) #6
  %conv17 = sitofp i32 %call16 to double
  store double %conv17, double* %max, align 8
  br label %L5

L5:                                               ; preds = %if.end, %if.then
  %15 = load i32, i32* %inc.addr, align 4
  %16 = load i32, i32* %k, align 4
  %add18 = add nsw i32 %16, %15
  store i32 %add18, i32* %k, align 4
  br label %for.inc

for.inc:                                          ; preds = %L5
  %17 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %18 = load double, double* %max, align 8
  %19 = load i32, i32* %index, align 4
  %conv20 = sitofp i32 %19 to double
  %add21 = fadd double %18, %conv20
  store double %add21, double* %chksum, align 8
  %20 = load double*, double** @a, align 32
  %21 = load double*, double** @b, align 32
  %22 = load double*, double** @c, align 32
  %23 = load double*, double** @d, align 32
  %24 = load double*, double** @e, align 32
  %25 = load [256 x double]*, [256 x double]** @aa, align 32
  %26 = load [256 x double]*, [256 x double]** @bb, align 32
  %27 = load [256 x double]*, [256 x double]** @cc, align 32
  %28 = load double, double* %chksum, align 8
  %call22 = call i32 @dummy(double* %20, double* %21, double* %22, double* %23, double* %24, [256 x double]* %25, [256 x double]* %26, [256 x double]* %27, double %28)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %29 = load i32, i32* %nl, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %nl, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %30 = load i64, i64* %end_t, align 8
  %31 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %30, %31
  store i64 %sub, i64* %clock_dif, align 8
  %32 = load i64, i64* %clock_dif, align 8
  %conv26 = sitofp i64 %32 to double
  %div27 = fdiv double %conv26, 1.000000e+06
  store double %div27, double* %clock_dif_sec, align 8
  %33 = load double, double* %clock_dif_sec, align 8
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), double %33)
  %34 = load double, double* %max, align 8
  %35 = load i32, i32* %index, align 4
  %conv29 = sitofp i32 %35 to double
  %add30 = fadd double %34, %conv29
  %add31 = fadd double %add30, 1.000000e+00
  store double %add31, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #3

; Function Attrs: nounwind uwtable
define i32 @s319() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %sum = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 2, %1
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @c, align 32
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load double*, double** @d, align 32
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 %idxprom4
  %8 = load double, double* %arrayidx5, align 8
  %add = fadd double %5, %8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load double*, double** @a, align 32
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 %idxprom6
  store double %add, double* %arrayidx7, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load double*, double** @a, align 32
  %arrayidx9 = getelementptr inbounds double, double* %12, i64 %idxprom8
  %13 = load double, double* %arrayidx9, align 8
  %14 = load double, double* %sum, align 8
  %add10 = fadd double %14, %13
  store double %add10, double* %sum, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load double*, double** @c, align 32
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %idxprom11
  %17 = load double, double* %arrayidx12, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load double*, double** @e, align 32
  %arrayidx14 = getelementptr inbounds double, double* %19, i64 %idxprom13
  %20 = load double, double* %arrayidx14, align 8
  %add15 = fadd double %17, %20
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load double*, double** @b, align 32
  %arrayidx17 = getelementptr inbounds double, double* %22, i64 %idxprom16
  store double %add15, double* %arrayidx17, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load double*, double** @b, align 32
  %arrayidx19 = getelementptr inbounds double, double* %24, i64 %idxprom18
  %25 = load double, double* %arrayidx19, align 8
  %26 = load double, double* %sum, align 8
  %add20 = fadd double %26, %25
  store double %add20, double* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %28 = load double*, double** @a, align 32
  %29 = load double*, double** @b, align 32
  %30 = load double*, double** @c, align 32
  %31 = load double*, double** @d, align 32
  %32 = load double*, double** @e, align 32
  %33 = load [256 x double]*, [256 x double]** @aa, align 32
  %34 = load [256 x double]*, [256 x double]** @bb, align 32
  %35 = load [256 x double]*, [256 x double]** @cc, align 32
  %36 = load double, double* %sum, align 8
  %call21 = call i32 @dummy(double* %28, double* %29, double* %30, double* %31, double* %32, [256 x double]* %33, [256 x double]* %34, [256 x double]* %35, double %36)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %37 = load i32, i32* %nl, align 4
  %inc23 = add nsw i32 %37, 1
  store i32 %inc23, i32* %nl, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %38 = load i64, i64* %end_t, align 8
  %39 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %38, %39
  store i64 %sub, i64* %clock_dif, align 8
  %40 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %40 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %41 = load double, double* %clock_dif_sec, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), double %41)
  %42 = load double, double* %sum, align 8
  store double %42, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s3110() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %max = alloca double, align 8
  %chksum = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %div = sdiv i32 %1, 256
  %mul = mul nsw i32 100, %div
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %2 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* %2, i64 0
  %arrayidx1 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx, i32 0, i64 0
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %max, align 8
  store i32 0, i32* %xindex, align 4
  store i32 0, i32* %yindex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.16, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 256
  br i1 %cmp3, label %for.body.4, label %for.end.18

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %5 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %5, 256
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx9 = getelementptr inbounds [256 x double], [256 x double]* %8, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx9, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx10, align 8
  %10 = load double, double* %max, align 8
  %cmp11 = fcmp ogt double %9, %10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %11 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx14 = getelementptr inbounds [256 x double], [256 x double]* %13, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx14, i32 0, i64 %idxprom12
  %14 = load double, double* %arrayidx15, align 8
  store double %14, double* %max, align 8
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %xindex, align 4
  %16 = load i32, i32* %j, align 4
  store i32 %16, i32* %yindex, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.2

for.end.18:                                       ; preds = %for.cond.2
  %19 = load double, double* %max, align 8
  %20 = load i32, i32* %xindex, align 4
  %conv = sitofp i32 %20 to double
  %add = fadd double %19, %conv
  %21 = load i32, i32* %yindex, align 4
  %conv19 = sitofp i32 %21 to double
  %add20 = fadd double %add, %conv19
  store double %add20, double* %chksum, align 8
  %22 = load double*, double** @a, align 32
  %23 = load double*, double** @b, align 32
  %24 = load double*, double** @c, align 32
  %25 = load double*, double** @d, align 32
  %26 = load double*, double** @e, align 32
  %27 = load [256 x double]*, [256 x double]** @aa, align 32
  %28 = load [256 x double]*, [256 x double]** @bb, align 32
  %29 = load [256 x double]*, [256 x double]** @cc, align 32
  %30 = load double, double* %chksum, align 8
  %call21 = call i32 @dummy(double* %22, double* %23, double* %24, double* %25, double* %26, [256 x double]* %27, [256 x double]* %28, [256 x double]* %29, double %30)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.18
  %31 = load i32, i32* %nl, align 4
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %nl, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %32 = load i64, i64* %end_t, align 8
  %33 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %32, %33
  store i64 %sub, i64* %clock_dif, align 8
  %34 = load i64, i64* %clock_dif, align 8
  %conv25 = sitofp i64 %34 to double
  %div26 = fdiv double %conv25, 1.000000e+06
  store double %div26, double* %clock_dif_sec, align 8
  %35 = load double, double* %clock_dif_sec, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0), double %35)
  %36 = load double, double* %max, align 8
  %37 = load i32, i32* %xindex, align 4
  %conv28 = sitofp i32 %37 to double
  %add29 = fadd double %36, %conv28
  %add30 = fadd double %add29, 1.000000e+00
  %38 = load i32, i32* %yindex, align 4
  %conv31 = sitofp i32 %38 to double
  %add32 = fadd double %add30, %conv31
  %add33 = fadd double %add32, 1.000000e+00
  store double %add33, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s13110() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %xindex = alloca i32, align 4
  %yindex = alloca i32, align 4
  %max = alloca double, align 8
  %chksum = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %div = sdiv i32 %1, 256
  %mul = mul nsw i32 100, %div
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %2 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* %2, i64 0
  %arrayidx1 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx, i32 0, i64 0
  %3 = load double, double* %arrayidx1, align 8
  store double %3, double* %max, align 8
  store i32 0, i32* %xindex, align 4
  store i32 0, i32* %yindex, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.16, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 256
  br i1 %cmp3, label %for.body.4, label %for.end.18

for.body.4:                                       ; preds = %for.cond.2
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %5 = load i32, i32* %j, align 4
  %cmp6 = icmp slt i32 %5, 256
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx9 = getelementptr inbounds [256 x double], [256 x double]* %8, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx9, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx10, align 8
  %10 = load double, double* %max, align 8
  %cmp11 = fcmp ogt double %9, %10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.7
  %11 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load [256 x double]*, [256 x double]** @aa, align 32
  %arrayidx14 = getelementptr inbounds [256 x double], [256 x double]* %13, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [256 x double], [256 x double]* %arrayidx14, i32 0, i64 %idxprom12
  %14 = load double, double* %arrayidx15, align 8
  store double %14, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.2

for.end.18:                                       ; preds = %for.cond.2
  %17 = load double, double* %max, align 8
  %18 = load i32, i32* %xindex, align 4
  %conv = sitofp i32 %18 to double
  %add = fadd double %17, %conv
  %19 = load i32, i32* %yindex, align 4
  %conv19 = sitofp i32 %19 to double
  %add20 = fadd double %add, %conv19
  store double %add20, double* %chksum, align 8
  %20 = load double*, double** @a, align 32
  %21 = load double*, double** @b, align 32
  %22 = load double*, double** @c, align 32
  %23 = load double*, double** @d, align 32
  %24 = load double*, double** @e, align 32
  %25 = load [256 x double]*, [256 x double]** @aa, align 32
  %26 = load [256 x double]*, [256 x double]** @bb, align 32
  %27 = load [256 x double]*, [256 x double]** @cc, align 32
  %28 = load double, double* %chksum, align 8
  %call21 = call i32 @dummy(double* %20, double* %21, double* %22, double* %23, double* %24, [256 x double]* %25, [256 x double]* %26, [256 x double]* %27, double %28)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.18
  %29 = load i32, i32* %nl, align 4
  %inc23 = add nsw i32 %29, 1
  store i32 %inc23, i32* %nl, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %30 = load i64, i64* %end_t, align 8
  %31 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %30, %31
  store i64 %sub, i64* %clock_dif, align 8
  %32 = load i64, i64* %clock_dif, align 8
  %conv25 = sitofp i64 %32 to double
  %div26 = fdiv double %conv25, 1.000000e+06
  store double %div26, double* %clock_dif_sec, align 8
  %33 = load double, double* %clock_dif_sec, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.148, i32 0, i32 0), double %33)
  %34 = load double, double* %max, align 8
  %35 = load i32, i32* %xindex, align 4
  %conv28 = sitofp i32 %35 to double
  %add29 = fadd double %34, %conv28
  %add30 = fadd double %add29, 1.000000e+00
  %36 = load i32, i32* %yindex, align 4
  %conv31 = sitofp i32 %36 to double
  %add32 = fadd double %add30, %conv31
  %add33 = fadd double %add32, 1.000000e+00
  store double %add33, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s3111() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %sum = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %div = sdiv i32 %1, 2
  %cmp = icmp slt i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %cmp4 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load double*, double** @a, align 32
  %arrayidx6 = getelementptr inbounds double, double* %7, i64 %idxprom5
  %8 = load double, double* %arrayidx6, align 8
  %9 = load double, double* %sum, align 8
  %add = fadd double %9, %8
  store double %add, double* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %11 = load double*, double** @a, align 32
  %12 = load double*, double** @b, align 32
  %13 = load double*, double** @c, align 32
  %14 = load double*, double** @d, align 32
  %15 = load double*, double** @e, align 32
  %16 = load [256 x double]*, [256 x double]** @aa, align 32
  %17 = load [256 x double]*, [256 x double]** @bb, align 32
  %18 = load [256 x double]*, [256 x double]** @cc, align 32
  %19 = load double, double* %sum, align 8
  %call7 = call i32 @dummy(double* %11, double* %12, double* %13, double* %14, double* %15, [256 x double]* %16, [256 x double]* %17, [256 x double]* %18, double %19)
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %20 = load i32, i32* %nl, align 4
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, i32* %nl, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %21 = load i64, i64* %end_t, align 8
  %22 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %21, %22
  store i64 %sub, i64* %clock_dif, align 8
  %23 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %23 to double
  %div11 = fdiv double %conv, 1.000000e+06
  store double %div11, double* %clock_dif_sec, align 8
  %24 = load double, double* %clock_dif_sec, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.149, i32 0, i32 0), double %24)
  %25 = load double, double* %sum, align 8
  store double %25, double* @temp, align 8
  call void @check(i32 -1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s3112() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %sum = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 32000
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  %6 = load double, double* %sum, align 8
  %add = fadd double %6, %5
  store double %add, double* %sum, align 8
  %7 = load double, double* %sum, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load double*, double** @b, align 32
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  store double %7, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %11 = load double*, double** @a, align 32
  %12 = load double*, double** @b, align 32
  %13 = load double*, double** @c, align 32
  %14 = load double*, double** @d, align 32
  %15 = load double*, double** @e, align 32
  %16 = load [256 x double]*, [256 x double]** @aa, align 32
  %17 = load [256 x double]*, [256 x double]** @bb, align 32
  %18 = load [256 x double]*, [256 x double]** @cc, align 32
  %19 = load double, double* %sum, align 8
  %call6 = call i32 @dummy(double* %11, double* %12, double* %13, double* %14, double* %15, [256 x double]* %16, [256 x double]* %17, [256 x double]* %18, double %19)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %20 = load i32, i32* %nl, align 4
  %inc8 = add nsw i32 %20, 1
  store i32 %inc8, i32* %nl, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %21 = load i64, i64* %end_t, align 8
  %22 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %21, %22
  store i64 %sub, i64* %clock_dif, align 8
  %23 = load i64, i64* %clock_dif, align 8
  %conv = sitofp i64 %23 to double
  %div = fdiv double %conv, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %24 = load double, double* %clock_dif_sec, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), double %24)
  %25 = load double, double* %sum, align 8
  store double %25, double* @temp, align 8
  call void @check(i32 -12)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @s3113() #0 {
entry:
  %start_t = alloca i64, align 8
  %end_t = alloca i64, align 8
  %clock_dif = alloca i64, align 8
  %clock_dif_sec = alloca double, align 8
  %max = alloca double, align 8
  %nl = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 @init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0))
  store i64 0, i64* %start_t, align 8
  store i32 0, i32* %nl, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %0 = load i32, i32* %nl, align 4
  %1 = load i32, i32* @ntimes, align 4
  %mul = mul nsw i32 %1, 4
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %2 = load double*, double** @a, align 32
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8
  %conv = fptosi double %3 to i32
  %call1 = call i32 @abs(i32 %conv) #6
  %conv2 = sitofp i32 %call1 to double
  store double %conv2, double* %max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %4, 32000
  br i1 %cmp4, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load double*, double** @a, align 32
  %arrayidx7 = getelementptr inbounds double, double* %6, i64 %idxprom
  %7 = load double, double* %arrayidx7, align 8
  %conv8 = fptosi double %7 to i32
  %call9 = call i32 @abs(i32 %conv8) #6
  %conv10 = sitofp i32 %call9 to double
  %8 = load double, double* %max, align 8
  %cmp11 = fcmp ogt double %conv10, %8
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %9 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %9 to i64
  %10 = load double*, double** @a, align 32
  %arrayidx14 = getelementptr inbounds double, double* %10, i64 %idxprom13
  %11 = load double, double* %arrayidx14, align 8
  %conv15 = fptosi double %11 to i32
  %call16 = call i32 @abs(i32 %conv15) #6
  %conv17 = sitofp i32 %call16 to double
  store double %conv17, double* %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %13 = load double*, double** @a, align 32
  %14 = load double*, double** @b, align 32
  %15 = load double*, double** @c, align 32
  %16 = load double*, double** @d, align 32
  %17 = load double*, double** @e, align 32
  %18 = load [256 x double]*, [256 x double]** @aa, align 32
  %19 = load [256 x double]*, [256 x double]** @bb, align 32
  %20 = load [256 x double]*, [256 x double]** @cc, align 32
  %21 = load double, double* %max, align 8
  %call18 = call i32 @dummy(double* %13, double* %14, double* %15, double* %16, double* %17, [256 x double]* %18, [256 x double]* %19, [256 x double]* %20, double %21)
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %22 = load i32, i32* %nl, align 4
  %inc20 = add nsw i32 %22, 1
  store i32 %inc20, i32* %nl, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  store i64 0, i64* %end_t, align 8
  %23 = load i64, i64* %end_t, align 8
  %24 = load i64, i64* %start_t, align 8
  %sub = sub nsw i64 %23, %24
  store i64 %sub, i64* %clock_dif, align 8
  %25 = load i64, i64* %clock_dif, align 8
  %conv22 = sitofp i64 %25 to double
  %div = fdiv double %conv22, 1.000000e+06
  store double %div, double* %clock_dif_sec, align 8
  %26 = load double, double* %clock_dif_sec, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.151, i32 0, i32 0), double %26)
  %27 = load double, double* %max, align 8
  store double %27, double* @temp, align 8
  call void @check(i32 -1)
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
define void @set(i32* %ip, double* %s1, double* %s2) #0 {
entry:
  %ip.addr = alloca i32*, align 8
  %s1.addr = alloca double*, align 8
  %s2.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %i26 = alloca i32, align 4
  store i32* %ip, i32** %ip.addr, align 8
  store double* %s1, double** %s1.addr, align 8
  store double* %s2, double** %s2.addr, align 8
  %call = call i32 @posix_memalign(i8** bitcast (double** @xx to i8**), i64 32, i64 256000) #7
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.152, i32 0, i32 0))
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
  %17 = load double*, double** @a, align 32
  %call18 = call i32 @set1d(double* %17, double 1.000000e+00, i32 1)
  %18 = load double*, double** @b, align 32
  %call19 = call i32 @set1d(double* %18, double 1.000000e+00, i32 1)
  %19 = load double*, double** @c, align 32
  %call20 = call i32 @set1d(double* %19, double 1.000000e+00, i32 1)
  %20 = load double*, double** @d, align 32
  %call21 = call i32 @set1d(double* %20, double 1.000000e+00, i32 1)
  %21 = load double*, double** @e, align 32
  %call22 = call i32 @set1d(double* %21, double 1.000000e+00, i32 1)
  %22 = load [256 x double]*, [256 x double]** @aa, align 32
  %call23 = call i32 @set2d([256 x double]* %22, double 0.000000e+00, i32 -1)
  %23 = load [256 x double]*, [256 x double]** @bb, align 32
  %call24 = call i32 @set2d([256 x double]* %23, double 0.000000e+00, i32 -1)
  %24 = load [256 x double]*, [256 x double]** @cc, align 32
  %call25 = call i32 @set2d([256 x double]* %24, double 0.000000e+00, i32 -1)
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
  %29 = load double*, double** %s1.addr, align 8
  store double 1.000000e+00, double* %29, align 8
  %30 = load double*, double** %s2.addr, align 8
  store double 2.000000e+00, double* %30, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @posix_memalign(i8**, i64, i64) #4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n1 = alloca i32, align 4
  %n3 = alloca i32, align 4
  %ip = alloca i32*, align 8
  %s1 = alloca double, align 8
  %s2 = alloca double, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %n1, align 4
  store i32 1, i32* %n3, align 4
  %0 = bitcast i32** %ip to i8**
  %call = call i32 @posix_memalign(i8** %0, i64 32, i64 256000) #7
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %3) #5
  store i32 %call1, i32* @ntimes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @ntimes, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.153, i32 0, i32 0), i32 %4)
  %5 = load i32, i32* %argc.addr, align 4
  %cmp3 = icmp sgt i32 %5, 2
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.end
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %6, i64 2
  %7 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 @atoi(i8* %7) #5
  store i32 %call6, i32* @digits, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %if.end
  %8 = load i32*, i32** %ip, align 8
  call void @set(i32* %8, double* %s1, double* %s2)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.154, i32 0, i32 0))
  %call9 = call i32 @s311()
  %call10 = call i32 @s31111()
  %call11 = call i32 @s312()
  %call12 = call i32 @s313()
  %call13 = call i32 @s314()
  %call14 = call i32 @s315()
  %call15 = call i32 @s316()
  %call16 = call i32 @s317()
  %9 = load i32, i32* %n1, align 4
  %call17 = call i32 @s318(i32 %9)
  %call18 = call i32 @s319()
  %call19 = call i32 @s3110()
  %call20 = call i32 @s13110()
  %call21 = call i32 @s3111()
  %call22 = call i32 @s3112()
  %call23 = call i32 @s3113()
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
