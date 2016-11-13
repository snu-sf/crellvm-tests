; ModuleID = './cmscam02.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cmsContext_struct = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator*, [15 x i8*], %struct._cmsMemPluginChunkType }
%struct._cmsSubAllocator = type { %struct._cmsContext_struct*, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsSubAllocator_chunk_st = type { i8*, i32, i32, %struct._cmsSubAllocator_chunk_st* }
%struct._cmsMemPluginChunkType = type { i8* (%struct._cmsContext_struct*, i32)*, i8* (%struct._cmsContext_struct*, i32)*, void (%struct._cmsContext_struct*, i8*)*, i8* (%struct._cmsContext_struct*, i8*, i32)*, i8* (%struct._cmsContext_struct*, i32, i32)*, i8* (%struct._cmsContext_struct*, i8*, i32)* }
%struct.cmsViewingConditions = type { %struct.cmsCIEXYZ, double, double, i32, double }
%struct.cmsCIEXYZ = type { double, double, double }
%struct.cmsCIECAM02 = type { %struct.CAM02COLOR, double, double, double, double, double, i32, double, double, double, double, double, double, %struct._cmsContext_struct* }
%struct.CAM02COLOR = type { [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, double, double, double, double, double, double, double, double, double, double, [2 x double], [2 x double], [2 x double] }
%struct.cmsJCh = type { double, double, double }

@.str = private unnamed_addr constant [20 x i8] c"(pVC != ((void*)0))\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"./lcms2/src/cmscam02.c\00", align 1
@__PRETTY_FUNCTION__.cmsCIECAM02Init = private unnamed_addr constant [68 x i8] c"cmsHANDLE cmsCIECAM02Init(cmsContext, const cmsViewingConditions *)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"(lpMod != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsCIECAM02Forward = private unnamed_addr constant [64 x i8] c"void cmsCIECAM02Forward(cmsHANDLE, const cmsCIEXYZ *, cmsJCh *)\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"(pIn != ((void*)0))\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"(pOut != ((void*)0))\00", align 1
@__PRETTY_FUNCTION__.cmsCIECAM02Reverse = private unnamed_addr constant [64 x i8] c"void cmsCIECAM02Reverse(cmsHANDLE, const cmsJCh *, cmsCIEXYZ *)\00", align 1

; Function Attrs: nounwind uwtable
define i8* @cmsCIECAM02Init(%struct._cmsContext_struct* %ContextID, %struct.cmsViewingConditions* %pVC) #0 {
entry:
  %retval = alloca i8*, align 8
  %ContextID.addr = alloca %struct._cmsContext_struct*, align 8
  %pVC.addr = alloca %struct.cmsViewingConditions*, align 8
  %lpMod = alloca %struct.cmsCIECAM02*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct.CAM02COLOR, align 8
  %tmp40 = alloca %struct.CAM02COLOR, align 8
  %tmp43 = alloca %struct.CAM02COLOR, align 8
  %tmp46 = alloca %struct.CAM02COLOR, align 8
  store %struct._cmsContext_struct* %ContextID, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  store %struct.cmsViewingConditions* %pVC, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsViewingConditions* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 363, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.cmsCIECAM02Init, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %call = call i8* @_cmsMallocZero(%struct._cmsContext_struct* %3, i32 368) #7
  %4 = bitcast i8* %call to %struct.cmsCIECAM02*
  store %struct.cmsCIECAM02* %4, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %cmp1 = icmp eq %struct.cmsCIECAM02* %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i8* null, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID.addr, align 8, !tbaa !1
  %6 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %ContextID2 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %6, i32 0, i32 13
  store %struct._cmsContext_struct* %5, %struct._cmsContext_struct** %ContextID2, align 8, !tbaa !5
  %7 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %whitePoint = getelementptr inbounds %struct.cmsViewingConditions, %struct.cmsViewingConditions* %7, i32 0, i32 0
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %whitePoint, i32 0, i32 0
  %8 = load double, double* %X, align 8, !tbaa !10
  %9 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %9, i32 0, i32 0
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 0
  store double %8, double* %arrayidx, align 8, !tbaa !13
  %10 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %whitePoint3 = getelementptr inbounds %struct.cmsViewingConditions, %struct.cmsViewingConditions* %10, i32 0, i32 0
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %whitePoint3, i32 0, i32 1
  %11 = load double, double* %Y, align 8, !tbaa !14
  %12 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite4 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %12, i32 0, i32 0
  %XYZ5 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite4, i32 0, i32 0
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %XYZ5, i32 0, i64 1
  store double %11, double* %arrayidx6, align 8, !tbaa !13
  %13 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %whitePoint7 = getelementptr inbounds %struct.cmsViewingConditions, %struct.cmsViewingConditions* %13, i32 0, i32 0
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %whitePoint7, i32 0, i32 2
  %14 = load double, double* %Z, align 8, !tbaa !15
  %15 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite8 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %15, i32 0, i32 0
  %XYZ9 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite8, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %XYZ9, i32 0, i64 2
  store double %14, double* %arrayidx10, align 8, !tbaa !13
  %16 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %La = getelementptr inbounds %struct.cmsViewingConditions, %struct.cmsViewingConditions* %16, i32 0, i32 2
  %17 = load double, double* %La, align 8, !tbaa !16
  %18 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %LA = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %18, i32 0, i32 1
  store double %17, double* %LA, align 8, !tbaa !17
  %19 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %Yb = getelementptr inbounds %struct.cmsViewingConditions, %struct.cmsViewingConditions* %19, i32 0, i32 1
  %20 = load double, double* %Yb, align 8, !tbaa !18
  %21 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Yb11 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %21, i32 0, i32 2
  store double %20, double* %Yb11, align 8, !tbaa !19
  %22 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %D_value = getelementptr inbounds %struct.cmsViewingConditions, %struct.cmsViewingConditions* %22, i32 0, i32 4
  %23 = load double, double* %D_value, align 8, !tbaa !20
  %24 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %D = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %24, i32 0, i32 12
  store double %23, double* %D, align 8, !tbaa !21
  %25 = load %struct.cmsViewingConditions*, %struct.cmsViewingConditions** %pVC.addr, align 8, !tbaa !1
  %surround = getelementptr inbounds %struct.cmsViewingConditions, %struct.cmsViewingConditions* %25, i32 0, i32 3
  %26 = load i32, i32* %surround, align 4, !tbaa !22
  %27 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %surround12 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %27, i32 0, i32 6
  store i32 %26, i32* %surround12, align 4, !tbaa !23
  %28 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %surround13 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %28, i32 0, i32 6
  %29 = load i32, i32* %surround13, align 4, !tbaa !23
  switch i32 %29, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb.14
    i32 2, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end
  %30 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %F = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %30, i32 0, i32 3
  store double 8.000000e-01, double* %F, align 8, !tbaa !24
  %31 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %31, i32 0, i32 4
  store double 4.100000e-01, double* %c, align 8, !tbaa !25
  %32 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Nc = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %32, i32 0, i32 5
  store double 8.000000e-01, double* %Nc, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end
  %33 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %F15 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %33, i32 0, i32 3
  store double 8.000000e-01, double* %F15, align 8, !tbaa !24
  %34 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %c16 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %34, i32 0, i32 4
  store double 5.250000e-01, double* %c16, align 8, !tbaa !25
  %35 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Nc17 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %35, i32 0, i32 5
  store double 8.000000e-01, double* %Nc17, align 8, !tbaa !26
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %36 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %F19 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %36, i32 0, i32 3
  store double 9.000000e-01, double* %F19, align 8, !tbaa !24
  %37 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %c20 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %37, i32 0, i32 4
  store double 5.900000e-01, double* %c20, align 8, !tbaa !25
  %38 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Nc21 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %38, i32 0, i32 5
  store double 9.500000e-01, double* %Nc21, align 8, !tbaa !26
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %39 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %F22 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %39, i32 0, i32 3
  store double 1.000000e+00, double* %F22, align 8, !tbaa !24
  %40 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %c23 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %40, i32 0, i32 4
  store double 6.900000e-01, double* %c23, align 8, !tbaa !25
  %41 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Nc24 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %41, i32 0, i32 5
  store double 1.000000e+00, double* %Nc24, align 8, !tbaa !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.18, %sw.bb.14, %sw.bb
  %42 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %call25 = call double @compute_n(%struct.cmsCIECAM02* %42) #7
  %43 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %43, i32 0, i32 7
  store double %call25, double* %n, align 8, !tbaa !27
  %44 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %call26 = call double @compute_z(%struct.cmsCIECAM02* %44) #7
  %45 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %z = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %45, i32 0, i32 10
  store double %call26, double* %z, align 8, !tbaa !28
  %46 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %call27 = call double @computeNbb(%struct.cmsCIECAM02* %46) #7
  %47 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Nbb = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %47, i32 0, i32 8
  store double %call27, double* %Nbb, align 8, !tbaa !29
  %48 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %call28 = call double @computeFL(%struct.cmsCIECAM02* %48) #7
  %49 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %FL = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %49, i32 0, i32 11
  store double %call28, double* %FL, align 8, !tbaa !30
  %50 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %D29 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %50, i32 0, i32 12
  %51 = load double, double* %D29, align 8, !tbaa !21
  %cmp30 = fcmp oeq double %51, -1.000000e+00
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %sw.epilog
  %52 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %call32 = call double @computeD(%struct.cmsCIECAM02* %52) #7
  %53 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %D33 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %53, i32 0, i32 12
  store double %call32, double* %D33, align 8, !tbaa !21
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %sw.epilog
  %54 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Nbb35 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %54, i32 0, i32 8
  %55 = load double, double* %Nbb35, align 8, !tbaa !29
  %56 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %Ncb = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %56, i32 0, i32 9
  store double %55, double* %Ncb, align 8, !tbaa !31
  %57 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite36 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %57, i32 0, i32 0
  %58 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite37 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %58, i32 0, i32 0
  call void @XYZtoCAT02(%struct.CAM02COLOR* sret %tmp, %struct.CAM02COLOR* byval align 8 %adoptedWhite37) #7
  %59 = bitcast %struct.CAM02COLOR* %adoptedWhite36 to i8*
  %60 = bitcast %struct.CAM02COLOR* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 264, i32 8, i1 false), !tbaa.struct !32
  %61 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite38 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %61, i32 0, i32 0
  %62 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite39 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %62, i32 0, i32 0
  %63 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @ChromaticAdaptation(%struct.CAM02COLOR* sret %tmp40, %struct.CAM02COLOR* byval align 8 %adoptedWhite39, %struct.cmsCIECAM02* %63) #7
  %64 = bitcast %struct.CAM02COLOR* %adoptedWhite38 to i8*
  %65 = bitcast %struct.CAM02COLOR* %tmp40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 264, i32 8, i1 false), !tbaa.struct !32
  %66 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite41 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %66, i32 0, i32 0
  %67 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite42 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %67, i32 0, i32 0
  call void @CAT02toHPE(%struct.CAM02COLOR* sret %tmp43, %struct.CAM02COLOR* byval align 8 %adoptedWhite42) #7
  %68 = bitcast %struct.CAM02COLOR* %adoptedWhite41 to i8*
  %69 = bitcast %struct.CAM02COLOR* %tmp43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 264, i32 8, i1 false), !tbaa.struct !32
  %70 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite44 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %70, i32 0, i32 0
  %71 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %adoptedWhite45 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %71, i32 0, i32 0
  %72 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @NonlinearCompression(%struct.CAM02COLOR* sret %tmp46, %struct.CAM02COLOR* byval align 8 %adoptedWhite45, %struct.cmsCIECAM02* %72) #7
  %73 = bitcast %struct.CAM02COLOR* %adoptedWhite44 to i8*
  %74 = bitcast %struct.CAM02COLOR* %tmp46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 264, i32 8, i1 false), !tbaa.struct !32
  %75 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %76 = bitcast %struct.cmsCIECAM02* %75 to i8*
  store i8* %76, i8** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.34, %if.then
  %77 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = load i8*, i8** %retval
  ret i8* %78
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

