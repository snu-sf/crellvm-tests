; ModuleID = './cmspcs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsCIExyY = type { double, double, double }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsCIELab = type { double, double, double }
%struct.cmsCIELCh = type { double, double, double }
%union.anon = type { double }

@_cmsEndPointsBySpace.RGBblack = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.RGBwhite = internal global [4 x i16] [i16 -1, i16 -1, i16 -1, i16 0], align 2
@_cmsEndPointsBySpace.CMYKblack = internal global [4 x i16] [i16 -1, i16 -1, i16 -1, i16 -1], align 2
@_cmsEndPointsBySpace.CMYKwhite = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.LABblack = internal global [4 x i16] [i16 0, i16 -32640, i16 -32640, i16 0], align 2
@_cmsEndPointsBySpace.LABwhite = internal global [4 x i16] [i16 -1, i16 -32640, i16 -32640, i16 0], align 2
@_cmsEndPointsBySpace.CMYblack = internal global [4 x i16] [i16 -1, i16 -1, i16 -1, i16 0], align 2
@_cmsEndPointsBySpace.CMYwhite = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.Grayblack = internal global [4 x i16] zeroinitializer, align 2
@_cmsEndPointsBySpace.GrayWhite = internal global [4 x i16] [i16 -1, i16 0, i16 0, i16 0], align 2

; Function Attrs: nounwind uwtable
define void @cmsXYZ2xyY(%struct.cmsCIExyY* %Dest, %struct.cmsCIEXYZ* %Source) #0 {
entry:
  %Dest.addr = alloca %struct.cmsCIExyY*, align 8
  %Source.addr = alloca %struct.cmsCIEXYZ*, align 8
  %ISum = alloca double, align 8
  store %struct.cmsCIExyY* %Dest, %struct.cmsCIExyY** %Dest.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %Source, %struct.cmsCIEXYZ** %Source.addr, align 8, !tbaa !1
  %0 = bitcast double* %ISum to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Source.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %1, i32 0, i32 0
  %2 = load double, double* %X, align 8, !tbaa !5
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Source.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %3, i32 0, i32 1
  %4 = load double, double* %Y, align 8, !tbaa !8
  %add = fadd double %2, %4
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Source.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %5, i32 0, i32 2
  %6 = load double, double* %Z, align 8, !tbaa !9
  %add1 = fadd double %add, %6
  %div = fdiv double 1.000000e+00, %add1
  store double %div, double* %ISum, align 8, !tbaa !10
  %7 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Source.addr, align 8, !tbaa !1
  %X2 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %7, i32 0, i32 0
  %8 = load double, double* %X2, align 8, !tbaa !5
  %9 = load double, double* %ISum, align 8, !tbaa !10
  %mul = fmul double %8, %9
  %10 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Dest.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %10, i32 0, i32 0
  store double %mul, double* %x, align 8, !tbaa !5
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Source.addr, align 8, !tbaa !1
  %Y3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %11, i32 0, i32 1
  %12 = load double, double* %Y3, align 8, !tbaa !8
  %13 = load double, double* %ISum, align 8, !tbaa !10
  %mul4 = fmul double %12, %13
  %14 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Dest.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %14, i32 0, i32 1
  store double %mul4, double* %y, align 8, !tbaa !8
  %15 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Source.addr, align 8, !tbaa !1
  %Y5 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %15, i32 0, i32 1
  %16 = load double, double* %Y5, align 8, !tbaa !8
  %17 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Dest.addr, align 8, !tbaa !1
  %Y6 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %17, i32 0, i32 2
  store double %16, double* %Y6, align 8, !tbaa !9
  %18 = bitcast double* %ISum to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @cmsxyY2XYZ(%struct.cmsCIEXYZ* %Dest, %struct.cmsCIExyY* %Source) #0 {
entry:
  %Dest.addr = alloca %struct.cmsCIEXYZ*, align 8
  %Source.addr = alloca %struct.cmsCIExyY*, align 8
  store %struct.cmsCIEXYZ* %Dest, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  store %struct.cmsCIExyY* %Source, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %x = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %0, i32 0, i32 0
  %1 = load double, double* %x, align 8, !tbaa !5
  %2 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %2, i32 0, i32 1
  %3 = load double, double* %y, align 8, !tbaa !8
  %div = fdiv double %1, %3
  %4 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %4, i32 0, i32 2
  %5 = load double, double* %Y, align 8, !tbaa !9
  %mul = fmul double %div, %5
  %6 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %6, i32 0, i32 0
  store double %mul, double* %X, align 8, !tbaa !5
  %7 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %Y1 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %7, i32 0, i32 2
  %8 = load double, double* %Y1, align 8, !tbaa !9
  %9 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  %Y2 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %9, i32 0, i32 1
  store double %8, double* %Y2, align 8, !tbaa !8
  %10 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %x3 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %10, i32 0, i32 0
  %11 = load double, double* %x3, align 8, !tbaa !5
  %sub = fsub double 1.000000e+00, %11
  %12 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %y4 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %12, i32 0, i32 1
  %13 = load double, double* %y4, align 8, !tbaa !8
  %sub5 = fsub double %sub, %13
  %14 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %y6 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %14, i32 0, i32 1
  %15 = load double, double* %y6, align 8, !tbaa !8
  %div7 = fdiv double %sub5, %15
  %16 = load %struct.cmsCIExyY*, %struct.cmsCIExyY** %Source.addr, align 8, !tbaa !1
  %Y8 = getelementptr inbounds %struct.cmsCIExyY, %struct.cmsCIExyY* %16, i32 0, i32 2
  %17 = load double, double* %Y8, align 8, !tbaa !9
  %mul9 = fmul double %div7, %17
  %18 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %Dest.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %18, i32 0, i32 2
  store double %mul9, double* %Z, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsXYZ2Lab(%struct.cmsCIEXYZ* %WhitePoint, %struct.cmsCIELab* %Lab, %struct.cmsCIEXYZ* %xyz) #0 {
entry:
  %WhitePoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  %xyz.addr = alloca %struct.cmsCIEXYZ*, align 8
  %fx = alloca double, align 8
  %fy = alloca double, align 8
  %fz = alloca double, align 8
  store %struct.cmsCIEXYZ* %WhitePoint, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %xyz, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  %0 = bitcast double* %fx to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %fy to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %fz to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsCIEXYZ* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  store %struct.cmsCIEXYZ* %call, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %4, i32 0, i32 0
  %5 = load double, double* %X, align 8, !tbaa !5
  %6 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %X1 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %6, i32 0, i32 0
  %7 = load double, double* %X1, align 8, !tbaa !5
  %div = fdiv double %5, %7
  %call2 = call double @f(double %div) #6
  store double %call2, double* %fx, align 8, !tbaa !10
  %8 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %8, i32 0, i32 1
  %9 = load double, double* %Y, align 8, !tbaa !8
  %10 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %Y3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %10, i32 0, i32 1
  %11 = load double, double* %Y3, align 8, !tbaa !8
  %div4 = fdiv double %9, %11
  %call5 = call double @f(double %div4) #6
  store double %call5, double* %fy, align 8, !tbaa !10
  %12 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %12, i32 0, i32 2
  %13 = load double, double* %Z, align 8, !tbaa !9
  %14 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %Z6 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %14, i32 0, i32 2
  %15 = load double, double* %Z6, align 8, !tbaa !9
  %div7 = fdiv double %13, %15
  %call8 = call double @f(double %div7) #6
  store double %call8, double* %fz, align 8, !tbaa !10
  %16 = load double, double* %fy, align 8, !tbaa !10
  %mul = fmul double 1.160000e+02, %16
  %sub = fsub double %mul, 1.600000e+01
  %17 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %17, i32 0, i32 0
  store double %sub, double* %L, align 8, !tbaa !5
  %18 = load double, double* %fx, align 8, !tbaa !10
  %19 = load double, double* %fy, align 8, !tbaa !10
  %sub9 = fsub double %18, %19
  %mul10 = fmul double 5.000000e+02, %sub9
  %20 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %20, i32 0, i32 1
  store double %mul10, double* %a, align 8, !tbaa !8
  %21 = load double, double* %fy, align 8, !tbaa !10
  %22 = load double, double* %fz, align 8, !tbaa !10
  %sub11 = fsub double %21, %22
  %mul12 = fmul double 2.000000e+02, %sub11
  %23 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %23, i32 0, i32 2
  store double %mul12, double* %b, align 8, !tbaa !9
  %24 = bitcast double* %fz to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast double* %fy to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast double* %fx to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret void
}

declare %struct.cmsCIEXYZ* @cmsD50_XYZ() #2

; Function Attrs: nounwind uwtable
define internal double @f(double %t) #0 {
entry:
  %retval = alloca double, align 8
  %t.addr = alloca double, align 8
  %Limit = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %t, double* %t.addr, align 8, !tbaa !10
  %0 = bitcast double* %Limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x3F822354D28F7CD6, double* %Limit, align 8, !tbaa !10
  %1 = load double, double* %t.addr, align 8, !tbaa !10
  %cmp = fcmp ole double %1, 0x3F822354D28F7CD6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load double, double* %t.addr, align 8, !tbaa !10
  %mul = fmul double 0x401F25ED097B425F, %2
  %add = fadd double %mul, 0x3FC1A7B9611A7B96
  store double %add, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.else:                                          ; preds = %entry
  %3 = load double, double* %t.addr, align 8, !tbaa !10
  %call = call double @pow(double %3, double 0x3FD5555555555555) #7
  store double %call, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %4 = bitcast double* %Limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = load double, double* %retval
  ret double %5
}

; Function Attrs: nounwind uwtable
define void @cmsLab2XYZ(%struct.cmsCIEXYZ* %WhitePoint, %struct.cmsCIEXYZ* %xyz, %struct.cmsCIELab* %Lab) #0 {
entry:
  %WhitePoint.addr = alloca %struct.cmsCIEXYZ*, align 8
  %xyz.addr = alloca %struct.cmsCIEXYZ*, align 8
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store %struct.cmsCIEXYZ* %WhitePoint, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %xyz, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %0 = bitcast double* %x to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %y to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %z to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %cmp = icmp eq %struct.cmsCIEXYZ* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.cmsCIEXYZ* @cmsD50_XYZ() #6
  store %struct.cmsCIEXYZ* %call, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %4, i32 0, i32 0
  %5 = load double, double* %L, align 8, !tbaa !5
  %add = fadd double %5, 1.600000e+01
  %div = fdiv double %add, 1.160000e+02
  store double %div, double* %y, align 8, !tbaa !10
  %6 = load double, double* %y, align 8, !tbaa !10
  %7 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %7, i32 0, i32 1
  %8 = load double, double* %a, align 8, !tbaa !8
  %mul = fmul double 2.000000e-03, %8
  %add1 = fadd double %6, %mul
  store double %add1, double* %x, align 8, !tbaa !10
  %9 = load double, double* %y, align 8, !tbaa !10
  %10 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %10, i32 0, i32 2
  %11 = load double, double* %b, align 8, !tbaa !9
  %mul2 = fmul double 5.000000e-03, %11
  %sub = fsub double %9, %mul2
  store double %sub, double* %z, align 8, !tbaa !10
  %12 = load double, double* %x, align 8, !tbaa !10
  %call3 = call double @f_1(double %12) #6
  %13 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %13, i32 0, i32 0
  %14 = load double, double* %X, align 8, !tbaa !5
  %mul4 = fmul double %call3, %14
  %15 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  %X5 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %15, i32 0, i32 0
  store double %mul4, double* %X5, align 8, !tbaa !5
  %16 = load double, double* %y, align 8, !tbaa !10
  %call6 = call double @f_1(double %16) #6
  %17 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %17, i32 0, i32 1
  %18 = load double, double* %Y, align 8, !tbaa !8
  %mul7 = fmul double %call6, %18
  %19 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  %Y8 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %19, i32 0, i32 1
  store double %mul7, double* %Y8, align 8, !tbaa !8
  %20 = load double, double* %z, align 8, !tbaa !10
  %call9 = call double @f_1(double %20) #6
  %21 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %WhitePoint.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %21, i32 0, i32 2
  %22 = load double, double* %Z, align 8, !tbaa !9
  %mul10 = fmul double %call9, %22
  %23 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %xyz.addr, align 8, !tbaa !1
  %Z11 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %23, i32 0, i32 2
  store double %mul10, double* %Z11, align 8, !tbaa !9
  %24 = bitcast double* %z to i8*
  call void @llvm.lifetime.end(i64 8, i8* %24) #1
  %25 = bitcast double* %y to i8*
  call void @llvm.lifetime.end(i64 8, i8* %25) #1
  %26 = bitcast double* %x to i8*
  call void @llvm.lifetime.end(i64 8, i8* %26) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @f_1(double %t) #0 {
entry:
  %retval = alloca double, align 8
  %t.addr = alloca double, align 8
  %Limit = alloca double, align 8
  %cleanup.dest.slot = alloca i32
  store double %t, double* %t.addr, align 8, !tbaa !10
  %0 = bitcast double* %Limit to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x3FCA7B9611A7B961, double* %Limit, align 8, !tbaa !10
  %1 = load double, double* %t.addr, align 8, !tbaa !10
  %cmp = fcmp ole double %1, 0x3FCA7B9611A7B961
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load double, double* %t.addr, align 8, !tbaa !10
  %sub = fsub double %2, 0x3FC1A7B9611A7B96
  %mul = fmul double 0x3FC07004DED20922, %sub
  store double %mul, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load double, double* %t.addr, align 8, !tbaa !10
  %4 = load double, double* %t.addr, align 8, !tbaa !10
  %mul1 = fmul double %3, %4
  %5 = load double, double* %t.addr, align 8, !tbaa !10
  %mul2 = fmul double %mul1, %5
  store double %mul2, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %6 = bitcast double* %Limit to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define void @cmsLabEncoded2FloatV2(%struct.cmsCIELab* %Lab, i16* %wLab) #0 {
entry:
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  %wLab.addr = alloca i16*, align 8
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  store i16* %wLab, i16** %wLab.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !11
  %call = call double @L2float2(i16 zeroext %1) #6
  %2 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %2, i32 0, i32 0
  store double %call, double* %L, align 8, !tbaa !5
  %3 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx1, align 2, !tbaa !11
  %call2 = call double @ab2float2(i16 zeroext %4) #6
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 1
  store double %call2, double* %a, align 8, !tbaa !8
  %6 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx3, align 2, !tbaa !11
  %call4 = call double @ab2float2(i16 zeroext %7) #6
  %8 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %8, i32 0, i32 2
  store double %call4, double* %b, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @L2float2(i16 zeroext %v) #0 {
