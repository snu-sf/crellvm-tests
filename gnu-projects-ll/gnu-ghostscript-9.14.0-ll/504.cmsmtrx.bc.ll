; ModuleID = './cmsmtrx.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsVEC3 = type { [3 x double] }
%struct.cmsMAT3 = type { [3 x %struct.cmsVEC3] }

; Function Attrs: nounwind uwtable
define void @_cmsVEC3init(%struct.cmsVEC3* %r, double %x, double %y, double %z) #0 {
entry:
  %r.addr = alloca %struct.cmsVEC3*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  store %struct.cmsVEC3* %r, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  store double %x, double* %x.addr, align 8, !tbaa !5
  store double %y, double* %y.addr, align 8, !tbaa !5
  store double %z, double* %z.addr, align 8, !tbaa !5
  %0 = load double, double* %x.addr, align 8, !tbaa !5
  %1 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  store double %0, double* %arrayidx, align 8, !tbaa !5
  %2 = load double, double* %y.addr, align 8, !tbaa !5
  %3 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %n1, i32 0, i64 1
  store double %2, double* %arrayidx2, align 8, !tbaa !5
  %4 = load double, double* %z.addr, align 8, !tbaa !5
  %5 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %5, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 2
  store double %4, double* %arrayidx4, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsVEC3minus(%struct.cmsVEC3* %r, %struct.cmsVEC3* %a, %struct.cmsVEC3* %b) #0 {
entry:
  %r.addr = alloca %struct.cmsVEC3*, align 8
  %a.addr = alloca %struct.cmsVEC3*, align 8
  %b.addr = alloca %struct.cmsVEC3*, align 8
  store %struct.cmsVEC3* %r, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %a, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %b, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %0 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8, !tbaa !5
  %2 = load %struct.cmsVEC3*, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %n1, i32 0, i64 0
  %3 = load double, double* %arrayidx2, align 8, !tbaa !5
  %sub = fsub double %1, %3
  %4 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 0
  store double %sub, double* %arrayidx4, align 8, !tbaa !5
  %5 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n5 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %5, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %n5, i32 0, i64 1
  %6 = load double, double* %arrayidx6, align 8, !tbaa !5
  %7 = load %struct.cmsVEC3*, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %n7 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %7, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %n7, i32 0, i64 1
  %8 = load double, double* %arrayidx8, align 8, !tbaa !5
  %sub9 = fsub double %6, %8
  %9 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n10 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %n10, i32 0, i64 1
  store double %sub9, double* %arrayidx11, align 8, !tbaa !5
  %10 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n12 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %10, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %n12, i32 0, i64 2
  %11 = load double, double* %arrayidx13, align 8, !tbaa !5
  %12 = load %struct.cmsVEC3*, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %n14 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %12, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %n14, i32 0, i64 2
  %13 = load double, double* %arrayidx15, align 8, !tbaa !5
  %sub16 = fsub double %11, %13
  %14 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n17 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %14, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %n17, i32 0, i64 2
  store double %sub16, double* %arrayidx18, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define void @_cmsVEC3cross(%struct.cmsVEC3* %r, %struct.cmsVEC3* %u, %struct.cmsVEC3* %v) #0 {
entry:
  %r.addr = alloca %struct.cmsVEC3*, align 8
  %u.addr = alloca %struct.cmsVEC3*, align 8
  %v.addr = alloca %struct.cmsVEC3*, align 8
  store %struct.cmsVEC3* %r, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %u, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %v, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %0 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 1
  %1 = load double, double* %arrayidx, align 8, !tbaa !5
  %2 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %n1, i32 0, i64 2
  %3 = load double, double* %arrayidx2, align 8, !tbaa !5
  %mul = fmul double %1, %3
  %4 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 1
  %5 = load double, double* %arrayidx4, align 8, !tbaa !5
  %6 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n5 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %n5, i32 0, i64 2
  %7 = load double, double* %arrayidx6, align 8, !tbaa !5
  %mul7 = fmul double %5, %7
  %sub = fsub double %mul, %mul7
  %8 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n8 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %n8, i32 0, i64 0
  store double %sub, double* %arrayidx9, align 8, !tbaa !5
  %9 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n10 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %n10, i32 0, i64 2
  %10 = load double, double* %arrayidx11, align 8, !tbaa !5
  %11 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n12 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %n12, i32 0, i64 0
  %12 = load double, double* %arrayidx13, align 8, !tbaa !5
  %mul14 = fmul double %10, %12
  %13 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n15 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %13, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %n15, i32 0, i64 2
  %14 = load double, double* %arrayidx16, align 8, !tbaa !5
  %15 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n17 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %15, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %n17, i32 0, i64 0
  %16 = load double, double* %arrayidx18, align 8, !tbaa !5
  %mul19 = fmul double %14, %16
  %sub20 = fsub double %mul14, %mul19
  %17 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n21 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %17, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %n21, i32 0, i64 1
  store double %sub20, double* %arrayidx22, align 8, !tbaa !5
  %18 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n23 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %18, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %n23, i32 0, i64 0
  %19 = load double, double* %arrayidx24, align 8, !tbaa !5
  %20 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n25 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %20, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %n25, i32 0, i64 1
  %21 = load double, double* %arrayidx26, align 8, !tbaa !5
  %mul27 = fmul double %19, %21
  %22 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n28 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %22, i32 0, i32 0
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %n28, i32 0, i64 0
  %23 = load double, double* %arrayidx29, align 8, !tbaa !5
  %24 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n30 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %24, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %n30, i32 0, i64 1
  %25 = load double, double* %arrayidx31, align 8, !tbaa !5
  %mul32 = fmul double %23, %25
  %sub33 = fsub double %mul27, %mul32
  %26 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n34 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %26, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %n34, i32 0, i64 2
  store double %sub33, double* %arrayidx35, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define double @_cmsVEC3dot(%struct.cmsVEC3* %u, %struct.cmsVEC3* %v) #0 {
entry:
  %u.addr = alloca %struct.cmsVEC3*, align 8
  %v.addr = alloca %struct.cmsVEC3*, align 8
  store %struct.cmsVEC3* %u, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %v, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %0 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8, !tbaa !5
  %2 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %n1, i32 0, i64 0
  %3 = load double, double* %arrayidx2, align 8, !tbaa !5
  %mul = fmul double %1, %3
  %4 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 1
  %5 = load double, double* %arrayidx4, align 8, !tbaa !5
  %6 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n5 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %n5, i32 0, i64 1
  %7 = load double, double* %arrayidx6, align 8, !tbaa !5
  %mul7 = fmul double %5, %7
  %add = fadd double %mul, %mul7
  %8 = load %struct.cmsVEC3*, %struct.cmsVEC3** %u.addr, align 8, !tbaa !1
  %n8 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %n8, i32 0, i64 2
  %9 = load double, double* %arrayidx9, align 8, !tbaa !5
  %10 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n10 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %n10, i32 0, i64 2
  %11 = load double, double* %arrayidx11, align 8, !tbaa !5
  %mul12 = fmul double %9, %11
  %add13 = fadd double %add, %mul12
  ret double %add13
}

