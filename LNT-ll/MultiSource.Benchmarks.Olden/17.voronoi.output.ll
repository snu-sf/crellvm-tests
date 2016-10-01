; ModuleID = './MultiSource.Benchmarks.Olden/17.voronoi.output.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VERTEX = type { %struct.VEC2, %struct.VERTEX*, %struct.VERTEX* }
%struct.VEC2 = type { double, double, double }
%struct.edge_rec = type { %struct.VERTEX*, %struct.edge_rec*, i64, i8* }
%struct.EDGE_STACK = type { i32, %struct.edge_rec**, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Dedge %g %g %g %g \0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Vedge %g %g %g %g \0A\00", align 1
@voronoi = external global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"mystack_ptr = %d\0A\00", align 1
@earray = common global i32* null, align 8

; Function Attrs: nounwind uwtable
define void @plot_dedge(%struct.VERTEX* %p1, %struct.VERTEX* %p2) #0 {
entry:
  %p1.addr = alloca %struct.VERTEX*, align 8
  %p2.addr = alloca %struct.VERTEX*, align 8
  %x1 = alloca double, align 8
  %x2 = alloca double, align 8
  %y1 = alloca double, align 8
  %y2 = alloca double, align 8
  store %struct.VERTEX* %p1, %struct.VERTEX** %p1.addr, align 8
  store %struct.VERTEX* %p2, %struct.VERTEX** %p2.addr, align 8
  %0 = load %struct.VERTEX*, %struct.VERTEX** %p1.addr, align 8
  %v = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %0, i32 0, i32 0
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v, i32 0, i32 0
  %1 = load double, double* %x, align 8
  store double %1, double* %x1, align 8
  %2 = load %struct.VERTEX*, %struct.VERTEX** %p1.addr, align 8
  %v1 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %2, i32 0, i32 0
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v1, i32 0, i32 1
  %3 = load double, double* %y, align 8
  store double %3, double* %y1, align 8
  %4 = load %struct.VERTEX*, %struct.VERTEX** %p2.addr, align 8
  %v2 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %4, i32 0, i32 0
  %x3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v2, i32 0, i32 0
  %5 = load double, double* %x3, align 8
  store double %5, double* %x2, align 8
  %6 = load %struct.VERTEX*, %struct.VERTEX** %p2.addr, align 8
  %v4 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %6, i32 0, i32 0
  %y5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v4, i32 0, i32 1
  %7 = load double, double* %y5, align 8
  store double %7, double* %y2, align 8
  %8 = load double, double* %x1, align 8
  %conv = fptrunc double %8 to float
  %conv6 = fpext float %conv to double
  %9 = load double, double* %y1, align 8
  %conv7 = fptrunc double %9 to float
  %conv8 = fpext float %conv7 to double
  %10 = load double, double* %x2, align 8
  %conv9 = fptrunc double %10 to float
  %conv10 = fpext float %conv9 to double
  %11 = load double, double* %y2, align 8
  %conv11 = fptrunc double %11 to float
  %conv12 = fpext float %conv11 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), double %conv6, double %conv8, double %conv10, double %conv12)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @plot_vedge(%struct.VEC2* byval align 8 %p1, %struct.VEC2* byval align 8 %p2) #0 {
entry:
  %p1x = alloca float, align 4
  %p1y = alloca float, align 4
  %p2x = alloca float, align 4
  %p2y = alloca float, align 4
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %p1, i32 0, i32 0
  %0 = load double, double* %x, align 8
  %conv = fptrunc double %0 to float
  store float %conv, float* %p1x, align 4
  %y = getelementptr inbounds %struct.VEC2, %struct.VEC2* %p1, i32 0, i32 1
  %1 = load double, double* %y, align 8
  %conv1 = fptrunc double %1 to float
  store float %conv1, float* %p1y, align 4
  %x2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %p2, i32 0, i32 0
  %2 = load double, double* %x2, align 8
  %conv3 = fptrunc double %2 to float
  store float %conv3, float* %p2x, align 4
  %y4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %p2, i32 0, i32 1
  %3 = load double, double* %y4, align 8
  %conv5 = fptrunc double %3 to float
  store float %conv5, float* %p2y, align 4
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load float, float* %p1x, align 4
  %call = call i32 @__isnanf(float %4) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true.6, label %cond.false.10

cond.true.6:                                      ; preds = %cond.false
  %5 = load float, float* %p1x, align 4
  %conv7 = fpext float %5 to double
  %call8 = call i32 @__isnan(double %conv7) #4
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