entry:
  %v.addr = alloca i16, align 2
  store i16 %v, i16* %v.addr, align 2, !tbaa !11
  %0 = load i16, i16* %v.addr, align 2, !tbaa !11
  %conv = uitofp i16 %0 to double
  %div = fdiv double %conv, 6.528000e+02
  ret double %div
}

; Function Attrs: nounwind uwtable
define internal double @ab2float2(i16 zeroext %v) #0 {
entry:
  %v.addr = alloca i16, align 2
  store i16 %v, i16* %v.addr, align 2, !tbaa !11
  %0 = load i16, i16* %v.addr, align 2, !tbaa !11
  %conv = uitofp i16 %0 to double
  %div = fdiv double %conv, 2.560000e+02
  %sub = fsub double %div, 1.280000e+02
  ret double %sub
}

; Function Attrs: nounwind uwtable
define void @cmsLabEncoded2Float(%struct.cmsCIELab* %Lab, i16* %wLab) #0 {
entry:
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  %wLab.addr = alloca i16*, align 8
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  store i16* %wLab, i16** %wLab.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !11
  %call = call double @L2float4(i16 zeroext %1) #6
  %2 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %2, i32 0, i32 0
  store double %call, double* %L, align 8, !tbaa !5
  %3 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx1, align 2, !tbaa !11
  %call2 = call double @ab2float4(i16 zeroext %4) #6
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 1
  store double %call2, double* %a, align 8, !tbaa !8
  %6 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx3, align 2, !tbaa !11
  %call4 = call double @ab2float4(i16 zeroext %7) #6
  %8 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %8, i32 0, i32 2
  store double %call4, double* %b, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @L2float4(i16 zeroext %v) #0 {
entry:
  %v.addr = alloca i16, align 2
  store i16 %v, i16* %v.addr, align 2, !tbaa !11
  %0 = load i16, i16* %v.addr, align 2, !tbaa !11
  %conv = uitofp i16 %0 to double
  %div = fdiv double %conv, 6.553500e+02
  ret double %div
}

; Function Attrs: nounwind uwtable
define internal double @ab2float4(i16 zeroext %v) #0 {
entry:
  %v.addr = alloca i16, align 2
  store i16 %v, i16* %v.addr, align 2, !tbaa !11
  %0 = load i16, i16* %v.addr, align 2, !tbaa !11
  %conv = uitofp i16 %0 to double
  %div = fdiv double %conv, 2.570000e+02
  %sub = fsub double %div, 1.280000e+02
  ret double %sub
}

; Function Attrs: nounwind uwtable
define void @cmsFloat2LabEncodedV2(i16* %wLab, %struct.cmsCIELab* %fLab) #0 {
entry:
  %wLab.addr = alloca i16*, align 8
  %fLab.addr = alloca %struct.cmsCIELab*, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  store i16* %wLab, i16** %wLab.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %fLab, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.cmsCIELab*, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %1, i32 0, i32 0
  %2 = load double, double* %L, align 8, !tbaa !5
  %call = call double @Clamp_L_doubleV2(double %2) #6
  %L1 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %call, double* %L1, align 8, !tbaa !5
  %3 = load %struct.cmsCIELab*, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %3, i32 0, i32 1
  %4 = load double, double* %a, align 8, !tbaa !8
  %call2 = call double @Clamp_ab_doubleV2(double %4) #6
  %a3 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %call2, double* %a3, align 8, !tbaa !8
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8, !tbaa !9
  %call4 = call double @Clamp_ab_doubleV2(double %6) #6
  %b5 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %call4, double* %b5, align 8, !tbaa !9
  %L6 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %7 = load double, double* %L6, align 8, !tbaa !5
  %call7 = call zeroext i16 @L2Fix2(double %7) #6
  %8 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %call7, i16* %arrayidx, align 2, !tbaa !11
  %a8 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  %9 = load double, double* %a8, align 8, !tbaa !8
  %call9 = call zeroext i16 @ab2Fix2(double %9) #6
  %10 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %call9, i16* %arrayidx10, align 2, !tbaa !11
  %b11 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  %11 = load double, double* %b11, align 8, !tbaa !9
  %call12 = call zeroext i16 @ab2Fix2(double %11) #6
  %12 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %call12, i16* %arrayidx13, align 2, !tbaa !11
  %13 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @Clamp_L_doubleV2(double %L) #0 {
entry:
  %L.addr = alloca double, align 8
  %L_max = alloca double, align 8
  store double %L, double* %L.addr, align 8, !tbaa !10
  %0 = bitcast double* %L_max to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4059190000000000, double* %L_max, align 8, !tbaa !10
  %1 = load double, double* %L.addr, align 8, !tbaa !10
  %cmp = fcmp olt double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %L.addr, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load double, double* %L.addr, align 8, !tbaa !10
  %cmp1 = fcmp ogt double %2, 0x4059190000000000
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double 0x4059190000000000, double* %L.addr, align 8, !tbaa !10
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load double, double* %L.addr, align 8, !tbaa !10
  %4 = bitcast double* %L_max to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  ret double %3
}

; Function Attrs: nounwind uwtable
define internal double @Clamp_ab_doubleV2(double %ab) #0 {
entry:
  %ab.addr = alloca double, align 8
  store double %ab, double* %ab.addr, align 8, !tbaa !10
  %0 = load double, double* %ab.addr, align 8, !tbaa !10
  %cmp = fcmp olt double %0, -1.280000e+02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double -1.280000e+02, double* %ab.addr, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %ab.addr, align 8, !tbaa !10
  %cmp1 = fcmp ogt double %1, 0x405FFFC000000000
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double 0x405FFFC000000000, double* %ab.addr, align 8, !tbaa !10
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load double, double* %ab.addr, align 8, !tbaa !10
  ret double %2
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @L2Fix2(double %L) #0 {
entry:
  %L.addr = alloca double, align 8
  store double %L, double* %L.addr, align 8, !tbaa !10
  %0 = load double, double* %L.addr, align 8, !tbaa !10
  %mul = fmul double %0, 6.528000e+02
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #6
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @ab2Fix2(double %ab) #0 {
entry:
  %ab.addr = alloca double, align 8
  store double %ab, double* %ab.addr, align 8, !tbaa !10
  %0 = load double, double* %ab.addr, align 8, !tbaa !10
  %add = fadd double %0, 1.280000e+02
  %mul = fmul double %add, 2.560000e+02
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #6
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define void @cmsFloat2LabEncoded(i16* %wLab, %struct.cmsCIELab* %fLab) #0 {
entry:
  %wLab.addr = alloca i16*, align 8
  %fLab.addr = alloca %struct.cmsCIELab*, align 8
  %Lab = alloca %struct.cmsCIELab, align 8
  store i16* %wLab, i16** %wLab.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %fLab, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.cmsCIELab*, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %1, i32 0, i32 0
  %2 = load double, double* %L, align 8, !tbaa !5
  %call = call double @Clamp_L_doubleV4(double %2) #6
  %L1 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  store double %call, double* %L1, align 8, !tbaa !5
  %3 = load %struct.cmsCIELab*, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %3, i32 0, i32 1
  %4 = load double, double* %a, align 8, !tbaa !8
  %call2 = call double @Clamp_ab_doubleV4(double %4) #6
  %a3 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  store double %call2, double* %a3, align 8, !tbaa !8
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %fLab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8, !tbaa !9
  %call4 = call double @Clamp_ab_doubleV4(double %6) #6
  %b5 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  store double %call4, double* %b5, align 8, !tbaa !9
  %L6 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 0
  %7 = load double, double* %L6, align 8, !tbaa !5
  %call7 = call zeroext i16 @L2Fix4(double %7) #6
  %8 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 0
  store i16 %call7, i16* %arrayidx, align 2, !tbaa !11
  %a8 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 1
  %9 = load double, double* %a8, align 8, !tbaa !8
  %call9 = call zeroext i16 @ab2Fix4(double %9) #6
  %10 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds i16, i16* %10, i64 1
  store i16 %call9, i16* %arrayidx10, align 2, !tbaa !11
  %b11 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %Lab, i32 0, i32 2
  %11 = load double, double* %b11, align 8, !tbaa !9
  %call12 = call zeroext i16 @ab2Fix4(double %11) #6
  %12 = load i16*, i16** %wLab.addr, align 8, !tbaa !1
  %arrayidx13 = getelementptr inbounds i16, i16* %12, i64 2
  store i16 %call12, i16* %arrayidx13, align 2, !tbaa !11
  %13 = bitcast %struct.cmsCIELab* %Lab to i8*
  call void @llvm.lifetime.end(i64 24, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @Clamp_L_doubleV4(double %L) #0 {
entry:
  %L.addr = alloca double, align 8
  store double %L, double* %L.addr, align 8, !tbaa !10
  %0 = load double, double* %L.addr, align 8, !tbaa !10
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %L.addr, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %L.addr, align 8, !tbaa !10
  %cmp1 = fcmp ogt double %1, 1.000000e+02
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double 1.000000e+02, double* %L.addr, align 8, !tbaa !10
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load double, double* %L.addr, align 8, !tbaa !10
  ret double %2
}

; Function Attrs: nounwind uwtable
define internal double @Clamp_ab_doubleV4(double %ab) #0 {
entry:
  %ab.addr = alloca double, align 8
  store double %ab, double* %ab.addr, align 8, !tbaa !10
  %0 = load double, double* %ab.addr, align 8, !tbaa !10
  %cmp = fcmp olt double %0, -1.280000e+02
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store double -1.280000e+02, double* %ab.addr, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load double, double* %ab.addr, align 8, !tbaa !10
  %cmp1 = fcmp ogt double %1, 1.270000e+02
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store double 1.270000e+02, double* %ab.addr, align 8, !tbaa !10
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %2 = load double, double* %ab.addr, align 8, !tbaa !10
  ret double %2
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @L2Fix4(double %L) #0 {
entry:
  %L.addr = alloca double, align 8
  store double %L, double* %L.addr, align 8, !tbaa !10
  %0 = load double, double* %L.addr, align 8, !tbaa !10
  %mul = fmul double %0, 6.553500e+02
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #6
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @ab2Fix4(double %ab) #0 {
entry:
  %ab.addr = alloca double, align 8
  store double %ab, double* %ab.addr, align 8, !tbaa !10
  %0 = load double, double* %ab.addr, align 8, !tbaa !10
  %add = fadd double %0, 1.280000e+02
  %mul = fmul double %add, 2.570000e+02
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #6
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define void @cmsLab2LCh(%struct.cmsCIELCh* %LCh, %struct.cmsCIELab* %Lab) #0 {
entry:
  %LCh.addr = alloca %struct.cmsCIELCh*, align 8
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  store %struct.cmsCIELCh* %LCh, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %0, i32 0, i32 0
  %1 = load double, double* %L, align 8, !tbaa !5
  %2 = load %struct.cmsCIELCh*, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %L1 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %2, i32 0, i32 0
  store double %1, double* %L1, align 8, !tbaa !5
  %3 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %3, i32 0, i32 1
  %4 = load double, double* %a, align 8, !tbaa !8
  %call = call double @Sqr(double %4) #6
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 2
  %6 = load double, double* %b, align 8, !tbaa !9
  %call2 = call double @Sqr(double %6) #6
  %add = fadd double %call, %call2
  %call3 = call double @pow(double %add, double 5.000000e-01) #7
  %7 = load %struct.cmsCIELCh*, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %7, i32 0, i32 1
  store double %call3, double* %C, align 8, !tbaa !8
  %8 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b4 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %8, i32 0, i32 2
  %9 = load double, double* %b4, align 8, !tbaa !9
  %10 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a5 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %10, i32 0, i32 1
  %11 = load double, double* %a5, align 8, !tbaa !8
  %call6 = call double @atan2deg(double %9, double %11) #6
  %12 = load %struct.cmsCIELCh*, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %12, i32 0, i32 2
  store double %call6, double* %h, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define internal double @Sqr(double %v) #0 {
entry:
  %v.addr = alloca double, align 8
  store double %v, double* %v.addr, align 8, !tbaa !10
  %0 = load double, double* %v.addr, align 8, !tbaa !10
  %1 = load double, double* %v.addr, align 8, !tbaa !10
  %mul = fmul double %0, %1
  ret double %mul
}

; Function Attrs: nounwind uwtable
define internal double @atan2deg(double %a, double %b) #0 {
entry:
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  %h = alloca double, align 8
  store double %a, double* %a.addr, align 8, !tbaa !10
  store double %b, double* %b.addr, align 8, !tbaa !10
  %0 = bitcast double* %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double, double* %a.addr, align 8, !tbaa !10
  %cmp = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load double, double* %b.addr, align 8, !tbaa !10
  %cmp1 = fcmp oeq double %2, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store double 0.000000e+00, double* %h, align 8, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load double, double* %a.addr, align 8, !tbaa !10
  %4 = load double, double* %b.addr, align 8, !tbaa !10
  %call = call double @atan2(double %3, double %4) #7
  store double %call, double* %h, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load double, double* %h, align 8, !tbaa !10
  %mul = fmul double %5, 0x404CA5DC1A63C1F8
  store double %mul, double* %h, align 8, !tbaa !10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load double, double* %h, align 8, !tbaa !10
  %cmp2 = fcmp ogt double %6, 3.600000e+02
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load double, double* %h, align 8, !tbaa !10
  %sub = fsub double %7, 3.600000e+02
  store double %sub, double* %h, align 8, !tbaa !10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.5, %while.end
  %8 = load double, double* %h, align 8, !tbaa !10
  %cmp4 = fcmp olt double %8, 0.000000e+00
  br i1 %cmp4, label %while.body.5, label %while.end.6

while.body.5:                                     ; preds = %while.cond.3
  %9 = load double, double* %h, align 8, !tbaa !10
  %add = fadd double %9, 3.600000e+02
  store double %add, double* %h, align 8, !tbaa !10
  br label %while.cond.3

while.end.6:                                      ; preds = %while.cond.3
  %10 = load double, double* %h, align 8, !tbaa !10
  %11 = bitcast double* %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  ret double %10
}

