; ModuleID = './cmswtpnt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsCIExyY = type { double, double, double }
%struct.ISOTEMPERATURE = type { double, double, double, double }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }
%struct.cmsVEC3 = type { [3 x double] }
%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.cmsCIExyYTRIPLE = type { %struct.cmsCIExyY, %struct.cmsCIExyY, %struct.cmsCIExyY }

@cmsD50_XYZ.D50XYZ = internal global %struct.cmsCIEXYZ { double 9.642000e-01, double 1.000000e+00, double 8.249000e-01 }, align 8
@cmsD50_xyY.D50xyY = internal global %struct.cmsCIExyY zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"(WhitePoint != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./lcms2/src/cmswtpnt.c\00", align 1
@__PRETTY_FUNCTION__.cmsWhitePointFromTemp = private unnamed_addr constant [61 x i8] c"cmsBool cmsWhitePointFromTemp(cmsCIExyY *, cmsFloat64Number)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"cmsWhitePointFromTemp: invalid temp\00", align 1
@__PRETTY_FUNCTION__.cmsTempFromWhitePoint = private unnamed_addr constant [69 x i8] c"cmsBool cmsTempFromWhitePoint(cmsFloat64Number *, const cmsCIExyY *)\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"(TempK != ((void*)0))\00", align 1
@isotempdata = internal global [31 x %struct.ISOTEMPERATURE] [%struct.ISOTEMPERATURE { double 0.000000e+00, double 1.800600e-01, double 2.635200e-01, double -2.434100e-01 }, %struct.ISOTEMPERATURE { double 1.000000e+01, double 1.806600e-01, double 2.658900e-01, double -2.547900e-01 }, %struct.ISOTEMPERATURE { double 2.000000e+01, double 1.813300e-01, double 2.684600e-01, double -2.687600e-01 }, %struct.ISOTEMPERATURE { double 3.000000e+01, double 1.820800e-01, double 2.711900e-01, double -2.853900e-01 }, %struct.ISOTEMPERATURE { double 4.000000e+01, double 1.829300e-01, double 2.740700e-01, double -3.047000e-01 }, %struct.ISOTEMPERATURE { double 5.000000e+01, double 1.838800e-01, double 2.770900e-01, double -3.267500e-01 }, %struct.ISOTEMPERATURE { double 6.000000e+01, double 1.849400e-01, double 2.802100e-01, double -3.515600e-01 }, %struct.ISOTEMPERATURE { double 7.000000e+01, double 1.861100e-01, double 2.834200e-01, double -3.791500e-01 }, %struct.ISOTEMPERATURE { double 8.000000e+01, double 1.874000e-01, double 2.866800e-01, double -4.095500e-01 }, %struct.ISOTEMPERATURE { double 9.000000e+01, double 1.888000e-01, double 2.899700e-01, double -4.427800e-01 }, %struct.ISOTEMPERATURE { double 1.000000e+02, double 1.903200e-01, double 2.932600e-01, double -4.788800e-01 }, %struct.ISOTEMPERATURE { double 1.250000e+02, double 1.946200e-01, double 3.014100e-01, double -5.820400e-01 }, %struct.ISOTEMPERATURE { double 1.500000e+02, double 1.996200e-01, double 3.092100e-01, double -7.047100e-01 }, %struct.ISOTEMPERATURE { double 1.750000e+02, double 2.052500e-01, double 3.164700e-01, double -8.490100e-01 }, %struct.ISOTEMPERATURE { double 2.000000e+02, double 2.114200e-01, double 3.231200e-01, double -1.018200e+00 }, %struct.ISOTEMPERATURE { double 2.250000e+02, double 2.180700e-01, double 3.290900e-01, double -1.216800e+00 }, %struct.ISOTEMPERATURE { double 2.500000e+02, double 2.251100e-01, double 3.343900e-01, double -1.451200e+00 }, %struct.ISOTEMPERATURE { double 2.750000e+02, double 2.324700e-01, double 3.390400e-01, double -1.729800e+00 }, %struct.ISOTEMPERATURE { double 3.000000e+02, double 2.401000e-01, double 3.430800e-01, double -2.063700e+00 }, %struct.ISOTEMPERATURE { double 3.250000e+02, double 2.470200e-01, double 3.465500e-01, double -2.468100e+00 }, %struct.ISOTEMPERATURE { double 3.500000e+02, double 2.559100e-01, double 3.495100e-01, double -2.964100e+00 }, %struct.ISOTEMPERATURE { double 3.750000e+02, double 2.640000e-01, double 3.520000e-01, double -3.581400e+00 }, %struct.ISOTEMPERATURE { double 4.000000e+02, double 2.721800e-01, double 3.540700e-01, double -4.363300e+00 }, %struct.ISOTEMPERATURE { double 4.250000e+02, double 2.803900e-01, double 3.557700e-01, double -5.376200e+00 }, %struct.ISOTEMPERATURE { double 4.500000e+02, double 2.886300e-01, double 3.571400e-01, double -6.726200e+00 }, %struct.ISOTEMPERATURE { double 4.750000e+02, double 2.968500e-01, double 3.582300e-01, double -8.595500e+00 }, %struct.ISOTEMPERATURE { double 5.000000e+02, double 3.050500e-01, double 3.590700e-01, double -1.132400e+01 }, %struct.ISOTEMPERATURE { double 5.250000e+02, double 3.132000e-01, double 3.596800e-01, double -1.562800e+01 }, %struct.ISOTEMPERATURE { double 5.500000e+02, double 3.212900e-01, double 3.601100e-01, double -2.332500e+01 }, %struct.ISOTEMPERATURE { double 5.750000e+02, double 3.293100e-01, double 3.603800e-01, double -4.077000e+01 }, %struct.ISOTEMPERATURE { double 6.000000e+02, double 3.372400e-01, double 3.605100e-01, double -1.164500e+02 }], align 16
@_cmsAdaptationMatrix.LamRigg = private unnamed_addr constant %struct.cmsMAT3 { [3 x %struct.cmsVEC3] [%struct.cmsVEC3 { [3 x double] [double 8.951000e-01, double 2.664000e-01, double -1.614000e-01] }, %struct.cmsVEC3 { [3 x double] [double -7.502000e-01, double 1.713500e+00, double 3.670000e-02] }, %struct.cmsVEC3 { [3 x double] [double 3.890000e-02, double -6.850000e-02, double 1.029600e+00] }] }, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"(Result != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsAdaptToIlluminant = private unnamed_addr constant [99 x i8] c"cmsBool cmsAdaptToIlluminant(cmsCIEXYZ *, const cmsCIEXYZ *, const cmsCIEXYZ *, const cmsCIEXYZ *)\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"(SourceWhitePt != ((void*)0))\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"(Illuminant != ((void*)0))\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"(Value != ((void*)0))\00", align 1