cond.false.10:                                    ; preds = %cond.false
  %6 = load float, float* %p1x, align 4
  %conv11 = fpext float %6 to x86_fp80
  %call12 = call i32 @__isnanl(x86_fp80 %conv11) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false.10, %cond.true.6, %cond.true
  %7 = load float, float* %p1x, align 4
  %conv14 = fpext float %7 to double
  %call15 = call double @copysign(double %conv14, double 1.000000e+00) #4
  %conv16 = fptrunc double %call15 to float
  store float %conv16, float* %p1x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.false.10, %cond.true.6, %cond.true
  br i1 true, label %cond.true.17, label %cond.false.20

cond.true.17:                                     ; preds = %if.end
  %8 = load float, float* %p1y, align 4
  %call18 = call i32 @__isnanf(float %8) #4
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.29, label %if.end.33

cond.false.20:                                    ; preds = %if.end
  br i1 false, label %cond.true.21, label %cond.false.25

cond.true.21:                                     ; preds = %cond.false.20
  %9 = load float, float* %p1y, align 4
  %conv22 = fpext float %9 to double
  %call23 = call i32 @__isnan(double %conv22) #4
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.29, label %if.end.33

cond.false.25:                                    ; preds = %cond.false.20
  %10 = load float, float* %p1y, align 4
  %conv26 = fpext float %10 to x86_fp80
  %call27 = call i32 @__isnanl(x86_fp80 %conv26) #4
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %cond.false.25, %cond.true.21, %cond.true.17
  %11 = load float, float* %p1y, align 4
  %conv30 = fpext float %11 to double
  %call31 = call double @copysign(double %conv30, double 1.000000e+00) #4
  %conv32 = fptrunc double %call31 to float
  store float %conv32, float* %p1y, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %cond.false.25, %cond.true.21, %cond.true.17
  br i1 true, label %cond.true.34, label %cond.false.37

cond.true.34:                                     ; preds = %if.end.33
  %12 = load float, float* %p2x, align 4
  %call35 = call i32 @__isnanf(float %12) #4
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.46, label %if.end.50

cond.false.37:                                    ; preds = %if.end.33
  br i1 false, label %cond.true.38, label %cond.false.42

cond.true.38:                                     ; preds = %cond.false.37
  %13 = load float, float* %p2x, align 4
  %conv39 = fpext float %13 to double
  %call40 = call i32 @__isnan(double %conv39) #4
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.46, label %if.end.50

cond.false.42:                                    ; preds = %cond.false.37
  %14 = load float, float* %p2x, align 4
  %conv43 = fpext float %14 to x86_fp80
  %call44 = call i32 @__isnanl(x86_fp80 %conv43) #4
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %cond.false.42, %cond.true.38, %cond.true.34
  %15 = load float, float* %p2x, align 4
  %conv47 = fpext float %15 to double
  %call48 = call double @copysign(double %conv47, double 1.000000e+00) #4
  %conv49 = fptrunc double %call48 to float
  store float %conv49, float* %p2x, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %cond.false.42, %cond.true.38, %cond.true.34
  br i1 true, label %cond.true.51, label %cond.false.54

cond.true.51:                                     ; preds = %if.end.50
  %16 = load float, float* %p2y, align 4
  %call52 = call i32 @__isnanf(float %16) #4
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.63, label %if.end.67

cond.false.54:                                    ; preds = %if.end.50
  br i1 false, label %cond.true.55, label %cond.false.59

cond.true.55:                                     ; preds = %cond.false.54
  %17 = load float, float* %p2y, align 4
  %conv56 = fpext float %17 to double
  %call57 = call i32 @__isnan(double %conv56) #4
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.63, label %if.end.67

cond.false.59:                                    ; preds = %cond.false.54
  %18 = load float, float* %p2y, align 4
  %conv60 = fpext float %18 to x86_fp80
  %call61 = call i32 @__isnanl(x86_fp80 %conv60) #4
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %cond.false.59, %cond.true.55, %cond.true.51
  %19 = load float, float* %p2y, align 4
  %conv64 = fpext float %19 to double
  %call65 = call double @copysign(double %conv64, double 1.000000e+00) #4
  %conv66 = fptrunc double %call65 to float
  store float %conv66, float* %p2y, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %cond.false.59, %cond.true.55, %cond.true.51
  %20 = load float, float* %p1x, align 4
  %conv68 = fpext float %20 to double
  %21 = load float, float* %p1y, align 4
  %conv69 = fpext float %21 to double
  %22 = load float, float* %p2x, align 4
  %conv70 = fpext float %22 to double
  %23 = load float, float* %p2y, align 4
  %conv71 = fpext float %23 to double
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), double %conv68, double %conv69, double %conv70, double %conv71)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #2

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #2

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #2

; Function Attrs: nounwind readnone
declare double @copysign(double, double) #2