; Function Attrs: nounwind uwtable
define double @_cmsVEC3length(%struct.cmsVEC3* %a) #0 {
entry:
  %a.addr = alloca %struct.cmsVEC3*, align 8
  store %struct.cmsVEC3* %a, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %0 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8, !tbaa !5
  %2 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %2, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %n1, i32 0, i64 0
  %3 = load double, double* %arrayidx2, align 8, !tbaa !5
  %mul = fmul double %1, %3
  %4 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %4, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 1
  %5 = load double, double* %arrayidx4, align 8, !tbaa !5
  %6 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n5 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %6, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %n5, i32 0, i64 1
  %7 = load double, double* %arrayidx6, align 8, !tbaa !5
  %mul7 = fmul double %5, %7
  %add = fadd double %mul, %mul7
  %8 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n8 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %8, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %n8, i32 0, i64 2
  %9 = load double, double* %arrayidx9, align 8, !tbaa !5
  %10 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n10 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %n10, i32 0, i64 2
  %11 = load double, double* %arrayidx11, align 8, !tbaa !5
  %mul12 = fmul double %9, %11
  %add13 = fadd double %add, %mul12
  %call = call double @sqrt(double %add13) #4
  ret double %call
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define double @_cmsVEC3distance(%struct.cmsVEC3* %a, %struct.cmsVEC3* %b) #0 {
entry:
  %a.addr = alloca %struct.cmsVEC3*, align 8
  %b.addr = alloca %struct.cmsVEC3*, align 8
  %d1 = alloca double, align 8
  %d2 = alloca double, align 8
  %d3 = alloca double, align 8
  store %struct.cmsVEC3* %a, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %b, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %0 = bitcast double* %d1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %2 = load double, double* %arrayidx, align 8, !tbaa !5
  %3 = load %struct.cmsVEC3*, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %n1 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %3, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %n1, i32 0, i64 0
  %4 = load double, double* %arrayidx2, align 8, !tbaa !5
  %sub = fsub double %2, %4
  store double %sub, double* %d1, align 8, !tbaa !5
  %5 = bitcast double* %d2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #2
  %6 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %6, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 1
  %7 = load double, double* %arrayidx4, align 8, !tbaa !5
  %8 = load %struct.cmsVEC3*, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %n5 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %8, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %n5, i32 0, i64 1
  %9 = load double, double* %arrayidx6, align 8, !tbaa !5
  %sub7 = fsub double %7, %9
  store double %sub7, double* %d2, align 8, !tbaa !5
  %10 = bitcast double* %d3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #2
  %11 = load %struct.cmsVEC3*, %struct.cmsVEC3** %a.addr, align 8, !tbaa !1
  %n8 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %11, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %n8, i32 0, i64 2
  %12 = load double, double* %arrayidx9, align 8, !tbaa !5
  %13 = load %struct.cmsVEC3*, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %n10 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %13, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %n10, i32 0, i64 2
  %14 = load double, double* %arrayidx11, align 8, !tbaa !5
  %sub12 = fsub double %12, %14
  store double %sub12, double* %d3, align 8, !tbaa !5
  %15 = load double, double* %d1, align 8, !tbaa !5
  %16 = load double, double* %d1, align 8, !tbaa !5
  %mul = fmul double %15, %16
  %17 = load double, double* %d2, align 8, !tbaa !5
  %18 = load double, double* %d2, align 8, !tbaa !5
  %mul13 = fmul double %17, %18
  %add = fadd double %mul, %mul13
  %19 = load double, double* %d3, align 8, !tbaa !5
  %20 = load double, double* %d3, align 8, !tbaa !5
  %mul14 = fmul double %19, %20
  %add15 = fadd double %add, %mul14
  %call = call double @sqrt(double %add15) #4
  %21 = bitcast double* %d3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %21) #2
  %22 = bitcast double* %d2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %22) #2
  %23 = bitcast double* %d1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %23) #2
  ret double %call
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @_cmsMAT3identity(%struct.cmsMAT3* %a) #0 {
entry:
  %a.addr = alloca %struct.cmsMAT3*, align 8
  store %struct.cmsMAT3* %a, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %0 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00) #5
  %1 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v1 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v1, i32 0, i64 1
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx2, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00) #5
  %2 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v3 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v3, i32 0, i64 2
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx4, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cmsMAT3isIdentity(%struct.cmsMAT3* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.cmsMAT3*, align 8
  %Identity = alloca %struct.cmsMAT3, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %a, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsMAT3* %Identity to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #2
  %1 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %1) #2
  %2 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %2) #2
  call void @_cmsMAT3identity(%struct.cmsMAT3* %Identity) #5
  store i32 0, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !7
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !7
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !tbaa !7
  %cmp2 = icmp slt i32 %4, 3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4, !tbaa !7
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %7, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 %idxprom4
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 %idxprom
  %8 = load double, double* %arrayidx5, align 8, !tbaa !5
  %9 = load i32, i32* %j, align 4, !tbaa !7
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4, !tbaa !7
  %idxprom7 = sext i32 %10 to i64
  %v8 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %Identity, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v8, i32 0, i64 %idxprom7
  %n10 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %n10, i32 0, i64 %idxprom6
  %11 = load double, double* %arrayidx11, align 8, !tbaa !5
  %call = call i32 @CloseEnough(double %8, double %11) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.3
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4, !tbaa !7
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4, !tbaa !7
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %13 = load i32, i32* %i, align 4, !tbaa !7
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !7
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.14, %if.then
  %14 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #2
  %15 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %15) #2
  %16 = bitcast %struct.cmsMAT3* %Identity to i8*
  call void @llvm.lifetime.end(i64 72, i8* %16) #2
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @CloseEnough(double %a, double %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %a, double* %a.addr, align 8, !tbaa !5
  store double %b, double* %b.addr, align 8, !tbaa !5
  %0 = load double, double* %b.addr, align 8, !tbaa !5
  %1 = load double, double* %a.addr, align 8, !tbaa !5
  %sub = fsub double %0, %1
  %call = call double @fabs(double %sub) #6
  %cmp = fcmp olt double %call, 0x3EF0001000100010
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @_cmsMAT3per(%struct.cmsMAT3* %r, %struct.cmsMAT3* %a, %struct.cmsMAT3* %b) #0 {
entry:
  %r.addr = alloca %struct.cmsMAT3*, align 8
  %a.addr = alloca %struct.cmsMAT3*, align 8
  %b.addr = alloca %struct.cmsMAT3*, align 8
  store %struct.cmsMAT3* %r, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %a, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %b, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %0 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 0
  %1 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v1 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %1, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v1, i32 0, i64 0
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx2, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %2 = load double, double* %arrayidx3, align 8, !tbaa !5
  %3 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v4 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v4, i32 0, i64 0
  %n6 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %n6, i32 0, i64 0
  %4 = load double, double* %arrayidx7, align 8, !tbaa !5
  %mul = fmul double %2, %4
  %5 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v8 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %5, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v8, i32 0, i64 0
  %n10 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %n10, i32 0, i64 1
  %6 = load double, double* %arrayidx11, align 8, !tbaa !5
  %7 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v12 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %7, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v12, i32 0, i64 1
  %n14 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %n14, i32 0, i64 0
  %8 = load double, double* %arrayidx15, align 8, !tbaa !5
  %mul16 = fmul double %6, %8
  %add = fadd double %mul, %mul16
  %9 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v17 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %9, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v17, i32 0, i64 0
  %n19 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx18, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %n19, i32 0, i64 2
  %10 = load double, double* %arrayidx20, align 8, !tbaa !5
  %11 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v21 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %11, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v21, i32 0, i64 2
  %n23 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx22, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %n23, i32 0, i64 0
  %12 = load double, double* %arrayidx24, align 8, !tbaa !5
  %mul25 = fmul double %10, %12
  %add26 = fadd double %add, %mul25
  %13 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v27 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %13, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v27, i32 0, i64 0
  %n29 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx28, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %n29, i32 0, i64 0
  %14 = load double, double* %arrayidx30, align 8, !tbaa !5
  %15 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v31 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %15, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v31, i32 0, i64 0
  %n33 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx32, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %n33, i32 0, i64 1
  %16 = load double, double* %arrayidx34, align 8, !tbaa !5
  %mul35 = fmul double %14, %16
  %17 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v36 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %17, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v36, i32 0, i64 0
  %n38 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx37, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %n38, i32 0, i64 1
  %18 = load double, double* %arrayidx39, align 8, !tbaa !5
  %19 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v40 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %19, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v40, i32 0, i64 1
  %n42 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %n42, i32 0, i64 1
  %20 = load double, double* %arrayidx43, align 8, !tbaa !5
  %mul44 = fmul double %18, %20
  %add45 = fadd double %mul35, %mul44
  %21 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v46 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %21, i32 0, i32 0
  %arrayidx47 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v46, i32 0, i64 0
  %n48 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx47, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [3 x double], [3 x double]* %n48, i32 0, i64 2
  %22 = load double, double* %arrayidx49, align 8, !tbaa !5
  %23 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v50 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %23, i32 0, i32 0
  %arrayidx51 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v50, i32 0, i64 2
  %n52 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx51, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %n52, i32 0, i64 1
  %24 = load double, double* %arrayidx53, align 8, !tbaa !5
  %mul54 = fmul double %22, %24
  %add55 = fadd double %add45, %mul54
  %25 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v56 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %25, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v56, i32 0, i64 0
  %n58 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx57, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %n58, i32 0, i64 0
  %26 = load double, double* %arrayidx59, align 8, !tbaa !5
  %27 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v60 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %27, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v60, i32 0, i64 0
  %n62 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx61, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %n62, i32 0, i64 2
  %28 = load double, double* %arrayidx63, align 8, !tbaa !5
  %mul64 = fmul double %26, %28
  %29 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v65 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %29, i32 0, i32 0
  %arrayidx66 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v65, i32 0, i64 0
  %n67 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx66, i32 0, i32 0
  %arrayidx68 = getelementptr inbounds [3 x double], [3 x double]* %n67, i32 0, i64 1
  %30 = load double, double* %arrayidx68, align 8, !tbaa !5
  %31 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v69 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %31, i32 0, i32 0
  %arrayidx70 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v69, i32 0, i64 1
  %n71 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx70, i32 0, i32 0
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %n71, i32 0, i64 2
  %32 = load double, double* %arrayidx72, align 8, !tbaa !5
  %mul73 = fmul double %30, %32
  %add74 = fadd double %mul64, %mul73
  %33 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v75 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %33, i32 0, i32 0
  %arrayidx76 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v75, i32 0, i64 0
  %n77 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx76, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [3 x double], [3 x double]* %n77, i32 0, i64 2
  %34 = load double, double* %arrayidx78, align 8, !tbaa !5
  %35 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v79 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %35, i32 0, i32 0
  %arrayidx80 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v79, i32 0, i64 2
  %n81 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [3 x double], [3 x double]* %n81, i32 0, i64 2
  %36 = load double, double* %arrayidx82, align 8, !tbaa !5
  %mul83 = fmul double %34, %36
  %add84 = fadd double %add74, %mul83
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx, double %add26, double %add55, double %add84) #5
  %37 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v85 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %37, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v85, i32 0, i64 1
  %38 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v87 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %38, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v87, i32 0, i64 1
  %n89 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx88, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [3 x double], [3 x double]* %n89, i32 0, i64 0
  %39 = load double, double* %arrayidx90, align 8, !tbaa !5
  %40 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v91 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %40, i32 0, i32 0
  %arrayidx92 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v91, i32 0, i64 0
  %n93 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx92, i32 0, i32 0
  %arrayidx94 = getelementptr inbounds [3 x double], [3 x double]* %n93, i32 0, i64 0
  %41 = load double, double* %arrayidx94, align 8, !tbaa !5
  %mul95 = fmul double %39, %41
  %42 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v96 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %42, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v96, i32 0, i64 1
  %n98 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx97, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [3 x double], [3 x double]* %n98, i32 0, i64 1
  %43 = load double, double* %arrayidx99, align 8, !tbaa !5
  %44 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v100 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %44, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v100, i32 0, i64 1
  %n102 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx101, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x double], [3 x double]* %n102, i32 0, i64 0
  %45 = load double, double* %arrayidx103, align 8, !tbaa !5
  %mul104 = fmul double %43, %45
  %add105 = fadd double %mul95, %mul104
  %46 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v106 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %46, i32 0, i32 0
  %arrayidx107 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v106, i32 0, i64 1
  %n108 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx107, i32 0, i32 0
  %arrayidx109 = getelementptr inbounds [3 x double], [3 x double]* %n108, i32 0, i64 2
  %47 = load double, double* %arrayidx109, align 8, !tbaa !5
  %48 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v110 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %48, i32 0, i32 0
  %arrayidx111 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v110, i32 0, i64 2
  %n112 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx111, i32 0, i32 0
  %arrayidx113 = getelementptr inbounds [3 x double], [3 x double]* %n112, i32 0, i64 0
  %49 = load double, double* %arrayidx113, align 8, !tbaa !5
  %mul114 = fmul double %47, %49
  %add115 = fadd double %add105, %mul114
  %50 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v116 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %50, i32 0, i32 0
  %arrayidx117 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v116, i32 0, i64 1
  %n118 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx117, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [3 x double], [3 x double]* %n118, i32 0, i64 0
  %51 = load double, double* %arrayidx119, align 8, !tbaa !5
  %52 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v120 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %52, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v120, i32 0, i64 0
  %n122 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx121, i32 0, i32 0
  %arrayidx123 = getelementptr inbounds [3 x double], [3 x double]* %n122, i32 0, i64 1
  %53 = load double, double* %arrayidx123, align 8, !tbaa !5
  %mul124 = fmul double %51, %53
  %54 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v125 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %54, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v125, i32 0, i64 1
  %n127 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx126, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x double], [3 x double]* %n127, i32 0, i64 1
  %55 = load double, double* %arrayidx128, align 8, !tbaa !5
  %56 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v129 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %56, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v129, i32 0, i64 1
  %n131 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x double], [3 x double]* %n131, i32 0, i64 1
  %57 = load double, double* %arrayidx132, align 8, !tbaa !5
  %mul133 = fmul double %55, %57
  %add134 = fadd double %mul124, %mul133
  %58 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v135 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %58, i32 0, i32 0
  %arrayidx136 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v135, i32 0, i64 1
  %n137 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx136, i32 0, i32 0
  %arrayidx138 = getelementptr inbounds [3 x double], [3 x double]* %n137, i32 0, i64 2
  %59 = load double, double* %arrayidx138, align 8, !tbaa !5
  %60 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v139 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %60, i32 0, i32 0
  %arrayidx140 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v139, i32 0, i64 2
  %n141 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx140, i32 0, i32 0
  %arrayidx142 = getelementptr inbounds [3 x double], [3 x double]* %n141, i32 0, i64 1
  %61 = load double, double* %arrayidx142, align 8, !tbaa !5
  %mul143 = fmul double %59, %61
  %add144 = fadd double %add134, %mul143
  %62 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v145 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %62, i32 0, i32 0
  %arrayidx146 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v145, i32 0, i64 1
  %n147 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx146, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [3 x double], [3 x double]* %n147, i32 0, i64 0
  %63 = load double, double* %arrayidx148, align 8, !tbaa !5
  %64 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v149 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %64, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v149, i32 0, i64 0
  %n151 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx150, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [3 x double], [3 x double]* %n151, i32 0, i64 2
  %65 = load double, double* %arrayidx152, align 8, !tbaa !5
  %mul153 = fmul double %63, %65
  %66 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v154 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %66, i32 0, i32 0
  %arrayidx155 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v154, i32 0, i64 1
  %n156 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx155, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [3 x double], [3 x double]* %n156, i32 0, i64 1
  %67 = load double, double* %arrayidx157, align 8, !tbaa !5
  %68 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v158 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %68, i32 0, i32 0
  %arrayidx159 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v158, i32 0, i64 1
  %n160 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx159, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [3 x double], [3 x double]* %n160, i32 0, i64 2
  %69 = load double, double* %arrayidx161, align 8, !tbaa !5
  %mul162 = fmul double %67, %69
  %add163 = fadd double %mul153, %mul162
  %70 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v164 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %70, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v164, i32 0, i64 1
  %n166 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [3 x double], [3 x double]* %n166, i32 0, i64 2
  %71 = load double, double* %arrayidx167, align 8, !tbaa !5
  %72 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v168 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %72, i32 0, i32 0
  %arrayidx169 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v168, i32 0, i64 2
  %n170 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx169, i32 0, i32 0
  %arrayidx171 = getelementptr inbounds [3 x double], [3 x double]* %n170, i32 0, i64 2
  %73 = load double, double* %arrayidx171, align 8, !tbaa !5
  %mul172 = fmul double %71, %73
  %add173 = fadd double %add163, %mul172
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx86, double %add115, double %add144, double %add173) #5
  %74 = load %struct.cmsMAT3*, %struct.cmsMAT3** %r.addr, align 8, !tbaa !1
  %v174 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %74, i32 0, i32 0
  %arrayidx175 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v174, i32 0, i64 2
  %75 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v176 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %75, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v176, i32 0, i64 2
  %n178 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [3 x double], [3 x double]* %n178, i32 0, i64 0
  %76 = load double, double* %arrayidx179, align 8, !tbaa !5
  %77 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v180 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %77, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v180, i32 0, i64 0
  %n182 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [3 x double], [3 x double]* %n182, i32 0, i64 0
  %78 = load double, double* %arrayidx183, align 8, !tbaa !5
  %mul184 = fmul double %76, %78
  %79 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v185 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %79, i32 0, i32 0
  %arrayidx186 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v185, i32 0, i64 2
  %n187 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx186, i32 0, i32 0
  %arrayidx188 = getelementptr inbounds [3 x double], [3 x double]* %n187, i32 0, i64 1
  %80 = load double, double* %arrayidx188, align 8, !tbaa !5
  %81 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v189 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %81, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v189, i32 0, i64 1
  %n191 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [3 x double], [3 x double]* %n191, i32 0, i64 0
  %82 = load double, double* %arrayidx192, align 8, !tbaa !5
  %mul193 = fmul double %80, %82
  %add194 = fadd double %mul184, %mul193
  %83 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v195 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %83, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v195, i32 0, i64 2
  %n197 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx196, i32 0, i32 0
  %arrayidx198 = getelementptr inbounds [3 x double], [3 x double]* %n197, i32 0, i64 2
  %84 = load double, double* %arrayidx198, align 8, !tbaa !5
  %85 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v199 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %85, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v199, i32 0, i64 2
  %n201 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx200, i32 0, i32 0
  %arrayidx202 = getelementptr inbounds [3 x double], [3 x double]* %n201, i32 0, i64 0
  %86 = load double, double* %arrayidx202, align 8, !tbaa !5
  %mul203 = fmul double %84, %86
  %add204 = fadd double %add194, %mul203
  %87 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v205 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %87, i32 0, i32 0
  %arrayidx206 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v205, i32 0, i64 2
  %n207 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx206, i32 0, i32 0
  %arrayidx208 = getelementptr inbounds [3 x double], [3 x double]* %n207, i32 0, i64 0
  %88 = load double, double* %arrayidx208, align 8, !tbaa !5
  %89 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v209 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %89, i32 0, i32 0
  %arrayidx210 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v209, i32 0, i64 0
  %n211 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [3 x double], [3 x double]* %n211, i32 0, i64 1
  %90 = load double, double* %arrayidx212, align 8, !tbaa !5
  %mul213 = fmul double %88, %90
  %91 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v214 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %91, i32 0, i32 0
  %arrayidx215 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v214, i32 0, i64 2
  %n216 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx215, i32 0, i32 0
  %arrayidx217 = getelementptr inbounds [3 x double], [3 x double]* %n216, i32 0, i64 1
  %92 = load double, double* %arrayidx217, align 8, !tbaa !5
  %93 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v218 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %93, i32 0, i32 0
  %arrayidx219 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v218, i32 0, i64 1
  %n220 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx219, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [3 x double], [3 x double]* %n220, i32 0, i64 1
  %94 = load double, double* %arrayidx221, align 8, !tbaa !5
  %mul222 = fmul double %92, %94
  %add223 = fadd double %mul213, %mul222
  %95 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v224 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %95, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v224, i32 0, i64 2
  %n226 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [3 x double], [3 x double]* %n226, i32 0, i64 2
  %96 = load double, double* %arrayidx227, align 8, !tbaa !5
  %97 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v228 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %97, i32 0, i32 0
  %arrayidx229 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v228, i32 0, i64 2
  %n230 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx229, i32 0, i32 0
  %arrayidx231 = getelementptr inbounds [3 x double], [3 x double]* %n230, i32 0, i64 1
  %98 = load double, double* %arrayidx231, align 8, !tbaa !5
  %mul232 = fmul double %96, %98
  %add233 = fadd double %add223, %mul232
  %99 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v234 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %99, i32 0, i32 0
  %arrayidx235 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v234, i32 0, i64 2
  %n236 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx235, i32 0, i32 0
  %arrayidx237 = getelementptr inbounds [3 x double], [3 x double]* %n236, i32 0, i64 0
  %100 = load double, double* %arrayidx237, align 8, !tbaa !5
  %101 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v238 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %101, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v238, i32 0, i64 0
  %n240 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx239, i32 0, i32 0
  %arrayidx241 = getelementptr inbounds [3 x double], [3 x double]* %n240, i32 0, i64 2
  %102 = load double, double* %arrayidx241, align 8, !tbaa !5
  %mul242 = fmul double %100, %102
  %103 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v243 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %103, i32 0, i32 0
  %arrayidx244 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v243, i32 0, i64 2
  %n245 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx244, i32 0, i32 0
  %arrayidx246 = getelementptr inbounds [3 x double], [3 x double]* %n245, i32 0, i64 1
  %104 = load double, double* %arrayidx246, align 8, !tbaa !5
  %105 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v247 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %105, i32 0, i32 0
  %arrayidx248 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v247, i32 0, i64 1
  %n249 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx248, i32 0, i32 0
  %arrayidx250 = getelementptr inbounds [3 x double], [3 x double]* %n249, i32 0, i64 2
  %106 = load double, double* %arrayidx250, align 8, !tbaa !5
  %mul251 = fmul double %104, %106
  %add252 = fadd double %mul242, %mul251
  %107 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v253 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %107, i32 0, i32 0
  %arrayidx254 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v253, i32 0, i64 2
  %n255 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx254, i32 0, i32 0
  %arrayidx256 = getelementptr inbounds [3 x double], [3 x double]* %n255, i32 0, i64 2
  %108 = load double, double* %arrayidx256, align 8, !tbaa !5
  %109 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v257 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %109, i32 0, i32 0
  %arrayidx258 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v257, i32 0, i64 2
  %n259 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx258, i32 0, i32 0
  %arrayidx260 = getelementptr inbounds [3 x double], [3 x double]* %n259, i32 0, i64 2
  %110 = load double, double* %arrayidx260, align 8, !tbaa !5
  %mul261 = fmul double %108, %110
  %add262 = fadd double %add252, %mul261
  call void @_cmsVEC3init(%struct.cmsVEC3* %arrayidx175, double %add204, double %add233, double %add262) #5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_cmsMAT3inverse(%struct.cmsMAT3* %a, %struct.cmsMAT3* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.cmsMAT3*, align 8
  %b.addr = alloca %struct.cmsMAT3*, align 8
  %det = alloca double, align 8
  %c0 = alloca double, align 8
  %c1 = alloca double, align 8
  %c2 = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsMAT3* %a, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %b, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %0 = bitcast double* %det to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #2
  %1 = bitcast double* %c0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #2
  %2 = bitcast double* %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #2
  %3 = bitcast double* %c2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #2
  %4 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %4, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v, i32 0, i64 1
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 1
  %5 = load double, double* %arrayidx1, align 8, !tbaa !5
  %6 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v2 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %6, i32 0, i32 0
  %arrayidx3 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v2, i32 0, i64 2
  %n4 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx3, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %n4, i32 0, i64 2
  %7 = load double, double* %arrayidx5, align 8, !tbaa !5
  %mul = fmul double %5, %7
  %8 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v6 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %8, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v6, i32 0, i64 1
  %n8 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %n8, i32 0, i64 2
  %9 = load double, double* %arrayidx9, align 8, !tbaa !5
  %10 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v10 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %10, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v10, i32 0, i64 2
  %n12 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx11, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %n12, i32 0, i64 1
  %11 = load double, double* %arrayidx13, align 8, !tbaa !5
  %mul14 = fmul double %9, %11
  %sub = fsub double %mul, %mul14
  store double %sub, double* %c0, align 8, !tbaa !5
  %12 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v15 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %12, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v15, i32 0, i64 1
  %n17 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx16, i32 0, i32 0
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %n17, i32 0, i64 0
  %13 = load double, double* %arrayidx18, align 8, !tbaa !5
  %sub19 = fsub double -0.000000e+00, %13
  %14 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v20 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %14, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v20, i32 0, i64 2
  %n22 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x double], [3 x double]* %n22, i32 0, i64 2
  %15 = load double, double* %arrayidx23, align 8, !tbaa !5
  %mul24 = fmul double %sub19, %15
  %16 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v25 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %16, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v25, i32 0, i64 1
  %n27 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %n27, i32 0, i64 2
  %17 = load double, double* %arrayidx28, align 8, !tbaa !5
  %18 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v29 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %18, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v29, i32 0, i64 2
  %n31 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %n31, i32 0, i64 0
  %19 = load double, double* %arrayidx32, align 8, !tbaa !5
  %mul33 = fmul double %17, %19
  %add = fadd double %mul24, %mul33
  store double %add, double* %c1, align 8, !tbaa !5
  %20 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v34 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %20, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v34, i32 0, i64 1
  %n36 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %n36, i32 0, i64 0
  %21 = load double, double* %arrayidx37, align 8, !tbaa !5
  %22 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v38 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %22, i32 0, i32 0
  %arrayidx39 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v38, i32 0, i64 2
  %n40 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx39, i32 0, i32 0
  %arrayidx41 = getelementptr inbounds [3 x double], [3 x double]* %n40, i32 0, i64 1
  %23 = load double, double* %arrayidx41, align 8, !tbaa !5
  %mul42 = fmul double %21, %23
  %24 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v43 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %24, i32 0, i32 0
  %arrayidx44 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v43, i32 0, i64 1
  %n45 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx44, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %n45, i32 0, i64 1
  %25 = load double, double* %arrayidx46, align 8, !tbaa !5
  %26 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v47 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %26, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v47, i32 0, i64 2
  %n49 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %n49, i32 0, i64 0
  %27 = load double, double* %arrayidx50, align 8, !tbaa !5
  %mul51 = fmul double %25, %27
  %sub52 = fsub double %mul42, %mul51
  store double %sub52, double* %c2, align 8, !tbaa !5
  %28 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v53 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %28, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v53, i32 0, i64 0
  %n55 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx54, i32 0, i32 0
  %arrayidx56 = getelementptr inbounds [3 x double], [3 x double]* %n55, i32 0, i64 0
  %29 = load double, double* %arrayidx56, align 8, !tbaa !5
  %30 = load double, double* %c0, align 8, !tbaa !5
  %mul57 = fmul double %29, %30
  %31 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v58 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %31, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v58, i32 0, i64 0
  %n60 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx59, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [3 x double], [3 x double]* %n60, i32 0, i64 1
  %32 = load double, double* %arrayidx61, align 8, !tbaa !5
  %33 = load double, double* %c1, align 8, !tbaa !5
  %mul62 = fmul double %32, %33
  %add63 = fadd double %mul57, %mul62
  %34 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v64 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %34, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v64, i32 0, i64 0
  %n66 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx65, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x double], [3 x double]* %n66, i32 0, i64 2
  %35 = load double, double* %arrayidx67, align 8, !tbaa !5
  %36 = load double, double* %c2, align 8, !tbaa !5
  %mul68 = fmul double %35, %36
  %add69 = fadd double %add63, %mul68
  store double %add69, double* %det, align 8, !tbaa !5
  %37 = load double, double* %det, align 8, !tbaa !5
  %call = call double @fabs(double %37) #6
  %cmp = fcmp olt double %call, 1.000000e-04
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %38 = load double, double* %c0, align 8, !tbaa !5
  %39 = load double, double* %det, align 8, !tbaa !5
  %div = fdiv double %38, %39
  %40 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v70 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %40, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v70, i32 0, i64 0
  %n72 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx71, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [3 x double], [3 x double]* %n72, i32 0, i64 0
  store double %div, double* %arrayidx73, align 8, !tbaa !5
  %41 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v74 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %41, i32 0, i32 0
  %arrayidx75 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v74, i32 0, i64 0
  %n76 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx75, i32 0, i32 0
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %n76, i32 0, i64 2
  %42 = load double, double* %arrayidx77, align 8, !tbaa !5
  %43 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v78 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %43, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v78, i32 0, i64 2
  %n80 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx79, i32 0, i32 0
  %arrayidx81 = getelementptr inbounds [3 x double], [3 x double]* %n80, i32 0, i64 1
  %44 = load double, double* %arrayidx81, align 8, !tbaa !5
  %mul82 = fmul double %42, %44
  %45 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v83 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %45, i32 0, i32 0
  %arrayidx84 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v83, i32 0, i64 0
  %n85 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx84, i32 0, i32 0
  %arrayidx86 = getelementptr inbounds [3 x double], [3 x double]* %n85, i32 0, i64 1
  %46 = load double, double* %arrayidx86, align 8, !tbaa !5
  %47 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v87 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %47, i32 0, i32 0
  %arrayidx88 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v87, i32 0, i64 2
  %n89 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx88, i32 0, i32 0
  %arrayidx90 = getelementptr inbounds [3 x double], [3 x double]* %n89, i32 0, i64 2
  %48 = load double, double* %arrayidx90, align 8, !tbaa !5
  %mul91 = fmul double %46, %48
  %sub92 = fsub double %mul82, %mul91
  %49 = load double, double* %det, align 8, !tbaa !5
  %div93 = fdiv double %sub92, %49
  %50 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v94 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %50, i32 0, i32 0
  %arrayidx95 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v94, i32 0, i64 0
  %n96 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx95, i32 0, i32 0
  %arrayidx97 = getelementptr inbounds [3 x double], [3 x double]* %n96, i32 0, i64 1
  store double %div93, double* %arrayidx97, align 8, !tbaa !5
  %51 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v98 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %51, i32 0, i32 0
  %arrayidx99 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v98, i32 0, i64 0
  %n100 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx99, i32 0, i32 0
  %arrayidx101 = getelementptr inbounds [3 x double], [3 x double]* %n100, i32 0, i64 1
  %52 = load double, double* %arrayidx101, align 8, !tbaa !5
  %53 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v102 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %53, i32 0, i32 0
  %arrayidx103 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v102, i32 0, i64 1
  %n104 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx103, i32 0, i32 0
  %arrayidx105 = getelementptr inbounds [3 x double], [3 x double]* %n104, i32 0, i64 2
  %54 = load double, double* %arrayidx105, align 8, !tbaa !5
  %mul106 = fmul double %52, %54
  %55 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v107 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %55, i32 0, i32 0
  %arrayidx108 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v107, i32 0, i64 0
  %n109 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx108, i32 0, i32 0
  %arrayidx110 = getelementptr inbounds [3 x double], [3 x double]* %n109, i32 0, i64 2
  %56 = load double, double* %arrayidx110, align 8, !tbaa !5
  %57 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v111 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %57, i32 0, i32 0
  %arrayidx112 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v111, i32 0, i64 1
  %n113 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx112, i32 0, i32 0
  %arrayidx114 = getelementptr inbounds [3 x double], [3 x double]* %n113, i32 0, i64 1
  %58 = load double, double* %arrayidx114, align 8, !tbaa !5
  %mul115 = fmul double %56, %58
  %sub116 = fsub double %mul106, %mul115
  %59 = load double, double* %det, align 8, !tbaa !5
  %div117 = fdiv double %sub116, %59
  %60 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v118 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %60, i32 0, i32 0
  %arrayidx119 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v118, i32 0, i64 0
  %n120 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx119, i32 0, i32 0
  %arrayidx121 = getelementptr inbounds [3 x double], [3 x double]* %n120, i32 0, i64 2
  store double %div117, double* %arrayidx121, align 8, !tbaa !5
  %61 = load double, double* %c1, align 8, !tbaa !5
  %62 = load double, double* %det, align 8, !tbaa !5
  %div122 = fdiv double %61, %62
  %63 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v123 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %63, i32 0, i32 0
  %arrayidx124 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v123, i32 0, i64 1
  %n125 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx124, i32 0, i32 0
  %arrayidx126 = getelementptr inbounds [3 x double], [3 x double]* %n125, i32 0, i64 0
  store double %div122, double* %arrayidx126, align 8, !tbaa !5
  %64 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v127 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %64, i32 0, i32 0
  %arrayidx128 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v127, i32 0, i64 0
  %n129 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx128, i32 0, i32 0
  %arrayidx130 = getelementptr inbounds [3 x double], [3 x double]* %n129, i32 0, i64 0
  %65 = load double, double* %arrayidx130, align 8, !tbaa !5
  %66 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v131 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %66, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v131, i32 0, i64 2
  %n133 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx132, i32 0, i32 0
  %arrayidx134 = getelementptr inbounds [3 x double], [3 x double]* %n133, i32 0, i64 2
  %67 = load double, double* %arrayidx134, align 8, !tbaa !5
  %mul135 = fmul double %65, %67
  %68 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v136 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %68, i32 0, i32 0
  %arrayidx137 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v136, i32 0, i64 0
  %n138 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx137, i32 0, i32 0
  %arrayidx139 = getelementptr inbounds [3 x double], [3 x double]* %n138, i32 0, i64 2
  %69 = load double, double* %arrayidx139, align 8, !tbaa !5
  %70 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v140 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %70, i32 0, i32 0
  %arrayidx141 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v140, i32 0, i64 2
  %n142 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx141, i32 0, i32 0
  %arrayidx143 = getelementptr inbounds [3 x double], [3 x double]* %n142, i32 0, i64 0
  %71 = load double, double* %arrayidx143, align 8, !tbaa !5
  %mul144 = fmul double %69, %71
  %sub145 = fsub double %mul135, %mul144
  %72 = load double, double* %det, align 8, !tbaa !5
  %div146 = fdiv double %sub145, %72
  %73 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v147 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %73, i32 0, i32 0
  %arrayidx148 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v147, i32 0, i64 1
  %n149 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx148, i32 0, i32 0
  %arrayidx150 = getelementptr inbounds [3 x double], [3 x double]* %n149, i32 0, i64 1
  store double %div146, double* %arrayidx150, align 8, !tbaa !5
  %74 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v151 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %74, i32 0, i32 0
  %arrayidx152 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v151, i32 0, i64 0
  %n153 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx152, i32 0, i32 0
  %arrayidx154 = getelementptr inbounds [3 x double], [3 x double]* %n153, i32 0, i64 2
  %75 = load double, double* %arrayidx154, align 8, !tbaa !5
  %76 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v155 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %76, i32 0, i32 0
  %arrayidx156 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v155, i32 0, i64 1
  %n157 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx156, i32 0, i32 0
  %arrayidx158 = getelementptr inbounds [3 x double], [3 x double]* %n157, i32 0, i64 0
  %77 = load double, double* %arrayidx158, align 8, !tbaa !5
  %mul159 = fmul double %75, %77
  %78 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v160 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %78, i32 0, i32 0
  %arrayidx161 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v160, i32 0, i64 0
  %n162 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx161, i32 0, i32 0
  %arrayidx163 = getelementptr inbounds [3 x double], [3 x double]* %n162, i32 0, i64 0
  %79 = load double, double* %arrayidx163, align 8, !tbaa !5
  %80 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v164 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %80, i32 0, i32 0
  %arrayidx165 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v164, i32 0, i64 1
  %n166 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx165, i32 0, i32 0
  %arrayidx167 = getelementptr inbounds [3 x double], [3 x double]* %n166, i32 0, i64 2
  %81 = load double, double* %arrayidx167, align 8, !tbaa !5
  %mul168 = fmul double %79, %81
  %sub169 = fsub double %mul159, %mul168
  %82 = load double, double* %det, align 8, !tbaa !5
  %div170 = fdiv double %sub169, %82
  %83 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v171 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %83, i32 0, i32 0
  %arrayidx172 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v171, i32 0, i64 1
  %n173 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx172, i32 0, i32 0
  %arrayidx174 = getelementptr inbounds [3 x double], [3 x double]* %n173, i32 0, i64 2
  store double %div170, double* %arrayidx174, align 8, !tbaa !5
  %84 = load double, double* %c2, align 8, !tbaa !5
  %85 = load double, double* %det, align 8, !tbaa !5
  %div175 = fdiv double %84, %85
  %86 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v176 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %86, i32 0, i32 0
  %arrayidx177 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v176, i32 0, i64 2
  %n178 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx177, i32 0, i32 0
  %arrayidx179 = getelementptr inbounds [3 x double], [3 x double]* %n178, i32 0, i64 0
  store double %div175, double* %arrayidx179, align 8, !tbaa !5
  %87 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v180 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %87, i32 0, i32 0
  %arrayidx181 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v180, i32 0, i64 0
  %n182 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx181, i32 0, i32 0
  %arrayidx183 = getelementptr inbounds [3 x double], [3 x double]* %n182, i32 0, i64 1
  %88 = load double, double* %arrayidx183, align 8, !tbaa !5
  %89 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v184 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %89, i32 0, i32 0
  %arrayidx185 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v184, i32 0, i64 2
  %n186 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx185, i32 0, i32 0
  %arrayidx187 = getelementptr inbounds [3 x double], [3 x double]* %n186, i32 0, i64 0
  %90 = load double, double* %arrayidx187, align 8, !tbaa !5
  %mul188 = fmul double %88, %90
  %91 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v189 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %91, i32 0, i32 0
  %arrayidx190 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v189, i32 0, i64 0
  %n191 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx190, i32 0, i32 0
  %arrayidx192 = getelementptr inbounds [3 x double], [3 x double]* %n191, i32 0, i64 0
  %92 = load double, double* %arrayidx192, align 8, !tbaa !5
  %93 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v193 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %93, i32 0, i32 0
  %arrayidx194 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v193, i32 0, i64 2
  %n195 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx194, i32 0, i32 0
  %arrayidx196 = getelementptr inbounds [3 x double], [3 x double]* %n195, i32 0, i64 1
  %94 = load double, double* %arrayidx196, align 8, !tbaa !5
  %mul197 = fmul double %92, %94
  %sub198 = fsub double %mul188, %mul197
  %95 = load double, double* %det, align 8, !tbaa !5
  %div199 = fdiv double %sub198, %95
  %96 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v200 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %96, i32 0, i32 0
  %arrayidx201 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v200, i32 0, i64 2
  %n202 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx201, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [3 x double], [3 x double]* %n202, i32 0, i64 1
  store double %div199, double* %arrayidx203, align 8, !tbaa !5
  %97 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v204 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %97, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v204, i32 0, i64 0
  %n206 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx205, i32 0, i32 0
  %arrayidx207 = getelementptr inbounds [3 x double], [3 x double]* %n206, i32 0, i64 0
  %98 = load double, double* %arrayidx207, align 8, !tbaa !5
  %99 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v208 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %99, i32 0, i32 0
  %arrayidx209 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v208, i32 0, i64 1
  %n210 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [3 x double], [3 x double]* %n210, i32 0, i64 1
  %100 = load double, double* %arrayidx211, align 8, !tbaa !5
  %mul212 = fmul double %98, %100
  %101 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v213 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %101, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v213, i32 0, i64 0
  %n215 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [3 x double], [3 x double]* %n215, i32 0, i64 1
  %102 = load double, double* %arrayidx216, align 8, !tbaa !5
  %103 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v217 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %103, i32 0, i32 0
  %arrayidx218 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v217, i32 0, i64 1
  %n219 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx218, i32 0, i32 0
  %arrayidx220 = getelementptr inbounds [3 x double], [3 x double]* %n219, i32 0, i64 0
  %104 = load double, double* %arrayidx220, align 8, !tbaa !5
  %mul221 = fmul double %102, %104
  %sub222 = fsub double %mul212, %mul221
  %105 = load double, double* %det, align 8, !tbaa !5
  %div223 = fdiv double %sub222, %105
  %106 = load %struct.cmsMAT3*, %struct.cmsMAT3** %b.addr, align 8, !tbaa !1
  %v224 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %106, i32 0, i32 0
  %arrayidx225 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v224, i32 0, i64 2
  %n226 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [3 x double], [3 x double]* %n226, i32 0, i64 2
  store double %div223, double* %arrayidx227, align 8, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %107 = bitcast double* %c2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %107) #2
  %108 = bitcast double* %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #2
  %109 = bitcast double* %c0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #2
  %110 = bitcast double* %det to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #2
  %111 = load i32, i32* %retval
  ret i32 %111
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