; Function Attrs: nounwind uwtable
define void @cmsLCh2Lab(%struct.cmsCIELab* %Lab, %struct.cmsCIELCh* %LCh) #0 {
entry:
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  %LCh.addr = alloca %struct.cmsCIELCh*, align 8
  %h = alloca double, align 8
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  store %struct.cmsCIELCh* %LCh, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %0 = bitcast double* %h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsCIELCh*, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %h1 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %1, i32 0, i32 2
  %2 = load double, double* %h1, align 8, !tbaa !9
  %mul = fmul double %2, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  store double %div, double* %h, align 8, !tbaa !10
  %3 = load %struct.cmsCIELCh*, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %3, i32 0, i32 0
  %4 = load double, double* %L, align 8, !tbaa !5
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L2 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 0
  store double %4, double* %L2, align 8, !tbaa !5
  %6 = load %struct.cmsCIELCh*, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %6, i32 0, i32 1
  %7 = load double, double* %C, align 8, !tbaa !8
  %8 = load double, double* %h, align 8, !tbaa !10
  %call = call double @cos(double %8) #7
  %mul3 = fmul double %7, %call
  %9 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %9, i32 0, i32 1
  store double %mul3, double* %a, align 8, !tbaa !8
  %10 = load %struct.cmsCIELCh*, %struct.cmsCIELCh** %LCh.addr, align 8, !tbaa !1
  %C4 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %10, i32 0, i32 1
  %11 = load double, double* %C4, align 8, !tbaa !8
  %12 = load double, double* %h, align 8, !tbaa !10
  %call5 = call double @sin(double %12) #7
  %mul6 = fmul double %11, %call5
  %13 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %13, i32 0, i32 2
  store double %mul6, double* %b, align 8, !tbaa !9
  %14 = bitcast double* %h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %14) #1
  ret void
}

; Function Attrs: nounwind
declare double @cos(double) #3

; Function Attrs: nounwind
declare double @sin(double) #3

; Function Attrs: nounwind uwtable
define void @cmsFloat2XYZEncoded(i16* %XYZ, %struct.cmsCIEXYZ* %fXYZ) #0 {
entry:
  %XYZ.addr = alloca i16*, align 8
  %fXYZ.addr = alloca %struct.cmsCIEXYZ*, align 8
  %xyz = alloca %struct.cmsCIEXYZ, align 8
  store i16* %XYZ, i16** %XYZ.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %fXYZ, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIEXYZ* %xyz to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %1, i32 0, i32 0
  %2 = load double, double* %X, align 8, !tbaa !5
  %X1 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 0
  store double %2, double* %X1, align 8, !tbaa !5
  %3 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %3, i32 0, i32 1
  %4 = load double, double* %Y, align 8, !tbaa !8
  %Y2 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  store double %4, double* %Y2, align 8, !tbaa !8
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %5, i32 0, i32 2
  %6 = load double, double* %Z, align 8, !tbaa !9
  %Z3 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 2
  store double %6, double* %Z3, align 8, !tbaa !9
  %Y4 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  %7 = load double, double* %Y4, align 8, !tbaa !8
  %cmp = fcmp ole double %7, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %X5 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 0
  store double 0.000000e+00, double* %X5, align 8, !tbaa !5
  %Y6 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  store double 0.000000e+00, double* %Y6, align 8, !tbaa !8
  %Z7 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 2
  store double 0.000000e+00, double* %Z7, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %X8 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 0
  %8 = load double, double* %X8, align 8, !tbaa !5
  %cmp9 = fcmp ogt double %8, 0x3FFFFFE000000000
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %X11 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 0
  store double 0x3FFFFFE000000000, double* %X11, align 8, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end
  %X13 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 0
  %9 = load double, double* %X13, align 8, !tbaa !5
  %cmp14 = fcmp olt double %9, 0.000000e+00
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end.12
  %X16 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 0
  store double 0.000000e+00, double* %X16, align 8, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.end.12
  %Y18 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  %10 = load double, double* %Y18, align 8, !tbaa !8
  %cmp19 = fcmp ogt double %10, 0x3FFFFFE000000000
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.17
  %Y21 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  store double 0x3FFFFFE000000000, double* %Y21, align 8, !tbaa !8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.17
  %Y23 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  %11 = load double, double* %Y23, align 8, !tbaa !8
  %cmp24 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.end.22
  %Y26 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  store double 0.000000e+00, double* %Y26, align 8, !tbaa !8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.end.22
  %Z28 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 2
  %12 = load double, double* %Z28, align 8, !tbaa !9
  %cmp29 = fcmp ogt double %12, 0x3FFFFFE000000000
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.27
  %Z31 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 2
  store double 0x3FFFFFE000000000, double* %Z31, align 8, !tbaa !9
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.27
  %Z33 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 2
  %13 = load double, double* %Z33, align 8, !tbaa !9
  %cmp34 = fcmp olt double %13, 0.000000e+00
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.32
  %Z36 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 2
  store double 0.000000e+00, double* %Z36, align 8, !tbaa !9
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.32
  %X38 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 0
  %14 = load double, double* %X38, align 8, !tbaa !5
  %call = call zeroext i16 @XYZ2Fix(double %14) #6
  %15 = load i16*, i16** %XYZ.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 0
  store i16 %call, i16* %arrayidx, align 2, !tbaa !11
  %Y39 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 1
  %16 = load double, double* %Y39, align 8, !tbaa !8
  %call40 = call zeroext i16 @XYZ2Fix(double %16) #6
  %17 = load i16*, i16** %XYZ.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds i16, i16* %17, i64 1
  store i16 %call40, i16* %arrayidx41, align 2, !tbaa !11
  %Z42 = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %xyz, i32 0, i32 2
  %18 = load double, double* %Z42, align 8, !tbaa !9
  %call43 = call zeroext i16 @XYZ2Fix(double %18) #6
  %19 = load i16*, i16** %XYZ.addr, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds i16, i16* %19, i64 2
  store i16 %call43, i16* %arrayidx44, align 2, !tbaa !11
  %20 = bitcast %struct.cmsCIEXYZ* %xyz to i8*
  call void @llvm.lifetime.end(i64 24, i8* %20) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i16 @XYZ2Fix(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !10
  %0 = load double, double* %d.addr, align 8, !tbaa !10
  %mul = fmul double %0, 3.276800e+04
  %call = call zeroext i16 @_cmsQuickSaturateWord(double %mul) #6
  ret i16 %call
}

; Function Attrs: nounwind uwtable
define void @cmsXYZEncoded2Float(%struct.cmsCIEXYZ* %fXYZ, i16* %XYZ) #0 {
entry:
  %fXYZ.addr = alloca %struct.cmsCIEXYZ*, align 8
  %XYZ.addr = alloca i16*, align 8
  store %struct.cmsCIEXYZ* %fXYZ, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  store i16* %XYZ, i16** %XYZ.addr, align 8, !tbaa !1
  %0 = load i16*, i16** %XYZ.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 0
  %1 = load i16, i16* %arrayidx, align 2, !tbaa !11
  %call = call double @XYZ2float(i16 zeroext %1) #6
  %2 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %2, i32 0, i32 0
  store double %call, double* %X, align 8, !tbaa !5
  %3 = load i16*, i16** %XYZ.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 1
  %4 = load i16, i16* %arrayidx1, align 2, !tbaa !11
  %call2 = call double @XYZ2float(i16 zeroext %4) #6
  %5 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %5, i32 0, i32 1
  store double %call2, double* %Y, align 8, !tbaa !8
  %6 = load i16*, i16** %XYZ.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds i16, i16* %6, i64 2
  %7 = load i16, i16* %arrayidx3, align 2, !tbaa !11
  %call4 = call double @XYZ2float(i16 zeroext %7) #6
  %8 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %fXYZ.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %8, i32 0, i32 2
  store double %call4, double* %Z, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @XYZ2float(i16 zeroext %v) #0 {
entry:
  %v.addr = alloca i16, align 2
  %fix32 = alloca i32, align 4
  store i16 %v, i16* %v.addr, align 2, !tbaa !11
  %0 = bitcast i32* %fix32 to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i16, i16* %v.addr, align 2, !tbaa !11
  %conv = zext i16 %1 to i32
  %shl = shl i32 %conv, 1
  store i32 %shl, i32* %fix32, align 4, !tbaa !13
  %2 = load i32, i32* %fix32, align 4, !tbaa !13
  %call = call double @_cms15Fixed16toDouble(i32 %2) #6
  %3 = bitcast i32* %fix32 to i8*
  call void @llvm.lifetime.end(i64 4, i8* %3) #1
  ret double %call
}

; Function Attrs: nounwind uwtable
define double @cmsDeltaE(%struct.cmsCIELab* %Lab1, %struct.cmsCIELab* %Lab2) #0 {
entry:
  %Lab1.addr = alloca %struct.cmsCIELab*, align 8
  %Lab2.addr = alloca %struct.cmsCIELab*, align 8
  %dL = alloca double, align 8
  %da = alloca double, align 8
  %db = alloca double, align 8
  store %struct.cmsCIELab* %Lab1, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab2, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %0 = bitcast double* %dL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %da to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %db to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %3, i32 0, i32 0
  %4 = load double, double* %L, align 8, !tbaa !5
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %L1 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 0
  %6 = load double, double* %L1, align 8, !tbaa !5
  %sub = fsub double %4, %6
  %call = call double @fabs(double %sub) #8
  store double %call, double* %dL, align 8, !tbaa !10
  %7 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %7, i32 0, i32 1
  %8 = load double, double* %a, align 8, !tbaa !8
  %9 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %a2 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %9, i32 0, i32 1
  %10 = load double, double* %a2, align 8, !tbaa !8
  %sub3 = fsub double %8, %10
  %call4 = call double @fabs(double %sub3) #8
  store double %call4, double* %da, align 8, !tbaa !10
  %11 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %11, i32 0, i32 2
  %12 = load double, double* %b, align 8, !tbaa !9
  %13 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %b5 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %13, i32 0, i32 2
  %14 = load double, double* %b5, align 8, !tbaa !9
  %sub6 = fsub double %12, %14
  %call7 = call double @fabs(double %sub6) #8
  store double %call7, double* %db, align 8, !tbaa !10
  %15 = load double, double* %dL, align 8, !tbaa !10
  %call8 = call double @Sqr(double %15) #6
  %16 = load double, double* %da, align 8, !tbaa !10
  %call9 = call double @Sqr(double %16) #6
  %add = fadd double %call8, %call9
  %17 = load double, double* %db, align 8, !tbaa !10
  %call10 = call double @Sqr(double %17) #6
  %add11 = fadd double %add, %call10
  %call12 = call double @pow(double %add11, double 5.000000e-01) #7
  %18 = bitcast double* %db to i8*
  call void @llvm.lifetime.end(i64 8, i8* %18) #1
  %19 = bitcast double* %da to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = bitcast double* %dL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %20) #1
  ret double %call12
}

; Function Attrs: nounwind readnone
declare double @fabs(double) #4

