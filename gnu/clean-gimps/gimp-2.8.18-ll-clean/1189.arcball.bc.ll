; ModuleID = './plug-ins/map-object/arcball.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Quat = type { double, double, double, double }

@qOne = global %struct.Quat { double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00 }, align 8
@center = internal global %struct.Quat zeroinitializer, align 8
@radius = internal global double 0.000000e+00, align 8
@vDown = internal global %struct.Quat zeroinitializer, align 8
@vNow = internal global %struct.Quat zeroinitializer, align 8
@qDown = internal global %struct.Quat zeroinitializer, align 8
@qNow = internal global %struct.Quat zeroinitializer, align 8
@mId = internal global [4 x [4 x double]] [[4 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00], [4 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00]], align 16
@mDown = internal global [4 x [4 x double]] zeroinitializer, align 16
@mNow = internal global [4 x [4 x double]] zeroinitializer, align 16
@dragging = internal global i32 0, align 4
@showResult = internal global i32 0, align 4
@axisSet = internal global i32 0, align 4
@sets = internal global [4 x double*] zeroinitializer, align 16
@setSizes = internal global [4 x i32] zeroinitializer, align 16
@otherAxis = internal global [1 x [4 x double]] [[4 x double] [double -4.800000e-01, double 8.000000e-01, double 3.600000e-01, double 1.000000e+00]], align 16
@vFrom = internal global %struct.Quat zeroinitializer, align 8
@vTo = internal global %struct.Quat zeroinitializer, align 8
@axisIndex = internal global i32 0, align 4
@qDrag = internal global %struct.Quat zeroinitializer, align 8
@vrFrom = internal global %struct.Quat zeroinitializer, align 8
@vrTo = internal global %struct.Quat zeroinitializer, align 8
@V3_Sub.v = internal global %struct.Quat zeroinitializer, align 8
@V3_Negate.u = internal global %struct.Quat zeroinitializer, align 8
@V3_Unit.u = internal global %struct.Quat zeroinitializer, align 8

; Function Attrs: nounwind uwtable
define void @ArcBall_Init() #0 {
entry:
  %i = alloca i32, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @center to i8*), i8* bitcast (%struct.Quat* @qOne to i8*), i64 32, i32 8, i1 false)
  store double 1.000000e+00, double* @radius, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vNow to i8*), i8* bitcast (%struct.Quat* @qOne to i8*), i64 32, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vDown to i8*), i8* bitcast (%struct.Quat* @vNow to i8*), i64 32, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @qNow to i8*), i8* bitcast (%struct.Quat* @qOne to i8*), i64 32, i32 8, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @qDown to i8*), i8* bitcast (%struct.Quat* @qNow to i8*), i64 32, i32 8, i1 false)
  store i32 15, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mId, i32 0, i32 0, i32 0), i64 %idxprom
  %2 = load double, double* %arrayidx, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mDown, i32 0, i32 0, i32 0), i64 %idxprom1
  store double %2, double* %arrayidx2, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i32 0, i32 0), i64 %idxprom3
  store double %2, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* @dragging, align 4
  store i32 0, i32* @showResult, align 4
  store i32 0, i32* @axisSet, align 4
  store double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mId, i32 0, i64 0, i32 0), double** getelementptr inbounds ([4 x double*], [4 x double*]* @sets, i32 0, i64 1), align 8
  store i32 3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @setSizes, i32 0, i64 1), align 4
  store double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mDown, i32 0, i64 0, i32 0), double** getelementptr inbounds ([4 x double*], [4 x double*]* @sets, i32 0, i64 2), align 8
  store i32 3, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @setSizes, i32 0, i64 2), align 4
  store double* getelementptr inbounds ([1 x [4 x double]], [1 x [4 x double]]* @otherAxis, i32 0, i64 0, i32 0), double** getelementptr inbounds ([4 x double*], [4 x double*]* @sets, i32 0, i64 3), align 8
  store i32 1, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @setSizes, i32 0, i64 3), align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @ArcBall_Place(%struct.Quat* byval align 8 %Center, double %Radius) #0 {
entry:
  %Radius.addr = alloca double, align 8
  store double %Radius, double* %Radius.addr, align 8
  %0 = bitcast %struct.Quat* %Center to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @center to i8*), i8* %0, i64 32, i32 8, i1 false)
  %1 = load double, double* %Radius.addr, align 8
  store double %1, double* @radius, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @ArcBall_Mouse(%struct.Quat* byval align 8 %v_Now) #0 {
entry:
  %0 = bitcast %struct.Quat* %v_Now to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vNow to i8*), i8* %0, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ArcBall_UseSet(i32 %axis_Set) #0 {
entry:
  %axis_Set.addr = alloca i32, align 4
  store i32 %axis_Set, i32* %axis_Set.addr, align 4
  %0 = load i32, i32* @dragging, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %axis_Set.addr, align 4
  store i32 %1, i32* @axisSet, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @ArcBall_Update() #0 {