; Function Attrs: nounwind uwtable
define %struct.cmsCIEXYZ* @cmsD50_XYZ() #0 {
entry:
  ret %struct.cmsCIEXYZ* @cmsD50_XYZ.D50XYZ
}

; Function Attrs: nounwind uwtable
define %struct.cmsCIExyY* @cmsD50_xyY() #0 {
entry:
  %call = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #5
  call void @cmsXYZ2xyY(%struct.cmsCIExyY* @cmsD50_xyY.D50xyY, %struct.cmsCIEXYZ* %call) #5
  ret %struct.cmsCIExyY* @cmsD50_xyY.D50xyY
}

declare void @cmsXYZ2xyY(%struct.cmsCIExyY*, %struct.cmsCIEXYZ*) #1

; Function Attrs: nounwind uwtable
define i32 @cmsWhitePointFromTemp(%struct.cmsCIExyY* %WhitePoint, double %TempK) #0 {
entry:
  %retval = alloca i32, align 4
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %TempK.addr = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %T = alloca double, align 8
  %T2 = alloca double, align 8
  %T3 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  store double %TempK, double* %TempK.addr, align 8, !tbaa !5
  %0 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast double* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast double* %T2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast double* %T3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsCIExyY* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 54, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.cmsWhitePointFromTemp, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %6, %cond.true
  %7 = load double, double* %TempK.addr, align 8, !tbaa !5
  store double %7, double* %T, align 8, !tbaa !5
  %8 = load double, double* %T, align 8, !tbaa !5
  %9 = load double, double* %T, align 8, !tbaa !5
  %mul = fmul double %8, %9
  store double %mul, double* %T2, align 8, !tbaa !5
  %10 = load double, double* %T2, align 8, !tbaa !5
  %11 = load double, double* %T, align 8, !tbaa !5
  %mul1 = fmul double %10, %11
  store double %mul1, double* %T3, align 8, !tbaa !5
  %12 = load double, double* %T, align 8, !tbaa !5
  %cmp2 = fcmp oge double %12, 4.000000e+03
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %cond.end
  %13 = load double, double* %T, align 8, !tbaa !5
  %cmp3 = fcmp ole double %13, 7.000000e+03
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load double, double* %T3, align 8, !tbaa !5
  %div = fdiv double 1.000000e+09, %14
  %mul4 = fmul double -4.607000e+00, %div
  %15 = load double, double* %T2, align 8, !tbaa !5
  %div5 = fdiv double 1.000000e+06, %15
  %mul6 = fmul double 2.967800e+00, %div5
  %add = fadd double %mul4, %mul6
  %16 = load double, double* %T, align 8, !tbaa !5
  %div7 = fdiv double 1.000000e+03, %16
  %mul8 = fmul double 9.911000e-02, %div7
  %add9 = fadd double %add, %mul8
  %add10 = fadd double %add9, 2.440630e-01
  store double %add10, double* %x, align 8, !tbaa !5
  br label %if.end.25

if.else:                                          ; preds = %land.lhs.true, %cond.end
  %17 = load double, double* %T, align 8, !tbaa !5
  %cmp11 = fcmp ogt double %17, 7.000000e+03
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.24

land.lhs.true.12:                                 ; preds = %if.else
  %18 = load double, double* %T, align 8, !tbaa !5
  %cmp13 = fcmp ole double %18, 2.500000e+04
  br i1 %cmp13, label %if.then.14, label %if.else.24

if.then.14:                                       ; preds = %land.lhs.true.12
  %19 = load double, double* %T3, align 8, !tbaa !5
  %div15 = fdiv double 1.000000e+09, %19
  %mul16 = fmul double -2.006400e+00, %div15
  %20 = load double, double* %T2, align 8, !tbaa !5
  %div17 = fdiv double 1.000000e+06, %20
  %mul18 = fmul double 1.901800e+00, %div17
  %add19 = fadd double %mul16, %mul18
  %21 = load double, double* %T, align 8, !tbaa !5
  %div20 = fdiv double 1.000000e+03, %21
  %mul21 = fmul double 2.474800e-01, %div20
  %add22 = fadd double %add19, %mul21
  %add23 = fadd double %add22, 2.370400e-01
  store double %add23, double* %x, align 8, !tbaa !5
  br label %if.end

if.else.24:                                       ; preds = %land.lhs.true.12, %if.else
  call void (%struct._cmsContext_struct*, i32, i8*, ...) @cmsSignalError(%struct._cmsContext_struct* null, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0)) #5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then.14
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then
  %22 = load double, double* %x, align 8, !tbaa !5
  %23 = load double, double* %x, align 8, !tbaa !5
  %mul26 = fmul double %22, %23
  %mul27 = fmul double -3.000000e+00, %mul26
  %24 = load double, double* %x, align 8, !tbaa !5
  %mul28 = fmul double 2.870000e+00, %24
  %add29 = fadd double %mul27, %mul28
  %sub = fsub double %add29, 2.750000e-01
  store double %sub, double* %y, align 8, !tbaa !5
  %25 = load double, double* %x, align 8, !tbaa !5
  %26 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %x30 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %26, i32 0, i32 0
  store double %25, double* %x30, align 8, !tbaa !7
  %27 = load double, double* %y, align 8, !tbaa !5
  %28 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %y31 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %28, i32 0, i32 1
  store double %27, double* %y31, align 8, !tbaa !9
  %29 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %29, i32 0, i32 2
  store double 1.000000e+00, double* %Y, align 8, !tbaa !10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.25, %if.else.24
  %30 = bitcast double* %T3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %30) #2
  %31 = bitcast double* %T2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %31) #2
  %32 = bitcast double* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %32) #2
  %33 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %33) #2
  %34 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #2
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #3

