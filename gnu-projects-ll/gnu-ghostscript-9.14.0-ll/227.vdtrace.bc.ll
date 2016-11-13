; ModuleID = './vdtrace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vd_trace_interface_s = type { %struct.vd_trace_host_s*, double, double, double, double, double, double, double (%struct.vd_trace_interface_s*)*, double (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*, %struct.vd_trace_interface_s**)*, void (%struct.vd_trace_interface_s*, %struct.vd_trace_interface_s**)*, void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double, double, double, double, double)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*, double, double, i32)*, void (%struct.vd_trace_interface_s*, double, double, i32)*, void (%struct.vd_trace_interface_s*, double, double, i64)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, double, double, i8*)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)* }
%struct.vd_trace_host_s = type opaque
%struct.gs_fixed_point_s = type { i32, i32 }

@vd_trace0 = global %struct.vd_trace_interface_s* null, align 8
@vd_trace1 = global %struct.vd_trace_interface_s* null, align 8
@vd_flags = global [128 x i8] zeroinitializer, align 16
@px = internal global double 0.000000e+00, align 8
@py = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define void @vd_impl_moveto(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1
  store double %y, double* %y.addr, align 8, !tbaa !1
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %2 = load double, double* %x.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %1, double %2) #3
  store double %call, double* @px, align 8, !tbaa !1
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load double, double* %y.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %3, double %4) #3
  store double %call1, double* @py, align 8, !tbaa !1
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %moveto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 14
  %6 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %moveto, align 8, !tbaa !7
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load double, double* @px, align 8, !tbaa !1
  %9 = load double, double* @py, align 8, !tbaa !1
  call void %6(%struct.vd_trace_interface_s* %7, double %8, double %9) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @scale_x(%struct.vd_trace_interface_s* %I, double %x) #1 {
entry:
  %I.addr = alloca %struct.vd_trace_interface_s*, align 8
  %x.addr = alloca double, align 8
  store %struct.vd_trace_interface_s* %I, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  store double %x, double* %x.addr, align 8, !tbaa !1
  %0 = load double, double* %x.addr, align 8, !tbaa !1
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  %orig_x = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 3
  %2 = load double, double* %orig_x, align 8, !tbaa !9
  %sub = fsub double %0, %2
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  %scale_x = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %3, i32 0, i32 1
  %4 = load double, double* %scale_x, align 8, !tbaa !10
  %mul = fmul double %sub, %4
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  %shift_x = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 5
  %6 = load double, double* %shift_x, align 8, !tbaa !11
  %add = fadd double %mul, %6
  ret double %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @scale_y(%struct.vd_trace_interface_s* %I, double %y) #1 {
entry:
  %I.addr = alloca %struct.vd_trace_interface_s*, align 8
  %y.addr = alloca double, align 8
  store %struct.vd_trace_interface_s* %I, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  store double %y, double* %y.addr, align 8, !tbaa !1
  %0 = load double, double* %y.addr, align 8, !tbaa !1
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  %orig_y = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 4
  %2 = load double, double* %orig_y, align 8, !tbaa !12
  %sub = fsub double %0, %2
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  %scale_y = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %3, i32 0, i32 2
  %4 = load double, double* %scale_y, align 8, !tbaa !13
  %mul = fmul double %sub, %4
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** %I.addr, align 8, !tbaa !5
  %shift_y = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 6
  %6 = load double, double* %shift_y, align 8, !tbaa !14
  %add = fadd double %mul, %6
  ret double %add
}

; Function Attrs: nounwind uwtable
define void @vd_impl_lineto(double %x, double %y) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1
  store double %y, double* %y.addr, align 8, !tbaa !1
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %2 = load double, double* %x.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %1, double %2) #3
  store double %call, double* @px, align 8, !tbaa !1
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load double, double* %y.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %3, double %4) #3
  store double %call1, double* @py, align 8, !tbaa !1
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 15
  %6 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto, align 8, !tbaa !15
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load double, double* @px, align 8, !tbaa !1
  %9 = load double, double* @py, align 8, !tbaa !1
  call void %6(%struct.vd_trace_interface_s* %7, double %8, double %9) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_lineto_multi(%struct.gs_fixed_point_s* %p, i32 %n) #0 {
