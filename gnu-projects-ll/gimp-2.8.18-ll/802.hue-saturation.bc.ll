; ModuleID = './app/base/hue-saturation.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HueSaturation = type { [7 x double], [7 x double], [7 x double], double, [6 x [256 x i32]], [6 x [256 x i32]], [6 x [256 x i32]] }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.hue_saturation_init = private unnamed_addr constant [20 x i8] c"hue_saturation_init\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"hs != NULL\00", align 1
@__func__.hue_saturation_calculate_transfers = private unnamed_addr constant [35 x i8] c"hue_saturation_calculate_transfers\00", align 1
@hue_saturation.hue_thresholds = internal constant [7 x i32] [i32 21, i32 64, i32 106, i32 149, i32 192, i32 234, i32 255], align 16

; Function Attrs: nounwind uwtable
define void @hue_saturation_init(%struct._HueSaturation* %hs) #0 {
entry:
  %hs.addr = alloca %struct._HueSaturation*, align 8
  %partition = alloca i32, align 4
  store %struct._HueSaturation* %hs, %struct._HueSaturation** %hs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %cmp = icmp ne %struct._HueSaturation* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.hue_saturation_init, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %overlap = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %1, i32 0, i32 3
  store double 0.000000e+00, double* %overlap, align 8
  store i32 0, i32* %partition, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, i32* %partition, align 4
  %cmp1 = icmp ule i32 %2, 6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %partition, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  %5 = load i32, i32* %partition, align 4
  %idxprom2 = zext i32 %5 to i64
  %6 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom2
  store double 0.000000e+00, double* %arrayidx3, align 8
  %7 = load i32, i32* %partition, align 4
  %idxprom4 = zext i32 %7 to i64
  %8 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %saturation = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %8, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %partition, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %partition, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @hue_saturation_calculate_transfers(%struct._HueSaturation* %hs) #0 {
entry:
  %hs.addr = alloca %struct._HueSaturation*, align 8
  %value = alloca i32, align 4
  %hue = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._HueSaturation* %hs, %struct._HueSaturation** %hs.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %cmp = icmp ne %struct._HueSaturation* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.hue_saturation_calculate_transfers, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end.129

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %hue, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.127, %do.end
  %1 = load i32, i32* %hue, align 4
  %cmp1 = icmp slt i32 %1, 6
  br i1 %cmp1, label %for.body, label %for.end.129

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, 256
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %3 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue5 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue5, i32 0, i64 0
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %hue, align 4
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %6 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue6 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %6, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [7 x double], [7 x double]* %hue6, i32 0, i64 %idxprom
  %7 = load double, double* %arrayidx7, align 8
  %add8 = fadd double %4, %7
  %mul = fmul double %add8, 2.550000e+02
  %div = fdiv double %mul, 3.600000e+02
  %conv = fptosi double %div to i32
  store i32 %conv, i32* %value, align 4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %value, align 4
  %add9 = add nsw i32 %8, %9
  %cmp10 = icmp slt i32 %add9, 0
  br i1 %cmp10, label %if.then.12, label %if.else.19

if.then.12:                                       ; preds = %for.body.4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %value, align 4
  %add13 = add nsw i32 %10, %11
  %add14 = add nsw i32 255, %add13
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %13 = load i32, i32* %hue, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %14, i32 0, i32 4
  %arrayidx17 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer, i32 0, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx17, i32 0, i64 %idxprom15
  store i32 %add14, i32* %arrayidx18, align 4
  br label %if.end.38

if.else.19:                                       ; preds = %for.body.4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %value, align 4
  %add20 = add nsw i32 %15, %16
  %cmp21 = icmp sgt i32 %add20, 255
  br i1 %cmp21, label %if.then.23, label %if.else.30

if.then.23:                                       ; preds = %if.else.19
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %value, align 4
  %add24 = add nsw i32 %17, %18
  %sub = sub nsw i32 %add24, 255
  %19 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %19 to i64
  %20 = load i32, i32* %hue, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer27 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %21, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer27, i32 0, i64 %idxprom26
  %arrayidx29 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx28, i32 0, i64 %idxprom25
  store i32 %sub, i32* %arrayidx29, align 4
  br label %if.end.37