declare void @cmsSignalError(%struct._cmsContext_struct*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @cmsTempFromWhitePoint(double* %TempK, %struct.cmsCIExyY* %WhitePoint) #0 {
entry:
  %retval = alloca i32, align 4
  %TempK.addr = alloca double*, align 8
  %WhitePoint.addr = alloca %struct.cmsCIExyY*, align 8
  %j = alloca i32, align 4
  %us = alloca double, align 8
  %vs = alloca double, align 8
  %uj = alloca double, align 8
  %vj = alloca double, align 8
  %tj = alloca double, align 8
  %di = alloca double, align 8
  %dj = alloca double, align 8
  %mi = alloca double, align 8
  %mj = alloca double, align 8
  %xs = alloca double, align 8
  %ys = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double* %TempK, double** %TempK.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %WhitePoint, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = bitcast double* %us to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast double* %vs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast double* %uj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast double* %vj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast double* %tj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast double* %di to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast double* %dj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast double* %mi to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast double* %mj to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast double* %xs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast double* %ys to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsCIExyY* %12, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 151, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.cmsTempFromWhitePoint, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %13, %cond.true
  %14 = load double*, double** %TempK.addr, align 8, !tbaa !1
  %cmp1 = icmp ne double* %14, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 152, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.cmsTempFromWhitePoint, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %15, %cond.true.2
  store double 0.000000e+00, double* %mi, align 8, !tbaa !5
  store double 0.000000e+00, double* %di, align 8, !tbaa !5
  %16 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %16, i32 0, i32 0
  %17 = load double, double* %x, align 8, !tbaa !7
  store double %17, double* %xs, align 8, !tbaa !5
  %18 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePoint.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %18, i32 0, i32 1
  %19 = load double, double* %y, align 8, !tbaa !9
  store double %19, double* %ys, align 8, !tbaa !5
  %20 = load double, double* %xs, align 8, !tbaa !5
  %mul = fmul double 2.000000e+00, %20
  %21 = load double, double* %xs, align 8, !tbaa !5
  %sub = fsub double -0.000000e+00, %21
  %22 = load double, double* %ys, align 8, !tbaa !5
  %mul5 = fmul double 6.000000e+00, %22
  %add = fadd double %sub, %mul5
  %add6 = fadd double %add, 1.500000e+00
  %div = fdiv double %mul, %add6
  store double %div, double* %us, align 8, !tbaa !5
  %23 = load double, double* %ys, align 8, !tbaa !5
  %mul7 = fmul double 3.000000e+00, %23
  %24 = load double, double* %xs, align 8, !tbaa !5
  %sub8 = fsub double -0.000000e+00, %24
  %25 = load double, double* %ys, align 8, !tbaa !5
  %mul9 = fmul double 6.000000e+00, %25
  %add10 = fadd double %sub8, %mul9
  %add11 = fadd double %add10, 1.500000e+00
  %div12 = fdiv double %mul7, %add11
  store double %div12, double* %vs, align 8, !tbaa !5
  store i32 0, i32* %j, align 4, !tbaa !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.4
  %26 = load i32, i32* %j, align 4, !tbaa !11
  %conv = zext i32 %26 to i64
  %cmp13 = icmp ult i64 %conv, 31
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [31 x %struct.ISOTEMPERATURE], [31 x %struct.ISOTEMPERATURE]* @isotempdata, i32 0, i64 %idxprom
  %ut = getelementptr inbounds %struct.ISOTEMPERATURE, %struct.ISOTEMPERATURE* %arrayidx, i32 0, i32 1
  %28 = load double, double* %ut, align 8, !tbaa !13
  store double %28, double* %uj, align 8, !tbaa !5
  %29 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom15 = zext i32 %29 to i64
  %arrayidx16 = getelementptr inbounds [31 x %struct.ISOTEMPERATURE], [31 x %struct.ISOTEMPERATURE]* @isotempdata, i32 0, i64 %idxprom15
  %vt = getelementptr inbounds %struct.ISOTEMPERATURE, %struct.ISOTEMPERATURE* %arrayidx16, i32 0, i32 2
  %30 = load double, double* %vt, align 8, !tbaa !15
  store double %30, double* %vj, align 8, !tbaa !5
  %31 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom17 = zext i32 %31 to i64
  %arrayidx18 = getelementptr inbounds [31 x %struct.ISOTEMPERATURE], [31 x %struct.ISOTEMPERATURE]* @isotempdata, i32 0, i64 %idxprom17
  %tt = getelementptr inbounds %struct.ISOTEMPERATURE, %struct.ISOTEMPERATURE* %arrayidx18, i32 0, i32 3
  %32 = load double, double* %tt, align 8, !tbaa !16
  store double %32, double* %tj, align 8, !tbaa !5
  %33 = load i32, i32* %j, align 4, !tbaa !11
  %idxprom19 = zext i32 %33 to i64
  %arrayidx20 = getelementptr inbounds [31 x %struct.ISOTEMPERATURE], [31 x %struct.ISOTEMPERATURE]* @isotempdata, i32 0, i64 %idxprom19
  %mirek = getelementptr inbounds %struct.ISOTEMPERATURE, %struct.ISOTEMPERATURE* %arrayidx20, i32 0, i32 0
  %34 = load double, double* %mirek, align 8, !tbaa !17
  store double %34, double* %mj, align 8, !tbaa !5
  %35 = load double, double* %vs, align 8, !tbaa !5
  %36 = load double, double* %vj, align 8, !tbaa !5
  %sub21 = fsub double %35, %36
  %37 = load double, double* %tj, align 8, !tbaa !5
  %38 = load double, double* %us, align 8, !tbaa !5
  %39 = load double, double* %uj, align 8, !tbaa !5
  %sub22 = fsub double %38, %39
  %mul23 = fmul double %37, %sub22
  %sub24 = fsub double %sub21, %mul23
  %40 = load double, double* %tj, align 8, !tbaa !5
  %41 = load double, double* %tj, align 8, !tbaa !5
  %mul25 = fmul double %40, %41
  %add26 = fadd double 1.000000e+00, %mul25
  %call = call double @sqrt(double %add26) #7
  %div27 = fdiv double %sub24, %call
  store double %div27, double* %dj, align 8, !tbaa !5
  %42 = load i32, i32* %j, align 4, !tbaa !11
  %cmp28 = icmp ne i32 %42, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %43 = load double, double* %di, align 8, !tbaa !5
  %44 = load double, double* %dj, align 8, !tbaa !5
  %div30 = fdiv double %43, %44
  %cmp31 = fcmp olt double %div30, 0.000000e+00
  br i1 %cmp31, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %45 = load double, double* %mi, align 8, !tbaa !5
  %46 = load double, double* %di, align 8, !tbaa !5
  %47 = load double, double* %di, align 8, !tbaa !5
  %48 = load double, double* %dj, align 8, !tbaa !5
  %sub33 = fsub double %47, %48
  %div34 = fdiv double %46, %sub33
  %49 = load double, double* %mj, align 8, !tbaa !5
  %50 = load double, double* %mi, align 8, !tbaa !5
  %sub35 = fsub double %49, %50
  %mul36 = fmul double %div34, %sub35
  %add37 = fadd double %45, %mul36
  %div38 = fdiv double 1.000000e+06, %add37
  %51 = load double*, double** %TempK.addr, align 8, !tbaa !1
  store double %div38, double* %51, align 8, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %for.body
  %52 = load double, double* %dj, align 8, !tbaa !5
  store double %52, double* %di, align 8, !tbaa !5
  %53 = load double, double* %mj, align 8, !tbaa !5
  store double %53, double* %mi, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %54 = load i32, i32* %j, align 4, !tbaa !11
  %inc = add i32 %54, 1
  store i32 %inc, i32* %j, align 4, !tbaa !11
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %55 = bitcast double* %ys to i8*
  call void @llvm.lifetime.end(i64 8, i8* %55) #2
  %56 = bitcast double* %xs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %56) #2
  %57 = bitcast double* %mj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %57) #2
  %58 = bitcast double* %mi to i8*
  call void @llvm.lifetime.end(i64 8, i8* %58) #2
  %59 = bitcast double* %dj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %59) #2
  %60 = bitcast double* %di to i8*
  call void @llvm.lifetime.end(i64 8, i8* %60) #2
  %61 = bitcast double* %tj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %61) #2
  %62 = bitcast double* %vj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %62) #2
  %63 = bitcast double* %uj to i8*
  call void @llvm.lifetime.end(i64 8, i8* %63) #2
  %64 = bitcast double* %vs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %64) #2
  %65 = bitcast double* %us to i8*
  call void @llvm.lifetime.end(i64 8, i8* %65) #2
  %66 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %66) #2
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind
declare double @sqrt(double) #4