; Function Attrs: nounwind uwtable
define double @cmsCIE94DeltaE(%struct.cmsCIELab* %Lab1, %struct.cmsCIELab* %Lab2) #0 {
entry:
  %Lab1.addr = alloca %struct.cmsCIELab*, align 8
  %Lab2.addr = alloca %struct.cmsCIELab*, align 8
  %LCh1 = alloca %struct.cmsCIELCh, align 8
  %LCh2 = alloca %struct.cmsCIELCh, align 8
  %dE = alloca double, align 8
  %dL = alloca double, align 8
  %dC = alloca double, align 8
  %dh = alloca double, align 8
  %dhsq = alloca double, align 8
  %c12 = alloca double, align 8
  %sc = alloca double, align 8
  %sh = alloca double, align 8
  store %struct.cmsCIELab* %Lab1, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab2, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIELCh* %LCh1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %0) #1
  %1 = bitcast %struct.cmsCIELCh* %LCh2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %1) #1
  %2 = bitcast double* %dE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %dL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %dC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %dh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %dhsq to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %c12 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %sc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast double* %sh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %10, i32 0, i32 0
  %11 = load double, double* %L, align 8, !tbaa !5
  %12 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %L1 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %12, i32 0, i32 0
  %13 = load double, double* %L1, align 8, !tbaa !5
  %sub = fsub double %11, %13
  %call = call double @fabs(double %sub) #8
  store double %call, double* %dL, align 8, !tbaa !10
  %14 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LCh1, %struct.cmsCIELab* %14) #6
  %15 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LCh2, %struct.cmsCIELab* %15) #6
  %C = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %16 = load double, double* %C, align 8, !tbaa !8
  %C2 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh2, i32 0, i32 1
  %17 = load double, double* %C2, align 8, !tbaa !8
  %sub3 = fsub double %16, %17
  %call4 = call double @fabs(double %sub3) #8
  store double %call4, double* %dC, align 8, !tbaa !10
  %18 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %19 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %call5 = call double @cmsDeltaE(%struct.cmsCIELab* %18, %struct.cmsCIELab* %19) #6
  store double %call5, double* %dE, align 8, !tbaa !10
  %20 = load double, double* %dE, align 8, !tbaa !10
  %call6 = call double @Sqr(double %20) #6
  %21 = load double, double* %dL, align 8, !tbaa !10
  %call7 = call double @Sqr(double %21) #6
  %sub8 = fsub double %call6, %call7
  %22 = load double, double* %dC, align 8, !tbaa !10
  %call9 = call double @Sqr(double %22) #6
  %sub10 = fsub double %sub8, %call9
  store double %sub10, double* %dhsq, align 8, !tbaa !10
  %23 = load double, double* %dhsq, align 8, !tbaa !10
  %cmp = fcmp olt double %23, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %dh, align 8, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = load double, double* %dhsq, align 8, !tbaa !10
  %call11 = call double @pow(double %24, double 5.000000e-01) #7
  store double %call11, double* %dh, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %C12 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %25 = load double, double* %C12, align 8, !tbaa !8
  %C13 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh2, i32 0, i32 1
  %26 = load double, double* %C13, align 8, !tbaa !8
  %mul = fmul double %25, %26
  %call14 = call double @sqrt(double %mul) #7
  store double %call14, double* %c12, align 8, !tbaa !10
  %27 = load double, double* %c12, align 8, !tbaa !10
  %mul15 = fmul double 4.800000e-02, %27
  %add = fadd double 1.000000e+00, %mul15
  store double %add, double* %sc, align 8, !tbaa !10
  %28 = load double, double* %c12, align 8, !tbaa !10
  %mul16 = fmul double 1.400000e-02, %28
  %add17 = fadd double 1.000000e+00, %mul16
  store double %add17, double* %sh, align 8, !tbaa !10
  %29 = load double, double* %dL, align 8, !tbaa !10
  %call18 = call double @Sqr(double %29) #6
  %30 = load double, double* %dC, align 8, !tbaa !10
  %call19 = call double @Sqr(double %30) #6
  %31 = load double, double* %sc, align 8, !tbaa !10
  %call20 = call double @Sqr(double %31) #6
  %div = fdiv double %call19, %call20
  %add21 = fadd double %call18, %div
  %32 = load double, double* %dh, align 8, !tbaa !10
  %call22 = call double @Sqr(double %32) #6
  %33 = load double, double* %sh, align 8, !tbaa !10
  %call23 = call double @Sqr(double %33) #6
  %div24 = fdiv double %call22, %call23
  %add25 = fadd double %add21, %div24
  %call26 = call double @sqrt(double %add25) #7
  %34 = bitcast double* %sh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %34) #1
  %35 = bitcast double* %sc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %35) #1
  %36 = bitcast double* %c12 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast double* %dhsq to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast double* %dh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast double* %dC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast double* %dL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast double* %dE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %41) #1
  %42 = bitcast %struct.cmsCIELCh* %LCh2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %42) #1
  %43 = bitcast %struct.cmsCIELCh* %LCh1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %43) #1
  ret double %call26
}

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind uwtable
define double @cmsBFDdeltaE(%struct.cmsCIELab* %Lab1, %struct.cmsCIELab* %Lab2) #0 {
entry:
  %Lab1.addr = alloca %struct.cmsCIELab*, align 8
  %Lab2.addr = alloca %struct.cmsCIELab*, align 8
  %lbfd1 = alloca double, align 8
  %lbfd2 = alloca double, align 8
  %AveC = alloca double, align 8
  %Aveh = alloca double, align 8
  %dE = alloca double, align 8
  %deltaL = alloca double, align 8
  %deltaC = alloca double, align 8
  %deltah = alloca double, align 8
  %dc = alloca double, align 8
  %t = alloca double, align 8
  %g = alloca double, align 8
  %dh = alloca double, align 8
  %rh = alloca double, align 8
  %rc = alloca double, align 8
  %rt = alloca double, align 8
  %bfd = alloca double, align 8
  %LCh1 = alloca %struct.cmsCIELCh, align 8
  %LCh2 = alloca %struct.cmsCIELCh, align 8
  store %struct.cmsCIELab* %Lab1, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab2, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %0 = bitcast double* %lbfd1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %lbfd2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %AveC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %Aveh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %dE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %deltaL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %deltaC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %deltah to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %dc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast double* %g to i8*
  call void @llvm.lifetime.start(i64 8, i8* %10) #1
  %11 = bitcast double* %dh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %11) #1
  %12 = bitcast double* %rh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = bitcast double* %rc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %13) #1
  %14 = bitcast double* %rt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %14) #1
  %15 = bitcast double* %bfd to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = bitcast %struct.cmsCIELCh* %LCh1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %16) #1
  %17 = bitcast %struct.cmsCIELCh* %LCh2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %17) #1
  %18 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %call = call double @ComputeLBFD(%struct.cmsCIELab* %18) #6
  store double %call, double* %lbfd1, align 8, !tbaa !10
  %19 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %call1 = call double @ComputeLBFD(%struct.cmsCIELab* %19) #6
  store double %call1, double* %lbfd2, align 8, !tbaa !10
  %20 = load double, double* %lbfd2, align 8, !tbaa !10
  %21 = load double, double* %lbfd1, align 8, !tbaa !10
  %sub = fsub double %20, %21
  store double %sub, double* %deltaL, align 8, !tbaa !10
  %22 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LCh1, %struct.cmsCIELab* %22) #6
  %23 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LCh2, %struct.cmsCIELab* %23) #6
  %C = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh2, i32 0, i32 1
  %24 = load double, double* %C, align 8, !tbaa !8
  %C2 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %25 = load double, double* %C2, align 8, !tbaa !8
  %sub3 = fsub double %24, %25
  store double %sub3, double* %deltaC, align 8, !tbaa !10
  %C4 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %26 = load double, double* %C4, align 8, !tbaa !8
  %C5 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh2, i32 0, i32 1
  %27 = load double, double* %C5, align 8, !tbaa !8
  %add = fadd double %26, %27
  %div = fdiv double %add, 2.000000e+00
  store double %div, double* %AveC, align 8, !tbaa !10
  %h = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 2
  %28 = load double, double* %h, align 8, !tbaa !9
  %h6 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh2, i32 0, i32 2
  %29 = load double, double* %h6, align 8, !tbaa !9
  %add7 = fadd double %28, %29
  %div8 = fdiv double %add7, 2.000000e+00
  store double %div8, double* %Aveh, align 8, !tbaa !10
  %30 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %31 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %call9 = call double @cmsDeltaE(%struct.cmsCIELab* %30, %struct.cmsCIELab* %31) #6
  store double %call9, double* %dE, align 8, !tbaa !10
  %32 = load double, double* %dE, align 8, !tbaa !10
  %call10 = call double @Sqr(double %32) #6
  %33 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %33, i32 0, i32 0
  %34 = load double, double* %L, align 8, !tbaa !5
  %35 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L11 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %35, i32 0, i32 0
  %36 = load double, double* %L11, align 8, !tbaa !5
  %sub12 = fsub double %34, %36
  %call13 = call double @Sqr(double %sub12) #6
  %37 = load double, double* %deltaC, align 8, !tbaa !10
  %call14 = call double @Sqr(double %37) #6
  %add15 = fadd double %call13, %call14
  %cmp = fcmp ogt double %call10, %add15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %38 = load double, double* %dE, align 8, !tbaa !10
  %call16 = call double @Sqr(double %38) #6
  %39 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %L17 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %39, i32 0, i32 0
  %40 = load double, double* %L17, align 8, !tbaa !5
  %41 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L18 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %41, i32 0, i32 0
  %42 = load double, double* %L18, align 8, !tbaa !5
  %sub19 = fsub double %40, %42
  %call20 = call double @Sqr(double %sub19) #6
  %sub21 = fsub double %call16, %call20
  %43 = load double, double* %deltaC, align 8, !tbaa !10
  %call22 = call double @Sqr(double %43) #6
  %sub23 = fsub double %sub21, %call22
  %call24 = call double @sqrt(double %sub23) #7
  store double %call24, double* %deltah, align 8, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  store double 0.000000e+00, double* %deltah, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %44 = load double, double* %AveC, align 8, !tbaa !10
  %mul = fmul double 3.500000e-02, %44
  %45 = load double, double* %AveC, align 8, !tbaa !10
  %mul25 = fmul double 3.650000e-03, %45
  %add26 = fadd double 1.000000e+00, %mul25
  %div27 = fdiv double %mul, %add26
  %add28 = fadd double %div27, 5.210000e-01
  store double %add28, double* %dc, align 8, !tbaa !10
  %46 = load double, double* %AveC, align 8, !tbaa !10
  %call29 = call double @Sqr(double %46) #6
  %call30 = call double @Sqr(double %call29) #6
  %47 = load double, double* %AveC, align 8, !tbaa !10
  %call31 = call double @Sqr(double %47) #6
  %call32 = call double @Sqr(double %call31) #6
  %add33 = fadd double %call32, 1.400000e+04
  %div34 = fdiv double %call30, %add33
  %call35 = call double @sqrt(double %div34) #7
  store double %call35, double* %g, align 8, !tbaa !10
  %48 = load double, double* %Aveh, align 8, !tbaa !10
  %sub36 = fsub double %48, 2.540000e+02
  %div37 = fdiv double %sub36, 0x404CA5DC1A63C1F8
  %call38 = call double @cos(double %div37) #7
  %mul39 = fmul double 5.500000e-02, %call38
  %49 = load double, double* %Aveh, align 8, !tbaa !10
  %mul40 = fmul double 2.000000e+00, %49
  %sub41 = fsub double %mul40, 1.360000e+02
  %div42 = fdiv double %sub41, 0x404CA5DC1A63C1F8
  %call43 = call double @cos(double %div42) #7
  %mul44 = fmul double 4.000000e-02, %call43
  %sub45 = fsub double %mul39, %mul44
  %50 = load double, double* %Aveh, align 8, !tbaa !10
  %mul46 = fmul double 3.000000e+00, %50
  %sub47 = fsub double %mul46, 3.100000e+01
  %div48 = fdiv double %sub47, 0x404CA5DC1A63C1F8
  %call49 = call double @cos(double %div48) #7
  %mul50 = fmul double 7.000000e-02, %call49
  %add51 = fadd double %sub45, %mul50
  %51 = load double, double* %Aveh, align 8, !tbaa !10
  %mul52 = fmul double 4.000000e+00, %51
  %add53 = fadd double %mul52, 1.140000e+02
  %div54 = fdiv double %add53, 0x404CA5DC1A63C1F8
  %call55 = call double @cos(double %div54) #7
  %mul56 = fmul double 4.900000e-02, %call55
  %add57 = fadd double %add51, %mul56
  %52 = load double, double* %Aveh, align 8, !tbaa !10
  %mul58 = fmul double 5.000000e+00, %52
  %sub59 = fsub double %mul58, 1.030000e+02
  %div60 = fdiv double %sub59, 0x404CA5DC1A63C1F8
  %call61 = call double @cos(double %div60) #7
  %mul62 = fmul double 1.500000e-02, %call61
  %sub63 = fsub double %add57, %mul62
  %add64 = fadd double 6.270000e-01, %sub63
  store double %add64, double* %t, align 8, !tbaa !10
  %53 = load double, double* %dc, align 8, !tbaa !10
  %54 = load double, double* %g, align 8, !tbaa !10
  %55 = load double, double* %t, align 8, !tbaa !10
  %mul65 = fmul double %54, %55
  %add66 = fadd double %mul65, 1.000000e+00
  %56 = load double, double* %g, align 8, !tbaa !10
  %sub67 = fsub double %add66, %56
  %mul68 = fmul double %53, %sub67
  store double %mul68, double* %dh, align 8, !tbaa !10
  %57 = load double, double* %Aveh, align 8, !tbaa !10
  %sub69 = fsub double %57, 3.080000e+02
  %div70 = fdiv double %sub69, 0x404CA5DC1A63C1F8
  %call71 = call double @cos(double %div70) #7
  %mul72 = fmul double -2.600000e-01, %call71
  %58 = load double, double* %Aveh, align 8, !tbaa !10
  %mul73 = fmul double 2.000000e+00, %58
  %sub74 = fsub double %mul73, 1.600000e+02
  %div75 = fdiv double %sub74, 0x404CA5DC1A63C1F8
  %call76 = call double @cos(double %div75) #7
  %mul77 = fmul double 3.790000e-01, %call76
  %sub78 = fsub double %mul72, %mul77
  %59 = load double, double* %Aveh, align 8, !tbaa !10
  %mul79 = fmul double 3.000000e+00, %59
  %add80 = fadd double %mul79, 2.540000e+02
  %div81 = fdiv double %add80, 0x404CA5DC1A63C1F8
  %call82 = call double @cos(double %div81) #7
  %mul83 = fmul double 6.360000e-01, %call82
  %sub84 = fsub double %sub78, %mul83
  %60 = load double, double* %Aveh, align 8, !tbaa !10
  %mul85 = fmul double 4.000000e+00, %60
  %add86 = fadd double %mul85, 1.400000e+02
  %div87 = fdiv double %add86, 0x404CA5DC1A63C1F8
  %call88 = call double @cos(double %div87) #7
  %mul89 = fmul double 2.260000e-01, %call88
  %add90 = fadd double %sub84, %mul89
  %61 = load double, double* %Aveh, align 8, !tbaa !10
  %mul91 = fmul double 5.000000e+00, %61
  %add92 = fadd double %mul91, 2.800000e+02
  %div93 = fdiv double %add92, 0x404CA5DC1A63C1F8
  %call94 = call double @cos(double %div93) #7
  %mul95 = fmul double 1.940000e-01, %call94
  %sub96 = fsub double %add90, %mul95
  store double %sub96, double* %rh, align 8, !tbaa !10
  %62 = load double, double* %AveC, align 8, !tbaa !10
  %63 = load double, double* %AveC, align 8, !tbaa !10
  %mul97 = fmul double %62, %63
  %64 = load double, double* %AveC, align 8, !tbaa !10
  %mul98 = fmul double %mul97, %64
  %65 = load double, double* %AveC, align 8, !tbaa !10
  %mul99 = fmul double %mul98, %65
  %66 = load double, double* %AveC, align 8, !tbaa !10
  %mul100 = fmul double %mul99, %66
  %67 = load double, double* %AveC, align 8, !tbaa !10
  %mul101 = fmul double %mul100, %67
  %68 = load double, double* %AveC, align 8, !tbaa !10
  %69 = load double, double* %AveC, align 8, !tbaa !10
  %mul102 = fmul double %68, %69
  %70 = load double, double* %AveC, align 8, !tbaa !10
  %mul103 = fmul double %mul102, %70
  %71 = load double, double* %AveC, align 8, !tbaa !10
  %mul104 = fmul double %mul103, %71
  %72 = load double, double* %AveC, align 8, !tbaa !10
  %mul105 = fmul double %mul104, %72
  %73 = load double, double* %AveC, align 8, !tbaa !10
  %mul106 = fmul double %mul105, %73
  %add107 = fadd double %mul106, 7.000000e+07
  %div108 = fdiv double %mul101, %add107
  %call109 = call double @sqrt(double %div108) #7
  store double %call109, double* %rc, align 8, !tbaa !10
  %74 = load double, double* %rh, align 8, !tbaa !10
  %75 = load double, double* %rc, align 8, !tbaa !10
  %mul110 = fmul double %74, %75
  store double %mul110, double* %rt, align 8, !tbaa !10
  %76 = load double, double* %deltaL, align 8, !tbaa !10
  %call111 = call double @Sqr(double %76) #6
  %77 = load double, double* %deltaC, align 8, !tbaa !10
  %78 = load double, double* %dc, align 8, !tbaa !10
  %div112 = fdiv double %77, %78
  %call113 = call double @Sqr(double %div112) #6
  %add114 = fadd double %call111, %call113
  %79 = load double, double* %deltah, align 8, !tbaa !10
  %80 = load double, double* %dh, align 8, !tbaa !10
  %div115 = fdiv double %79, %80
  %call116 = call double @Sqr(double %div115) #6
  %add117 = fadd double %add114, %call116
  %81 = load double, double* %rt, align 8, !tbaa !10
  %82 = load double, double* %deltaC, align 8, !tbaa !10
  %83 = load double, double* %dc, align 8, !tbaa !10
  %div118 = fdiv double %82, %83
  %mul119 = fmul double %81, %div118
  %84 = load double, double* %deltah, align 8, !tbaa !10
  %85 = load double, double* %dh, align 8, !tbaa !10
  %div120 = fdiv double %84, %85
  %mul121 = fmul double %mul119, %div120
  %add122 = fadd double %add117, %mul121
  %call123 = call double @sqrt(double %add122) #7
  store double %call123, double* %bfd, align 8, !tbaa !10
  %86 = load double, double* %bfd, align 8, !tbaa !10
  %87 = bitcast %struct.cmsCIELCh* %LCh2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %87) #1
  %88 = bitcast %struct.cmsCIELCh* %LCh1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %88) #1
  %89 = bitcast double* %bfd to i8*
  call void @llvm.lifetime.end(i64 8, i8* %89) #1
  %90 = bitcast double* %rt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %90) #1
  %91 = bitcast double* %rc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %91) #1
  %92 = bitcast double* %rh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast double* %dh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast double* %g to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast double* %dc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %deltah to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast double* %deltaC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  %99 = bitcast double* %deltaL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %99) #1
  %100 = bitcast double* %dE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %100) #1
  %101 = bitcast double* %Aveh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %101) #1
  %102 = bitcast double* %AveC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %102) #1
  %103 = bitcast double* %lbfd2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %103) #1
  %104 = bitcast double* %lbfd1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %104) #1
  ret double %86
}