entry:
  %p.addr = alloca %struct.gs_fixed_point_s*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.gs_fixed_point_s* %p, %struct.gs_fixed_point_s** %p.addr, align 8, !tbaa !5
  store i32 %n, i32* %n.addr, align 4, !tbaa !16
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #2
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !tbaa !16
  %3 = load i32, i32* %n.addr, align 4, !tbaa !16
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %5 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p.addr, align 8, !tbaa !5
  %arrayidx = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %6, i64 %idxprom
  %x = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %x, align 4, !tbaa !18
  %conv = sitofp i32 %7 to double
  %call = call double @scale_x(%struct.vd_trace_interface_s* %4, double %conv) #3
  store double %call, double* @px, align 8, !tbaa !1
  %8 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %9 = load i32, i32* %i, align 4, !tbaa !16
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %p.addr, align 8, !tbaa !5
  %arrayidx3 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 %idxprom2
  %y = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %arrayidx3, i32 0, i32 1
  %11 = load i32, i32* %y, align 4, !tbaa !20
  %conv4 = sitofp i32 %11 to double
  %call5 = call double @scale_y(%struct.vd_trace_interface_s* %8, double %conv4) #3
  store double %call5, double* @py, align 8, !tbaa !1
  %12 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %12, i32 0, i32 15
  %13 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto, align 8, !tbaa !15
  %14 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %15 = load double, double* @px, align 8, !tbaa !1
  %16 = load double, double* @py, align 8, !tbaa !1
  call void %13(%struct.vd_trace_interface_s* %14, double %15, double %16) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !tbaa !16
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %18 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %18) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @vd_impl_curveto(double %x1, double %y1, double %x2, double %y2, double %x3, double %y3) #0 {
entry:
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %p1x = alloca double, align 8
  %p1y = alloca double, align 8
  %p2x = alloca double, align 8
  %p2y = alloca double, align 8
  %p3x = alloca double, align 8
  %p3y = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %x1, double* %x1.addr, align 8, !tbaa !1
  store double %y1, double* %y1.addr, align 8, !tbaa !1
  store double %x2, double* %x2.addr, align 8, !tbaa !1
  store double %y2, double* %y2.addr, align 8, !tbaa !1
  store double %x3, double* %x3.addr, align 8, !tbaa !1
  store double %y3, double* %y3.addr, align 8, !tbaa !1
  %0 = bitcast double* %p1x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %p1y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast double* %p2x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast double* %p2y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = bitcast double* %p3x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #2
  %5 = bitcast double* %p3y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load double, double* %x1.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %7, double %8) #3
  store double %call, double* %p1x, align 8, !tbaa !1
  %9 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %10 = load double, double* %y1.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %9, double %10) #3
  store double %call1, double* %p1y, align 8, !tbaa !1
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %12 = load double, double* %x2.addr, align 8, !tbaa !1
  %call2 = call double @scale_x(%struct.vd_trace_interface_s* %11, double %12) #3
  store double %call2, double* %p2x, align 8, !tbaa !1
  %13 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %14 = load double, double* %y2.addr, align 8, !tbaa !1
  %call3 = call double @scale_y(%struct.vd_trace_interface_s* %13, double %14) #3
  store double %call3, double* %p2y, align 8, !tbaa !1
  %15 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %16 = load double, double* %x3.addr, align 8, !tbaa !1
  %call4 = call double @scale_x(%struct.vd_trace_interface_s* %15, double %16) #3
  store double %call4, double* %p3x, align 8, !tbaa !1
  %17 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %18 = load double, double* %y3.addr, align 8, !tbaa !1
  %call5 = call double @scale_y(%struct.vd_trace_interface_s* %17, double %18) #3
  store double %call5, double* %p3y, align 8, !tbaa !1
  %19 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %curveto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %19, i32 0, i32 16
  %20 = load void (%struct.vd_trace_interface_s*, double, double, double, double, double, double)*, void (%struct.vd_trace_interface_s*, double, double, double, double, double, double)** %curveto, align 8, !tbaa !21
  %cmp6 = icmp ne void (%struct.vd_trace_interface_s*, double, double, double, double, double, double)* %20, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %21 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %curveto8 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %21, i32 0, i32 16
  %22 = load void (%struct.vd_trace_interface_s*, double, double, double, double, double, double)*, void (%struct.vd_trace_interface_s*, double, double, double, double, double, double)** %curveto8, align 8, !tbaa !21
  %23 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %24 = load double, double* %p1x, align 8, !tbaa !1
  %25 = load double, double* %p1y, align 8, !tbaa !1
  %26 = load double, double* %p2x, align 8, !tbaa !1
  %27 = load double, double* %p2y, align 8, !tbaa !1
  %28 = load double, double* %p3x, align 8, !tbaa !1
  %29 = load double, double* %p3y, align 8, !tbaa !1
  call void %22(%struct.vd_trace_interface_s* %23, double %24, double %25, double %26, double %27, double %28, double %29) #3
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %30 = load double, double* @px, align 8, !tbaa !1
  %31 = load double, double* @py, align 8, !tbaa !1
  %32 = load double, double* %p1x, align 8, !tbaa !1
  %33 = load double, double* %p1y, align 8, !tbaa !1
  %34 = load double, double* %p2x, align 8, !tbaa !1
  %35 = load double, double* %p2y, align 8, !tbaa !1
  %36 = load double, double* %p3x, align 8, !tbaa !1
  %37 = load double, double* %p3y, align 8, !tbaa !1
  call void @vd_flatten(double %30, double %31, double %32, double %33, double %34, double %35, double %36, double %37) #3
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  %38 = load double, double* %p3x, align 8, !tbaa !1
  store double %38, double* @px, align 8, !tbaa !1
  %39 = load double, double* %p3y, align 8, !tbaa !1
  store double %39, double* @py, align 8, !tbaa !1
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.9, %if.then
  %40 = bitcast double* %p3y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #2
  %41 = bitcast double* %p3x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #2
  %42 = bitcast double* %p2y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %42) #2
  %43 = bitcast double* %p2x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %43) #2
  %44 = bitcast double* %p1y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %44) #2
  %45 = bitcast double* %p1x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %45) #2
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @vd_flatten(double %p0x, double %p0y, double %p1x, double %p1y, double %p2x, double %p2y, double %p3x, double %p3y) #0 {
entry:
  %p0x.addr = alloca double, align 8
  %p0y.addr = alloca double, align 8
  %p1x.addr = alloca double, align 8
  %p1y.addr = alloca double, align 8
  %p2x.addr = alloca double, align 8
  %p2y.addr = alloca double, align 8
  %p3x.addr = alloca double, align 8
  %p3y.addr = alloca double, align 8
  store double %p0x, double* %p0x.addr, align 8, !tbaa !1
  store double %p0y, double* %p0y.addr, align 8, !tbaa !1
  store double %p1x, double* %p1x.addr, align 8, !tbaa !1
  store double %p1y, double* %p1y.addr, align 8, !tbaa !1
  store double %p2x, double* %p2x.addr, align 8, !tbaa !1
  store double %p2y, double* %p2y.addr, align 8, !tbaa !1
  store double %p3x, double* %p3x.addr, align 8, !tbaa !1
  store double %p3y, double* %p3y.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_bar(double %x0, double %y0, double %x1, double %y1, i32 %w, i64 %c) #0 {