; Function Attrs: nounwind uwtable
define void @circle_center(%struct.VEC2* noalias sret %agg.result, %struct.VEC2* byval align 8 %a, %struct.VEC2* byval align 8 %b, %struct.VEC2* byval align 8 %c) #0 {
entry:
  %p = alloca %struct.VEC2, align 8
  %d1 = alloca double, align 8
  %d2 = alloca double, align 8
  %d3 = alloca double, align 8
  %d4 = alloca double, align 8
  %vv1 = alloca %struct.VEC2, align 8
  %vv2 = alloca %struct.VEC2, align 8
  %vv3 = alloca %struct.VEC2, align 8
  %vv4 = alloca %struct.VEC2, align 8
  %vv5 = alloca %struct.VEC2, align 8
  %vv6 = alloca %struct.VEC2, align 8
  %vv7 = alloca %struct.VEC2, align 8
  %tmp = alloca %struct.VEC2, align 8
  %tmp1 = alloca %struct.VEC2, align 8
  %tmp2 = alloca %struct.VEC2, align 8
  %tmp3 = alloca %struct.VEC2, align 8
  %tmp4 = alloca %struct.VEC2, align 8
  %tmp6 = alloca %struct.VEC2, align 8
  %tmp8 = alloca %struct.VEC2, align 8
  %tmp9 = alloca %struct.VEC2, align 8
  %tmp10 = alloca %struct.VEC2, align 8
  call void @V2_sub(%struct.VEC2* sret %tmp, %struct.VEC2* byval align 8 %b, %struct.VEC2* byval align 8 %c)
  %0 = bitcast %struct.VEC2* %vv1 to i8*
  %1 = bitcast %struct.VEC2* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 24, i32 8, i1 false)
  %call = call double @V2_magn(%struct.VEC2* byval align 8 %vv1)
  store double %call, double* %d1, align 8
  call void @V2_sum(%struct.VEC2* sret %tmp1, %struct.VEC2* byval align 8 %a, %struct.VEC2* byval align 8 %b)
  %2 = bitcast %struct.VEC2* %vv1 to i8*
  %3 = bitcast %struct.VEC2* %tmp1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 24, i32 8, i1 false)
  call void @V2_times(%struct.VEC2* sret %tmp2, double 5.000000e-01, %struct.VEC2* byval align 8 %vv1)
  %4 = bitcast %struct.VEC2* %vv2 to i8*
  %5 = bitcast %struct.VEC2* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 24, i32 8, i1 false)
  %6 = load double, double* %d1, align 8
  %cmp = fcmp olt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = bitcast %struct.VEC2* %agg.result to i8*
  %8 = bitcast %struct.VEC2* %vv2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 24, i32 8, i1 false)
  br label %return

if.else:                                          ; preds = %entry
  call void @V2_sub(%struct.VEC2* sret %tmp3, %struct.VEC2* byval align 8 %b, %struct.VEC2* byval align 8 %a)
  %9 = bitcast %struct.VEC2* %vv3 to i8*
  %10 = bitcast %struct.VEC2* %tmp3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 24, i32 8, i1 false)
  call void @V2_sub(%struct.VEC2* sret %tmp4, %struct.VEC2* byval align 8 %c, %struct.VEC2* byval align 8 %a)
  %11 = bitcast %struct.VEC2* %vv4 to i8*
  %12 = bitcast %struct.VEC2* %tmp4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 24, i32 8, i1 false)
  %call5 = call double @V2_cprod(%struct.VEC2* byval align 8 %vv3, %struct.VEC2* byval align 8 %vv4)
  store double %call5, double* %d3, align 8
  %13 = load double, double* %d3, align 8
  %mul = fmul double -2.000000e+00, %13
  store double %mul, double* %d2, align 8
  call void @V2_sub(%struct.VEC2* sret %tmp6, %struct.VEC2* byval align 8 %c, %struct.VEC2* byval align 8 %b)
  %14 = bitcast %struct.VEC2* %vv5 to i8*
  %15 = bitcast %struct.VEC2* %tmp6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 24, i32 8, i1 false)
  %call7 = call double @V2_dot(%struct.VEC2* byval align 8 %vv5, %struct.VEC2* byval align 8 %vv4)
  store double %call7, double* %d4, align 8
  call void @V2_cross(%struct.VEC2* sret %tmp8, %struct.VEC2* byval align 8 %vv3)
  %16 = bitcast %struct.VEC2* %vv6 to i8*
  %17 = bitcast %struct.VEC2* %tmp8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 24, i32 8, i1 false)
  %18 = load double, double* %d4, align 8
  %19 = load double, double* %d2, align 8
  %div = fdiv double %18, %19
  call void @V2_times(%struct.VEC2* sret %tmp9, double %div, %struct.VEC2* byval align 8 %vv6)
  %20 = bitcast %struct.VEC2* %vv7 to i8*
  %21 = bitcast %struct.VEC2* %tmp9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 24, i32 8, i1 false)
  call void @V2_sum(%struct.VEC2* sret %tmp10, %struct.VEC2* byval align 8 %vv2, %struct.VEC2* byval align 8 %vv7)
  %22 = bitcast %struct.VEC2* %p to i8*
  %23 = bitcast %struct.VEC2* %tmp10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 24, i32 8, i1 false)
  %24 = bitcast %struct.VEC2* %agg.result to i8*
  %25 = bitcast %struct.VEC2* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 24, i32 8, i1 false)
  br label %return

return:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @V2_sub(%struct.VEC2* sret, %struct.VEC2* byval align 8, %struct.VEC2* byval align 8) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare double @V2_magn(%struct.VEC2* byval align 8) #1

declare void @V2_sum(%struct.VEC2* sret, %struct.VEC2* byval align 8, %struct.VEC2* byval align 8) #1

declare void @V2_times(%struct.VEC2* sret, double, %struct.VEC2* byval align 8) #1

declare double @V2_cprod(%struct.VEC2* byval align 8, %struct.VEC2* byval align 8) #1

declare double @V2_dot(%struct.VEC2* byval align 8, %struct.VEC2* byval align 8) #1

declare void @V2_cross(%struct.VEC2* sret, %struct.VEC2* byval align 8) #1

; Function Attrs: nounwind uwtable
define void @output_voronoi_diagram(%struct.edge_rec* %edge, i32 %nv, %struct.EDGE_STACK* %my_stack) #0 {
entry:
  %edge.addr = alloca %struct.edge_rec*, align 8
  %nv.addr = alloca i32, align 4
  %my_stack.addr = alloca %struct.EDGE_STACK*, align 8
  %nex = alloca %struct.edge_rec*, align 8
  %prev = alloca %struct.edge_rec*, align 8
  %snex = alloca %struct.edge_rec*, align 8
  %sprev = alloca %struct.edge_rec*, align 8
  %cvxvec = alloca %struct.VEC2, align 8
  %center = alloca %struct.VEC2, align 8
  %ln = alloca double, align 8
  %d1 = alloca double, align 8
  %vv1 = alloca %struct.VEC2, align 8
  %vv2 = alloca %struct.VEC2, align 8
  %vv3 = alloca %struct.VEC2, align 8
  %v21 = alloca %struct.VEC2, align 8
  %v22 = alloca %struct.VEC2, align 8
  %v23 = alloca %struct.VEC2, align 8
  %tmp = alloca %struct.edge_rec*, align 8
  %tmp7 = alloca %struct.VEC2, align 8
  %tmp8 = alloca %struct.VEC2, align 8
  %tmp9 = alloca %struct.VEC2, align 8
  %tmp10 = alloca %struct.VEC2, align 8
  %tmp11 = alloca %struct.VEC2, align 8
  %tmp13 = alloca %struct.VEC2, align 8
  %tmp14 = alloca %struct.VEC2, align 8
  %tmp15 = alloca %struct.VEC2, align 8
  %v133 = alloca %struct.VERTEX*, align 8
  %v235 = alloca %struct.VERTEX*, align 8
  %v337 = alloca %struct.VERTEX*, align 8
  %v4 = alloca %struct.VERTEX*, align 8
  %d140 = alloca double, align 8
  %d2 = alloca double, align 8
  %v2169 = alloca %struct.VEC2, align 8
  %v2271 = alloca %struct.VEC2, align 8
  %v2373 = alloca %struct.VEC2, align 8
  %tmp82 = alloca %struct.VEC2, align 8
  %tmp91 = alloca %struct.VEC2, align 8
  store %struct.edge_rec* %edge, %struct.edge_rec** %edge.addr, align 8
  store i32 %nv, i32* %nv.addr, align 4
  store %struct.EDGE_STACK* %my_stack, %struct.EDGE_STACK** %my_stack.addr, align 8
  %0 = load i32, i32* @voronoi, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %2 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  call void (%struct.EDGE_STACK*, %struct.edge_rec*, ...) bitcast (void (...)* @zero_seen to void (%struct.EDGE_STACK*, %struct.edge_rec*, ...)*)(%struct.EDGE_STACK* %1, %struct.edge_rec* %2)
  %3 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  store %struct.edge_rec* %3, %struct.edge_rec** %nex, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %4 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %5 = ptrtoint %struct.edge_rec* %4 to i64
  %xor = xor i64 %5, 64
  %6 = inttoptr i64 %xor to %struct.edge_rec*
  %v = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %6, i32 0, i32 0
  %7 = load %struct.VERTEX*, %struct.VERTEX** %v, align 8
  %v1 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %7, i32 0, i32 0
  %8 = bitcast %struct.VEC2* %v21 to i8*
  %9 = bitcast %struct.VEC2* %v1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 24, i32 8, i1 false)
  %10 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %v2 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %10, i32 0, i32 0
  %11 = load %struct.VERTEX*, %struct.VERTEX** %v2, align 8
  %v3 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %11, i32 0, i32 0
  %12 = bitcast %struct.VEC2* %v22 to i8*
  %13 = bitcast %struct.VEC2* %v3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  %14 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %next = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %14, i32 0, i32 1
  %15 = load %struct.edge_rec*, %struct.edge_rec** %next, align 8
  store %struct.edge_rec* %15, %struct.edge_rec** %tmp, align 8
  %16 = load %struct.edge_rec*, %struct.edge_rec** %tmp, align 8
  %17 = ptrtoint %struct.edge_rec* %16 to i64
  %xor4 = xor i64 %17, 64
  %18 = inttoptr i64 %xor4 to %struct.edge_rec*
  %v5 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %18, i32 0, i32 0
  %19 = load %struct.VERTEX*, %struct.VERTEX** %v5, align 8
  %v6 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %19, i32 0, i32 0
  %20 = bitcast %struct.VEC2* %v23 to i8*
  %21 = bitcast %struct.VEC2* %v6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 24, i32 8, i1 false)
  call void @V2_sub(%struct.VEC2* sret %tmp7, %struct.VEC2* byval align 8 %v21, %struct.VEC2* byval align 8 %v22)
  %22 = bitcast %struct.VEC2* %cvxvec to i8*
  %23 = bitcast %struct.VEC2* %tmp7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 24, i32 8, i1 false)
  call void @circle_center(%struct.VEC2* sret %tmp8, %struct.VEC2* byval align 8 %v22, %struct.VEC2* byval align 8 %v21, %struct.VEC2* byval align 8 %v23)
  %24 = bitcast %struct.VEC2* %center to i8*
  %25 = bitcast %struct.VEC2* %tmp8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 24, i32 8, i1 false)
  call void @V2_sum(%struct.VEC2* sret %tmp9, %struct.VEC2* byval align 8 %v22, %struct.VEC2* byval align 8 %v21)
  %26 = bitcast %struct.VEC2* %vv1 to i8*
  %27 = bitcast %struct.VEC2* %tmp9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 24, i32 8, i1 false)
  call void @V2_times(%struct.VEC2* sret %tmp10, double 5.000000e-01, %struct.VEC2* byval align 8 %vv1)
  %28 = bitcast %struct.VEC2* %vv2 to i8*
  %29 = bitcast %struct.VEC2* %tmp10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 24, i32 8, i1 false)
  call void @V2_sub(%struct.VEC2* sret %tmp11, %struct.VEC2* byval align 8 %center, %struct.VEC2* byval align 8 %vv2)
  %30 = bitcast %struct.VEC2* %vv3 to i8*
  %31 = bitcast %struct.VEC2* %tmp11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 24, i32 8, i1 false)
  %call = call double @V2_magn(%struct.VEC2* byval align 8 %vv3)
  %add = fadd double 1.000000e+00, %call
  store double %add, double* %ln, align 8
  %32 = load double, double* %ln, align 8
  %call12 = call double @V2_magn(%struct.VEC2* byval align 8 %cvxvec)
  %div = fdiv double %32, %call12
  store double %div, double* %d1, align 8
  call void @V2_cross(%struct.VEC2* sret %tmp13, %struct.VEC2* byval align 8 %cvxvec)
  %33 = bitcast %struct.VEC2* %vv1 to i8*
  %34 = bitcast %struct.VEC2* %tmp13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 24, i32 8, i1 false)
  %35 = load double, double* %d1, align 8
  call void @V2_times(%struct.VEC2* sret %tmp14, double %35, %struct.VEC2* byval align 8 %vv1)
  %36 = bitcast %struct.VEC2* %vv2 to i8*
  %37 = bitcast %struct.VEC2* %tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 24, i32 8, i1 false)
  call void @V2_sum(%struct.VEC2* sret %tmp15, %struct.VEC2* byval align 8 %center, %struct.VEC2* byval align 8 %vv2)
  %38 = bitcast %struct.VEC2* %vv3 to i8*
  %39 = bitcast %struct.VEC2* %tmp15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 24, i32 8, i1 false)
  call void @plot_vedge(%struct.VEC2* byval align 8 %center, %struct.VEC2* byval align 8 %vv3)
  %40 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %41 = ptrtoint %struct.edge_rec* %40 to i64
  %add16 = add i64 %41, 32
  %and = and i64 %add16, 127
  %42 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %43 = ptrtoint %struct.edge_rec* %42 to i64
  %and17 = and i64 %43, -128
  %or = or i64 %and, %and17
  %44 = inttoptr i64 %or to %struct.edge_rec*
  %next18 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %44, i32 0, i32 1
  %45 = load %struct.edge_rec*, %struct.edge_rec** %next18, align 8
  %46 = ptrtoint %struct.edge_rec* %45 to i64
  %add19 = add i64 %46, 96
  %and20 = and i64 %add19, 127
  %47 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %48 = ptrtoint %struct.edge_rec* %47 to i64
  %add21 = add i64 %48, 32
  %and22 = and i64 %add21, 127
  %49 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %50 = ptrtoint %struct.edge_rec* %49 to i64
  %and23 = and i64 %50, -128
  %or24 = or i64 %and22, %and23
  %51 = inttoptr i64 %or24 to %struct.edge_rec*
  %next25 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %51, i32 0, i32 1
  %52 = load %struct.edge_rec*, %struct.edge_rec** %next25, align 8
  %53 = ptrtoint %struct.edge_rec* %52 to i64
  %and26 = and i64 %53, -128
  %or27 = or i64 %and20, %and26
  %54 = inttoptr i64 %or27 to %struct.edge_rec*
  store %struct.edge_rec* %54, %struct.edge_rec** %nex, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %55 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %56 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %cmp = icmp ne %struct.edge_rec* %55, %56
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %57 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %ptr = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %57, i32 0, i32 0
  store i32 0, i32* %ptr, align 4
  %58 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %59 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  call void @push_ring(%struct.EDGE_STACK* %58, %struct.edge_rec* %59)
  %60 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %ptr28 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %60, i32 0, i32 0
  %61 = load i32, i32* %ptr28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %61)
  br label %while.cond