; Function Attrs: nounwind uwtable
define internal double @ComputeLBFD(%struct.cmsCIELab* %Lab) #0 {
entry:
  %Lab.addr = alloca %struct.cmsCIELab*, align 8
  %yt = alloca double, align 8
  store %struct.cmsCIELab* %Lab, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %0 = bitcast double* %yt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %1, i32 0, i32 0
  %2 = load double, double* %L, align 8, !tbaa !5
  %cmp = fcmp ogt double %2, 7.996969e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L1 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %3, i32 0, i32 0
  %4 = load double, double* %L1, align 8, !tbaa !5
  %add = fadd double %4, 1.600000e+01
  %div = fdiv double %add, 1.160000e+02
  %call = call double @Sqr(double %div) #6
  %5 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L2 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %5, i32 0, i32 0
  %6 = load double, double* %L2, align 8, !tbaa !5
  %add3 = fadd double %6, 1.600000e+01
  %div4 = fdiv double %add3, 1.160000e+02
  %mul = fmul double %call, %div4
  %mul5 = fmul double %mul, 1.000000e+02
  store double %mul5, double* %yt, align 8, !tbaa !10
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab.addr, align 8, !tbaa !1
  %L6 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %7, i32 0, i32 0
  %8 = load double, double* %L6, align 8, !tbaa !5
  %div7 = fdiv double %8, 9.033000e+02
  %mul8 = fmul double 1.000000e+02, %div7
  store double %mul8, double* %yt, align 8, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load double, double* %yt, align 8, !tbaa !10
  %add9 = fadd double %9, 1.500000e+00
  %call10 = call double @log(double %add9) #7
  %mul11 = fmul double 0x3FDBCB7B1526E50E, %call10
  %mul12 = fmul double 5.460000e+01, %mul11
  %sub = fsub double %mul12, 9.600000e+00
  %10 = bitcast double* %yt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %10) #1
  ret double %sub
}

; Function Attrs: nounwind uwtable
define double @cmsCMCdeltaE(%struct.cmsCIELab* %Lab1, %struct.cmsCIELab* %Lab2, double %l, double %c) #0 {
entry:
  %retval = alloca double, align 8
  %Lab1.addr = alloca %struct.cmsCIELab*, align 8
  %Lab2.addr = alloca %struct.cmsCIELab*, align 8
  %l.addr = alloca double, align 8
  %c.addr = alloca double, align 8
  %dE = alloca double, align 8
  %dL = alloca double, align 8
  %dC = alloca double, align 8
  %dh = alloca double, align 8
  %sl = alloca double, align 8
  %sc = alloca double, align 8
  %sh = alloca double, align 8
  %t = alloca double, align 8
  %f = alloca double, align 8
  %cmc = alloca double, align 8
  %LCh1 = alloca %struct.cmsCIELCh, align 8
  %LCh2 = alloca %struct.cmsCIELCh, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.cmsCIELab* %Lab1, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab2, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  store double %l, double* %l.addr, align 8, !tbaa !10
  store double %c, double* %c.addr, align 8, !tbaa !10
  %0 = bitcast double* %dE to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %dL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %dC to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %dh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %sl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %sc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %sh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %f to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  %9 = bitcast double* %cmc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = bitcast %struct.cmsCIELCh* %LCh1 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %10) #1
  %11 = bitcast %struct.cmsCIELCh* %LCh2 to i8*
  call void @llvm.lifetime.start(i64 24, i8* %11) #1
  %12 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %12, i32 0, i32 0
  %13 = load double, double* %L, align 8, !tbaa !5
  %cmp = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %14 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %L1 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %14, i32 0, i32 0
  %15 = load double, double* %L1, align 8, !tbaa !5
  %cmp2 = fcmp oeq double %15, 0.000000e+00
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store double 0.000000e+00, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true, %entry
  %16 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LCh1, %struct.cmsCIELab* %16) #6
  %17 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  call void @cmsLab2LCh(%struct.cmsCIELCh* %LCh2, %struct.cmsCIELab* %17) #6
  %18 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %L3 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %18, i32 0, i32 0
  %19 = load double, double* %L3, align 8, !tbaa !5
  %20 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L4 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %20, i32 0, i32 0
  %21 = load double, double* %L4, align 8, !tbaa !5
  %sub = fsub double %19, %21
  store double %sub, double* %dL, align 8, !tbaa !10
  %C = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh2, i32 0, i32 1
  %22 = load double, double* %C, align 8, !tbaa !8
  %C5 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %23 = load double, double* %C5, align 8, !tbaa !8
  %sub6 = fsub double %22, %23
  store double %sub6, double* %dC, align 8, !tbaa !10
  %24 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %25 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %call = call double @cmsDeltaE(%struct.cmsCIELab* %24, %struct.cmsCIELab* %25) #6
  store double %call, double* %dE, align 8, !tbaa !10
  %26 = load double, double* %dE, align 8, !tbaa !10
  %call7 = call double @Sqr(double %26) #6
  %27 = load double, double* %dL, align 8, !tbaa !10
  %call8 = call double @Sqr(double %27) #6
  %28 = load double, double* %dC, align 8, !tbaa !10
  %call9 = call double @Sqr(double %28) #6
  %add = fadd double %call8, %call9
  %cmp10 = fcmp ogt double %call7, %add
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %29 = load double, double* %dE, align 8, !tbaa !10
  %call12 = call double @Sqr(double %29) #6
  %30 = load double, double* %dL, align 8, !tbaa !10
  %call13 = call double @Sqr(double %30) #6
  %sub14 = fsub double %call12, %call13
  %31 = load double, double* %dC, align 8, !tbaa !10
  %call15 = call double @Sqr(double %31) #6
  %sub16 = fsub double %sub14, %call15
  %call17 = call double @sqrt(double %sub16) #7
  store double %call17, double* %dh, align 8, !tbaa !10
  br label %if.end.18

if.else:                                          ; preds = %if.end
  store double 0.000000e+00, double* %dh, align 8, !tbaa !10
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.11
  %h = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 2
  %32 = load double, double* %h, align 8, !tbaa !9
  %cmp19 = fcmp ogt double %32, 1.640000e+02
  br i1 %cmp19, label %land.lhs.true.20, label %if.else.29

land.lhs.true.20:                                 ; preds = %if.end.18
  %h21 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 2
  %33 = load double, double* %h21, align 8, !tbaa !9
  %cmp22 = fcmp olt double %33, 3.450000e+02
  br i1 %cmp22, label %if.then.23, label %if.else.29

if.then.23:                                       ; preds = %land.lhs.true.20
  %h24 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 2
  %34 = load double, double* %h24, align 8, !tbaa !9
  %add25 = fadd double %34, 1.680000e+02
  %div = fdiv double %add25, 0x404CA5DC1A63C1F8
  %call26 = call double @cos(double %div) #7
  %mul = fmul double 2.000000e-01, %call26
  %call27 = call double @fabs(double %mul) #8
  %add28 = fadd double 5.600000e-01, %call27
  store double %add28, double* %t, align 8, !tbaa !10
  br label %if.end.37

if.else.29:                                       ; preds = %land.lhs.true.20, %if.end.18
  %h30 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 2
  %35 = load double, double* %h30, align 8, !tbaa !9
  %add31 = fadd double %35, 3.500000e+01
  %div32 = fdiv double %add31, 0x404CA5DC1A63C1F8
  %call33 = call double @cos(double %div32) #7
  %mul34 = fmul double 4.000000e-01, %call33
  %call35 = call double @fabs(double %mul34) #8
  %add36 = fadd double 3.600000e-01, %call35
  store double %add36, double* %t, align 8, !tbaa !10
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.29, %if.then.23
  %C38 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %36 = load double, double* %C38, align 8, !tbaa !8
  %mul39 = fmul double 6.380000e-02, %36
  %C40 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %37 = load double, double* %C40, align 8, !tbaa !8
  %mul41 = fmul double 1.310000e-02, %37
  %add42 = fadd double 1.000000e+00, %mul41
  %div43 = fdiv double %mul39, %add42
  %add44 = fadd double %div43, 6.380000e-01
  store double %add44, double* %sc, align 8, !tbaa !10
  %38 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L45 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %38, i32 0, i32 0
  %39 = load double, double* %L45, align 8, !tbaa !5
  %mul46 = fmul double 4.097500e-02, %39
  %40 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L47 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %40, i32 0, i32 0
  %41 = load double, double* %L47, align 8, !tbaa !5
  %mul48 = fmul double 1.765000e-02, %41
  %add49 = fadd double 1.000000e+00, %mul48
  %div50 = fdiv double %mul46, %add49
  store double %div50, double* %sl, align 8, !tbaa !10
  %42 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L51 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %42, i32 0, i32 0
  %43 = load double, double* %L51, align 8, !tbaa !5
  %cmp52 = fcmp olt double %43, 1.600000e+01
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.37
  store double 5.110000e-01, double* %sl, align 8, !tbaa !10
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.end.37
  %C55 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %44 = load double, double* %C55, align 8, !tbaa !8
  %C56 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %45 = load double, double* %C56, align 8, !tbaa !8
  %mul57 = fmul double %44, %45
  %C58 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %46 = load double, double* %C58, align 8, !tbaa !8
  %mul59 = fmul double %mul57, %46
  %C60 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %47 = load double, double* %C60, align 8, !tbaa !8
  %mul61 = fmul double %mul59, %47
  %C62 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %48 = load double, double* %C62, align 8, !tbaa !8
  %C63 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %49 = load double, double* %C63, align 8, !tbaa !8
  %mul64 = fmul double %48, %49
  %C65 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %50 = load double, double* %C65, align 8, !tbaa !8
  %mul66 = fmul double %mul64, %50
  %C67 = getelementptr inbounds %struct.cmsCIELCh, %struct.cmsCIELCh* %LCh1, i32 0, i32 1
  %51 = load double, double* %C67, align 8, !tbaa !8
  %mul68 = fmul double %mul66, %51
  %add69 = fadd double %mul68, 1.900000e+03
  %div70 = fdiv double %mul61, %add69
  %call71 = call double @sqrt(double %div70) #7
  store double %call71, double* %f, align 8, !tbaa !10
  %52 = load double, double* %sc, align 8, !tbaa !10
  %53 = load double, double* %t, align 8, !tbaa !10
  %54 = load double, double* %f, align 8, !tbaa !10
  %mul72 = fmul double %53, %54
  %add73 = fadd double %mul72, 1.000000e+00
  %55 = load double, double* %f, align 8, !tbaa !10
  %sub74 = fsub double %add73, %55
  %mul75 = fmul double %52, %sub74
  store double %mul75, double* %sh, align 8, !tbaa !10
  %56 = load double, double* %dL, align 8, !tbaa !10
  %57 = load double, double* %l.addr, align 8, !tbaa !10
  %58 = load double, double* %sl, align 8, !tbaa !10
  %mul76 = fmul double %57, %58
  %div77 = fdiv double %56, %mul76
  %call78 = call double @Sqr(double %div77) #6
  %59 = load double, double* %dC, align 8, !tbaa !10
  %60 = load double, double* %c.addr, align 8, !tbaa !10
  %61 = load double, double* %sc, align 8, !tbaa !10
  %mul79 = fmul double %60, %61
  %div80 = fdiv double %59, %mul79
  %call81 = call double @Sqr(double %div80) #6
  %add82 = fadd double %call78, %call81
  %62 = load double, double* %dh, align 8, !tbaa !10
  %63 = load double, double* %sh, align 8, !tbaa !10
  %div83 = fdiv double %62, %63
  %call84 = call double @Sqr(double %div83) #6
  %add85 = fadd double %add82, %call84
  %call86 = call double @sqrt(double %add85) #7
  store double %call86, double* %cmc, align 8, !tbaa !10
  %64 = load double, double* %cmc, align 8, !tbaa !10
  store double %64, double* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %if.then
  %65 = bitcast %struct.cmsCIELCh* %LCh2 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %65) #1
  %66 = bitcast %struct.cmsCIELCh* %LCh1 to i8*
  call void @llvm.lifetime.end(i64 24, i8* %66) #1
  %67 = bitcast double* %cmc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %67) #1
  %68 = bitcast double* %f to i8*
  call void @llvm.lifetime.end(i64 8, i8* %68) #1
  %69 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %69) #1
  %70 = bitcast double* %sh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast double* %sc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast double* %sl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %dh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast double* %dC to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast double* %dL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast double* %dE to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = load double, double* %retval
  ret double %77
}