declare i8* @_cmsMallocZero(%struct._cmsContext_struct*, i32) #3

; Function Attrs: nounwind uwtable
define internal double @compute_n(%struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %Yb = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %0, i32 0, i32 2
  %1 = load double, double* %Yb, align 8, !tbaa !19
  %2 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %2, i32 0, i32 0
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 1
  %3 = load double, double* %arrayidx, align 8, !tbaa !13
  %div = fdiv double %1, %3
  ret double %div
}

; Function Attrs: nounwind uwtable
define internal double @compute_z(%struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %0, i32 0, i32 7
  %1 = load double, double* %n, align 8, !tbaa !27
  %call = call double @pow(double %1, double 5.000000e-01) #8
  %add = fadd double 1.480000e+00, %call
  ret double %add
}

; Function Attrs: nounwind uwtable
define internal double @computeNbb(%struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %0, i32 0, i32 7
  %1 = load double, double* %n, align 8, !tbaa !27
  %div = fdiv double 1.000000e+00, %1
  %call = call double @pow(double %div, double 2.000000e-01) #8
  %mul = fmul double 7.250000e-01, %call
  ret double %mul
}

; Function Attrs: nounwind uwtable
define internal double @computeFL(%struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %k = alloca double, align 8
  %FL = alloca double, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast double* %k to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %FL to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %LA = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %2, i32 0, i32 1
  %3 = load double, double* %LA, align 8, !tbaa !17
  %mul = fmul double 5.000000e+00, %3
  %add = fadd double %mul, 1.000000e+00
  %div = fdiv double 1.000000e+00, %add
  store double %div, double* %k, align 8, !tbaa !13
  %4 = load double, double* %k, align 8, !tbaa !13
  %call = call double @pow(double %4, double 4.000000e+00) #8
  %mul1 = fmul double 2.000000e-01, %call
  %5 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %LA2 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %5, i32 0, i32 1
  %6 = load double, double* %LA2, align 8, !tbaa !17
  %mul3 = fmul double 5.000000e+00, %6
  %mul4 = fmul double %mul1, %mul3
  %7 = load double, double* %k, align 8, !tbaa !13
  %call5 = call double @pow(double %7, double 4.000000e+00) #8
  %sub = fsub double 1.000000e+00, %call5
  %call6 = call double @pow(double %sub, double 2.000000e+00) #8
  %mul7 = fmul double 1.000000e-01, %call6
  %8 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %LA8 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %8, i32 0, i32 1
  %9 = load double, double* %LA8, align 8, !tbaa !17
  %mul9 = fmul double 5.000000e+00, %9
  %call10 = call double @pow(double %mul9, double 0x3FD5555555555555) #8
  %mul11 = fmul double %mul7, %call10
  %add12 = fadd double %mul4, %mul11
  store double %add12, double* %FL, align 8, !tbaa !13
  %10 = load double, double* %FL, align 8, !tbaa !13
  %11 = bitcast double* %FL to i8*
  call void @llvm.lifetime.end(i64 8, i8* %11) #1
  %12 = bitcast double* %k to i8*
  call void @llvm.lifetime.end(i64 8, i8* %12) #1
  ret double %10
}

; Function Attrs: nounwind uwtable
define internal double @computeD(%struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %D = alloca double, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast double* %D to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %F = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %1, i32 0, i32 3
  %2 = load double, double* %F, align 8, !tbaa !24
  %3 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %LA = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %3, i32 0, i32 1
  %4 = load double, double* %LA, align 8, !tbaa !17
  %sub = fsub double -0.000000e+00, %4
  %sub1 = fsub double %sub, 4.200000e+01
  %div = fdiv double %sub1, 9.200000e+01
  %call = call double @exp(double %div) #8
  %mul = fmul double 0x3FD1C71C71C71C72, %call
  %sub2 = fsub double %2, %mul
  store double %sub2, double* %D, align 8, !tbaa !13
  %5 = load double, double* %D, align 8, !tbaa !13
  %6 = bitcast double* %D to i8*
  call void @llvm.lifetime.end(i64 8, i8* %6) #1
  ret double %5
}