while.cond:                                       ; preds = %if.end.99, %if.end
  %62 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %ptr30 = getelementptr inbounds %struct.EDGE_STACK, %struct.EDGE_STACK* %62, i32 0, i32 0
  %63 = load i32, i32* %ptr30, align 4
  %cmp31 = icmp ne i32 %63, 0
  br i1 %cmp31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %64 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %call42 = call %struct.edge_rec* (%struct.EDGE_STACK*, ...) bitcast (%struct.edge_rec* (...)* @pop_edge to %struct.edge_rec* (%struct.EDGE_STACK*, ...)*)(%struct.EDGE_STACK* %64)
  store %struct.edge_rec* %call42, %struct.edge_rec** %edge.addr, align 8
  %65 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %wasseen = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %65, i32 0, i32 2
  %66 = load i64, i64* %wasseen, align 8
  %cmp43 = icmp eq i64 %66, 1
  br i1 %cmp43, label %if.then.44, label %if.end.99

if.then.44:                                       ; preds = %while.body
  %67 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  store %struct.edge_rec* %67, %struct.edge_rec** %prev, align 8
  %68 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %next45 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %68, i32 0, i32 1
  %69 = load %struct.edge_rec*, %struct.edge_rec** %next45, align 8
  store %struct.edge_rec* %69, %struct.edge_rec** %nex, align 8
  br label %do.body.46