; Function Attrs: nounwind uwtable
define double @cmsCIE2000DeltaE(%struct.cmsCIELab* %Lab1, %struct.cmsCIELab* %Lab2, double %Kl, double %Kc, double %Kh) #0 {
entry:
  %Lab1.addr = alloca %struct.cmsCIELab*, align 8
  %Lab2.addr = alloca %struct.cmsCIELab*, align 8
  %Kl.addr = alloca double, align 8
  %Kc.addr = alloca double, align 8
  %Kh.addr = alloca double, align 8
  %L1 = alloca double, align 8
  %a1 = alloca double, align 8
  %b1 = alloca double, align 8
  %C = alloca double, align 8
  %Ls = alloca double, align 8
  %as = alloca double, align 8
  %bs = alloca double, align 8
  %Cs = alloca double, align 8
  %G = alloca double, align 8
  %a_p = alloca double, align 8
  %b_p = alloca double, align 8
  %C_p = alloca double, align 8
  %h_p = alloca double, align 8
  %a_ps = alloca double, align 8
  %b_ps = alloca double, align 8
  %C_ps = alloca double, align 8
  %h_ps = alloca double, align 8
  %meanC_p = alloca double, align 8
  %hps_plus_hp = alloca double, align 8
  %hps_minus_hp = alloca double, align 8
  %meanh_p = alloca double, align 8
  %delta_h = alloca double, align 8
  %delta_L = alloca double, align 8
  %delta_C = alloca double, align 8
  %delta_H = alloca double, align 8
  %T = alloca double, align 8
  %Sl = alloca double, align 8
  %Sc = alloca double, align 8
  %Sh = alloca double, align 8
  %delta_ro = alloca double, align 8
  %Rc = alloca double, align 8
  %Rt = alloca double, align 8
  %deltaE00 = alloca double, align 8
  store %struct.cmsCIELab* %Lab1, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  store %struct.cmsCIELab* %Lab2, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  store double %Kl, double* %Kl.addr, align 8, !tbaa !10
  store double %Kc, double* %Kc.addr, align 8, !tbaa !10
  store double %Kh, double* %Kh.addr, align 8, !tbaa !10
  %0 = bitcast double* %L1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %L = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %1, i32 0, i32 0
  %2 = load double, double* %L, align 8, !tbaa !5
  store double %2, double* %L1, align 8, !tbaa !10
  %3 = bitcast double* %a1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %a = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %4, i32 0, i32 1
  %5 = load double, double* %a, align 8, !tbaa !8
  store double %5, double* %a1, align 8, !tbaa !10
  %6 = bitcast double* %b1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab1.addr, align 8, !tbaa !1
  %b = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %7, i32 0, i32 2
  %8 = load double, double* %b, align 8, !tbaa !9
  store double %8, double* %b1, align 8, !tbaa !10
  %9 = bitcast double* %C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %9) #1
  %10 = load double, double* %a1, align 8, !tbaa !10
  %call = call double @Sqr(double %10) #6
  %11 = load double, double* %b1, align 8, !tbaa !10
  %call1 = call double @Sqr(double %11) #6
  %add = fadd double %call, %call1
  %call2 = call double @sqrt(double %add) #7
  store double %call2, double* %C, align 8, !tbaa !10
  %12 = bitcast double* %Ls to i8*
  call void @llvm.lifetime.start(i64 8, i8* %12) #1
  %13 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %L3 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %13, i32 0, i32 0
  %14 = load double, double* %L3, align 8, !tbaa !5
  store double %14, double* %Ls, align 8, !tbaa !10
  %15 = bitcast double* %as to i8*
  call void @llvm.lifetime.start(i64 8, i8* %15) #1
  %16 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %a4 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %16, i32 0, i32 1
  %17 = load double, double* %a4, align 8, !tbaa !8
  store double %17, double* %as, align 8, !tbaa !10
  %18 = bitcast double* %bs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %18) #1
  %19 = load %struct.cmsCIELab*, %struct.cmsCIELab** %Lab2.addr, align 8, !tbaa !1
  %b5 = getelementptr inbounds %struct.cmsCIELab, %struct.cmsCIELab* %19, i32 0, i32 2
  %20 = load double, double* %b5, align 8, !tbaa !9
  store double %20, double* %bs, align 8, !tbaa !10
  %21 = bitcast double* %Cs to i8*
  call void @llvm.lifetime.start(i64 8, i8* %21) #1
  %22 = load double, double* %as, align 8, !tbaa !10
  %call6 = call double @Sqr(double %22) #6
  %23 = load double, double* %bs, align 8, !tbaa !10
  %call7 = call double @Sqr(double %23) #6
  %add8 = fadd double %call6, %call7
  %call9 = call double @sqrt(double %add8) #7
  store double %call9, double* %Cs, align 8, !tbaa !10
  %24 = bitcast double* %G to i8*
  call void @llvm.lifetime.start(i64 8, i8* %24) #1
  %25 = load double, double* %C, align 8, !tbaa !10
  %26 = load double, double* %Cs, align 8, !tbaa !10
  %add10 = fadd double %25, %26
  %div = fdiv double %add10, 2.000000e+00
  %call11 = call double @pow(double %div, double 7.000000e+00) #7
  %27 = load double, double* %C, align 8, !tbaa !10
  %28 = load double, double* %Cs, align 8, !tbaa !10
  %add12 = fadd double %27, %28
  %div13 = fdiv double %add12, 2.000000e+00
  %call14 = call double @pow(double %div13, double 7.000000e+00) #7
  %call15 = call double @pow(double 2.500000e+01, double 7.000000e+00) #7
  %add16 = fadd double %call14, %call15
  %div17 = fdiv double %call11, %add16
  %call18 = call double @sqrt(double %div17) #7
  %sub = fsub double 1.000000e+00, %call18
  %mul = fmul double 5.000000e-01, %sub
  store double %mul, double* %G, align 8, !tbaa !10
  %29 = bitcast double* %a_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %29) #1
  %30 = load double, double* %G, align 8, !tbaa !10
  %add19 = fadd double 1.000000e+00, %30
  %31 = load double, double* %a1, align 8, !tbaa !10
  %mul20 = fmul double %add19, %31
  store double %mul20, double* %a_p, align 8, !tbaa !10
  %32 = bitcast double* %b_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %32) #1
  %33 = load double, double* %b1, align 8, !tbaa !10
  store double %33, double* %b_p, align 8, !tbaa !10
  %34 = bitcast double* %C_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %34) #1
  %35 = load double, double* %a_p, align 8, !tbaa !10
  %call21 = call double @Sqr(double %35) #6
  %36 = load double, double* %b_p, align 8, !tbaa !10
  %call22 = call double @Sqr(double %36) #6
  %add23 = fadd double %call21, %call22
  %call24 = call double @sqrt(double %add23) #7
  store double %call24, double* %C_p, align 8, !tbaa !10
  %37 = bitcast double* %h_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %37) #1
  %38 = load double, double* %b_p, align 8, !tbaa !10
  %39 = load double, double* %a_p, align 8, !tbaa !10
  %call25 = call double @atan2deg(double %38, double %39) #6
  store double %call25, double* %h_p, align 8, !tbaa !10
  %40 = bitcast double* %a_ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %40) #1
  %41 = load double, double* %G, align 8, !tbaa !10
  %add26 = fadd double 1.000000e+00, %41
  %42 = load double, double* %as, align 8, !tbaa !10
  %mul27 = fmul double %add26, %42
  store double %mul27, double* %a_ps, align 8, !tbaa !10
  %43 = bitcast double* %b_ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %43) #1
  %44 = load double, double* %bs, align 8, !tbaa !10
  store double %44, double* %b_ps, align 8, !tbaa !10
  %45 = bitcast double* %C_ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %45) #1
  %46 = load double, double* %a_ps, align 8, !tbaa !10
  %call28 = call double @Sqr(double %46) #6
  %47 = load double, double* %b_ps, align 8, !tbaa !10
  %call29 = call double @Sqr(double %47) #6
  %add30 = fadd double %call28, %call29
  %call31 = call double @sqrt(double %add30) #7
  store double %call31, double* %C_ps, align 8, !tbaa !10
  %48 = bitcast double* %h_ps to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load double, double* %b_ps, align 8, !tbaa !10
  %50 = load double, double* %a_ps, align 8, !tbaa !10
  %call32 = call double @atan2deg(double %49, double %50) #6
  store double %call32, double* %h_ps, align 8, !tbaa !10
  %51 = bitcast double* %meanC_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %51) #1
  %52 = load double, double* %C_p, align 8, !tbaa !10
  %53 = load double, double* %C_ps, align 8, !tbaa !10
  %add33 = fadd double %52, %53
  %div34 = fdiv double %add33, 2.000000e+00
  store double %div34, double* %meanC_p, align 8, !tbaa !10
  %54 = bitcast double* %hps_plus_hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %54) #1
  %55 = load double, double* %h_ps, align 8, !tbaa !10
  %56 = load double, double* %h_p, align 8, !tbaa !10
  %add35 = fadd double %55, %56
  store double %add35, double* %hps_plus_hp, align 8, !tbaa !10
  %57 = bitcast double* %hps_minus_hp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %57) #1
  %58 = load double, double* %h_ps, align 8, !tbaa !10
  %59 = load double, double* %h_p, align 8, !tbaa !10
  %sub36 = fsub double %58, %59
  store double %sub36, double* %hps_minus_hp, align 8, !tbaa !10
  %60 = bitcast double* %meanh_p to i8*
  call void @llvm.lifetime.start(i64 8, i8* %60) #1
  %61 = load double, double* %hps_minus_hp, align 8, !tbaa !10
  %call37 = call double @fabs(double %61) #8
  %cmp = fcmp ole double %call37, 0x406680000218DEF4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %62 = load double, double* %hps_plus_hp, align 8, !tbaa !10
  %div38 = fdiv double %62, 2.000000e+00
  br label %cond.end.46

cond.false:                                       ; preds = %entry
  %63 = load double, double* %hps_plus_hp, align 8, !tbaa !10
  %cmp39 = fcmp olt double %63, 3.600000e+02
  br i1 %cmp39, label %cond.true.40, label %cond.false.43

cond.true.40:                                     ; preds = %cond.false
  %64 = load double, double* %hps_plus_hp, align 8, !tbaa !10
  %add41 = fadd double %64, 3.600000e+02
  %div42 = fdiv double %add41, 2.000000e+00
  br label %cond.end

cond.false.43:                                    ; preds = %cond.false
  %65 = load double, double* %hps_plus_hp, align 8, !tbaa !10
  %sub44 = fsub double %65, 3.600000e+02
  %div45 = fdiv double %sub44, 2.000000e+00
  br label %cond.end