; Function Attrs: nounwind uwtable
define internal void @XYZtoCAT02(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr) #0 {
entry:
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 0
  %0 = load double, double* %arrayidx, align 8, !tbaa !13
  %mul = fmul double %0, 7.328000e-01
  %XYZ1 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %XYZ1, i32 0, i64 1
  %1 = load double, double* %arrayidx2, align 8, !tbaa !13
  %mul3 = fmul double %1, 4.296000e-01
  %add = fadd double %mul, %mul3
  %XYZ4 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %XYZ4, i32 0, i64 2
  %2 = load double, double* %arrayidx5, align 8, !tbaa !13
  %mul6 = fmul double %2, -1.624000e-01
  %add7 = fadd double %add, %mul6
  %RGB = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %RGB, i32 0, i64 0
  store double %add7, double* %arrayidx8, align 8, !tbaa !13
  %XYZ9 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %XYZ9, i32 0, i64 0
  %3 = load double, double* %arrayidx10, align 8, !tbaa !13
  %mul11 = fmul double %3, -7.036000e-01
  %XYZ12 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %XYZ12, i32 0, i64 1
  %4 = load double, double* %arrayidx13, align 8, !tbaa !13
  %mul14 = fmul double %4, 1.697500e+00
  %add15 = fadd double %mul11, %mul14
  %XYZ16 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %XYZ16, i32 0, i64 2
  %5 = load double, double* %arrayidx17, align 8, !tbaa !13
  %mul18 = fmul double %5, 6.100000e-03
  %add19 = fadd double %add15, %mul18
  %RGB20 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %RGB20, i32 0, i64 1
  store double %add19, double* %arrayidx21, align 8, !tbaa !13
  %XYZ22 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [3 x double], [3 x double]* %XYZ22, i32 0, i64 0
  %6 = load double, double* %arrayidx23, align 8, !tbaa !13
  %mul24 = fmul double %6, 3.000000e-03
  %XYZ25 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %XYZ25, i32 0, i64 1
  %7 = load double, double* %arrayidx26, align 8, !tbaa !13
  %mul27 = fmul double %7, 1.360000e-02
  %add28 = fadd double %mul24, %mul27
  %XYZ29 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %XYZ29, i32 0, i64 2
  %8 = load double, double* %arrayidx30, align 8, !tbaa !13
  %mul31 = fmul double %8, 9.834000e-01
  %add32 = fadd double %add28, %mul31
  %RGB33 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %RGB33, i32 0, i64 2
  store double %add32, double* %arrayidx34, align 8, !tbaa !13
  %9 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %10 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 264, i32 8, i1 false), !tbaa.struct !32
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define internal void @ChromaticAdaptation(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %i = alloca i32, align 4
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !34
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %2, i32 0, i32 0
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 1
  %3 = load double, double* %arrayidx, align 8, !tbaa !13
  %4 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %D = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %4, i32 0, i32 12
  %5 = load double, double* %D, align 8, !tbaa !21
  %6 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite1 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %7, i32 0, i32 0
  %RGB = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %RGB, i32 0, i64 %idxprom
  %8 = load double, double* %arrayidx2, align 8, !tbaa !13
  %div = fdiv double %5, %8
  %mul = fmul double %3, %div
  %9 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %D3 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %9, i32 0, i32 12
  %10 = load double, double* %D3, align 8, !tbaa !21
  %sub = fsub double 1.000000e+00, %10
  %add = fadd double %mul, %sub
  %11 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom4 = zext i32 %11 to i64
  %RGB5 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %RGB5, i32 0, i64 %idxprom4
  %12 = load double, double* %arrayidx6, align 8, !tbaa !13
  %mul7 = fmul double %add, %12
  %13 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom8 = zext i32 %13 to i64
  %RGBc = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %RGBc, i32 0, i64 %idxprom8
  store double %mul7, double* %arrayidx9, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %16 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 264, i32 8, i1 false), !tbaa.struct !32
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CAT02toHPE(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr) #0 {
entry:
  %M = alloca [9 x double], align 16
  %0 = bitcast [9 x double]* %M to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %arrayidx = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 0
  store double 0x3FE7B619F212AE38, double* %arrayidx, align 8, !tbaa !13
  %arrayidx1 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 1
  store double 0x3FCBE83EA743F4F8, double* %arrayidx1, align 8, !tbaa !13
  %arrayidx2 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 2
  store double 0x3FA4FEB5CD1DD6DE, double* %arrayidx2, align 8, !tbaa !13
  %arrayidx3 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 3
  store double 0x3FD24339FEDAE324, double* %arrayidx3, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 4
  store double 0x3FE3F975331550A9, double* %arrayidx4, align 8, !tbaa !13
  %arrayidx5 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 5
  store double 0x3FB7276E6BE9EE25, double* %arrayidx5, align 8, !tbaa !13
  %arrayidx6 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 6
  store double -9.628000e-03, double* %arrayidx6, align 8, !tbaa !13
  %arrayidx7 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 7
  store double -5.698000e-03, double* %arrayidx7, align 8, !tbaa !13
  %arrayidx8 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 8
  store double 1.015326e+00, double* %arrayidx8, align 8, !tbaa !13
  %RGBc = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %RGBc, i32 0, i64 0
  %1 = load double, double* %arrayidx9, align 8, !tbaa !13
  %arrayidx10 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 0
  %2 = load double, double* %arrayidx10, align 8, !tbaa !13
  %mul = fmul double %1, %2
  %RGBc11 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %RGBc11, i32 0, i64 1
  %3 = load double, double* %arrayidx12, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 1
  %4 = load double, double* %arrayidx13, align 8, !tbaa !13
  %mul14 = fmul double %3, %4
  %add = fadd double %mul, %mul14
  %RGBc15 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %RGBc15, i32 0, i64 2
  %5 = load double, double* %arrayidx16, align 8, !tbaa !13
  %arrayidx17 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 2
  %6 = load double, double* %arrayidx17, align 8, !tbaa !13
  %mul18 = fmul double %5, %6
  %add19 = fadd double %add, %mul18
  %RGBp = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %RGBp, i32 0, i64 0
  store double %add19, double* %arrayidx20, align 8, !tbaa !13
  %RGBc21 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %RGBc21, i32 0, i64 0
  %7 = load double, double* %arrayidx22, align 8, !tbaa !13
  %arrayidx23 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 3
  %8 = load double, double* %arrayidx23, align 8, !tbaa !13
  %mul24 = fmul double %7, %8
  %RGBc25 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %RGBc25, i32 0, i64 1
  %9 = load double, double* %arrayidx26, align 8, !tbaa !13
  %arrayidx27 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 4
  %10 = load double, double* %arrayidx27, align 8, !tbaa !13
  %mul28 = fmul double %9, %10
  %add29 = fadd double %mul24, %mul28
  %RGBc30 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %RGBc30, i32 0, i64 2
  %11 = load double, double* %arrayidx31, align 8, !tbaa !13
  %arrayidx32 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 5
  %12 = load double, double* %arrayidx32, align 8, !tbaa !13
  %mul33 = fmul double %11, %12
  %add34 = fadd double %add29, %mul33
  %RGBp35 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %RGBp35, i32 0, i64 1
  store double %add34, double* %arrayidx36, align 8, !tbaa !13
  %RGBc37 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %RGBc37, i32 0, i64 0
  %13 = load double, double* %arrayidx38, align 8, !tbaa !13
  %arrayidx39 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 6
  %14 = load double, double* %arrayidx39, align 8, !tbaa !13
  %mul40 = fmul double %13, %14
  %RGBc41 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %RGBc41, i32 0, i64 1
  %15 = load double, double* %arrayidx42, align 8, !tbaa !13
  %arrayidx43 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 7
  %16 = load double, double* %arrayidx43, align 8, !tbaa !13
  %mul44 = fmul double %15, %16
  %add45 = fadd double %mul40, %mul44
  %RGBc46 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %RGBc46, i32 0, i64 2
  %17 = load double, double* %arrayidx47, align 8, !tbaa !13
  %arrayidx48 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 8
  %18 = load double, double* %arrayidx48, align 8, !tbaa !13
  %mul49 = fmul double %17, %18
  %add50 = fadd double %add45, %mul49
  %RGBp51 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %RGBp51, i32 0, i64 2
  store double %add50, double* %arrayidx52, align 8, !tbaa !13
  %19 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %20 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 264, i32 8, i1 false), !tbaa.struct !32
  %21 = bitcast [9 x double]* %M to i8*
  call void @llvm.lifetime.end(i64 72, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NonlinearCompression(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %i = alloca i32, align 4
  %temp = alloca double, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !34
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = zext i32 %3 to i64
  %RGBp = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %RGBp, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8, !tbaa !13
  %cmp1 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %FL = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %5, i32 0, i32 11
  %6 = load double, double* %FL, align 8, !tbaa !30
  %mul = fmul double -1.000000e+00, %6
  %7 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2 = zext i32 %7 to i64
  %RGBp3 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %RGBp3, i32 0, i64 %idxprom2
  %8 = load double, double* %arrayidx4, align 8, !tbaa !13
  %mul5 = fmul double %mul, %8
  %div = fdiv double %mul5, 1.000000e+02
  %call = call double @pow(double %div, double 4.200000e-01) #8
  store double %call, double* %temp, align 8, !tbaa !13
  %9 = load double, double* %temp, align 8, !tbaa !13
  %mul6 = fmul double -4.000000e+02, %9
  %10 = load double, double* %temp, align 8, !tbaa !13
  %add = fadd double %10, 2.713000e+01
  %div7 = fdiv double %mul6, %add
  %add8 = fadd double %div7, 1.000000e-01
  %11 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom9 = zext i32 %11 to i64
  %RGBpa = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa, i32 0, i64 %idxprom9
  store double %add8, double* %arrayidx10, align 8, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %FL11 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %12, i32 0, i32 11
  %13 = load double, double* %FL11, align 8, !tbaa !30
  %14 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom12 = zext i32 %14 to i64
  %RGBp13 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [3 x double], [3 x double]* %RGBp13, i32 0, i64 %idxprom12
  %15 = load double, double* %arrayidx14, align 8, !tbaa !13
  %mul15 = fmul double %13, %15
  %div16 = fdiv double %mul15, 1.000000e+02
  %call17 = call double @pow(double %div16, double 4.200000e-01) #8
  store double %call17, double* %temp, align 8, !tbaa !13
  %16 = load double, double* %temp, align 8, !tbaa !13
  %mul18 = fmul double 4.000000e+02, %16
  %17 = load double, double* %temp, align 8, !tbaa !13
  %add19 = fadd double %17, 2.713000e+01
  %div20 = fdiv double %mul18, %add19
  %add21 = fadd double %div20, 1.000000e-01
  %18 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom22 = zext i32 %18 to i64
  %RGBpa23 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa23, i32 0, i64 %idxprom22
  store double %add21, double* %arrayidx24, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %RGBpa25 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa25, i32 0, i64 0
  %20 = load double, double* %arrayidx26, align 8, !tbaa !13
  %mul27 = fmul double 2.000000e+00, %20
  %RGBpa28 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa28, i32 0, i64 1
  %21 = load double, double* %arrayidx29, align 8, !tbaa !13
  %add30 = fadd double %mul27, %21
  %RGBpa31 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa31, i32 0, i64 2
  %22 = load double, double* %arrayidx32, align 8, !tbaa !13
  %div33 = fdiv double %22, 2.000000e+01
  %add34 = fadd double %add30, %div33
  %sub = fsub double %add34, 3.050000e-01
  %23 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %Nbb = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %23, i32 0, i32 8
  %24 = load double, double* %Nbb, align 8, !tbaa !29
  %mul35 = fmul double %sub, %24
  %A = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 10
  store double %mul35, double* %A, align 8, !tbaa !35
  %25 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %26 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 264, i32 8, i1 false), !tbaa.struct !32
  %27 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %27) #1
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %28) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @cmsCIECAM02Done(i8* %hModel) #0 {
entry:
  %hModel.addr = alloca i8*, align 8
  %lpMod = alloca %struct.cmsCIECAM02*, align 8
  store i8* %hModel, i8** %hModel.addr, align 8, !tbaa !1
  %0 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %hModel.addr, align 8, !tbaa !1
  %2 = bitcast i8* %1 to %struct.cmsCIECAM02*
  store %struct.cmsCIECAM02* %2, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %3 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %tobool = icmp ne %struct.cmsCIECAM02* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %ContextID = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %4, i32 0, i32 13
  %5 = load %struct._cmsContext_struct*, %struct._cmsContext_struct** %ContextID, align 8, !tbaa !5
  %6 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %7 = bitcast %struct.cmsCIECAM02* %6 to i8*
  call void @_cmsFree(%struct._cmsContext_struct* %5, i8* %7) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.end(i64 8, i8* %8) #1
  ret void
}

declare void @_cmsFree(%struct._cmsContext_struct*, i8*) #3