entry:
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %w.addr = alloca i32, align 4
  %c.addr = alloca i64, align 8
  store double %x0, double* %x0.addr, align 8, !tbaa !1
  store double %y0, double* %y0.addr, align 8, !tbaa !1
  store double %x1, double* %x1.addr, align 8, !tbaa !1
  store double %y1, double* %y1.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !16
  store i64 %c, i64* %c.addr, align 8, !tbaa !22
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i64, i64* %c.addr, align 8, !tbaa !22
  call void %2(%struct.vd_trace_interface_s* %3, i64 %4) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setlinewidth = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 24
  %6 = load void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, i32)** %setlinewidth, align 8, !tbaa !25
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load i32, i32* %w.addr, align 4, !tbaa !16
  call void %6(%struct.vd_trace_interface_s* %7, i32 %8) #3
  %9 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %beg_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %9, i32 0, i32 12
  %10 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %beg_path, align 8, !tbaa !26
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %10(%struct.vd_trace_interface_s* %11) #3
  %12 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %moveto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %12, i32 0, i32 14
  %13 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %moveto, align 8, !tbaa !7
  %14 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %15 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %16 = load double, double* %x0.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %15, double %16) #3
  %17 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %18 = load double, double* %y0.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %17, double %18) #3
  call void %13(%struct.vd_trace_interface_s* %14, double %call, double %call1) #3
  %19 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %19, i32 0, i32 15
  %20 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto, align 8, !tbaa !15
  %21 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %22 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %23 = load double, double* %x1.addr, align 8, !tbaa !1
  %call2 = call double @scale_x(%struct.vd_trace_interface_s* %22, double %23) #3
  %24 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %25 = load double, double* %y1.addr, align 8, !tbaa !1
  %call3 = call double @scale_y(%struct.vd_trace_interface_s* %24, double %25) #3
  call void %20(%struct.vd_trace_interface_s* %21, double %call2, double %call3) #3
  %26 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %end_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %26, i32 0, i32 13
  %27 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %end_path, align 8, !tbaa !27
  %28 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %27(%struct.vd_trace_interface_s* %28) #3
  %29 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %stroke = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %29, i32 0, i32 22
  %30 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %stroke, align 8, !tbaa !28
  %31 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %30(%struct.vd_trace_interface_s* %31) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_square(double %x, double %y, i32 %w, i32 %c) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %w.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store double %x, double* %x.addr, align 8, !tbaa !1
  store double %y, double* %y.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !16
  store i32 %c, i32* %c.addr, align 4, !tbaa !16
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i32, i32* %c.addr, align 4, !tbaa !16
  %conv = zext i32 %4 to i64
  call void %2(%struct.vd_trace_interface_s* %3, i64 %conv) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setlinewidth = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 24
  %6 = load void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, i32)** %setlinewidth, align 8, !tbaa !25
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %6(%struct.vd_trace_interface_s* %7, i32 1) #3
  %8 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %beg_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %8, i32 0, i32 12
  %9 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %beg_path, align 8, !tbaa !26
  %10 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %9(%struct.vd_trace_interface_s* %10) #3
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %moveto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %11, i32 0, i32 14
  %12 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %moveto, align 8, !tbaa !7
  %13 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %14 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %15 = load double, double* %x.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %14, double %15) #3
  %16 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv1 = sitofp i32 %16 to double
  %sub = fsub double %call, %conv1
  %17 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %18 = load double, double* %y.addr, align 8, !tbaa !1
  %call2 = call double @scale_y(%struct.vd_trace_interface_s* %17, double %18) #3
  %19 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv3 = sitofp i32 %19 to double
  %sub4 = fsub double %call2, %conv3
  call void %12(%struct.vd_trace_interface_s* %13, double %sub, double %sub4) #3
  %20 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %20, i32 0, i32 15
  %21 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto, align 8, !tbaa !15
  %22 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %23 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %24 = load double, double* %x.addr, align 8, !tbaa !1
  %call5 = call double @scale_x(%struct.vd_trace_interface_s* %23, double %24) #3
  %25 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv6 = sitofp i32 %25 to double
  %add = fadd double %call5, %conv6
  %26 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %27 = load double, double* %y.addr, align 8, !tbaa !1
  %call7 = call double @scale_y(%struct.vd_trace_interface_s* %26, double %27) #3
  %28 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv8 = sitofp i32 %28 to double
  %sub9 = fsub double %call7, %conv8
  call void %21(%struct.vd_trace_interface_s* %22, double %add, double %sub9) #3
  %29 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto10 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %29, i32 0, i32 15
  %30 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto10, align 8, !tbaa !15
  %31 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %32 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %33 = load double, double* %x.addr, align 8, !tbaa !1
  %call11 = call double @scale_x(%struct.vd_trace_interface_s* %32, double %33) #3
  %34 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv12 = sitofp i32 %34 to double
  %add13 = fadd double %call11, %conv12
  %35 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %36 = load double, double* %y.addr, align 8, !tbaa !1
  %call14 = call double @scale_y(%struct.vd_trace_interface_s* %35, double %36) #3
  %37 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv15 = sitofp i32 %37 to double
  %add16 = fadd double %call14, %conv15
  call void %30(%struct.vd_trace_interface_s* %31, double %add13, double %add16) #3
  %38 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto17 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %38, i32 0, i32 15
  %39 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto17, align 8, !tbaa !15
  %40 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %41 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %42 = load double, double* %x.addr, align 8, !tbaa !1
  %call18 = call double @scale_x(%struct.vd_trace_interface_s* %41, double %42) #3
  %43 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv19 = sitofp i32 %43 to double
  %sub20 = fsub double %call18, %conv19
  %44 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %45 = load double, double* %y.addr, align 8, !tbaa !1
  %call21 = call double @scale_y(%struct.vd_trace_interface_s* %44, double %45) #3
  %46 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv22 = sitofp i32 %46 to double
  %add23 = fadd double %call21, %conv22
  call void %39(%struct.vd_trace_interface_s* %40, double %sub20, double %add23) #3
  %47 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto24 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %47, i32 0, i32 15
  %48 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto24, align 8, !tbaa !15
  %49 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %50 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %51 = load double, double* %x.addr, align 8, !tbaa !1
  %call25 = call double @scale_x(%struct.vd_trace_interface_s* %50, double %51) #3
  %52 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv26 = sitofp i32 %52 to double
  %sub27 = fsub double %call25, %conv26
  %53 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %54 = load double, double* %y.addr, align 8, !tbaa !1
  %call28 = call double @scale_y(%struct.vd_trace_interface_s* %53, double %54) #3
  %55 = load i32, i32* %w.addr, align 4, !tbaa !16
  %conv29 = sitofp i32 %55 to double
  %sub30 = fsub double %call28, %conv29
  call void %48(%struct.vd_trace_interface_s* %49, double %sub27, double %sub30) #3
  %56 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %end_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %56, i32 0, i32 13
  %57 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %end_path, align 8, !tbaa !27
  %58 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %57(%struct.vd_trace_interface_s* %58) #3
  %59 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %stroke = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %59, i32 0, i32 22
  %60 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %stroke, align 8, !tbaa !28
  %61 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %60(%struct.vd_trace_interface_s* %61) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_rect(double %x0, double %y0, double %x1, double %y1, i32 %w, i32 %c) #0 {