do.body.46:                                       ; preds = %do.cond.96, %if.then.44
  %70 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %v47 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %70, i32 0, i32 0
  %71 = load %struct.VERTEX*, %struct.VERTEX** %v47, align 8
  store %struct.VERTEX* %71, %struct.VERTEX** %v133, align 8
  %72 = load %struct.VERTEX*, %struct.VERTEX** %v133, align 8
  %v48 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %72, i32 0, i32 0
  %x = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v48, i32 0, i32 0
  %73 = load double, double* %x, align 8
  store double %73, double* %d140, align 8
  %74 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %75 = ptrtoint %struct.edge_rec* %74 to i64
  %xor49 = xor i64 %75, 64
  %76 = inttoptr i64 %xor49 to %struct.edge_rec*
  %v50 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %76, i32 0, i32 0
  %77 = load %struct.VERTEX*, %struct.VERTEX** %v50, align 8
  store %struct.VERTEX* %77, %struct.VERTEX** %v235, align 8
  %78 = load %struct.VERTEX*, %struct.VERTEX** %v235, align 8
  %v51 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %78, i32 0, i32 0
  %x52 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %v51, i32 0, i32 0
  %79 = load double, double* %x52, align 8
  store double %79, double* %d2, align 8
  %80 = load double, double* %d140, align 8
  %81 = load double, double* %d2, align 8
  %cmp53 = fcmp oge double %80, %81
  br i1 %cmp53, label %if.then.54, label %if.end.93