; Function Attrs: nounwind uwtable
define void @cmsCIECAM02Forward(i8* %hModel, %struct.cmsCIEXYZ* %pIn, %struct.cmsJCh* %pOut) #0 {
entry:
  %hModel.addr = alloca i8*, align 8
  %pIn.addr = alloca %struct.cmsCIEXYZ*, align 8
  %pOut.addr = alloca %struct.cmsJCh*, align 8
  %clr = alloca %struct.CAM02COLOR, align 8
  %lpMod = alloca %struct.cmsCIECAM02*, align 8
  %tmp = alloca %struct.CAM02COLOR, align 8
  %tmp13 = alloca %struct.CAM02COLOR, align 8
  %tmp14 = alloca %struct.CAM02COLOR, align 8
  %tmp15 = alloca %struct.CAM02COLOR, align 8
  %tmp16 = alloca %struct.CAM02COLOR, align 8
  store i8* %hModel, i8** %hModel.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %pIn, %struct.cmsCIEXYZ** %pIn.addr, align 8, !tbaa !1
  store %struct.cmsJCh* %pOut, %struct.cmsJCh** %pOut.addr, align 8, !tbaa !1
  %0 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.lifetime.start(i64 264, i8* %0) #1
  %1 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %hModel.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.cmsCIECAM02*
  store %struct.cmsCIECAM02* %3, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %4 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsCIECAM02* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 441, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.cmsCIECAM02Forward, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pIn.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.cmsCIEXYZ* %6, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 442, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.cmsCIECAM02Forward, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %7, %cond.true.2
  %8 = load %struct.cmsJCh*, %struct.cmsJCh** %pOut.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.cmsJCh* %8, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 443, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.cmsCIECAM02Forward, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %9, %cond.true.6
  %10 = bitcast %struct.CAM02COLOR* %clr to i8*
  %call = call i8* @memset(i8* %10, i32 0, i64 264) #8
  %11 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pIn.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %11, i32 0, i32 0
  %12 = load double, double* %X, align 8, !tbaa !36
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 0
  store double %12, double* %arrayidx, align 8, !tbaa !13
  %13 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pIn.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %13, i32 0, i32 1
  %14 = load double, double* %Y, align 8, !tbaa !37
  %XYZ9 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %XYZ9, i32 0, i64 1
  store double %14, double* %arrayidx10, align 8, !tbaa !13
  %15 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pIn.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %15, i32 0, i32 2
  %16 = load double, double* %Z, align 8, !tbaa !38
  %XYZ11 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %XYZ11, i32 0, i64 2
  store double %16, double* %arrayidx12, align 8, !tbaa !13
  call void @XYZtoCAT02(%struct.CAM02COLOR* sret %tmp, %struct.CAM02COLOR* byval align 8 %clr) #7
  %17 = bitcast %struct.CAM02COLOR* %clr to i8*
  %18 = bitcast %struct.CAM02COLOR* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 264, i32 8, i1 false), !tbaa.struct !32
  %19 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @ChromaticAdaptation(%struct.CAM02COLOR* sret %tmp13, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %19) #7
  %20 = bitcast %struct.CAM02COLOR* %clr to i8*
  %21 = bitcast %struct.CAM02COLOR* %tmp13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %21, i64 264, i32 8, i1 false), !tbaa.struct !32
  call void @CAT02toHPE(%struct.CAM02COLOR* sret %tmp14, %struct.CAM02COLOR* byval align 8 %clr) #7
  %22 = bitcast %struct.CAM02COLOR* %clr to i8*
  %23 = bitcast %struct.CAM02COLOR* %tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 264, i32 8, i1 false), !tbaa.struct !32
  %24 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @NonlinearCompression(%struct.CAM02COLOR* sret %tmp15, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %24) #7
  %25 = bitcast %struct.CAM02COLOR* %clr to i8*
  %26 = bitcast %struct.CAM02COLOR* %tmp15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 264, i32 8, i1 false), !tbaa.struct !32
  %27 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @ComputeCorrelates(%struct.CAM02COLOR* sret %tmp16, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %27) #7
  %28 = bitcast %struct.CAM02COLOR* %clr to i8*
  %29 = bitcast %struct.CAM02COLOR* %tmp16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 264, i32 8, i1 false), !tbaa.struct !32
  %J = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 11
  %30 = load double, double* %J, align 8, !tbaa !39
  %31 = load %struct.cmsJCh*, %struct.cmsJCh** %pOut.addr, align 8, !tbaa !1
  %J17 = getelementptr inbounds %struct.cmsJCh, %struct.cmsJCh* %31, i32 0, i32 0
  store double %30, double* %J17, align 8, !tbaa !36
  %C = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 15
  %32 = load double, double* %C, align 8, !tbaa !40
  %33 = load %struct.cmsJCh*, %struct.cmsJCh** %pOut.addr, align 8, !tbaa !1
  %C18 = getelementptr inbounds %struct.cmsJCh, %struct.cmsJCh* %33, i32 0, i32 1
  store double %32, double* %C18, align 8, !tbaa !37
  %h = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %34 = load double, double* %h, align 8, !tbaa !41
  %35 = load %struct.cmsJCh*, %struct.cmsJCh** %pOut.addr, align 8, !tbaa !1
  %h19 = getelementptr inbounds %struct.cmsJCh, %struct.cmsJCh* %35, i32 0, i32 2
  store double %34, double* %h19, align 8, !tbaa !38
  %36 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.lifetime.end(i64 264, i8* %37) #1
  ret void
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal void @ComputeCorrelates(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %temp = alloca double, align 8
  %e = alloca double, align 8
  %t = alloca double, align 8
  %r2d = alloca double, align 8
  %d2r = alloca double, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast double* %a to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %b to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %temp to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %r2d to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %d2r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %RGBpa = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %RGBpa, i32 0, i64 0
  %7 = load double, double* %arrayidx, align 8, !tbaa !13
  %RGBpa1 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa1, i32 0, i64 1
  %8 = load double, double* %arrayidx2, align 8, !tbaa !13
  %mul = fmul double 1.200000e+01, %8
  %div = fdiv double %mul, 1.100000e+01
  %sub = fsub double %7, %div
  %RGBpa3 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa3, i32 0, i64 2
  %9 = load double, double* %arrayidx4, align 8, !tbaa !13
  %div5 = fdiv double %9, 1.100000e+01
  %add = fadd double %sub, %div5
  store double %add, double* %a, align 8, !tbaa !13
  %RGBpa6 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa6, i32 0, i64 0
  %10 = load double, double* %arrayidx7, align 8, !tbaa !13
  %RGBpa8 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa8, i32 0, i64 1
  %11 = load double, double* %arrayidx9, align 8, !tbaa !13
  %add10 = fadd double %10, %11
  %RGBpa11 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa11, i32 0, i64 2
  %12 = load double, double* %arrayidx12, align 8, !tbaa !13
  %mul13 = fmul double 2.000000e+00, %12
  %sub14 = fsub double %add10, %mul13
  %div15 = fdiv double %sub14, 9.000000e+00
  store double %div15, double* %b, align 8, !tbaa !13
  store double 0x404CA5DC1A53B118, double* %r2d, align 8, !tbaa !13
  %13 = load double, double* %a, align 8, !tbaa !13
  %cmp = fcmp oeq double %13, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else.24

if.then:                                          ; preds = %entry
  %14 = load double, double* %b, align 8, !tbaa !13
  %cmp16 = fcmp oeq double %14, 0.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then
  %h = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double 0.000000e+00, double* %h, align 8, !tbaa !41
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %15 = load double, double* %b, align 8, !tbaa !13
  %cmp18 = fcmp ogt double %15, 0.000000e+00
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %h20 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double 9.000000e+01, double* %h20, align 8, !tbaa !41
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %h22 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double 2.700000e+02, double* %h22, align 8, !tbaa !41
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.17
  br label %if.end.50

if.else.24:                                       ; preds = %entry
  %16 = load double, double* %a, align 8, !tbaa !13
  %cmp25 = fcmp ogt double %16, 0.000000e+00
  br i1 %cmp25, label %if.then.26, label %if.else.43

if.then.26:                                       ; preds = %if.else.24
  %17 = load double, double* %b, align 8, !tbaa !13
  %18 = load double, double* %a, align 8, !tbaa !13
  %div27 = fdiv double %17, %18
  store double %div27, double* %temp, align 8, !tbaa !13
  %19 = load double, double* %b, align 8, !tbaa !13
  %cmp28 = fcmp ogt double %19, 0.000000e+00
  br i1 %cmp28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.then.26
  %20 = load double, double* %r2d, align 8, !tbaa !13
  %21 = load double, double* %temp, align 8, !tbaa !13
  %call = call double @atan(double %21) #8
  %mul30 = fmul double %20, %call
  %h31 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double %mul30, double* %h31, align 8, !tbaa !41
  br label %if.end.42

if.else.32:                                       ; preds = %if.then.26
  %22 = load double, double* %b, align 8, !tbaa !13
  %cmp33 = fcmp oeq double %22, 0.000000e+00
  br i1 %cmp33, label %if.then.34, label %if.else.36

if.then.34:                                       ; preds = %if.else.32
  %h35 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double 0.000000e+00, double* %h35, align 8, !tbaa !41
  br label %if.end.41

if.else.36:                                       ; preds = %if.else.32
  %23 = load double, double* %r2d, align 8, !tbaa !13
  %24 = load double, double* %temp, align 8, !tbaa !13
  %call37 = call double @atan(double %24) #8
  %mul38 = fmul double %23, %call37
  %add39 = fadd double %mul38, 3.600000e+02
  %h40 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double %add39, double* %h40, align 8, !tbaa !41
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.36, %if.then.34
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.29
  br label %if.end.49

if.else.43:                                       ; preds = %if.else.24
  %25 = load double, double* %b, align 8, !tbaa !13
  %26 = load double, double* %a, align 8, !tbaa !13
  %div44 = fdiv double %25, %26
  store double %div44, double* %temp, align 8, !tbaa !13
  %27 = load double, double* %r2d, align 8, !tbaa !13
  %28 = load double, double* %temp, align 8, !tbaa !13
  %call45 = call double @atan(double %28) #8
  %mul46 = fmul double %27, %call45
  %add47 = fadd double %mul46, 1.800000e+02
  %h48 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double %add47, double* %h48, align 8, !tbaa !41
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.43, %if.end.42
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.23
  store double 0x3F91DF46A25CA311, double* %d2r, align 8, !tbaa !13
  %29 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %Nc = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %29, i32 0, i32 5
  %30 = load double, double* %Nc, align 8, !tbaa !26
  %mul51 = fmul double 0x408E0C4EC4EC4EC5, %30
  %31 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %Ncb = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %31, i32 0, i32 9
  %32 = load double, double* %Ncb, align 8, !tbaa !31
  %mul52 = fmul double %mul51, %32
  %h53 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %33 = load double, double* %h53, align 8, !tbaa !41
  %34 = load double, double* %d2r, align 8, !tbaa !13
  %mul54 = fmul double %33, %34
  %add55 = fadd double %mul54, 2.000000e+00
  %call56 = call double @cos(double %add55) #8
  %add57 = fadd double %call56, 3.800000e+00
  %mul58 = fmul double %mul52, %add57
  store double %mul58, double* %e, align 8, !tbaa !13
  %h59 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %35 = load double, double* %h59, align 8, !tbaa !41
  %cmp60 = fcmp olt double %35, 2.014000e+01
  br i1 %cmp60, label %if.then.61, label %if.else.75

if.then.61:                                       ; preds = %if.end.50
  %h62 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %36 = load double, double* %h62, align 8, !tbaa !41
  %add63 = fadd double %36, 1.224700e+02
  %div64 = fdiv double %add63, 1.200000e+00
  %h65 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %37 = load double, double* %h65, align 8, !tbaa !41
  %sub66 = fsub double 2.014000e+01, %37
  %div67 = fdiv double %sub66, 8.000000e-01
  %add68 = fadd double %div64, %div67
  store double %add68, double* %temp, align 8, !tbaa !13
  %h69 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %38 = load double, double* %h69, align 8, !tbaa !41
  %add70 = fadd double %38, 1.224700e+02
  %div71 = fdiv double %add70, 1.200000e+00
  %mul72 = fmul double 1.000000e+02, %div71
  %39 = load double, double* %temp, align 8, !tbaa !13
  %div73 = fdiv double %mul72, %39
  %add74 = fadd double 3.000000e+02, %div73
  %H = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 9
  store double %add74, double* %H, align 8, !tbaa !42
  br label %if.end.147

if.else.75:                                       ; preds = %if.end.50
  %h76 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %40 = load double, double* %h76, align 8, !tbaa !41
  %cmp77 = fcmp olt double %40, 9.000000e+01
  br i1 %cmp77, label %if.then.78, label %if.else.92

if.then.78:                                       ; preds = %if.else.75
  %h79 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %41 = load double, double* %h79, align 8, !tbaa !41
  %sub80 = fsub double %41, 2.014000e+01
  %div81 = fdiv double %sub80, 8.000000e-01
  %h82 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %42 = load double, double* %h82, align 8, !tbaa !41
  %sub83 = fsub double 9.000000e+01, %42
  %div84 = fdiv double %sub83, 7.000000e-01
  %add85 = fadd double %div81, %div84
  store double %add85, double* %temp, align 8, !tbaa !13
  %h86 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %43 = load double, double* %h86, align 8, !tbaa !41
  %sub87 = fsub double %43, 2.014000e+01
  %div88 = fdiv double %sub87, 8.000000e-01
  %mul89 = fmul double 1.000000e+02, %div88
  %44 = load double, double* %temp, align 8, !tbaa !13
  %div90 = fdiv double %mul89, %44
  %H91 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 9
  store double %div90, double* %H91, align 8, !tbaa !42
  br label %if.end.146

if.else.92:                                       ; preds = %if.else.75
  %h93 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %45 = load double, double* %h93, align 8, !tbaa !41
  %cmp94 = fcmp olt double %45, 1.642500e+02
  br i1 %cmp94, label %if.then.95, label %if.else.110

if.then.95:                                       ; preds = %if.else.92
  %h96 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %46 = load double, double* %h96, align 8, !tbaa !41
  %sub97 = fsub double %46, 9.000000e+01
  %div98 = fdiv double %sub97, 7.000000e-01
  %h99 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %47 = load double, double* %h99, align 8, !tbaa !41
  %sub100 = fsub double 1.642500e+02, %47
  %div101 = fdiv double %sub100, 1.000000e+00
  %add102 = fadd double %div98, %div101
  store double %add102, double* %temp, align 8, !tbaa !13
  %h103 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %48 = load double, double* %h103, align 8, !tbaa !41
  %sub104 = fsub double %48, 9.000000e+01
  %div105 = fdiv double %sub104, 7.000000e-01
  %mul106 = fmul double 1.000000e+02, %div105
  %49 = load double, double* %temp, align 8, !tbaa !13
  %div107 = fdiv double %mul106, %49
  %add108 = fadd double 1.000000e+02, %div107
  %H109 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 9
  store double %add108, double* %H109, align 8, !tbaa !42
  br label %if.end.145

if.else.110:                                      ; preds = %if.else.92
  %h111 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %50 = load double, double* %h111, align 8, !tbaa !41
  %cmp112 = fcmp olt double %50, 2.375300e+02
  br i1 %cmp112, label %if.then.113, label %if.else.128

if.then.113:                                      ; preds = %if.else.110
  %h114 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %51 = load double, double* %h114, align 8, !tbaa !41
  %sub115 = fsub double %51, 1.642500e+02
  %div116 = fdiv double %sub115, 1.000000e+00
  %h117 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %52 = load double, double* %h117, align 8, !tbaa !41
  %sub118 = fsub double 2.375300e+02, %52
  %div119 = fdiv double %sub118, 1.200000e+00
  %add120 = fadd double %div116, %div119
  store double %add120, double* %temp, align 8, !tbaa !13
  %h121 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %53 = load double, double* %h121, align 8, !tbaa !41
  %sub122 = fsub double %53, 1.642500e+02
  %div123 = fdiv double %sub122, 1.000000e+00
  %mul124 = fmul double 1.000000e+02, %div123
  %54 = load double, double* %temp, align 8, !tbaa !13
  %div125 = fdiv double %mul124, %54
  %add126 = fadd double 2.000000e+02, %div125
  %H127 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 9
  store double %add126, double* %H127, align 8, !tbaa !42
  br label %if.end.144

if.else.128:                                      ; preds = %if.else.110
  %h129 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %55 = load double, double* %h129, align 8, !tbaa !41
  %sub130 = fsub double %55, 2.375300e+02
  %div131 = fdiv double %sub130, 1.200000e+00
  %h132 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %56 = load double, double* %h132, align 8, !tbaa !41
  %sub133 = fsub double 3.600000e+02, %56
  %add134 = fadd double %sub133, 2.014000e+01
  %div135 = fdiv double %add134, 8.000000e-01
  %add136 = fadd double %div131, %div135
  store double %add136, double* %temp, align 8, !tbaa !13
  %h137 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %57 = load double, double* %h137, align 8, !tbaa !41
  %sub138 = fsub double %57, 2.375300e+02
  %div139 = fdiv double %sub138, 1.200000e+00
  %mul140 = fmul double 1.000000e+02, %div139
  %58 = load double, double* %temp, align 8, !tbaa !13
  %div141 = fdiv double %mul140, %58
  %add142 = fadd double 3.000000e+02, %div141
  %H143 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 9
  store double %add142, double* %H143, align 8, !tbaa !42
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.128, %if.then.113
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.95
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %if.then.78
  br label %if.end.147

if.end.147:                                       ; preds = %if.end.146, %if.then.61
  %A = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 10
  %59 = load double, double* %A, align 8, !tbaa !35
  %60 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %60, i32 0, i32 0
  %A148 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite, i32 0, i32 10
  %61 = load double, double* %A148, align 8, !tbaa !43
  %div149 = fdiv double %59, %61
  %62 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %62, i32 0, i32 4
  %63 = load double, double* %c, align 8, !tbaa !25
  %64 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %z = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %64, i32 0, i32 10
  %65 = load double, double* %z, align 8, !tbaa !28
  %mul150 = fmul double %63, %65
  %call151 = call double @pow(double %div149, double %mul150) #8
  %mul152 = fmul double 1.000000e+02, %call151
  %J = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 11
  store double %mul152, double* %J, align 8, !tbaa !39
  %66 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %c153 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %66, i32 0, i32 4
  %67 = load double, double* %c153, align 8, !tbaa !25
  %div154 = fdiv double 4.000000e+00, %67
  %J155 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 11
  %68 = load double, double* %J155, align 8, !tbaa !39
  %div156 = fdiv double %68, 1.000000e+02
  %call157 = call double @pow(double %div156, double 5.000000e-01) #8
  %mul158 = fmul double %div154, %call157
  %69 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite159 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %69, i32 0, i32 0
  %A160 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite159, i32 0, i32 10
  %70 = load double, double* %A160, align 8, !tbaa !43
  %add161 = fadd double %70, 4.000000e+00
  %mul162 = fmul double %mul158, %add161
  %71 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %FL = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %71, i32 0, i32 11
  %72 = load double, double* %FL, align 8, !tbaa !30
  %call163 = call double @pow(double %72, double 2.500000e-01) #8
  %mul164 = fmul double %mul162, %call163
  %Q = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 12
  store double %mul164, double* %Q, align 8, !tbaa !44
  %73 = load double, double* %e, align 8, !tbaa !13
  %74 = load double, double* %a, align 8, !tbaa !13
  %75 = load double, double* %a, align 8, !tbaa !13
  %mul165 = fmul double %74, %75
  %76 = load double, double* %b, align 8, !tbaa !13
  %77 = load double, double* %b, align 8, !tbaa !13
  %mul166 = fmul double %76, %77
  %add167 = fadd double %mul165, %mul166
  %call168 = call double @pow(double %add167, double 5.000000e-01) #8
  %mul169 = fmul double %73, %call168
  %RGBpa170 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx171 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa170, i32 0, i64 0
  %78 = load double, double* %arrayidx171, align 8, !tbaa !13
  %RGBpa172 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx173 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa172, i32 0, i64 1
  %79 = load double, double* %arrayidx173, align 8, !tbaa !13
  %add174 = fadd double %78, %79
  %RGBpa175 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx176 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa175, i32 0, i64 2
  %80 = load double, double* %arrayidx176, align 8, !tbaa !13
  %mul177 = fmul double 1.050000e+00, %80
  %add178 = fadd double %add174, %mul177
  %div179 = fdiv double %mul169, %add178
  store double %div179, double* %t, align 8, !tbaa !13
  %81 = load double, double* %t, align 8, !tbaa !13
  %call180 = call double @pow(double %81, double 9.000000e-01) #8
  %J181 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 11
  %82 = load double, double* %J181, align 8, !tbaa !39
  %div182 = fdiv double %82, 1.000000e+02
  %call183 = call double @pow(double %div182, double 5.000000e-01) #8
  %mul184 = fmul double %call180, %call183
  %83 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %83, i32 0, i32 7
  %84 = load double, double* %n, align 8, !tbaa !27
  %call185 = call double @pow(double 2.900000e-01, double %84) #8
  %sub186 = fsub double 1.640000e+00, %call185
  %call187 = call double @pow(double %sub186, double 7.300000e-01) #8
  %mul188 = fmul double %mul184, %call187
  %C = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 15
  store double %mul188, double* %C, align 8, !tbaa !40
  %C189 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 15
  %85 = load double, double* %C189, align 8, !tbaa !40
  %86 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %FL190 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %86, i32 0, i32 11
  %87 = load double, double* %FL190, align 8, !tbaa !30
  %call191 = call double @pow(double %87, double 2.500000e-01) #8
  %mul192 = fmul double %85, %call191
  %M = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 16
  store double %mul192, double* %M, align 8, !tbaa !45
  %M193 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 16
  %88 = load double, double* %M193, align 8, !tbaa !45
  %Q194 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 12
  %89 = load double, double* %Q194, align 8, !tbaa !44
  %div195 = fdiv double %88, %89
  %call196 = call double @pow(double %div195, double 5.000000e-01) #8
  %mul197 = fmul double 1.000000e+02, %call196
  %s = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 13
  store double %mul197, double* %s, align 8, !tbaa !46
  %90 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %91 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %90, i8* %91, i64 264, i32 8, i1 false), !tbaa.struct !32
  %92 = bitcast double* %d2r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %92) #1
  %93 = bitcast double* %r2d to i8*
  call void @llvm.lifetime.end(i64 8, i8* %93) #1
  %94 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %94) #1
  %95 = bitcast double* %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %95) #1
  %96 = bitcast double* %temp to i8*
  call void @llvm.lifetime.end(i64 8, i8* %96) #1
  %97 = bitcast double* %b to i8*
  call void @llvm.lifetime.end(i64 8, i8* %97) #1
  %98 = bitcast double* %a to i8*
  call void @llvm.lifetime.end(i64 8, i8* %98) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @cmsCIECAM02Reverse(i8* %hModel, %struct.cmsJCh* %pIn, %struct.cmsCIEXYZ* %pOut) #0 {