entry:
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %w.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store double %x0, double* %x0.addr, align 8, !tbaa !1
  store double %y0, double* %y0.addr, align 8, !tbaa !1
  store double %x1, double* %x1.addr, align 8, !tbaa !1
  store double %y1, double* %y1.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !16
  store i32 %c, i32* %c.addr, align 4, !tbaa !16
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i32, i32* %c.addr, align 4, !tbaa !16
  %conv = zext i32 %4 to i64
  call void %2(%struct.vd_trace_interface_s* %3, i64 %conv) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setlinewidth = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 24
  %6 = load void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, i32)** %setlinewidth, align 8, !tbaa !25
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load i32, i32* %w.addr, align 4, !tbaa !16
  call void %6(%struct.vd_trace_interface_s* %7, i32 %8) #3
  %9 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %beg_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %9, i32 0, i32 12
  %10 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %beg_path, align 8, !tbaa !26
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %10(%struct.vd_trace_interface_s* %11) #3
  %12 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %moveto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %12, i32 0, i32 14
  %13 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %moveto, align 8, !tbaa !7
  %14 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %15 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %16 = load double, double* %x0.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %15, double %16) #3
  %17 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %18 = load double, double* %y0.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %17, double %18) #3
  call void %13(%struct.vd_trace_interface_s* %14, double %call, double %call1) #3
  %19 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %19, i32 0, i32 15
  %20 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto, align 8, !tbaa !15
  %21 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %22 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %23 = load double, double* %x0.addr, align 8, !tbaa !1
  %call2 = call double @scale_x(%struct.vd_trace_interface_s* %22, double %23) #3
  %24 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %25 = load double, double* %y1.addr, align 8, !tbaa !1
  %call3 = call double @scale_y(%struct.vd_trace_interface_s* %24, double %25) #3
  call void %20(%struct.vd_trace_interface_s* %21, double %call2, double %call3) #3
  %26 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto4 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %26, i32 0, i32 15
  %27 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto4, align 8, !tbaa !15
  %28 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %29 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %30 = load double, double* %x1.addr, align 8, !tbaa !1
  %call5 = call double @scale_x(%struct.vd_trace_interface_s* %29, double %30) #3
  %31 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %32 = load double, double* %y1.addr, align 8, !tbaa !1
  %call6 = call double @scale_y(%struct.vd_trace_interface_s* %31, double %32) #3
  call void %27(%struct.vd_trace_interface_s* %28, double %call5, double %call6) #3
  %33 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto7 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %33, i32 0, i32 15
  %34 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto7, align 8, !tbaa !15
  %35 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %36 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %37 = load double, double* %x1.addr, align 8, !tbaa !1
  %call8 = call double @scale_x(%struct.vd_trace_interface_s* %36, double %37) #3
  %38 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %39 = load double, double* %y0.addr, align 8, !tbaa !1
  %call9 = call double @scale_y(%struct.vd_trace_interface_s* %38, double %39) #3
  call void %34(%struct.vd_trace_interface_s* %35, double %call8, double %call9) #3
  %40 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto10 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %40, i32 0, i32 15
  %41 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto10, align 8, !tbaa !15
  %42 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %43 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %44 = load double, double* %x0.addr, align 8, !tbaa !1
  %call11 = call double @scale_x(%struct.vd_trace_interface_s* %43, double %44) #3
  %45 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %46 = load double, double* %y0.addr, align 8, !tbaa !1
  %call12 = call double @scale_y(%struct.vd_trace_interface_s* %45, double %46) #3
  call void %41(%struct.vd_trace_interface_s* %42, double %call11, double %call12) #3
  %47 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %end_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %47, i32 0, i32 13
  %48 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %end_path, align 8, !tbaa !27
  %49 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %48(%struct.vd_trace_interface_s* %49) #3
  %50 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %stroke = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %50, i32 0, i32 22
  %51 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %stroke, align 8, !tbaa !28
  %52 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %51(%struct.vd_trace_interface_s* %52) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_quad(double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %w, i32 %c) #0 {