if.else.30:                                       ; preds = %if.else.19
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %value, align 4
  %add31 = add nsw i32 %22, %23
  %24 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load i32, i32* %hue, align 4
  %idxprom33 = sext i32 %25 to i64
  %26 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer34 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %26, i32 0, i32 4
  %arrayidx35 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer34, i32 0, i64 %idxprom33
  %arrayidx36 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx35, i32 0, i64 %idxprom32
  store i32 %add31, i32* %arrayidx36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.30, %if.then.23
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.12
  %27 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %27, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 0
  %28 = load double, double* %arrayidx39, align 8
  %29 = load i32, i32* %hue, align 4
  %add40 = add nsw i32 %29, 1
  %idxprom41 = sext i32 %add40 to i64
  %30 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness42 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %30, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [7 x double], [7 x double]* %lightness42, i32 0, i64 %idxprom41
  %31 = load double, double* %arrayidx43, align 8
  %add44 = fadd double %28, %31
  %mul45 = fmul double %add44, 1.270000e+02
  %div46 = fdiv double %mul45, 1.000000e+02
  %conv47 = fptosi double %div46 to i32
  store i32 %conv47, i32* %value, align 4
  %32 = load i32, i32* %value, align 4
  %cmp48 = icmp sgt i32 %32, 255
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.38
  br label %cond.end.54

cond.false:                                       ; preds = %if.end.38
  %33 = load i32, i32* %value, align 4
  %cmp50 = icmp slt i32 %33, -255
  br i1 %cmp50, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.false
  br label %cond.end