entry:
  %setSize = alloca i32, align 4
  %set = alloca %struct.Quat*, align 8
  %tmp = alloca %struct.Quat, align 8
  %tmp3 = alloca %struct.Quat, align 8
  %tmp7 = alloca %struct.Quat, align 8
  %tmp10 = alloca %struct.Quat, align 8
  %tmp11 = alloca %struct.Quat, align 8
  %tmp12 = alloca %struct.Quat, align 8
  %agg.tmp = alloca %struct.Quat, align 8
  %0 = load i32, i32* @axisSet, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @setSizes, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %setSize, align 4
  %2 = load i32, i32* @axisSet, align 4
  %idxprom1 = zext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [4 x double*], [4 x double*]* @sets, i32 0, i64 %idxprom1
  %3 = load double*, double** %arrayidx2, align 8
  %4 = bitcast double* %3 to %struct.Quat*
  store %struct.Quat* %4, %struct.Quat** %set, align 8
  %5 = load double, double* @radius, align 8
  call void @MouseOnSphere(%struct.Quat* sret %tmp, %struct.Quat* byval align 8 @vDown, %struct.Quat* byval align 8 @center, double %5)
  %6 = bitcast %struct.Quat* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vFrom to i8*), i8* %6, i64 32, i32 8, i1 false)
  %7 = load double, double* @radius, align 8
  call void @MouseOnSphere(%struct.Quat* sret %tmp3, %struct.Quat* byval align 8 @vNow, %struct.Quat* byval align 8 @center, double %7)
  %8 = bitcast %struct.Quat* %tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vTo to i8*), i8* %8, i64 32, i32 8, i1 false)
  %9 = load i32, i32* @dragging, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32, i32* @axisSet, align 4
  %cmp = icmp ne i32 %10, 0
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %11 = load i32, i32* @axisIndex, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load %struct.Quat*, %struct.Quat** %set, align 8
  %arrayidx6 = getelementptr inbounds %struct.Quat, %struct.Quat* %12, i64 %idxprom5
  call void @ConstrainToAxis(%struct.Quat* sret %tmp7, %struct.Quat* byval align 8 @vFrom, %struct.Quat* byval align 8 %arrayidx6)
  %13 = bitcast %struct.Quat* %tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vFrom to i8*), i8* %13, i64 32, i32 8, i1 false)
  %14 = load i32, i32* @axisIndex, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.Quat*, %struct.Quat** %set, align 8
  %arrayidx9 = getelementptr inbounds %struct.Quat, %struct.Quat* %15, i64 %idxprom8
  call void @ConstrainToAxis(%struct.Quat* sret %tmp10, %struct.Quat* byval align 8 @vTo, %struct.Quat* byval align 8 %arrayidx9)
  %16 = bitcast %struct.Quat* %tmp10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vTo to i8*), i8* %16, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  call void @Qt_FromBallPoints(%struct.Quat* sret %tmp11, %struct.Quat* byval align 8 @vFrom, %struct.Quat* byval align 8 @vTo)
  %17 = bitcast %struct.Quat* %tmp11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @qDrag to i8*), i8* %17, i64 32, i32 8, i1 false)
  call void @Qt_Mul(%struct.Quat* sret %tmp12, %struct.Quat* byval align 8 @qDrag, %struct.Quat* byval align 8 @qDown)
  %18 = bitcast %struct.Quat* %tmp12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @qNow to i8*), i8* %18, i64 32, i32 8, i1 false)
  br label %if.end.16