entry:
  %hModel.addr = alloca i8*, align 8
  %pIn.addr = alloca %struct.cmsJCh*, align 8
  %pOut.addr = alloca %struct.cmsCIEXYZ*, align 8
  %clr = alloca %struct.CAM02COLOR, align 8
  %lpMod = alloca %struct.cmsCIECAM02*, align 8
  %tmp = alloca %struct.CAM02COLOR, align 8
  %tmp12 = alloca %struct.CAM02COLOR, align 8
  %tmp13 = alloca %struct.CAM02COLOR, align 8
  %tmp14 = alloca %struct.CAM02COLOR, align 8
  %tmp15 = alloca %struct.CAM02COLOR, align 8
  store i8* %hModel, i8** %hModel.addr, align 8, !tbaa !1
  store %struct.cmsJCh* %pIn, %struct.cmsJCh** %pIn.addr, align 8, !tbaa !1
  store %struct.cmsCIEXYZ* %pOut, %struct.cmsCIEXYZ** %pOut.addr, align 8, !tbaa !1
  %0 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.lifetime.start(i64 264, i8* %0) #1
  %1 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = load i8*, i8** %hModel.addr, align 8, !tbaa !1
  %3 = bitcast i8* %2 to %struct.cmsCIECAM02*
  store %struct.cmsCIECAM02* %3, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %4 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  %cmp = icmp ne %struct.cmsCIECAM02* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 467, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.cmsCIECAM02Reverse, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %5, %cond.true
  %6 = load %struct.cmsJCh*, %struct.cmsJCh** %pIn.addr, align 8, !tbaa !1
  %cmp1 = icmp ne %struct.cmsJCh* %6, null
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 468, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.cmsCIECAM02Reverse, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.4