cond.end:                                         ; preds = %cond.false.43, %cond.true.40
  %cond = phi double [ %div42, %cond.true.40 ], [ %div45, %cond.false.43 ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end, %cond.true
  %cond47 = phi double [ %div38, %cond.true ], [ %cond, %cond.end ]
  store double %cond47, double* %meanh_p, align 8, !tbaa !10
  %66 = bitcast double* %delta_h to i8*
  call void @llvm.lifetime.start(i64 8, i8* %66) #1
  %67 = load double, double* %hps_minus_hp, align 8, !tbaa !10
  %cmp48 = fcmp ole double %67, 0xC06680000218DEF4
  br i1 %cmp48, label %cond.true.49, label %cond.false.51

cond.true.49:                                     ; preds = %cond.end.46
  %68 = load double, double* %hps_minus_hp, align 8, !tbaa !10
  %add50 = fadd double %68, 3.600000e+02
  br label %cond.end.58

cond.false.51:                                    ; preds = %cond.end.46
  %69 = load double, double* %hps_minus_hp, align 8, !tbaa !10
  %cmp52 = fcmp ogt double %69, 1.800000e+02
  br i1 %cmp52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %cond.false.51
  %70 = load double, double* %hps_minus_hp, align 8, !tbaa !10
  %sub54 = fsub double %70, 3.600000e+02
  br label %cond.end.56

cond.false.55:                                    ; preds = %cond.false.51
  %71 = load double, double* %hps_minus_hp, align 8, !tbaa !10
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi double [ %sub54, %cond.true.53 ], [ %71, %cond.false.55 ]
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.end.56, %cond.true.49
  %cond59 = phi double [ %add50, %cond.true.49 ], [ %cond57, %cond.end.56 ]
  store double %cond59, double* %delta_h, align 8, !tbaa !10
  %72 = bitcast double* %delta_L to i8*
  call void @llvm.lifetime.start(i64 8, i8* %72) #1
  %73 = load double, double* %Ls, align 8, !tbaa !10
  %74 = load double, double* %L1, align 8, !tbaa !10
  %sub60 = fsub double %73, %74
  store double %sub60, double* %delta_L, align 8, !tbaa !10
  %75 = bitcast double* %delta_C to i8*
  call void @llvm.lifetime.start(i64 8, i8* %75) #1
  %76 = load double, double* %C_ps, align 8, !tbaa !10
  %77 = load double, double* %C_p, align 8, !tbaa !10
  %sub61 = fsub double %76, %77
  store double %sub61, double* %delta_C, align 8, !tbaa !10
  %78 = bitcast double* %delta_H to i8*
  call void @llvm.lifetime.start(i64 8, i8* %78) #1
  %79 = load double, double* %C_ps, align 8, !tbaa !10
  %80 = load double, double* %C_p, align 8, !tbaa !10
  %mul62 = fmul double %79, %80
  %call63 = call double @sqrt(double %mul62) #7
  %mul64 = fmul double 2.000000e+00, %call63
  %81 = load double, double* %delta_h, align 8, !tbaa !10
  %call65 = call double @RADIANS(double %81) #6
  %div66 = fdiv double %call65, 2.000000e+00
  %call67 = call double @sin(double %div66) #7
  %mul68 = fmul double %mul64, %call67
  store double %mul68, double* %delta_H, align 8, !tbaa !10
  %82 = bitcast double* %T to i8*
  call void @llvm.lifetime.start(i64 8, i8* %82) #1
  %83 = load double, double* %meanh_p, align 8, !tbaa !10
  %sub69 = fsub double %83, 3.000000e+01
  %call70 = call double @RADIANS(double %sub69) #6
  %call71 = call double @cos(double %call70) #7
  %mul72 = fmul double 1.700000e-01, %call71
  %sub73 = fsub double 1.000000e+00, %mul72
  %84 = load double, double* %meanh_p, align 8, !tbaa !10
  %mul74 = fmul double 2.000000e+00, %84
  %call75 = call double @RADIANS(double %mul74) #6
  %call76 = call double @cos(double %call75) #7
  %mul77 = fmul double 2.400000e-01, %call76
  %add78 = fadd double %sub73, %mul77
  %85 = load double, double* %meanh_p, align 8, !tbaa !10
  %mul79 = fmul double 3.000000e+00, %85
  %add80 = fadd double %mul79, 6.000000e+00
  %call81 = call double @RADIANS(double %add80) #6
  %call82 = call double @cos(double %call81) #7
  %mul83 = fmul double 3.200000e-01, %call82
  %add84 = fadd double %add78, %mul83
  %86 = load double, double* %meanh_p, align 8, !tbaa !10
  %mul85 = fmul double 4.000000e+00, %86
  %sub86 = fsub double %mul85, 6.300000e+01
  %call87 = call double @RADIANS(double %sub86) #6
  %call88 = call double @cos(double %call87) #7
  %mul89 = fmul double 2.000000e-01, %call88
  %sub90 = fsub double %add84, %mul89
  store double %sub90, double* %T, align 8, !tbaa !10
  %87 = bitcast double* %Sl to i8*
  call void @llvm.lifetime.start(i64 8, i8* %87) #1
  %88 = load double, double* %Ls, align 8, !tbaa !10
  %89 = load double, double* %L1, align 8, !tbaa !10
  %add91 = fadd double %88, %89
  %div92 = fdiv double %add91, 2.000000e+00
  %sub93 = fsub double %div92, 5.000000e+01
  %call94 = call double @Sqr(double %sub93) #6
  %mul95 = fmul double 1.500000e-02, %call94
  %90 = load double, double* %Ls, align 8, !tbaa !10
  %91 = load double, double* %L1, align 8, !tbaa !10
  %add96 = fadd double %90, %91
  %div97 = fdiv double %add96, 2.000000e+00
  %sub98 = fsub double %div97, 5.000000e+01
  %call99 = call double @Sqr(double %sub98) #6
  %add100 = fadd double 2.000000e+01, %call99
  %call101 = call double @sqrt(double %add100) #7
  %div102 = fdiv double %mul95, %call101
  %add103 = fadd double 1.000000e+00, %div102
  store double %add103, double* %Sl, align 8, !tbaa !10
  %92 = bitcast double* %Sc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %92) #1
  %93 = load double, double* %C_p, align 8, !tbaa !10
  %94 = load double, double* %C_ps, align 8, !tbaa !10
  %add104 = fadd double %93, %94
  %mul105 = fmul double 4.500000e-02, %add104
  %div106 = fdiv double %mul105, 2.000000e+00
  %add107 = fadd double 1.000000e+00, %div106
  store double %add107, double* %Sc, align 8, !tbaa !10
  %95 = bitcast double* %Sh to i8*
  call void @llvm.lifetime.start(i64 8, i8* %95) #1
  %96 = load double, double* %C_ps, align 8, !tbaa !10
  %97 = load double, double* %C_p, align 8, !tbaa !10
  %add108 = fadd double %96, %97
  %div109 = fdiv double %add108, 2.000000e+00
  %mul110 = fmul double 1.500000e-02, %div109
  %98 = load double, double* %T, align 8, !tbaa !10
  %mul111 = fmul double %mul110, %98
  %add112 = fadd double 1.000000e+00, %mul111
  store double %add112, double* %Sh, align 8, !tbaa !10
  %99 = bitcast double* %delta_ro to i8*
  call void @llvm.lifetime.start(i64 8, i8* %99) #1
  %100 = load double, double* %meanh_p, align 8, !tbaa !10
  %sub113 = fsub double %100, 2.750000e+02
  %div114 = fdiv double %sub113, 2.500000e+01
  %call115 = call double @Sqr(double %div114) #6
  %sub116 = fsub double -0.000000e+00, %call115
  %call117 = call double @exp(double %sub116) #7
  %mul118 = fmul double 3.000000e+01, %call117
  store double %mul118, double* %delta_ro, align 8, !tbaa !10
  %101 = bitcast double* %Rc to i8*
  call void @llvm.lifetime.start(i64 8, i8* %101) #1
  %102 = load double, double* %meanC_p, align 8, !tbaa !10
  %call119 = call double @pow(double %102, double 7.000000e+00) #7
  %103 = load double, double* %meanC_p, align 8, !tbaa !10
  %call120 = call double @pow(double %103, double 7.000000e+00) #7
  %call121 = call double @pow(double 2.500000e+01, double 7.000000e+00) #7
  %add122 = fadd double %call120, %call121
  %div123 = fdiv double %call119, %add122
  %call124 = call double @sqrt(double %div123) #7
  %mul125 = fmul double 2.000000e+00, %call124
  store double %mul125, double* %Rc, align 8, !tbaa !10
  %104 = bitcast double* %Rt to i8*
  call void @llvm.lifetime.start(i64 8, i8* %104) #1
  %105 = load double, double* %delta_ro, align 8, !tbaa !10
  %call126 = call double @RADIANS(double %105) #6
  %mul127 = fmul double 2.000000e+00, %call126
  %call128 = call double @sin(double %mul127) #7
  %sub129 = fsub double -0.000000e+00, %call128
  %106 = load double, double* %Rc, align 8, !tbaa !10
  %mul130 = fmul double %sub129, %106
  store double %mul130, double* %Rt, align 8, !tbaa !10
  %107 = bitcast double* %deltaE00 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %107) #1
  %108 = load double, double* %delta_L, align 8, !tbaa !10
  %109 = load double, double* %Sl, align 8, !tbaa !10
  %110 = load double, double* %Kl.addr, align 8, !tbaa !10
  %mul131 = fmul double %109, %110
  %div132 = fdiv double %108, %mul131
  %call133 = call double @Sqr(double %div132) #6
  %111 = load double, double* %delta_C, align 8, !tbaa !10
  %112 = load double, double* %Sc, align 8, !tbaa !10
  %113 = load double, double* %Kc.addr, align 8, !tbaa !10
  %mul134 = fmul double %112, %113
  %div135 = fdiv double %111, %mul134
  %call136 = call double @Sqr(double %div135) #6
  %add137 = fadd double %call133, %call136
  %114 = load double, double* %delta_H, align 8, !tbaa !10
  %115 = load double, double* %Sh, align 8, !tbaa !10
  %116 = load double, double* %Kh.addr, align 8, !tbaa !10
  %mul138 = fmul double %115, %116
  %div139 = fdiv double %114, %mul138
  %call140 = call double @Sqr(double %div139) #6
  %add141 = fadd double %add137, %call140
  %117 = load double, double* %Rt, align 8, !tbaa !10
  %118 = load double, double* %delta_C, align 8, !tbaa !10
  %119 = load double, double* %Sc, align 8, !tbaa !10
  %120 = load double, double* %Kc.addr, align 8, !tbaa !10
  %mul142 = fmul double %119, %120
  %div143 = fdiv double %118, %mul142
  %mul144 = fmul double %117, %div143
  %121 = load double, double* %delta_H, align 8, !tbaa !10
  %122 = load double, double* %Sh, align 8, !tbaa !10
  %123 = load double, double* %Kh.addr, align 8, !tbaa !10
  %mul145 = fmul double %122, %123
  %div146 = fdiv double %121, %mul145
  %mul147 = fmul double %mul144, %div146
  %add148 = fadd double %add141, %mul147
  %call149 = call double @sqrt(double %add148) #7
  store double %call149, double* %deltaE00, align 8, !tbaa !10
  %124 = load double, double* %deltaE00, align 8, !tbaa !10
  %125 = bitcast double* %deltaE00 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %125) #1
  %126 = bitcast double* %Rt to i8*
  call void @llvm.lifetime.end(i64 8, i8* %126) #1
  %127 = bitcast double* %Rc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %127) #1
  %128 = bitcast double* %delta_ro to i8*
  call void @llvm.lifetime.end(i64 8, i8* %128) #1
  %129 = bitcast double* %Sh to i8*
  call void @llvm.lifetime.end(i64 8, i8* %129) #1
  %130 = bitcast double* %Sc to i8*
  call void @llvm.lifetime.end(i64 8, i8* %130) #1
  %131 = bitcast double* %Sl to i8*
  call void @llvm.lifetime.end(i64 8, i8* %131) #1
  %132 = bitcast double* %T to i8*
  call void @llvm.lifetime.end(i64 8, i8* %132) #1
  %133 = bitcast double* %delta_H to i8*
  call void @llvm.lifetime.end(i64 8, i8* %133) #1
  %134 = bitcast double* %delta_C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %134) #1
  %135 = bitcast double* %delta_L to i8*
  call void @llvm.lifetime.end(i64 8, i8* %135) #1
  %136 = bitcast double* %delta_h to i8*
  call void @llvm.lifetime.end(i64 8, i8* %136) #1
  %137 = bitcast double* %meanh_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %137) #1
  %138 = bitcast double* %hps_minus_hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %138) #1
  %139 = bitcast double* %hps_plus_hp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %139) #1
  %140 = bitcast double* %meanC_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %140) #1
  %141 = bitcast double* %h_ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %141) #1
  %142 = bitcast double* %C_ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %142) #1
  %143 = bitcast double* %b_ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %143) #1
  %144 = bitcast double* %a_ps to i8*
  call void @llvm.lifetime.end(i64 8, i8* %144) #1
  %145 = bitcast double* %h_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %145) #1
  %146 = bitcast double* %C_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %146) #1
  %147 = bitcast double* %b_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %147) #1
  %148 = bitcast double* %a_p to i8*
  call void @llvm.lifetime.end(i64 8, i8* %148) #1
  %149 = bitcast double* %G to i8*
  call void @llvm.lifetime.end(i64 8, i8* %149) #1
  %150 = bitcast double* %Cs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %150) #1
  %151 = bitcast double* %bs to i8*
  call void @llvm.lifetime.end(i64 8, i8* %151) #1
  %152 = bitcast double* %as to i8*
  call void @llvm.lifetime.end(i64 8, i8* %152) #1
  %153 = bitcast double* %Ls to i8*
  call void @llvm.lifetime.end(i64 8, i8* %153) #1
  %154 = bitcast double* %C to i8*
  call void @llvm.lifetime.end(i64 8, i8* %154) #1
  %155 = bitcast double* %b1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %155) #1
  %156 = bitcast double* %a1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %156) #1
  %157 = bitcast double* %L1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %157) #1
  ret double %124
}