if.else:                                          ; preds = %entry
  %19 = load i32, i32* @axisSet, align 4
  %cmp13 = icmp ne i32 %19, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else
  %20 = load %struct.Quat*, %struct.Quat** %set, align 8
  %21 = load i32, i32* %setSize, align 4
  %call = call i32 @NearestConstraintAxis(%struct.Quat* byval align 8 @vTo, %struct.Quat* %20, i32 %21)
  store i32 %call, i32* @axisIndex, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.else
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  call void @Qt_ToBallPoints(%struct.Quat* byval align 8 @qDown, %struct.Quat* @vrFrom, %struct.Quat* @vrTo)
  call void @Qt_Conj(%struct.Quat* sret %agg.tmp, %struct.Quat* byval align 8 @qNow)
  call void @Qt_ToMatrix(%struct.Quat* byval align 8 %agg.tmp, [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MouseOnSphere(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %mouse, %struct.Quat* byval align 8 %ballCenter, double %ballRadius) #0 {
entry:
  %ballRadius.addr = alloca double, align 8
  %ballMouse = alloca %struct.Quat, align 8
  %mag = alloca double, align 8
  %scale = alloca double, align 8
  store double %ballRadius, double* %ballRadius.addr, align 8
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %mouse, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballCenter, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %sub = fsub double %0, %1
  %2 = load double, double* %ballRadius.addr, align 8
  %div = fdiv double %sub, %2
  %x2 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 0
  store double %div, double* %x2, align 8
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %mouse, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %y3 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballCenter, i32 0, i32 1
  %4 = load double, double* %y3, align 8
  %sub4 = fsub double %3, %4
  %5 = load double, double* %ballRadius.addr, align 8
  %div5 = fdiv double %sub4, %5
  %y6 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 1
  store double %div5, double* %y6, align 8
  %x7 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 0
  %6 = load double, double* %x7, align 8
  %x8 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 0
  %7 = load double, double* %x8, align 8
  %mul = fmul double %6, %7
  %y9 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 1
  %8 = load double, double* %y9, align 8
  %y10 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 1
  %9 = load double, double* %y10, align 8
  %mul11 = fmul double %8, %9
  %add = fadd double %mul, %mul11
  store double %add, double* %mag, align 8
  %10 = load double, double* %mag, align 8
  %cmp = fcmp ogt double %10, 1.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load double, double* %mag, align 8
  %call = call double @sqrt(double %11) #1
  %div12 = fdiv double 1.000000e+00, %call
  store double %div12, double* %scale, align 8
  %12 = load double, double* %scale, align 8
  %x13 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 0
  %13 = load double, double* %x13, align 8
  %mul14 = fmul double %13, %12
  store double %mul14, double* %x13, align 8
  %14 = load double, double* %scale, align 8
  %y15 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 1
  %15 = load double, double* %y15, align 8
  %mul16 = fmul double %15, %14
  store double %mul16, double* %y15, align 8
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 2
  store double 0.000000e+00, double* %z, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load double, double* %mag, align 8
  %sub17 = fsub double 1.000000e+00, %16
  %call18 = call double @sqrt(double %sub17) #1
  %z19 = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 2
  store double %call18, double* %z19, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %ballMouse, i32 0, i32 3
  store double 0.000000e+00, double* %w, align 8
  %17 = bitcast %struct.Quat* %agg.result to i8*
  %18 = bitcast %struct.Quat* %ballMouse to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ConstrainToAxis(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %loose, %struct.Quat* byval align 8 %axis) #0 {
entry:
  %onPlane = alloca %struct.Quat, align 8
  %norm = alloca double, align 8
  %agg.tmp = alloca %struct.Quat, align 8
  %tmp = alloca %struct.Quat, align 8
  %tmp4 = alloca %struct.Quat, align 8
  %tmp10 = alloca %struct.Quat, align 8
  %agg.tmp11 = alloca %struct.Quat, align 8
  %tmp12 = alloca %struct.Quat, align 8
  %call = call double @V3_Dot(%struct.Quat* byval align 8 %axis, %struct.Quat* byval align 8 %loose)
  call void @V3_Scale(%struct.Quat* sret %agg.tmp, %struct.Quat* byval align 8 %axis, double %call)
  call void @V3_Sub(%struct.Quat* sret %tmp, %struct.Quat* byval align 8 %loose, %struct.Quat* byval align 8 %agg.tmp)
  %0 = bitcast %struct.Quat* %onPlane to i8*
  %1 = bitcast %struct.Quat* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 32, i32 8, i1 false)
  %call1 = call double @V3_Norm(%struct.Quat* byval align 8 %onPlane)
  store double %call1, double* %norm, align 8
  %2 = load double, double* %norm, align 8
  %cmp = fcmp ogt double %2, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %onPlane, i32 0, i32 2
  %3 = load double, double* %z, align 8
  %cmp2 = fcmp olt double %3, 0.000000e+00
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @V3_Negate(%struct.Quat* sret %tmp4, %struct.Quat* byval align 8 %onPlane)
  %4 = bitcast %struct.Quat* %onPlane to i8*
  %5 = bitcast %struct.Quat* %tmp4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %6 = load double, double* %norm, align 8
  %call5 = call double @sqrt(double %6) #1
  %div = fdiv double 1.000000e+00, %call5
  call void @V3_Scale(%struct.Quat* sret %agg.result, %struct.Quat* byval align 8 %onPlane, double %div)
  br label %return

if.end.6:                                         ; preds = %entry
  %z7 = getelementptr inbounds %struct.Quat, %struct.Quat* %axis, i32 0, i32 2
  %7 = load double, double* %z7, align 8
  %cmp8 = fcmp oeq double %7, 1.000000e+00
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.6
  call void @V3_(%struct.Quat* sret %tmp10, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %8 = bitcast %struct.Quat* %onPlane to i8*
  %9 = bitcast %struct.Quat* %tmp10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 32, i32 8, i1 false)
  br label %if.end.13

if.else:                                          ; preds = %if.end.6
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %axis, i32 0, i32 1
  %10 = load double, double* %y, align 8
  %sub = fsub double -0.000000e+00, %10
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %axis, i32 0, i32 0
  %11 = load double, double* %x, align 8
  call void @V3_(%struct.Quat* sret %agg.tmp11, double %sub, double %11, double 0.000000e+00)
  call void @V3_Unit(%struct.Quat* sret %tmp12, %struct.Quat* byval align 8 %agg.tmp11)
  %12 = bitcast %struct.Quat* %onPlane to i8*
  %13 = bitcast %struct.Quat* %tmp12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 32, i32 8, i1 false)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.9
  %14 = bitcast %struct.Quat* %agg.result to i8*
  %15 = bitcast %struct.Quat* %onPlane to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 32, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.end.13, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Qt_FromBallPoints(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %from, %struct.Quat* byval align 8 %to) #0 {
entry:
  %qu = alloca %struct.Quat, align 8
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 1
  %0 = load double, double* %y, align 8
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 2
  %1 = load double, double* %z, align 8
  %mul = fmul double %0, %1
  %z1 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 2
  %2 = load double, double* %z1, align 8
  %y2 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %sub = fsub double %mul, %mul3
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %qu, i32 0, i32 0
  store double %sub, double* %x, align 8
  %z4 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 2
  %4 = load double, double* %z4, align 8
  %x5 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 0
  %5 = load double, double* %x5, align 8
  %mul6 = fmul double %4, %5
  %x7 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 0
  %6 = load double, double* %x7, align 8
  %z8 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 2
  %7 = load double, double* %z8, align 8
  %mul9 = fmul double %6, %7
  %sub10 = fsub double %mul6, %mul9
  %y11 = getelementptr inbounds %struct.Quat, %struct.Quat* %qu, i32 0, i32 1
  store double %sub10, double* %y11, align 8
  %x12 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 0
  %8 = load double, double* %x12, align 8
  %y13 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 1
  %9 = load double, double* %y13, align 8
  %mul14 = fmul double %8, %9
  %y15 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 1
  %10 = load double, double* %y15, align 8
  %x16 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 0
  %11 = load double, double* %x16, align 8
  %mul17 = fmul double %10, %11
  %sub18 = fsub double %mul14, %mul17
  %z19 = getelementptr inbounds %struct.Quat, %struct.Quat* %qu, i32 0, i32 2
  store double %sub18, double* %z19, align 8
  %x20 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 0
  %12 = load double, double* %x20, align 8
  %x21 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 0
  %13 = load double, double* %x21, align 8
  %mul22 = fmul double %12, %13
  %y23 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 1
  %14 = load double, double* %y23, align 8
  %y24 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 1
  %15 = load double, double* %y24, align 8
  %mul25 = fmul double %14, %15
  %add = fadd double %mul22, %mul25
  %z26 = getelementptr inbounds %struct.Quat, %struct.Quat* %from, i32 0, i32 2
  %16 = load double, double* %z26, align 8
  %z27 = getelementptr inbounds %struct.Quat, %struct.Quat* %to, i32 0, i32 2
  %17 = load double, double* %z27, align 8
  %mul28 = fmul double %16, %17
  %add29 = fadd double %add, %mul28
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %qu, i32 0, i32 3
  store double %add29, double* %w, align 8
  %18 = bitcast %struct.Quat* %agg.result to i8*
  %19 = bitcast %struct.Quat* %qu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Qt_Mul(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %qL, %struct.Quat* byval align 8 %qR) #0 {