cond.end.4:                                       ; preds = %7, %cond.true.2
  %8 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pOut.addr, align 8, !tbaa !1
  %cmp5 = icmp ne %struct.cmsCIEXYZ* %8, null
  br i1 %cmp5, label %cond.true.6, label %cond.false.7

cond.true.6:                                      ; preds = %cond.end.4
  br label %cond.end.8

cond.false.7:                                     ; preds = %cond.end.4
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 469, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.cmsCIECAM02Reverse, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.8

cond.end.8:                                       ; preds = %9, %cond.true.6
  %10 = bitcast %struct.CAM02COLOR* %clr to i8*
  %call = call i8* @memset(i8* %10, i32 0, i64 264) #8
  %11 = load %struct.cmsJCh*, %struct.cmsJCh** %pIn.addr, align 8, !tbaa !1
  %J = getelementptr inbounds %struct.cmsJCh, %struct.cmsJCh* %11, i32 0, i32 0
  %12 = load double, double* %J, align 8, !tbaa !36
  %J9 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 11
  store double %12, double* %J9, align 8, !tbaa !39
  %13 = load %struct.cmsJCh*, %struct.cmsJCh** %pIn.addr, align 8, !tbaa !1
  %C = getelementptr inbounds %struct.cmsJCh, %struct.cmsJCh* %13, i32 0, i32 1
  %14 = load double, double* %C, align 8, !tbaa !37
  %C10 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 15
  store double %14, double* %C10, align 8, !tbaa !40
  %15 = load %struct.cmsJCh*, %struct.cmsJCh** %pIn.addr, align 8, !tbaa !1
  %h = getelementptr inbounds %struct.cmsJCh, %struct.cmsJCh* %15, i32 0, i32 2
  %16 = load double, double* %h, align 8, !tbaa !38
  %h11 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  store double %16, double* %h11, align 8, !tbaa !41
  %17 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @InverseCorrelates(%struct.CAM02COLOR* sret %tmp, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %17) #7
  %18 = bitcast %struct.CAM02COLOR* %clr to i8*
  %19 = bitcast %struct.CAM02COLOR* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 264, i32 8, i1 false), !tbaa.struct !32
  %20 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @InverseNonlinearity(%struct.CAM02COLOR* sret %tmp12, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %20) #7
  %21 = bitcast %struct.CAM02COLOR* %clr to i8*
  %22 = bitcast %struct.CAM02COLOR* %tmp12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 264, i32 8, i1 false), !tbaa.struct !32
  call void @HPEtoCAT02(%struct.CAM02COLOR* sret %tmp13, %struct.CAM02COLOR* byval align 8 %clr) #7
  %23 = bitcast %struct.CAM02COLOR* %clr to i8*
  %24 = bitcast %struct.CAM02COLOR* %tmp13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 264, i32 8, i1 false), !tbaa.struct !32
  %25 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %lpMod, align 8, !tbaa !1
  call void @InverseChromaticAdaptation(%struct.CAM02COLOR* sret %tmp14, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %25) #7
  %26 = bitcast %struct.CAM02COLOR* %clr to i8*
  %27 = bitcast %struct.CAM02COLOR* %tmp14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %27, i64 264, i32 8, i1 false), !tbaa.struct !32
  call void @CAT02toXYZ(%struct.CAM02COLOR* sret %tmp15, %struct.CAM02COLOR* byval align 8 %clr) #7
  %28 = bitcast %struct.CAM02COLOR* %clr to i8*
  %29 = bitcast %struct.CAM02COLOR* %tmp15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %29, i64 264, i32 8, i1 false), !tbaa.struct !32
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 0
  %30 = load double, double* %arrayidx, align 8, !tbaa !13
  %31 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pOut.addr, align 8, !tbaa !1
  %X = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %31, i32 0, i32 0
  store double %30, double* %X, align 8, !tbaa !36
  %XYZ16 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %XYZ16, i32 0, i64 1
  %32 = load double, double* %arrayidx17, align 8, !tbaa !13
  %33 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pOut.addr, align 8, !tbaa !1
  %Y = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %33, i32 0, i32 1
  store double %32, double* %Y, align 8, !tbaa !37
  %XYZ18 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %XYZ18, i32 0, i64 2
  %34 = load double, double* %arrayidx19, align 8, !tbaa !13
  %35 = load %struct.cmsCIEXYZ*, %struct.cmsCIEXYZ** %pOut.addr, align 8, !tbaa !1
  %Z = getelementptr inbounds %struct.cmsCIEXYZ, %struct.cmsCIEXYZ* %35, i32 0, i32 2
  store double %34, double* %Z, align 8, !tbaa !38
  %36 = bitcast %struct.cmsCIECAM02** %lpMod to i8*
  call void @llvm.lifetime.end(i64 8, i8* %36) #1
  %37 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.lifetime.end(i64 264, i8* %37) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InverseCorrelates(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %t = alloca double, align 8
  %e = alloca double, align 8
  %p1 = alloca double, align 8
  %p2 = alloca double, align 8
  %p3 = alloca double, align 8
  %p4 = alloca double, align 8
  %p5 = alloca double, align 8
  %hr = alloca double, align 8
  %d2r = alloca double, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast double* %t to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = bitcast double* %e to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast double* %p1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast double* %p2 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  %4 = bitcast double* %p3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  %5 = bitcast double* %p4 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  %6 = bitcast double* %p5 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %6) #1
  %7 = bitcast double* %hr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %7) #1
  %8 = bitcast double* %d2r to i8*
  call void @llvm.lifetime.start(i64 8, i8* %8) #1
  store double 0x3F91DF46A25CA311, double* %d2r, align 8, !tbaa !13
  %C = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 15
  %9 = load double, double* %C, align 8, !tbaa !40
  %J = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 11
  %10 = load double, double* %J, align 8, !tbaa !39
  %div = fdiv double %10, 1.000000e+02
  %call = call double @pow(double %div, double 5.000000e-01) #8
  %11 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %n = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %11, i32 0, i32 7
  %12 = load double, double* %n, align 8, !tbaa !27
  %call1 = call double @pow(double 2.900000e-01, double %12) #8
  %sub = fsub double 1.640000e+00, %call1
  %call2 = call double @pow(double %sub, double 7.300000e-01) #8
  %mul = fmul double %call, %call2
  %div3 = fdiv double %9, %mul
  %call4 = call double @pow(double %div3, double 0x3FF1C71C71C71C72) #8
  store double %call4, double* %t, align 8, !tbaa !13
  %13 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %Nc = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %13, i32 0, i32 5
  %14 = load double, double* %Nc, align 8, !tbaa !26
  %mul5 = fmul double 0x408E0C4EC4EC4EC5, %14
  %15 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %Ncb = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %15, i32 0, i32 9
  %16 = load double, double* %Ncb, align 8, !tbaa !31
  %mul6 = fmul double %mul5, %16
  %h = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %17 = load double, double* %h, align 8, !tbaa !41
  %18 = load double, double* %d2r, align 8, !tbaa !13
  %mul7 = fmul double %17, %18
  %add = fadd double %mul7, 2.000000e+00
  %call8 = call double @cos(double %add) #8
  %add9 = fadd double %call8, 3.800000e+00
  %mul10 = fmul double %mul6, %add9
  store double %mul10, double* %e, align 8, !tbaa !13
  %19 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %19, i32 0, i32 0
  %A = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite, i32 0, i32 10
  %20 = load double, double* %A, align 8, !tbaa !43
  %J11 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 11
  %21 = load double, double* %J11, align 8, !tbaa !39
  %div12 = fdiv double %21, 1.000000e+02
  %22 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %c = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %22, i32 0, i32 4
  %23 = load double, double* %c, align 8, !tbaa !25
  %24 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %z = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %24, i32 0, i32 10
  %25 = load double, double* %z, align 8, !tbaa !28
  %mul13 = fmul double %23, %25
  %div14 = fdiv double 1.000000e+00, %mul13
  %call15 = call double @pow(double %div12, double %div14) #8
  %mul16 = fmul double %20, %call15
  %A17 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 10
  store double %mul16, double* %A17, align 8, !tbaa !35
  %26 = load double, double* %e, align 8, !tbaa !13
  %27 = load double, double* %t, align 8, !tbaa !13
  %div18 = fdiv double %26, %27
  store double %div18, double* %p1, align 8, !tbaa !13
  %A19 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 10
  %28 = load double, double* %A19, align 8, !tbaa !35
  %29 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %Nbb = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %29, i32 0, i32 8
  %30 = load double, double* %Nbb, align 8, !tbaa !29
  %div20 = fdiv double %28, %30
  %add21 = fadd double %div20, 3.050000e-01
  store double %add21, double* %p2, align 8, !tbaa !13
  store double 1.050000e+00, double* %p3, align 8, !tbaa !13
  %h22 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 7
  %31 = load double, double* %h22, align 8, !tbaa !41
  %32 = load double, double* %d2r, align 8, !tbaa !13
  %mul23 = fmul double %31, %32
  store double %mul23, double* %hr, align 8, !tbaa !13
  %33 = load double, double* %hr, align 8, !tbaa !13
  %call24 = call double @sin(double %33) #8
  %call25 = call double @fabs(double %call24) #9
  %34 = load double, double* %hr, align 8, !tbaa !13
  %call26 = call double @cos(double %34) #8
  %call27 = call double @fabs(double %call26) #9
  %cmp = fcmp oge double %call25, %call27
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %35 = load double, double* %p1, align 8, !tbaa !13
  %36 = load double, double* %hr, align 8, !tbaa !13
  %call28 = call double @sin(double %36) #8
  %div29 = fdiv double %35, %call28
  store double %div29, double* %p4, align 8, !tbaa !13
  %37 = load double, double* %p2, align 8, !tbaa !13
  %38 = load double, double* %p3, align 8, !tbaa !13
  %add30 = fadd double 2.000000e+00, %38
  %mul31 = fmul double %37, %add30
  %mul32 = fmul double %mul31, 0x3FD4FBCDA3AC10C9
  %39 = load double, double* %p4, align 8, !tbaa !13
  %40 = load double, double* %p3, align 8, !tbaa !13
  %add33 = fadd double 2.000000e+00, %40
  %mul34 = fmul double %add33, 0x3FC4123F221F04ED
  %41 = load double, double* %hr, align 8, !tbaa !13
  %call35 = call double @cos(double %41) #8
  %42 = load double, double* %hr, align 8, !tbaa !13
  %call36 = call double @sin(double %42) #8
  %div37 = fdiv double %call35, %call36
  %mul38 = fmul double %mul34, %div37
  %add39 = fadd double %39, %mul38
  %sub40 = fsub double %add39, 0x3F93B4D2EE4D002F
  %43 = load double, double* %p3, align 8, !tbaa !13
  %mul41 = fmul double %43, 0x4011F6259688D980
  %add42 = fadd double %sub40, %mul41
  %div43 = fdiv double %mul32, %add42
  %b = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 6
  store double %div43, double* %b, align 8, !tbaa !47
  %b44 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 6
  %44 = load double, double* %b44, align 8, !tbaa !47
  %45 = load double, double* %hr, align 8, !tbaa !13
  %call45 = call double @cos(double %45) #8
  %46 = load double, double* %hr, align 8, !tbaa !13
  %call46 = call double @sin(double %46) #8
  %div47 = fdiv double %call45, %call46
  %mul48 = fmul double %44, %div47
  %a = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 5
  store double %mul48, double* %a, align 8, !tbaa !48
  br label %if.end