; Function Attrs: nounwind uwtable
define i32 @_cmsAdaptationMatrix(%struct.cmsMAT3* %r, %struct.cmsMAT3* %ConeMatrix, %struct.cmsCIEXYZ* %FromIll, %struct.cmsCIEXYZ* %ToIll) #0 {
entry:
  %r.addr = alloca %struct.cmsMAT3*, align 8
  %ConeMatrix.addr = alloca %struct.cmsMAT3*, align 8
  %FromIll.addr = alloca %struct.cmsCIEXYZ*, align 8
  %ToIll.addr = alloca %struct.cmsCIEXYZ*, align 8
  %LamRigg = alloca %struct.cmsMAT3, align 8
  store %struct.cmsMAT3* %r, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %ConeMatrix, %struct.cmsMAT3** %ConeMatrix.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %FromIll, %struct.cmsCIEXYZ** %FromIll.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %ToIll, %struct.cmsCIEXYZ** %ToIll.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsMAT3* %LamRigg to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #2
  %1 = bitcast %struct.cmsMAT3* %LamRigg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast (%struct.cmsMAT3* @_cmsAdaptationMatrix.LamRigg to i8*), i64 72, i32 8, i1 false)
  %2 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ConeMatrix.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsMAT3* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.cmsMAT3* %LamRigg, %struct.cmsMAT3** %ConeMatrix.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %4 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %FromIll.addr, align 8, !tbaa !1
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %ToIll.addr, align 8, !tbaa !1
  %6 = load %struct.cmsMAT3*, %struct.cmsMAT3** %ConeMatrix.addr, align 8, !tbaa !1
  %call = call i32 @ComputeChromaticAdaptation(%struct.cmsMAT3* %3, %struct.cmsCIEXYZ* %4, %struct.cmsCIEXYZ* %5, %struct.cmsMAT3* %6) #5
  %7 = bitcast %struct.cmsMAT3* %LamRigg to i8*
  call void @llvm.lifetime.end(i64 72, i8* %7) #2
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i32 @ComputeChromaticAdaptation(%struct.cmsMAT3* %Conversion, %struct.cmsCIEXYZ* %SourceWhitePoint, %struct.cmsCIEXYZ* %DestWhitePoint, %struct.cmsMAT3* %Chad) #0 {
entry:
  %retval = alloca i32, align 4
  %Conversion.addr = alloca %struct.cmsMAT3*, align 8
  %SourceWhitePoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %DestWhitePoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %Chad.addr = alloca %struct.cmsMAT3*, align 8
  %Chad_Inv = alloca %struct.cmsMAT3, align 8
  %ConeSourceXYZ = alloca %struct.cmsVEC3, align 8
  %ConeSourceRGB = alloca %struct.cmsVEC3, align 8
  %ConeDestXYZ = alloca %struct.cmsVEC3, align 8
  %ConeDestRGB = alloca %struct.cmsVEC3, align 8
  %Cone = alloca %struct.cmsMAT3, align 8
  %Tmp = alloca %struct.cmsMAT3, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %Conversion, %struct.cmsMAT3** %Conversion.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %SourceWhitePoint, %struct.cmsCIEXYZ** %SourceWhitePoint.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %DestWhitePoint, %struct.cmsCIEXYZ** %DestWhitePoint.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %Chad, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsMAT3* %Chad_Inv to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #2
  %1 = bitcast %struct.cmsVEC3* %ConeSourceXYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast %struct.cmsVEC3* %ConeSourceRGB to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #2
  %3 = bitcast %struct.cmsVEC3* %ConeDestXYZ to i8*
  call void @llvm.lifetime.start(i64 24, i8* %3) #2
  %4 = bitcast %struct.cmsVEC3* %ConeDestRGB to i8*
  call void @llvm.lifetime.start(i64 24, i8* %4) #2
  %5 = bitcast %struct.cmsMAT3* %Cone to i8*
  call void @llvm.lifetime.start(i64 72, i8* %5) #2
  %6 = bitcast %struct.cmsMAT3* %Tmp to i8*
  call void @llvm.lifetime.start(i64 72, i8* %6) #2
  %7 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  %8 = bitcast %struct.cmsMAT3* %Tmp to i8*
  %9 = bitcast %struct.cmsMAT3* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 72, i32 8, i1 false), !tbaa.struct !18
  %call = call i32 @_cmsMAT3inverse(%struct.cmsMAT3* %Tmp, %struct.cmsMAT3* %Chad_Inv) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %SourceWhitePoint.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %10, i32 0, i32 0
  %11 = load double, double* %X, align 8, !tbaa !7
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %SourceWhitePoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 1
  %13 = load double, double* %Y, align 8, !tbaa !9
  %14 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %SourceWhitePoint.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %14, i32 0, i32 2
  %15 = load double, double* %Z, align 8, !tbaa !10
  call void @_cmsVEC3init(%struct.cmsVEC3* %ConeSourceXYZ, double %11, double %13, double %15) #5
  %16 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %DestWhitePoint.addr, align 8, !tbaa !1
  %X1 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %16, i32 0, i32 0
  %17 = load double, double* %X1, align 8, !tbaa !7
  %18 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %DestWhitePoint.addr, align 8, !tbaa !1
  %Y2 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %18, i32 0, i32 1
  %19 = load double, double* %Y2, align 8, !tbaa !9
  %20 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %DestWhitePoint.addr, align 8, !tbaa !1
  %Z3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %20, i32 0, i32 2
  %21 = load double, double* %Z3, align 8, !tbaa !10
  call void @_cmsVEC3init(%struct.cmsVEC3* %ConeDestXYZ, double %17, double %19, double %21) #5
  %22 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  call void @_cmsMAT3eval(%struct.cmsVEC3* %ConeSourceRGB, %struct.cmsMAT3* %22, %struct.cmsVEC3* %ConeSourceXYZ) #5
  %23 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  call void @_cmsMAT3eval(%struct.cmsVEC3* %ConeDestRGB, %struct.cmsMAT3* %23, %struct.cmsVEC3* %ConeDestXYZ) #5
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Cone, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %ConeDestRGB, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %24 = load double, double* %arrayidx4, align 8, !tbaa !5
  %n5 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %ConeSourceRGB, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %n5, i32 0, i64 0
  %25 = load double, double* %arrayidx6, align 8, !tbaa !5
  %div = fdiv double %24, %25
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx, double %div, double 0.000000e+00, double 0.000000e+00) #5
  %v7 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Cone, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v7, i32 0, i64 1
  %n9 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %ConeDestRGB, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %n9, i32 0, i64 1
  %26 = load double, double* %arrayidx10, align 8, !tbaa !5
  %n11 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %ConeSourceRGB, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %n11, i32 0, i64 1
  %27 = load double, double* %arrayidx12, align 8, !tbaa !5
  %div13 = fdiv double %26, %27
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx8, double 0.000000e+00, double %div13, double 0.000000e+00) #5
  %v14 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Cone, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v14, i32 0, i64 2
  %n16 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %ConeDestRGB, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %n16, i32 0, i64 2
  %28 = load double, double* %arrayidx17, align 8, !tbaa !5
  %n18 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %ConeSourceRGB, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %n18, i32 0, i64 2
  %29 = load double, double* %arrayidx19, align 8, !tbaa !5
  %div20 = fdiv double %28, %29
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx15, double 0.000000e+00, double 0.000000e+00, double %div20) #5
  %30 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Chad.addr, align 8, !tbaa !1
  call void @_cmsMAT3per(%struct.cmsMAT3* %Tmp, %struct.cmsMAT3* %Cone, %struct.cmsMAT3* %30) #5
  %31 = load %struct.cmsMAT3*, %struct.cmsMAT3** %Conversion.addr, align 8, !tbaa !1
  call void @_cmsMAT3per(%struct.cmsMAT3* %31, %struct.cmsMAT3* %Chad_Inv, %struct.cmsMAT3* %Tmp) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %32 = bitcast %struct.cmsMAT3* %Tmp to i8*
  call void @llvm.lifetime.end(i64 72, i8* %32) #2
  %33 = bitcast %struct.cmsMAT3* %Cone to i8*
  call void @llvm.lifetime.end(i64 72, i8* %33) #2
  %34 = bitcast %struct.cmsVEC3* %ConeDestRGB to i8*
  call void @llvm.lifetime.end(i64 24, i8* %34) #2
  %35 = bitcast %struct.cmsVEC3* %ConeDestXYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %35) #2
  %36 = bitcast %struct.cmsVEC3* %ConeSourceRGB to i8*
  call void @llvm.lifetime.end(i64 24, i8* %36) #2
  %37 = bitcast %struct.cmsVEC3* %ConeSourceXYZ to i8*
  call void @llvm.lifetime.end(i64 24, i8* %37) #2
  %38 = bitcast %struct.cmsMAT3* %Chad_Inv to i8*
  call void @llvm.lifetime.end(i64 72, i8* %38) #2
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define i32 @_cmsBuildRGB2XYZtransferMatrix(%struct.cmsMAT3* %r, %struct.cmsCIExyY* %WhitePt, %struct.cmsCIExyYTRIPLE* %Primrs) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.cmsMAT3*, align 8
  %WhitePt.addr = alloca %struct.cmsCIExyY*, align 8
  %Primrs.addr = alloca %struct.cmsCIExyYTRIPLE*, align 8
  %WhitePoint = alloca %struct.cmsVEC3, align 8
  %Coef = alloca %struct.cmsVEC3, align 8
  %Result = alloca %struct.cmsMAT3, align 8
  %Primaries = alloca %struct.cmsMAT3, align 8
  %xn = alloca double, align 8
  %yn = alloca double, align 8
  %xr = alloca double, align 8
  %yr = alloca double, align 8
  %xg = alloca double, align 8
  %yg = alloca double, align 8
  %xb = alloca double, align 8
  %yb = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %r, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %WhitePt, %struct.cmsCIExyY** %WhitePt.addr, align 8, !tbaa !1
  store %struct.cmsCIExyYTRIPLE* %Primrs, %struct.cmsCIExyYTRIPLE** %Primrs.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsVEC3* %WhitePoint to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.cmsVEC3* %Coef to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast %struct.cmsMAT3* %Result to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #2
  %3 = bitcast %struct.cmsMAT3* %Primaries to i8*
  call void @llvm.lifetime.start(i64 72, i8* %3) #2
  %4 = bitcast double* %xn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast double* %yn to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = bitcast double* %xr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #2
  %7 = bitcast double* %yr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #2
  %8 = bitcast double* %xg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #2
  %9 = bitcast double* %yg to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #2
  %10 = bitcast double* %xb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = bitcast double* %yb to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #2
  %12 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePt.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %12, i32 0, i32 0
  %13 = load double, double* %x, align 8, !tbaa !7
  store double %13, double* %xn, align 8, !tbaa !5
  %14 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePt.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %14, i32 0, i32 1
  %15 = load double, double* %y, align 8, !tbaa !9
  store double %15, double* %yn, align 8, !tbaa !5
  %16 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primrs.addr, align 8, !tbaa !1
  %Red = getelementptr inbounds %struct.cmsCIExyYTRIPLE, %struct.cmsCIExyYTRIPLE* %16, i32 0, i32 0
  %x1 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %Red, i32 0, i32 0
  %17 = load double, double* %x1, align 8, !tbaa !20
  store double %17, double* %xr, align 8, !tbaa !5
  %18 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primrs.addr, align 8, !tbaa !1
  %Red2 = getelementptr inbounds %struct.cmsCIExyYTRIPLE, %struct.cmsCIExyYTRIPLE* %18, i32 0, i32 0
  %y3 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %Red2, i32 0, i32 1
  %19 = load double, double* %y3, align 8, !tbaa !22
  store double %19, double* %yr, align 8, !tbaa !5
  %20 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primrs.addr, align 8, !tbaa !1
  %Green = getelementptr inbounds %struct.cmsCIExyYTRIPLE, %struct.cmsCIExyYTRIPLE* %20, i32 0, i32 1
  %x4 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %Green, i32 0, i32 0
  %21 = load double, double* %x4, align 8, !tbaa !23
  store double %21, double* %xg, align 8, !tbaa !5
  %22 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primrs.addr, align 8, !tbaa !1
  %Green5 = getelementptr inbounds %struct.cmsCIExyYTRIPLE, %struct.cmsCIExyYTRIPLE* %22, i32 0, i32 1
  %y6 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %Green5, i32 0, i32 1
  %23 = load double, double* %y6, align 8, !tbaa !24
  store double %23, double* %yg, align 8, !tbaa !5
  %24 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primrs.addr, align 8, !tbaa !1
  %Blue = getelementptr inbounds %struct.cmsCIExyYTRIPLE, %struct.cmsCIExyYTRIPLE* %24, i32 0, i32 2
  %x7 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %Blue, i32 0, i32 0
  %25 = load double, double* %x7, align 8, !tbaa !25
  store double %25, double* %xb, align 8, !tbaa !5
  %26 = load %struct.cmsCIExyYTRIPLE*, %struct.cmsCIExyYTRIPLE** %Primrs.addr, align 8, !tbaa !1
  %Blue8 = getelementptr inbounds %struct.cmsCIExyYTRIPLE, %struct.cmsCIExyYTRIPLE* %26, i32 0, i32 2
  %y9 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %Blue8, i32 0, i32 1
  %27 = load double, double* %y9, align 8, !tbaa !26
  store double %27, double* %yb, align 8, !tbaa !5
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Primaries, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %28 = load double, double* %xr, align 8, !tbaa !5
  %29 = load double, double* %xg, align 8, !tbaa !5
  %30 = load double, double* %xb, align 8, !tbaa !5
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx, double %28, double %29, double %30) #5
  %v10 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Primaries, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v10, i32 0, i64 1
  %31 = load double, double* %yr, align 8, !tbaa !5
  %32 = load double, double* %yg, align 8, !tbaa !5
  %33 = load double, double* %yb, align 8, !tbaa !5
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx11, double %31, double %32, double %33) #5
  %v12 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Primaries, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v12, i32 0, i64 2
  %34 = load double, double* %xr, align 8, !tbaa !5
  %sub = fsub double 1.000000e+00, %34
  %35 = load double, double* %yr, align 8, !tbaa !5
  %sub14 = fsub double %sub, %35
  %36 = load double, double* %xg, align 8, !tbaa !5
  %sub15 = fsub double 1.000000e+00, %36
  %37 = load double, double* %yg, align 8, !tbaa !5
  %sub16 = fsub double %sub15, %37
  %38 = load double, double* %xb, align 8, !tbaa !5
  %sub17 = fsub double 1.000000e+00, %38
  %39 = load double, double* %yb, align 8, !tbaa !5
  %sub18 = fsub double %sub17, %39
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx13, double %sub14, double %sub16, double %sub18) #5
  %call = call i32 @_cmsMAT3inverse(%struct.cmsMAT3* %Primaries, %struct.cmsMAT3* %Result) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %40 = load double, double* %xn, align 8, !tbaa !5
  %41 = load double, double* %yn, align 8, !tbaa !5
  %div = fdiv double %40, %41
  %42 = load double, double* %xn, align 8, !tbaa !5
  %sub19 = fsub double 1.000000e+00, %42
  %43 = load double, double* %yn, align 8, !tbaa !5
  %sub20 = fsub double %sub19, %43
  %44 = load double, double* %yn, align 8, !tbaa !5
  %div21 = fdiv double %sub20, %44
  call void @_cmsVEC3init(%struct.cmsVEC3* %WhitePoint, double %div, double 1.000000e+00, double %div21) #5
  call void @_cmsMAT3eval(%struct.cmsVEC3* %Coef, %struct.cmsMAT3* %Result, %struct.cmsVEC3* %WhitePoint) #5
  %45 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v22 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %45, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v22, i32 0, i64 0
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %46 = load double, double* %arrayidx24, align 8, !tbaa !5
  %47 = load double, double* %xr, align 8, !tbaa !5
  %mul = fmul double %46, %47
  %n25 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %n25, i32 0, i64 1
  %48 = load double, double* %arrayidx26, align 8, !tbaa !5
  %49 = load double, double* %xg, align 8, !tbaa !5
  %mul27 = fmul double %48, %49
  %n28 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %n28, i32 0, i64 2
  %50 = load double, double* %arrayidx29, align 8, !tbaa !5
  %51 = load double, double* %xb, align 8, !tbaa !5
  %mul30 = fmul double %50, %51
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx23, double %mul, double %mul27, double %mul30) #5
  %52 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v31 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %52, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v31, i32 0, i64 1
  %n33 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %n33, i32 0, i64 0
  %53 = load double, double* %arrayidx34, align 8, !tbaa !5
  %54 = load double, double* %yr, align 8, !tbaa !5
  %mul35 = fmul double %53, %54
  %n36 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %n36, i32 0, i64 1
  %55 = load double, double* %arrayidx37, align 8, !tbaa !5
  %56 = load double, double* %yg, align 8, !tbaa !5
  %mul38 = fmul double %55, %56
  %n39 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %n39, i32 0, i64 2
  %57 = load double, double* %arrayidx40, align 8, !tbaa !5
  %58 = load double, double* %yb, align 8, !tbaa !5
  %mul41 = fmul double %57, %58
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx32, double %mul35, double %mul38, double %mul41) #5
  %59 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v42 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %59, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v42, i32 0, i64 2
  %n44 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %n44, i32 0, i64 0
  %60 = load double, double* %arrayidx45, align 8, !tbaa !5
  %61 = load double, double* %xr, align 8, !tbaa !5
  %sub46 = fsub double 1.000000e+00, %61
  %62 = load double, double* %yr, align 8, !tbaa !5
  %sub47 = fsub double %sub46, %62
  %mul48 = fmul double %60, %sub47
  %n49 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %n49, i32 0, i64 1
  %63 = load double, double* %arrayidx50, align 8, !tbaa !5
  %64 = load double, double* %xg, align 8, !tbaa !5
  %sub51 = fsub double 1.000000e+00, %64
  %65 = load double, double* %yg, align 8, !tbaa !5
  %sub52 = fsub double %sub51, %65
  %mul53 = fmul double %63, %sub52
  %n54 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Coef, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x double], [3 x double]* %n54, i32 0, i64 2
  %66 = load double, double* %arrayidx55, align 8, !tbaa !5
  %67 = load double, double* %xb, align 8, !tbaa !5
  %sub56 = fsub double 1.000000e+00, %67
  %68 = load double, double* %yb, align 8, !tbaa !5
  %sub57 = fsub double %sub56, %68
  %mul58 = fmul double %66, %sub57
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx43, double %mul48, double %mul53, double %mul58) #5
  %69 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %70 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %WhitePt.addr, align 8, !tbaa !1
  %call59 = call i32 @_cmsAdaptMatrixToD50(%struct.cmsMAT3* %69, %struct.cmsCIExyY* %70) #5
  store i32 %call59, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %71 = bitcast double* %yb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #2
  %72 = bitcast double* %xb to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #2
  %73 = bitcast double* %yg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #2
  %74 = bitcast double* %xg to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #2
  %75 = bitcast double* %yr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #2
  %76 = bitcast double* %xr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #2
  %77 = bitcast double* %yn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #2
  %78 = bitcast double* %xn to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #2
  %79 = bitcast %struct.cmsMAT3* %Primaries to i8*
  call void @llvm.lifetime.end(i64 72, i8* %79) #2
  %80 = bitcast %struct.cmsMAT3* %Result to i8*
  call void @llvm.lifetime.end(i64 72, i8* %80) #2
  %81 = bitcast %struct.cmsVEC3* %Coef to i8*
  call void @llvm.lifetime.end(i64 24, i8* %81) #2
  %82 = bitcast %struct.cmsVEC3* %WhitePoint to i8*
  call void @llvm.lifetime.end(i64 24, i8* %82) #2
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare void @_cmsVEC3init(%struct.cmsVEC3*, double, double, double) #1