entry:
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %w.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store double %x0, double* %x0.addr, align 8, !tbaa !1
  store double %y0, double* %y0.addr, align 8, !tbaa !1
  store double %x1, double* %x1.addr, align 8, !tbaa !1
  store double %y1, double* %y1.addr, align 8, !tbaa !1
  store double %x2, double* %x2.addr, align 8, !tbaa !1
  store double %y2, double* %y2.addr, align 8, !tbaa !1
  store double %x3, double* %x3.addr, align 8, !tbaa !1
  store double %y3, double* %y3.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !16
  store i32 %c, i32* %c.addr, align 4, !tbaa !16
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i32, i32* %c.addr, align 4, !tbaa !16
  %conv = zext i32 %4 to i64
  call void %2(%struct.vd_trace_interface_s* %3, i64 %conv) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setlinewidth = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 24
  %6 = load void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, i32)** %setlinewidth, align 8, !tbaa !25
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load i32, i32* %w.addr, align 4, !tbaa !16
  call void %6(%struct.vd_trace_interface_s* %7, i32 %8) #3
  %9 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %beg_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %9, i32 0, i32 12
  %10 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %beg_path, align 8, !tbaa !26
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %10(%struct.vd_trace_interface_s* %11) #3
  %12 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %moveto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %12, i32 0, i32 14
  %13 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %moveto, align 8, !tbaa !7
  %14 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %15 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %16 = load double, double* %x0.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %15, double %16) #3
  %17 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %18 = load double, double* %y0.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %17, double %18) #3
  call void %13(%struct.vd_trace_interface_s* %14, double %call, double %call1) #3
  %19 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %19, i32 0, i32 15
  %20 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto, align 8, !tbaa !15
  %21 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %22 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %23 = load double, double* %x1.addr, align 8, !tbaa !1
  %call2 = call double @scale_x(%struct.vd_trace_interface_s* %22, double %23) #3
  %24 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %25 = load double, double* %y1.addr, align 8, !tbaa !1
  %call3 = call double @scale_y(%struct.vd_trace_interface_s* %24, double %25) #3
  call void %20(%struct.vd_trace_interface_s* %21, double %call2, double %call3) #3
  %26 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto4 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %26, i32 0, i32 15
  %27 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto4, align 8, !tbaa !15
  %28 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %29 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %30 = load double, double* %x2.addr, align 8, !tbaa !1
  %call5 = call double @scale_x(%struct.vd_trace_interface_s* %29, double %30) #3
  %31 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %32 = load double, double* %y2.addr, align 8, !tbaa !1
  %call6 = call double @scale_y(%struct.vd_trace_interface_s* %31, double %32) #3
  call void %27(%struct.vd_trace_interface_s* %28, double %call5, double %call6) #3
  %33 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto7 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %33, i32 0, i32 15
  %34 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto7, align 8, !tbaa !15
  %35 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %36 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %37 = load double, double* %x3.addr, align 8, !tbaa !1
  %call8 = call double @scale_x(%struct.vd_trace_interface_s* %36, double %37) #3
  %38 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %39 = load double, double* %y3.addr, align 8, !tbaa !1
  %call9 = call double @scale_y(%struct.vd_trace_interface_s* %38, double %39) #3
  call void %34(%struct.vd_trace_interface_s* %35, double %call8, double %call9) #3
  %40 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %lineto10 = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %40, i32 0, i32 15
  %41 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %lineto10, align 8, !tbaa !15
  %42 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %43 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %44 = load double, double* %x0.addr, align 8, !tbaa !1
  %call11 = call double @scale_x(%struct.vd_trace_interface_s* %43, double %44) #3
  %45 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %46 = load double, double* %y0.addr, align 8, !tbaa !1
  %call12 = call double @scale_y(%struct.vd_trace_interface_s* %45, double %46) #3
  call void %41(%struct.vd_trace_interface_s* %42, double %call11, double %call12) #3
  %47 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %end_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %47, i32 0, i32 13
  %48 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %end_path, align 8, !tbaa !27
  %49 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %48(%struct.vd_trace_interface_s* %49) #3
  %50 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %stroke = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %50, i32 0, i32 22
  %51 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %stroke, align 8, !tbaa !28
  %52 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %51(%struct.vd_trace_interface_s* %52) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_curve(double %x0, double %y0, double %x1, double %y1, double %x2, double %y2, double %x3, double %y3, i32 %w, i64 %c) #0 {