if.then.54:                                       ; preds = %do.body.46
  %82 = load %struct.VERTEX*, %struct.VERTEX** %v133, align 8
  %83 = load %struct.VERTEX*, %struct.VERTEX** %v235, align 8
  call void @plot_dedge(%struct.VERTEX* %82, %struct.VERTEX* %83)
  %84 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %85 = ptrtoint %struct.edge_rec* %84 to i64
  %xor55 = xor i64 %85, 64
  %86 = inttoptr i64 %xor55 to %struct.edge_rec*
  store %struct.edge_rec* %86, %struct.edge_rec** %sprev, align 8
  %87 = load %struct.edge_rec*, %struct.edge_rec** %sprev, align 8
  %next56 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %87, i32 0, i32 1
  %88 = load %struct.edge_rec*, %struct.edge_rec** %next56, align 8
  store %struct.edge_rec* %88, %struct.edge_rec** %snex, align 8
  %89 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %v57 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %89, i32 0, i32 0
  %90 = load %struct.VERTEX*, %struct.VERTEX** %v57, align 8
  store %struct.VERTEX* %90, %struct.VERTEX** %v133, align 8
  %91 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %92 = ptrtoint %struct.edge_rec* %91 to i64
  %xor58 = xor i64 %92, 64
  %93 = inttoptr i64 %xor58 to %struct.edge_rec*
  %v59 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %93, i32 0, i32 0
  %94 = load %struct.VERTEX*, %struct.VERTEX** %v59, align 8
  store %struct.VERTEX* %94, %struct.VERTEX** %v235, align 8
  %95 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %96 = ptrtoint %struct.edge_rec* %95 to i64
  %xor60 = xor i64 %96, 64
  %97 = inttoptr i64 %xor60 to %struct.edge_rec*
  %v61 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %97, i32 0, i32 0
  %98 = load %struct.VERTEX*, %struct.VERTEX** %v61, align 8
  store %struct.VERTEX* %98, %struct.VERTEX** %v337, align 8
  %99 = load %struct.edge_rec*, %struct.edge_rec** %snex, align 8
  %100 = ptrtoint %struct.edge_rec* %99 to i64
  %xor62 = xor i64 %100, 64
  %101 = inttoptr i64 %xor62 to %struct.edge_rec*
  %v63 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %101, i32 0, i32 0
  %102 = load %struct.VERTEX*, %struct.VERTEX** %v63, align 8
  store %struct.VERTEX* %102, %struct.VERTEX** %v4, align 8
  %103 = load %struct.VERTEX*, %struct.VERTEX** %v133, align 8
  %104 = load %struct.VERTEX*, %struct.VERTEX** %v235, align 8
  %105 = load %struct.VERTEX*, %struct.VERTEX** %v337, align 8
  %call64 = call i32 @ccw(%struct.VERTEX* %103, %struct.VERTEX* %104, %struct.VERTEX* %105)
  %106 = load %struct.VERTEX*, %struct.VERTEX** %v133, align 8
  %107 = load %struct.VERTEX*, %struct.VERTEX** %v235, align 8
  %108 = load %struct.VERTEX*, %struct.VERTEX** %v4, align 8
  %call65 = call i32 @ccw(%struct.VERTEX* %106, %struct.VERTEX* %107, %struct.VERTEX* %108)
  %cmp66 = icmp ne i32 %call64, %call65
  br i1 %cmp66, label %if.then.67, label %if.end.92