declare i32 @_cmsMAT3inverse(%struct.cmsMAT3*, %struct.cmsMAT3*) #1

declare void @_cmsMAT3eval(%struct.cmsVEC3*, %struct.cmsMAT3*, %struct.cmsVEC3*) #1

; Function Attrs: nounwind uwtable
define internal i32 @_cmsAdaptMatrixToD50(%struct.cmsMAT3* %r, %struct.cmsCIExyY* %SourceWhitePt) #0 {
entry:
  %retval = alloca i32, align 4
  %r.addr = alloca %struct.cmsMAT3*, align 8
  %SourceWhitePt.addr = alloca %struct.cmsCIExyY*, align 8
  %Dn = alloca %struct.cmsCIEXYZ, align 8
  %Bradford = alloca %struct.cmsMAT3, align 8
  %Tmp = alloca %struct.cmsMAT3, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %r, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %SourceWhitePt, %struct.cmsCIExyY** %SourceWhitePt.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIEXYZ* %Dn to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #2
  %1 = bitcast %struct.cmsMAT3* %Bradford to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #2
  %2 = bitcast %struct.cmsMAT3* %Tmp to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #2
  %3 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %SourceWhitePt.addr, align 8, !tbaa !1
  call void @cmsxyY2XYZ(%struct.cmsCIEXYZ* %Dn, %struct.cmsCIExyY* %3) #5
  %call = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #5
  %call1 = call i32 @_cmsAdaptationMatrix(%struct.cmsMAT3* %Bradford, %struct.cmsMAT3* null, %struct.cmsCIEXYZ* %Dn, %struct.cmsCIEXYZ* %call) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %5 = bitcast %struct.cmsMAT3* %Tmp to i8*
  %6 = bitcast %struct.cmsMAT3* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 72, i32 8, i1 false), !tbaa.struct !18
  %7 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  call void @_cmsMAT3per(%struct.cmsMAT3* %7, %struct.cmsMAT3* %Bradford, %struct.cmsMAT3* %Tmp) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast %struct.cmsMAT3* %Tmp to i8*
  call void @llvm.lifetime.end(i64 72, i8* %8) #2
  %9 = bitcast %struct.cmsMAT3* %Bradford to i8*
  call void @llvm.lifetime.end(i64 72, i8* %9) #2
  %10 = bitcast %struct.cmsCIEXYZ* %Dn to i8*
  call void @llvm.lifetime.end(i64 24, i8* %10) #2
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @cmsAdaptToIlluminant(%struct.cmsCIEXYZ* %Result, %struct.cmsCIEXYZ* %SourceWhitePt, %struct.cmsCIEXYZ* %Illuminant, %struct.cmsCIEXYZ* %Value) #0 {
entry:
  %retval = alloca i32, align 4
  %Result.addr = alloca %struct.cmsCIEXYZ*, align 8
  %SourceWhitePt.addr = alloca %struct.cmsCIEXYZ*, align 8
  %Illuminant.addr = alloca %struct.cmsCIEXYZ*, align 8
  %Value.addr = alloca %struct.cmsCIEXYZ*, align 8
  %Bradford = alloca %struct.cmsMAT3, align 8
  %In = alloca %struct.cmsVEC3, align 8
  %Out = alloca %struct.cmsVEC3, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsCIEXYZ* %Result, %struct.cmsCIEXYZ** %Result.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %SourceWhitePt, %struct.cmsCIEXYZ** %SourceWhitePt.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %Illuminant, %struct.cmsCIEXYZ** %Illuminant.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %Value, %struct.cmsCIEXYZ** %Value.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsMAT3* %Bradford to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #2
  %1 = bitcast %struct.cmsVEC3* %In to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #2
  %2 = bitcast %struct.cmsVEC3* %Out to i8*
  call void @llvm.lifetime.start(i64 24, i8* %2) #2
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Result.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsCIEXYZ* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 334, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @__PRETTY_FUNCTION__.cmsAdaptToIlluminant, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %SourceWhitePt.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.cmsCIEXYZ* %5, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 335, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @__PRETTY_FUNCTION__.cmsAdaptToIlluminant, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %6, %cond.true.2
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Illuminant.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.cmsCIEXYZ* %7, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 336, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @__PRETTY_FUNCTION__.cmsAdaptToIlluminant, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %8, %cond.true.6
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Value.addr, align 8, !tbaa !1
  %cmp9 = icmp ne %struct.cmsCIEXYZ* %9, null
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.end.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end.8
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 337, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @__PRETTY_FUNCTION__.cmsAdaptToIlluminant, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.12