entry:
  %qq = alloca %struct.Quat, align 8
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 3
  %0 = load double, double* %w, align 8
  %w1 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 3
  %1 = load double, double* %w1, align 8
  %mul = fmul double %0, %1
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 0
  %2 = load double, double* %x, align 8
  %x2 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 0
  %3 = load double, double* %x2, align 8
  %mul3 = fmul double %2, %3
  %sub = fsub double %mul, %mul3
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 1
  %4 = load double, double* %y, align 8
  %y4 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 1
  %5 = load double, double* %y4, align 8
  %mul5 = fmul double %4, %5
  %sub6 = fsub double %sub, %mul5
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 2
  %6 = load double, double* %z, align 8
  %z7 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 2
  %7 = load double, double* %z7, align 8
  %mul8 = fmul double %6, %7
  %sub9 = fsub double %sub6, %mul8
  %w10 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 3
  store double %sub9, double* %w10, align 8
  %w11 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 3
  %8 = load double, double* %w11, align 8
  %x12 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 0
  %9 = load double, double* %x12, align 8
  %mul13 = fmul double %8, %9
  %x14 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 0
  %10 = load double, double* %x14, align 8
  %w15 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 3
  %11 = load double, double* %w15, align 8
  %mul16 = fmul double %10, %11
  %add = fadd double %mul13, %mul16
  %y17 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 1
  %12 = load double, double* %y17, align 8
  %z18 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 2
  %13 = load double, double* %z18, align 8
  %mul19 = fmul double %12, %13
  %add20 = fadd double %add, %mul19
  %z21 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 2
  %14 = load double, double* %z21, align 8
  %y22 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 1
  %15 = load double, double* %y22, align 8
  %mul23 = fmul double %14, %15
  %sub24 = fsub double %add20, %mul23
  %x25 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 0
  store double %sub24, double* %x25, align 8
  %w26 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 3
  %16 = load double, double* %w26, align 8
  %y27 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 1
  %17 = load double, double* %y27, align 8
  %mul28 = fmul double %16, %17
  %y29 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 1
  %18 = load double, double* %y29, align 8
  %w30 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 3
  %19 = load double, double* %w30, align 8
  %mul31 = fmul double %18, %19
  %add32 = fadd double %mul28, %mul31
  %z33 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 2
  %20 = load double, double* %z33, align 8
  %x34 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 0
  %21 = load double, double* %x34, align 8
  %mul35 = fmul double %20, %21
  %add36 = fadd double %add32, %mul35
  %x37 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 0
  %22 = load double, double* %x37, align 8
  %z38 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 2
  %23 = load double, double* %z38, align 8
  %mul39 = fmul double %22, %23
  %sub40 = fsub double %add36, %mul39
  %y41 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 1
  store double %sub40, double* %y41, align 8
  %w42 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 3
  %24 = load double, double* %w42, align 8
  %z43 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 2
  %25 = load double, double* %z43, align 8
  %mul44 = fmul double %24, %25
  %z45 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 2
  %26 = load double, double* %z45, align 8
  %w46 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 3
  %27 = load double, double* %w46, align 8
  %mul47 = fmul double %26, %27
  %add48 = fadd double %mul44, %mul47
  %x49 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 0
  %28 = load double, double* %x49, align 8
  %y50 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 1
  %29 = load double, double* %y50, align 8
  %mul51 = fmul double %28, %29
  %add52 = fadd double %add48, %mul51
  %y53 = getelementptr inbounds %struct.Quat, %struct.Quat* %qL, i32 0, i32 1
  %30 = load double, double* %y53, align 8
  %x54 = getelementptr inbounds %struct.Quat, %struct.Quat* %qR, i32 0, i32 0
  %31 = load double, double* %x54, align 8
  %mul55 = fmul double %30, %31
  %sub56 = fsub double %add52, %mul55
  %z57 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 2
  store double %sub56, double* %z57, align 8
  %32 = bitcast %struct.Quat* %agg.result to i8*
  %33 = bitcast %struct.Quat* %qq to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @NearestConstraintAxis(%struct.Quat* byval align 8 %loose, %struct.Quat* %axes, i32 %nAxes) #0 {