if.else:                                          ; preds = %entry
  %47 = load double, double* %p1, align 8, !tbaa !13
  %48 = load double, double* %hr, align 8, !tbaa !13
  %call49 = call double @cos(double %48) #8
  %div50 = fdiv double %47, %call49
  store double %div50, double* %p5, align 8, !tbaa !13
  %49 = load double, double* %p2, align 8, !tbaa !13
  %50 = load double, double* %p3, align 8, !tbaa !13
  %add51 = fadd double 2.000000e+00, %50
  %mul52 = fmul double %49, %add51
  %mul53 = fmul double %mul52, 0x3FD4FBCDA3AC10C9
  %51 = load double, double* %p5, align 8, !tbaa !13
  %52 = load double, double* %p3, align 8, !tbaa !13
  %add54 = fadd double 2.000000e+00, %52
  %mul55 = fmul double %add54, 0x3FC4123F221F04ED
  %add56 = fadd double %51, %mul55
  %53 = load double, double* %p3, align 8, !tbaa !13
  %mul57 = fmul double %53, 0x4011F6259688D980
  %sub58 = fsub double 0x3F93B4D2EE4D002F, %mul57
  %54 = load double, double* %hr, align 8, !tbaa !13
  %call59 = call double @sin(double %54) #8
  %55 = load double, double* %hr, align 8, !tbaa !13
  %call60 = call double @cos(double %55) #8
  %div61 = fdiv double %call59, %call60
  %mul62 = fmul double %sub58, %div61
  %sub63 = fsub double %add56, %mul62
  %div64 = fdiv double %mul53, %sub63
  %a65 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 5
  store double %div64, double* %a65, align 8, !tbaa !48
  %a66 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 5
  %56 = load double, double* %a66, align 8, !tbaa !48
  %57 = load double, double* %hr, align 8, !tbaa !13
  %call67 = call double @sin(double %57) #8
  %58 = load double, double* %hr, align 8, !tbaa !13
  %call68 = call double @cos(double %58) #8
  %div69 = fdiv double %call67, %call68
  %mul70 = fmul double %56, %div69
  %b71 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 6
  store double %mul70, double* %b71, align 8, !tbaa !47
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %59 = load double, double* %p2, align 8, !tbaa !13
  %mul72 = fmul double 0x3FD4FBCDA3AC10C9, %59
  %a73 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 5
  %60 = load double, double* %a73, align 8, !tbaa !48
  %mul74 = fmul double 0x3FD492B3E95FCB73, %60
  %add75 = fadd double %mul72, %mul74
  %b76 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 6
  %61 = load double, double* %b76, align 8, !tbaa !47
  %mul77 = fmul double 0x3FCA466E93115594, %61
  %add78 = fadd double %add75, %mul77
  %RGBpa = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %RGBpa, i32 0, i64 0
  store double %add78, double* %arrayidx, align 8, !tbaa !13
  %62 = load double, double* %p2, align 8, !tbaa !13
  %mul79 = fmul double 0x3FD4FBCDA3AC10C9, %62
  %a80 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 5
  %63 = load double, double* %a80, align 8, !tbaa !48
  %mul81 = fmul double 0x3FE4527985BF6830, %63
  %sub82 = fsub double %mul79, %mul81
  %b83 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 6
  %64 = load double, double* %b83, align 8, !tbaa !47
  %mul84 = fmul double 0x3FC7CFD43547B58E, %64
  %sub85 = fsub double %sub82, %mul84
  %RGBpa86 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx87 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa86, i32 0, i64 1
  store double %sub85, double* %arrayidx87, align 8, !tbaa !13
  %65 = load double, double* %p2, align 8, !tbaa !13
  %mul88 = fmul double 0x3FD4FBCDA3AC10C9, %65
  %a89 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 5
  %66 = load double, double* %a89, align 8, !tbaa !48
  %mul90 = fmul double 0x3FC4123F221F04ED, %66
  %sub91 = fsub double %mul88, %mul90
  %b92 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 6
  %67 = load double, double* %b92, align 8, !tbaa !47
  %mul93 = fmul double 0x4011F6259688D980, %67
  %sub94 = fsub double %sub91, %mul93
  %RGBpa95 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx96 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa95, i32 0, i64 2
  store double %sub94, double* %arrayidx96, align 8, !tbaa !13
  %68 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %69 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %68, i8* %69, i64 264, i32 8, i1 false), !tbaa.struct !32
  %70 = bitcast double* %d2r to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %71 = bitcast double* %hr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %71) #1
  %72 = bitcast double* %p5 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %72) #1
  %73 = bitcast double* %p4 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %73) #1
  %74 = bitcast double* %p3 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %74) #1
  %75 = bitcast double* %p2 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %75) #1
  %76 = bitcast double* %p1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %76) #1
  %77 = bitcast double* %e to i8*
  call void @llvm.lifetime.end(i64 8, i8* %77) #1
  %78 = bitcast double* %t to i8*
  call void @llvm.lifetime.end(i64 8, i8* %78) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InverseNonlinearity(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %i = alloca i32, align 4
  %c1 = alloca double, align 8
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast double* %c1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !34
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = zext i32 %3 to i64
  %RGBpa = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %RGBpa, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8, !tbaa !13
  %sub = fsub double %4, 1.000000e-01
  %cmp1 = fcmp olt double %sub, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store double -1.000000e+00, double* %c1, align 8, !tbaa !13
  br label %if.end

if.else:                                          ; preds = %for.body
  store double 1.000000e+00, double* %c1, align 8, !tbaa !13
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load double, double* %c1, align 8, !tbaa !13
  %6 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %FL = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %6, i32 0, i32 11
  %7 = load double, double* %FL, align 8, !tbaa !30
  %div = fdiv double 1.000000e+02, %7
  %mul = fmul double %5, %div
  %8 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2 = zext i32 %8 to i64
  %RGBpa3 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa3, i32 0, i64 %idxprom2
  %9 = load double, double* %arrayidx4, align 8, !tbaa !13
  %sub5 = fsub double %9, 1.000000e-01
  %call = call double @fabs(double %sub5) #9
  %mul6 = fmul double 2.713000e+01, %call
  %10 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom7 = zext i32 %10 to i64
  %RGBpa8 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 4
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %RGBpa8, i32 0, i64 %idxprom7
  %11 = load double, double* %arrayidx9, align 8, !tbaa !13
  %sub10 = fsub double %11, 1.000000e-01
  %call11 = call double @fabs(double %sub10) #9
  %sub12 = fsub double 4.000000e+02, %call11
  %div13 = fdiv double %mul6, %sub12
  %call14 = call double @pow(double %div13, double 0x40030C30C30C30C3) #8
  %mul15 = fmul double %mul, %call14
  %12 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom16 = zext i32 %12 to i64
  %RGBp = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %RGBp, i32 0, i64 %idxprom16
  store double %mul15, double* %arrayidx17, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add i32 %13, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %15 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 264, i32 8, i1 false), !tbaa.struct !32
  %16 = bitcast double* %c1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %16) #1
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @HPEtoCAT02(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr) #0 {
entry:
  %M = alloca [9 x double], align 16
  %0 = bitcast [9 x double]* %M to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %arrayidx = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 0
  store double 0x3FF8F249DF5F3018, double* %arrayidx, align 8, !tbaa !13
  %arrayidx1 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 1
  store double 0xBFE16E5EA75C2336, double* %arrayidx1, align 8, !tbaa !13
  %arrayidx2 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 2
  store double 0xBF8D91DEAABEDCA0, double* %arrayidx2, align 8, !tbaa !13
  %arrayidx3 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 3
  store double 0xBFE6DBC443794205, double* %arrayidx3, align 8, !tbaa !13
  %arrayidx4 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 4
  store double 0x3FFD9ADE4046FFDE, double* %arrayidx4, align 8, !tbaa !13
  %arrayidx5 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 5
  store double 0xBFC166C5EFA969C8, double* %arrayidx5, align 8, !tbaa !13
  %arrayidx6 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 6
  store double 0x3F8611789ABDD357, double* %arrayidx6, align 8, !tbaa !13
  %arrayidx7 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 7
  store double 0x3F756044DD566727, double* %arrayidx7, align 8, !tbaa !13
  %arrayidx8 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 8
  store double 0x3FEF7CF9CCDE6036, double* %arrayidx8, align 8, !tbaa !13
  %RGBp = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %RGBp, i32 0, i64 0
  %1 = load double, double* %arrayidx9, align 8, !tbaa !13
  %arrayidx10 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 0
  %2 = load double, double* %arrayidx10, align 8, !tbaa !13
  %mul = fmul double %1, %2
  %RGBp11 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %RGBp11, i32 0, i64 1
  %3 = load double, double* %arrayidx12, align 8, !tbaa !13
  %arrayidx13 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 1
  %4 = load double, double* %arrayidx13, align 8, !tbaa !13
  %mul14 = fmul double %3, %4
  %add = fadd double %mul, %mul14
  %RGBp15 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %RGBp15, i32 0, i64 2
  %5 = load double, double* %arrayidx16, align 8, !tbaa !13
  %arrayidx17 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 2
  %6 = load double, double* %arrayidx17, align 8, !tbaa !13
  %mul18 = fmul double %5, %6
  %add19 = fadd double %add, %mul18
  %RGBc = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %RGBc, i32 0, i64 0
  store double %add19, double* %arrayidx20, align 8, !tbaa !13
  %RGBp21 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %RGBp21, i32 0, i64 0
  %7 = load double, double* %arrayidx22, align 8, !tbaa !13
  %arrayidx23 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 3
  %8 = load double, double* %arrayidx23, align 8, !tbaa !13
  %mul24 = fmul double %7, %8
  %RGBp25 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %RGBp25, i32 0, i64 1
  %9 = load double, double* %arrayidx26, align 8, !tbaa !13
  %arrayidx27 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 4
  %10 = load double, double* %arrayidx27, align 8, !tbaa !13
  %mul28 = fmul double %9, %10
  %add29 = fadd double %mul24, %mul28
  %RGBp30 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %RGBp30, i32 0, i64 2
  %11 = load double, double* %arrayidx31, align 8, !tbaa !13
  %arrayidx32 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 5
  %12 = load double, double* %arrayidx32, align 8, !tbaa !13
  %mul33 = fmul double %11, %12
  %add34 = fadd double %add29, %mul33
  %RGBc35 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %RGBc35, i32 0, i64 1
  store double %add34, double* %arrayidx36, align 8, !tbaa !13
  %RGBp37 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %RGBp37, i32 0, i64 0
  %13 = load double, double* %arrayidx38, align 8, !tbaa !13
  %arrayidx39 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 6
  %14 = load double, double* %arrayidx39, align 8, !tbaa !13
  %mul40 = fmul double %13, %14
  %RGBp41 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %RGBp41, i32 0, i64 1
  %15 = load double, double* %arrayidx42, align 8, !tbaa !13
  %arrayidx43 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 7
  %16 = load double, double* %arrayidx43, align 8, !tbaa !13
  %mul44 = fmul double %15, %16
  %add45 = fadd double %mul40, %mul44
  %RGBp46 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 3
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %RGBp46, i32 0, i64 2
  %17 = load double, double* %arrayidx47, align 8, !tbaa !13
  %arrayidx48 = getelementptr inbounds [9 x double], [9 x double]* %M, i32 0, i64 8
  %18 = load double, double* %arrayidx48, align 8, !tbaa !13
  %mul49 = fmul double %17, %18
  %add50 = fadd double %add45, %mul49
  %RGBc51 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %RGBc51, i32 0, i64 2
  store double %add50, double* %arrayidx52, align 8, !tbaa !13
  %19 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %20 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 264, i32 8, i1 false), !tbaa.struct !32
  %21 = bitcast [9 x double]* %M to i8*
  call void @llvm.lifetime.end(i64 72, i8* %21) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @InverseChromaticAdaptation(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr, %struct.cmsCIECAM02* %pMod) #0 {