entry:
  %x0.addr = alloca double, align 8
  %y0.addr = alloca double, align 8
  %x1.addr = alloca double, align 8
  %y1.addr = alloca double, align 8
  %x2.addr = alloca double, align 8
  %y2.addr = alloca double, align 8
  %x3.addr = alloca double, align 8
  %y3.addr = alloca double, align 8
  %w.addr = alloca i32, align 4
  %c.addr = alloca i64, align 8
  store double %x0, double* %x0.addr, align 8, !tbaa !1
  store double %y0, double* %y0.addr, align 8, !tbaa !1
  store double %x1, double* %x1.addr, align 8, !tbaa !1
  store double %y1, double* %y1.addr, align 8, !tbaa !1
  store double %x2, double* %x2.addr, align 8, !tbaa !1
  store double %y2, double* %y2.addr, align 8, !tbaa !1
  store double %x3, double* %x3.addr, align 8, !tbaa !1
  store double %y3, double* %y3.addr, align 8, !tbaa !1
  store i32 %w, i32* %w.addr, align 4, !tbaa !16
  store i64 %c, i64* %c.addr, align 8, !tbaa !22
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i64, i64* %c.addr, align 8, !tbaa !22
  call void %2(%struct.vd_trace_interface_s* %3, i64 %4) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setlinewidth = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 24
  %6 = load void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, i32)** %setlinewidth, align 8, !tbaa !25
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load i32, i32* %w.addr, align 4, !tbaa !16
  call void %6(%struct.vd_trace_interface_s* %7, i32 %8) #3
  %9 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %beg_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %9, i32 0, i32 12
  %10 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %beg_path, align 8, !tbaa !26
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %10(%struct.vd_trace_interface_s* %11) #3
  %12 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %moveto = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %12, i32 0, i32 14
  %13 = load void (%struct.vd_trace_interface_s*, double, double)*, void (%struct.vd_trace_interface_s*, double, double)** %moveto, align 8, !tbaa !7
  %14 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %15 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %16 = load double, double* %x0.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %15, double %16) #3
  %17 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %18 = load double, double* %y0.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %17, double %18) #3
  call void %13(%struct.vd_trace_interface_s* %14, double %call, double %call1) #3
  %19 = load double, double* %x1.addr, align 8, !tbaa !1
  %20 = load double, double* %y1.addr, align 8, !tbaa !1
  %21 = load double, double* %x2.addr, align 8, !tbaa !1
  %22 = load double, double* %y2.addr, align 8, !tbaa !1
  %23 = load double, double* %x3.addr, align 8, !tbaa !1
  %24 = load double, double* %y3.addr, align 8, !tbaa !1
  call void @vd_impl_curveto(double %19, double %20, double %21, double %22, double %23, double %24) #3
  %25 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %end_path = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %25, i32 0, i32 13
  %26 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %end_path, align 8, !tbaa !27
  %27 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %26(%struct.vd_trace_interface_s* %27) #3
  %28 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %stroke = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %28, i32 0, i32 22
  %29 = load void (%struct.vd_trace_interface_s*)*, void (%struct.vd_trace_interface_s*)** %stroke, align 8, !tbaa !28
  %30 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %29(%struct.vd_trace_interface_s* %30) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_circle(double %x, double %y, i32 %r, i64 %c) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %r.addr = alloca i32, align 4
  %c.addr = alloca i64, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1
  store double %y, double* %y.addr, align 8, !tbaa !1
  store i32 %r, i32* %r.addr, align 4, !tbaa !16
  store i64 %c, i64* %c.addr, align 8, !tbaa !22
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i64, i64* %c.addr, align 8, !tbaa !22
  call void %2(%struct.vd_trace_interface_s* %3, i64 %4) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setlinewidth = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 24
  %6 = load void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, i32)** %setlinewidth, align 8, !tbaa !25
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %6(%struct.vd_trace_interface_s* %7, i32 1) #3
  %8 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %circle = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %8, i32 0, i32 18
  %9 = load void (%struct.vd_trace_interface_s*, double, double, i32)*, void (%struct.vd_trace_interface_s*, double, double, i32)** %circle, align 8, !tbaa !29
  %10 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %12 = load double, double* %x.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %11, double %12) #3
  %13 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %14 = load double, double* %y.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %13, double %14) #3
  %15 = load i32, i32* %r.addr, align 4, !tbaa !16
  call void %9(%struct.vd_trace_interface_s* %10, double %call, double %call1, i32 %15) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_round(double %x, double %y, i32 %r, i64 %c) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %r.addr = alloca i32, align 4
  %c.addr = alloca i64, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1
  store double %y, double* %y.addr, align 8, !tbaa !1
  store i32 %r, i32* %r.addr, align 4, !tbaa !16
  store i64 %c, i64* %c.addr, align 8, !tbaa !22
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i64, i64* %c.addr, align 8, !tbaa !22
  call void %2(%struct.vd_trace_interface_s* %3, i64 %4) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setlinewidth = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 24
  %6 = load void (%struct.vd_trace_interface_s*, i32)*, void (%struct.vd_trace_interface_s*, i32)** %setlinewidth, align 8, !tbaa !25
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  call void %6(%struct.vd_trace_interface_s* %7, i32 1) #3
  %8 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %round = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %8, i32 0, i32 19
  %9 = load void (%struct.vd_trace_interface_s*, double, double, i32)*, void (%struct.vd_trace_interface_s*, double, double, i32)** %round, align 8, !tbaa !30
  %10 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %11 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %12 = load double, double* %x.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %11, double %12) #3
  %13 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %14 = load double, double* %y.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %13, double %14) #3
  %15 = load i32, i32* %r.addr, align 4, !tbaa !16
  call void %9(%struct.vd_trace_interface_s* %10, double %call, double %call1, i32 %15) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_pixel(double %x, double %y, i64 %c) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %c.addr = alloca i64, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1
  store double %y, double* %y.addr, align 8, !tbaa !1
  store i64 %c, i64* %c.addr, align 8, !tbaa !22
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %pixel = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 20
  %2 = load void (%struct.vd_trace_interface_s*, double, double, i64)*, void (%struct.vd_trace_interface_s*, double, double, i64)** %pixel, align 8, !tbaa !31
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %5 = load double, double* %x.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %4, double %5) #3
  %6 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %7 = load double, double* %y.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %6, double %7) #3
  %8 = load i64, i64* %c.addr, align 8, !tbaa !22
  call void %2(%struct.vd_trace_interface_s* %3, double %call, double %call1, i64 %8) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_impl_text(double %x, double %y, i8* %s, i64 %c) #0 {