entry:
  %axes.addr = alloca %struct.Quat*, align 8
  %nAxes.addr = alloca i32, align 4
  %onPlane = alloca %struct.Quat, align 8
  %max = alloca double, align 8
  %dot = alloca double, align 8
  %i = alloca i32, align 4
  %nearest = alloca i32, align 4
  %tmp = alloca %struct.Quat, align 8
  store %struct.Quat* %axes, %struct.Quat** %axes.addr, align 8
  store i32 %nAxes, i32* %nAxes.addr, align 4
  store double -1.000000e+00, double* %max, align 8
  store i32 0, i32* %nearest, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nAxes.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.Quat*, %struct.Quat** %axes.addr, align 8
  %arrayidx = getelementptr inbounds %struct.Quat, %struct.Quat* %3, i64 %idxprom
  call void @ConstrainToAxis(%struct.Quat* sret %tmp, %struct.Quat* byval align 8 %loose, %struct.Quat* byval align 8 %arrayidx)
  %4 = bitcast %struct.Quat* %onPlane to i8*
  %5 = bitcast %struct.Quat* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %call = call double @V3_Dot(%struct.Quat* byval align 8 %onPlane, %struct.Quat* byval align 8 %loose)
  store double %call, double* %dot, align 8
  %6 = load double, double* %dot, align 8
  %7 = load double, double* %max, align 8
  %cmp1 = fcmp ogt double %6, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load double, double* %dot, align 8
  store double %8, double* %max, align 8
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %nearest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %nearest, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal void @Qt_ToBallPoints(%struct.Quat* byval align 8 %q, %struct.Quat* %arcFrom, %struct.Quat* %arcTo) #0 {
entry:
  %arcFrom.addr = alloca %struct.Quat*, align 8
  %arcTo.addr = alloca %struct.Quat*, align 8
  %s = alloca double, align 8
  %tmp = alloca %struct.Quat, align 8
  %tmp7 = alloca %struct.Quat, align 8
  %tmp37 = alloca %struct.Quat, align 8
  store %struct.Quat* %arcFrom, %struct.Quat** %arcFrom.addr, align 8
  store %struct.Quat* %arcTo, %struct.Quat** %arcTo.addr, align 8
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  %call = call double @sqrt(double %add) #1
  store double %call, double* %s, align 8
  %4 = load double, double* %s, align 8
  %cmp = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  call void @V3_(%struct.Quat* sret %tmp, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00)
  %6 = bitcast %struct.Quat* %5 to i8*
  %7 = bitcast %struct.Quat* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %7, i64 32, i32 8, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %y4 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %9 = load double, double* %y4, align 8
  %sub = fsub double -0.000000e+00, %9
  %10 = load double, double* %s, align 8
  %div = fdiv double %sub, %10
  %x5 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %11 = load double, double* %x5, align 8
  %12 = load double, double* %s, align 8
  %div6 = fdiv double %11, %12
  call void @V3_(%struct.Quat* sret %tmp7, double %div, double %div6, double 0.000000e+00)
  %13 = bitcast %struct.Quat* %8 to i8*
  %14 = bitcast %struct.Quat* %tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 32, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %15 = load double, double* %w, align 8
  %16 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %x8 = getelementptr inbounds %struct.Quat, %struct.Quat* %16, i32 0, i32 0
  %17 = load double, double* %x8, align 8
  %mul9 = fmul double %15, %17
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 2
  %18 = load double, double* %z, align 8
  %19 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %y10 = getelementptr inbounds %struct.Quat, %struct.Quat* %19, i32 0, i32 1
  %20 = load double, double* %y10, align 8
  %mul11 = fmul double %18, %20
  %sub12 = fsub double %mul9, %mul11
  %21 = load %struct.Quat*, %struct.Quat** %arcTo.addr, align 8
  %x13 = getelementptr inbounds %struct.Quat, %struct.Quat* %21, i32 0, i32 0
  store double %sub12, double* %x13, align 8
  %w14 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %22 = load double, double* %w14, align 8
  %23 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %y15 = getelementptr inbounds %struct.Quat, %struct.Quat* %23, i32 0, i32 1
  %24 = load double, double* %y15, align 8
  %mul16 = fmul double %22, %24
  %z17 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 2
  %25 = load double, double* %z17, align 8
  %26 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %x18 = getelementptr inbounds %struct.Quat, %struct.Quat* %26, i32 0, i32 0
  %27 = load double, double* %x18, align 8
  %mul19 = fmul double %25, %27
  %add20 = fadd double %mul16, %mul19
  %28 = load %struct.Quat*, %struct.Quat** %arcTo.addr, align 8
  %y21 = getelementptr inbounds %struct.Quat, %struct.Quat* %28, i32 0, i32 1
  store double %add20, double* %y21, align 8
  %x22 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %29 = load double, double* %x22, align 8
  %30 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %y23 = getelementptr inbounds %struct.Quat, %struct.Quat* %30, i32 0, i32 1
  %31 = load double, double* %y23, align 8
  %mul24 = fmul double %29, %31
  %y25 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %32 = load double, double* %y25, align 8
  %33 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %x26 = getelementptr inbounds %struct.Quat, %struct.Quat* %33, i32 0, i32 0
  %34 = load double, double* %x26, align 8
  %mul27 = fmul double %32, %34
  %sub28 = fsub double %mul24, %mul27
  %35 = load %struct.Quat*, %struct.Quat** %arcTo.addr, align 8
  %z29 = getelementptr inbounds %struct.Quat, %struct.Quat* %35, i32 0, i32 2
  store double %sub28, double* %z29, align 8
  %w30 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %36 = load double, double* %w30, align 8
  %cmp31 = fcmp olt double %36, 0.000000e+00
  br i1 %cmp31, label %if.then.32, label %if.end.38

if.then.32:                                       ; preds = %if.end
  %37 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %38 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %x33 = getelementptr inbounds %struct.Quat, %struct.Quat* %38, i32 0, i32 0
  %39 = load double, double* %x33, align 8
  %sub34 = fsub double -0.000000e+00, %39
  %40 = load %struct.Quat*, %struct.Quat** %arcFrom.addr, align 8
  %y35 = getelementptr inbounds %struct.Quat, %struct.Quat* %40, i32 0, i32 1
  %41 = load double, double* %y35, align 8
  %sub36 = fsub double -0.000000e+00, %41
  call void @V3_(%struct.Quat* sret %tmp37, double %sub34, double %sub36, double 0.000000e+00)
  %42 = bitcast %struct.Quat* %37 to i8*
  %43 = bitcast %struct.Quat* %tmp37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 32, i32 8, i1 false)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.32, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Qt_ToMatrix(%struct.Quat* byval align 8 %q, [4 x double]* %out) #0 {