; Function Attrs: nounwind uwtable
define internal double @RADIANS(double %deg) #0 {
entry:
  %deg.addr = alloca double, align 8
  store double %deg, double* %deg.addr, align 8, !tbaa !10
  %0 = load double, double* %deg.addr, align 8, !tbaa !10
  %mul = fmul double %0, 0x400921FB54442D18
  %div = fdiv double %mul, 1.800000e+02
  ret double %div
}

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind uwtable
define i32 @_cmsReasonableGridpointsByColorspace(i32 %Colorspace, i32 %dwFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %Colorspace.addr = alloca i32, align 4
  %dwFlags.addr = alloca i32, align 4
  %nChannels = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %Colorspace, i32* %Colorspace.addr, align 4, !tbaa !15
  store i32 %dwFlags, i32* %dwFlags.addr, align 4, !tbaa !13
  %0 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %and = and i32 %1, 16711680
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %shr = lshr i32 %2, 16
  %and1 = and i32 %shr, 255
  store i32 %and1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %Colorspace.addr, align 4, !tbaa !15
  %call = call i32 @cmsChannelsOf(i32 %3) #6
  store i32 %call, i32* %nChannels, align 4, !tbaa !13
  %4 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %and2 = and i32 %4, 1024
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* %nChannels, align 4, !tbaa !13
  %cmp = icmp sgt i32 %5, 4
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.4
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.6:                                         ; preds = %if.then.4
  %6 = load i32, i32* %nChannels, align 4, !tbaa !13
  %cmp7 = icmp eq i32 %6, 4
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  store i32 23, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.9:                                         ; preds = %if.end.6
  store i32 49, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.10:                                        ; preds = %if.end
  %7 = load i32, i32* %dwFlags.addr, align 4, !tbaa !13
  %and11 = and i32 %7, 2048
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.20

if.then.13:                                       ; preds = %if.end.10
  %8 = load i32, i32* %nChannels, align 4, !tbaa !13
  %cmp14 = icmp sgt i32 %8, 4
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  store i32 6, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.16:                                        ; preds = %if.then.13
  %9 = load i32, i32* %nChannels, align 4, !tbaa !13
  %cmp17 = icmp eq i32 %9, 1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  store i32 33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.19:                                        ; preds = %if.end.16
  store i32 17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.20:                                        ; preds = %if.end.10
  %10 = load i32, i32* %nChannels, align 4, !tbaa !13
  %cmp21 = icmp sgt i32 %10, 4
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  store i32 7, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.23:                                        ; preds = %if.end.20
  %11 = load i32, i32* %nChannels, align 4, !tbaa !13
  %cmp24 = icmp eq i32 %11, 4
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  store i32 17, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.26:                                        ; preds = %if.end.23
  store i32 33, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.26, %if.then.25, %if.then.22, %if.end.19, %if.then.18, %if.then.15, %if.end.9, %if.then.8, %if.then.5, %if.then
  %12 = bitcast i32* %nChannels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %12) #1
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @cmsChannelsOf(i32 %ColorSpace) #0 {
entry:
  %retval = alloca i32, align 4
  %ColorSpace.addr = alloca i32, align 4
  store i32 %ColorSpace, i32* %ColorSpace.addr, align 4, !tbaa !15
  %0 = load i32, i32* %ColorSpace.addr, align 4, !tbaa !15
  switch i32 %0, label %sw.default [
    i32 1296255025, label %sw.bb
    i32 826494034, label %sw.bb
    i32 1196573017, label %sw.bb
    i32 1296255026, label %sw.bb.1
    i32 843271250, label %sw.bb.1
    i32 1482250784, label %sw.bb.2
    i32 1281450528, label %sw.bb.2
    i32 1282766368, label %sw.bb.2
    i32 1497588338, label %sw.bb.2
    i32 1501067552, label %sw.bb.2
    i32 1380401696, label %sw.bb.2
    i32 1213421088, label %sw.bb.2
    i32 1212961568, label %sw.bb.2
    i32 1129142560, label %sw.bb.2
    i32 1296255027, label %sw.bb.2
    i32 860048466, label %sw.bb.2
    i32 1282766411, label %sw.bb.3
    i32 1129142603, label %sw.bb.3
    i32 1296255028, label %sw.bb.3
    i32 876825682, label %sw.bb.3
    i32 1296255029, label %sw.bb.4
    i32 893602898, label %sw.bb.4
    i32 1296255030, label %sw.bb.5
    i32 910380114, label %sw.bb.5
    i32 1296255031, label %sw.bb.6
    i32 927157330, label %sw.bb.6
    i32 1296255032, label %sw.bb.7
    i32 943934546, label %sw.bb.7
    i32 1296255033, label %sw.bb.8
    i32 960711762, label %sw.bb.8
    i32 1296255041, label %sw.bb.9
    i32 1094929490, label %sw.bb.9
    i32 1296255042, label %sw.bb.10
    i32 1111706706, label %sw.bb.10
    i32 1296255043, label %sw.bb.11
    i32 1128483922, label %sw.bb.11
    i32 1296255044, label %sw.bb.12
    i32 1145261138, label %sw.bb.12
    i32 1296255045, label %sw.bb.13
    i32 1162038354, label %sw.bb.13
    i32 1296255046, label %sw.bb.14
    i32 1178815570, label %sw.bb.14
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 2, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry, %entry, %entry, %entry
  store i32 4, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry, %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry, %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry, %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry, %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry, %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry, %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry, %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry, %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry, %entry
  store i32 13, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry, %entry
  store i32 14, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry, %entry
  store i32 15, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 3, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @_cmsEndPointsBySpace(i32 %Space, i16** %White, i16** %Black, i32* %nOutputs) #0 {
entry:
  %retval = alloca i32, align 4
  %Space.addr = alloca i32, align 4
  %White.addr = alloca i16**, align 8
  %Black.addr = alloca i16**, align 8
  %nOutputs.addr = alloca i32*, align 8
  store i32 %Space, i32* %Space.addr, align 4, !tbaa !15
  store i16** %White, i16*** %White.addr, align 8, !tbaa !1
  store i16** %Black, i16*** %Black.addr, align 8, !tbaa !1
  store i32* %nOutputs, i32** %nOutputs.addr, align 8, !tbaa !1
  %0 = load i32, i32* %Space.addr, align 4, !tbaa !15
  switch i32 %0, label %sw.default [
    i32 1196573017, label %sw.bb
    i32 1380401696, label %sw.bb.7
    i32 1281450528, label %sw.bb.17
    i32 1129142603, label %sw.bb.27
    i32 1129142560, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  %tobool = icmp ne i16** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %2 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.GrayWhite, i32 0, i32 0), i16** %2, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %3 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  %tobool1 = icmp ne i16** %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.Grayblack, i32 0, i32 0), i16** %4, align 8, !tbaa !1
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  %tobool4 = icmp ne i32* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %6 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  store i32 1, i32* %6, align 4, !tbaa !13
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  store i32 1, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %7 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  %tobool8 = icmp ne i16** %7, null
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %sw.bb.7
  %8 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.RGBwhite, i32 0, i32 0), i16** %8, align 8, !tbaa !1
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %sw.bb.7
  %9 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  %tobool11 = icmp ne i16** %9, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %10 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.RGBblack, i32 0, i32 0), i16** %10, align 8, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %11 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  %tobool14 = icmp ne i32* %11, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %12 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  store i32 3, i32* %12, align 4, !tbaa !13
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  store i32 1, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %13 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  %tobool18 = icmp ne i16** %13, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.17
  %14 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.LABwhite, i32 0, i32 0), i16** %14, align 8, !tbaa !1
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %sw.bb.17
  %15 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  %tobool21 = icmp ne i16** %15, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.20
  %16 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.LABblack, i32 0, i32 0), i16** %16, align 8, !tbaa !1
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.20
  %17 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  %tobool24 = icmp ne i32* %17, null
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.23
  %18 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  store i32 3, i32* %18, align 4, !tbaa !13
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %if.end.23
  store i32 1, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %entry
  %19 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  %tobool28 = icmp ne i16** %19, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %sw.bb.27
  %20 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.CMYKwhite, i32 0, i32 0), i16** %20, align 8, !tbaa !1
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %sw.bb.27
  %21 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  %tobool31 = icmp ne i16** %21, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %22 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.CMYKblack, i32 0, i32 0), i16** %22, align 8, !tbaa !1
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  %23 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  %tobool34 = icmp ne i32* %23, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.33
  %24 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  store i32 4, i32* %24, align 4, !tbaa !13
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.33
  store i32 1, i32* %retval
  br label %return

sw.bb.37:                                         ; preds = %entry
  %25 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  %tobool38 = icmp ne i16** %25, null
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %sw.bb.37
  %26 = load i16**, i16*** %White.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.CMYwhite, i32 0, i32 0), i16** %26, align 8, !tbaa !1
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %sw.bb.37
  %27 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  %tobool41 = icmp ne i16** %27, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.40
  %28 = load i16**, i16*** %Black.addr, align 8, !tbaa !1
  store i16* getelementptr inbounds ([4 x i16], [4 x i16]* @_cmsEndPointsBySpace.CMYblack, i32 0, i32 0), i16** %28, align 8, !tbaa !1
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.40
  %29 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  %tobool44 = icmp ne i32* %29, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.43
  %30 = load i32*, i32** %nOutputs.addr, align 8, !tbaa !1
  store i32 3, i32* %30, align 4, !tbaa !13
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.43
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.end.46, %if.end.36, %if.end.26, %if.end.16, %if.end.6
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define i32 @_cmsICCcolorSpace(i32 %OurNotation) #0 {
entry:
  %retval = alloca i32, align 4
  %OurNotation.addr = alloca i32, align 4
  store i32 %OurNotation, i32* %OurNotation.addr, align 4, !tbaa !13
  %0 = load i32, i32* %OurNotation.addr, align 4, !tbaa !13
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 2, label %sw.bb.1
    i32 4, label %sw.bb.1
    i32 5, label %sw.bb.2
    i32 6, label %sw.bb.3
    i32 7, label %sw.bb.4
    i32 8, label %sw.bb.5
    i32 9, label %sw.bb.6
    i32 30, label %sw.bb.7
    i32 10, label %sw.bb.7
    i32 11, label %sw.bb.8
    i32 12, label %sw.bb.9
    i32 13, label %sw.bb.10
    i32 14, label %sw.bb.11
    i32 15, label %sw.bb.12
    i32 16, label %sw.bb.13
    i32 17, label %sw.bb.14
    i32 18, label %sw.bb.15
    i32 19, label %sw.bb.16
    i32 20, label %sw.bb.17
    i32 21, label %sw.bb.18
    i32 22, label %sw.bb.19
    i32 23, label %sw.bb.20
    i32 24, label %sw.bb.21
    i32 25, label %sw.bb.22
    i32 26, label %sw.bb.23
    i32 27, label %sw.bb.24
    i32 28, label %sw.bb.25
    i32 29, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i32 1196573017, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry, %entry
  store i32 1380401696, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 1129142560, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 1129142603, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 1497588338, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 1282766368, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 1482250784, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry, %entry
  store i32 1281450528, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 1282766411, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 1213421088, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 1212961568, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 1501067552, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry
  store i32 1296255025, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  store i32 1296255026, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry
  store i32 1296255027, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry
  store i32 1296255028, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %entry
  store i32 1296255029, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  store i32 1296255030, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  store i32 1296255031, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  store i32 1296255032, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  store i32 1296255033, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry
  store i32 1296255041, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  store i32 1296255042, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %entry
  store i32 1296255043, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  store i32 1296255044, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  store i32 1296255045, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %entry
  store i32 1296255046, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @_cmsLCMScolorSpace(i32 %ProfileSpace) #0 {
entry:
  %retval = alloca i32, align 4
  %ProfileSpace.addr = alloca i32, align 4
  store i32 %ProfileSpace, i32* %ProfileSpace.addr, align 4, !tbaa !15
  %0 = load i32, i32* %ProfileSpace.addr, align 4, !tbaa !15
  switch i32 %0, label %sw.default [
    i32 1196573017, label %sw.bb
    i32 1380401696, label %sw.bb.1
    i32 1129142560, label %sw.bb.2
    i32 1129142603, label %sw.bb.3
    i32 1497588338, label %sw.bb.4
    i32 1282766368, label %sw.bb.5
    i32 1482250784, label %sw.bb.6
    i32 1281450528, label %sw.bb.7
    i32 1282766411, label %sw.bb.8
    i32 1213421088, label %sw.bb.9
    i32 1212961568, label %sw.bb.10
    i32 1501067552, label %sw.bb.11
    i32 826494034, label %sw.bb.12
    i32 1296255025, label %sw.bb.12
    i32 843271250, label %sw.bb.13
    i32 1296255026, label %sw.bb.13
    i32 860048466, label %sw.bb.14
    i32 1296255027, label %sw.bb.14
    i32 876825682, label %sw.bb.15
    i32 1296255028, label %sw.bb.15
    i32 893602898, label %sw.bb.16
    i32 1296255029, label %sw.bb.16
    i32 910380114, label %sw.bb.17
    i32 1296255030, label %sw.bb.17
    i32 1296255031, label %sw.bb.18
    i32 927157330, label %sw.bb.18
    i32 1296255032, label %sw.bb.19
    i32 943934546, label %sw.bb.19
    i32 1296255033, label %sw.bb.20
    i32 960711762, label %sw.bb.20
    i32 1296255041, label %sw.bb.21
    i32 1094929490, label %sw.bb.21
    i32 1296255042, label %sw.bb.22
    i32 1111706706, label %sw.bb.22
    i32 1296255043, label %sw.bb.23
    i32 1128483922, label %sw.bb.23
    i32 1296255044, label %sw.bb.24
    i32 1145261138, label %sw.bb.24
    i32 1296255045, label %sw.bb.25
    i32 1162038354, label %sw.bb.25
    i32 1296255046, label %sw.bb.26
    i32 1178815570, label %sw.bb.26
  ]

sw.bb:                                            ; preds = %entry
  store i32 3, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 4, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i32 5, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i32 6, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  store i32 7, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  store i32 8, i32* %retval
  br label %return

sw.bb.6:                                          ; preds = %entry
  store i32 9, i32* %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  store i32 10, i32* %retval
  br label %return

sw.bb.8:                                          ; preds = %entry
  store i32 11, i32* %retval
  br label %return

sw.bb.9:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  store i32 13, i32* %retval
  br label %return

sw.bb.11:                                         ; preds = %entry
  store i32 14, i32* %retval
  br label %return

sw.bb.12:                                         ; preds = %entry, %entry
  store i32 15, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry, %entry
  store i32 16, i32* %retval
  br label %return

sw.bb.14:                                         ; preds = %entry, %entry
  store i32 17, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %entry, %entry
  store i32 18, i32* %retval
  br label %return

sw.bb.16:                                         ; preds = %entry, %entry
  store i32 19, i32* %retval
  br label %return

sw.bb.17:                                         ; preds = %entry, %entry
  store i32 20, i32* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry, %entry
  store i32 21, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry, %entry
  store i32 22, i32* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry, %entry
  store i32 23, i32* %retval
  br label %return

sw.bb.21:                                         ; preds = %entry, %entry
  store i32 24, i32* %retval
  br label %return

sw.bb.22:                                         ; preds = %entry, %entry
  store i32 25, i32* %retval
  br label %return

sw.bb.23:                                         ; preds = %entry, %entry
  store i32 26, i32* %retval
  br label %return

sw.bb.24:                                         ; preds = %entry, %entry
  store i32 27, i32* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry, %entry
  store i32 28, i32* %retval
  br label %return

sw.bb.26:                                         ; preds = %entry, %entry
  store i32 29, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %retval
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickSaturateWord(double %d) #5 {
entry:
  %retval = alloca i16, align 2
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !10
  %0 = load double, double* %d.addr, align 8, !tbaa !10
  %add = fadd double %0, 5.000000e-01
  store double %add, double* %d.addr, align 8, !tbaa !10
  %1 = load double, double* %d.addr, align 8, !tbaa !10
  %cmp = fcmp ole double %1, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %d.addr, align 8, !tbaa !10
  %cmp1 = fcmp oge double %2, 6.553500e+04
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i16 -1, i16* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load double, double* %d.addr, align 8, !tbaa !10
  %call = call zeroext i16 @_cmsQuickFloorWord(double %3) #6
  store i16 %call, i16* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2, %if.then
  %4 = load i16, i16* %retval
  ret i16 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @_cmsQuickFloorWord(double %d) #5 {
entry:
  %d.addr = alloca double, align 8
  store double %d, double* %d.addr, align 8, !tbaa !10
  %0 = load double, double* %d.addr, align 8, !tbaa !10
  %sub = fsub double %0, 3.276700e+04
  %call = call i32 @_cmsQuickFloor(double %sub) #6
  %conv = trunc i32 %call to i16
  %conv1 = zext i16 %conv to i32
  %add = add i32 %conv1, 32767
  %conv2 = trunc i32 %add to i16
  ret i16 %conv2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @_cmsQuickFloor(double %val) #5 {
entry:
  %val.addr = alloca double, align 8
  %_lcms_double2fixmagic = alloca double, align 8
  %temp = alloca %union.anon, align 8
  store double %val, double* %val.addr, align 8, !tbaa !10
  %0 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  store double 0x4238000000000000, double* %_lcms_double2fixmagic, align 8, !tbaa !10
  %1 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load double, double* %val.addr, align 8, !tbaa !10
  %add = fadd double %2, 0x4238000000000000
  %val1 = bitcast %union.anon* %temp to double*
  store double %add, double* %val1, align 8, !tbaa !10
  %halves = bitcast %union.anon* %temp to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %halves, i32 0, i64 0
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !13
  %shr = ashr i32 %3, 16
  %4 = bitcast %union.anon* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %4) #1
  %5 = bitcast double* %_lcms_double2fixmagic to i8*
  call void @llvm.lifetime.end(i64 8, i8* %5) #1
  ret i32 %shr
}

; Function Attrs: nounwind
declare double @atan2(double, double) #3

declare double @_cms15Fixed16toDouble(i32) #2

; Function Attrs: nounwind
declare double @log(double) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!7 = !{!"double", !3, i64 0}
!8 = !{!6, !7, i64 8}
!9 = !{!6, !7, i64 16}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !3, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !3, i64 0}
!15 = !{!3, !3, i64 0}