entry:
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i64, align 8
  store double %x, double* %x.addr, align 8, !tbaa !1
  store double %y, double* %y.addr, align 8, !tbaa !1
  store i8* %s, i8** %s.addr, align 8, !tbaa !5
  store i64 %c, i64* %c.addr, align 8, !tbaa !22
  %0 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %cmp = icmp eq %struct.vd_trace_interface_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %setcolor = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %1, i32 0, i32 23
  %2 = load void (%struct.vd_trace_interface_s*, i64)*, void (%struct.vd_trace_interface_s*, i64)** %setcolor, align 8, !tbaa !24
  %3 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %4 = load i64, i64* %c.addr, align 8, !tbaa !22
  call void %2(%struct.vd_trace_interface_s* %3, i64 %4) #3
  %5 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %text = getelementptr inbounds %struct.vd_trace_interface_s, %struct.vd_trace_interface_s* %5, i32 0, i32 25
  %6 = load void (%struct.vd_trace_interface_s*, double, double, i8*)*, void (%struct.vd_trace_interface_s*, double, double, i8*)** %text, align 8, !tbaa !32
  %7 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %8 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %9 = load double, double* %x.addr, align 8, !tbaa !1
  %call = call double @scale_x(%struct.vd_trace_interface_s* %8, double %9) #3
  %10 = load %struct.vd_trace_interface_s*, %struct.vd_trace_interface_s** @vd_trace1, align 8, !tbaa !5
  %11 = load double, double* %y.addr, align 8, !tbaa !1
  %call1 = call double @scale_y(%struct.vd_trace_interface_s* %10, double %11) #3
  %12 = load i8*, i8** %s.addr, align 8, !tbaa !5
  call void %6(%struct.vd_trace_interface_s* %7, double %call, double %call1, i8* %12) #3
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @vd_setflag(i8 signext %f, i8 signext %v) #0 {
entry:
  %f.addr = alloca i8, align 1
  %v.addr = alloca i8, align 1
  store i8 %f, i8* %f.addr, align 1, !tbaa !33
  store i8 %v, i8* %v.addr, align 1, !tbaa !33
  %0 = load i8, i8* %v.addr, align 1, !tbaa !33
  %1 = load i8, i8* %f.addr, align 1, !tbaa !33
  %conv = sext i8 %1 to i32
  %and = and i32 %conv, 127
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* @vd_flags, i32 0, i64 %idxprom
  store i8 %0, i8* %arrayidx, align 1, !tbaa !33
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"double", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !6, i64 112}
!8 = !{!"vd_trace_interface_s", !6, i64 0, !2, i64 8, !2, i64 16, !2, i64 24, !2, i64 32, !2, i64 40, !2, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232}
!9 = !{!8, !2, i64 24}
!10 = !{!8, !2, i64 8}
!11 = !{!8, !2, i64 40}
!12 = !{!8, !2, i64 32}
!13 = !{!8, !2, i64 16}
!14 = !{!8, !2, i64 48}
!15 = !{!8, !6, i64 120}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !3, i64 0}
!18 = !{!19, !17, i64 0}
!19 = !{!"gs_fixed_point_s", !17, i64 0, !17, i64 4}
!20 = !{!19, !17, i64 4}
!21 = !{!8, !6, i64 128}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !3, i64 0}
!24 = !{!8, !6, i64 184}
!25 = !{!8, !6, i64 192}
!26 = !{!8, !6, i64 96}
!27 = !{!8, !6, i64 104}
!28 = !{!8, !6, i64 176}
!29 = !{!8, !6, i64 144}
!30 = !{!8, !6, i64 152}
!31 = !{!8, !6, i64 160}
!32 = !{!8, !6, i64 200}
!33 = !{!3, !3, i64 0}