entry:
  %out.addr = alloca [4 x double]*, align 8
  %Nq = alloca double, align 8
  %s = alloca double, align 8
  %xs = alloca double, align 8
  %ys = alloca double, align 8
  %zs = alloca double, align 8
  %wx = alloca double, align 8
  %wy = alloca double, align 8
  %wz = alloca double, align 8
  %xx = alloca double, align 8
  %xy = alloca double, align 8
  %xz = alloca double, align 8
  %yy = alloca double, align 8
  %yz = alloca double, align 8
  %zz = alloca double, align 8
  store [4 x double]* %out, [4 x double]** %out.addr, align 8
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z4 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 2
  %5 = load double, double* %z4, align 8
  %mul5 = fmul double %4, %5
  %add6 = fadd double %add, %mul5
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %6 = load double, double* %w, align 8
  %w7 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %7 = load double, double* %w7, align 8
  %mul8 = fmul double %6, %7
  %add9 = fadd double %add6, %mul8
  store double %add9, double* %Nq, align 8
  %8 = load double, double* %Nq, align 8
  %cmp = fcmp ogt double %8, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load double, double* %Nq, align 8
  %div = fdiv double 2.000000e+00, %9
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ 0.000000e+00, %cond.false ]
  store double %cond, double* %s, align 8
  %x10 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %10 = load double, double* %x10, align 8
  %11 = load double, double* %s, align 8
  %mul11 = fmul double %10, %11
  store double %mul11, double* %xs, align 8
  %y12 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %12 = load double, double* %y12, align 8
  %13 = load double, double* %s, align 8
  %mul13 = fmul double %12, %13
  store double %mul13, double* %ys, align 8
  %z14 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 2
  %14 = load double, double* %z14, align 8
  %15 = load double, double* %s, align 8
  %mul15 = fmul double %14, %15
  store double %mul15, double* %zs, align 8
  %w16 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %16 = load double, double* %w16, align 8
  %17 = load double, double* %xs, align 8
  %mul17 = fmul double %16, %17
  store double %mul17, double* %wx, align 8
  %w18 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %18 = load double, double* %w18, align 8
  %19 = load double, double* %ys, align 8
  %mul19 = fmul double %18, %19
  store double %mul19, double* %wy, align 8
  %w20 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %20 = load double, double* %w20, align 8
  %21 = load double, double* %zs, align 8
  %mul21 = fmul double %20, %21
  store double %mul21, double* %wz, align 8
  %x22 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %22 = load double, double* %x22, align 8
  %23 = load double, double* %xs, align 8
  %mul23 = fmul double %22, %23
  store double %mul23, double* %xx, align 8
  %x24 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %24 = load double, double* %x24, align 8
  %25 = load double, double* %ys, align 8
  %mul25 = fmul double %24, %25
  store double %mul25, double* %xy, align 8
  %x26 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %26 = load double, double* %x26, align 8
  %27 = load double, double* %zs, align 8
  %mul27 = fmul double %26, %27
  store double %mul27, double* %xz, align 8
  %y28 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %28 = load double, double* %y28, align 8
  %29 = load double, double* %ys, align 8
  %mul29 = fmul double %28, %29
  store double %mul29, double* %yy, align 8
  %y30 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %30 = load double, double* %y30, align 8
  %31 = load double, double* %zs, align 8
  %mul31 = fmul double %30, %31
  store double %mul31, double* %yz, align 8
  %z32 = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 2
  %32 = load double, double* %z32, align 8
  %33 = load double, double* %zs, align 8
  %mul33 = fmul double %32, %33
  store double %mul33, double* %zz, align 8
  %34 = load double, double* %yy, align 8
  %35 = load double, double* %zz, align 8
  %add34 = fadd double %34, %35
  %sub = fsub double 1.000000e+00, %add34
  %36 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %36, i64 0
  %arrayidx35 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 0
  store double %sub, double* %arrayidx35, align 8
  %37 = load double, double* %xy, align 8
  %38 = load double, double* %wz, align 8
  %add36 = fadd double %37, %38
  %39 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx37 = getelementptr inbounds [4 x double], [4 x double]* %39, i64 1
  %arrayidx38 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx37, i32 0, i64 0
  store double %add36, double* %arrayidx38, align 8
  %40 = load double, double* %xz, align 8
  %41 = load double, double* %wy, align 8
  %sub39 = fsub double %40, %41
  %42 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %42, i64 2
  %arrayidx41 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx40, i32 0, i64 0
  store double %sub39, double* %arrayidx41, align 8
  %43 = load double, double* %xy, align 8
  %44 = load double, double* %wz, align 8
  %sub42 = fsub double %43, %44
  %45 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx43 = getelementptr inbounds [4 x double], [4 x double]* %45, i64 0
  %arrayidx44 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx43, i32 0, i64 1
  store double %sub42, double* %arrayidx44, align 8
  %46 = load double, double* %xx, align 8
  %47 = load double, double* %zz, align 8
  %add45 = fadd double %46, %47
  %sub46 = fsub double 1.000000e+00, %add45
  %48 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx47 = getelementptr inbounds [4 x double], [4 x double]* %48, i64 1
  %arrayidx48 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx47, i32 0, i64 1
  store double %sub46, double* %arrayidx48, align 8
  %49 = load double, double* %yz, align 8
  %50 = load double, double* %wx, align 8
  %add49 = fadd double %49, %50
  %51 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx50 = getelementptr inbounds [4 x double], [4 x double]* %51, i64 2
  %arrayidx51 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx50, i32 0, i64 1
  store double %add49, double* %arrayidx51, align 8
  %52 = load double, double* %xz, align 8
  %53 = load double, double* %wy, align 8
  %add52 = fadd double %52, %53
  %54 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx53 = getelementptr inbounds [4 x double], [4 x double]* %54, i64 0
  %arrayidx54 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx53, i32 0, i64 2
  store double %add52, double* %arrayidx54, align 8
  %55 = load double, double* %yz, align 8
  %56 = load double, double* %wx, align 8
  %sub55 = fsub double %55, %56
  %57 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx56 = getelementptr inbounds [4 x double], [4 x double]* %57, i64 1
  %arrayidx57 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx56, i32 0, i64 2
  store double %sub55, double* %arrayidx57, align 8
  %58 = load double, double* %xx, align 8
  %59 = load double, double* %yy, align 8
  %add58 = fadd double %58, %59
  %sub59 = fsub double 1.000000e+00, %add58
  %60 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx60 = getelementptr inbounds [4 x double], [4 x double]* %60, i64 2
  %arrayidx61 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx60, i32 0, i64 2
  store double %sub59, double* %arrayidx61, align 8
  %61 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx62 = getelementptr inbounds [4 x double], [4 x double]* %61, i64 3
  %arrayidx63 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx62, i32 0, i64 2
  store double 0.000000e+00, double* %arrayidx63, align 8
  %62 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx64 = getelementptr inbounds [4 x double], [4 x double]* %62, i64 3
  %arrayidx65 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx64, i32 0, i64 1
  store double 0.000000e+00, double* %arrayidx65, align 8
  %63 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx66 = getelementptr inbounds [4 x double], [4 x double]* %63, i64 3
  %arrayidx67 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx66, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx67, align 8
  %64 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx68 = getelementptr inbounds [4 x double], [4 x double]* %64, i64 2
  %arrayidx69 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx68, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx69, align 8
  %65 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %65, i64 1
  %arrayidx71 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx70, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx71, align 8
  %66 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx72 = getelementptr inbounds [4 x double], [4 x double]* %66, i64 0
  %arrayidx73 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx72, i32 0, i64 3
  store double 0.000000e+00, double* %arrayidx73, align 8
  %67 = load [4 x double]*, [4 x double]** %out.addr, align 8
  %arrayidx74 = getelementptr inbounds [4 x double], [4 x double]* %67, i64 3
  %arrayidx75 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx74, i32 0, i64 3
  store double 1.000000e+00, double* %arrayidx75, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Qt_Conj(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %q) #0 {