; Function Attrs: nounwind uwtable
define i32 @_cmsMAT3solve(%struct.cmsVEC3* %x, %struct.cmsMAT3* %a, %struct.cmsVEC3* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.cmsVEC3*, align 8
  %a.addr = alloca %struct.cmsMAT3*, align 8
  %b.addr = alloca %struct.cmsVEC3*, align 8
  %m = alloca %struct.cmsMAT3, align 8
  %a_1 = alloca %struct.cmsMAT3, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsVEC3* %x, %struct.cmsVEC3** %x.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %a, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %b, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsMAT3* %m to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #2
  %1 = bitcast %struct.cmsMAT3* %a_1 to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #2
  %2 = bitcast %struct.cmsMAT3* %m to i8*
  %3 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %4 = bitcast %struct.cmsMAT3* %3 to i8*
  %call = call i8* @memmove(i8* %2, i8* %4, i64 72) #4
  %call1 = call i32 @_cmsMAT3inverse(%struct.cmsMAT3* %m, %struct.cmsMAT3* %a_1) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = load %struct.cmsVEC3*, %struct.cmsVEC3** %x.addr, align 8, !tbaa !1
  %6 = load %struct.cmsVEC3*, %struct.cmsVEC3** %b.addr, align 8, !tbaa !1
  call void @_cmsMAT3eval(%struct.cmsVEC3* %5, %struct.cmsMAT3* %a_1, %struct.cmsVEC3* %6) #5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct.cmsMAT3* %a_1 to i8*
  call void @llvm.lifetime.end(i64 72, i8* %7) #2
  %8 = bitcast %struct.cmsMAT3* %m to i8*
  call void @llvm.lifetime.end(i64 72, i8* %8) #2
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind
declare i8* @memmove(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @_cmsMAT3eval(%struct.cmsVEC3* %r, %struct.cmsMAT3* %a, %struct.cmsVEC3* %v) #0 {
entry:
  %r.addr = alloca %struct.cmsVEC3*, align 8
  %a.addr = alloca %struct.cmsMAT3*, align 8
  %v.addr = alloca %struct.cmsVEC3*, align 8
  store %struct.cmsVEC3* %r, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  store %struct.cmsMAT3* %a, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  store %struct.cmsVEC3* %v, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %0 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v1 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %0, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v1, i32 0, i64 0
  %n = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %n, i32 0, i64 0
  %1 = load double, double* %arrayidx2, align 8, !tbaa !5
  %2 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n3 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %2, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %n3, i32 0, i64 0
  %3 = load double, double* %arrayidx4, align 8, !tbaa !5
  %mul = fmul double %1, %3
  %4 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v5 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v5, i32 0, i64 0
  %n7 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx6, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %n7, i32 0, i64 1
  %5 = load double, double* %arrayidx8, align 8, !tbaa !5
  %6 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n9 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %6, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %n9, i32 0, i64 1
  %7 = load double, double* %arrayidx10, align 8, !tbaa !5
  %mul11 = fmul double %5, %7
  %add = fadd double %mul, %mul11
  %8 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v12 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %8, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v12, i32 0, i64 0
  %n14 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %n14, i32 0, i64 2
  %9 = load double, double* %arrayidx15, align 8, !tbaa !5
  %10 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n16 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %10, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %n16, i32 0, i64 2
  %11 = load double, double* %arrayidx17, align 8, !tbaa !5
  %mul18 = fmul double %9, %11
  %add19 = fadd double %add, %mul18
  %12 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n20 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %12, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %n20, i32 0, i64 0
  store double %add19, double* %arrayidx21, align 8, !tbaa !5
  %13 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v22 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %13, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v22, i32 0, i64 1
  %n24 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %n24, i32 0, i64 0
  %14 = load double, double* %arrayidx25, align 8, !tbaa !5
  %15 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n26 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %15, i32 0, i32 0
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %n26, i32 0, i64 0
  %16 = load double, double* %arrayidx27, align 8, !tbaa !5
  %mul28 = fmul double %14, %16
  %17 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v29 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %17, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v29, i32 0, i64 1
  %n31 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx30, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %n31, i32 0, i64 1
  %18 = load double, double* %arrayidx32, align 8, !tbaa !5
  %19 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n33 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %19, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %n33, i32 0, i64 1
  %20 = load double, double* %arrayidx34, align 8, !tbaa !5
  %mul35 = fmul double %18, %20
  %add36 = fadd double %mul28, %mul35
  %21 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v37 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %21, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v37, i32 0, i64 1
  %n39 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx38, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %n39, i32 0, i64 2
  %22 = load double, double* %arrayidx40, align 8, !tbaa !5
  %23 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n41 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %23, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %n41, i32 0, i64 2
  %24 = load double, double* %arrayidx42, align 8, !tbaa !5
  %mul43 = fmul double %22, %24
  %add44 = fadd double %add36, %mul43
  %25 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n45 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %25, i32 0, i32 0
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %n45, i32 0, i64 1
  store double %add44, double* %arrayidx46, align 8, !tbaa !5
  %26 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v47 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %26, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v47, i32 0, i64 2
  %n49 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx48, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %n49, i32 0, i64 0
  %27 = load double, double* %arrayidx50, align 8, !tbaa !5
  %28 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n51 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %28, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %n51, i32 0, i64 0
  %29 = load double, double* %arrayidx52, align 8, !tbaa !5
  %mul53 = fmul double %27, %29
  %30 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v54 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %30, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v54, i32 0, i64 2
  %n56 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx55, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x double], [3 x double]* %n56, i32 0, i64 1
  %31 = load double, double* %arrayidx57, align 8, !tbaa !5
  %32 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n58 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %32, i32 0, i32 0
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %n58, i32 0, i64 1
  %33 = load double, double* %arrayidx59, align 8, !tbaa !5
  %mul60 = fmul double %31, %33
  %add61 = fadd double %mul53, %mul60
  %34 = load %struct.cmsMAT3*, %struct.cmsMAT3** %a.addr, align 8, !tbaa !1
  %v62 = getelementptr inbounds %struct.cmsMAT3, %struct.cmsMAT3* %34, i32 0, i32 0
  %arrayidx63 = getelementptr inbounds [3 x %struct.cmsVEC3], [3 x %struct.cmsVEC3]* %v62, i32 0, i64 2
  %n64 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %arrayidx63, i32 0, i32 0
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %n64, i32 0, i64 2
  %35 = load double, double* %arrayidx65, align 8, !tbaa !5
  %36 = load %struct.cmsVEC3*, %struct.cmsVEC3** %v.addr, align 8, !tbaa !1
  %n66 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %36, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [3 x double], [3 x double]* %n66, i32 0, i64 2
  %37 = load double, double* %arrayidx67, align 8, !tbaa !5
  %mul68 = fmul double %35, %37
  %add69 = fadd double %add61, %mul68
  %38 = load %struct.cmsVEC3*, %struct.cmsVEC3** %r.addr, align 8, !tbaa !1
  %n70 = getelementptr inbounds %struct.cmsVEC3, %struct.cmsVEC3* %38, i32 0, i32 0
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %n70, i32 0, i64 2
  store double %add69, double* %arrayidx71, align 8, !tbaa !5
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !3, i64 0}