cond.false.53:                                    ; preds = %cond.false
  %34 = load i32, i32* %value, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.53, %cond.true.52
  %cond = phi i32 [ -255, %cond.true.52 ], [ %34, %cond.false.53 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end, %cond.true
  %cond55 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond55, i32* %value, align 4
  %35 = load i32, i32* %value, align 4
  %cmp56 = icmp slt i32 %35, 0
  br i1 %cmp56, label %if.then.58, label %if.else.68

if.then.58:                                       ; preds = %cond.end.54
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %value, align 4
  %add59 = add nsw i32 255, %37
  %mul60 = mul nsw i32 %36, %add59
  %div61 = sdiv i32 %mul60, 255
  %conv62 = trunc i32 %div61 to i8
  %conv63 = zext i8 %conv62 to i32
  %38 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %38 to i64
  %39 = load i32, i32* %hue, align 4
  %idxprom65 = sext i32 %39 to i64
  %40 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness_transfer = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %40, i32 0, i32 5
  %arrayidx66 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %lightness_transfer, i32 0, i64 %idxprom65
  %arrayidx67 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx66, i32 0, i64 %idxprom64
  store i32 %conv63, i32* %arrayidx67, align 4
  br label %if.end.80

if.else.68:                                       ; preds = %cond.end.54
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %i, align 4
  %sub69 = sub nsw i32 255, %42
  %43 = load i32, i32* %value, align 4
  %mul70 = mul nsw i32 %sub69, %43
  %div71 = sdiv i32 %mul70, 255
  %add72 = add nsw i32 %41, %div71
  %conv73 = trunc i32 %add72 to i8
  %conv74 = zext i8 %conv73 to i32
  %44 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %44 to i64
  %45 = load i32, i32* %hue, align 4
  %idxprom76 = sext i32 %45 to i64
  %46 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness_transfer77 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %46, i32 0, i32 5
  %arrayidx78 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %lightness_transfer77, i32 0, i64 %idxprom76
  %arrayidx79 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx78, i32 0, i64 %idxprom75
  store i32 %conv74, i32* %arrayidx79, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.68, %if.then.58
  %47 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %saturation = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %47, i32 0, i32 2
  %arrayidx81 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 0
  %48 = load double, double* %arrayidx81, align 8
  %49 = load i32, i32* %hue, align 4
  %add82 = add nsw i32 %49, 1
  %idxprom83 = sext i32 %add82 to i64
  %50 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %saturation84 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %50, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [7 x double], [7 x double]* %saturation84, i32 0, i64 %idxprom83
  %51 = load double, double* %arrayidx85, align 8
  %add86 = fadd double %48, %51
  %mul87 = fmul double %add86, 2.550000e+02
  %div88 = fdiv double %mul87, 1.000000e+02
  %conv89 = fptosi double %div88 to i32
  store i32 %conv89, i32* %value, align 4
  %52 = load i32, i32* %value, align 4
  %cmp90 = icmp sgt i32 %52, 255
  br i1 %cmp90, label %cond.true.92, label %cond.false.93

cond.true.92:                                     ; preds = %if.end.80
  br label %cond.end.100

cond.false.93:                                    ; preds = %if.end.80
  %53 = load i32, i32* %value, align 4
  %cmp94 = icmp slt i32 %53, -255
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.false.93
  br label %cond.end.98

cond.false.97:                                    ; preds = %cond.false.93
  %54 = load i32, i32* %value, align 4
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.96
  %cond99 = phi i32 [ -255, %cond.true.96 ], [ %54, %cond.false.97 ]
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.end.98, %cond.true.92
  %cond101 = phi i32 [ 255, %cond.true.92 ], [ %cond99, %cond.end.98 ]
  store i32 %cond101, i32* %value, align 4
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* %value, align 4
  %add102 = add nsw i32 255, %56
  %mul103 = mul nsw i32 %55, %add102
  %div104 = sdiv i32 %mul103, 255
  %cmp105 = icmp sgt i32 %div104, 255
  br i1 %cmp105, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.end.100
  br label %cond.end.121

cond.false.108:                                   ; preds = %cond.end.100
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %value, align 4
  %add109 = add nsw i32 255, %58
  %mul110 = mul nsw i32 %57, %add109
  %div111 = sdiv i32 %mul110, 255
  %cmp112 = icmp slt i32 %div111, 0
  br i1 %cmp112, label %cond.true.114, label %cond.false.115

cond.true.114:                                    ; preds = %cond.false.108
  br label %cond.end.119

cond.false.115:                                   ; preds = %cond.false.108
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %value, align 4
  %add116 = add nsw i32 255, %60
  %mul117 = mul nsw i32 %59, %add116
  %div118 = sdiv i32 %mul117, 255
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.115, %cond.true.114
  %cond120 = phi i32 [ 0, %cond.true.114 ], [ %div118, %cond.false.115 ]
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.end.119, %cond.true.107
  %cond122 = phi i32 [ 255, %cond.true.107 ], [ %cond120, %cond.end.119 ]
  %61 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %61 to i64
  %62 = load i32, i32* %hue, align 4
  %idxprom124 = sext i32 %62 to i64
  %63 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %saturation_transfer = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %63, i32 0, i32 6
  %arrayidx125 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %saturation_transfer, i32 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx125, i32 0, i64 %idxprom123
  store i32 %cond122, i32* %arrayidx126, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.121
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.end
  %65 = load i32, i32* %hue, align 4
  %inc128 = add nsw i32 %65, 1
  store i32 %inc128, i32* %hue, align 4
  br label %for.cond

for.end.129:                                      ; preds = %if.else, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @hue_saturation(%struct._HueSaturation* %hs, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %hs.addr = alloca %struct._HueSaturation*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %alpha = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %hue = alloca i32, align 4
  %hue_counter = alloca i32, align 4
  %secondary_hue = alloca i32, align 4
  %use_secondary_hue = alloca i32, align 4
  %primary_intensity = alloca float, align 4
  %secondary_intensity = alloca float, align 4
  %overlap_hue = alloca float, align 4
  %hue_threshold = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct._HueSaturation* %hs, %struct._HueSaturation** %hs.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  store i32 0, i32* %secondary_hue, align 4
  store i32 0, i32* %use_secondary_hue, align 4
  store float 0.000000e+00, float* %primary_intensity, align 4
  store float 0.000000e+00, float* %secondary_intensity, align 4
  %0 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %overlap = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %0, i32 0, i32 3
  %1 = load double, double* %overlap, align 8
  %div = fdiv double %1, 1.000000e+02
  %mul = fmul double %div, 2.100000e+01
  %conv = fptrunc double %mul to float
  store float %conv, float* %overlap_hue, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 9
  %3 = load i32, i32* %h1, align 4
  store i32 %3, i32* %h, align 4
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  store i8* %5, i8** %src, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %6, i32 0, i32 0
  %7 = load i8*, i8** %data2, align 8
  store i8* %7, i8** %dest, align 8
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %8)
  store i32 %call, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %9 = load i32, i32* %h, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %while.body, label %while.end.170

while.body:                                       ; preds = %while.cond
  %10 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %10, i32 0, i32 8
  %11 = load i32, i32* %w3, align 4
  store i32 %11, i32* %w, align 4
  %12 = load i8*, i8** %src, align 8
  store i8* %12, i8** %s, align 8
  %13 = load i8*, i8** %dest, align 8
  store i8* %13, i8** %d, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end.161, %while.body
  %14 = load i32, i32* %w, align 4
  %dec5 = add nsw i32 %14, -1
  store i32 %dec5, i32* %w, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.4
  %15 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx, align 1
  %conv8 = zext i8 %16 to i32
  store i32 %conv8, i32* %r, align 4
  %17 = load i8*, i8** %s, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %18 to i32
  store i32 %conv10, i32* %g, align 4
  %19 = load i8*, i8** %s, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %20 to i32
  store i32 %conv12, i32* %b, align 4
  call void @gimp_rgb_to_hsl_int(i32* %r, i32* %g, i32* %b)
  %21 = load i32, i32* %r, align 4
  %add = add nsw i32 %21, 21
  %div13 = sdiv i32 %add, 6
  store i32 %div13, i32* %hue, align 4
  store i32 0, i32* %hue_counter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.7
  %22 = load i32, i32* %hue_counter, align 4
  %cmp = icmp slt i32 %22, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %r, align 4
  %conv15 = sitofp i32 %23 to float
  %24 = load i32, i32* %hue_counter, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds [7 x i32], [7 x i32]* @hue_saturation.hue_thresholds, i32 0, i64 %idxprom
  %25 = load i32, i32* %arrayidx16, align 4
  %conv17 = sitofp i32 %25 to float
  %26 = load float, float* %overlap_hue, align 4
  %add18 = fadd float %conv17, %26
  %cmp19 = fcmp olt float %conv15, %add18
  br i1 %cmp19, label %if.then, label %if.end.43

if.then:                                          ; preds = %for.body
  %27 = load i32, i32* %hue_counter, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [7 x i32], [7 x i32]* @hue_saturation.hue_thresholds, i32 0, i64 %idxprom21
  %28 = load i32, i32* %arrayidx22, align 4
  store i32 %28, i32* %hue_threshold, align 4
  %29 = load i32, i32* %hue_counter, align 4
  store i32 %29, i32* %hue, align 4
  %30 = load float, float* %overlap_hue, align 4
  %conv23 = fpext float %30 to double
  %cmp24 = fcmp ogt double %conv23, 1.000000e+00
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %31 = load i32, i32* %r, align 4
  %conv26 = sitofp i32 %31 to float
  %32 = load i32, i32* %hue_threshold, align 4
  %conv27 = sitofp i32 %32 to float
  %33 = load float, float* %overlap_hue, align 4
  %sub = fsub float %conv27, %33
  %cmp28 = fcmp ogt float %conv26, %sub
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %land.lhs.true
  %34 = load i32, i32* %hue_counter, align 4
  %add31 = add nsw i32 %34, 1
  store i32 %add31, i32* %secondary_hue, align 4
  store i32 1, i32* %use_secondary_hue, align 4
  %35 = load i32, i32* %r, align 4
  %36 = load i32, i32* %hue_threshold, align 4
  %sub32 = sub nsw i32 %35, %36
  %conv33 = sitofp i32 %sub32 to float
  %37 = load float, float* %overlap_hue, align 4
  %add34 = fadd float %conv33, %37
  %conv35 = fpext float %add34 to double
  %38 = load float, float* %overlap_hue, align 4
  %conv36 = fpext float %38 to double
  %mul37 = fmul double 2.000000e+00, %conv36
  %div38 = fdiv double %conv35, %mul37
  %conv39 = fptrunc double %div38 to float
  store float %conv39, float* %secondary_intensity, align 4
  %39 = load float, float* %secondary_intensity, align 4
  %conv40 = fpext float %39 to double
  %sub41 = fsub double 1.000000e+00, %conv40
  %conv42 = fptrunc double %sub41 to float
  store float %conv42, float* %primary_intensity, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 0, i32* %use_secondary_hue, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.30
  br label %for.end

if.end.43:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %40 = load i32, i32* %hue_counter, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %hue_counter, align 4
  br label %for.cond

for.end:                                          ; preds = %if.end, %for.cond
  %41 = load i32, i32* %hue, align 4
  %cmp44 = icmp sge i32 %41, 6
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  store i32 0, i32* %hue, align 4
  store i32 0, i32* %use_secondary_hue, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %for.end
  %42 = load i32, i32* %secondary_hue, align 4
  %cmp48 = icmp sge i32 %42, 6
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store i32 0, i32* %secondary_hue, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.47
  %43 = load i32, i32* %use_secondary_hue, align 4
  %tobool52 = icmp ne i32 %43, 0
  br i1 %tobool52, label %if.then.53, label %if.else.134

if.then.53:                                       ; preds = %if.end.51
  %44 = load i32, i32* %r, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load i32, i32* %hue, align 4
  %idxprom55 = sext i32 %45 to i64
  %46 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %46, i32 0, i32 4
  %arrayidx56 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer, i32 0, i64 %idxprom55
  %arrayidx57 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx56, i32 0, i64 %idxprom54
  %47 = load i32, i32* %arrayidx57, align 4
  %48 = load i32, i32* %r, align 4
  %idxprom58 = sext i32 %48 to i64
  %49 = load i32, i32* %secondary_hue, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer60 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %50, i32 0, i32 4
  %arrayidx61 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer60, i32 0, i64 %idxprom59
  %arrayidx62 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx61, i32 0, i64 %idxprom58
  %51 = load i32, i32* %arrayidx62, align 4
  %sub63 = sub nsw i32 %47, %51
  store i32 %sub63, i32* %diff, align 4
  %52 = load i32, i32* %diff, align 4
  %cmp64 = icmp slt i32 %52, -127
  br i1 %cmp64, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.53
  %53 = load i32, i32* %diff, align 4
  %cmp66 = icmp sge i32 %53, 128
  br i1 %cmp66, label %if.then.68, label %if.else.86

if.then.68:                                       ; preds = %lor.lhs.false, %if.then.53
  %54 = load i32, i32* %r, align 4
  %idxprom69 = sext i32 %54 to i64
  %55 = load i32, i32* %hue, align 4
  %idxprom70 = sext i32 %55 to i64
  %56 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer71 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %56, i32 0, i32 4
  %arrayidx72 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer71, i32 0, i64 %idxprom70
  %arrayidx73 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx72, i32 0, i64 %idxprom69
  %57 = load i32, i32* %arrayidx73, align 4
  %conv74 = sitofp i32 %57 to float
  %58 = load float, float* %primary_intensity, align 4
  %mul75 = fmul float %conv74, %58
  %59 = load i32, i32* %r, align 4
  %idxprom76 = sext i32 %59 to i64
  %60 = load i32, i32* %secondary_hue, align 4
  %idxprom77 = sext i32 %60 to i64
  %61 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer78 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %61, i32 0, i32 4
  %arrayidx79 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer78, i32 0, i64 %idxprom77
  %arrayidx80 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx79, i32 0, i64 %idxprom76
  %62 = load i32, i32* %arrayidx80, align 4
  %add81 = add nsw i32 %62, 255
  %conv82 = sitofp i32 %add81 to float
  %63 = load float, float* %secondary_intensity, align 4
  %mul83 = fmul float %conv82, %63
  %add84 = fadd float %mul75, %mul83
  %conv85 = fptosi float %add84 to i32
  %rem = srem i32 %conv85, 255
  store i32 %rem, i32* %r, align 4
  br label %if.end.103

if.else.86:                                       ; preds = %lor.lhs.false
  %64 = load i32, i32* %r, align 4
  %idxprom87 = sext i32 %64 to i64
  %65 = load i32, i32* %hue, align 4
  %idxprom88 = sext i32 %65 to i64
  %66 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer89 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %66, i32 0, i32 4
  %arrayidx90 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer89, i32 0, i64 %idxprom88
  %arrayidx91 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx90, i32 0, i64 %idxprom87
  %67 = load i32, i32* %arrayidx91, align 4
  %conv92 = sitofp i32 %67 to float
  %68 = load float, float* %primary_intensity, align 4
  %mul93 = fmul float %conv92, %68
  %69 = load i32, i32* %r, align 4
  %idxprom94 = sext i32 %69 to i64
  %70 = load i32, i32* %secondary_hue, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer96 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %71, i32 0, i32 4
  %arrayidx97 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer96, i32 0, i64 %idxprom95
  %arrayidx98 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx97, i32 0, i64 %idxprom94
  %72 = load i32, i32* %arrayidx98, align 4
  %conv99 = sitofp i32 %72 to float
  %73 = load float, float* %secondary_intensity, align 4
  %mul100 = fmul float %conv99, %73
  %add101 = fadd float %mul93, %mul100
  %conv102 = fptosi float %add101 to i32
  store i32 %conv102, i32* %r, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.86, %if.then.68
  %74 = load i32, i32* %g, align 4
  %idxprom104 = sext i32 %74 to i64
  %75 = load i32, i32* %hue, align 4
  %idxprom105 = sext i32 %75 to i64
  %76 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %saturation_transfer = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %76, i32 0, i32 6
  %arrayidx106 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %saturation_transfer, i32 0, i64 %idxprom105
  %arrayidx107 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx106, i32 0, i64 %idxprom104
  %77 = load i32, i32* %arrayidx107, align 4
  %conv108 = sitofp i32 %77 to float
  %78 = load float, float* %primary_intensity, align 4
  %mul109 = fmul float %conv108, %78
  %79 = load i32, i32* %g, align 4
  %idxprom110 = sext i32 %79 to i64
  %80 = load i32, i32* %secondary_hue, align 4
  %idxprom111 = sext i32 %80 to i64
  %81 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %saturation_transfer112 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %81, i32 0, i32 6
  %arrayidx113 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %saturation_transfer112, i32 0, i64 %idxprom111
  %arrayidx114 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx113, i32 0, i64 %idxprom110
  %82 = load i32, i32* %arrayidx114, align 4
  %conv115 = sitofp i32 %82 to float
  %83 = load float, float* %secondary_intensity, align 4
  %mul116 = fmul float %conv115, %83
  %add117 = fadd float %mul109, %mul116
  %conv118 = fptosi float %add117 to i32
  store i32 %conv118, i32* %g, align 4
  %84 = load i32, i32* %b, align 4
  %idxprom119 = sext i32 %84 to i64
  %85 = load i32, i32* %hue, align 4
  %idxprom120 = sext i32 %85 to i64
  %86 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness_transfer = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %86, i32 0, i32 5
  %arrayidx121 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %lightness_transfer, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx121, i32 0, i64 %idxprom119
  %87 = load i32, i32* %arrayidx122, align 4
  %conv123 = sitofp i32 %87 to float
  %88 = load float, float* %primary_intensity, align 4
  %mul124 = fmul float %conv123, %88
  %89 = load i32, i32* %b, align 4
  %idxprom125 = sext i32 %89 to i64
  %90 = load i32, i32* %secondary_hue, align 4
  %idxprom126 = sext i32 %90 to i64
  %91 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness_transfer127 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %91, i32 0, i32 5
  %arrayidx128 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %lightness_transfer127, i32 0, i64 %idxprom126
  %arrayidx129 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx128, i32 0, i64 %idxprom125
  %92 = load i32, i32* %arrayidx129, align 4
  %conv130 = sitofp i32 %92 to float
  %93 = load float, float* %secondary_intensity, align 4
  %mul131 = fmul float %conv130, %93
  %add132 = fadd float %mul124, %mul131
  %conv133 = fptosi float %add132 to i32
  store i32 %conv133, i32* %b, align 4
  br label %if.end.150

if.else.134:                                      ; preds = %if.end.51
  %94 = load i32, i32* %r, align 4
  %idxprom135 = sext i32 %94 to i64
  %95 = load i32, i32* %hue, align 4
  %idxprom136 = sext i32 %95 to i64
  %96 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %hue_transfer137 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %96, i32 0, i32 4
  %arrayidx138 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %hue_transfer137, i32 0, i64 %idxprom136
  %arrayidx139 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx138, i32 0, i64 %idxprom135
  %97 = load i32, i32* %arrayidx139, align 4
  store i32 %97, i32* %r, align 4
  %98 = load i32, i32* %g, align 4
  %idxprom140 = sext i32 %98 to i64
  %99 = load i32, i32* %hue, align 4
  %idxprom141 = sext i32 %99 to i64
  %100 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %saturation_transfer142 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %100, i32 0, i32 6
  %arrayidx143 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %saturation_transfer142, i32 0, i64 %idxprom141
  %arrayidx144 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx143, i32 0, i64 %idxprom140
  %101 = load i32, i32* %arrayidx144, align 4
  store i32 %101, i32* %g, align 4
  %102 = load i32, i32* %b, align 4
  %idxprom145 = sext i32 %102 to i64
  %103 = load i32, i32* %hue, align 4
  %idxprom146 = sext i32 %103 to i64
  %104 = load %struct._HueSaturation*, %struct._HueSaturation** %hs.addr, align 8
  %lightness_transfer147 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %104, i32 0, i32 5
  %arrayidx148 = getelementptr inbounds [6 x [256 x i32]], [6 x [256 x i32]]* %lightness_transfer147, i32 0, i64 %idxprom146
  %arrayidx149 = getelementptr inbounds [256 x i32], [256 x i32]* %arrayidx148, i32 0, i64 %idxprom145
  %105 = load i32, i32* %arrayidx149, align 4
  store i32 %105, i32* %b, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.134, %if.end.103
  call void @gimp_hsl_to_rgb_int(i32* %r, i32* %g, i32* %b)
  %106 = load i32, i32* %r, align 4
  %conv151 = trunc i32 %106 to i8
  %107 = load i8*, i8** %d, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %107, i64 0
  store i8 %conv151, i8* %arrayidx152, align 1
  %108 = load i32, i32* %g, align 4
  %conv153 = trunc i32 %108 to i8
  %109 = load i8*, i8** %d, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %conv153, i8* %arrayidx154, align 1
  %110 = load i32, i32* %b, align 4
  %conv155 = trunc i32 %110 to i8
  %111 = load i8*, i8** %d, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %111, i64 2
  store i8 %conv155, i8* %arrayidx156, align 1
  %112 = load i32, i32* %alpha, align 4
  %tobool157 = icmp ne i32 %112, 0
  br i1 %tobool157, label %if.then.158, label %if.end.161

if.then.158:                                      ; preds = %if.end.150
  %113 = load i8*, i8** %s, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %113, i64 3
  %114 = load i8, i8* %arrayidx159, align 1
  %115 = load i8*, i8** %d, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %115, i64 3
  store i8 %114, i8* %arrayidx160, align 1
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.158, %if.end.150
  %116 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %116, i32 0, i32 10
  %117 = load i32, i32* %bytes, align 4
  %118 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %117 to i64
  %add.ptr = getelementptr inbounds i8, i8* %118, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %119 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes162 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %119, i32 0, i32 10
  %120 = load i32, i32* %bytes162, align 4
  %121 = load i8*, i8** %d, align 8
  %idx.ext163 = sext i32 %120 to i64
  %add.ptr164 = getelementptr inbounds i8, i8* %121, i64 %idx.ext163
  store i8* %add.ptr164, i8** %d, align 8
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  %122 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %122, i32 0, i32 5
  %123 = load i32, i32* %rowstride, align 4
  %124 = load i8*, i8** %src, align 8
  %idx.ext165 = sext i32 %123 to i64
  %add.ptr166 = getelementptr inbounds i8, i8* %124, i64 %idx.ext165
  store i8* %add.ptr166, i8** %src, align 8
  %125 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride167 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %125, i32 0, i32 5
  %126 = load i32, i32* %rowstride167, align 4
  %127 = load i8*, i8** %dest, align 8
  %idx.ext168 = sext i32 %126 to i64
  %add.ptr169 = getelementptr inbounds i8, i8* %127, i64 %idx.ext168
  store i8* %add.ptr169, i8** %dest, align 8
  br label %while.cond

while.end.170:                                    ; preds = %while.cond
  ret void
}

declare i32 @pixel_region_has_alpha(%struct._PixelRegion*) #1

declare void @gimp_rgb_to_hsl_int(i32*, i32*, i32*) #1

declare void @gimp_hsl_to_rgb_int(i32*, i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