entry:
  %qq = alloca %struct.Quat, align 8
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %0
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 0
  store double %sub, double* %x1, align 8
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %sub2 = fsub double -0.000000e+00, %1
  %y3 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 1
  store double %sub2, double* %y3, align 8
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %sub4 = fsub double -0.000000e+00, %2
  %z5 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 2
  store double %sub4, double* %z5, align 8
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %q, i32 0, i32 3
  %3 = load double, double* %w, align 8
  %w6 = getelementptr inbounds %struct.Quat, %struct.Quat* %qq, i32 0, i32 3
  store double %3, double* %w6, align 8
  %4 = bitcast %struct.Quat* %agg.result to i8*
  %5 = bitcast %struct.Quat* %qq to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ArcBall_Value([4 x double]* %m_Now) #0 {
entry:
  %m_Now.addr = alloca [4 x double]*, align 8
  store [4 x double]* %m_Now, [4 x double]** %m_Now.addr, align 8
  %0 = load [4 x double]*, [4 x double]** %m_Now.addr, align 8
  call void @ArcBall_CopyMat([4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i32 0), [4 x double]* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ArcBall_CopyMat([4 x double]* %inm, [4 x double]* %outm) #0 {
entry:
  %inm.addr = alloca [4 x double]*, align 8
  %outm.addr = alloca [4 x double]*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store [4 x double]* %inm, [4 x double]** %inm.addr, align 8
  store [4 x double]* %outm, [4 x double]** %outm.addr, align 8
  store i32 0, i32* %x, align 4
  store i32 0, i32* %y, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %y, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load [4 x double]*, [4 x double]** %inm.addr, align 8
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %4, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx5, align 8
  %6 = load i32, i32* %x, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %y, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load [4 x double]*, [4 x double]** %outm.addr, align 8
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %8, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx8, i32 0, i64 %idxprom6
  store double %5, double* %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %y, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %y, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %10 = load i32, i32* %x, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %x, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ArcBall_Values(double* %alpha, double* %beta, double* %gamma) #0 {
entry:
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %gamma.addr = alloca double*, align 8
  store double* %alpha, double** %alpha.addr, align 8
  store double* %beta, double** %beta.addr, align 8
  store double* %gamma, double** %gamma.addr, align 8
  %0 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i64 0, i64 2), align 8
  %sub = fsub double -0.000000e+00, %0
  %call = call double @asin(double %sub) #1
  %1 = load double*, double** %beta.addr, align 8
  store double %call, double* %1, align 8
  %cmp = fcmp une double %call, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i64 1, i64 2), align 8
  %3 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i64 2, i64 2), align 8
  %call1 = call double @atan2(double %2, double %3) #1
  %4 = load double*, double** %gamma.addr, align 8
  store double %call1, double* %4, align 8
  %5 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i64 0, i64 1), align 8
  %6 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i64 0, i64 0), align 8
  %call2 = call double @atan2(double %5, double %6) #1
  %7 = load double*, double** %alpha.addr, align 8
  store double %call2, double* %7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i64 1, i64 0), align 8
  %9 = load double, double* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i64 1, i64 1), align 8
  %call3 = call double @atan2(double %8, double %9) #1
  %10 = load double*, double** %gamma.addr, align 8
  store double %call3, double* %10, align 8
  %11 = load double*, double** %alpha.addr, align 8
  store double 0.000000e+00, double* %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare double @asin(double) #2

; Function Attrs: nounwind
declare double @atan2(double, double) #2

; Function Attrs: nounwind uwtable
define void @ArcBall_BeginDrag() #0 {
entry:
  store i32 1, i32* @dragging, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @vDown to i8*), i8* bitcast (%struct.Quat* @vNow to i8*), i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ArcBall_EndDrag() #0 {