if.then.67:                                       ; preds = %if.then.54
  %109 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %v74 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %109, i32 0, i32 0
  %110 = load %struct.VERTEX*, %struct.VERTEX** %v74, align 8
  %v75 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %110, i32 0, i32 0
  %111 = bitcast %struct.VEC2* %v2169 to i8*
  %112 = bitcast %struct.VEC2* %v75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %111, i8* %112, i64 24, i32 8, i1 false)
  %113 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %114 = ptrtoint %struct.edge_rec* %113 to i64
  %xor76 = xor i64 %114, 64
  %115 = inttoptr i64 %xor76 to %struct.edge_rec*
  %v77 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %115, i32 0, i32 0
  %116 = load %struct.VERTEX*, %struct.VERTEX** %v77, align 8
  %v78 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %116, i32 0, i32 0
  %117 = bitcast %struct.VEC2* %v2271 to i8*
  %118 = bitcast %struct.VEC2* %v78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %117, i8* %118, i64 24, i32 8, i1 false)
  %119 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %120 = ptrtoint %struct.edge_rec* %119 to i64
  %xor79 = xor i64 %120, 64
  %121 = inttoptr i64 %xor79 to %struct.edge_rec*
  %v80 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %121, i32 0, i32 0
  %122 = load %struct.VERTEX*, %struct.VERTEX** %v80, align 8
  %v81 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %122, i32 0, i32 0
  %123 = bitcast %struct.VEC2* %v2373 to i8*
  %124 = bitcast %struct.VEC2* %v81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %123, i8* %124, i64 24, i32 8, i1 false)
  call void @circle_center(%struct.VEC2* sret %tmp82, %struct.VEC2* byval align 8 %v2169, %struct.VEC2* byval align 8 %v2271, %struct.VEC2* byval align 8 %v2373)
  %125 = bitcast %struct.VEC2* %vv1 to i8*
  %126 = bitcast %struct.VEC2* %tmp82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %125, i8* %126, i64 24, i32 8, i1 false)
  %127 = load %struct.edge_rec*, %struct.edge_rec** %sprev, align 8
  %v83 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %127, i32 0, i32 0
  %128 = load %struct.VERTEX*, %struct.VERTEX** %v83, align 8
  %v84 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %128, i32 0, i32 0
  %129 = bitcast %struct.VEC2* %v2169 to i8*
  %130 = bitcast %struct.VEC2* %v84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 24, i32 8, i1 false)
  %131 = load %struct.edge_rec*, %struct.edge_rec** %sprev, align 8
  %132 = ptrtoint %struct.edge_rec* %131 to i64
  %xor85 = xor i64 %132, 64
  %133 = inttoptr i64 %xor85 to %struct.edge_rec*
  %v86 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %133, i32 0, i32 0
  %134 = load %struct.VERTEX*, %struct.VERTEX** %v86, align 8
  %v87 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %134, i32 0, i32 0
  %135 = bitcast %struct.VEC2* %v2271 to i8*
  %136 = bitcast %struct.VEC2* %v87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %135, i8* %136, i64 24, i32 8, i1 false)
  %137 = load %struct.edge_rec*, %struct.edge_rec** %snex, align 8
  %138 = ptrtoint %struct.edge_rec* %137 to i64
  %xor88 = xor i64 %138, 64
  %139 = inttoptr i64 %xor88 to %struct.edge_rec*
  %v89 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %139, i32 0, i32 0
  %140 = load %struct.VERTEX*, %struct.VERTEX** %v89, align 8
  %v90 = getelementptr inbounds %struct.VERTEX, %struct.VERTEX* %140, i32 0, i32 0
  %141 = bitcast %struct.VEC2* %v2373 to i8*
  %142 = bitcast %struct.VEC2* %v90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %141, i8* %142, i64 24, i32 8, i1 false)
  call void @circle_center(%struct.VEC2* sret %tmp91, %struct.VEC2* byval align 8 %v2169, %struct.VEC2* byval align 8 %v2271, %struct.VEC2* byval align 8 %v2373)
  %143 = bitcast %struct.VEC2* %vv2 to i8*
  %144 = bitcast %struct.VEC2* %tmp91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %143, i8* %144, i64 24, i32 8, i1 false)
  call void @plot_vedge(%struct.VEC2* byval align 8 %vv1, %struct.VEC2* byval align 8 %vv2)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.67, %if.then.54
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %do.body.46
  %145 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %wasseen94 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %145, i32 0, i32 2
  store i64 2, i64* %wasseen94, align 8
  %146 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  store %struct.edge_rec* %146, %struct.edge_rec** %prev, align 8
  %147 = load %struct.edge_rec*, %struct.edge_rec** %nex, align 8
  %next95 = getelementptr inbounds %struct.edge_rec, %struct.edge_rec* %147, i32 0, i32 1
  %148 = load %struct.edge_rec*, %struct.edge_rec** %next95, align 8
  store %struct.edge_rec* %148, %struct.edge_rec** %nex, align 8
  br label %do.cond.96

do.cond.96:                                       ; preds = %if.end.93
  %149 = load %struct.edge_rec*, %struct.edge_rec** %prev, align 8
  %150 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %cmp97 = icmp ne %struct.edge_rec* %149, %150
  br i1 %cmp97, label %do.body.46, label %do.end.98

do.end.98:                                        ; preds = %do.cond.96
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %while.body
  %151 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %152 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  %153 = ptrtoint %struct.edge_rec* %152 to i64
  %xor100 = xor i64 %153, 64
  %154 = inttoptr i64 %xor100 to %struct.edge_rec*
  call void @push_ring(%struct.EDGE_STACK* %151, %struct.edge_rec* %154)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %155 = load %struct.EDGE_STACK*, %struct.EDGE_STACK** %my_stack.addr, align 8
  %156 = load %struct.edge_rec*, %struct.edge_rec** %edge.addr, align 8
  call void (%struct.EDGE_STACK*, %struct.edge_rec*, ...) bitcast (void (...)* @zero_seen to void (%struct.EDGE_STACK*, %struct.edge_rec*, ...)*)(%struct.EDGE_STACK* %155, %struct.edge_rec* %156)
  ret void
}

declare void @zero_seen(...) #1

declare void @push_ring(%struct.EDGE_STACK*, %struct.edge_rec*) #1

declare %struct.edge_rec* @pop_edge(...) #1

declare i32 @ccw(%struct.VERTEX*, %struct.VERTEX*, %struct.VERTEX*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
