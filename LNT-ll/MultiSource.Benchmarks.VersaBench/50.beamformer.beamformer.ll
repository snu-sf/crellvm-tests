; ModuleID = './MultiSource.Benchmarks.VersaBench/50.beamformer.beamformer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BeamFirData = type { i32, i32, i32, float*, float* }

@.str = private unnamed_addr constant [3 x i8] c"i:\00", align 1
@optarg = external global i8*, align 8
@numiters = internal global i32 100, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %option = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @getopt(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #4
  store i32 %call, i32* %option, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %option, align 4
  switch i32 %2, label %sw.epilog [
    i32 105, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load i8*, i8** @optarg, align 8
  %call1 = call i32 @atoi(i8* %3) #5
  store i32 %call1, i32* @numiters, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @begin()
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define void @begin() #0 {
entry:
  %coarse_fir_data = alloca [12 x %struct.BeamFirData], align 16
  %fine_fir_data = alloca [12 x %struct.BeamFirData], align 16
  %mf_fir_data = alloca [4 x %struct.BeamFirData], align 16
  %inputs = alloca [24576 x float], align 16
  %predec = alloca [24576 x float], align 16
  %postdec = alloca [12 x [12288 x float]], align 16
  %beam_weights = alloca [4 x [24 x float]], align 16
  %beam_input = alloca [12288 x float], align 16
  %beam_output = alloca [1024 x float], align 16
  %beam_fir_output = alloca [1024 x float], align 16
  %beam_fir_mag = alloca [512 x float], align 16
  %detector_out = alloca [4 x [512 x float]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %coarse_fir_data, i32 0, i64 %idxprom
  call void @BeamFirSetup(%struct.BeamFirData* %arrayidx, i32 64)
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %fine_fir_data, i32 0, i64 %idxprom1
  call void @BeamFirSetup(%struct.BeamFirData* %arrayidx2, i32 64)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.10, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %4, 4
  br i1 %cmp4, label %for.body.5, label %for.end.12

for.body.5:                                       ; preds = %for.cond.3
  %5 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [4 x %struct.BeamFirData], [4 x %struct.BeamFirData]* %mf_fir_data, i32 0, i64 %idxprom6
  call void @BeamFirSetup(%struct.BeamFirData* %arrayidx7, i32 512)
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [4 x [24 x float]], [4 x [24 x float]]* %beam_weights, i32 0, i64 %idxprom8
  %arraydecay = getelementptr inbounds [24 x float], [24 x float]* %arrayidx9, i32 0, i32 0
  call void @BeamFormWeights(i32 %6, float* %arraydecay)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.5
  %8 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.3

for.end.12:                                       ; preds = %for.cond.3
  br label %while.cond

while.cond:                                       ; preds = %for.end.161, %for.end.12
  %9 = load i32, i32* @numiters, align 4
  %cmp13 = icmp eq i32 %9, -1
  br i1 %cmp13, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %10 = load i32, i32* @numiters, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* @numiters, align 4
  %cmp14 = icmp sgt i32 %10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %11 = phi i1 [ true, %while.cond ], [ %cmp14, %lor.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.62, %while.body
  %12 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %12, 12
  br i1 %cmp16, label %for.body.17, label %for.end.64

for.body.17:                                      ; preds = %for.cond.15
  store i32 0, i32* %j, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.23, %for.body.17
  %13 = load i32, i32* %j, align 4
  %cmp19 = icmp slt i32 %13, 12
  br i1 %cmp19, label %for.body.20, label %for.end.25

for.body.20:                                      ; preds = %for.cond.18
  %14 = load i32, i32* %i, align 4
  %arraydecay21 = getelementptr inbounds [24576 x float], [24576 x float]* %inputs, i32 0, i32 0
  %15 = load i32, i32* %j, align 4
  %mul = mul nsw i32 %15, 1024
  %mul22 = mul nsw i32 %mul, 2
  %idx.ext = sext i32 %mul22 to i64
  %add.ptr = getelementptr inbounds float, float* %arraydecay21, i64 %idx.ext
  call void @InputGenerate(i32 %14, float* %add.ptr, i32 1024)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.20
  %16 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.18

for.end.25:                                       ; preds = %for.cond.18
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.40, %for.end.25
  %17 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %17, 1024
  br i1 %cmp27, label %for.body.28, label %for.end.42

for.body.28:                                      ; preds = %for.cond.26
  %18 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %coarse_fir_data, i32 0, i64 %idxprom29
  %arraydecay31 = getelementptr inbounds [24576 x float], [24576 x float]* %inputs, i32 0, i32 0
  %19 = load i32, i32* %j, align 4
  %mul32 = mul nsw i32 %19, 1
  %mul33 = mul nsw i32 %mul32, 2
  %idx.ext34 = sext i32 %mul33 to i64
  %add.ptr35 = getelementptr inbounds float, float* %arraydecay31, i64 %idx.ext34
  %arraydecay36 = getelementptr inbounds [24576 x float], [24576 x float]* %predec, i32 0, i32 0
  %20 = load i32, i32* %j, align 4
  %mul37 = mul nsw i32 %20, 2
  %idx.ext38 = sext i32 %mul37 to i64
  %add.ptr39 = getelementptr inbounds float, float* %arraydecay36, i64 %idx.ext38
  call void @BeamFirFilter(%struct.BeamFirData* %arrayidx30, i32 1024, i32 1, float* %add.ptr35, float* %add.ptr39)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.28
  %21 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %21, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond.26

for.end.42:                                       ; preds = %for.cond.26
  store i32 0, i32* %j, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.59, %for.end.42
  %22 = load i32, i32* %j, align 4
  %cmp44 = icmp slt i32 %22, 512
  br i1 %cmp44, label %for.body.45, label %for.end.61

for.body.45:                                      ; preds = %for.cond.43
  %23 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [12 x %struct.BeamFirData], [12 x %struct.BeamFirData]* %fine_fir_data, i32 0, i64 %idxprom46
  %arraydecay48 = getelementptr inbounds [24576 x float], [24576 x float]* %predec, i32 0, i32 0
  %24 = load i32, i32* %j, align 4
  %mul49 = mul nsw i32 %24, 2
  %mul50 = mul nsw i32 %mul49, 2
  %idx.ext51 = sext i32 %mul50 to i64
  %add.ptr52 = getelementptr inbounds float, float* %arraydecay48, i64 %idx.ext51
  %25 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %25 to i64
  %arrayidx54 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %postdec, i32 0, i64 %idxprom53
  %arraydecay55 = getelementptr inbounds [12288 x float], [12288 x float]* %arrayidx54, i32 0, i32 0
  %26 = load i32, i32* %j, align 4
  %mul56 = mul nsw i32 %26, 2
  %idx.ext57 = sext i32 %mul56 to i64
  %add.ptr58 = getelementptr inbounds float, float* %arraydecay55, i64 %idx.ext57
  call void @BeamFirFilter(%struct.BeamFirData* %arrayidx47, i32 1024, i32 2, float* %add.ptr52, float* %add.ptr58)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.45
  %27 = load i32, i32* %j, align 4
  %inc60 = add nsw i32 %27, 1
  store i32 %inc60, i32* %j, align 4
  br label %for.cond.43

for.end.61:                                       ; preds = %for.cond.43
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.end.61
  %28 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %28, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond.15

for.end.64:                                       ; preds = %for.cond.15
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.97, %for.end.64
  %29 = load i32, i32* %i, align 4
  %cmp66 = icmp slt i32 %29, 12
  br i1 %cmp66, label %for.body.67, label %for.end.99

for.body.67:                                      ; preds = %for.cond.65
  store i32 0, i32* %j, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.94, %for.body.67
  %30 = load i32, i32* %j, align 4
  %cmp69 = icmp slt i32 %30, 512
  br i1 %cmp69, label %for.body.70, label %for.end.96

for.body.70:                                      ; preds = %for.cond.68
  %31 = load i32, i32* %j, align 4
  %mul71 = mul nsw i32 2, %31
  %idxprom72 = sext i32 %mul71 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %32 to i64
  %arrayidx74 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %postdec, i32 0, i64 %idxprom73
  %arrayidx75 = getelementptr inbounds [12288 x float], [12288 x float]* %arrayidx74, i32 0, i64 %idxprom72
  %33 = load float, float* %arrayidx75, align 4
  %34 = load i32, i32* %j, align 4
  %mul76 = mul nsw i32 %34, 12
  %mul77 = mul nsw i32 %mul76, 2
  %35 = load i32, i32* %i, align 4
  %mul78 = mul nsw i32 2, %35
  %add = add nsw i32 %mul77, %mul78
  %idxprom79 = sext i32 %add to i64
  %arrayidx80 = getelementptr inbounds [12288 x float], [12288 x float]* %beam_input, i32 0, i64 %idxprom79
  store float %33, float* %arrayidx80, align 4
  %36 = load i32, i32* %j, align 4
  %mul81 = mul nsw i32 2, %36
  %add82 = add nsw i32 %mul81, 1
  %idxprom83 = sext i32 %add82 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %37 to i64
  %arrayidx85 = getelementptr inbounds [12 x [12288 x float]], [12 x [12288 x float]]* %postdec, i32 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [12288 x float], [12288 x float]* %arrayidx85, i32 0, i64 %idxprom83
  %38 = load float, float* %arrayidx86, align 4
  %39 = load i32, i32* %j, align 4
  %mul87 = mul nsw i32 %39, 12
  %mul88 = mul nsw i32 %mul87, 2
  %40 = load i32, i32* %i, align 4
  %mul89 = mul nsw i32 2, %40
  %add90 = add nsw i32 %mul88, %mul89
  %add91 = add nsw i32 %add90, 1
  %idxprom92 = sext i32 %add91 to i64
  %arrayidx93 = getelementptr inbounds [12288 x float], [12288 x float]* %beam_input, i32 0, i64 %idxprom92
  store float %38, float* %arrayidx93, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.70
  %41 = load i32, i32* %j, align 4
  %inc95 = add nsw i32 %41, 1
  store i32 %inc95, i32* %j, align 4
  br label %for.cond.68

for.end.96:                                       ; preds = %for.cond.68
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.96
  %42 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %42, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.65

for.end.99:                                       ; preds = %for.cond.65
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.143, %for.end.99
  %43 = load i32, i32* %i, align 4
  %cmp101 = icmp slt i32 %43, 4
  br i1 %cmp101, label %for.body.102, label %for.end.145

for.body.102:                                     ; preds = %for.cond.100
  store i32 0, i32* %j, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.118, %for.body.102
  %44 = load i32, i32* %j, align 4
  %cmp104 = icmp slt i32 %44, 512
  br i1 %cmp104, label %for.body.105, label %for.end.120

for.body.105:                                     ; preds = %for.cond.103
  %45 = load i32, i32* %i, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %46 to i64
  %arrayidx107 = getelementptr inbounds [4 x [24 x float]], [4 x [24 x float]]* %beam_weights, i32 0, i64 %idxprom106
  %arraydecay108 = getelementptr inbounds [24 x float], [24 x float]* %arrayidx107, i32 0, i32 0
  %arraydecay109 = getelementptr inbounds [12288 x float], [12288 x float]* %beam_input, i32 0, i32 0
  %47 = load i32, i32* %j, align 4
  %mul110 = mul nsw i32 %47, 12
  %mul111 = mul nsw i32 %mul110, 2
  %idx.ext112 = sext i32 %mul111 to i64
  %add.ptr113 = getelementptr inbounds float, float* %arraydecay109, i64 %idx.ext112
  %arraydecay114 = getelementptr inbounds [1024 x float], [1024 x float]* %beam_output, i32 0, i32 0
  %48 = load i32, i32* %j, align 4
  %mul115 = mul nsw i32 %48, 2
  %idx.ext116 = sext i32 %mul115 to i64
  %add.ptr117 = getelementptr inbounds float, float* %arraydecay114, i64 %idx.ext116
  call void @BeamForm(i32 %45, float* %arraydecay108, float* %add.ptr113, float* %add.ptr117)
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.105
  %49 = load i32, i32* %j, align 4
  %inc119 = add nsw i32 %49, 1
  store i32 %inc119, i32* %j, align 4
  br label %for.cond.103

for.end.120:                                      ; preds = %for.cond.103
  store i32 0, i32* %j, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.134, %for.end.120
  %50 = load i32, i32* %j, align 4
  %cmp122 = icmp slt i32 %50, 512
  br i1 %cmp122, label %for.body.123, label %for.end.136

for.body.123:                                     ; preds = %for.cond.121
  %51 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %51 to i64
  %arrayidx125 = getelementptr inbounds [4 x %struct.BeamFirData], [4 x %struct.BeamFirData]* %mf_fir_data, i32 0, i64 %idxprom124
  %arraydecay126 = getelementptr inbounds [1024 x float], [1024 x float]* %beam_output, i32 0, i32 0
  %52 = load i32, i32* %j, align 4
  %mul127 = mul nsw i32 %52, 2
  %idx.ext128 = sext i32 %mul127 to i64
  %add.ptr129 = getelementptr inbounds float, float* %arraydecay126, i64 %idx.ext128
  %arraydecay130 = getelementptr inbounds [1024 x float], [1024 x float]* %beam_fir_output, i32 0, i32 0
  %53 = load i32, i32* %j, align 4
  %mul131 = mul nsw i32 %53, 2
  %idx.ext132 = sext i32 %mul131 to i64
  %add.ptr133 = getelementptr inbounds float, float* %arraydecay130, i64 %idx.ext132
  call void @BeamFirFilter(%struct.BeamFirData* %arrayidx125, i32 512, i32 1, float* %add.ptr129, float* %add.ptr133)
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.123
  %54 = load i32, i32* %j, align 4
  %inc135 = add nsw i32 %54, 1
  store i32 %inc135, i32* %j, align 4
  br label %for.cond.121

for.end.136:                                      ; preds = %for.cond.121
  %arraydecay137 = getelementptr inbounds [1024 x float], [1024 x float]* %beam_fir_output, i32 0, i32 0
  %arraydecay138 = getelementptr inbounds [512 x float], [512 x float]* %beam_fir_mag, i32 0, i32 0
  call void @Magnitude(float* %arraydecay137, float* %arraydecay138, i32 512)
  %55 = load i32, i32* %i, align 4
  %arraydecay139 = getelementptr inbounds [512 x float], [512 x float]* %beam_fir_mag, i32 0, i32 0
  %56 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %56 to i64
  %arrayidx141 = getelementptr inbounds [4 x [512 x float]], [4 x [512 x float]]* %detector_out, i32 0, i64 %idxprom140
  %arraydecay142 = getelementptr inbounds [512 x float], [512 x float]* %arrayidx141, i32 0, i32 0
  call void @Detector(i32 %55, float* %arraydecay139, float* %arraydecay142)
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.136
  %57 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %57, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.100

for.end.145:                                      ; preds = %for.cond.100
  store i32 0, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.159, %for.end.145
  %58 = load i32, i32* %j, align 4
  %cmp147 = icmp slt i32 %58, 512
  br i1 %cmp147, label %for.body.148, label %for.end.161

for.body.148:                                     ; preds = %for.cond.146
  store i32 0, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.156, %for.body.148
  %59 = load i32, i32* %i, align 4
  %cmp150 = icmp slt i32 %59, 4
  br i1 %cmp150, label %for.body.151, label %for.end.158

for.body.151:                                     ; preds = %for.cond.149
  %60 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %60 to i64
  %61 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %61 to i64
  %arrayidx154 = getelementptr inbounds [4 x [512 x float]], [4 x [512 x float]]* %detector_out, i32 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [512 x float], [512 x float]* %arrayidx154, i32 0, i64 %idxprom152
  %62 = load float, float* %arrayidx155, align 4
  %conv = fpext float %62 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double %conv)
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.body.151
  %63 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %63, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.149

for.end.158:                                      ; preds = %for.cond.149
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.158
  %64 = load i32, i32* %j, align 4
  %inc160 = add nsw i32 %64, 1
  store i32 %inc160, i32* %j, align 4
  br label %for.cond.146

for.end.161:                                      ; preds = %for.cond.146
  br label %while.cond

while.end:                                        ; preds = %lor.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeamFirSetup(%struct.BeamFirData* %data, i32 %n) #0 {
entry:
  %data.addr = alloca %struct.BeamFirData*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.BeamFirData* %data, %struct.BeamFirData** %data.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %len = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %1, i32 0, i32 0
  store i32 %0, i32* %len, align 4
  %2 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %count = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %2, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %3 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %pos = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %3, i32 0, i32 2
  store i32 0, i32* %pos, align 4
  %4 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #4
  %5 = bitcast i8* %call to float*
  %6 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %weight = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %6, i32 0, i32 3
  store float* %5, float** %weight, align 8
  %7 = load i32, i32* %n.addr, align 4
  %conv1 = sext i32 %7 to i64
  %mul2 = mul i64 8, %conv1
  %call3 = call noalias i8* @malloc(i64 %mul2) #4
  %8 = bitcast i8* %call3 to float*
  %9 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %buffer = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %9, i32 0, i32 4
  store float* %8, float** %buffer, align 8
  %10 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %weight4 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %10, i32 0, i32 3
  %11 = load float*, float** %weight4, align 8
  %arrayidx = getelementptr inbounds float, float* %11, i64 0
  store float 1.000000e+00, float* %arrayidx, align 4
  %12 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %weight5 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %12, i32 0, i32 3
  %13 = load float*, float** %weight5, align 8
  %arrayidx6 = getelementptr inbounds float, float* %13, i64 1
  store float 0.000000e+00, float* %arrayidx6, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n.addr, align 4
  %mul7 = mul nsw i32 2, %15
  %cmp = icmp slt i32 %14, %mul7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %weight9 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %17, i32 0, i32 3
  %18 = load float*, float** %weight9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %18, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx10, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %buffer12 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %20, i32 0, i32 4
  %21 = load float*, float** %buffer12, align 8
  %arrayidx13 = getelementptr inbounds float, float* %21, i64 %idxprom11
  store float 0.000000e+00, float* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeamFormWeights(i32 %beam, float* %weights) #0 {
entry:
  %beam.addr = alloca i32, align 4
  %weights.addr = alloca float*, align 8
  %i = alloca i32, align 4
  store i32 %beam, i32* %beam.addr, align 4
  store float* %weights, float** %weights.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %beam.addr, align 4
  %cmp1 = icmp eq i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %3
  %idxprom = sext i32 %mul to i64
  %4 = load float*, float** %weights.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %mul2 = mul nsw i32 2, %5
  %add = add nsw i32 %mul2, 1
  %idxprom3 = sext i32 %add to i64
  %6 = load float*, float** %weights.addr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %6, i64 %idxprom3
  store float 0.000000e+00, float* %arrayidx4, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 2, %7
  %idxprom6 = sext i32 %mul5 to i64
  %8 = load float*, float** %weights.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %8, i64 %idxprom6
  store float 0.000000e+00, float* %arrayidx7, align 4
  %9 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 2, %9
  %add9 = add nsw i32 %mul8, 1
  %idxprom10 = sext i32 %add9 to i64
  %10 = load float*, float** %weights.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %10, i64 %idxprom10
  store float 0.000000e+00, float* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @InputGenerate(i32 %channel, float* %inputs, i32 %n) #0 {
entry:
  %channel.addr = alloca i32, align 4
  %inputs.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %root = alloca float, align 4
  store i32 %channel, i32* %channel.addr, align 4
  store float* %inputs, float** %inputs.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %channel.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %3, 256
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %channel.addr, align 4
  %mul = mul nsw i32 %4, %5
  %conv = sitofp i32 %mul to double
  %call = call double @sqrt(double %conv) #4
  %conv3 = fptrunc double %call to float
  %6 = load i32, i32* %i, align 4
  %mul4 = mul nsw i32 2, %6
  %idxprom = sext i32 %mul4 to i64
  %7 = load float*, float** %inputs.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %7, i64 %idxprom
  store float %conv3, float* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %channel.addr, align 4
  %mul5 = mul nsw i32 %8, %9
  %conv6 = sitofp i32 %mul5 to double
  %call7 = call double @sqrt(double %conv6) #4
  %add = fadd double %call7, 1.000000e+00
  %conv8 = fptrunc double %add to float
  %10 = load i32, i32* %i, align 4
  %mul9 = mul nsw i32 2, %10
  %add10 = add nsw i32 %mul9, 1
  %idxprom11 = sext i32 %add10 to i64
  %11 = load float*, float** %inputs.addr, align 8
  %arrayidx12 = getelementptr inbounds float, float* %11, i64 %idxprom11
  store float %conv8, float* %arrayidx12, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %channel.addr, align 4
  %mul13 = mul nsw i32 %12, %13
  %conv14 = sitofp i32 %mul13 to double
  %call15 = call double @sqrt(double %conv14) #4
  %conv16 = fptrunc double %call15 to float
  store float %conv16, float* %root, align 4
  %14 = load float, float* %root, align 4
  %sub = fsub float -0.000000e+00, %14
  %15 = load i32, i32* %i, align 4
  %mul17 = mul nsw i32 2, %15
  %idxprom18 = sext i32 %mul17 to i64
  %16 = load float*, float** %inputs.addr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %16, i64 %idxprom18
  store float %sub, float* %arrayidx19, align 4
  %17 = load float, float* %root, align 4
  %add20 = fadd float %17, 1.000000e+00
  %sub21 = fsub float -0.000000e+00, %add20
  %18 = load i32, i32* %i, align 4
  %mul22 = mul nsw i32 2, %18
  %add23 = add nsw i32 %mul22, 1
  %idxprom24 = sext i32 %add23 to i64
  %19 = load float*, float** %inputs.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %19, i64 %idxprom24
  store float %sub21, float* %arrayidx25, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeamFirFilter(%struct.BeamFirData* %data, i32 %input_length, i32 %decimation_ratio, float* %in, float* %out) #0 {
entry:
  %data.addr = alloca %struct.BeamFirData*, align 8
  %input_length.addr = alloca i32, align 4
  %decimation_ratio.addr = alloca i32, align 4
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %real_curr = alloca float, align 4
  %imag_curr = alloca float, align 4
  %i = alloca i32, align 4
  %modPos = alloca i32, align 4
  %len = alloca i32, align 4
  %mask = alloca i32, align 4
  %mask2 = alloca i32, align 4
  %rd = alloca float, align 4
  %id = alloca float, align 4
  %rw = alloca float, align 4
  %iw = alloca float, align 4
  %rci = alloca float, align 4
  %ici = alloca float, align 4
  store %struct.BeamFirData* %data, %struct.BeamFirData** %data.addr, align 8
  store i32 %input_length, i32* %input_length.addr, align 4
  store i32 %decimation_ratio, i32* %decimation_ratio.addr, align 4
  store float* %in, float** %in.addr, align 8
  store float* %out, float** %out.addr, align 8
  store float 0.000000e+00, float* %real_curr, align 4
  store float 0.000000e+00, float* %imag_curr, align 4
  %0 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %len1 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %0, i32 0, i32 0
  %1 = load i32, i32* %len1, align 4
  store i32 %1, i32* %len, align 4
  %2 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %mask, align 4
  %3 = load i32, i32* %len, align 4
  %mul = mul nsw i32 2, %3
  %sub2 = sub nsw i32 %mul, 1
  store i32 %sub2, i32* %mask2, align 4
  %4 = load i32, i32* %len, align 4
  %sub3 = sub nsw i32 %4, 1
  %5 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %pos = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %5, i32 0, i32 2
  %6 = load i32, i32* %pos, align 4
  %sub4 = sub nsw i32 %sub3, %6
  %mul5 = mul nsw i32 2, %sub4
  store i32 %mul5, i32* %modPos, align 4
  %7 = load float*, float** %in.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %7, i64 0
  %8 = load float, float* %arrayidx, align 4
  %9 = load i32, i32* %modPos, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %buffer = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %10, i32 0, i32 4
  %11 = load float*, float** %buffer, align 8
  %arrayidx6 = getelementptr inbounds float, float* %11, i64 %idxprom
  store float %8, float* %arrayidx6, align 4
  %12 = load float*, float** %in.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %12, i64 1
  %13 = load float, float* %arrayidx7, align 4
  %14 = load i32, i32* %modPos, align 4
  %add = add nsw i32 %14, 1
  %idxprom8 = sext i32 %add to i64
  %15 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %buffer9 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %15, i32 0, i32 4
  %16 = load float*, float** %buffer9, align 8
  %arrayidx10 = getelementptr inbounds float, float* %16, i64 %idxprom8
  store float %13, float* %arrayidx10, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %len, align 4
  %mul11 = mul nsw i32 2, %18
  %cmp = icmp slt i32 %17, %mul11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %modPos, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %buffer13 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %20, i32 0, i32 4
  %21 = load float*, float** %buffer13, align 8
  %arrayidx14 = getelementptr inbounds float, float* %21, i64 %idxprom12
  %22 = load float, float* %arrayidx14, align 4
  store float %22, float* %rd, align 4
  %23 = load i32, i32* %modPos, align 4
  %add15 = add nsw i32 %23, 1
  %idxprom16 = sext i32 %add15 to i64
  %24 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %buffer17 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %24, i32 0, i32 4
  %25 = load float*, float** %buffer17, align 8
  %arrayidx18 = getelementptr inbounds float, float* %25, i64 %idxprom16
  %26 = load float, float* %arrayidx18, align 4
  store float %26, float* %id, align 4
  %27 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %27 to i64
  %28 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %weight = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %28, i32 0, i32 3
  %29 = load float*, float** %weight, align 8
  %arrayidx20 = getelementptr inbounds float, float* %29, i64 %idxprom19
  %30 = load float, float* %arrayidx20, align 4
  store float %30, float* %rw, align 4
  %31 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %31, 1
  %idxprom22 = sext i32 %add21 to i64
  %32 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %weight23 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %32, i32 0, i32 3
  %33 = load float*, float** %weight23, align 8
  %arrayidx24 = getelementptr inbounds float, float* %33, i64 %idxprom22
  %34 = load float, float* %arrayidx24, align 4
  store float %34, float* %iw, align 4
  %35 = load float, float* %rd, align 4
  %36 = load float, float* %rw, align 4
  %mul25 = fmul float %35, %36
  %37 = load float, float* %id, align 4
  %38 = load float, float* %iw, align 4
  %mul26 = fmul float %37, %38
  %add27 = fadd float %mul25, %mul26
  store float %add27, float* %rci, align 4
  %39 = load float, float* %id, align 4
  %40 = load float, float* %rw, align 4
  %mul28 = fmul float %39, %40
  %41 = load float, float* %rd, align 4
  %42 = load float, float* %iw, align 4
  %mul29 = fmul float %41, %42
  %add30 = fadd float %mul28, %mul29
  store float %add30, float* %ici, align 4
  %43 = load float, float* %rci, align 4
  %44 = load float, float* %real_curr, align 4
  %add31 = fadd float %44, %43
  store float %add31, float* %real_curr, align 4
  %45 = load float, float* %ici, align 4
  %46 = load float, float* %imag_curr, align 4
  %add32 = fadd float %46, %45
  store float %add32, float* %imag_curr, align 4
  %47 = load i32, i32* %modPos, align 4
  %add33 = add nsw i32 %47, 2
  %48 = load i32, i32* %mask2, align 4
  %and = and i32 %add33, %48
  store i32 %and, i32* %modPos, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %49 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %49, 2
  store i32 %add34, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %pos35 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %50, i32 0, i32 2
  %51 = load i32, i32* %pos35, align 4
  %add36 = add nsw i32 %51, 1
  %52 = load i32, i32* %mask, align 4
  %and37 = and i32 %add36, %52
  %53 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %pos38 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %53, i32 0, i32 2
  store i32 %and37, i32* %pos38, align 4
  %54 = load float, float* %real_curr, align 4
  %55 = load float*, float** %out.addr, align 8
  %arrayidx39 = getelementptr inbounds float, float* %55, i64 0
  store float %54, float* %arrayidx39, align 4
  %56 = load float, float* %imag_curr, align 4
  %57 = load float*, float** %out.addr, align 8
  %arrayidx40 = getelementptr inbounds float, float* %57, i64 1
  store float %56, float* %arrayidx40, align 4
  %58 = load i32, i32* %decimation_ratio.addr, align 4
  %59 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %count = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %59, i32 0, i32 1
  %60 = load i32, i32* %count, align 4
  %add41 = add nsw i32 %60, %58
  store i32 %add41, i32* %count, align 4
  %61 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %count42 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %61, i32 0, i32 1
  %62 = load i32, i32* %count42, align 4
  %63 = load i32, i32* %input_length.addr, align 4
  %cmp43 = icmp eq i32 %62, %63
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %64 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %count44 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %64, i32 0, i32 1
  store i32 0, i32* %count44, align 4
  %65 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %pos45 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %65, i32 0, i32 2
  store i32 0, i32* %pos45, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %if.then
  %66 = load i32, i32* %i, align 4
  %67 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %len47 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %67, i32 0, i32 0
  %68 = load i32, i32* %len47, align 4
  %mul48 = mul nsw i32 2, %68
  %cmp49 = icmp slt i32 %66, %mul48
  br i1 %cmp49, label %for.body.50, label %for.end.55

for.body.50:                                      ; preds = %for.cond.46
  %69 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %69 to i64
  %70 = load %struct.BeamFirData*, %struct.BeamFirData** %data.addr, align 8
  %buffer52 = getelementptr inbounds %struct.BeamFirData, %struct.BeamFirData* %70, i32 0, i32 4
  %71 = load float*, float** %buffer52, align 8
  %arrayidx53 = getelementptr inbounds float, float* %71, i64 %idxprom51
  store float 0.000000e+00, float* %arrayidx53, align 4
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.50
  %72 = load i32, i32* %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.46

for.end.55:                                       ; preds = %for.cond.46
  br label %if.end

if.end:                                           ; preds = %for.end.55, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @BeamForm(i32 %beam, float* %weights, float* %input, float* %output) #0 {
entry:
  %beam.addr = alloca i32, align 4
  %weights.addr = alloca float*, align 8
  %input.addr = alloca float*, align 8
  %output.addr = alloca float*, align 8
  %real_curr = alloca float, align 4
  %imag_curr = alloca float, align 4
  %i = alloca i32, align 4
  store i32 %beam, i32* %beam.addr, align 4
  store float* %weights, float** %weights.addr, align 8
  store float* %input, float** %input.addr, align 8
  store float* %output, float** %output.addr, align 8
  store float 0.000000e+00, float* %real_curr, align 4
  store float 0.000000e+00, float* %imag_curr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %1
  %idxprom = sext i32 %mul to i64
  %2 = load float*, float** %weights.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 2, %4
  %idxprom2 = sext i32 %mul1 to i64
  %5 = load float*, float** %input.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %5, i64 %idxprom2
  %6 = load float, float* %arrayidx3, align 4
  %mul4 = fmul float %3, %6
  %7 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 2, %7
  %add = add nsw i32 %mul5, 1
  %idxprom6 = sext i32 %add to i64
  %8 = load float*, float** %weights.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %8, i64 %idxprom6
  %9 = load float, float* %arrayidx7, align 4
  %10 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 2, %10
  %add9 = add nsw i32 %mul8, 1
  %idxprom10 = sext i32 %add9 to i64
  %11 = load float*, float** %input.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %11, i64 %idxprom10
  %12 = load float, float* %arrayidx11, align 4
  %mul12 = fmul float %9, %12
  %sub = fsub float %mul4, %mul12
  %13 = load float, float* %real_curr, align 4
  %add13 = fadd float %13, %sub
  store float %add13, float* %real_curr, align 4
  %14 = load i32, i32* %i, align 4
  %mul14 = mul nsw i32 2, %14
  %idxprom15 = sext i32 %mul14 to i64
  %15 = load float*, float** %weights.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  %16 = load float, float* %arrayidx16, align 4
  %17 = load i32, i32* %i, align 4
  %mul17 = mul nsw i32 2, %17
  %add18 = add nsw i32 %mul17, 1
  %idxprom19 = sext i32 %add18 to i64
  %18 = load float*, float** %input.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %18, i64 %idxprom19
  %19 = load float, float* %arrayidx20, align 4
  %mul21 = fmul float %16, %19
  %20 = load i32, i32* %i, align 4
  %mul22 = mul nsw i32 2, %20
  %add23 = add nsw i32 %mul22, 1
  %idxprom24 = sext i32 %add23 to i64
  %21 = load float*, float** %weights.addr, align 8
  %arrayidx25 = getelementptr inbounds float, float* %21, i64 %idxprom24
  %22 = load float, float* %arrayidx25, align 4
  %23 = load i32, i32* %i, align 4
  %mul26 = mul nsw i32 2, %23
  %idxprom27 = sext i32 %mul26 to i64
  %24 = load float*, float** %input.addr, align 8
  %arrayidx28 = getelementptr inbounds float, float* %24, i64 %idxprom27
  %25 = load float, float* %arrayidx28, align 4
  %mul29 = fmul float %22, %25
  %add30 = fadd float %mul21, %mul29
  %26 = load float, float* %imag_curr, align 4
  %add31 = fadd float %26, %add30
  store float %add31, float* %imag_curr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load float, float* %real_curr, align 4
  %29 = load float*, float** %output.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %29, i64 0
  store float %28, float* %arrayidx32, align 4
  %30 = load float, float* %imag_curr, align 4
  %31 = load float*, float** %output.addr, align 8
  %arrayidx33 = getelementptr inbounds float, float* %31, i64 1
  store float %30, float* %arrayidx33, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Magnitude(float* %in, float* %out, i32 %n) #0 {
entry:
  %in.addr = alloca float*, align 8
  %out.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store float* %in, float** %in.addr, align 8
  store float* %out, float** %out.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %2
  %idxprom = sext i32 %mul to i64
  %3 = load float*, float** %in.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %3, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 2, %5
  %idxprom2 = sext i32 %mul1 to i64
  %6 = load float*, float** %in.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %6, i64 %idxprom2
  %7 = load float, float* %arrayidx3, align 4
  %mul4 = fmul float %4, %7
  %8 = load i32, i32* %i, align 4
  %mul5 = mul nsw i32 2, %8
  %add = add nsw i32 %mul5, 1
  %idxprom6 = sext i32 %add to i64
  %9 = load float*, float** %in.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %9, i64 %idxprom6
  %10 = load float, float* %arrayidx7, align 4
  %11 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 2, %11
  %add9 = add nsw i32 %mul8, 1
  %idxprom10 = sext i32 %add9 to i64
  %12 = load float*, float** %in.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %12, i64 %idxprom10
  %13 = load float, float* %arrayidx11, align 4
  %mul12 = fmul float %10, %13
  %add13 = fadd float %mul4, %mul12
  %conv = fpext float %add13 to double
  %call = call double @sqrt(double %conv) #4
  %conv14 = fptrunc double %call to float
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load float*, float** %out.addr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %15, i64 %idxprom15
  store float %conv14, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Detector(i32 %beam, float* %data, float* %output) #0 {
entry:
  %beam.addr = alloca i32, align 4
  %data.addr = alloca float*, align 8
  %output.addr = alloca float*, align 8
  %sample = alloca i32, align 4
  %outputVal = alloca float, align 4
  store i32 %beam, i32* %beam.addr, align 4
  store float* %data, float** %data.addr, align 8
  store float* %output, float** %output.addr, align 8
  store i32 0, i32* %sample, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %sample, align 4
  %cmp = icmp slt i32 %0, 512
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %beam.addr, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %if.else.7

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, i32* %sample, align 4
  %cmp2 = icmp eq i32 %2, 256
  br i1 %cmp2, label %if.then, label %if.else.7

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %sample, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load float*, float** %data.addr, align 8
  %arrayidx = getelementptr inbounds float, float* %4, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %conv = fpext float %5 to double
  %cmp3 = fcmp oge double %conv, 1.000000e-01
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %6 = load i32, i32* %beam.addr, align 4
  %add = add nsw i32 %6, 1
  %conv6 = sitofp i32 %add to float
  store float %conv6, float* %outputVal, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store float 0.000000e+00, float* %outputVal, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.18

if.else.7:                                        ; preds = %land.lhs.true, %for.body
  %7 = load i32, i32* %sample, align 4
  %idxprom8 = sext i32 %7 to i64
  %8 = load float*, float** %data.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %8, i64 %idxprom8
  %9 = load float, float* %arrayidx9, align 4
  %conv10 = fpext float %9 to double
  %cmp11 = fcmp oge double %conv10, 1.000000e-01
  br i1 %cmp11, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.else.7
  %10 = load i32, i32* %beam.addr, align 4
  %add14 = add nsw i32 %10, 1
  %sub = sub nsw i32 0, %add14
  %conv15 = sitofp i32 %sub to float
  store float %conv15, float* %outputVal, align 4
  br label %if.end.17

if.else.16:                                       ; preds = %if.else.7
  store float 0.000000e+00, float* %outputVal, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  %11 = load i32, i32* %sample, align 4
  %idxprom19 = sext i32 %11 to i64
  %12 = load float*, float** %data.addr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %12, i64 %idxprom19
  %13 = load float, float* %arrayidx20, align 4
  store float %13, float* %outputVal, align 4
  %14 = load float, float* %outputVal, align 4
  %15 = load i32, i32* %sample, align 4
  %idxprom21 = sext i32 %15 to i64
  %16 = load float*, float** %output.addr, align 8
  %arrayidx22 = getelementptr inbounds float, float* %16, i64 %idxprom21
  store float %14, float* %arrayidx22, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %17 = load i32, i32* %sample, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %sample, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