entry:
  store i32 0, i32* @dragging, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.Quat* @qDown to i8*), i8* bitcast (%struct.Quat* @qNow to i8*), i64 32, i32 8, i1 false)
  call void @ArcBall_CopyMat([4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mNow, i32 0, i32 0), [4 x double]* getelementptr inbounds ([4 x [4 x double]], [4 x [4 x double]]* @mDown, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

; Function Attrs: nounwind uwtable
define internal void @V3_(%struct.Quat* noalias sret %agg.result, double %x, double %y, double %z) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  %v = alloca %struct.Quat, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %z, double* %z.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 0
  store double %0, double* %x1, align 8
  %1 = load double, double* %y.addr, align 8
  %y2 = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 1
  store double %1, double* %y2, align 8
  %2 = load double, double* %z.addr, align 8
  %z3 = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 2
  store double %2, double* %z3, align 8
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 3
  store double 0.000000e+00, double* %w, align 8
  %3 = bitcast %struct.Quat* %agg.result to i8*
  %4 = bitcast %struct.Quat* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @V3_Sub(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %v1, %struct.Quat* byval align 8 %v2) #0 {
entry:
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %v1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %v2, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %sub = fsub double %0, %1
  store double %sub, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Sub.v, i32 0, i32 0), align 8
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %v1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.Quat, %struct.Quat* %v2, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %sub3 = fsub double %2, %3
  store double %sub3, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Sub.v, i32 0, i32 1), align 8
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %v1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z4 = getelementptr inbounds %struct.Quat, %struct.Quat* %v2, i32 0, i32 2
  %5 = load double, double* %z4, align 8
  %sub5 = fsub double %4, %5
  store double %sub5, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Sub.v, i32 0, i32 2), align 8
  %6 = bitcast %struct.Quat* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* bitcast (%struct.Quat* @V3_Sub.v to i8*), i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @V3_Scale(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %v, double %s) #0 {
entry:
  %s.addr = alloca double, align 8
  %u = alloca %struct.Quat, align 8
  store double %s, double* %s.addr, align 8
  %0 = load double, double* %s.addr, align 8
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %mul = fmul double %0, %1
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %u, i32 0, i32 0
  store double %mul, double* %x1, align 8
  %2 = load double, double* %s.addr, align 8
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %mul2 = fmul double %2, %3
  %y3 = getelementptr inbounds %struct.Quat, %struct.Quat* %u, i32 0, i32 1
  store double %mul2, double* %y3, align 8
  %4 = load double, double* %s.addr, align 8
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 2
  %5 = load double, double* %z, align 8
  %mul4 = fmul double %4, %5
  %z5 = getelementptr inbounds %struct.Quat, %struct.Quat* %u, i32 0, i32 2
  store double %mul4, double* %z5, align 8
  %w = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 3
  %6 = load double, double* %w, align 8
  %w6 = getelementptr inbounds %struct.Quat, %struct.Quat* %u, i32 0, i32 3
  store double %6, double* %w6, align 8
  %7 = bitcast %struct.Quat* %agg.result to i8*
  %8 = bitcast %struct.Quat* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @V3_Dot(%struct.Quat* byval align 8 %v1, %struct.Quat* byval align 8 %v2) #0 {
entry:
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %v1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %v2, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %v1, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.Quat, %struct.Quat* %v2, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %v1, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z4 = getelementptr inbounds %struct.Quat, %struct.Quat* %v2, i32 0, i32 2
  %5 = load double, double* %z4, align 8
  %mul5 = fmul double %4, %5
  %add6 = fadd double %add, %mul5
  ret double %add6
}

; Function Attrs: nounwind uwtable
define internal double @V3_Norm(%struct.Quat* byval align 8 %v) #0 {
entry:
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %x1 = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 0
  %1 = load double, double* %x1, align 8
  %mul = fmul double %0, %1
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 1
  %2 = load double, double* %y, align 8
  %y2 = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 1
  %3 = load double, double* %y2, align 8
  %mul3 = fmul double %2, %3
  %add = fadd double %mul, %mul3
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 2
  %4 = load double, double* %z, align 8
  %z4 = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 2
  %5 = load double, double* %z4, align 8
  %mul5 = fmul double %4, %5
  %add6 = fadd double %add, %mul5
  ret double %add6
}

; Function Attrs: nounwind uwtable
define internal void @V3_Negate(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %v) #0 {
entry:
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %sub = fsub double -0.000000e+00, %0
  store double %sub, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Negate.u, i32 0, i32 0), align 8
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %sub1 = fsub double -0.000000e+00, %1
  store double %sub1, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Negate.u, i32 0, i32 1), align 8
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 2
  %2 = load double, double* %z, align 8
  %sub2 = fsub double -0.000000e+00, %2
  store double %sub2, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Negate.u, i32 0, i32 2), align 8
  %3 = bitcast %struct.Quat* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* bitcast (%struct.Quat* @V3_Negate.u to i8*), i64 32, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @V3_Unit(%struct.Quat* noalias sret %agg.result, %struct.Quat* byval align 8 %v) #0 {
entry:
  %vlen = alloca double, align 8
  %call = call double @V3_Norm(%struct.Quat* byval align 8 %v)
  %call1 = call double @sqrt(double %call) #1
  store double %call1, double* %vlen, align 8
  %0 = load double, double* %vlen, align 8
  %cmp = fcmp une double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %x = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 0
  %1 = load double, double* %x, align 8
  %2 = load double, double* %vlen, align 8
  %div = fdiv double %1, %2
  store double %div, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Unit.u, i32 0, i32 0), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %y = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 1
  %3 = load double, double* %y, align 8
  %4 = load double, double* %vlen, align 8
  %div2 = fdiv double %3, %4
  store double %div2, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Unit.u, i32 0, i32 1), align 8
  %z = getelementptr inbounds %struct.Quat, %struct.Quat* %v, i32 0, i32 2
  %5 = load double, double* %z, align 8
  %6 = load double, double* %vlen, align 8
  %div3 = fdiv double %5, %6
  store double %div3, double* getelementptr inbounds (%struct.Quat, %struct.Quat* @V3_Unit.u, i32 0, i32 2), align 8
  %7 = bitcast %struct.Quat* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* bitcast (%struct.Quat* @V3_Unit.u to i8*), i64 32, i32 8, i1 false)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