entry:
  %pMod.addr = alloca %struct.cmsCIECAM02*, align 8
  %i = alloca i32, align 4
  store %struct.cmsCIECAM02* %pMod, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  store i32 0, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !tbaa !34
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom = zext i32 %2 to i64
  %RGBc = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %RGBc, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !13
  %4 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %4, i32 0, i32 0
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 1
  %5 = load double, double* %arrayidx1, align 8, !tbaa !13
  %6 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %D = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %6, i32 0, i32 12
  %7 = load double, double* %D, align 8, !tbaa !21
  %mul = fmul double %5, %7
  %8 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom2 = zext i32 %8 to i64
  %9 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %adoptedWhite3 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %9, i32 0, i32 0
  %RGB = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %adoptedWhite3, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %RGB, i32 0, i64 %idxprom2
  %10 = load double, double* %arrayidx4, align 8, !tbaa !13
  %div = fdiv double %mul, %10
  %add = fadd double %div, 1.000000e+00
  %11 = load %struct.cmsCIECAM02*, %struct.cmsCIECAM02** %pMod.addr, align 8, !tbaa !1
  %D5 = getelementptr inbounds %struct.cmsCIECAM02, %struct.cmsCIECAM02* %11, i32 0, i32 12
  %12 = load double, double* %D5, align 8, !tbaa !21
  %sub = fsub double %add, %12
  %div6 = fdiv double %3, %sub
  %13 = load i32, i32* %i, align 4, !tbaa !34
  %idxprom7 = zext i32 %13 to i64
  %RGB8 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %RGB8, i32 0, i64 %idxprom7
  store double %div6, double* %arrayidx9, align 8, !tbaa !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !34
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !34
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %16 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 264, i32 8, i1 false), !tbaa.struct !32
  %17 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %17) #1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @CAT02toXYZ(%struct.CAM02COLOR* noalias sret %agg.result, %struct.CAM02COLOR* byval align 8 %clr) #0 {
entry:
  %RGB = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %RGB, i32 0, i64 0
  %0 = load double, double* %arrayidx, align 8, !tbaa !13
  %mul = fmul double %0, 1.096124e+00
  %RGB1 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %RGB1, i32 0, i64 1
  %1 = load double, double* %arrayidx2, align 8, !tbaa !13
  %mul3 = fmul double %1, -2.788690e-01
  %add = fadd double %mul, %mul3
  %RGB4 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %RGB4, i32 0, i64 2
  %2 = load double, double* %arrayidx5, align 8, !tbaa !13
  %mul6 = fmul double %2, 1.827450e-01
  %add7 = fadd double %add, %mul6
  %XYZ = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %XYZ, i32 0, i64 0
  store double %add7, double* %arrayidx8, align 8, !tbaa !13
  %RGB9 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %RGB9, i32 0, i64 0
  %3 = load double, double* %arrayidx10, align 8, !tbaa !13
  %mul11 = fmul double %3, 4.543690e-01
  %RGB12 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %RGB12, i32 0, i64 1
  %4 = load double, double* %arrayidx13, align 8, !tbaa !13
  %mul14 = fmul double %4, 4.735330e-01
  %add15 = fadd double %mul11, %mul14
  %RGB16 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %RGB16, i32 0, i64 2
  %5 = load double, double* %arrayidx17, align 8, !tbaa !13
  %mul18 = fmul double %5, 7.209800e-02
  %add19 = fadd double %add15, %mul18
  %XYZ20 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx21 = getelementptr inbounds [3 x double], [3 x double]* %XYZ20, i32 0, i64 1
  store double %add19, double* %arrayidx21, align 8, !tbaa !13
  %RGB22 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [3 x double], [3 x double]* %RGB22, i32 0, i64 0
  %6 = load double, double* %arrayidx23, align 8, !tbaa !13
  %mul24 = fmul double %6, -9.628000e-03
  %RGB25 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %RGB25, i32 0, i64 1
  %7 = load double, double* %arrayidx26, align 8, !tbaa !13
  %mul27 = fmul double %7, -5.698000e-03
  %add28 = fadd double %mul24, %mul27
  %RGB29 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %RGB29, i32 0, i64 2
  %8 = load double, double* %arrayidx30, align 8, !tbaa !13
  %mul31 = fmul double %8, 1.015326e+00
  %add32 = fadd double %add28, %mul31
  %XYZ33 = getelementptr inbounds %struct.CAM02COLOR, %struct.CAM02COLOR* %clr, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %XYZ33, i32 0, i64 2
  store double %add32, double* %arrayidx34, align 8, !tbaa !13
  %9 = bitcast %struct.CAM02COLOR* %agg.result to i8*
  %10 = bitcast %struct.CAM02COLOR* %clr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* %10, i64 264, i32 8, i1 false), !tbaa.struct !32
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #4

; Function Attrs: nounwind
declare double @exp(double) #4

; Function Attrs: nounwind
declare double @atan(double) #4

; Function Attrs: nounwind
declare double @cos(double) #4

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind
declare double @sin(double) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin noreturn nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nobuiltin nounwind }
attributes #9 = { nobuiltin nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 360}
!6 = !{!"", !7, i64 0, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !9, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !8, i64 344, !8, i64 352, !2, i64 360}
!7 = !{!"", !3, i64 0, !3, i64 24, !3, i64 48, !3, i64 72, !3, i64 96, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !3, i64 216, !3, i64 232, !3, i64 248}
!8 = !{!"double", !3, i64 0}
!9 = !{!"int", !3, i64 0}
!10 = !{!11, !8, i64 0}
!11 = !{!"", !12, i64 0, !8, i64 24, !8, i64 32, !9, i64 40, !8, i64 48}
!12 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16}
!13 = !{!8, !8, i64 0}
!14 = !{!11, !8, i64 8}
!15 = !{!11, !8, i64 16}
!16 = !{!11, !8, i64 32}
!17 = !{!6, !8, i64 264}
!18 = !{!11, !8, i64 24}
!19 = !{!6, !8, i64 272}
!20 = !{!11, !8, i64 48}
!21 = !{!6, !8, i64 352}
!22 = !{!11, !9, i64 40}
!23 = !{!6, !9, i64 304}
!24 = !{!6, !8, i64 280}
!25 = !{!6, !8, i64 288}
!26 = !{!6, !8, i64 296}
!27 = !{!6, !8, i64 312}
!28 = !{!6, !8, i64 336}
!29 = !{!6, !8, i64 320}
!30 = !{!6, !8, i64 344}
!31 = !{!6, !8, i64 328}
!32 = !{i64 0, i64 24, !33, i64 24, i64 24, !33, i64 48, i64 24, !33, i64 72, i64 24, !33, i64 96, i64 24, !33, i64 120, i64 8, !13, i64 128, i64 8, !13, i64 136, i64 8, !13, i64 144, i64 8, !13, i64 152, i64 8, !13, i64 160, i64 8, !13, i64 168, i64 8, !13, i64 176, i64 8, !13, i64 184, i64 8, !13, i64 192, i64 8, !13, i64 200, i64 8, !13, i64 208, i64 8, !13, i64 216, i64 16, !33, i64 232, i64 16, !33, i64 248, i64 16, !33}
!33 = !{!3, !3, i64 0}
!34 = !{!9, !9, i64 0}
!35 = !{!7, !8, i64 160}
!36 = !{!12, !8, i64 0}
!37 = !{!12, !8, i64 8}
!38 = !{!12, !8, i64 16}
!39 = !{!7, !8, i64 168}
!40 = !{!7, !8, i64 200}
!41 = !{!7, !8, i64 136}
!42 = !{!7, !8, i64 152}
!43 = !{!6, !8, i64 160}
!44 = !{!7, !8, i64 176}
!45 = !{!7, !8, i64 208}
!46 = !{!7, !8, i64 184}
!47 = !{!7, !8, i64 128}
!48 = !{!7, !8, i64 120}