cond.end.12:                                      ; preds = %10, %cond.true.10
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %SourceWhitePt.addr, align 8, !tbaa !1
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Illuminant.addr, align 8, !tbaa !1
  %call = call i32 @_cmsAdaptationMatrix(%struct.cmsMAT3* %Bradford, %struct.cmsMAT3* null, %struct.cmsCIEXYZ* %11, %struct.cmsCIEXYZ* %12) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.12
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end.12
  %13 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Value.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %13, i32 0, i32 0
  %14 = load double, double* %X, align 8, !tbaa !7
  %15 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Value.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %15, i32 0, i32 1
  %16 = load double, double* %Y, align 8, !tbaa !9
  %17 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Value.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %17, i32 0, i32 2
  %18 = load double, double* %Z, align 8, !tbaa !10
  call void @_cmsVEC3init(%struct.cmsVEC3* %In, double %14, double %16, double %18) #5
  call void @_cmsMAT3eval(%struct.cmsVEC3* %Out, %struct.cmsMAT3* %Bradford, %struct.cmsVEC3* %In) #5
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Out, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %19 = load double, double* %arrayidx, align 8, !tbaa !5
  %20 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Result.addr, align 8, !tbaa !1
  %X13 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %20, i32 0, i32 0
  store double %19, double* %X13, align 8, !tbaa !7
  %n14 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Out, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %n14, i32 0, i64 1
  %21 = load double, double* %arrayidx15, align 8, !tbaa !5
  %22 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Result.addr, align 8, !tbaa !1
  %Y16 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %22, i32 0, i32 1
  store double %21, double* %Y16, align 8, !tbaa !9
  %n17 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %Out, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %n17, i32 0, i64 2
  %23 = load double, double* %arrayidx18, align 8, !tbaa !5
  %24 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Result.addr, align 8, !tbaa !1
  %Z19 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %24, i32 0, i32 2
  store double %23, double* %Z19, align 8, !tbaa !10
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %25 = bitcast %struct.cmsVEC3* %Out to i8*
  call void @llvm.lifetime.end(i64 24, i8* %25) #2
  %26 = bitcast %struct.cmsVEC3* %In to i8*
  call void @llvm.lifetime.end(i64 24, i8* %26) #2
  %27 = bitcast %struct.cmsMAT3* %Bradford to i8*
  call void @llvm.lifetime.end(i64 72, i8* %27) #2
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare void @_cmsMAT3per(%struct.cmsMAT3*, %struct.cmsMAT3*, %struct.cmsMAT3*) #1

declare void @cmsxyY2XYZ(%struct.cmsCIEXYZ*, %struct.cmsCIExyY*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin noreturn nounwind }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
!7 = !{!8, !6, i64 0}
!8 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16}
!9 = !{!8, !6, i64 8}
!10 = !{!8, !6, i64 16}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !3, i64 0}
!13 = !{!14, !6, i64 8}
!14 = !{!"", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!15 = !{!14, !6, i64 16}
!16 = !{!14, !6, i64 24}
!17 = !{!14, !6, i64 0}
!18 = !{i64 0, i64 72, !19}
!19 = !{!3, !3, i64 0}
!20 = !{!21, !6, i64 0}
!21 = !{!"", !8, i64 0, !8, i64 24, !8, i64 48}
!22 = !{!21, !6, i64 8}
!23 = !{!21, !6, i64 24}
!24 = !{!21, !6, i64 32}
!25 = !{!21, !6, i64 48}
!26 = !{!21, !6, i64 56}
