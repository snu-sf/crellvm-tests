; ModuleID = 'core_algorithms.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpmatrix_s = type { i32**, i32**, i32**, i32**, i8*, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.dpshadow_s = type { i8**, i8**, i8**, i8**, i32* }
%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }
%struct.p7trace_s = type { i32, i8*, i32*, i32* }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.tophit_s = type { %struct.hit_s**, %struct.hit_s*, i32, i32, i32 }
%struct.hit_s = type { double, float, double, float, double, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s* }
%struct.fancyali_s = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32 }
%struct.threshold_s = type { float, double, float, double, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"core_algorithms.c\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"there's trouble with RAMLIMIT if you grow in both M and N.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"traceback failed\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Traceback failed.\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Bogus state %s\00", align 1
@Alphabet_size = external global i32, align 4
@Alphabet = external global [25 x i8], align 16
@.str.5 = private unnamed_addr constant [40 x i8] c"HMMER: Bad state (%s) in ShadowTrace()\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"TraceDecompose() screwup\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"you can't init get_wee_midpt with a %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %N, i32 %M, i32 %padN, i32 %padM) #0 {
entry:
  %N.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %padN.addr = alloca i32, align 4
  %padM.addr = alloca i32, align 4
  %mx = alloca %struct.dpmatrix_s*, align 8
  %i = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32 %padN, i32* %padN.addr, align 4
  store i32 %padM, i32* %padM.addr, align 4
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 66, i64 80)
  %0 = bitcast i8* %call to %struct.dpmatrix_s*
  store %struct.dpmatrix_s* %0, %struct.dpmatrix_s** %mx, align 8
  %1 = load i32, i32* %N.addr, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 67, i64 %mul)
  %2 = bitcast i8* %call1 to i32**
  %3 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %xmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %3, i32 0, i32 0
  store i32** %2, i32*** %xmx, align 8
  %4 = load i32, i32* %N.addr, align 4
  %add2 = add nsw i32 %4, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 8, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 68, i64 %mul4)
  %5 = bitcast i8* %call5 to i32**
  %6 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %mmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %6, i32 0, i32 1
  store i32** %5, i32*** %mmx, align 8
  %7 = load i32, i32* %N.addr, align 4
  %add6 = add nsw i32 %7, 1
  %conv7 = sext i32 %add6 to i64
  %mul8 = mul i64 8, %conv7
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 69, i64 %mul8)
  %8 = bitcast i8* %call9 to i32**
  %9 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %imx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %9, i32 0, i32 2
  store i32** %8, i32*** %imx, align 8
  %10 = load i32, i32* %N.addr, align 4
  %add10 = add nsw i32 %10, 1
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 8, %conv11
  %call13 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 70, i64 %mul12)
  %11 = bitcast i8* %call13 to i32**
  %12 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %dmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %12, i32 0, i32 3
  store i32** %11, i32*** %dmx, align 8
  %13 = load i32, i32* %N.addr, align 4
  %add14 = add nsw i32 %13, 1
  %mul15 = mul nsw i32 %add14, 5
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 71, i64 %mul17)
  %14 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %xmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %14, i32 0, i32 4
  store i8* %call18, i8** %xmx_mem, align 8
  %15 = load i32, i32* %N.addr, align 4
  %add19 = add nsw i32 %15, 1
  %16 = load i32, i32* %M.addr, align 4
  %add20 = add nsw i32 %16, 2
  %mul21 = mul nsw i32 %add19, %add20
  %conv22 = sext i32 %mul21 to i64
  %mul23 = mul i64 4, %conv22
  %call24 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 72, i64 %mul23)
  %17 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %mmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %17, i32 0, i32 5
  store i8* %call24, i8** %mmx_mem, align 8
  %18 = load i32, i32* %N.addr, align 4
  %add25 = add nsw i32 %18, 1
  %19 = load i32, i32* %M.addr, align 4
  %add26 = add nsw i32 %19, 2
  %mul27 = mul nsw i32 %add25, %add26
  %conv28 = sext i32 %mul27 to i64
  %mul29 = mul i64 4, %conv28
  %call30 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 73, i64 %mul29)
  %20 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %imx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %20, i32 0, i32 6
  store i8* %call30, i8** %imx_mem, align 8
  %21 = load i32, i32* %N.addr, align 4
  %add31 = add nsw i32 %21, 1
  %22 = load i32, i32* %M.addr, align 4
  %add32 = add nsw i32 %22, 2
  %mul33 = mul nsw i32 %add31, %add32
  %conv34 = sext i32 %mul33 to i64
  %mul35 = mul i64 4, %conv34
  %call36 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 74, i64 %mul35)
  %23 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %dmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %23, i32 0, i32 7
  store i8* %call36, i8** %dmx_mem, align 8
  %24 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %xmx_mem37 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %24, i32 0, i32 4
  %25 = load i8*, i8** %xmx_mem37, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %xmx38 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %27, i32 0, i32 0
  %28 = load i32**, i32*** %xmx38, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %28, i64 0
  store i32* %26, i32** %arrayidx, align 8
  %29 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %mmx_mem39 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %29, i32 0, i32 5
  %30 = load i8*, i8** %mmx_mem39, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %mmx40 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %32, i32 0, i32 1
  %33 = load i32**, i32*** %mmx40, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %33, i64 0
  store i32* %31, i32** %arrayidx41, align 8
  %34 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %imx_mem42 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %34, i32 0, i32 6
  %35 = load i8*, i8** %imx_mem42, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %imx43 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %37, i32 0, i32 2
  %38 = load i32**, i32*** %imx43, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %38, i64 0
  store i32* %36, i32** %arrayidx44, align 8
  %39 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %dmx_mem45 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %39, i32 0, i32 7
  %40 = load i8*, i8** %dmx_mem45, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %dmx46 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %42, i32 0, i32 3
  %43 = load i32**, i32*** %dmx46, align 8
  %arrayidx47 = getelementptr inbounds i32*, i32** %43, i64 0
  store i32* %41, i32** %arrayidx47, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %N.addr, align 4
  %cmp = icmp sle i32 %44, %45
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %xmx49 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %46, i32 0, i32 0
  %47 = load i32**, i32*** %xmx49, align 8
  %arrayidx50 = getelementptr inbounds i32*, i32** %47, i64 0
  %48 = load i32*, i32** %arrayidx50, align 8
  %49 = load i32, i32* %i, align 4
  %mul51 = mul nsw i32 %49, 5
  %idx.ext = sext i32 %mul51 to i64
  %add.ptr = getelementptr inbounds i32, i32* %48, i64 %idx.ext
  %50 = load i32, i32* %i, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %xmx52 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %51, i32 0, i32 0
  %52 = load i32**, i32*** %xmx52, align 8
  %arrayidx53 = getelementptr inbounds i32*, i32** %52, i64 %idxprom
  store i32* %add.ptr, i32** %arrayidx53, align 8
  %53 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %mmx54 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %53, i32 0, i32 1
  %54 = load i32**, i32*** %mmx54, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %54, i64 0
  %55 = load i32*, i32** %arrayidx55, align 8
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %M.addr, align 4
  %add56 = add nsw i32 %57, 2
  %mul57 = mul nsw i32 %56, %add56
  %idx.ext58 = sext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds i32, i32* %55, i64 %idx.ext58
  %58 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %58 to i64
  %59 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %mmx61 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %59, i32 0, i32 1
  %60 = load i32**, i32*** %mmx61, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %60, i64 %idxprom60
  store i32* %add.ptr59, i32** %arrayidx62, align 8
  %61 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %imx63 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %61, i32 0, i32 2
  %62 = load i32**, i32*** %imx63, align 8
  %arrayidx64 = getelementptr inbounds i32*, i32** %62, i64 0
  %63 = load i32*, i32** %arrayidx64, align 8
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %M.addr, align 4
  %add65 = add nsw i32 %65, 2
  %mul66 = mul nsw i32 %64, %add65
  %idx.ext67 = sext i32 %mul66 to i64
  %add.ptr68 = getelementptr inbounds i32, i32* %63, i64 %idx.ext67
  %66 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %66 to i64
  %67 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %imx70 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %67, i32 0, i32 2
  %68 = load i32**, i32*** %imx70, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %68, i64 %idxprom69
  store i32* %add.ptr68, i32** %arrayidx71, align 8
  %69 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %dmx72 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %69, i32 0, i32 3
  %70 = load i32**, i32*** %dmx72, align 8
  %arrayidx73 = getelementptr inbounds i32*, i32** %70, i64 0
  %71 = load i32*, i32** %arrayidx73, align 8
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %M.addr, align 4
  %add74 = add nsw i32 %73, 2
  %mul75 = mul nsw i32 %72, %add74
  %idx.ext76 = sext i32 %mul75 to i64
  %add.ptr77 = getelementptr inbounds i32, i32* %71, i64 %idx.ext76
  %74 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %74 to i64
  %75 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %dmx79 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %75, i32 0, i32 3
  %76 = load i32**, i32*** %dmx79, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %76, i64 %idxprom78
  store i32* %add.ptr77, i32** %arrayidx80, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %77 = load i32, i32* %i, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %78 = load i32, i32* %padM.addr, align 4
  %cmp81 = icmp sgt i32 %78, 0
  br i1 %cmp81, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %79 = load i32, i32* %padN.addr, align 4
  %cmp83 = icmp sgt i32 %79, 0
  br i1 %cmp83, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.end
  %80 = load i32, i32* %N.addr, align 4
  %81 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %maxN = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %81, i32 0, i32 8
  store i32 %80, i32* %maxN, align 4
  %82 = load i32, i32* %M.addr, align 4
  %83 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %maxM = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %83, i32 0, i32 9
  store i32 %82, i32* %maxM, align 4
  %84 = load i32, i32* %padN.addr, align 4
  %85 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %padN85 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %85, i32 0, i32 10
  store i32 %84, i32* %padN85, align 4
  %86 = load i32, i32* %padM.addr, align 4
  %87 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %padM86 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %87, i32 0, i32 11
  store i32 %86, i32* %padM86, align 4
  %88 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  ret %struct.dpmatrix_s* %88
}

declare i8* @sre_malloc(i8*, i32, i64) #1

declare void @Die(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @ResizePlan7Matrix(%struct.dpmatrix_s* %mx, i32 %N, i32 %M, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #0 {
entry:
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %N.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %xmx.addr = alloca i32***, align 8
  %mmx.addr = alloca i32***, align 8
  %imx.addr = alloca i32***, align 8
  %dmx.addr = alloca i32***, align 8
  %i = alloca i32, align 4
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32*** %xmx, i32**** %xmx.addr, align 8
  store i32*** %mmx, i32**** %mmx.addr, align 8
  store i32*** %imx, i32**** %imx.addr, align 8
  store i32*** %dmx, i32**** %dmx.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %1 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %maxN = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1, i32 0, i32 8
  %2 = load i32, i32* %maxN, align 4
  %cmp = icmp sle i32 %0, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %M.addr, align 4
  %4 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %maxM = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %4, i32 0, i32 9
  %5 = load i32, i32* %maxM, align 4
  %cmp1 = icmp sle i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %DONE

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32, i32* %N.addr, align 4
  %7 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %maxN2 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %7, i32 0, i32 8
  %8 = load i32, i32* %maxN2, align 4
  %cmp3 = icmp sgt i32 %6, %8
  br i1 %cmp3, label %if.then.4, label %if.end.27

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %padN = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %9, i32 0, i32 10
  %10 = load i32, i32* %padN, align 4
  %11 = load i32, i32* %N.addr, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %N.addr, align 4
  %12 = load i32, i32* %N.addr, align 4
  %13 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %maxN5 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %13, i32 0, i32 8
  store i32 %12, i32* %maxN5, align 4
  %14 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx6 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %14, i32 0, i32 0
  %15 = load i32**, i32*** %xmx6, align 8
  %16 = bitcast i32** %15 to i8*
  %17 = load i32, i32* %N.addr, align 4
  %add7 = add nsw i32 %17, 1
  %conv = sext i32 %add7 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 133, i8* %16, i64 %mul)
  %18 = bitcast i8* %call to i32**
  %19 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx8 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %19, i32 0, i32 0
  store i32** %18, i32*** %xmx8, align 8
  %20 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx9 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %20, i32 0, i32 1
  %21 = load i32**, i32*** %mmx9, align 8
  %22 = bitcast i32** %21 to i8*
  %23 = load i32, i32* %N.addr, align 4
  %add10 = add nsw i32 %23, 1
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 8, %conv11
  %call13 = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 134, i8* %22, i64 %mul12)
  %24 = bitcast i8* %call13 to i32**
  %25 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx14 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %25, i32 0, i32 1
  store i32** %24, i32*** %mmx14, align 8
  %26 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx15 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %26, i32 0, i32 2
  %27 = load i32**, i32*** %imx15, align 8
  %28 = bitcast i32** %27 to i8*
  %29 = load i32, i32* %N.addr, align 4
  %add16 = add nsw i32 %29, 1
  %conv17 = sext i32 %add16 to i64
  %mul18 = mul i64 8, %conv17
  %call19 = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 135, i8* %28, i64 %mul18)
  %30 = bitcast i8* %call19 to i32**
  %31 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx20 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %31, i32 0, i32 2
  store i32** %30, i32*** %imx20, align 8
  %32 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx21 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %32, i32 0, i32 3
  %33 = load i32**, i32*** %dmx21, align 8
  %34 = bitcast i32** %33 to i8*
  %35 = load i32, i32* %N.addr, align 4
  %add22 = add nsw i32 %35, 1
  %conv23 = sext i32 %add22 to i64
  %mul24 = mul i64 8, %conv23
  %call25 = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 136, i8* %34, i64 %mul24)
  %36 = bitcast i8* %call25 to i32**
  %37 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx26 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %37, i32 0, i32 3
  store i32** %36, i32*** %dmx26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.4, %if.end
  %38 = load i32, i32* %M.addr, align 4
  %39 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %maxM28 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %39, i32 0, i32 9
  %40 = load i32, i32* %maxM28, align 4
  %cmp29 = icmp sgt i32 %38, %40
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.27
  %41 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %padM = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %41, i32 0, i32 11
  %42 = load i32, i32* %padM, align 4
  %43 = load i32, i32* %M.addr, align 4
  %add32 = add nsw i32 %43, %42
  store i32 %add32, i32* %M.addr, align 4
  %44 = load i32, i32* %M.addr, align 4
  %45 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %maxM33 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %45, i32 0, i32 9
  store i32 %44, i32* %maxM33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.27
  %46 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %46, i32 0, i32 4
  %47 = load i8*, i8** %xmx_mem, align 8
  %48 = load i32, i32* %N.addr, align 4
  %add35 = add nsw i32 %48, 1
  %mul36 = mul nsw i32 %add35, 5
  %conv37 = sext i32 %mul36 to i64
  %mul38 = mul i64 4, %conv37
  %call39 = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 144, i8* %47, i64 %mul38)
  %49 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx_mem40 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %49, i32 0, i32 4
  store i8* %call39, i8** %xmx_mem40, align 8
  %50 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %50, i32 0, i32 5
  %51 = load i8*, i8** %mmx_mem, align 8
  %52 = load i32, i32* %N.addr, align 4
  %add41 = add nsw i32 %52, 1
  %53 = load i32, i32* %M.addr, align 4
  %add42 = add nsw i32 %53, 2
  %mul43 = mul nsw i32 %add41, %add42
  %conv44 = sext i32 %mul43 to i64
  %mul45 = mul i64 4, %conv44
  %call46 = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 145, i8* %51, i64 %mul45)
  %54 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx_mem47 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %54, i32 0, i32 5
  store i8* %call46, i8** %mmx_mem47, align 8
  %55 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %55, i32 0, i32 6
  %56 = load i8*, i8** %imx_mem, align 8
  %57 = load i32, i32* %N.addr, align 4
  %add48 = add nsw i32 %57, 1
  %58 = load i32, i32* %M.addr, align 4
  %add49 = add nsw i32 %58, 2
  %mul50 = mul nsw i32 %add48, %add49
  %conv51 = sext i32 %mul50 to i64
  %mul52 = mul i64 4, %conv51
  %call53 = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 146, i8* %56, i64 %mul52)
  %59 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx_mem54 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %59, i32 0, i32 6
  store i8* %call53, i8** %imx_mem54, align 8
  %60 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %60, i32 0, i32 7
  %61 = load i8*, i8** %dmx_mem, align 8
  %62 = load i32, i32* %N.addr, align 4
  %add55 = add nsw i32 %62, 1
  %63 = load i32, i32* %M.addr, align 4
  %add56 = add nsw i32 %63, 2
  %mul57 = mul nsw i32 %add55, %add56
  %conv58 = sext i32 %mul57 to i64
  %mul59 = mul i64 4, %conv58
  %call60 = call i8* @sre_realloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 147, i8* %61, i64 %mul59)
  %64 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx_mem61 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %64, i32 0, i32 7
  store i8* %call60, i8** %dmx_mem61, align 8
  %65 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx_mem62 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %65, i32 0, i32 4
  %66 = load i8*, i8** %xmx_mem62, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx63 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %68, i32 0, i32 0
  %69 = load i32**, i32*** %xmx63, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %69, i64 0
  store i32* %67, i32** %arrayidx, align 8
  %70 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx_mem64 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %70, i32 0, i32 5
  %71 = load i8*, i8** %mmx_mem64, align 8
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx65 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %73, i32 0, i32 1
  %74 = load i32**, i32*** %mmx65, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %74, i64 0
  store i32* %72, i32** %arrayidx66, align 8
  %75 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx_mem67 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %75, i32 0, i32 6
  %76 = load i8*, i8** %imx_mem67, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx68 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %78, i32 0, i32 2
  %79 = load i32**, i32*** %imx68, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %79, i64 0
  store i32* %77, i32** %arrayidx69, align 8
  %80 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx_mem70 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %80, i32 0, i32 7
  %81 = load i8*, i8** %dmx_mem70, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx71 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %83, i32 0, i32 3
  %84 = load i32**, i32*** %dmx71, align 8
  %arrayidx72 = getelementptr inbounds i32*, i32** %84, i64 0
  store i32* %82, i32** %arrayidx72, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %N.addr, align 4
  %cmp73 = icmp sle i32 %85, %86
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx75 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %87, i32 0, i32 0
  %88 = load i32**, i32*** %xmx75, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %88, i64 0
  %89 = load i32*, i32** %arrayidx76, align 8
  %90 = load i32, i32* %i, align 4
  %mul77 = mul nsw i32 %90, 5
  %idx.ext = sext i32 %mul77 to i64
  %add.ptr = getelementptr inbounds i32, i32* %89, i64 %idx.ext
  %91 = load i32, i32* %i, align 4
  %idxprom = sext i32 %91 to i64
  %92 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx78 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %92, i32 0, i32 0
  %93 = load i32**, i32*** %xmx78, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %93, i64 %idxprom
  store i32* %add.ptr, i32** %arrayidx79, align 8
  %94 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx80 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %94, i32 0, i32 1
  %95 = load i32**, i32*** %mmx80, align 8
  %arrayidx81 = getelementptr inbounds i32*, i32** %95, i64 0
  %96 = load i32*, i32** %arrayidx81, align 8
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %M.addr, align 4
  %add82 = add nsw i32 %98, 2
  %mul83 = mul nsw i32 %97, %add82
  %idx.ext84 = sext i32 %mul83 to i64
  %add.ptr85 = getelementptr inbounds i32, i32* %96, i64 %idx.ext84
  %99 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %99 to i64
  %100 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx87 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %100, i32 0, i32 1
  %101 = load i32**, i32*** %mmx87, align 8
  %arrayidx88 = getelementptr inbounds i32*, i32** %101, i64 %idxprom86
  store i32* %add.ptr85, i32** %arrayidx88, align 8
  %102 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx89 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %102, i32 0, i32 2
  %103 = load i32**, i32*** %imx89, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %103, i64 0
  %104 = load i32*, i32** %arrayidx90, align 8
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* %M.addr, align 4
  %add91 = add nsw i32 %106, 2
  %mul92 = mul nsw i32 %105, %add91
  %idx.ext93 = sext i32 %mul92 to i64
  %add.ptr94 = getelementptr inbounds i32, i32* %104, i64 %idx.ext93
  %107 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %107 to i64
  %108 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx96 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %108, i32 0, i32 2
  %109 = load i32**, i32*** %imx96, align 8
  %arrayidx97 = getelementptr inbounds i32*, i32** %109, i64 %idxprom95
  store i32* %add.ptr94, i32** %arrayidx97, align 8
  %110 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx98 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %110, i32 0, i32 3
  %111 = load i32**, i32*** %dmx98, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %111, i64 0
  %112 = load i32*, i32** %arrayidx99, align 8
  %113 = load i32, i32* %i, align 4
  %114 = load i32, i32* %M.addr, align 4
  %add100 = add nsw i32 %114, 2
  %mul101 = mul nsw i32 %113, %add100
  %idx.ext102 = sext i32 %mul101 to i64
  %add.ptr103 = getelementptr inbounds i32, i32* %112, i64 %idx.ext102
  %115 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %115 to i64
  %116 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx105 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %116, i32 0, i32 3
  %117 = load i32**, i32*** %dmx105, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %117, i64 %idxprom104
  store i32* %add.ptr103, i32** %arrayidx106, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %118 = load i32, i32* %i, align 4
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %DONE

DONE:                                             ; preds = %for.end, %if.then
  %119 = load i32***, i32**** %xmx.addr, align 8
  %cmp107 = icmp ne i32*** %119, null
  br i1 %cmp107, label %if.then.109, label %if.end.111

if.then.109:                                      ; preds = %DONE
  %120 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx110 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %120, i32 0, i32 0
  %121 = load i32**, i32*** %xmx110, align 8
  %122 = load i32***, i32**** %xmx.addr, align 8
  store i32** %121, i32*** %122, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.109, %DONE
  %123 = load i32***, i32**** %mmx.addr, align 8
  %cmp112 = icmp ne i32*** %123, null
  br i1 %cmp112, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.end.111
  %124 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx115 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %124, i32 0, i32 1
  %125 = load i32**, i32*** %mmx115, align 8
  %126 = load i32***, i32**** %mmx.addr, align 8
  store i32** %125, i32*** %126, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.end.111
  %127 = load i32***, i32**** %imx.addr, align 8
  %cmp117 = icmp ne i32*** %127, null
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.end.116
  %128 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx120 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %128, i32 0, i32 2
  %129 = load i32**, i32*** %imx120, align 8
  %130 = load i32***, i32**** %imx.addr, align 8
  store i32** %129, i32*** %130, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.end.116
  %131 = load i32***, i32**** %dmx.addr, align 8
  %cmp122 = icmp ne i32*** %131, null
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.121
  %132 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx125 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %132, i32 0, i32 3
  %133 = load i32**, i32*** %dmx125, align 8
  %134 = load i32***, i32**** %dmx.addr, align 8
  store i32** %133, i32*** %134, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.121
  ret void
}

declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %rows, i32 %M, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %xmx.addr = alloca i32***, align 8
  %mmx.addr = alloca i32***, align 8
  %imx.addr = alloca i32***, align 8
  %dmx.addr = alloca i32***, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i32*** %xmx, i32**** %xmx.addr, align 8
  store i32*** %mmx, i32**** %mmx.addr, align 8
  store i32*** %imx, i32**** %imx.addr, align 8
  store i32*** %dmx, i32**** %dmx.addr, align 8
  %0 = load i32, i32* %rows.addr, align 4
  %sub = sub nsw i32 %0, 1
  %1 = load i32, i32* %M.addr, align 4
  %call = call %struct.dpmatrix_s* @CreatePlan7Matrix(i32 %sub, i32 %1, i32 0, i32 0)
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %mx, align 8
  %2 = load i32***, i32**** %xmx.addr, align 8
  %cmp = icmp ne i32*** %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %3, i32 0, i32 0
  %4 = load i32**, i32*** %xmx1, align 8
  %5 = load i32***, i32**** %xmx.addr, align 8
  store i32** %4, i32*** %5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32***, i32**** %mmx.addr, align 8
  %cmp2 = icmp ne i32*** %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %mmx4 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %7, i32 0, i32 1
  %8 = load i32**, i32*** %mmx4, align 8
  %9 = load i32***, i32**** %mmx.addr, align 8
  store i32** %8, i32*** %9, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %10 = load i32***, i32**** %imx.addr, align 8
  %cmp6 = icmp ne i32*** %10, null
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %11 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %imx8 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %11, i32 0, i32 2
  %12 = load i32**, i32*** %imx8, align 8
  %13 = load i32***, i32**** %imx.addr, align 8
  store i32** %12, i32*** %13, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %14 = load i32***, i32**** %dmx.addr, align 8
  %cmp10 = icmp ne i32*** %14, null
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %dmx12 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %15, i32 0, i32 3
  %16 = load i32**, i32*** %dmx12, align 8
  %17 = load i32***, i32**** %dmx.addr, align 8
  store i32** %16, i32*** %17, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %18 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  ret %struct.dpmatrix_s* %18
}

; Function Attrs: nounwind uwtable
define void @FreePlan7Matrix(%struct.dpmatrix_s* %mx) #0 {
entry:
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  %0 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %0, i32 0, i32 4
  %1 = load i8*, i8** %xmx_mem, align 8
  call void @free(i8* %1) #4
  %2 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %2, i32 0, i32 5
  %3 = load i8*, i8** %mmx_mem, align 8
  call void @free(i8* %3) #4
  %4 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %4, i32 0, i32 6
  %5 = load i8*, i8** %imx_mem, align 8
  call void @free(i8* %5) #4
  %6 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx_mem = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %6, i32 0, i32 7
  %7 = load i8*, i8** %dmx_mem, align 8
  call void @free(i8* %7) #4
  %8 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %8, i32 0, i32 0
  %9 = load i32**, i32*** %xmx, align 8
  %10 = bitcast i32** %9 to i8*
  call void @free(i8* %10) #4
  %11 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %11, i32 0, i32 1
  %12 = load i32**, i32*** %mmx, align 8
  %13 = bitcast i32** %12 to i8*
  call void @free(i8* %13) #4
  %14 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %14, i32 0, i32 2
  %15 = load i32**, i32*** %imx, align 8
  %16 = bitcast i32** %15 to i8*
  call void @free(i8* %16) #4
  %17 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %17, i32 0, i32 3
  %18 = load i32**, i32*** %dmx, align 8
  %19 = bitcast i32** %18 to i8*
  call void @free(i8* %19) #4
  %20 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %21 = bitcast %struct.dpmatrix_s* %20 to i8*
  call void @free(i8* %21) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.dpshadow_s* @AllocShadowMatrix(i32 %rows, i32 %M, i8*** %xtb, i8*** %mtb, i8*** %itb, i8*** %dtb) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %xtb.addr = alloca i8***, align 8
  %mtb.addr = alloca i8***, align 8
  %itb.addr = alloca i8***, align 8
  %dtb.addr = alloca i8***, align 8
  %tb = alloca %struct.dpshadow_s*, align 8
  %i = alloca i32, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store i8*** %xtb, i8**** %xtb.addr, align 8
  store i8*** %mtb, i8**** %mtb.addr, align 8
  store i8*** %itb, i8**** %itb.addr, align 8
  store i8*** %dtb, i8**** %dtb.addr, align 8
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 244, i64 40)
  %0 = bitcast i8* %call to %struct.dpshadow_s*
  store %struct.dpshadow_s* %0, %struct.dpshadow_s** %tb, align 8
  %1 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call1 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 245, i64 %mul)
  %2 = bitcast i8* %call1 to i8**
  %3 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %xtb2 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %3, i32 0, i32 0
  store i8** %2, i8*** %xtb2, align 8
  %4 = load i32, i32* %rows.addr, align 4
  %conv3 = sext i32 %4 to i64
  %mul4 = mul i64 8, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 246, i64 %mul4)
  %5 = bitcast i8* %call5 to i8**
  %6 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %mtb6 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %6, i32 0, i32 1
  store i8** %5, i8*** %mtb6, align 8
  %7 = load i32, i32* %rows.addr, align 4
  %conv7 = sext i32 %7 to i64
  %mul8 = mul i64 8, %conv7
  %call9 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 247, i64 %mul8)
  %8 = bitcast i8* %call9 to i8**
  %9 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %itb10 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %9, i32 0, i32 2
  store i8** %8, i8*** %itb10, align 8
  %10 = load i32, i32* %rows.addr, align 4
  %conv11 = sext i32 %10 to i64
  %mul12 = mul i64 8, %conv11
  %call13 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 248, i64 %mul12)
  %11 = bitcast i8* %call13 to i8**
  %12 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %dtb14 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %12, i32 0, i32 3
  store i8** %11, i8*** %dtb14, align 8
  %13 = load i32, i32* %rows.addr, align 4
  %conv15 = sext i32 %13 to i64
  %mul16 = mul i64 4, %conv15
  %call17 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 249, i64 %mul16)
  %14 = bitcast i8* %call17 to i32*
  %15 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %esrc = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %15, i32 0, i32 4
  store i32* %14, i32** %esrc, align 8
  %16 = load i32, i32* %rows.addr, align 4
  %mul18 = mul nsw i32 %16, 5
  %conv19 = sext i32 %mul18 to i64
  %mul20 = mul i64 1, %conv19
  %call21 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 250, i64 %mul20)
  %17 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %xtb22 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %17, i32 0, i32 0
  %18 = load i8**, i8*** %xtb22, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %call21, i8** %arrayidx, align 8
  %19 = load i32, i32* %rows.addr, align 4
  %20 = load i32, i32* %M.addr, align 4
  %add = add nsw i32 %20, 2
  %mul23 = mul nsw i32 %19, %add
  %conv24 = sext i32 %mul23 to i64
  %mul25 = mul i64 1, %conv24
  %call26 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 251, i64 %mul25)
  %21 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %mtb27 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %21, i32 0, i32 1
  %22 = load i8**, i8*** %mtb27, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %22, i64 0
  store i8* %call26, i8** %arrayidx28, align 8
  %23 = load i32, i32* %rows.addr, align 4
  %24 = load i32, i32* %M.addr, align 4
  %add29 = add nsw i32 %24, 2
  %mul30 = mul nsw i32 %23, %add29
  %conv31 = sext i32 %mul30 to i64
  %mul32 = mul i64 1, %conv31
  %call33 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 252, i64 %mul32)
  %25 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %itb34 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %25, i32 0, i32 2
  %26 = load i8**, i8*** %itb34, align 8
  %arrayidx35 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %call33, i8** %arrayidx35, align 8
  %27 = load i32, i32* %rows.addr, align 4
  %28 = load i32, i32* %M.addr, align 4
  %add36 = add nsw i32 %28, 2
  %mul37 = mul nsw i32 %27, %add36
  %conv38 = sext i32 %mul37 to i64
  %mul39 = mul i64 1, %conv38
  %call40 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 253, i64 %mul39)
  %29 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %dtb41 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %29, i32 0, i32 3
  %30 = load i8**, i8*** %dtb41, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %30, i64 0
  store i8* %call40, i8** %arrayidx42, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %31, %32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %xtb44 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %33, i32 0, i32 0
  %34 = load i8**, i8*** %xtb44, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %34, i64 0
  %35 = load i8*, i8** %arrayidx45, align 8
  %36 = load i32, i32* %i, align 4
  %mul46 = mul nsw i32 %36, 5
  %idx.ext = sext i32 %mul46 to i64
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 %idx.ext
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %xtb47 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %38, i32 0, i32 0
  %39 = load i8**, i8*** %xtb47, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %39, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx48, align 8
  %40 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %mtb49 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %40, i32 0, i32 1
  %41 = load i8**, i8*** %mtb49, align 8
  %arrayidx50 = getelementptr inbounds i8*, i8** %41, i64 0
  %42 = load i8*, i8** %arrayidx50, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %M.addr, align 4
  %add51 = add nsw i32 %44, 2
  %mul52 = mul nsw i32 %43, %add51
  %idx.ext53 = sext i32 %mul52 to i64
  %add.ptr54 = getelementptr inbounds i8, i8* %42, i64 %idx.ext53
  %45 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %45 to i64
  %46 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %mtb56 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %46, i32 0, i32 1
  %47 = load i8**, i8*** %mtb56, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %47, i64 %idxprom55
  store i8* %add.ptr54, i8** %arrayidx57, align 8
  %48 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %itb58 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %48, i32 0, i32 2
  %49 = load i8**, i8*** %itb58, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %49, i64 0
  %50 = load i8*, i8** %arrayidx59, align 8
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %M.addr, align 4
  %add60 = add nsw i32 %52, 2
  %mul61 = mul nsw i32 %51, %add60
  %idx.ext62 = sext i32 %mul61 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %50, i64 %idx.ext62
  %53 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %53 to i64
  %54 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %itb65 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %54, i32 0, i32 2
  %55 = load i8**, i8*** %itb65, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %55, i64 %idxprom64
  store i8* %add.ptr63, i8** %arrayidx66, align 8
  %56 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %dtb67 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %56, i32 0, i32 3
  %57 = load i8**, i8*** %dtb67, align 8
  %arrayidx68 = getelementptr inbounds i8*, i8** %57, i64 0
  %58 = load i8*, i8** %arrayidx68, align 8
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %M.addr, align 4
  %add69 = add nsw i32 %60, 2
  %mul70 = mul nsw i32 %59, %add69
  %idx.ext71 = sext i32 %mul70 to i64
  %add.ptr72 = getelementptr inbounds i8, i8* %58, i64 %idx.ext71
  %61 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %61 to i64
  %62 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %dtb74 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %62, i32 0, i32 3
  %63 = load i8**, i8*** %dtb74, align 8
  %arrayidx75 = getelementptr inbounds i8*, i8** %63, i64 %idxprom73
  store i8* %add.ptr72, i8** %arrayidx75, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %64 = load i32, i32* %i, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %65 = load i8***, i8**** %xtb.addr, align 8
  %cmp76 = icmp ne i8*** %65, null
  br i1 %cmp76, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %66 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %xtb78 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %66, i32 0, i32 0
  %67 = load i8**, i8*** %xtb78, align 8
  %68 = load i8***, i8**** %xtb.addr, align 8
  store i8** %67, i8*** %68, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %69 = load i8***, i8**** %mtb.addr, align 8
  %cmp79 = icmp ne i8*** %69, null
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end
  %70 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %mtb82 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %70, i32 0, i32 1
  %71 = load i8**, i8*** %mtb82, align 8
  %72 = load i8***, i8**** %mtb.addr, align 8
  store i8** %71, i8*** %72, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end
  %73 = load i8***, i8**** %itb.addr, align 8
  %cmp84 = icmp ne i8*** %73, null
  br i1 %cmp84, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %if.end.83
  %74 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %itb87 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %74, i32 0, i32 2
  %75 = load i8**, i8*** %itb87, align 8
  %76 = load i8***, i8**** %itb.addr, align 8
  store i8** %75, i8*** %76, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.86, %if.end.83
  %77 = load i8***, i8**** %dtb.addr, align 8
  %cmp89 = icmp ne i8*** %77, null
  br i1 %cmp89, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end.88
  %78 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %dtb92 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %78, i32 0, i32 3
  %79 = load i8**, i8*** %dtb92, align 8
  %80 = load i8***, i8**** %dtb.addr, align 8
  store i8** %79, i8*** %80, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.end.88
  %81 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  ret %struct.dpshadow_s* %81
}

; Function Attrs: nounwind uwtable
define void @FreeShadowMatrix(%struct.dpshadow_s* %tb) #0 {
entry:
  %tb.addr = alloca %struct.dpshadow_s*, align 8
  store %struct.dpshadow_s* %tb, %struct.dpshadow_s** %tb.addr, align 8
  %0 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %xtb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %0, i32 0, i32 0
  %1 = load i8**, i8*** %xtb, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %2) #4
  %3 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %mtb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %3, i32 0, i32 1
  %4 = load i8**, i8*** %mtb, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx1, align 8
  call void @free(i8* %5) #4
  %6 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %itb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %6, i32 0, i32 2
  %7 = load i8**, i8*** %itb, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx2, align 8
  call void @free(i8* %8) #4
  %9 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %dtb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %9, i32 0, i32 3
  %10 = load i8**, i8*** %dtb, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx3, align 8
  call void @free(i8* %11) #4
  %12 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %esrc = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %12, i32 0, i32 4
  %13 = load i32*, i32** %esrc, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #4
  %15 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %xtb4 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %15, i32 0, i32 0
  %16 = load i8**, i8*** %xtb4, align 8
  %17 = bitcast i8** %16 to i8*
  call void @free(i8* %17) #4
  %18 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %mtb5 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %18, i32 0, i32 1
  %19 = load i8**, i8*** %mtb5, align 8
  %20 = bitcast i8** %19 to i8*
  call void @free(i8* %20) #4
  %21 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %itb6 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %21, i32 0, i32 2
  %22 = load i8**, i8*** %itb6, align 8
  %23 = bitcast i8** %22 to i8*
  call void @free(i8* %23) #4
  %24 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %dtb7 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %24, i32 0, i32 3
  %25 = load i8**, i8*** %dtb7, align 8
  %26 = bitcast i8** %25 to i8*
  call void @free(i8* %26) #4
  %27 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %28 = bitcast %struct.dpshadow_s* %27 to i8*
  call void @free(i8* %28) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @P7ViterbiSize(i32 %L, i32 %M) #0 {
entry:
  %L.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  %Mbytes = alloca float, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  store float 8.000000e+01, float* %Mbytes, align 4
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sitofp i32 %add to float
  %conv1 = fpext float %conv to double
  %mul = fmul double 3.000000e+00, %conv1
  %1 = load i32, i32* %M.addr, align 4
  %add2 = add nsw i32 %1, 2
  %conv3 = sitofp i32 %add2 to float
  %conv4 = fpext float %conv3 to double
  %mul5 = fmul double %mul, %conv4
  %mul6 = fmul double %mul5, 4.000000e+00
  %2 = load float, float* %Mbytes, align 4
  %conv7 = fpext float %2 to double
  %add8 = fadd double %conv7, %mul6
  %conv9 = fptrunc double %add8 to float
  store float %conv9, float* %Mbytes, align 4
  %3 = load i32, i32* %L.addr, align 4
  %add10 = add nsw i32 %3, 1
  %conv11 = sitofp i32 %add10 to float
  %conv12 = fpext float %conv11 to double
  %mul13 = fmul double 4.000000e+00, %conv12
  %mul14 = fmul double %mul13, 8.000000e+00
  %4 = load float, float* %Mbytes, align 4
  %conv15 = fpext float %4 to double
  %add16 = fadd double %conv15, %mul14
  %conv17 = fptrunc double %add16 to float
  store float %conv17, float* %Mbytes, align 4
  %5 = load i32, i32* %L.addr, align 4
  %add18 = add nsw i32 %5, 1
  %conv19 = sitofp i32 %add18 to float
  %conv20 = fpext float %conv19 to double
  %mul21 = fmul double 5.000000e+00, %conv20
  %mul22 = fmul double %mul21, 4.000000e+00
  %6 = load float, float* %Mbytes, align 4
  %conv23 = fpext float %6 to double
  %add24 = fadd double %conv23, %mul22
  %conv25 = fptrunc double %add24 to float
  store float %conv25, float* %Mbytes, align 4
  %7 = load float, float* %Mbytes, align 4
  %conv26 = fpext float %7 to double
  %div = fdiv double %conv26, 1.048576e+06
  %conv27 = fptrunc double %div to float
  store float %conv27, float* %Mbytes, align 4
  %8 = load float, float* %Mbytes, align 4
  %conv28 = fptosi float %8 to i32
  ret i32 %conv28
}

; Function Attrs: nounwind uwtable
define i32 @P7SmallViterbiSize(i32 %L, i32 %M) #0 {
entry:
  %L.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  %0 = load i32, i32* %M.addr, align 4
  %add = add nsw i32 %0, 2
  %mul = mul nsw i32 12, %add
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %add2 = add i64 160, %mul1
  %add3 = add i64 %add2, 128
  %add4 = add i64 %add3, 80
  %1 = load i32, i32* %L.addr, align 4
  %add5 = add nsw i32 %1, 1
  %mul6 = mul nsw i32 2, %add5
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %add9 = add i64 %add4, %mul8
  %div = udiv i64 %add9, 1000000
  %conv10 = trunc i64 %div to i32
  ret i32 %conv10
}

; Function Attrs: nounwind uwtable
define i32 @P7WeeViterbiSize(i32 %L, i32 %M) #0 {
entry:
  %L.addr = alloca i32, align 4
  %M.addr = alloca i32, align 4
  store i32 %L, i32* %L.addr, align 4
  store i32 %M, i32* %M.addr, align 4
  %0 = load i32, i32* %M.addr, align 4
  %add = add nsw i32 %0, 2
  %mul = mul nsw i32 12, %add
  %conv = sext i32 %mul to i64
  %mul1 = mul i64 %conv, 4
  %add2 = add i64 160, %mul1
  %add3 = add i64 %add2, 128
  %add4 = add i64 %add3, 80
  %1 = load i32, i32* %L.addr, align 4
  %add5 = add nsw i32 %1, 2
  %mul6 = mul nsw i32 2, %add5
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 4
  %add9 = add i64 %add4, %mul8
  %2 = load i32, i32* %L.addr, align 4
  %add10 = add nsw i32 %2, 2
  %conv11 = sext i32 %add10 to i64
  %mul12 = mul i64 %conv11, 4
  %add13 = add i64 %add9, %mul12
  %3 = load i32, i32* %L.addr, align 4
  %add14 = add nsw i32 %3, 2
  %conv15 = sext i32 %add14 to i64
  %mul16 = mul i64 %conv15, 1
  %add17 = add i64 %add13, %mul16
  %div = udiv i64 %add17, 1000000
  %conv18 = trunc i64 %div to i32
  ret i32 %conv18
}

; Function Attrs: nounwind uwtable
define float @P7Forward(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_mx.addr = alloca %struct.dpmatrix_s**, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sc = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s** %ret_mx, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  %2 = load i32, i32* %M, align 4
  %call = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %add, i32 %2, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %mx, align 8
  %3 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %3, i64 0
  %4 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 4
  store i32 0, i32* %arrayidx1, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 33
  %arrayidx2 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32**, i32*** %xmx, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %7, i64 0
  %8 = load i32*, i32** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %6, i32* %arrayidx5, align 4
  %9 = load i32**, i32*** %xmx, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 3
  store i32 -987654321, i32* %arrayidx7, align 4
  %11 = load i32**, i32*** %xmx, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %11, i64 0
  %12 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 -987654321, i32* %arrayidx9, align 4
  %13 = load i32**, i32*** %xmx, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %13, i64 0
  %14 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 -987654321, i32* %arrayidx11, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %k, align 4
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 20
  %17 = load i32, i32* %M12, align 4
  %cmp = icmp sle i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %k, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32**, i32*** %dmx, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %19, i64 0
  %20 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 %idxprom
  store i32 -987654321, i32* %arrayidx14, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i32**, i32*** %imx, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %22, i64 0
  %23 = load i32*, i32** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom15
  store i32 -987654321, i32* %arrayidx17, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load i32**, i32*** %mmx, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %25, i64 0
  %26 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom18
  store i32 -987654321, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.330, %for.end
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %L.addr, align 4
  %cmp22 = icmp sle i32 %28, %29
  br i1 %cmp22, label %for.body.23, label %for.end.332

for.body.23:                                      ; preds = %for.cond.21
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %31 = load i32**, i32*** %dmx, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %31, i64 %idxprom24
  %32 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 -987654321, i32* %arrayidx26, align 4
  %33 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %33 to i64
  %34 = load i32**, i32*** %imx, align 8
  %arrayidx28 = getelementptr inbounds i32*, i32** %34, i64 %idxprom27
  %35 = load i32*, i32** %arrayidx28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 -987654321, i32* %arrayidx29, align 4
  %36 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %36 to i64
  %37 = load i32**, i32*** %mmx, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %37, i64 %idxprom30
  %38 = load i32*, i32** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 -987654321, i32* %arrayidx32, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.160, %for.body.23
  %39 = load i32, i32* %k, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M34 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 20
  %41 = load i32, i32* %M34, align 4
  %cmp35 = icmp slt i32 %39, %41
  br i1 %cmp35, label %for.body.36, label %for.end.162

for.body.36:                                      ; preds = %for.cond.33
  %42 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %42, 1
  %idxprom37 = sext i32 %sub to i64
  %43 = load i32, i32* %i, align 4
  %sub38 = sub nsw i32 %43, 1
  %idxprom39 = sext i32 %sub38 to i64
  %44 = load i32**, i32*** %mmx, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %44, i64 %idxprom39
  %45 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %45, i64 %idxprom37
  %46 = load i32, i32* %arrayidx41, align 4
  %47 = load i32, i32* %k, align 4
  %sub42 = sub nsw i32 %47, 1
  %idxprom43 = sext i32 %sub42 to i64
  %48 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %48, i32 0, i32 30
  %49 = load i32**, i32*** %tsc, align 8
  %arrayidx44 = getelementptr inbounds i32*, i32** %49, i64 0
  %50 = load i32*, i32** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %50, i64 %idxprom43
  %51 = load i32, i32* %arrayidx45, align 4
  %add46 = add nsw i32 %46, %51
  %52 = load i32, i32* %k, align 4
  %sub47 = sub nsw i32 %52, 1
  %idxprom48 = sext i32 %sub47 to i64
  %53 = load i32, i32* %i, align 4
  %sub49 = sub nsw i32 %53, 1
  %idxprom50 = sext i32 %sub49 to i64
  %54 = load i32**, i32*** %imx, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %54, i64 %idxprom50
  %55 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %55, i64 %idxprom48
  %56 = load i32, i32* %arrayidx52, align 4
  %57 = load i32, i32* %k, align 4
  %sub53 = sub nsw i32 %57, 1
  %idxprom54 = sext i32 %sub53 to i64
  %58 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc55 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %58, i32 0, i32 30
  %59 = load i32**, i32*** %tsc55, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %59, i64 3
  %60 = load i32*, i32** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %60, i64 %idxprom54
  %61 = load i32, i32* %arrayidx57, align 4
  %add58 = add nsw i32 %56, %61
  %call59 = call i32 @ILogsum(i32 %add46, i32 %add58)
  %62 = load i32, i32* %i, align 4
  %sub60 = sub nsw i32 %62, 1
  %idxprom61 = sext i32 %sub60 to i64
  %63 = load i32**, i32*** %xmx, align 8
  %arrayidx62 = getelementptr inbounds i32*, i32** %63, i64 %idxprom61
  %64 = load i32*, i32** %arrayidx62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %64, i64 0
  %65 = load i32, i32* %arrayidx63, align 4
  %66 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %66 to i64
  %67 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %67, i32 0, i32 34
  %68 = load i32*, i32** %bsc, align 8
  %arrayidx65 = getelementptr inbounds i32, i32* %68, i64 %idxprom64
  %69 = load i32, i32* %arrayidx65, align 4
  %add66 = add nsw i32 %65, %69
  %70 = load i32, i32* %k, align 4
  %sub67 = sub nsw i32 %70, 1
  %idxprom68 = sext i32 %sub67 to i64
  %71 = load i32, i32* %i, align 4
  %sub69 = sub nsw i32 %71, 1
  %idxprom70 = sext i32 %sub69 to i64
  %72 = load i32**, i32*** %dmx, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %72, i64 %idxprom70
  %73 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %73, i64 %idxprom68
  %74 = load i32, i32* %arrayidx72, align 4
  %75 = load i32, i32* %k, align 4
  %sub73 = sub nsw i32 %75, 1
  %idxprom74 = sext i32 %sub73 to i64
  %76 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc75 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %76, i32 0, i32 30
  %77 = load i32**, i32*** %tsc75, align 8
  %arrayidx76 = getelementptr inbounds i32*, i32** %77, i64 5
  %78 = load i32*, i32** %arrayidx76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %78, i64 %idxprom74
  %79 = load i32, i32* %arrayidx77, align 4
  %add78 = add nsw i32 %74, %79
  %call79 = call i32 @ILogsum(i32 %add66, i32 %add78)
  %call80 = call i32 @ILogsum(i32 %call59, i32 %call79)
  %80 = load i32, i32* %k, align 4
  %idxprom81 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %81 to i64
  %82 = load i32**, i32*** %mmx, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %82, i64 %idxprom82
  %83 = load i32*, i32** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %83, i64 %idxprom81
  store i32 %call80, i32* %arrayidx84, align 4
  %84 = load i32, i32* %k, align 4
  %idxprom85 = sext i32 %84 to i64
  %85 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %85 to i64
  %86 = load i8*, i8** %dsq.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %86, i64 %idxprom86
  %87 = load i8, i8* %arrayidx87, align 1
  %conv = sext i8 %87 to i32
  %idxprom88 = sext i32 %conv to i64
  %88 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 31
  %89 = load i32**, i32*** %msc, align 8
  %arrayidx89 = getelementptr inbounds i32*, i32** %89, i64 %idxprom88
  %90 = load i32*, i32** %arrayidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %90, i64 %idxprom85
  %91 = load i32, i32* %arrayidx90, align 4
  %92 = load i32, i32* %k, align 4
  %idxprom91 = sext i32 %92 to i64
  %93 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %93 to i64
  %94 = load i32**, i32*** %mmx, align 8
  %arrayidx93 = getelementptr inbounds i32*, i32** %94, i64 %idxprom92
  %95 = load i32*, i32** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %95, i64 %idxprom91
  %96 = load i32, i32* %arrayidx94, align 4
  %add95 = add nsw i32 %96, %91
  store i32 %add95, i32* %arrayidx94, align 4
  %97 = load i32, i32* %k, align 4
  %sub96 = sub nsw i32 %97, 1
  %idxprom97 = sext i32 %sub96 to i64
  %98 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %98 to i64
  %99 = load i32**, i32*** %mmx, align 8
  %arrayidx99 = getelementptr inbounds i32*, i32** %99, i64 %idxprom98
  %100 = load i32*, i32** %arrayidx99, align 8
  %arrayidx100 = getelementptr inbounds i32, i32* %100, i64 %idxprom97
  %101 = load i32, i32* %arrayidx100, align 4
  %102 = load i32, i32* %k, align 4
  %sub101 = sub nsw i32 %102, 1
  %idxprom102 = sext i32 %sub101 to i64
  %103 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %103, i32 0, i32 30
  %104 = load i32**, i32*** %tsc103, align 8
  %arrayidx104 = getelementptr inbounds i32*, i32** %104, i64 2
  %105 = load i32*, i32** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %105, i64 %idxprom102
  %106 = load i32, i32* %arrayidx105, align 4
  %add106 = add nsw i32 %101, %106
  %107 = load i32, i32* %k, align 4
  %sub107 = sub nsw i32 %107, 1
  %idxprom108 = sext i32 %sub107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %108 to i64
  %109 = load i32**, i32*** %dmx, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %109, i64 %idxprom109
  %110 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %110, i64 %idxprom108
  %111 = load i32, i32* %arrayidx111, align 4
  %112 = load i32, i32* %k, align 4
  %sub112 = sub nsw i32 %112, 1
  %idxprom113 = sext i32 %sub112 to i64
  %113 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc114 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %113, i32 0, i32 30
  %114 = load i32**, i32*** %tsc114, align 8
  %arrayidx115 = getelementptr inbounds i32*, i32** %114, i64 6
  %115 = load i32*, i32** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %115, i64 %idxprom113
  %116 = load i32, i32* %arrayidx116, align 4
  %add117 = add nsw i32 %111, %116
  %call118 = call i32 @ILogsum(i32 %add106, i32 %add117)
  %117 = load i32, i32* %k, align 4
  %idxprom119 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %118 to i64
  %119 = load i32**, i32*** %dmx, align 8
  %arrayidx121 = getelementptr inbounds i32*, i32** %119, i64 %idxprom120
  %120 = load i32*, i32** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %120, i64 %idxprom119
  store i32 %call118, i32* %arrayidx122, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %121 to i64
  %122 = load i32, i32* %i, align 4
  %sub124 = sub nsw i32 %122, 1
  %idxprom125 = sext i32 %sub124 to i64
  %123 = load i32**, i32*** %mmx, align 8
  %arrayidx126 = getelementptr inbounds i32*, i32** %123, i64 %idxprom125
  %124 = load i32*, i32** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %124, i64 %idxprom123
  %125 = load i32, i32* %arrayidx127, align 4
  %126 = load i32, i32* %k, align 4
  %idxprom128 = sext i32 %126 to i64
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc129 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 30
  %128 = load i32**, i32*** %tsc129, align 8
  %arrayidx130 = getelementptr inbounds i32*, i32** %128, i64 1
  %129 = load i32*, i32** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %129, i64 %idxprom128
  %130 = load i32, i32* %arrayidx131, align 4
  %add132 = add nsw i32 %125, %130
  %131 = load i32, i32* %k, align 4
  %idxprom133 = sext i32 %131 to i64
  %132 = load i32, i32* %i, align 4
  %sub134 = sub nsw i32 %132, 1
  %idxprom135 = sext i32 %sub134 to i64
  %133 = load i32**, i32*** %imx, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %133, i64 %idxprom135
  %134 = load i32*, i32** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %134, i64 %idxprom133
  %135 = load i32, i32* %arrayidx137, align 4
  %136 = load i32, i32* %k, align 4
  %idxprom138 = sext i32 %136 to i64
  %137 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc139 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 30
  %138 = load i32**, i32*** %tsc139, align 8
  %arrayidx140 = getelementptr inbounds i32*, i32** %138, i64 4
  %139 = load i32*, i32** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %139, i64 %idxprom138
  %140 = load i32, i32* %arrayidx141, align 4
  %add142 = add nsw i32 %135, %140
  %call143 = call i32 @ILogsum(i32 %add132, i32 %add142)
  %141 = load i32, i32* %k, align 4
  %idxprom144 = sext i32 %141 to i64
  %142 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %142 to i64
  %143 = load i32**, i32*** %imx, align 8
  %arrayidx146 = getelementptr inbounds i32*, i32** %143, i64 %idxprom145
  %144 = load i32*, i32** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds i32, i32* %144, i64 %idxprom144
  store i32 %call143, i32* %arrayidx147, align 4
  %145 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %145 to i64
  %146 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %146 to i64
  %147 = load i8*, i8** %dsq.addr, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %147, i64 %idxprom149
  %148 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %148 to i32
  %idxprom152 = sext i32 %conv151 to i64
  %149 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %149, i32 0, i32 32
  %150 = load i32**, i32*** %isc, align 8
  %arrayidx153 = getelementptr inbounds i32*, i32** %150, i64 %idxprom152
  %151 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %151, i64 %idxprom148
  %152 = load i32, i32* %arrayidx154, align 4
  %153 = load i32, i32* %k, align 4
  %idxprom155 = sext i32 %153 to i64
  %154 = load i32, i32* %i, align 4
  %idxprom156 = sext i32 %154 to i64
  %155 = load i32**, i32*** %imx, align 8
  %arrayidx157 = getelementptr inbounds i32*, i32** %155, i64 %idxprom156
  %156 = load i32*, i32** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %156, i64 %idxprom155
  %157 = load i32, i32* %arrayidx158, align 4
  %add159 = add nsw i32 %157, %152
  store i32 %add159, i32* %arrayidx158, align 4
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.36
  %158 = load i32, i32* %k, align 4
  %inc161 = add nsw i32 %158, 1
  store i32 %inc161, i32* %k, align 4
  br label %for.cond.33

for.end.162:                                      ; preds = %for.cond.33
  %159 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M163 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %159, i32 0, i32 20
  %160 = load i32, i32* %M163, align 4
  %sub164 = sub nsw i32 %160, 1
  %idxprom165 = sext i32 %sub164 to i64
  %161 = load i32, i32* %i, align 4
  %sub166 = sub nsw i32 %161, 1
  %idxprom167 = sext i32 %sub166 to i64
  %162 = load i32**, i32*** %mmx, align 8
  %arrayidx168 = getelementptr inbounds i32*, i32** %162, i64 %idxprom167
  %163 = load i32*, i32** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %163, i64 %idxprom165
  %164 = load i32, i32* %arrayidx169, align 4
  %165 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M170 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %165, i32 0, i32 20
  %166 = load i32, i32* %M170, align 4
  %sub171 = sub nsw i32 %166, 1
  %idxprom172 = sext i32 %sub171 to i64
  %167 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc173 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %167, i32 0, i32 30
  %168 = load i32**, i32*** %tsc173, align 8
  %arrayidx174 = getelementptr inbounds i32*, i32** %168, i64 0
  %169 = load i32*, i32** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %169, i64 %idxprom172
  %170 = load i32, i32* %arrayidx175, align 4
  %add176 = add nsw i32 %164, %170
  %171 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M177 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %171, i32 0, i32 20
  %172 = load i32, i32* %M177, align 4
  %sub178 = sub nsw i32 %172, 1
  %idxprom179 = sext i32 %sub178 to i64
  %173 = load i32, i32* %i, align 4
  %sub180 = sub nsw i32 %173, 1
  %idxprom181 = sext i32 %sub180 to i64
  %174 = load i32**, i32*** %imx, align 8
  %arrayidx182 = getelementptr inbounds i32*, i32** %174, i64 %idxprom181
  %175 = load i32*, i32** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %175, i64 %idxprom179
  %176 = load i32, i32* %arrayidx183, align 4
  %177 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M184 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %177, i32 0, i32 20
  %178 = load i32, i32* %M184, align 4
  %sub185 = sub nsw i32 %178, 1
  %idxprom186 = sext i32 %sub185 to i64
  %179 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc187 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %179, i32 0, i32 30
  %180 = load i32**, i32*** %tsc187, align 8
  %arrayidx188 = getelementptr inbounds i32*, i32** %180, i64 3
  %181 = load i32*, i32** %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds i32, i32* %181, i64 %idxprom186
  %182 = load i32, i32* %arrayidx189, align 4
  %add190 = add nsw i32 %176, %182
  %call191 = call i32 @ILogsum(i32 %add176, i32 %add190)
  %183 = load i32, i32* %i, align 4
  %sub192 = sub nsw i32 %183, 1
  %idxprom193 = sext i32 %sub192 to i64
  %184 = load i32**, i32*** %xmx, align 8
  %arrayidx194 = getelementptr inbounds i32*, i32** %184, i64 %idxprom193
  %185 = load i32*, i32** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %185, i64 0
  %186 = load i32, i32* %arrayidx195, align 4
  %187 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M196 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %187, i32 0, i32 20
  %188 = load i32, i32* %M196, align 4
  %sub197 = sub nsw i32 %188, 1
  %idxprom198 = sext i32 %sub197 to i64
  %189 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc199 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %189, i32 0, i32 34
  %190 = load i32*, i32** %bsc199, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %190, i64 %idxprom198
  %191 = load i32, i32* %arrayidx200, align 4
  %add201 = add nsw i32 %186, %191
  %192 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M202 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %192, i32 0, i32 20
  %193 = load i32, i32* %M202, align 4
  %sub203 = sub nsw i32 %193, 1
  %idxprom204 = sext i32 %sub203 to i64
  %194 = load i32, i32* %i, align 4
  %sub205 = sub nsw i32 %194, 1
  %idxprom206 = sext i32 %sub205 to i64
  %195 = load i32**, i32*** %dmx, align 8
  %arrayidx207 = getelementptr inbounds i32*, i32** %195, i64 %idxprom206
  %196 = load i32*, i32** %arrayidx207, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %196, i64 %idxprom204
  %197 = load i32, i32* %arrayidx208, align 4
  %198 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M209 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %198, i32 0, i32 20
  %199 = load i32, i32* %M209, align 4
  %sub210 = sub nsw i32 %199, 1
  %idxprom211 = sext i32 %sub210 to i64
  %200 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc212 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %200, i32 0, i32 30
  %201 = load i32**, i32*** %tsc212, align 8
  %arrayidx213 = getelementptr inbounds i32*, i32** %201, i64 5
  %202 = load i32*, i32** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %202, i64 %idxprom211
  %203 = load i32, i32* %arrayidx214, align 4
  %add215 = add nsw i32 %197, %203
  %call216 = call i32 @ILogsum(i32 %add201, i32 %add215)
  %call217 = call i32 @ILogsum(i32 %call191, i32 %call216)
  %204 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M218 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %204, i32 0, i32 20
  %205 = load i32, i32* %M218, align 4
  %idxprom219 = sext i32 %205 to i64
  %206 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %206 to i64
  %207 = load i32**, i32*** %mmx, align 8
  %arrayidx221 = getelementptr inbounds i32*, i32** %207, i64 %idxprom220
  %208 = load i32*, i32** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %208, i64 %idxprom219
  store i32 %call217, i32* %arrayidx222, align 4
  %209 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M223 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %209, i32 0, i32 20
  %210 = load i32, i32* %M223, align 4
  %idxprom224 = sext i32 %210 to i64
  %211 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %211 to i64
  %212 = load i8*, i8** %dsq.addr, align 8
  %arrayidx226 = getelementptr inbounds i8, i8* %212, i64 %idxprom225
  %213 = load i8, i8* %arrayidx226, align 1
  %conv227 = sext i8 %213 to i32
  %idxprom228 = sext i32 %conv227 to i64
  %214 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc229 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %214, i32 0, i32 31
  %215 = load i32**, i32*** %msc229, align 8
  %arrayidx230 = getelementptr inbounds i32*, i32** %215, i64 %idxprom228
  %216 = load i32*, i32** %arrayidx230, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %216, i64 %idxprom224
  %217 = load i32, i32* %arrayidx231, align 4
  %218 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M232 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %218, i32 0, i32 20
  %219 = load i32, i32* %M232, align 4
  %idxprom233 = sext i32 %219 to i64
  %220 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %220 to i64
  %221 = load i32**, i32*** %mmx, align 8
  %arrayidx235 = getelementptr inbounds i32*, i32** %221, i64 %idxprom234
  %222 = load i32*, i32** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %222, i64 %idxprom233
  %223 = load i32, i32* %arrayidx236, align 4
  %add237 = add nsw i32 %223, %217
  store i32 %add237, i32* %arrayidx236, align 4
  %224 = load i32, i32* %i, align 4
  %sub238 = sub nsw i32 %224, 1
  %idxprom239 = sext i32 %sub238 to i64
  %225 = load i32**, i32*** %xmx, align 8
  %arrayidx240 = getelementptr inbounds i32*, i32** %225, i64 %idxprom239
  %226 = load i32*, i32** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %226, i64 4
  %227 = load i32, i32* %arrayidx241, align 4
  %228 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc242 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %228, i32 0, i32 33
  %arrayidx243 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc242, i32 0, i64 0
  %arrayidx244 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx243, i32 0, i64 1
  %229 = load i32, i32* %arrayidx244, align 4
  %add245 = add nsw i32 %227, %229
  %230 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %230 to i64
  %231 = load i32**, i32*** %xmx, align 8
  %arrayidx247 = getelementptr inbounds i32*, i32** %231, i64 %idxprom246
  %232 = load i32*, i32** %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %232, i64 4
  store i32 %add245, i32* %arrayidx248, align 4
  %233 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %233 to i64
  %234 = load i32**, i32*** %xmx, align 8
  %arrayidx250 = getelementptr inbounds i32*, i32** %234, i64 %idxprom249
  %235 = load i32*, i32** %arrayidx250, align 8
  %arrayidx251 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 -987654321, i32* %arrayidx251, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.271, %for.end.162
  %236 = load i32, i32* %k, align 4
  %237 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M253 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %237, i32 0, i32 20
  %238 = load i32, i32* %M253, align 4
  %cmp254 = icmp sle i32 %236, %238
  br i1 %cmp254, label %for.body.256, label %for.end.273

for.body.256:                                     ; preds = %for.cond.252
  %239 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %239 to i64
  %240 = load i32**, i32*** %xmx, align 8
  %arrayidx258 = getelementptr inbounds i32*, i32** %240, i64 %idxprom257
  %241 = load i32*, i32** %arrayidx258, align 8
  %arrayidx259 = getelementptr inbounds i32, i32* %241, i64 1
  %242 = load i32, i32* %arrayidx259, align 4
  %243 = load i32, i32* %k, align 4
  %idxprom260 = sext i32 %243 to i64
  %244 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %244 to i64
  %245 = load i32**, i32*** %mmx, align 8
  %arrayidx262 = getelementptr inbounds i32*, i32** %245, i64 %idxprom261
  %246 = load i32*, i32** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %246, i64 %idxprom260
  %247 = load i32, i32* %arrayidx263, align 4
  %248 = load i32, i32* %k, align 4
  %idxprom264 = sext i32 %248 to i64
  %249 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %249, i32 0, i32 35
  %250 = load i32*, i32** %esc, align 8
  %arrayidx265 = getelementptr inbounds i32, i32* %250, i64 %idxprom264
  %251 = load i32, i32* %arrayidx265, align 4
  %add266 = add nsw i32 %247, %251
  %call267 = call i32 @ILogsum(i32 %242, i32 %add266)
  %252 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %252 to i64
  %253 = load i32**, i32*** %xmx, align 8
  %arrayidx269 = getelementptr inbounds i32*, i32** %253, i64 %idxprom268
  %254 = load i32*, i32** %arrayidx269, align 8
  %arrayidx270 = getelementptr inbounds i32, i32* %254, i64 1
  store i32 %call267, i32* %arrayidx270, align 4
  br label %for.inc.271

for.inc.271:                                      ; preds = %for.body.256
  %255 = load i32, i32* %k, align 4
  %inc272 = add nsw i32 %255, 1
  store i32 %inc272, i32* %k, align 4
  br label %for.cond.252

for.end.273:                                      ; preds = %for.cond.252
  %256 = load i32, i32* %i, align 4
  %sub274 = sub nsw i32 %256, 1
  %idxprom275 = sext i32 %sub274 to i64
  %257 = load i32**, i32*** %xmx, align 8
  %arrayidx276 = getelementptr inbounds i32*, i32** %257, i64 %idxprom275
  %258 = load i32*, i32** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i32, i32* %258, i64 3
  %259 = load i32, i32* %arrayidx277, align 4
  %260 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc278 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %260, i32 0, i32 33
  %arrayidx279 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc278, i32 0, i64 3
  %arrayidx280 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx279, i32 0, i64 1
  %261 = load i32, i32* %arrayidx280, align 4
  %add281 = add nsw i32 %259, %261
  %262 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %262 to i64
  %263 = load i32**, i32*** %xmx, align 8
  %arrayidx283 = getelementptr inbounds i32*, i32** %263, i64 %idxprom282
  %264 = load i32*, i32** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %264, i64 1
  %265 = load i32, i32* %arrayidx284, align 4
  %266 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc285 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %266, i32 0, i32 33
  %arrayidx286 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc285, i32 0, i64 1
  %arrayidx287 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx286, i32 0, i64 1
  %267 = load i32, i32* %arrayidx287, align 4
  %add288 = add nsw i32 %265, %267
  %call289 = call i32 @ILogsum(i32 %add281, i32 %add288)
  %268 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %268 to i64
  %269 = load i32**, i32*** %xmx, align 8
  %arrayidx291 = getelementptr inbounds i32*, i32** %269, i64 %idxprom290
  %270 = load i32*, i32** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %270, i64 3
  store i32 %call289, i32* %arrayidx292, align 4
  %271 = load i32, i32* %i, align 4
  %idxprom293 = sext i32 %271 to i64
  %272 = load i32**, i32*** %xmx, align 8
  %arrayidx294 = getelementptr inbounds i32*, i32** %272, i64 %idxprom293
  %273 = load i32*, i32** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %273, i64 4
  %274 = load i32, i32* %arrayidx295, align 4
  %275 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc296 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %275, i32 0, i32 33
  %arrayidx297 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc296, i32 0, i64 0
  %arrayidx298 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx297, i32 0, i64 0
  %276 = load i32, i32* %arrayidx298, align 4
  %add299 = add nsw i32 %274, %276
  %277 = load i32, i32* %i, align 4
  %idxprom300 = sext i32 %277 to i64
  %278 = load i32**, i32*** %xmx, align 8
  %arrayidx301 = getelementptr inbounds i32*, i32** %278, i64 %idxprom300
  %279 = load i32*, i32** %arrayidx301, align 8
  %arrayidx302 = getelementptr inbounds i32, i32* %279, i64 3
  %280 = load i32, i32* %arrayidx302, align 4
  %281 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc303 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %281, i32 0, i32 33
  %arrayidx304 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc303, i32 0, i64 3
  %arrayidx305 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx304, i32 0, i64 0
  %282 = load i32, i32* %arrayidx305, align 4
  %add306 = add nsw i32 %280, %282
  %call307 = call i32 @ILogsum(i32 %add299, i32 %add306)
  %283 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %283 to i64
  %284 = load i32**, i32*** %xmx, align 8
  %arrayidx309 = getelementptr inbounds i32*, i32** %284, i64 %idxprom308
  %285 = load i32*, i32** %arrayidx309, align 8
  %arrayidx310 = getelementptr inbounds i32, i32* %285, i64 0
  store i32 %call307, i32* %arrayidx310, align 4
  %286 = load i32, i32* %i, align 4
  %sub311 = sub nsw i32 %286, 1
  %idxprom312 = sext i32 %sub311 to i64
  %287 = load i32**, i32*** %xmx, align 8
  %arrayidx313 = getelementptr inbounds i32*, i32** %287, i64 %idxprom312
  %288 = load i32*, i32** %arrayidx313, align 8
  %arrayidx314 = getelementptr inbounds i32, i32* %288, i64 2
  %289 = load i32, i32* %arrayidx314, align 4
  %290 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc315 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %290, i32 0, i32 33
  %arrayidx316 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc315, i32 0, i64 2
  %arrayidx317 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx316, i32 0, i64 1
  %291 = load i32, i32* %arrayidx317, align 4
  %add318 = add nsw i32 %289, %291
  %292 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %292 to i64
  %293 = load i32**, i32*** %xmx, align 8
  %arrayidx320 = getelementptr inbounds i32*, i32** %293, i64 %idxprom319
  %294 = load i32*, i32** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %294, i64 1
  %295 = load i32, i32* %arrayidx321, align 4
  %296 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc322 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %296, i32 0, i32 33
  %arrayidx323 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc322, i32 0, i64 1
  %arrayidx324 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx323, i32 0, i64 0
  %297 = load i32, i32* %arrayidx324, align 4
  %add325 = add nsw i32 %295, %297
  %call326 = call i32 @ILogsum(i32 %add318, i32 %add325)
  %298 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %298 to i64
  %299 = load i32**, i32*** %xmx, align 8
  %arrayidx328 = getelementptr inbounds i32*, i32** %299, i64 %idxprom327
  %300 = load i32*, i32** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %300, i64 2
  store i32 %call326, i32* %arrayidx329, align 4
  br label %for.inc.330

for.inc.330:                                      ; preds = %for.end.273
  %301 = load i32, i32* %i, align 4
  %inc331 = add nsw i32 %301, 1
  store i32 %inc331, i32* %i, align 4
  br label %for.cond.21

for.end.332:                                      ; preds = %for.cond.21
  %302 = load i32, i32* %L.addr, align 4
  %idxprom333 = sext i32 %302 to i64
  %303 = load i32**, i32*** %xmx, align 8
  %arrayidx334 = getelementptr inbounds i32*, i32** %303, i64 %idxprom333
  %304 = load i32*, i32** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %304, i64 2
  %305 = load i32, i32* %arrayidx335, align 4
  %306 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc336 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %306, i32 0, i32 33
  %arrayidx337 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc336, i32 0, i64 2
  %arrayidx338 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx337, i32 0, i64 0
  %307 = load i32, i32* %arrayidx338, align 4
  %add339 = add nsw i32 %305, %307
  store i32 %add339, i32* %sc, align 4
  %308 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  %cmp340 = icmp ne %struct.dpmatrix_s** %308, null
  br i1 %cmp340, label %if.then, label %if.else

if.then:                                          ; preds = %for.end.332
  %309 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %310 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  store %struct.dpmatrix_s* %309, %struct.dpmatrix_s** %310, align 8
  br label %if.end

if.else:                                          ; preds = %for.end.332
  %311 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %311)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %312 = load i32, i32* %sc, align 4
  %call342 = call float @Scorify(i32 %312)
  ret float %call342
}

declare i32 @ILogsum(i32, i32) #1

declare float @Scorify(i32) #1

; Function Attrs: nounwind uwtable
define void @P7ViterbiTrace(%struct.plan7_s* %hmm, i8* %dsq, i32 %N, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %N.addr = alloca i32, align 4
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %curralloc = alloca i32, align 4
  %tpos = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %sc = alloca i32, align 4
  %dk = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load i32, i32* %N.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 6
  store i32 %add, i32* %curralloc, align 4
  %1 = load i32, i32* %curralloc, align 4
  call void @P7AllocTrace(i32 %1, %struct.p7trace_s** %tr)
  %2 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %xmx1 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %2, i32 0, i32 0
  %3 = load i32**, i32*** %xmx1, align 8
  store i32** %3, i32*** %xmx, align 8
  %4 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %mmx2 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %4, i32 0, i32 1
  %5 = load i32**, i32*** %mmx2, align 8
  store i32** %5, i32*** %mmx, align 8
  %6 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %imx3 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %6, i32 0, i32 2
  %7 = load i32**, i32*** %imx3, align 8
  store i32** %7, i32*** %imx, align 8
  %8 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %dmx4 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %8, i32 0, i32 3
  %9 = load i32**, i32*** %dmx4, align 8
  store i32** %9, i32*** %dmx, align 8
  %10 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %10, i32 0, i32 1
  %11 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 0
  store i8 9, i8* %arrayidx, align 1
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 2
  %13 = load i32*, i32** %nodeidx, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %arrayidx5, align 4
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 3
  %15 = load i32*, i32** %pos, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 0, i32* %arrayidx6, align 4
  %16 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype7 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %16, i32 0, i32 1
  %17 = load i8*, i8** %statetype7, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 8, i8* %arrayidx8, align 1
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx9 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 2
  %19 = load i32*, i32** %nodeidx9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %arrayidx10, align 4
  %20 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos11 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %20, i32 0, i32 3
  %21 = load i32*, i32** %pos11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %arrayidx12, align 4
  store i32 2, i32* %tpos, align 4
  %22 = load i32, i32* %N.addr, align 4
  store i32 %22, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.619, %entry
  %23 = load i32, i32* %tpos, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom = sext i32 %sub to i64
  %24 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype13 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %24, i32 0, i32 1
  %25 = load i8*, i8** %statetype13, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx14, align 1
  %conv = sext i8 %26 to i32
  %cmp = icmp ne i32 %conv, 4
  br i1 %cmp, label %while.body, label %while.end.620

while.body:                                       ; preds = %while.cond
  %27 = load i32, i32* %tpos, align 4
  %sub16 = sub nsw i32 %27, 1
  %idxprom17 = sext i32 %sub16 to i64
  %28 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype18 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %28, i32 0, i32 1
  %29 = load i8*, i8** %statetype18, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %29, i64 %idxprom17
  %30 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %30 to i32
  switch i32 %conv20, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.164
    i32 3, label %sw.bb.234
    i32 5, label %sw.bb.303
    i32 6, label %sw.bb.355
    i32 7, label %sw.bb.412
    i32 8, label %sw.bb.488
    i32 10, label %sw.bb.551
  ]

sw.bb:                                            ; preds = %while.body
  %31 = load i32, i32* %k, align 4
  %add21 = add nsw i32 %31, 1
  %idxprom22 = sext i32 %add21 to i64
  %32 = load i32, i32* %i, align 4
  %add23 = add nsw i32 %32, 1
  %idxprom24 = sext i32 %add23 to i64
  %33 = load i32**, i32*** %mmx, align 8
  %arrayidx25 = getelementptr inbounds i32*, i32** %33, i64 %idxprom24
  %34 = load i32*, i32** %arrayidx25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx26, align 4
  %36 = load i32, i32* %k, align 4
  %add27 = add nsw i32 %36, 1
  %idxprom28 = sext i32 %add27 to i64
  %37 = load i32, i32* %i, align 4
  %add29 = add nsw i32 %37, 1
  %idxprom30 = sext i32 %add29 to i64
  %38 = load i8*, i8** %dsq.addr, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %38, i64 %idxprom30
  %39 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %39 to i32
  %idxprom33 = sext i32 %conv32 to i64
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %40, i32 0, i32 31
  %41 = load i32**, i32*** %msc, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %41, i64 %idxprom33
  %42 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %42, i64 %idxprom28
  %43 = load i32, i32* %arrayidx35, align 4
  %sub36 = sub nsw i32 %35, %43
  store i32 %sub36, i32* %sc, align 4
  %44 = load i32, i32* %sc, align 4
  %cmp37 = icmp sle i32 %44, -987654321
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %45 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %45)
  %46 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* null, %struct.p7trace_s** %46, align 8
  br label %return

if.else:                                          ; preds = %sw.bb
  %47 = load i32, i32* %sc, align 4
  %48 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %48 to i64
  %49 = load i32**, i32*** %xmx, align 8
  %arrayidx40 = getelementptr inbounds i32*, i32** %49, i64 %idxprom39
  %50 = load i32*, i32** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %50, i64 0
  %51 = load i32, i32* %arrayidx41, align 4
  %52 = load i32, i32* %k, align 4
  %add42 = add nsw i32 %52, 1
  %idxprom43 = sext i32 %add42 to i64
  %53 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %53, i32 0, i32 34
  %54 = load i32*, i32** %bsc, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %54, i64 %idxprom43
  %55 = load i32, i32* %arrayidx44, align 4
  %add45 = add nsw i32 %51, %55
  %cmp46 = icmp eq i32 %47, %add45
  br i1 %cmp46, label %if.then.48, label %if.else.89

if.then.48:                                       ; preds = %if.else
  %56 = load i32, i32* %k, align 4
  %add49 = add nsw i32 %56, 1
  %idxprom50 = sext i32 %add49 to i64
  %57 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %57, i32 0, i32 26
  %58 = load float*, float** %begin, align 8
  %arrayidx51 = getelementptr inbounds float, float* %58, i64 %idxprom50
  %59 = load float, float* %arrayidx51, align 4
  %60 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %60, i32 0, i32 29
  %61 = load float, float* %p1, align 4
  %call = call i32 @Prob2Score(float %59, float %61)
  %conv52 = sitofp i32 %call to double
  %add53 = fadd double %conv52, 1.000000e+03
  %62 = load i32, i32* %k, align 4
  %add54 = add nsw i32 %62, 1
  %idxprom55 = sext i32 %add54 to i64
  %63 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc56 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %63, i32 0, i32 34
  %64 = load i32*, i32** %bsc56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %64, i64 %idxprom55
  %65 = load i32, i32* %arrayidx57, align 4
  %conv58 = sitofp i32 %65 to double
  %cmp59 = fcmp ole double %add53, %conv58
  br i1 %cmp59, label %if.then.61, label %if.end.79

if.then.61:                                       ; preds = %if.then.48
  br label %while.cond.62

while.cond.62:                                    ; preds = %if.end, %if.then.61
  %66 = load i32, i32* %k, align 4
  %cmp63 = icmp sgt i32 %66, 0
  br i1 %cmp63, label %while.body.65, label %while.end

while.body.65:                                    ; preds = %while.cond.62
  %67 = load i32, i32* %tpos, align 4
  %idxprom66 = sext i32 %67 to i64
  %68 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype67 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %68, i32 0, i32 1
  %69 = load i8*, i8** %statetype67, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %69, i64 %idxprom66
  store i8 2, i8* %arrayidx68, align 1
  %70 = load i32, i32* %k, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* %k, align 4
  %71 = load i32, i32* %tpos, align 4
  %idxprom69 = sext i32 %71 to i64
  %72 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx70 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %72, i32 0, i32 2
  %73 = load i32*, i32** %nodeidx70, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %73, i64 %idxprom69
  store i32 %70, i32* %arrayidx71, align 4
  %74 = load i32, i32* %tpos, align 4
  %idxprom72 = sext i32 %74 to i64
  %75 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos73 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %75, i32 0, i32 3
  %76 = load i32*, i32** %pos73, align 8
  %arrayidx74 = getelementptr inbounds i32, i32* %76, i64 %idxprom72
  store i32 0, i32* %arrayidx74, align 4
  %77 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %tpos, align 4
  %78 = load i32, i32* %tpos, align 4
  %79 = load i32, i32* %curralloc, align 4
  %cmp75 = icmp eq i32 %78, %79
  br i1 %cmp75, label %if.then.77, label %if.end

if.then.77:                                       ; preds = %while.body.65
  %80 = load i32, i32* %N.addr, align 4
  %81 = load i32, i32* %curralloc, align 4
  %add78 = add nsw i32 %81, %80
  store i32 %add78, i32* %curralloc, align 4
  %82 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %83 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %82, i32 %83)
  br label %if.end

if.end:                                           ; preds = %if.then.77, %while.body.65
  br label %while.cond.62

while.end:                                        ; preds = %while.cond.62
  br label %if.end.79

if.end.79:                                        ; preds = %while.end, %if.then.48
  %84 = load i32, i32* %tpos, align 4
  %idxprom80 = sext i32 %84 to i64
  %85 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype81 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %85, i32 0, i32 1
  %86 = load i8*, i8** %statetype81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %86, i64 %idxprom80
  store i8 6, i8* %arrayidx82, align 1
  %87 = load i32, i32* %tpos, align 4
  %idxprom83 = sext i32 %87 to i64
  %88 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx84 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %88, i32 0, i32 2
  %89 = load i32*, i32** %nodeidx84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %89, i64 %idxprom83
  store i32 0, i32* %arrayidx85, align 4
  %90 = load i32, i32* %tpos, align 4
  %idxprom86 = sext i32 %90 to i64
  %91 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos87 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %91, i32 0, i32 3
  %92 = load i32*, i32** %pos87, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %92, i64 %idxprom86
  store i32 0, i32* %arrayidx88, align 4
  br label %if.end.162

if.else.89:                                       ; preds = %if.else
  %93 = load i32, i32* %sc, align 4
  %94 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %94 to i64
  %95 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %95 to i64
  %96 = load i32**, i32*** %mmx, align 8
  %arrayidx92 = getelementptr inbounds i32*, i32** %96, i64 %idxprom91
  %97 = load i32*, i32** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %97, i64 %idxprom90
  %98 = load i32, i32* %arrayidx93, align 4
  %99 = load i32, i32* %k, align 4
  %idxprom94 = sext i32 %99 to i64
  %100 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %100, i32 0, i32 30
  %101 = load i32**, i32*** %tsc, align 8
  %arrayidx95 = getelementptr inbounds i32*, i32** %101, i64 0
  %102 = load i32*, i32** %arrayidx95, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %102, i64 %idxprom94
  %103 = load i32, i32* %arrayidx96, align 4
  %add97 = add nsw i32 %98, %103
  %cmp98 = icmp eq i32 %93, %add97
  br i1 %cmp98, label %if.then.100, label %if.else.112

if.then.100:                                      ; preds = %if.else.89
  %104 = load i32, i32* %tpos, align 4
  %idxprom101 = sext i32 %104 to i64
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype102 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %105, i32 0, i32 1
  %106 = load i8*, i8** %statetype102, align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %106, i64 %idxprom101
  store i8 1, i8* %arrayidx103, align 1
  %107 = load i32, i32* %k, align 4
  %dec104 = add nsw i32 %107, -1
  store i32 %dec104, i32* %k, align 4
  %108 = load i32, i32* %tpos, align 4
  %idxprom105 = sext i32 %108 to i64
  %109 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx106 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %109, i32 0, i32 2
  %110 = load i32*, i32** %nodeidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %110, i64 %idxprom105
  store i32 %107, i32* %arrayidx107, align 4
  %111 = load i32, i32* %i, align 4
  %dec108 = add nsw i32 %111, -1
  store i32 %dec108, i32* %i, align 4
  %112 = load i32, i32* %tpos, align 4
  %idxprom109 = sext i32 %112 to i64
  %113 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos110 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %113, i32 0, i32 3
  %114 = load i32*, i32** %pos110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %114, i64 %idxprom109
  store i32 %111, i32* %arrayidx111, align 4
  br label %if.end.161

if.else.112:                                      ; preds = %if.else.89
  %115 = load i32, i32* %sc, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom113 = sext i32 %116 to i64
  %117 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %117 to i64
  %118 = load i32**, i32*** %imx, align 8
  %arrayidx115 = getelementptr inbounds i32*, i32** %118, i64 %idxprom114
  %119 = load i32*, i32** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %119, i64 %idxprom113
  %120 = load i32, i32* %arrayidx116, align 4
  %121 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %121 to i64
  %122 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc118 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %122, i32 0, i32 30
  %123 = load i32**, i32*** %tsc118, align 8
  %arrayidx119 = getelementptr inbounds i32*, i32** %123, i64 3
  %124 = load i32*, i32** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %124, i64 %idxprom117
  %125 = load i32, i32* %arrayidx120, align 4
  %add121 = add nsw i32 %120, %125
  %cmp122 = icmp eq i32 %115, %add121
  br i1 %cmp122, label %if.then.124, label %if.else.135

if.then.124:                                      ; preds = %if.else.112
  %126 = load i32, i32* %tpos, align 4
  %idxprom125 = sext i32 %126 to i64
  %127 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype126 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %127, i32 0, i32 1
  %128 = load i8*, i8** %statetype126, align 8
  %arrayidx127 = getelementptr inbounds i8, i8* %128, i64 %idxprom125
  store i8 3, i8* %arrayidx127, align 1
  %129 = load i32, i32* %k, align 4
  %130 = load i32, i32* %tpos, align 4
  %idxprom128 = sext i32 %130 to i64
  %131 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx129 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %131, i32 0, i32 2
  %132 = load i32*, i32** %nodeidx129, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %132, i64 %idxprom128
  store i32 %129, i32* %arrayidx130, align 4
  %133 = load i32, i32* %i, align 4
  %dec131 = add nsw i32 %133, -1
  store i32 %dec131, i32* %i, align 4
  %134 = load i32, i32* %tpos, align 4
  %idxprom132 = sext i32 %134 to i64
  %135 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos133 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %135, i32 0, i32 3
  %136 = load i32*, i32** %pos133, align 8
  %arrayidx134 = getelementptr inbounds i32, i32* %136, i64 %idxprom132
  store i32 %133, i32* %arrayidx134, align 4
  br label %if.end.160

if.else.135:                                      ; preds = %if.else.112
  %137 = load i32, i32* %sc, align 4
  %138 = load i32, i32* %k, align 4
  %idxprom136 = sext i32 %138 to i64
  %139 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %139 to i64
  %140 = load i32**, i32*** %dmx, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %140, i64 %idxprom137
  %141 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %141, i64 %idxprom136
  %142 = load i32, i32* %arrayidx139, align 4
  %143 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %143 to i64
  %144 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc141 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %144, i32 0, i32 30
  %145 = load i32**, i32*** %tsc141, align 8
  %arrayidx142 = getelementptr inbounds i32*, i32** %145, i64 5
  %146 = load i32*, i32** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %146, i64 %idxprom140
  %147 = load i32, i32* %arrayidx143, align 4
  %add144 = add nsw i32 %142, %147
  %cmp145 = icmp eq i32 %137, %add144
  br i1 %cmp145, label %if.then.147, label %if.else.158

if.then.147:                                      ; preds = %if.else.135
  %148 = load i32, i32* %tpos, align 4
  %idxprom148 = sext i32 %148 to i64
  %149 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype149 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %149, i32 0, i32 1
  %150 = load i8*, i8** %statetype149, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %150, i64 %idxprom148
  store i8 2, i8* %arrayidx150, align 1
  %151 = load i32, i32* %k, align 4
  %dec151 = add nsw i32 %151, -1
  store i32 %dec151, i32* %k, align 4
  %152 = load i32, i32* %tpos, align 4
  %idxprom152 = sext i32 %152 to i64
  %153 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx153 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %153, i32 0, i32 2
  %154 = load i32*, i32** %nodeidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %154, i64 %idxprom152
  store i32 %151, i32* %arrayidx154, align 4
  %155 = load i32, i32* %tpos, align 4
  %idxprom155 = sext i32 %155 to i64
  %156 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos156 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %156, i32 0, i32 3
  %157 = load i32*, i32** %pos156, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %157, i64 %idxprom155
  store i32 0, i32* %arrayidx157, align 4
  br label %if.end.159

if.else.158:                                      ; preds = %if.else.135
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.159

if.end.159:                                       ; preds = %if.else.158, %if.then.147
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.then.124
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.100
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.79
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162
  br label %sw.epilog

sw.bb.164:                                        ; preds = %while.body
  %158 = load i32, i32* %k, align 4
  %add165 = add nsw i32 %158, 1
  %idxprom166 = sext i32 %add165 to i64
  %159 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %159 to i64
  %160 = load i32**, i32*** %dmx, align 8
  %arrayidx168 = getelementptr inbounds i32*, i32** %160, i64 %idxprom167
  %161 = load i32*, i32** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %161, i64 %idxprom166
  %162 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp sle i32 %162, -987654321
  br i1 %cmp170, label %if.then.172, label %if.else.173

if.then.172:                                      ; preds = %sw.bb.164
  %163 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %163)
  %164 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* null, %struct.p7trace_s** %164, align 8
  br label %return

if.else.173:                                      ; preds = %sw.bb.164
  %165 = load i32, i32* %k, align 4
  %add174 = add nsw i32 %165, 1
  %idxprom175 = sext i32 %add174 to i64
  %166 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %166 to i64
  %167 = load i32**, i32*** %dmx, align 8
  %arrayidx177 = getelementptr inbounds i32*, i32** %167, i64 %idxprom176
  %168 = load i32*, i32** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %168, i64 %idxprom175
  %169 = load i32, i32* %arrayidx178, align 4
  %170 = load i32, i32* %k, align 4
  %idxprom179 = sext i32 %170 to i64
  %171 = load i32, i32* %i, align 4
  %idxprom180 = sext i32 %171 to i64
  %172 = load i32**, i32*** %mmx, align 8
  %arrayidx181 = getelementptr inbounds i32*, i32** %172, i64 %idxprom180
  %173 = load i32*, i32** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %173, i64 %idxprom179
  %174 = load i32, i32* %arrayidx182, align 4
  %175 = load i32, i32* %k, align 4
  %idxprom183 = sext i32 %175 to i64
  %176 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc184 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %176, i32 0, i32 30
  %177 = load i32**, i32*** %tsc184, align 8
  %arrayidx185 = getelementptr inbounds i32*, i32** %177, i64 2
  %178 = load i32*, i32** %arrayidx185, align 8
  %arrayidx186 = getelementptr inbounds i32, i32* %178, i64 %idxprom183
  %179 = load i32, i32* %arrayidx186, align 4
  %add187 = add nsw i32 %174, %179
  %cmp188 = icmp eq i32 %169, %add187
  br i1 %cmp188, label %if.then.190, label %if.else.202

if.then.190:                                      ; preds = %if.else.173
  %180 = load i32, i32* %tpos, align 4
  %idxprom191 = sext i32 %180 to i64
  %181 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype192 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %181, i32 0, i32 1
  %182 = load i8*, i8** %statetype192, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %182, i64 %idxprom191
  store i8 1, i8* %arrayidx193, align 1
  %183 = load i32, i32* %k, align 4
  %dec194 = add nsw i32 %183, -1
  store i32 %dec194, i32* %k, align 4
  %184 = load i32, i32* %tpos, align 4
  %idxprom195 = sext i32 %184 to i64
  %185 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx196 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %185, i32 0, i32 2
  %186 = load i32*, i32** %nodeidx196, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %186, i64 %idxprom195
  store i32 %183, i32* %arrayidx197, align 4
  %187 = load i32, i32* %i, align 4
  %dec198 = add nsw i32 %187, -1
  store i32 %dec198, i32* %i, align 4
  %188 = load i32, i32* %tpos, align 4
  %idxprom199 = sext i32 %188 to i64
  %189 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos200 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %189, i32 0, i32 3
  %190 = load i32*, i32** %pos200, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %190, i64 %idxprom199
  store i32 %187, i32* %arrayidx201, align 4
  br label %if.end.232

if.else.202:                                      ; preds = %if.else.173
  %191 = load i32, i32* %k, align 4
  %add203 = add nsw i32 %191, 1
  %idxprom204 = sext i32 %add203 to i64
  %192 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %192 to i64
  %193 = load i32**, i32*** %dmx, align 8
  %arrayidx206 = getelementptr inbounds i32*, i32** %193, i64 %idxprom205
  %194 = load i32*, i32** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds i32, i32* %194, i64 %idxprom204
  %195 = load i32, i32* %arrayidx207, align 4
  %196 = load i32, i32* %k, align 4
  %idxprom208 = sext i32 %196 to i64
  %197 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %197 to i64
  %198 = load i32**, i32*** %dmx, align 8
  %arrayidx210 = getelementptr inbounds i32*, i32** %198, i64 %idxprom209
  %199 = load i32*, i32** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %199, i64 %idxprom208
  %200 = load i32, i32* %arrayidx211, align 4
  %201 = load i32, i32* %k, align 4
  %idxprom212 = sext i32 %201 to i64
  %202 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc213 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %202, i32 0, i32 30
  %203 = load i32**, i32*** %tsc213, align 8
  %arrayidx214 = getelementptr inbounds i32*, i32** %203, i64 6
  %204 = load i32*, i32** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %204, i64 %idxprom212
  %205 = load i32, i32* %arrayidx215, align 4
  %add216 = add nsw i32 %200, %205
  %cmp217 = icmp eq i32 %195, %add216
  br i1 %cmp217, label %if.then.219, label %if.else.230

if.then.219:                                      ; preds = %if.else.202
  %206 = load i32, i32* %tpos, align 4
  %idxprom220 = sext i32 %206 to i64
  %207 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype221 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %207, i32 0, i32 1
  %208 = load i8*, i8** %statetype221, align 8
  %arrayidx222 = getelementptr inbounds i8, i8* %208, i64 %idxprom220
  store i8 2, i8* %arrayidx222, align 1
  %209 = load i32, i32* %k, align 4
  %dec223 = add nsw i32 %209, -1
  store i32 %dec223, i32* %k, align 4
  %210 = load i32, i32* %tpos, align 4
  %idxprom224 = sext i32 %210 to i64
  %211 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx225 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %211, i32 0, i32 2
  %212 = load i32*, i32** %nodeidx225, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %212, i64 %idxprom224
  store i32 %209, i32* %arrayidx226, align 4
  %213 = load i32, i32* %tpos, align 4
  %idxprom227 = sext i32 %213 to i64
  %214 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos228 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %214, i32 0, i32 3
  %215 = load i32*, i32** %pos228, align 8
  %arrayidx229 = getelementptr inbounds i32, i32* %215, i64 %idxprom227
  store i32 0, i32* %arrayidx229, align 4
  br label %if.end.231

if.else.230:                                      ; preds = %if.else.202
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.230, %if.then.219
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.190
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232
  br label %sw.epilog

sw.bb.234:                                        ; preds = %while.body
  %216 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %216 to i64
  %217 = load i32, i32* %i, align 4
  %add236 = add nsw i32 %217, 1
  %idxprom237 = sext i32 %add236 to i64
  %218 = load i32**, i32*** %imx, align 8
  %arrayidx238 = getelementptr inbounds i32*, i32** %218, i64 %idxprom237
  %219 = load i32*, i32** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %219, i64 %idxprom235
  %220 = load i32, i32* %arrayidx239, align 4
  %221 = load i32, i32* %k, align 4
  %idxprom240 = sext i32 %221 to i64
  %222 = load i32, i32* %i, align 4
  %add241 = add nsw i32 %222, 1
  %idxprom242 = sext i32 %add241 to i64
  %223 = load i8*, i8** %dsq.addr, align 8
  %arrayidx243 = getelementptr inbounds i8, i8* %223, i64 %idxprom242
  %224 = load i8, i8* %arrayidx243, align 1
  %conv244 = sext i8 %224 to i32
  %idxprom245 = sext i32 %conv244 to i64
  %225 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %225, i32 0, i32 32
  %226 = load i32**, i32*** %isc, align 8
  %arrayidx246 = getelementptr inbounds i32*, i32** %226, i64 %idxprom245
  %227 = load i32*, i32** %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds i32, i32* %227, i64 %idxprom240
  %228 = load i32, i32* %arrayidx247, align 4
  %sub248 = sub nsw i32 %220, %228
  store i32 %sub248, i32* %sc, align 4
  %229 = load i32, i32* %sc, align 4
  %cmp249 = icmp sle i32 %229, -987654321
  br i1 %cmp249, label %if.then.251, label %if.else.252

if.then.251:                                      ; preds = %sw.bb.234
  %230 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %230)
  %231 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* null, %struct.p7trace_s** %231, align 8
  br label %return

if.else.252:                                      ; preds = %sw.bb.234
  %232 = load i32, i32* %sc, align 4
  %233 = load i32, i32* %k, align 4
  %idxprom253 = sext i32 %233 to i64
  %234 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %234 to i64
  %235 = load i32**, i32*** %mmx, align 8
  %arrayidx255 = getelementptr inbounds i32*, i32** %235, i64 %idxprom254
  %236 = load i32*, i32** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %236, i64 %idxprom253
  %237 = load i32, i32* %arrayidx256, align 4
  %238 = load i32, i32* %k, align 4
  %idxprom257 = sext i32 %238 to i64
  %239 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc258 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %239, i32 0, i32 30
  %240 = load i32**, i32*** %tsc258, align 8
  %arrayidx259 = getelementptr inbounds i32*, i32** %240, i64 1
  %241 = load i32*, i32** %arrayidx259, align 8
  %arrayidx260 = getelementptr inbounds i32, i32* %241, i64 %idxprom257
  %242 = load i32, i32* %arrayidx260, align 4
  %add261 = add nsw i32 %237, %242
  %cmp262 = icmp eq i32 %232, %add261
  br i1 %cmp262, label %if.then.264, label %if.else.276

if.then.264:                                      ; preds = %if.else.252
  %243 = load i32, i32* %tpos, align 4
  %idxprom265 = sext i32 %243 to i64
  %244 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype266 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %244, i32 0, i32 1
  %245 = load i8*, i8** %statetype266, align 8
  %arrayidx267 = getelementptr inbounds i8, i8* %245, i64 %idxprom265
  store i8 1, i8* %arrayidx267, align 1
  %246 = load i32, i32* %k, align 4
  %dec268 = add nsw i32 %246, -1
  store i32 %dec268, i32* %k, align 4
  %247 = load i32, i32* %tpos, align 4
  %idxprom269 = sext i32 %247 to i64
  %248 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx270 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %248, i32 0, i32 2
  %249 = load i32*, i32** %nodeidx270, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %249, i64 %idxprom269
  store i32 %246, i32* %arrayidx271, align 4
  %250 = load i32, i32* %i, align 4
  %dec272 = add nsw i32 %250, -1
  store i32 %dec272, i32* %i, align 4
  %251 = load i32, i32* %tpos, align 4
  %idxprom273 = sext i32 %251 to i64
  %252 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos274 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %252, i32 0, i32 3
  %253 = load i32*, i32** %pos274, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %253, i64 %idxprom273
  store i32 %250, i32* %arrayidx275, align 4
  br label %if.end.301

if.else.276:                                      ; preds = %if.else.252
  %254 = load i32, i32* %sc, align 4
  %255 = load i32, i32* %k, align 4
  %idxprom277 = sext i32 %255 to i64
  %256 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %256 to i64
  %257 = load i32**, i32*** %imx, align 8
  %arrayidx279 = getelementptr inbounds i32*, i32** %257, i64 %idxprom278
  %258 = load i32*, i32** %arrayidx279, align 8
  %arrayidx280 = getelementptr inbounds i32, i32* %258, i64 %idxprom277
  %259 = load i32, i32* %arrayidx280, align 4
  %260 = load i32, i32* %k, align 4
  %idxprom281 = sext i32 %260 to i64
  %261 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc282 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %261, i32 0, i32 30
  %262 = load i32**, i32*** %tsc282, align 8
  %arrayidx283 = getelementptr inbounds i32*, i32** %262, i64 4
  %263 = load i32*, i32** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %263, i64 %idxprom281
  %264 = load i32, i32* %arrayidx284, align 4
  %add285 = add nsw i32 %259, %264
  %cmp286 = icmp eq i32 %254, %add285
  br i1 %cmp286, label %if.then.288, label %if.else.299

if.then.288:                                      ; preds = %if.else.276
  %265 = load i32, i32* %tpos, align 4
  %idxprom289 = sext i32 %265 to i64
  %266 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype290 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %266, i32 0, i32 1
  %267 = load i8*, i8** %statetype290, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %267, i64 %idxprom289
  store i8 3, i8* %arrayidx291, align 1
  %268 = load i32, i32* %k, align 4
  %269 = load i32, i32* %tpos, align 4
  %idxprom292 = sext i32 %269 to i64
  %270 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx293 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %270, i32 0, i32 2
  %271 = load i32*, i32** %nodeidx293, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %271, i64 %idxprom292
  store i32 %268, i32* %arrayidx294, align 4
  %272 = load i32, i32* %i, align 4
  %dec295 = add nsw i32 %272, -1
  store i32 %dec295, i32* %i, align 4
  %273 = load i32, i32* %tpos, align 4
  %idxprom296 = sext i32 %273 to i64
  %274 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos297 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %274, i32 0, i32 3
  %275 = load i32*, i32** %pos297, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %275, i64 %idxprom296
  store i32 %272, i32* %arrayidx298, align 4
  br label %if.end.300

if.else.299:                                      ; preds = %if.else.276
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.300

if.end.300:                                       ; preds = %if.else.299, %if.then.288
  br label %if.end.301

if.end.301:                                       ; preds = %if.end.300, %if.then.264
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301
  br label %sw.epilog

sw.bb.303:                                        ; preds = %while.body
  %276 = load i32, i32* %i, align 4
  %cmp304 = icmp eq i32 %276, 0
  br i1 %cmp304, label %land.lhs.true, label %if.else.321

land.lhs.true:                                    ; preds = %sw.bb.303
  %277 = load i32, i32* %i, align 4
  %idxprom306 = sext i32 %277 to i64
  %278 = load i32**, i32*** %xmx, align 8
  %arrayidx307 = getelementptr inbounds i32*, i32** %278, i64 %idxprom306
  %279 = load i32*, i32** %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %279, i64 4
  %280 = load i32, i32* %arrayidx308, align 4
  %cmp309 = icmp eq i32 %280, 0
  br i1 %cmp309, label %if.then.311, label %if.else.321

if.then.311:                                      ; preds = %land.lhs.true
  %281 = load i32, i32* %tpos, align 4
  %idxprom312 = sext i32 %281 to i64
  %282 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype313 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %282, i32 0, i32 1
  %283 = load i8*, i8** %statetype313, align 8
  %arrayidx314 = getelementptr inbounds i8, i8* %283, i64 %idxprom312
  store i8 4, i8* %arrayidx314, align 1
  %284 = load i32, i32* %tpos, align 4
  %idxprom315 = sext i32 %284 to i64
  %285 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx316 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %285, i32 0, i32 2
  %286 = load i32*, i32** %nodeidx316, align 8
  %arrayidx317 = getelementptr inbounds i32, i32* %286, i64 %idxprom315
  store i32 0, i32* %arrayidx317, align 4
  %287 = load i32, i32* %tpos, align 4
  %idxprom318 = sext i32 %287 to i64
  %288 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos319 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %288, i32 0, i32 3
  %289 = load i32*, i32** %pos319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %289, i64 %idxprom318
  store i32 0, i32* %arrayidx320, align 4
  br label %if.end.354

if.else.321:                                      ; preds = %land.lhs.true, %sw.bb.303
  %290 = load i32, i32* %i, align 4
  %cmp322 = icmp sgt i32 %290, 0
  br i1 %cmp322, label %land.lhs.true.324, label %if.else.352

land.lhs.true.324:                                ; preds = %if.else.321
  %291 = load i32, i32* %i, align 4
  %add325 = add nsw i32 %291, 1
  %idxprom326 = sext i32 %add325 to i64
  %292 = load i32**, i32*** %xmx, align 8
  %arrayidx327 = getelementptr inbounds i32*, i32** %292, i64 %idxprom326
  %293 = load i32*, i32** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds i32, i32* %293, i64 4
  %294 = load i32, i32* %arrayidx328, align 4
  %295 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %295 to i64
  %296 = load i32**, i32*** %xmx, align 8
  %arrayidx330 = getelementptr inbounds i32*, i32** %296, i64 %idxprom329
  %297 = load i32*, i32** %arrayidx330, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %297, i64 4
  %298 = load i32, i32* %arrayidx331, align 4
  %299 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %299, i32 0, i32 33
  %arrayidx332 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx333 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx332, i32 0, i64 1
  %300 = load i32, i32* %arrayidx333, align 4
  %add334 = add nsw i32 %298, %300
  %cmp335 = icmp eq i32 %294, %add334
  br i1 %cmp335, label %if.then.337, label %if.else.352

if.then.337:                                      ; preds = %land.lhs.true.324
  %301 = load i32, i32* %tpos, align 4
  %idxprom338 = sext i32 %301 to i64
  %302 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype339 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %302, i32 0, i32 1
  %303 = load i8*, i8** %statetype339, align 8
  %arrayidx340 = getelementptr inbounds i8, i8* %303, i64 %idxprom338
  store i8 5, i8* %arrayidx340, align 1
  %304 = load i32, i32* %tpos, align 4
  %idxprom341 = sext i32 %304 to i64
  %305 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx342 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %305, i32 0, i32 2
  %306 = load i32*, i32** %nodeidx342, align 8
  %arrayidx343 = getelementptr inbounds i32, i32* %306, i64 %idxprom341
  store i32 0, i32* %arrayidx343, align 4
  %307 = load i32, i32* %tpos, align 4
  %idxprom344 = sext i32 %307 to i64
  %308 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos345 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %308, i32 0, i32 3
  %309 = load i32*, i32** %pos345, align 8
  %arrayidx346 = getelementptr inbounds i32, i32* %309, i64 %idxprom344
  store i32 0, i32* %arrayidx346, align 4
  %310 = load i32, i32* %i, align 4
  %dec347 = add nsw i32 %310, -1
  store i32 %dec347, i32* %i, align 4
  %311 = load i32, i32* %tpos, align 4
  %sub348 = sub nsw i32 %311, 1
  %idxprom349 = sext i32 %sub348 to i64
  %312 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos350 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %312, i32 0, i32 3
  %313 = load i32*, i32** %pos350, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %313, i64 %idxprom349
  store i32 %310, i32* %arrayidx351, align 4
  br label %if.end.353

if.else.352:                                      ; preds = %land.lhs.true.324, %if.else.321
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.353

if.end.353:                                       ; preds = %if.else.352, %if.then.337
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %if.then.311
  br label %sw.epilog

sw.bb.355:                                        ; preds = %while.body
  %314 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %314 to i64
  %315 = load i32**, i32*** %xmx, align 8
  %arrayidx357 = getelementptr inbounds i32*, i32** %315, i64 %idxprom356
  %316 = load i32*, i32** %arrayidx357, align 8
  %arrayidx358 = getelementptr inbounds i32, i32* %316, i64 0
  %317 = load i32, i32* %arrayidx358, align 4
  %cmp359 = icmp sle i32 %317, -987654321
  br i1 %cmp359, label %if.then.361, label %if.else.362

if.then.361:                                      ; preds = %sw.bb.355
  %318 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %318)
  %319 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* null, %struct.p7trace_s** %319, align 8
  br label %return

if.else.362:                                      ; preds = %sw.bb.355
  %320 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %320 to i64
  %321 = load i32**, i32*** %xmx, align 8
  %arrayidx364 = getelementptr inbounds i32*, i32** %321, i64 %idxprom363
  %322 = load i32*, i32** %arrayidx364, align 8
  %arrayidx365 = getelementptr inbounds i32, i32* %322, i64 0
  %323 = load i32, i32* %arrayidx365, align 4
  %324 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %324 to i64
  %325 = load i32**, i32*** %xmx, align 8
  %arrayidx367 = getelementptr inbounds i32*, i32** %325, i64 %idxprom366
  %326 = load i32*, i32** %arrayidx367, align 8
  %arrayidx368 = getelementptr inbounds i32, i32* %326, i64 4
  %327 = load i32, i32* %arrayidx368, align 4
  %328 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc369 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %328, i32 0, i32 33
  %arrayidx370 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc369, i32 0, i64 0
  %arrayidx371 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx370, i32 0, i64 0
  %329 = load i32, i32* %arrayidx371, align 4
  %add372 = add nsw i32 %327, %329
  %cmp373 = icmp eq i32 %323, %add372
  br i1 %cmp373, label %if.then.375, label %if.else.385

if.then.375:                                      ; preds = %if.else.362
  %330 = load i32, i32* %tpos, align 4
  %idxprom376 = sext i32 %330 to i64
  %331 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype377 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %331, i32 0, i32 1
  %332 = load i8*, i8** %statetype377, align 8
  %arrayidx378 = getelementptr inbounds i8, i8* %332, i64 %idxprom376
  store i8 5, i8* %arrayidx378, align 1
  %333 = load i32, i32* %tpos, align 4
  %idxprom379 = sext i32 %333 to i64
  %334 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx380 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %334, i32 0, i32 2
  %335 = load i32*, i32** %nodeidx380, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %335, i64 %idxprom379
  store i32 0, i32* %arrayidx381, align 4
  %336 = load i32, i32* %tpos, align 4
  %idxprom382 = sext i32 %336 to i64
  %337 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos383 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %337, i32 0, i32 3
  %338 = load i32*, i32** %pos383, align 8
  %arrayidx384 = getelementptr inbounds i32, i32* %338, i64 %idxprom382
  store i32 0, i32* %arrayidx384, align 4
  br label %if.end.410

if.else.385:                                      ; preds = %if.else.362
  %339 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %339 to i64
  %340 = load i32**, i32*** %xmx, align 8
  %arrayidx387 = getelementptr inbounds i32*, i32** %340, i64 %idxprom386
  %341 = load i32*, i32** %arrayidx387, align 8
  %arrayidx388 = getelementptr inbounds i32, i32* %341, i64 0
  %342 = load i32, i32* %arrayidx388, align 4
  %343 = load i32, i32* %i, align 4
  %idxprom389 = sext i32 %343 to i64
  %344 = load i32**, i32*** %xmx, align 8
  %arrayidx390 = getelementptr inbounds i32*, i32** %344, i64 %idxprom389
  %345 = load i32*, i32** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %345, i64 3
  %346 = load i32, i32* %arrayidx391, align 4
  %347 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc392 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %347, i32 0, i32 33
  %arrayidx393 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc392, i32 0, i64 3
  %arrayidx394 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx393, i32 0, i64 0
  %348 = load i32, i32* %arrayidx394, align 4
  %add395 = add nsw i32 %346, %348
  %cmp396 = icmp eq i32 %342, %add395
  br i1 %cmp396, label %if.then.398, label %if.else.408

if.then.398:                                      ; preds = %if.else.385
  %349 = load i32, i32* %tpos, align 4
  %idxprom399 = sext i32 %349 to i64
  %350 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype400 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %350, i32 0, i32 1
  %351 = load i8*, i8** %statetype400, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %351, i64 %idxprom399
  store i8 10, i8* %arrayidx401, align 1
  %352 = load i32, i32* %tpos, align 4
  %idxprom402 = sext i32 %352 to i64
  %353 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx403 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %353, i32 0, i32 2
  %354 = load i32*, i32** %nodeidx403, align 8
  %arrayidx404 = getelementptr inbounds i32, i32* %354, i64 %idxprom402
  store i32 0, i32* %arrayidx404, align 4
  %355 = load i32, i32* %tpos, align 4
  %idxprom405 = sext i32 %355 to i64
  %356 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos406 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %356, i32 0, i32 3
  %357 = load i32*, i32** %pos406, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %357, i64 %idxprom405
  store i32 0, i32* %arrayidx407, align 4
  br label %if.end.409

if.else.408:                                      ; preds = %if.else.385
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.409

if.end.409:                                       ; preds = %if.else.408, %if.then.398
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.375
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410
  br label %sw.epilog

sw.bb.412:                                        ; preds = %while.body
  %358 = load i32, i32* %i, align 4
  %idxprom413 = sext i32 %358 to i64
  %359 = load i32**, i32*** %xmx, align 8
  %arrayidx414 = getelementptr inbounds i32*, i32** %359, i64 %idxprom413
  %360 = load i32*, i32** %arrayidx414, align 8
  %arrayidx415 = getelementptr inbounds i32, i32* %360, i64 1
  %361 = load i32, i32* %arrayidx415, align 4
  %cmp416 = icmp sle i32 %361, -987654321
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %sw.bb.412
  %362 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %362)
  %363 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* null, %struct.p7trace_s** %363, align 8
  br label %return

if.end.419:                                       ; preds = %sw.bb.412
  %364 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %364, i32 0, i32 20
  %365 = load i32, i32* %M, align 4
  store i32 %365, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.481, %if.end.419
  %366 = load i32, i32* %k, align 4
  %cmp420 = icmp sge i32 %366, 1
  br i1 %cmp420, label %for.body, label %for.end.483

for.body:                                         ; preds = %for.cond
  %367 = load i32, i32* %i, align 4
  %idxprom422 = sext i32 %367 to i64
  %368 = load i32**, i32*** %xmx, align 8
  %arrayidx423 = getelementptr inbounds i32*, i32** %368, i64 %idxprom422
  %369 = load i32*, i32** %arrayidx423, align 8
  %arrayidx424 = getelementptr inbounds i32, i32* %369, i64 1
  %370 = load i32, i32* %arrayidx424, align 4
  %371 = load i32, i32* %k, align 4
  %idxprom425 = sext i32 %371 to i64
  %372 = load i32, i32* %i, align 4
  %idxprom426 = sext i32 %372 to i64
  %373 = load i32**, i32*** %mmx, align 8
  %arrayidx427 = getelementptr inbounds i32*, i32** %373, i64 %idxprom426
  %374 = load i32*, i32** %arrayidx427, align 8
  %arrayidx428 = getelementptr inbounds i32, i32* %374, i64 %idxprom425
  %375 = load i32, i32* %arrayidx428, align 4
  %376 = load i32, i32* %k, align 4
  %idxprom429 = sext i32 %376 to i64
  %377 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %377, i32 0, i32 35
  %378 = load i32*, i32** %esc, align 8
  %arrayidx430 = getelementptr inbounds i32, i32* %378, i64 %idxprom429
  %379 = load i32, i32* %arrayidx430, align 4
  %add431 = add nsw i32 %375, %379
  %cmp432 = icmp eq i32 %370, %add431
  br i1 %cmp432, label %if.then.434, label %if.end.480

if.then.434:                                      ; preds = %for.body
  %380 = load i32, i32* %k, align 4
  %idxprom435 = sext i32 %380 to i64
  %381 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %381, i32 0, i32 27
  %382 = load float*, float** %end, align 8
  %arrayidx436 = getelementptr inbounds float, float* %382, i64 %idxprom435
  %383 = load float, float* %arrayidx436, align 4
  %call437 = call i32 @Prob2Score(float %383, float 1.000000e+00)
  %conv438 = sitofp i32 %call437 to double
  %add439 = fadd double %conv438, 1.000000e+03
  %384 = load i32, i32* %k, align 4
  %idxprom440 = sext i32 %384 to i64
  %385 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc441 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %385, i32 0, i32 35
  %386 = load i32*, i32** %esc441, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %386, i64 %idxprom440
  %387 = load i32, i32* %arrayidx442, align 4
  %conv443 = sitofp i32 %387 to double
  %cmp444 = fcmp ole double %add439, %conv443
  br i1 %cmp444, label %if.then.446, label %if.end.468

if.then.446:                                      ; preds = %if.then.434
  %388 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M447 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %388, i32 0, i32 20
  %389 = load i32, i32* %M447, align 4
  store i32 %389, i32* %dk, align 4
  br label %for.cond.448

for.cond.448:                                     ; preds = %for.inc, %if.then.446
  %390 = load i32, i32* %dk, align 4
  %391 = load i32, i32* %k, align 4
  %cmp449 = icmp sgt i32 %390, %391
  br i1 %cmp449, label %for.body.451, label %for.end

for.body.451:                                     ; preds = %for.cond.448
  %392 = load i32, i32* %tpos, align 4
  %idxprom452 = sext i32 %392 to i64
  %393 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype453 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %393, i32 0, i32 1
  %394 = load i8*, i8** %statetype453, align 8
  %arrayidx454 = getelementptr inbounds i8, i8* %394, i64 %idxprom452
  store i8 2, i8* %arrayidx454, align 1
  %395 = load i32, i32* %dk, align 4
  %396 = load i32, i32* %tpos, align 4
  %idxprom455 = sext i32 %396 to i64
  %397 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx456 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %397, i32 0, i32 2
  %398 = load i32*, i32** %nodeidx456, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %398, i64 %idxprom455
  store i32 %395, i32* %arrayidx457, align 4
  %399 = load i32, i32* %tpos, align 4
  %idxprom458 = sext i32 %399 to i64
  %400 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos459 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %400, i32 0, i32 3
  %401 = load i32*, i32** %pos459, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %401, i64 %idxprom458
  store i32 0, i32* %arrayidx460, align 4
  %402 = load i32, i32* %tpos, align 4
  %inc461 = add nsw i32 %402, 1
  store i32 %inc461, i32* %tpos, align 4
  %403 = load i32, i32* %tpos, align 4
  %404 = load i32, i32* %curralloc, align 4
  %cmp462 = icmp eq i32 %403, %404
  br i1 %cmp462, label %if.then.464, label %if.end.466

if.then.464:                                      ; preds = %for.body.451
  %405 = load i32, i32* %N.addr, align 4
  %406 = load i32, i32* %curralloc, align 4
  %add465 = add nsw i32 %406, %405
  store i32 %add465, i32* %curralloc, align 4
  %407 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %408 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %407, i32 %408)
  br label %if.end.466

if.end.466:                                       ; preds = %if.then.464, %for.body.451
  br label %for.inc

for.inc:                                          ; preds = %if.end.466
  %409 = load i32, i32* %dk, align 4
  %dec467 = add nsw i32 %409, -1
  store i32 %dec467, i32* %dk, align 4
  br label %for.cond.448

for.end:                                          ; preds = %for.cond.448
  br label %if.end.468

if.end.468:                                       ; preds = %for.end, %if.then.434
  %410 = load i32, i32* %tpos, align 4
  %idxprom469 = sext i32 %410 to i64
  %411 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype470 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %411, i32 0, i32 1
  %412 = load i8*, i8** %statetype470, align 8
  %arrayidx471 = getelementptr inbounds i8, i8* %412, i64 %idxprom469
  store i8 1, i8* %arrayidx471, align 1
  %413 = load i32, i32* %k, align 4
  %dec472 = add nsw i32 %413, -1
  store i32 %dec472, i32* %k, align 4
  %414 = load i32, i32* %tpos, align 4
  %idxprom473 = sext i32 %414 to i64
  %415 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx474 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %415, i32 0, i32 2
  %416 = load i32*, i32** %nodeidx474, align 8
  %arrayidx475 = getelementptr inbounds i32, i32* %416, i64 %idxprom473
  store i32 %413, i32* %arrayidx475, align 4
  %417 = load i32, i32* %i, align 4
  %dec476 = add nsw i32 %417, -1
  store i32 %dec476, i32* %i, align 4
  %418 = load i32, i32* %tpos, align 4
  %idxprom477 = sext i32 %418 to i64
  %419 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos478 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %419, i32 0, i32 3
  %420 = load i32*, i32** %pos478, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %420, i64 %idxprom477
  store i32 %417, i32* %arrayidx479, align 4
  br label %for.end.483

if.end.480:                                       ; preds = %for.body
  br label %for.inc.481

for.inc.481:                                      ; preds = %if.end.480
  %421 = load i32, i32* %k, align 4
  %dec482 = add nsw i32 %421, -1
  store i32 %dec482, i32* %k, align 4
  br label %for.cond

for.end.483:                                      ; preds = %if.end.468, %for.cond
  %422 = load i32, i32* %k, align 4
  %cmp484 = icmp slt i32 %422, 0
  br i1 %cmp484, label %if.then.486, label %if.end.487

if.then.486:                                      ; preds = %for.end.483
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.487

if.end.487:                                       ; preds = %if.then.486, %for.end.483
  br label %sw.epilog

sw.bb.488:                                        ; preds = %while.body
  %423 = load i32, i32* %i, align 4
  %idxprom489 = sext i32 %423 to i64
  %424 = load i32**, i32*** %xmx, align 8
  %arrayidx490 = getelementptr inbounds i32*, i32** %424, i64 %idxprom489
  %425 = load i32*, i32** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds i32, i32* %425, i64 2
  %426 = load i32, i32* %arrayidx491, align 4
  %cmp492 = icmp sle i32 %426, -987654321
  br i1 %cmp492, label %if.then.494, label %if.else.495

if.then.494:                                      ; preds = %sw.bb.488
  %427 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %427)
  %428 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* null, %struct.p7trace_s** %428, align 8
  br label %return

if.else.495:                                      ; preds = %sw.bb.488
  %429 = load i32, i32* %i, align 4
  %idxprom496 = sext i32 %429 to i64
  %430 = load i32**, i32*** %xmx, align 8
  %arrayidx497 = getelementptr inbounds i32*, i32** %430, i64 %idxprom496
  %431 = load i32*, i32** %arrayidx497, align 8
  %arrayidx498 = getelementptr inbounds i32, i32* %431, i64 2
  %432 = load i32, i32* %arrayidx498, align 4
  %433 = load i32, i32* %i, align 4
  %sub499 = sub nsw i32 %433, 1
  %idxprom500 = sext i32 %sub499 to i64
  %434 = load i32**, i32*** %xmx, align 8
  %arrayidx501 = getelementptr inbounds i32*, i32** %434, i64 %idxprom500
  %435 = load i32*, i32** %arrayidx501, align 8
  %arrayidx502 = getelementptr inbounds i32, i32* %435, i64 2
  %436 = load i32, i32* %arrayidx502, align 4
  %437 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc503 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %437, i32 0, i32 33
  %arrayidx504 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc503, i32 0, i64 2
  %arrayidx505 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx504, i32 0, i64 1
  %438 = load i32, i32* %arrayidx505, align 4
  %add506 = add nsw i32 %436, %438
  %cmp507 = icmp eq i32 %432, %add506
  br i1 %cmp507, label %if.then.509, label %if.else.524

if.then.509:                                      ; preds = %if.else.495
  %439 = load i32, i32* %tpos, align 4
  %idxprom510 = sext i32 %439 to i64
  %440 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype511 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %440, i32 0, i32 1
  %441 = load i8*, i8** %statetype511, align 8
  %arrayidx512 = getelementptr inbounds i8, i8* %441, i64 %idxprom510
  store i8 8, i8* %arrayidx512, align 1
  %442 = load i32, i32* %tpos, align 4
  %idxprom513 = sext i32 %442 to i64
  %443 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx514 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %443, i32 0, i32 2
  %444 = load i32*, i32** %nodeidx514, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %444, i64 %idxprom513
  store i32 0, i32* %arrayidx515, align 4
  %445 = load i32, i32* %tpos, align 4
  %idxprom516 = sext i32 %445 to i64
  %446 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos517 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %446, i32 0, i32 3
  %447 = load i32*, i32** %pos517, align 8
  %arrayidx518 = getelementptr inbounds i32, i32* %447, i64 %idxprom516
  store i32 0, i32* %arrayidx518, align 4
  %448 = load i32, i32* %i, align 4
  %dec519 = add nsw i32 %448, -1
  store i32 %dec519, i32* %i, align 4
  %449 = load i32, i32* %tpos, align 4
  %sub520 = sub nsw i32 %449, 1
  %idxprom521 = sext i32 %sub520 to i64
  %450 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos522 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %450, i32 0, i32 3
  %451 = load i32*, i32** %pos522, align 8
  %arrayidx523 = getelementptr inbounds i32, i32* %451, i64 %idxprom521
  store i32 %448, i32* %arrayidx523, align 4
  br label %if.end.549

if.else.524:                                      ; preds = %if.else.495
  %452 = load i32, i32* %i, align 4
  %idxprom525 = sext i32 %452 to i64
  %453 = load i32**, i32*** %xmx, align 8
  %arrayidx526 = getelementptr inbounds i32*, i32** %453, i64 %idxprom525
  %454 = load i32*, i32** %arrayidx526, align 8
  %arrayidx527 = getelementptr inbounds i32, i32* %454, i64 2
  %455 = load i32, i32* %arrayidx527, align 4
  %456 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %456 to i64
  %457 = load i32**, i32*** %xmx, align 8
  %arrayidx529 = getelementptr inbounds i32*, i32** %457, i64 %idxprom528
  %458 = load i32*, i32** %arrayidx529, align 8
  %arrayidx530 = getelementptr inbounds i32, i32* %458, i64 1
  %459 = load i32, i32* %arrayidx530, align 4
  %460 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc531 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %460, i32 0, i32 33
  %arrayidx532 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc531, i32 0, i64 1
  %arrayidx533 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx532, i32 0, i64 0
  %461 = load i32, i32* %arrayidx533, align 4
  %add534 = add nsw i32 %459, %461
  %cmp535 = icmp eq i32 %455, %add534
  br i1 %cmp535, label %if.then.537, label %if.else.547

if.then.537:                                      ; preds = %if.else.524
  %462 = load i32, i32* %tpos, align 4
  %idxprom538 = sext i32 %462 to i64
  %463 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype539 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %463, i32 0, i32 1
  %464 = load i8*, i8** %statetype539, align 8
  %arrayidx540 = getelementptr inbounds i8, i8* %464, i64 %idxprom538
  store i8 7, i8* %arrayidx540, align 1
  %465 = load i32, i32* %tpos, align 4
  %idxprom541 = sext i32 %465 to i64
  %466 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx542 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %466, i32 0, i32 2
  %467 = load i32*, i32** %nodeidx542, align 8
  %arrayidx543 = getelementptr inbounds i32, i32* %467, i64 %idxprom541
  store i32 0, i32* %arrayidx543, align 4
  %468 = load i32, i32* %tpos, align 4
  %idxprom544 = sext i32 %468 to i64
  %469 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos545 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %469, i32 0, i32 3
  %470 = load i32*, i32** %pos545, align 8
  %arrayidx546 = getelementptr inbounds i32, i32* %470, i64 %idxprom544
  store i32 0, i32* %arrayidx546, align 4
  br label %if.end.548

if.else.547:                                      ; preds = %if.else.524
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.548

if.end.548:                                       ; preds = %if.else.547, %if.then.537
  br label %if.end.549

if.end.549:                                       ; preds = %if.end.548, %if.then.509
  br label %if.end.550

if.end.550:                                       ; preds = %if.end.549
  br label %sw.epilog

sw.bb.551:                                        ; preds = %while.body
  %471 = load i32, i32* %i, align 4
  %idxprom552 = sext i32 %471 to i64
  %472 = load i32**, i32*** %xmx, align 8
  %arrayidx553 = getelementptr inbounds i32*, i32** %472, i64 %idxprom552
  %473 = load i32*, i32** %arrayidx553, align 8
  %arrayidx554 = getelementptr inbounds i32, i32* %473, i64 3
  %474 = load i32, i32* %arrayidx554, align 4
  %cmp555 = icmp sle i32 %474, -987654321
  br i1 %cmp555, label %if.then.557, label %if.else.558

if.then.557:                                      ; preds = %sw.bb.551
  %475 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %475)
  %476 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* null, %struct.p7trace_s** %476, align 8
  br label %return

if.else.558:                                      ; preds = %sw.bb.551
  %477 = load i32, i32* %i, align 4
  %idxprom559 = sext i32 %477 to i64
  %478 = load i32**, i32*** %xmx, align 8
  %arrayidx560 = getelementptr inbounds i32*, i32** %478, i64 %idxprom559
  %479 = load i32*, i32** %arrayidx560, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %479, i64 3
  %480 = load i32, i32* %arrayidx561, align 4
  %481 = load i32, i32* %i, align 4
  %sub562 = sub nsw i32 %481, 1
  %idxprom563 = sext i32 %sub562 to i64
  %482 = load i32**, i32*** %xmx, align 8
  %arrayidx564 = getelementptr inbounds i32*, i32** %482, i64 %idxprom563
  %483 = load i32*, i32** %arrayidx564, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %483, i64 3
  %484 = load i32, i32* %arrayidx565, align 4
  %485 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc566 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %485, i32 0, i32 33
  %arrayidx567 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc566, i32 0, i64 3
  %arrayidx568 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx567, i32 0, i64 1
  %486 = load i32, i32* %arrayidx568, align 4
  %add569 = add nsw i32 %484, %486
  %cmp570 = icmp eq i32 %480, %add569
  br i1 %cmp570, label %if.then.572, label %if.else.587

if.then.572:                                      ; preds = %if.else.558
  %487 = load i32, i32* %tpos, align 4
  %idxprom573 = sext i32 %487 to i64
  %488 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype574 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %488, i32 0, i32 1
  %489 = load i8*, i8** %statetype574, align 8
  %arrayidx575 = getelementptr inbounds i8, i8* %489, i64 %idxprom573
  store i8 10, i8* %arrayidx575, align 1
  %490 = load i32, i32* %tpos, align 4
  %idxprom576 = sext i32 %490 to i64
  %491 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx577 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %491, i32 0, i32 2
  %492 = load i32*, i32** %nodeidx577, align 8
  %arrayidx578 = getelementptr inbounds i32, i32* %492, i64 %idxprom576
  store i32 0, i32* %arrayidx578, align 4
  %493 = load i32, i32* %tpos, align 4
  %idxprom579 = sext i32 %493 to i64
  %494 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos580 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %494, i32 0, i32 3
  %495 = load i32*, i32** %pos580, align 8
  %arrayidx581 = getelementptr inbounds i32, i32* %495, i64 %idxprom579
  store i32 0, i32* %arrayidx581, align 4
  %496 = load i32, i32* %i, align 4
  %dec582 = add nsw i32 %496, -1
  store i32 %dec582, i32* %i, align 4
  %497 = load i32, i32* %tpos, align 4
  %sub583 = sub nsw i32 %497, 1
  %idxprom584 = sext i32 %sub583 to i64
  %498 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos585 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %498, i32 0, i32 3
  %499 = load i32*, i32** %pos585, align 8
  %arrayidx586 = getelementptr inbounds i32, i32* %499, i64 %idxprom584
  store i32 %496, i32* %arrayidx586, align 4
  br label %if.end.612

if.else.587:                                      ; preds = %if.else.558
  %500 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %500 to i64
  %501 = load i32**, i32*** %xmx, align 8
  %arrayidx589 = getelementptr inbounds i32*, i32** %501, i64 %idxprom588
  %502 = load i32*, i32** %arrayidx589, align 8
  %arrayidx590 = getelementptr inbounds i32, i32* %502, i64 3
  %503 = load i32, i32* %arrayidx590, align 4
  %504 = load i32, i32* %i, align 4
  %idxprom591 = sext i32 %504 to i64
  %505 = load i32**, i32*** %xmx, align 8
  %arrayidx592 = getelementptr inbounds i32*, i32** %505, i64 %idxprom591
  %506 = load i32*, i32** %arrayidx592, align 8
  %arrayidx593 = getelementptr inbounds i32, i32* %506, i64 1
  %507 = load i32, i32* %arrayidx593, align 4
  %508 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc594 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %508, i32 0, i32 33
  %arrayidx595 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc594, i32 0, i64 1
  %arrayidx596 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx595, i32 0, i64 1
  %509 = load i32, i32* %arrayidx596, align 4
  %add597 = add nsw i32 %507, %509
  %cmp598 = icmp eq i32 %503, %add597
  br i1 %cmp598, label %if.then.600, label %if.else.610

if.then.600:                                      ; preds = %if.else.587
  %510 = load i32, i32* %tpos, align 4
  %idxprom601 = sext i32 %510 to i64
  %511 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype602 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %511, i32 0, i32 1
  %512 = load i8*, i8** %statetype602, align 8
  %arrayidx603 = getelementptr inbounds i8, i8* %512, i64 %idxprom601
  store i8 7, i8* %arrayidx603, align 1
  %513 = load i32, i32* %tpos, align 4
  %idxprom604 = sext i32 %513 to i64
  %514 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx605 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %514, i32 0, i32 2
  %515 = load i32*, i32** %nodeidx605, align 8
  %arrayidx606 = getelementptr inbounds i32, i32* %515, i64 %idxprom604
  store i32 0, i32* %arrayidx606, align 4
  %516 = load i32, i32* %tpos, align 4
  %idxprom607 = sext i32 %516 to i64
  %517 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos608 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %517, i32 0, i32 3
  %518 = load i32*, i32** %pos608, align 8
  %arrayidx609 = getelementptr inbounds i32, i32* %518, i64 %idxprom607
  store i32 0, i32* %arrayidx609, align 4
  br label %if.end.611

if.else.610:                                      ; preds = %if.else.587
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.611

if.end.611:                                       ; preds = %if.else.610, %if.then.600
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.611, %if.then.572
  br label %if.end.613

if.end.613:                                       ; preds = %if.end.612
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.613, %if.end.550, %if.end.487, %if.end.411, %if.end.354, %if.end.302, %if.end.233, %if.end.163
  %519 = load i32, i32* %tpos, align 4
  %inc614 = add nsw i32 %519, 1
  store i32 %inc614, i32* %tpos, align 4
  %520 = load i32, i32* %tpos, align 4
  %521 = load i32, i32* %curralloc, align 4
  %cmp615 = icmp eq i32 %520, %521
  br i1 %cmp615, label %if.then.617, label %if.end.619

if.then.617:                                      ; preds = %sw.epilog
  %522 = load i32, i32* %N.addr, align 4
  %523 = load i32, i32* %curralloc, align 4
  %add618 = add nsw i32 %523, %522
  store i32 %add618, i32* %curralloc, align 4
  %524 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %525 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %524, i32 %525)
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.617, %sw.epilog
  br label %while.cond

while.end.620:                                    ; preds = %while.cond
  %526 = load i32, i32* %tpos, align 4
  %527 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %527, i32 0, i32 0
  store i32 %526, i32* %tlen, align 4
  %528 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7ReverseTrace(%struct.p7trace_s* %528)
  %529 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %530 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %529, %struct.p7trace_s** %530, align 8
  br label %return

return:                                           ; preds = %while.end.620, %if.then.557, %if.then.494, %if.then.418, %if.then.361, %if.then.251, %if.then.172, %if.then
  ret void
}

declare void @P7AllocTrace(i32, %struct.p7trace_s**) #1

declare void @P7FreeTrace(%struct.p7trace_s*) #1

declare i32 @Prob2Score(float, float) #1

declare void @P7ReallocTrace(%struct.p7trace_s*, i32) #1

declare void @P7ReverseTrace(%struct.p7trace_s*) #1

; Function Attrs: nounwind uwtable
define float @P7SmallViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s* %mx, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %retval = alloca float, align 4
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %mx.addr = alloca %struct.dpmatrix_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %ctr = alloca %struct.p7trace_s*, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %tarr = alloca %struct.p7trace_s**, align 8
  %ndom = alloca i32, align 4
  %i = alloca i32, align 4
  %pos = alloca i32, align 4
  %tpos = alloca i32, align 4
  %tlen = alloca i32, align 4
  %sqlen = alloca i32, align 4
  %totlen = alloca i32, align 4
  %sc = alloca float, align 4
  %t2 = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s* %mx, %struct.dpmatrix_s** %mx.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load i8*, i8** %dsq.addr, align 8
  %1 = load i32, i32* %L.addr, align 4
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %call = call float @P7ParsingViterbi(i8* %0, i32 %1, %struct.plan7_s* %2, %struct.p7trace_s** %ctr)
  store float %call, float* %sc, align 4
  %3 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %cmp = icmp eq %struct.p7trace_s* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  %cmp1 = icmp eq %struct.p7trace_s** %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %5)
  %6 = load float, float* %sc, align 4
  store float %6, float* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %tlen2 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %7, i32 0, i32 0
  %8 = load i32, i32* %tlen2, align 4
  %div = sdiv i32 %8, 2
  %sub = sub nsw i32 %div, 1
  store i32 %sub, i32* %ndom, align 4
  %9 = load i32, i32* %ndom, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 8, %conv
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 930, i64 %mul)
  %10 = bitcast i8* %call3 to %struct.p7trace_s**
  store %struct.p7trace_s** %10, %struct.p7trace_s*** %tarr, align 8
  store i32 0, i32* %totlen, align 4
  store i32 0, i32* %tlen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %ndom, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 %13, 2
  %add = add nsw i32 %mul6, 2
  %idxprom = sext i32 %add to i64
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos7 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %14, i32 0, i32 3
  %15 = load i32*, i32** %pos7, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %17 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 %17, 2
  %add9 = add nsw i32 %mul8, 1
  %idxprom10 = sext i32 %add9 to i64
  %18 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos11 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %18, i32 0, i32 3
  %19 = load i32*, i32** %pos11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %19, i64 %idxprom10
  %20 = load i32, i32* %arrayidx12, align 4
  %sub13 = sub nsw i32 %16, %20
  store i32 %sub13, i32* %sqlen, align 4
  %21 = load i32, i32* %sqlen, align 4
  %22 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %22, i32 0, i32 20
  %23 = load i32, i32* %M, align 4
  %call14 = call i32 @P7ViterbiSize(i32 %21, i32 %23)
  %cmp15 = icmp sgt i32 %call14, 1000
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body
  %24 = load i8*, i8** %dsq.addr, align 8
  %25 = load i32, i32* %i, align 4
  %mul18 = mul nsw i32 %25, 2
  %add19 = add nsw i32 %mul18, 1
  %idxprom20 = sext i32 %add19 to i64
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos21 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 3
  %27 = load i32*, i32** %pos21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %27, i64 %idxprom20
  %28 = load i32, i32* %arrayidx22, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %idx.ext
  %29 = load i32, i32* %sqlen, align 4
  %30 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %32 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx24 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %32, i64 %idxprom23
  %call25 = call float @P7WeeViterbi(i8* %add.ptr, i32 %29, %struct.plan7_s* %30, %struct.p7trace_s** %arrayidx24)
  br label %if.end.36

if.else:                                          ; preds = %for.body
  %33 = load i8*, i8** %dsq.addr, align 8
  %34 = load i32, i32* %i, align 4
  %mul26 = mul nsw i32 %34, 2
  %add27 = add nsw i32 %mul26, 1
  %idxprom28 = sext i32 %add27 to i64
  %35 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos29 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %35, i32 0, i32 3
  %36 = load i32*, i32** %pos29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %36, i64 %idxprom28
  %37 = load i32, i32* %arrayidx30, align 4
  %idx.ext31 = sext i32 %37 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %33, i64 %idx.ext31
  %38 = load i32, i32* %sqlen, align 4
  %39 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %40 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx.addr, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx34 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %42, i64 %idxprom33
  %call35 = call float @P7Viterbi(i8* %add.ptr32, i32 %38, %struct.plan7_s* %39, %struct.dpmatrix_s* %40, %struct.p7trace_s** %arrayidx34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.17
  %43 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx38 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %44, i64 %idxprom37
  %45 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx38, align 8
  %tlen39 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %45, i32 0, i32 0
  %46 = load i32, i32* %tlen39, align 4
  %sub40 = sub nsw i32 %46, 4
  %47 = load i32, i32* %tlen, align 4
  %add41 = add nsw i32 %47, %sub40
  store i32 %add41, i32* %tlen, align 4
  %48 = load i32, i32* %sqlen, align 4
  %49 = load i32, i32* %totlen, align 4
  %add42 = add nsw i32 %49, %48
  store i32 %add42, i32* %totlen, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %50 = load i32, i32* %i, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %ndom, align 4
  %sub43 = sub nsw i32 %51, 1
  %add44 = add nsw i32 4, %sub43
  %52 = load i32, i32* %L.addr, align 4
  %53 = load i32, i32* %totlen, align 4
  %sub45 = sub nsw i32 %52, %53
  %add46 = add nsw i32 %add44, %sub45
  %54 = load i32, i32* %tlen, align 4
  %add47 = add nsw i32 %54, %add46
  store i32 %add47, i32* %tlen, align 4
  %55 = load i32, i32* %tlen, align 4
  call void @P7AllocTrace(i32 %55, %struct.p7trace_s** %tr)
  %56 = load i32, i32* %tlen, align 4
  %57 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen48 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %57, i32 0, i32 0
  store i32 %56, i32* %tlen48, align 4
  %58 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %58, i32 0, i32 1
  %59 = load i8*, i8** %statetype, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 4, i8* %arrayidx49, align 1
  %60 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %60, i32 0, i32 2
  %61 = load i32*, i32** %nodeidx, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 0, i32* %arrayidx50, align 4
  %62 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos51 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %62, i32 0, i32 3
  %63 = load i32*, i32** %pos51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 0, i32* %arrayidx52, align 4
  %64 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype53 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %64, i32 0, i32 1
  %65 = load i8*, i8** %statetype53, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 5, i8* %arrayidx54, align 1
  %66 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx55 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %66, i32 0, i32 2
  %67 = load i32*, i32** %nodeidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 0, i32* %arrayidx56, align 4
  %68 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos57 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %68, i32 0, i32 3
  %69 = load i32*, i32** %pos57, align 8
  %arrayidx58 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 0, i32* %arrayidx58, align 4
  store i32 2, i32* %tpos, align 4
  store i32 1, i32* %pos, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.75, %for.end
  %70 = load i32, i32* %pos, align 4
  %71 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos60 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %71, i32 0, i32 3
  %72 = load i32*, i32** %pos60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %72, i64 1
  %73 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp sle i32 %70, %73
  br i1 %cmp62, label %for.body.64, label %for.end.77

for.body.64:                                      ; preds = %for.cond.59
  %74 = load i32, i32* %tpos, align 4
  %idxprom65 = sext i32 %74 to i64
  %75 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype66 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %75, i32 0, i32 1
  %76 = load i8*, i8** %statetype66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %76, i64 %idxprom65
  store i8 5, i8* %arrayidx67, align 1
  %77 = load i32, i32* %tpos, align 4
  %idxprom68 = sext i32 %77 to i64
  %78 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx69 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %78, i32 0, i32 2
  %79 = load i32*, i32** %nodeidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %79, i64 %idxprom68
  store i32 0, i32* %arrayidx70, align 4
  %80 = load i32, i32* %pos, align 4
  %81 = load i32, i32* %tpos, align 4
  %idxprom71 = sext i32 %81 to i64
  %82 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos72 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %82, i32 0, i32 3
  %83 = load i32*, i32** %pos72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %83, i64 %idxprom71
  store i32 %80, i32* %arrayidx73, align 4
  %84 = load i32, i32* %tpos, align 4
  %inc74 = add nsw i32 %84, 1
  store i32 %inc74, i32* %tpos, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.64
  %85 = load i32, i32* %pos, align 4
  %inc76 = add nsw i32 %85, 1
  store i32 %inc76, i32* %pos, align 4
  br label %for.cond.59

for.end.77:                                       ; preds = %for.cond.59
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.185, %for.end.77
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %ndom, align 4
  %cmp79 = icmp slt i32 %86, %87
  br i1 %cmp79, label %for.body.81, label %for.end.187

for.body.81:                                      ; preds = %for.cond.78
  store i32 2, i32* %t2, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.134, %for.body.81
  %88 = load i32, i32* %t2, align 4
  %89 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %89 to i64
  %90 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx84 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %90, i64 %idxprom83
  %91 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx84, align 8
  %tlen85 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %91, i32 0, i32 0
  %92 = load i32, i32* %tlen85, align 4
  %sub86 = sub nsw i32 %92, 2
  %cmp87 = icmp slt i32 %88, %sub86
  br i1 %cmp87, label %for.body.89, label %for.end.136

for.body.89:                                      ; preds = %for.cond.82
  %93 = load i32, i32* %t2, align 4
  %idxprom90 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %94 to i64
  %95 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx92 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %95, i64 %idxprom91
  %96 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx92, align 8
  %statetype93 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %96, i32 0, i32 1
  %97 = load i8*, i8** %statetype93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %97, i64 %idxprom90
  %98 = load i8, i8* %arrayidx94, align 1
  %99 = load i32, i32* %tpos, align 4
  %idxprom95 = sext i32 %99 to i64
  %100 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype96 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %100, i32 0, i32 1
  %101 = load i8*, i8** %statetype96, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %101, i64 %idxprom95
  store i8 %98, i8* %arrayidx97, align 1
  %102 = load i32, i32* %t2, align 4
  %idxprom98 = sext i32 %102 to i64
  %103 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %103 to i64
  %104 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx100 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %104, i64 %idxprom99
  %105 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx100, align 8
  %nodeidx101 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %105, i32 0, i32 2
  %106 = load i32*, i32** %nodeidx101, align 8
  %arrayidx102 = getelementptr inbounds i32, i32* %106, i64 %idxprom98
  %107 = load i32, i32* %arrayidx102, align 4
  %108 = load i32, i32* %tpos, align 4
  %idxprom103 = sext i32 %108 to i64
  %109 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx104 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %109, i32 0, i32 2
  %110 = load i32*, i32** %nodeidx104, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %110, i64 %idxprom103
  store i32 %107, i32* %arrayidx105, align 4
  %111 = load i32, i32* %t2, align 4
  %idxprom106 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %112 to i64
  %113 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx108 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %113, i64 %idxprom107
  %114 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx108, align 8
  %pos109 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %114, i32 0, i32 3
  %115 = load i32*, i32** %pos109, align 8
  %arrayidx110 = getelementptr inbounds i32, i32* %115, i64 %idxprom106
  %116 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp sgt i32 %116, 0
  br i1 %cmp111, label %if.then.113, label %if.else.128

if.then.113:                                      ; preds = %for.body.89
  %117 = load i32, i32* %t2, align 4
  %idxprom114 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %118 to i64
  %119 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx116 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %119, i64 %idxprom115
  %120 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx116, align 8
  %pos117 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %120, i32 0, i32 3
  %121 = load i32*, i32** %pos117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %121, i64 %idxprom114
  %122 = load i32, i32* %arrayidx118, align 4
  %123 = load i32, i32* %i, align 4
  %mul119 = mul nsw i32 %123, 2
  %add120 = add nsw i32 %mul119, 1
  %idxprom121 = sext i32 %add120 to i64
  %124 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos122 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %124, i32 0, i32 3
  %125 = load i32*, i32** %pos122, align 8
  %arrayidx123 = getelementptr inbounds i32, i32* %125, i64 %idxprom121
  %126 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %122, %126
  %127 = load i32, i32* %tpos, align 4
  %idxprom125 = sext i32 %127 to i64
  %128 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos126 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %128, i32 0, i32 3
  %129 = load i32*, i32** %pos126, align 8
  %arrayidx127 = getelementptr inbounds i32, i32* %129, i64 %idxprom125
  store i32 %add124, i32* %arrayidx127, align 4
  br label %if.end.132

if.else.128:                                      ; preds = %for.body.89
  %130 = load i32, i32* %tpos, align 4
  %idxprom129 = sext i32 %130 to i64
  %131 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos130 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %131, i32 0, i32 3
  %132 = load i32*, i32** %pos130, align 8
  %arrayidx131 = getelementptr inbounds i32, i32* %132, i64 %idxprom129
  store i32 0, i32* %arrayidx131, align 4
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.128, %if.then.113
  %133 = load i32, i32* %tpos, align 4
  %inc133 = add nsw i32 %133, 1
  store i32 %inc133, i32* %tpos, align 4
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.132
  %134 = load i32, i32* %t2, align 4
  %inc135 = add nsw i32 %134, 1
  store i32 %inc135, i32* %t2, align 4
  br label %for.cond.82

for.end.136:                                      ; preds = %for.cond.82
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %ndom, align 4
  %sub137 = sub nsw i32 %136, 1
  %cmp138 = icmp eq i32 %135, %sub137
  %cond = select i1 %cmp138, i32 8, i32 10
  %conv140 = trunc i32 %cond to i8
  %137 = load i32, i32* %tpos, align 4
  %idxprom141 = sext i32 %137 to i64
  %138 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype142 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %138, i32 0, i32 1
  %139 = load i8*, i8** %statetype142, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %139, i64 %idxprom141
  store i8 %conv140, i8* %arrayidx143, align 1
  %140 = load i32, i32* %tpos, align 4
  %idxprom144 = sext i32 %140 to i64
  %141 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx145 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %141, i32 0, i32 2
  %142 = load i32*, i32** %nodeidx145, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %142, i64 %idxprom144
  store i32 0, i32* %arrayidx146, align 4
  %143 = load i32, i32* %tpos, align 4
  %idxprom147 = sext i32 %143 to i64
  %144 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos148 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %144, i32 0, i32 3
  %145 = load i32*, i32** %pos148, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %145, i64 %idxprom147
  store i32 0, i32* %arrayidx149, align 4
  %146 = load i32, i32* %tpos, align 4
  %inc150 = add nsw i32 %146, 1
  store i32 %inc150, i32* %tpos, align 4
  %147 = load i32, i32* %i, align 4
  %148 = load i32, i32* %ndom, align 4
  %sub151 = sub nsw i32 %148, 1
  %cmp152 = icmp ne i32 %147, %sub151
  br i1 %cmp152, label %if.then.154, label %if.end.184

if.then.154:                                      ; preds = %for.end.136
  %149 = load i32, i32* %i, align 4
  %mul155 = mul nsw i32 %149, 2
  %add156 = add nsw i32 %mul155, 2
  %idxprom157 = sext i32 %add156 to i64
  %150 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos158 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %150, i32 0, i32 3
  %151 = load i32*, i32** %pos158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %151, i64 %idxprom157
  %152 = load i32, i32* %arrayidx159, align 4
  %add160 = add nsw i32 %152, 1
  store i32 %add160, i32* %pos, align 4
  br label %for.cond.161

for.cond.161:                                     ; preds = %for.inc.181, %if.then.154
  %153 = load i32, i32* %pos, align 4
  %154 = load i32, i32* %i, align 4
  %add162 = add nsw i32 %154, 1
  %mul163 = mul nsw i32 %add162, 2
  %add164 = add nsw i32 %mul163, 1
  %idxprom165 = sext i32 %add164 to i64
  %155 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos166 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %155, i32 0, i32 3
  %156 = load i32*, i32** %pos166, align 8
  %arrayidx167 = getelementptr inbounds i32, i32* %156, i64 %idxprom165
  %157 = load i32, i32* %arrayidx167, align 4
  %cmp168 = icmp sle i32 %153, %157
  br i1 %cmp168, label %for.body.170, label %for.end.183

for.body.170:                                     ; preds = %for.cond.161
  %158 = load i32, i32* %tpos, align 4
  %idxprom171 = sext i32 %158 to i64
  %159 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype172 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %159, i32 0, i32 1
  %160 = load i8*, i8** %statetype172, align 8
  %arrayidx173 = getelementptr inbounds i8, i8* %160, i64 %idxprom171
  store i8 10, i8* %arrayidx173, align 1
  %161 = load i32, i32* %tpos, align 4
  %idxprom174 = sext i32 %161 to i64
  %162 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx175 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %162, i32 0, i32 2
  %163 = load i32*, i32** %nodeidx175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %163, i64 %idxprom174
  store i32 0, i32* %arrayidx176, align 4
  %164 = load i32, i32* %pos, align 4
  %165 = load i32, i32* %tpos, align 4
  %idxprom177 = sext i32 %165 to i64
  %166 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos178 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %166, i32 0, i32 3
  %167 = load i32*, i32** %pos178, align 8
  %arrayidx179 = getelementptr inbounds i32, i32* %167, i64 %idxprom177
  store i32 %164, i32* %arrayidx179, align 4
  %168 = load i32, i32* %tpos, align 4
  %inc180 = add nsw i32 %168, 1
  store i32 %inc180, i32* %tpos, align 4
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.body.170
  %169 = load i32, i32* %pos, align 4
  %inc182 = add nsw i32 %169, 1
  store i32 %inc182, i32* %pos, align 4
  br label %for.cond.161

for.end.183:                                      ; preds = %for.cond.161
  br label %if.end.184

if.end.184:                                       ; preds = %for.end.183, %for.end.136
  br label %for.inc.185

for.inc.185:                                      ; preds = %if.end.184
  %170 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %170, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.78

for.end.187:                                      ; preds = %for.cond.78
  %171 = load i32, i32* %ndom, align 4
  %mul188 = mul nsw i32 %171, 2
  %idxprom189 = sext i32 %mul188 to i64
  %172 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  %pos190 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %172, i32 0, i32 3
  %173 = load i32*, i32** %pos190, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %173, i64 %idxprom189
  %174 = load i32, i32* %arrayidx191, align 4
  %add192 = add nsw i32 %174, 1
  store i32 %add192, i32* %pos, align 4
  br label %for.cond.193

for.cond.193:                                     ; preds = %for.inc.207, %for.end.187
  %175 = load i32, i32* %pos, align 4
  %176 = load i32, i32* %L.addr, align 4
  %cmp194 = icmp sle i32 %175, %176
  br i1 %cmp194, label %for.body.196, label %for.end.209

for.body.196:                                     ; preds = %for.cond.193
  %177 = load i32, i32* %tpos, align 4
  %idxprom197 = sext i32 %177 to i64
  %178 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype198 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %178, i32 0, i32 1
  %179 = load i8*, i8** %statetype198, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %179, i64 %idxprom197
  store i8 8, i8* %arrayidx199, align 1
  %180 = load i32, i32* %tpos, align 4
  %idxprom200 = sext i32 %180 to i64
  %181 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx201 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %181, i32 0, i32 2
  %182 = load i32*, i32** %nodeidx201, align 8
  %arrayidx202 = getelementptr inbounds i32, i32* %182, i64 %idxprom200
  store i32 0, i32* %arrayidx202, align 4
  %183 = load i32, i32* %pos, align 4
  %184 = load i32, i32* %tpos, align 4
  %idxprom203 = sext i32 %184 to i64
  %185 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos204 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %185, i32 0, i32 3
  %186 = load i32*, i32** %pos204, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %186, i64 %idxprom203
  store i32 %183, i32* %arrayidx205, align 4
  %187 = load i32, i32* %tpos, align 4
  %inc206 = add nsw i32 %187, 1
  store i32 %inc206, i32* %tpos, align 4
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.196
  %188 = load i32, i32* %pos, align 4
  %inc208 = add nsw i32 %188, 1
  store i32 %inc208, i32* %pos, align 4
  br label %for.cond.193

for.end.209:                                      ; preds = %for.cond.193
  %189 = load i32, i32* %tpos, align 4
  %idxprom210 = sext i32 %189 to i64
  %190 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype211 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %190, i32 0, i32 1
  %191 = load i8*, i8** %statetype211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %191, i64 %idxprom210
  store i8 9, i8* %arrayidx212, align 1
  %192 = load i32, i32* %tpos, align 4
  %idxprom213 = sext i32 %192 to i64
  %193 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx214 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %193, i32 0, i32 2
  %194 = load i32*, i32** %nodeidx214, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %194, i64 %idxprom213
  store i32 0, i32* %arrayidx215, align 4
  %195 = load i32, i32* %tpos, align 4
  %idxprom216 = sext i32 %195 to i64
  %196 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos217 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %196, i32 0, i32 3
  %197 = load i32*, i32** %pos217, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %197, i64 %idxprom216
  store i32 0, i32* %arrayidx218, align 4
  %198 = load i32, i32* %tpos, align 4
  %inc219 = add nsw i32 %198, 1
  store i32 %inc219, i32* %tpos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.220

for.cond.220:                                     ; preds = %for.inc.226, %for.end.209
  %199 = load i32, i32* %i, align 4
  %200 = load i32, i32* %ndom, align 4
  %cmp221 = icmp slt i32 %199, %200
  br i1 %cmp221, label %for.body.223, label %for.end.228

for.body.223:                                     ; preds = %for.cond.220
  %201 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %201 to i64
  %202 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx225 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %202, i64 %idxprom224
  %203 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx225, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %203)
  br label %for.inc.226

for.inc.226:                                      ; preds = %for.body.223
  %204 = load i32, i32* %i, align 4
  %inc227 = add nsw i32 %204, 1
  store i32 %inc227, i32* %i, align 4
  br label %for.cond.220

for.end.228:                                      ; preds = %for.cond.220
  %205 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %206 = bitcast %struct.p7trace_s** %205 to i8*
  call void @free(i8* %206) #4
  %207 = load %struct.p7trace_s*, %struct.p7trace_s** %ctr, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %207)
  %208 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %209 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %208, %struct.p7trace_s** %209, align 8
  %210 = load float, float* %sc, align 4
  store float %210, float* %retval
  br label %return

return:                                           ; preds = %for.end.228, %if.then
  %211 = load float, float* %retval
  ret float %211
}

; Function Attrs: nounwind uwtable
define float @P7ParsingViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  %tmx = alloca %struct.dpmatrix_s*, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %xtr = alloca i32**, align 8
  %mtr = alloca i32**, align 8
  %dtr = alloca i32**, align 8
  %itr = alloca i32**, align 8
  %btr = alloca i32*, align 8
  %etr = alloca i32*, align 8
  %sc = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %tpos = alloca i32, align 4
  %cur = alloca i32, align 4
  %prv = alloca i32, align 4
  %curralloc = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %0, i32 0, i32 20
  %1 = load i32, i32* %M, align 4
  %call = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 2, i32 %1, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %mx, align 8
  %2 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %2, i32 0, i32 20
  %3 = load i32, i32* %M1, align 4
  %call2 = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 2, i32 %3, i32*** %xtr, i32*** %mtr, i32*** %itr, i32*** %dtr)
  store %struct.dpmatrix_s* %call2, %struct.dpmatrix_s** %tmx, align 8
  %4 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 1083, i64 %mul)
  %5 = bitcast i8* %call3 to i32*
  store i32* %5, i32** %btr, align 8
  %6 = load i32, i32* %L.addr, align 4
  %add4 = add nsw i32 %6, 1
  %conv5 = sext i32 %add4 to i64
  %mul6 = mul i64 4, %conv5
  %call7 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 1084, i64 %mul6)
  %7 = bitcast i8* %call7 to i32*
  store i32* %7, i32** %etr, align 8
  %8 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 0
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 4
  store i32 0, i32* %arrayidx8, align 4
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %10, i32 0, i32 33
  %arrayidx9 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx9, i32 0, i64 0
  %11 = load i32, i32* %arrayidx10, align 4
  %12 = load i32**, i32*** %xmx, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %12, i64 0
  %13 = load i32*, i32** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %11, i32* %arrayidx12, align 4
  %14 = load i32*, i32** %btr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %arrayidx13, align 4
  %15 = load i32**, i32*** %xmx, align 8
  %arrayidx14 = getelementptr inbounds i32*, i32** %15, i64 0
  %16 = load i32*, i32** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %16, i64 3
  store i32 -987654321, i32* %arrayidx15, align 4
  %17 = load i32**, i32*** %xmx, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %17, i64 0
  %18 = load i32*, i32** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 -987654321, i32* %arrayidx17, align 4
  %19 = load i32**, i32*** %xmx, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %19, i64 0
  %20 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 -987654321, i32* %arrayidx19, align 4
  %21 = load i32*, i32** %etr, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 -1, i32* %arrayidx20, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %22 = load i32, i32* %k, align 4
  %23 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M21 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %23, i32 0, i32 20
  %24 = load i32, i32* %M21, align 4
  %cmp = icmp sle i32 %22, %24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %k, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32**, i32*** %dmx, align 8
  %arrayidx23 = getelementptr inbounds i32*, i32** %26, i64 0
  %27 = load i32*, i32** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %27, i64 %idxprom
  store i32 -987654321, i32* %arrayidx24, align 4
  %28 = load i32, i32* %k, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load i32**, i32*** %imx, align 8
  %arrayidx26 = getelementptr inbounds i32*, i32** %29, i64 0
  %30 = load i32*, i32** %arrayidx26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %30, i64 %idxprom25
  store i32 -987654321, i32* %arrayidx27, align 4
  %31 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load i32**, i32*** %mmx, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %32, i64 0
  %33 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %33, i64 %idxprom28
  store i32 -987654321, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %k, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.529, %for.end
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %L.addr, align 4
  %cmp32 = icmp sle i32 %35, %36
  br i1 %cmp32, label %for.body.34, label %for.end.531

for.body.34:                                      ; preds = %for.cond.31
  %37 = load i32, i32* %i, align 4
  %rem = srem i32 %37, 2
  store i32 %rem, i32* %cur, align 4
  %38 = load i32, i32* %cur, align 4
  %tobool = icmp ne i32 %38, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %prv, align 4
  %39 = load i32, i32* %cur, align 4
  %idxprom35 = sext i32 %39 to i64
  %40 = load i32**, i32*** %dmx, align 8
  %arrayidx36 = getelementptr inbounds i32*, i32** %40, i64 %idxprom35
  %41 = load i32*, i32** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 -987654321, i32* %arrayidx37, align 4
  %42 = load i32, i32* %cur, align 4
  %idxprom38 = sext i32 %42 to i64
  %43 = load i32**, i32*** %imx, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %43, i64 %idxprom38
  %44 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 -987654321, i32* %arrayidx40, align 4
  %45 = load i32, i32* %cur, align 4
  %idxprom41 = sext i32 %45 to i64
  %46 = load i32**, i32*** %mmx, align 8
  %arrayidx42 = getelementptr inbounds i32*, i32** %46, i64 %idxprom41
  %47 = load i32*, i32** %arrayidx42, align 8
  %arrayidx43 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 -987654321, i32* %arrayidx43, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.348, %for.body.34
  %48 = load i32, i32* %k, align 4
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M45 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 20
  %50 = load i32, i32* %M45, align 4
  %cmp46 = icmp sle i32 %48, %50
  br i1 %cmp46, label %for.body.48, label %for.end.350

for.body.48:                                      ; preds = %for.cond.44
  %51 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %51 to i64
  %52 = load i32, i32* %cur, align 4
  %idxprom50 = sext i32 %52 to i64
  %53 = load i32**, i32*** %mmx, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %53, i64 %idxprom50
  %54 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %54, i64 %idxprom49
  store i32 -987654321, i32* %arrayidx52, align 4
  %55 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %55, 1
  %idxprom53 = sext i32 %sub to i64
  %56 = load i32, i32* %prv, align 4
  %idxprom54 = sext i32 %56 to i64
  %57 = load i32**, i32*** %mmx, align 8
  %arrayidx55 = getelementptr inbounds i32*, i32** %57, i64 %idxprom54
  %58 = load i32*, i32** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %58, i64 %idxprom53
  %59 = load i32, i32* %arrayidx56, align 4
  %60 = load i32, i32* %k, align 4
  %sub57 = sub nsw i32 %60, 1
  %idxprom58 = sext i32 %sub57 to i64
  %61 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %61, i32 0, i32 30
  %62 = load i32**, i32*** %tsc, align 8
  %arrayidx59 = getelementptr inbounds i32*, i32** %62, i64 0
  %63 = load i32*, i32** %arrayidx59, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %63, i64 %idxprom58
  %64 = load i32, i32* %arrayidx60, align 4
  %add61 = add nsw i32 %59, %64
  store i32 %add61, i32* %sc, align 4
  %cmp62 = icmp sgt i32 %add61, -987654321
  br i1 %cmp62, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.48
  %65 = load i32, i32* %sc, align 4
  %66 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %66 to i64
  %67 = load i32, i32* %cur, align 4
  %idxprom65 = sext i32 %67 to i64
  %68 = load i32**, i32*** %mmx, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %68, i64 %idxprom65
  %69 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %69, i64 %idxprom64
  store i32 %65, i32* %arrayidx67, align 4
  %70 = load i32, i32* %k, align 4
  %sub68 = sub nsw i32 %70, 1
  %idxprom69 = sext i32 %sub68 to i64
  %71 = load i32, i32* %prv, align 4
  %idxprom70 = sext i32 %71 to i64
  %72 = load i32**, i32*** %mtr, align 8
  %arrayidx71 = getelementptr inbounds i32*, i32** %72, i64 %idxprom70
  %73 = load i32*, i32** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %73, i64 %idxprom69
  %74 = load i32, i32* %arrayidx72, align 4
  %75 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %75 to i64
  %76 = load i32, i32* %cur, align 4
  %idxprom74 = sext i32 %76 to i64
  %77 = load i32**, i32*** %mtr, align 8
  %arrayidx75 = getelementptr inbounds i32*, i32** %77, i64 %idxprom74
  %78 = load i32*, i32** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %78, i64 %idxprom73
  store i32 %74, i32* %arrayidx76, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.48
  %79 = load i32, i32* %k, align 4
  %sub77 = sub nsw i32 %79, 1
  %idxprom78 = sext i32 %sub77 to i64
  %80 = load i32, i32* %prv, align 4
  %idxprom79 = sext i32 %80 to i64
  %81 = load i32**, i32*** %imx, align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %81, i64 %idxprom79
  %82 = load i32*, i32** %arrayidx80, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %82, i64 %idxprom78
  %83 = load i32, i32* %arrayidx81, align 4
  %84 = load i32, i32* %k, align 4
  %sub82 = sub nsw i32 %84, 1
  %idxprom83 = sext i32 %sub82 to i64
  %85 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc84 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 30
  %86 = load i32**, i32*** %tsc84, align 8
  %arrayidx85 = getelementptr inbounds i32*, i32** %86, i64 3
  %87 = load i32*, i32** %arrayidx85, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %87, i64 %idxprom83
  %88 = load i32, i32* %arrayidx86, align 4
  %add87 = add nsw i32 %83, %88
  store i32 %add87, i32* %sc, align 4
  %89 = load i32, i32* %k, align 4
  %idxprom88 = sext i32 %89 to i64
  %90 = load i32, i32* %cur, align 4
  %idxprom89 = sext i32 %90 to i64
  %91 = load i32**, i32*** %mmx, align 8
  %arrayidx90 = getelementptr inbounds i32*, i32** %91, i64 %idxprom89
  %92 = load i32*, i32** %arrayidx90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %92, i64 %idxprom88
  %93 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp sgt i32 %add87, %93
  br i1 %cmp92, label %if.then.94, label %if.end.108

if.then.94:                                       ; preds = %if.end
  %94 = load i32, i32* %sc, align 4
  %95 = load i32, i32* %k, align 4
  %idxprom95 = sext i32 %95 to i64
  %96 = load i32, i32* %cur, align 4
  %idxprom96 = sext i32 %96 to i64
  %97 = load i32**, i32*** %mmx, align 8
  %arrayidx97 = getelementptr inbounds i32*, i32** %97, i64 %idxprom96
  %98 = load i32*, i32** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %98, i64 %idxprom95
  store i32 %94, i32* %arrayidx98, align 4
  %99 = load i32, i32* %k, align 4
  %sub99 = sub nsw i32 %99, 1
  %idxprom100 = sext i32 %sub99 to i64
  %100 = load i32, i32* %prv, align 4
  %idxprom101 = sext i32 %100 to i64
  %101 = load i32**, i32*** %itr, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %101, i64 %idxprom101
  %102 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %102, i64 %idxprom100
  %103 = load i32, i32* %arrayidx103, align 4
  %104 = load i32, i32* %k, align 4
  %idxprom104 = sext i32 %104 to i64
  %105 = load i32, i32* %cur, align 4
  %idxprom105 = sext i32 %105 to i64
  %106 = load i32**, i32*** %mtr, align 8
  %arrayidx106 = getelementptr inbounds i32*, i32** %106, i64 %idxprom105
  %107 = load i32*, i32** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %107, i64 %idxprom104
  store i32 %103, i32* %arrayidx107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.94, %if.end
  %108 = load i32, i32* %prv, align 4
  %idxprom109 = sext i32 %108 to i64
  %109 = load i32**, i32*** %xmx, align 8
  %arrayidx110 = getelementptr inbounds i32*, i32** %109, i64 %idxprom109
  %110 = load i32*, i32** %arrayidx110, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %110, i64 0
  %111 = load i32, i32* %arrayidx111, align 4
  %112 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %112 to i64
  %113 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %113, i32 0, i32 34
  %114 = load i32*, i32** %bsc, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %114, i64 %idxprom112
  %115 = load i32, i32* %arrayidx113, align 4
  %add114 = add nsw i32 %111, %115
  store i32 %add114, i32* %sc, align 4
  %116 = load i32, i32* %k, align 4
  %idxprom115 = sext i32 %116 to i64
  %117 = load i32, i32* %cur, align 4
  %idxprom116 = sext i32 %117 to i64
  %118 = load i32**, i32*** %mmx, align 8
  %arrayidx117 = getelementptr inbounds i32*, i32** %118, i64 %idxprom116
  %119 = load i32*, i32** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %119, i64 %idxprom115
  %120 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp sgt i32 %add114, %120
  br i1 %cmp119, label %if.then.121, label %if.end.131

if.then.121:                                      ; preds = %if.end.108
  %121 = load i32, i32* %sc, align 4
  %122 = load i32, i32* %k, align 4
  %idxprom122 = sext i32 %122 to i64
  %123 = load i32, i32* %cur, align 4
  %idxprom123 = sext i32 %123 to i64
  %124 = load i32**, i32*** %mmx, align 8
  %arrayidx124 = getelementptr inbounds i32*, i32** %124, i64 %idxprom123
  %125 = load i32*, i32** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i32, i32* %125, i64 %idxprom122
  store i32 %121, i32* %arrayidx125, align 4
  %126 = load i32, i32* %i, align 4
  %sub126 = sub nsw i32 %126, 1
  %127 = load i32, i32* %k, align 4
  %idxprom127 = sext i32 %127 to i64
  %128 = load i32, i32* %cur, align 4
  %idxprom128 = sext i32 %128 to i64
  %129 = load i32**, i32*** %mtr, align 8
  %arrayidx129 = getelementptr inbounds i32*, i32** %129, i64 %idxprom128
  %130 = load i32*, i32** %arrayidx129, align 8
  %arrayidx130 = getelementptr inbounds i32, i32* %130, i64 %idxprom127
  store i32 %sub126, i32* %arrayidx130, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.121, %if.end.108
  %131 = load i32, i32* %k, align 4
  %sub132 = sub nsw i32 %131, 1
  %idxprom133 = sext i32 %sub132 to i64
  %132 = load i32, i32* %prv, align 4
  %idxprom134 = sext i32 %132 to i64
  %133 = load i32**, i32*** %dmx, align 8
  %arrayidx135 = getelementptr inbounds i32*, i32** %133, i64 %idxprom134
  %134 = load i32*, i32** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %134, i64 %idxprom133
  %135 = load i32, i32* %arrayidx136, align 4
  %136 = load i32, i32* %k, align 4
  %sub137 = sub nsw i32 %136, 1
  %idxprom138 = sext i32 %sub137 to i64
  %137 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc139 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %137, i32 0, i32 30
  %138 = load i32**, i32*** %tsc139, align 8
  %arrayidx140 = getelementptr inbounds i32*, i32** %138, i64 5
  %139 = load i32*, i32** %arrayidx140, align 8
  %arrayidx141 = getelementptr inbounds i32, i32* %139, i64 %idxprom138
  %140 = load i32, i32* %arrayidx141, align 4
  %add142 = add nsw i32 %135, %140
  store i32 %add142, i32* %sc, align 4
  %141 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %141 to i64
  %142 = load i32, i32* %cur, align 4
  %idxprom144 = sext i32 %142 to i64
  %143 = load i32**, i32*** %mmx, align 8
  %arrayidx145 = getelementptr inbounds i32*, i32** %143, i64 %idxprom144
  %144 = load i32*, i32** %arrayidx145, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %144, i64 %idxprom143
  %145 = load i32, i32* %arrayidx146, align 4
  %cmp147 = icmp sgt i32 %add142, %145
  br i1 %cmp147, label %if.then.149, label %if.end.163

if.then.149:                                      ; preds = %if.end.131
  %146 = load i32, i32* %sc, align 4
  %147 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %147 to i64
  %148 = load i32, i32* %cur, align 4
  %idxprom151 = sext i32 %148 to i64
  %149 = load i32**, i32*** %mmx, align 8
  %arrayidx152 = getelementptr inbounds i32*, i32** %149, i64 %idxprom151
  %150 = load i32*, i32** %arrayidx152, align 8
  %arrayidx153 = getelementptr inbounds i32, i32* %150, i64 %idxprom150
  store i32 %146, i32* %arrayidx153, align 4
  %151 = load i32, i32* %k, align 4
  %sub154 = sub nsw i32 %151, 1
  %idxprom155 = sext i32 %sub154 to i64
  %152 = load i32, i32* %prv, align 4
  %idxprom156 = sext i32 %152 to i64
  %153 = load i32**, i32*** %dtr, align 8
  %arrayidx157 = getelementptr inbounds i32*, i32** %153, i64 %idxprom156
  %154 = load i32*, i32** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i32, i32* %154, i64 %idxprom155
  %155 = load i32, i32* %arrayidx158, align 4
  %156 = load i32, i32* %k, align 4
  %idxprom159 = sext i32 %156 to i64
  %157 = load i32, i32* %cur, align 4
  %idxprom160 = sext i32 %157 to i64
  %158 = load i32**, i32*** %mtr, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %158, i64 %idxprom160
  %159 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %159, i64 %idxprom159
  store i32 %155, i32* %arrayidx162, align 4
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.149, %if.end.131
  %160 = load i32, i32* %k, align 4
  %idxprom164 = sext i32 %160 to i64
  %161 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %161 to i64
  %162 = load i8*, i8** %dsq.addr, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %162, i64 %idxprom165
  %163 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %163 to i32
  %idxprom168 = sext i32 %conv167 to i64
  %164 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %164, i32 0, i32 31
  %165 = load i32**, i32*** %msc, align 8
  %arrayidx169 = getelementptr inbounds i32*, i32** %165, i64 %idxprom168
  %166 = load i32*, i32** %arrayidx169, align 8
  %arrayidx170 = getelementptr inbounds i32, i32* %166, i64 %idxprom164
  %167 = load i32, i32* %arrayidx170, align 4
  %cmp171 = icmp ne i32 %167, -987654321
  br i1 %cmp171, label %if.then.173, label %if.else

if.then.173:                                      ; preds = %if.end.163
  %168 = load i32, i32* %k, align 4
  %idxprom174 = sext i32 %168 to i64
  %169 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %169 to i64
  %170 = load i8*, i8** %dsq.addr, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %170, i64 %idxprom175
  %171 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %171 to i32
  %idxprom178 = sext i32 %conv177 to i64
  %172 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc179 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %172, i32 0, i32 31
  %173 = load i32**, i32*** %msc179, align 8
  %arrayidx180 = getelementptr inbounds i32*, i32** %173, i64 %idxprom178
  %174 = load i32*, i32** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds i32, i32* %174, i64 %idxprom174
  %175 = load i32, i32* %arrayidx181, align 4
  %176 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %176 to i64
  %177 = load i32, i32* %cur, align 4
  %idxprom183 = sext i32 %177 to i64
  %178 = load i32**, i32*** %mmx, align 8
  %arrayidx184 = getelementptr inbounds i32*, i32** %178, i64 %idxprom183
  %179 = load i32*, i32** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %179, i64 %idxprom182
  %180 = load i32, i32* %arrayidx185, align 4
  %add186 = add nsw i32 %180, %175
  store i32 %add186, i32* %arrayidx185, align 4
  br label %if.end.191

if.else:                                          ; preds = %if.end.163
  %181 = load i32, i32* %k, align 4
  %idxprom187 = sext i32 %181 to i64
  %182 = load i32, i32* %cur, align 4
  %idxprom188 = sext i32 %182 to i64
  %183 = load i32**, i32*** %mmx, align 8
  %arrayidx189 = getelementptr inbounds i32*, i32** %183, i64 %idxprom188
  %184 = load i32*, i32** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %184, i64 %idxprom187
  store i32 -987654321, i32* %arrayidx190, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.else, %if.then.173
  %185 = load i32, i32* %k, align 4
  %idxprom192 = sext i32 %185 to i64
  %186 = load i32, i32* %cur, align 4
  %idxprom193 = sext i32 %186 to i64
  %187 = load i32**, i32*** %dmx, align 8
  %arrayidx194 = getelementptr inbounds i32*, i32** %187, i64 %idxprom193
  %188 = load i32*, i32** %arrayidx194, align 8
  %arrayidx195 = getelementptr inbounds i32, i32* %188, i64 %idxprom192
  store i32 -987654321, i32* %arrayidx195, align 4
  %189 = load i32, i32* %k, align 4
  %sub196 = sub nsw i32 %189, 1
  %idxprom197 = sext i32 %sub196 to i64
  %190 = load i32, i32* %cur, align 4
  %idxprom198 = sext i32 %190 to i64
  %191 = load i32**, i32*** %mmx, align 8
  %arrayidx199 = getelementptr inbounds i32*, i32** %191, i64 %idxprom198
  %192 = load i32*, i32** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %192, i64 %idxprom197
  %193 = load i32, i32* %arrayidx200, align 4
  %194 = load i32, i32* %k, align 4
  %sub201 = sub nsw i32 %194, 1
  %idxprom202 = sext i32 %sub201 to i64
  %195 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc203 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %195, i32 0, i32 30
  %196 = load i32**, i32*** %tsc203, align 8
  %arrayidx204 = getelementptr inbounds i32*, i32** %196, i64 2
  %197 = load i32*, i32** %arrayidx204, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %197, i64 %idxprom202
  %198 = load i32, i32* %arrayidx205, align 4
  %add206 = add nsw i32 %193, %198
  store i32 %add206, i32* %sc, align 4
  %cmp207 = icmp sgt i32 %add206, -987654321
  br i1 %cmp207, label %if.then.209, label %if.end.223

if.then.209:                                      ; preds = %if.end.191
  %199 = load i32, i32* %sc, align 4
  %200 = load i32, i32* %k, align 4
  %idxprom210 = sext i32 %200 to i64
  %201 = load i32, i32* %cur, align 4
  %idxprom211 = sext i32 %201 to i64
  %202 = load i32**, i32*** %dmx, align 8
  %arrayidx212 = getelementptr inbounds i32*, i32** %202, i64 %idxprom211
  %203 = load i32*, i32** %arrayidx212, align 8
  %arrayidx213 = getelementptr inbounds i32, i32* %203, i64 %idxprom210
  store i32 %199, i32* %arrayidx213, align 4
  %204 = load i32, i32* %k, align 4
  %sub214 = sub nsw i32 %204, 1
  %idxprom215 = sext i32 %sub214 to i64
  %205 = load i32, i32* %cur, align 4
  %idxprom216 = sext i32 %205 to i64
  %206 = load i32**, i32*** %mtr, align 8
  %arrayidx217 = getelementptr inbounds i32*, i32** %206, i64 %idxprom216
  %207 = load i32*, i32** %arrayidx217, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %207, i64 %idxprom215
  %208 = load i32, i32* %arrayidx218, align 4
  %209 = load i32, i32* %k, align 4
  %idxprom219 = sext i32 %209 to i64
  %210 = load i32, i32* %cur, align 4
  %idxprom220 = sext i32 %210 to i64
  %211 = load i32**, i32*** %dtr, align 8
  %arrayidx221 = getelementptr inbounds i32*, i32** %211, i64 %idxprom220
  %212 = load i32*, i32** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %212, i64 %idxprom219
  store i32 %208, i32* %arrayidx222, align 4
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.209, %if.end.191
  %213 = load i32, i32* %k, align 4
  %sub224 = sub nsw i32 %213, 1
  %idxprom225 = sext i32 %sub224 to i64
  %214 = load i32, i32* %cur, align 4
  %idxprom226 = sext i32 %214 to i64
  %215 = load i32**, i32*** %dmx, align 8
  %arrayidx227 = getelementptr inbounds i32*, i32** %215, i64 %idxprom226
  %216 = load i32*, i32** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %216, i64 %idxprom225
  %217 = load i32, i32* %arrayidx228, align 4
  %218 = load i32, i32* %k, align 4
  %sub229 = sub nsw i32 %218, 1
  %idxprom230 = sext i32 %sub229 to i64
  %219 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc231 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %219, i32 0, i32 30
  %220 = load i32**, i32*** %tsc231, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %220, i64 6
  %221 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %221, i64 %idxprom230
  %222 = load i32, i32* %arrayidx233, align 4
  %add234 = add nsw i32 %217, %222
  store i32 %add234, i32* %sc, align 4
  %223 = load i32, i32* %k, align 4
  %idxprom235 = sext i32 %223 to i64
  %224 = load i32, i32* %cur, align 4
  %idxprom236 = sext i32 %224 to i64
  %225 = load i32**, i32*** %dmx, align 8
  %arrayidx237 = getelementptr inbounds i32*, i32** %225, i64 %idxprom236
  %226 = load i32*, i32** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %226, i64 %idxprom235
  %227 = load i32, i32* %arrayidx238, align 4
  %cmp239 = icmp sgt i32 %add234, %227
  br i1 %cmp239, label %if.then.241, label %if.end.255

if.then.241:                                      ; preds = %if.end.223
  %228 = load i32, i32* %sc, align 4
  %229 = load i32, i32* %k, align 4
  %idxprom242 = sext i32 %229 to i64
  %230 = load i32, i32* %cur, align 4
  %idxprom243 = sext i32 %230 to i64
  %231 = load i32**, i32*** %dmx, align 8
  %arrayidx244 = getelementptr inbounds i32*, i32** %231, i64 %idxprom243
  %232 = load i32*, i32** %arrayidx244, align 8
  %arrayidx245 = getelementptr inbounds i32, i32* %232, i64 %idxprom242
  store i32 %228, i32* %arrayidx245, align 4
  %233 = load i32, i32* %k, align 4
  %sub246 = sub nsw i32 %233, 1
  %idxprom247 = sext i32 %sub246 to i64
  %234 = load i32, i32* %cur, align 4
  %idxprom248 = sext i32 %234 to i64
  %235 = load i32**, i32*** %dtr, align 8
  %arrayidx249 = getelementptr inbounds i32*, i32** %235, i64 %idxprom248
  %236 = load i32*, i32** %arrayidx249, align 8
  %arrayidx250 = getelementptr inbounds i32, i32* %236, i64 %idxprom247
  %237 = load i32, i32* %arrayidx250, align 4
  %238 = load i32, i32* %k, align 4
  %idxprom251 = sext i32 %238 to i64
  %239 = load i32, i32* %cur, align 4
  %idxprom252 = sext i32 %239 to i64
  %240 = load i32**, i32*** %dtr, align 8
  %arrayidx253 = getelementptr inbounds i32*, i32** %240, i64 %idxprom252
  %241 = load i32*, i32** %arrayidx253, align 8
  %arrayidx254 = getelementptr inbounds i32, i32* %241, i64 %idxprom251
  store i32 %237, i32* %arrayidx254, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.241, %if.end.223
  %242 = load i32, i32* %k, align 4
  %243 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M256 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %243, i32 0, i32 20
  %244 = load i32, i32* %M256, align 4
  %cmp257 = icmp slt i32 %242, %244
  br i1 %cmp257, label %if.then.259, label %if.end.347

if.then.259:                                      ; preds = %if.end.255
  %245 = load i32, i32* %k, align 4
  %idxprom260 = sext i32 %245 to i64
  %246 = load i32, i32* %cur, align 4
  %idxprom261 = sext i32 %246 to i64
  %247 = load i32**, i32*** %imx, align 8
  %arrayidx262 = getelementptr inbounds i32*, i32** %247, i64 %idxprom261
  %248 = load i32*, i32** %arrayidx262, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %248, i64 %idxprom260
  store i32 -987654321, i32* %arrayidx263, align 4
  %249 = load i32, i32* %k, align 4
  %idxprom264 = sext i32 %249 to i64
  %250 = load i32, i32* %prv, align 4
  %idxprom265 = sext i32 %250 to i64
  %251 = load i32**, i32*** %mmx, align 8
  %arrayidx266 = getelementptr inbounds i32*, i32** %251, i64 %idxprom265
  %252 = load i32*, i32** %arrayidx266, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %252, i64 %idxprom264
  %253 = load i32, i32* %arrayidx267, align 4
  %254 = load i32, i32* %k, align 4
  %idxprom268 = sext i32 %254 to i64
  %255 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc269 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %255, i32 0, i32 30
  %256 = load i32**, i32*** %tsc269, align 8
  %arrayidx270 = getelementptr inbounds i32*, i32** %256, i64 1
  %257 = load i32*, i32** %arrayidx270, align 8
  %arrayidx271 = getelementptr inbounds i32, i32* %257, i64 %idxprom268
  %258 = load i32, i32* %arrayidx271, align 4
  %add272 = add nsw i32 %253, %258
  store i32 %add272, i32* %sc, align 4
  %cmp273 = icmp sgt i32 %add272, -987654321
  br i1 %cmp273, label %if.then.275, label %if.end.288

if.then.275:                                      ; preds = %if.then.259
  %259 = load i32, i32* %sc, align 4
  %260 = load i32, i32* %k, align 4
  %idxprom276 = sext i32 %260 to i64
  %261 = load i32, i32* %cur, align 4
  %idxprom277 = sext i32 %261 to i64
  %262 = load i32**, i32*** %imx, align 8
  %arrayidx278 = getelementptr inbounds i32*, i32** %262, i64 %idxprom277
  %263 = load i32*, i32** %arrayidx278, align 8
  %arrayidx279 = getelementptr inbounds i32, i32* %263, i64 %idxprom276
  store i32 %259, i32* %arrayidx279, align 4
  %264 = load i32, i32* %k, align 4
  %idxprom280 = sext i32 %264 to i64
  %265 = load i32, i32* %prv, align 4
  %idxprom281 = sext i32 %265 to i64
  %266 = load i32**, i32*** %mtr, align 8
  %arrayidx282 = getelementptr inbounds i32*, i32** %266, i64 %idxprom281
  %267 = load i32*, i32** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %267, i64 %idxprom280
  %268 = load i32, i32* %arrayidx283, align 4
  %269 = load i32, i32* %k, align 4
  %idxprom284 = sext i32 %269 to i64
  %270 = load i32, i32* %cur, align 4
  %idxprom285 = sext i32 %270 to i64
  %271 = load i32**, i32*** %itr, align 8
  %arrayidx286 = getelementptr inbounds i32*, i32** %271, i64 %idxprom285
  %272 = load i32*, i32** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %272, i64 %idxprom284
  store i32 %268, i32* %arrayidx287, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.275, %if.then.259
  %273 = load i32, i32* %k, align 4
  %idxprom289 = sext i32 %273 to i64
  %274 = load i32, i32* %prv, align 4
  %idxprom290 = sext i32 %274 to i64
  %275 = load i32**, i32*** %imx, align 8
  %arrayidx291 = getelementptr inbounds i32*, i32** %275, i64 %idxprom290
  %276 = load i32*, i32** %arrayidx291, align 8
  %arrayidx292 = getelementptr inbounds i32, i32* %276, i64 %idxprom289
  %277 = load i32, i32* %arrayidx292, align 4
  %278 = load i32, i32* %k, align 4
  %idxprom293 = sext i32 %278 to i64
  %279 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc294 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %279, i32 0, i32 30
  %280 = load i32**, i32*** %tsc294, align 8
  %arrayidx295 = getelementptr inbounds i32*, i32** %280, i64 4
  %281 = load i32*, i32** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds i32, i32* %281, i64 %idxprom293
  %282 = load i32, i32* %arrayidx296, align 4
  %add297 = add nsw i32 %277, %282
  store i32 %add297, i32* %sc, align 4
  %283 = load i32, i32* %k, align 4
  %idxprom298 = sext i32 %283 to i64
  %284 = load i32, i32* %cur, align 4
  %idxprom299 = sext i32 %284 to i64
  %285 = load i32**, i32*** %imx, align 8
  %arrayidx300 = getelementptr inbounds i32*, i32** %285, i64 %idxprom299
  %286 = load i32*, i32** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds i32, i32* %286, i64 %idxprom298
  %287 = load i32, i32* %arrayidx301, align 4
  %cmp302 = icmp sgt i32 %add297, %287
  br i1 %cmp302, label %if.then.304, label %if.end.317

if.then.304:                                      ; preds = %if.end.288
  %288 = load i32, i32* %sc, align 4
  %289 = load i32, i32* %k, align 4
  %idxprom305 = sext i32 %289 to i64
  %290 = load i32, i32* %cur, align 4
  %idxprom306 = sext i32 %290 to i64
  %291 = load i32**, i32*** %imx, align 8
  %arrayidx307 = getelementptr inbounds i32*, i32** %291, i64 %idxprom306
  %292 = load i32*, i32** %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds i32, i32* %292, i64 %idxprom305
  store i32 %288, i32* %arrayidx308, align 4
  %293 = load i32, i32* %k, align 4
  %idxprom309 = sext i32 %293 to i64
  %294 = load i32, i32* %prv, align 4
  %idxprom310 = sext i32 %294 to i64
  %295 = load i32**, i32*** %itr, align 8
  %arrayidx311 = getelementptr inbounds i32*, i32** %295, i64 %idxprom310
  %296 = load i32*, i32** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %296, i64 %idxprom309
  %297 = load i32, i32* %arrayidx312, align 4
  %298 = load i32, i32* %k, align 4
  %idxprom313 = sext i32 %298 to i64
  %299 = load i32, i32* %cur, align 4
  %idxprom314 = sext i32 %299 to i64
  %300 = load i32**, i32*** %itr, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %300, i64 %idxprom314
  %301 = load i32*, i32** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %301, i64 %idxprom313
  store i32 %297, i32* %arrayidx316, align 4
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.304, %if.end.288
  %302 = load i32, i32* %k, align 4
  %idxprom318 = sext i32 %302 to i64
  %303 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %303 to i64
  %304 = load i8*, i8** %dsq.addr, align 8
  %arrayidx320 = getelementptr inbounds i8, i8* %304, i64 %idxprom319
  %305 = load i8, i8* %arrayidx320, align 1
  %conv321 = sext i8 %305 to i32
  %idxprom322 = sext i32 %conv321 to i64
  %306 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %306, i32 0, i32 32
  %307 = load i32**, i32*** %isc, align 8
  %arrayidx323 = getelementptr inbounds i32*, i32** %307, i64 %idxprom322
  %308 = load i32*, i32** %arrayidx323, align 8
  %arrayidx324 = getelementptr inbounds i32, i32* %308, i64 %idxprom318
  %309 = load i32, i32* %arrayidx324, align 4
  %cmp325 = icmp ne i32 %309, -987654321
  br i1 %cmp325, label %if.then.327, label %if.else.341

if.then.327:                                      ; preds = %if.end.317
  %310 = load i32, i32* %k, align 4
  %idxprom328 = sext i32 %310 to i64
  %311 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %311 to i64
  %312 = load i8*, i8** %dsq.addr, align 8
  %arrayidx330 = getelementptr inbounds i8, i8* %312, i64 %idxprom329
  %313 = load i8, i8* %arrayidx330, align 1
  %conv331 = sext i8 %313 to i32
  %idxprom332 = sext i32 %conv331 to i64
  %314 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc333 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %314, i32 0, i32 32
  %315 = load i32**, i32*** %isc333, align 8
  %arrayidx334 = getelementptr inbounds i32*, i32** %315, i64 %idxprom332
  %316 = load i32*, i32** %arrayidx334, align 8
  %arrayidx335 = getelementptr inbounds i32, i32* %316, i64 %idxprom328
  %317 = load i32, i32* %arrayidx335, align 4
  %318 = load i32, i32* %k, align 4
  %idxprom336 = sext i32 %318 to i64
  %319 = load i32, i32* %cur, align 4
  %idxprom337 = sext i32 %319 to i64
  %320 = load i32**, i32*** %imx, align 8
  %arrayidx338 = getelementptr inbounds i32*, i32** %320, i64 %idxprom337
  %321 = load i32*, i32** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %321, i64 %idxprom336
  %322 = load i32, i32* %arrayidx339, align 4
  %add340 = add nsw i32 %322, %317
  store i32 %add340, i32* %arrayidx339, align 4
  br label %if.end.346

if.else.341:                                      ; preds = %if.end.317
  %323 = load i32, i32* %k, align 4
  %idxprom342 = sext i32 %323 to i64
  %324 = load i32, i32* %cur, align 4
  %idxprom343 = sext i32 %324 to i64
  %325 = load i32**, i32*** %imx, align 8
  %arrayidx344 = getelementptr inbounds i32*, i32** %325, i64 %idxprom343
  %326 = load i32*, i32** %arrayidx344, align 8
  %arrayidx345 = getelementptr inbounds i32, i32* %326, i64 %idxprom342
  store i32 -987654321, i32* %arrayidx345, align 4
  br label %if.end.346

if.end.346:                                       ; preds = %if.else.341, %if.then.327
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.255
  br label %for.inc.348

for.inc.348:                                      ; preds = %if.end.347
  %327 = load i32, i32* %k, align 4
  %inc349 = add nsw i32 %327, 1
  store i32 %inc349, i32* %k, align 4
  br label %for.cond.44

for.end.350:                                      ; preds = %for.cond.44
  %328 = load i32, i32* %cur, align 4
  %idxprom351 = sext i32 %328 to i64
  %329 = load i32**, i32*** %xmx, align 8
  %arrayidx352 = getelementptr inbounds i32*, i32** %329, i64 %idxprom351
  %330 = load i32*, i32** %arrayidx352, align 8
  %arrayidx353 = getelementptr inbounds i32, i32* %330, i64 4
  store i32 -987654321, i32* %arrayidx353, align 4
  %331 = load i32, i32* %prv, align 4
  %idxprom354 = sext i32 %331 to i64
  %332 = load i32**, i32*** %xmx, align 8
  %arrayidx355 = getelementptr inbounds i32*, i32** %332, i64 %idxprom354
  %333 = load i32*, i32** %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %333, i64 4
  %334 = load i32, i32* %arrayidx356, align 4
  %335 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc357 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %335, i32 0, i32 33
  %arrayidx358 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc357, i32 0, i64 0
  %arrayidx359 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx358, i32 0, i64 1
  %336 = load i32, i32* %arrayidx359, align 4
  %add360 = add nsw i32 %334, %336
  store i32 %add360, i32* %sc, align 4
  %cmp361 = icmp sgt i32 %add360, -987654321
  br i1 %cmp361, label %if.then.363, label %if.end.367

if.then.363:                                      ; preds = %for.end.350
  %337 = load i32, i32* %sc, align 4
  %338 = load i32, i32* %cur, align 4
  %idxprom364 = sext i32 %338 to i64
  %339 = load i32**, i32*** %xmx, align 8
  %arrayidx365 = getelementptr inbounds i32*, i32** %339, i64 %idxprom364
  %340 = load i32*, i32** %arrayidx365, align 8
  %arrayidx366 = getelementptr inbounds i32, i32* %340, i64 4
  store i32 %337, i32* %arrayidx366, align 4
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.363, %for.end.350
  %341 = load i32, i32* %cur, align 4
  %idxprom368 = sext i32 %341 to i64
  %342 = load i32**, i32*** %xmx, align 8
  %arrayidx369 = getelementptr inbounds i32*, i32** %342, i64 %idxprom368
  %343 = load i32*, i32** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i32, i32* %343, i64 1
  store i32 -987654321, i32* %arrayidx370, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.371

for.cond.371:                                     ; preds = %for.inc.399, %if.end.367
  %344 = load i32, i32* %k, align 4
  %345 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M372 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %345, i32 0, i32 20
  %346 = load i32, i32* %M372, align 4
  %cmp373 = icmp sle i32 %344, %346
  br i1 %cmp373, label %for.body.375, label %for.end.401

for.body.375:                                     ; preds = %for.cond.371
  %347 = load i32, i32* %k, align 4
  %idxprom376 = sext i32 %347 to i64
  %348 = load i32, i32* %cur, align 4
  %idxprom377 = sext i32 %348 to i64
  %349 = load i32**, i32*** %mmx, align 8
  %arrayidx378 = getelementptr inbounds i32*, i32** %349, i64 %idxprom377
  %350 = load i32*, i32** %arrayidx378, align 8
  %arrayidx379 = getelementptr inbounds i32, i32* %350, i64 %idxprom376
  %351 = load i32, i32* %arrayidx379, align 4
  %352 = load i32, i32* %k, align 4
  %idxprom380 = sext i32 %352 to i64
  %353 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %353, i32 0, i32 35
  %354 = load i32*, i32** %esc, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %354, i64 %idxprom380
  %355 = load i32, i32* %arrayidx381, align 4
  %add382 = add nsw i32 %351, %355
  store i32 %add382, i32* %sc, align 4
  %356 = load i32, i32* %cur, align 4
  %idxprom383 = sext i32 %356 to i64
  %357 = load i32**, i32*** %xmx, align 8
  %arrayidx384 = getelementptr inbounds i32*, i32** %357, i64 %idxprom383
  %358 = load i32*, i32** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %358, i64 1
  %359 = load i32, i32* %arrayidx385, align 4
  %cmp386 = icmp sgt i32 %add382, %359
  br i1 %cmp386, label %if.then.388, label %if.end.398

if.then.388:                                      ; preds = %for.body.375
  %360 = load i32, i32* %sc, align 4
  %361 = load i32, i32* %cur, align 4
  %idxprom389 = sext i32 %361 to i64
  %362 = load i32**, i32*** %xmx, align 8
  %arrayidx390 = getelementptr inbounds i32*, i32** %362, i64 %idxprom389
  %363 = load i32*, i32** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %363, i64 1
  store i32 %360, i32* %arrayidx391, align 4
  %364 = load i32, i32* %k, align 4
  %idxprom392 = sext i32 %364 to i64
  %365 = load i32, i32* %cur, align 4
  %idxprom393 = sext i32 %365 to i64
  %366 = load i32**, i32*** %mtr, align 8
  %arrayidx394 = getelementptr inbounds i32*, i32** %366, i64 %idxprom393
  %367 = load i32*, i32** %arrayidx394, align 8
  %arrayidx395 = getelementptr inbounds i32, i32* %367, i64 %idxprom392
  %368 = load i32, i32* %arrayidx395, align 4
  %369 = load i32, i32* %i, align 4
  %idxprom396 = sext i32 %369 to i64
  %370 = load i32*, i32** %etr, align 8
  %arrayidx397 = getelementptr inbounds i32, i32* %370, i64 %idxprom396
  store i32 %368, i32* %arrayidx397, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.then.388, %for.body.375
  br label %for.inc.399

for.inc.399:                                      ; preds = %if.end.398
  %371 = load i32, i32* %k, align 4
  %inc400 = add nsw i32 %371, 1
  store i32 %inc400, i32* %k, align 4
  br label %for.cond.371

for.end.401:                                      ; preds = %for.cond.371
  %372 = load i32, i32* %cur, align 4
  %idxprom402 = sext i32 %372 to i64
  %373 = load i32**, i32*** %xmx, align 8
  %arrayidx403 = getelementptr inbounds i32*, i32** %373, i64 %idxprom402
  %374 = load i32*, i32** %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds i32, i32* %374, i64 3
  store i32 -987654321, i32* %arrayidx404, align 4
  %375 = load i32, i32* %prv, align 4
  %idxprom405 = sext i32 %375 to i64
  %376 = load i32**, i32*** %xmx, align 8
  %arrayidx406 = getelementptr inbounds i32*, i32** %376, i64 %idxprom405
  %377 = load i32*, i32** %arrayidx406, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %377, i64 3
  %378 = load i32, i32* %arrayidx407, align 4
  %379 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc408 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %379, i32 0, i32 33
  %arrayidx409 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc408, i32 0, i64 3
  %arrayidx410 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx409, i32 0, i64 1
  %380 = load i32, i32* %arrayidx410, align 4
  %add411 = add nsw i32 %378, %380
  store i32 %add411, i32* %sc, align 4
  %cmp412 = icmp sgt i32 %add411, -987654321
  br i1 %cmp412, label %if.then.414, label %if.end.424

if.then.414:                                      ; preds = %for.end.401
  %381 = load i32, i32* %sc, align 4
  %382 = load i32, i32* %cur, align 4
  %idxprom415 = sext i32 %382 to i64
  %383 = load i32**, i32*** %xmx, align 8
  %arrayidx416 = getelementptr inbounds i32*, i32** %383, i64 %idxprom415
  %384 = load i32*, i32** %arrayidx416, align 8
  %arrayidx417 = getelementptr inbounds i32, i32* %384, i64 3
  store i32 %381, i32* %arrayidx417, align 4
  %385 = load i32, i32* %prv, align 4
  %idxprom418 = sext i32 %385 to i64
  %386 = load i32**, i32*** %xtr, align 8
  %arrayidx419 = getelementptr inbounds i32*, i32** %386, i64 %idxprom418
  %387 = load i32*, i32** %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %387, i64 3
  %388 = load i32, i32* %arrayidx420, align 4
  %389 = load i32, i32* %cur, align 4
  %idxprom421 = sext i32 %389 to i64
  %390 = load i32**, i32*** %xtr, align 8
  %arrayidx422 = getelementptr inbounds i32*, i32** %390, i64 %idxprom421
  %391 = load i32*, i32** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i32, i32* %391, i64 3
  store i32 %388, i32* %arrayidx423, align 4
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.414, %for.end.401
  %392 = load i32, i32* %cur, align 4
  %idxprom425 = sext i32 %392 to i64
  %393 = load i32**, i32*** %xmx, align 8
  %arrayidx426 = getelementptr inbounds i32*, i32** %393, i64 %idxprom425
  %394 = load i32*, i32** %arrayidx426, align 8
  %arrayidx427 = getelementptr inbounds i32, i32* %394, i64 1
  %395 = load i32, i32* %arrayidx427, align 4
  %396 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc428 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %396, i32 0, i32 33
  %arrayidx429 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc428, i32 0, i64 1
  %arrayidx430 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx429, i32 0, i64 1
  %397 = load i32, i32* %arrayidx430, align 4
  %add431 = add nsw i32 %395, %397
  store i32 %add431, i32* %sc, align 4
  %398 = load i32, i32* %cur, align 4
  %idxprom432 = sext i32 %398 to i64
  %399 = load i32**, i32*** %xmx, align 8
  %arrayidx433 = getelementptr inbounds i32*, i32** %399, i64 %idxprom432
  %400 = load i32*, i32** %arrayidx433, align 8
  %arrayidx434 = getelementptr inbounds i32, i32* %400, i64 3
  %401 = load i32, i32* %arrayidx434, align 4
  %cmp435 = icmp sgt i32 %add431, %401
  br i1 %cmp435, label %if.then.437, label %if.end.444

if.then.437:                                      ; preds = %if.end.424
  %402 = load i32, i32* %sc, align 4
  %403 = load i32, i32* %cur, align 4
  %idxprom438 = sext i32 %403 to i64
  %404 = load i32**, i32*** %xmx, align 8
  %arrayidx439 = getelementptr inbounds i32*, i32** %404, i64 %idxprom438
  %405 = load i32*, i32** %arrayidx439, align 8
  %arrayidx440 = getelementptr inbounds i32, i32* %405, i64 3
  store i32 %402, i32* %arrayidx440, align 4
  %406 = load i32, i32* %i, align 4
  %407 = load i32, i32* %cur, align 4
  %idxprom441 = sext i32 %407 to i64
  %408 = load i32**, i32*** %xtr, align 8
  %arrayidx442 = getelementptr inbounds i32*, i32** %408, i64 %idxprom441
  %409 = load i32*, i32** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds i32, i32* %409, i64 3
  store i32 %406, i32* %arrayidx443, align 4
  br label %if.end.444

if.end.444:                                       ; preds = %if.then.437, %if.end.424
  %410 = load i32, i32* %cur, align 4
  %idxprom445 = sext i32 %410 to i64
  %411 = load i32**, i32*** %xmx, align 8
  %arrayidx446 = getelementptr inbounds i32*, i32** %411, i64 %idxprom445
  %412 = load i32*, i32** %arrayidx446, align 8
  %arrayidx447 = getelementptr inbounds i32, i32* %412, i64 0
  store i32 -987654321, i32* %arrayidx447, align 4
  %413 = load i32, i32* %cur, align 4
  %idxprom448 = sext i32 %413 to i64
  %414 = load i32**, i32*** %xmx, align 8
  %arrayidx449 = getelementptr inbounds i32*, i32** %414, i64 %idxprom448
  %415 = load i32*, i32** %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds i32, i32* %415, i64 4
  %416 = load i32, i32* %arrayidx450, align 4
  %417 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc451 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %417, i32 0, i32 33
  %arrayidx452 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc451, i32 0, i64 0
  %arrayidx453 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx452, i32 0, i64 0
  %418 = load i32, i32* %arrayidx453, align 4
  %add454 = add nsw i32 %416, %418
  store i32 %add454, i32* %sc, align 4
  %cmp455 = icmp sgt i32 %add454, -987654321
  br i1 %cmp455, label %if.then.457, label %if.end.463

if.then.457:                                      ; preds = %if.end.444
  %419 = load i32, i32* %sc, align 4
  %420 = load i32, i32* %cur, align 4
  %idxprom458 = sext i32 %420 to i64
  %421 = load i32**, i32*** %xmx, align 8
  %arrayidx459 = getelementptr inbounds i32*, i32** %421, i64 %idxprom458
  %422 = load i32*, i32** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %422, i64 0
  store i32 %419, i32* %arrayidx460, align 4
  %423 = load i32, i32* %i, align 4
  %idxprom461 = sext i32 %423 to i64
  %424 = load i32*, i32** %btr, align 8
  %arrayidx462 = getelementptr inbounds i32, i32* %424, i64 %idxprom461
  store i32 0, i32* %arrayidx462, align 4
  br label %if.end.463

if.end.463:                                       ; preds = %if.then.457, %if.end.444
  %425 = load i32, i32* %cur, align 4
  %idxprom464 = sext i32 %425 to i64
  %426 = load i32**, i32*** %xmx, align 8
  %arrayidx465 = getelementptr inbounds i32*, i32** %426, i64 %idxprom464
  %427 = load i32*, i32** %arrayidx465, align 8
  %arrayidx466 = getelementptr inbounds i32, i32* %427, i64 3
  %428 = load i32, i32* %arrayidx466, align 4
  %429 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc467 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %429, i32 0, i32 33
  %arrayidx468 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc467, i32 0, i64 3
  %arrayidx469 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx468, i32 0, i64 0
  %430 = load i32, i32* %arrayidx469, align 4
  %add470 = add nsw i32 %428, %430
  store i32 %add470, i32* %sc, align 4
  %431 = load i32, i32* %cur, align 4
  %idxprom471 = sext i32 %431 to i64
  %432 = load i32**, i32*** %xmx, align 8
  %arrayidx472 = getelementptr inbounds i32*, i32** %432, i64 %idxprom471
  %433 = load i32*, i32** %arrayidx472, align 8
  %arrayidx473 = getelementptr inbounds i32, i32* %433, i64 0
  %434 = load i32, i32* %arrayidx473, align 4
  %cmp474 = icmp sgt i32 %add470, %434
  br i1 %cmp474, label %if.then.476, label %if.end.485

if.then.476:                                      ; preds = %if.end.463
  %435 = load i32, i32* %sc, align 4
  %436 = load i32, i32* %cur, align 4
  %idxprom477 = sext i32 %436 to i64
  %437 = load i32**, i32*** %xmx, align 8
  %arrayidx478 = getelementptr inbounds i32*, i32** %437, i64 %idxprom477
  %438 = load i32*, i32** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %438, i64 0
  store i32 %435, i32* %arrayidx479, align 4
  %439 = load i32, i32* %cur, align 4
  %idxprom480 = sext i32 %439 to i64
  %440 = load i32**, i32*** %xtr, align 8
  %arrayidx481 = getelementptr inbounds i32*, i32** %440, i64 %idxprom480
  %441 = load i32*, i32** %arrayidx481, align 8
  %arrayidx482 = getelementptr inbounds i32, i32* %441, i64 3
  %442 = load i32, i32* %arrayidx482, align 4
  %443 = load i32, i32* %i, align 4
  %idxprom483 = sext i32 %443 to i64
  %444 = load i32*, i32** %btr, align 8
  %arrayidx484 = getelementptr inbounds i32, i32* %444, i64 %idxprom483
  store i32 %442, i32* %arrayidx484, align 4
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.476, %if.end.463
  %445 = load i32, i32* %cur, align 4
  %idxprom486 = sext i32 %445 to i64
  %446 = load i32**, i32*** %xmx, align 8
  %arrayidx487 = getelementptr inbounds i32*, i32** %446, i64 %idxprom486
  %447 = load i32*, i32** %arrayidx487, align 8
  %arrayidx488 = getelementptr inbounds i32, i32* %447, i64 2
  store i32 -987654321, i32* %arrayidx488, align 4
  %448 = load i32, i32* %prv, align 4
  %idxprom489 = sext i32 %448 to i64
  %449 = load i32**, i32*** %xmx, align 8
  %arrayidx490 = getelementptr inbounds i32*, i32** %449, i64 %idxprom489
  %450 = load i32*, i32** %arrayidx490, align 8
  %arrayidx491 = getelementptr inbounds i32, i32* %450, i64 2
  %451 = load i32, i32* %arrayidx491, align 4
  %452 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc492 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %452, i32 0, i32 33
  %arrayidx493 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc492, i32 0, i64 2
  %arrayidx494 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx493, i32 0, i64 1
  %453 = load i32, i32* %arrayidx494, align 4
  %add495 = add nsw i32 %451, %453
  store i32 %add495, i32* %sc, align 4
  %cmp496 = icmp sgt i32 %add495, -987654321
  br i1 %cmp496, label %if.then.498, label %if.end.508

if.then.498:                                      ; preds = %if.end.485
  %454 = load i32, i32* %sc, align 4
  %455 = load i32, i32* %cur, align 4
  %idxprom499 = sext i32 %455 to i64
  %456 = load i32**, i32*** %xmx, align 8
  %arrayidx500 = getelementptr inbounds i32*, i32** %456, i64 %idxprom499
  %457 = load i32*, i32** %arrayidx500, align 8
  %arrayidx501 = getelementptr inbounds i32, i32* %457, i64 2
  store i32 %454, i32* %arrayidx501, align 4
  %458 = load i32, i32* %prv, align 4
  %idxprom502 = sext i32 %458 to i64
  %459 = load i32**, i32*** %xtr, align 8
  %arrayidx503 = getelementptr inbounds i32*, i32** %459, i64 %idxprom502
  %460 = load i32*, i32** %arrayidx503, align 8
  %arrayidx504 = getelementptr inbounds i32, i32* %460, i64 2
  %461 = load i32, i32* %arrayidx504, align 4
  %462 = load i32, i32* %cur, align 4
  %idxprom505 = sext i32 %462 to i64
  %463 = load i32**, i32*** %xtr, align 8
  %arrayidx506 = getelementptr inbounds i32*, i32** %463, i64 %idxprom505
  %464 = load i32*, i32** %arrayidx506, align 8
  %arrayidx507 = getelementptr inbounds i32, i32* %464, i64 2
  store i32 %461, i32* %arrayidx507, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.498, %if.end.485
  %465 = load i32, i32* %cur, align 4
  %idxprom509 = sext i32 %465 to i64
  %466 = load i32**, i32*** %xmx, align 8
  %arrayidx510 = getelementptr inbounds i32*, i32** %466, i64 %idxprom509
  %467 = load i32*, i32** %arrayidx510, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %467, i64 1
  %468 = load i32, i32* %arrayidx511, align 4
  %469 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc512 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %469, i32 0, i32 33
  %arrayidx513 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc512, i32 0, i64 1
  %arrayidx514 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx513, i32 0, i64 0
  %470 = load i32, i32* %arrayidx514, align 4
  %add515 = add nsw i32 %468, %470
  store i32 %add515, i32* %sc, align 4
  %471 = load i32, i32* %cur, align 4
  %idxprom516 = sext i32 %471 to i64
  %472 = load i32**, i32*** %xmx, align 8
  %arrayidx517 = getelementptr inbounds i32*, i32** %472, i64 %idxprom516
  %473 = load i32*, i32** %arrayidx517, align 8
  %arrayidx518 = getelementptr inbounds i32, i32* %473, i64 2
  %474 = load i32, i32* %arrayidx518, align 4
  %cmp519 = icmp sgt i32 %add515, %474
  br i1 %cmp519, label %if.then.521, label %if.end.528

if.then.521:                                      ; preds = %if.end.508
  %475 = load i32, i32* %sc, align 4
  %476 = load i32, i32* %cur, align 4
  %idxprom522 = sext i32 %476 to i64
  %477 = load i32**, i32*** %xmx, align 8
  %arrayidx523 = getelementptr inbounds i32*, i32** %477, i64 %idxprom522
  %478 = load i32*, i32** %arrayidx523, align 8
  %arrayidx524 = getelementptr inbounds i32, i32* %478, i64 2
  store i32 %475, i32* %arrayidx524, align 4
  %479 = load i32, i32* %i, align 4
  %480 = load i32, i32* %cur, align 4
  %idxprom525 = sext i32 %480 to i64
  %481 = load i32**, i32*** %xtr, align 8
  %arrayidx526 = getelementptr inbounds i32*, i32** %481, i64 %idxprom525
  %482 = load i32*, i32** %arrayidx526, align 8
  %arrayidx527 = getelementptr inbounds i32, i32* %482, i64 2
  store i32 %479, i32* %arrayidx527, align 4
  br label %if.end.528

if.end.528:                                       ; preds = %if.then.521, %if.end.508
  br label %for.inc.529

for.inc.529:                                      ; preds = %if.end.528
  %483 = load i32, i32* %i, align 4
  %inc530 = add nsw i32 %483, 1
  store i32 %inc530, i32* %i, align 4
  br label %for.cond.31

for.end.531:                                      ; preds = %for.cond.31
  %484 = load i32, i32* %cur, align 4
  %idxprom532 = sext i32 %484 to i64
  %485 = load i32**, i32*** %xmx, align 8
  %arrayidx533 = getelementptr inbounds i32*, i32** %485, i64 %idxprom532
  %486 = load i32*, i32** %arrayidx533, align 8
  %arrayidx534 = getelementptr inbounds i32, i32* %486, i64 2
  %487 = load i32, i32* %arrayidx534, align 4
  %488 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc535 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %488, i32 0, i32 33
  %arrayidx536 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc535, i32 0, i64 2
  %arrayidx537 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx536, i32 0, i64 0
  %489 = load i32, i32* %arrayidx537, align 4
  %add538 = add nsw i32 %487, %489
  store i32 %add538, i32* %sc, align 4
  store i32 2, i32* %curralloc, align 4
  %490 = load i32, i32* %curralloc, align 4
  call void @P7AllocTrace(i32 %490, %struct.p7trace_s** %tr)
  store i32 0, i32* %tpos, align 4
  %491 = load i32, i32* %tpos, align 4
  %idxprom539 = sext i32 %491 to i64
  %492 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %492, i32 0, i32 1
  %493 = load i8*, i8** %statetype, align 8
  %arrayidx540 = getelementptr inbounds i8, i8* %493, i64 %idxprom539
  store i8 9, i8* %arrayidx540, align 1
  %494 = load i32, i32* %tpos, align 4
  %idxprom541 = sext i32 %494 to i64
  %495 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %495, i32 0, i32 3
  %496 = load i32*, i32** %pos, align 8
  %arrayidx542 = getelementptr inbounds i32, i32* %496, i64 %idxprom541
  store i32 0, i32* %arrayidx542, align 4
  %497 = load i32, i32* %L.addr, align 4
  %rem543 = srem i32 %497, 2
  %idxprom544 = sext i32 %rem543 to i64
  %498 = load i32**, i32*** %xtr, align 8
  %arrayidx545 = getelementptr inbounds i32*, i32** %498, i64 %idxprom544
  %499 = load i32*, i32** %arrayidx545, align 8
  %arrayidx546 = getelementptr inbounds i32, i32* %499, i64 2
  %500 = load i32, i32* %arrayidx546, align 4
  store i32 %500, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.531
  %501 = load i32, i32* %i, align 4
  %cmp547 = icmp sgt i32 %501, 0
  br i1 %cmp547, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %502 = load i32, i32* %curralloc, align 4
  %add549 = add nsw i32 %502, 2
  store i32 %add549, i32* %curralloc, align 4
  %503 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %504 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %503, i32 %504)
  %505 = load i32, i32* %tpos, align 4
  %inc550 = add nsw i32 %505, 1
  store i32 %inc550, i32* %tpos, align 4
  %506 = load i32, i32* %tpos, align 4
  %idxprom551 = sext i32 %506 to i64
  %507 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype552 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %507, i32 0, i32 1
  %508 = load i8*, i8** %statetype552, align 8
  %arrayidx553 = getelementptr inbounds i8, i8* %508, i64 %idxprom551
  store i8 7, i8* %arrayidx553, align 1
  %509 = load i32, i32* %i, align 4
  %510 = load i32, i32* %tpos, align 4
  %idxprom554 = sext i32 %510 to i64
  %511 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos555 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %511, i32 0, i32 3
  %512 = load i32*, i32** %pos555, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %512, i64 %idxprom554
  store i32 %509, i32* %arrayidx556, align 4
  %513 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %513 to i64
  %514 = load i32*, i32** %etr, align 8
  %arrayidx558 = getelementptr inbounds i32, i32* %514, i64 %idxprom557
  %515 = load i32, i32* %arrayidx558, align 4
  store i32 %515, i32* %i, align 4
  %516 = load i32, i32* %tpos, align 4
  %inc559 = add nsw i32 %516, 1
  store i32 %inc559, i32* %tpos, align 4
  %517 = load i32, i32* %tpos, align 4
  %idxprom560 = sext i32 %517 to i64
  %518 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype561 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %518, i32 0, i32 1
  %519 = load i8*, i8** %statetype561, align 8
  %arrayidx562 = getelementptr inbounds i8, i8* %519, i64 %idxprom560
  store i8 6, i8* %arrayidx562, align 1
  %520 = load i32, i32* %i, align 4
  %521 = load i32, i32* %tpos, align 4
  %idxprom563 = sext i32 %521 to i64
  %522 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos564 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %522, i32 0, i32 3
  %523 = load i32*, i32** %pos564, align 8
  %arrayidx565 = getelementptr inbounds i32, i32* %523, i64 %idxprom563
  store i32 %520, i32* %arrayidx565, align 4
  %524 = load i32, i32* %i, align 4
  %idxprom566 = sext i32 %524 to i64
  %525 = load i32*, i32** %btr, align 8
  %arrayidx567 = getelementptr inbounds i32, i32* %525, i64 %idxprom566
  %526 = load i32, i32* %arrayidx567, align 4
  store i32 %526, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %527 = load i32, i32* %tpos, align 4
  %inc568 = add nsw i32 %527, 1
  store i32 %inc568, i32* %tpos, align 4
  %528 = load i32, i32* %tpos, align 4
  %idxprom569 = sext i32 %528 to i64
  %529 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype570 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %529, i32 0, i32 1
  %530 = load i8*, i8** %statetype570, align 8
  %arrayidx571 = getelementptr inbounds i8, i8* %530, i64 %idxprom569
  store i8 4, i8* %arrayidx571, align 1
  %531 = load i32, i32* %tpos, align 4
  %idxprom572 = sext i32 %531 to i64
  %532 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos573 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %532, i32 0, i32 3
  %533 = load i32*, i32** %pos573, align 8
  %arrayidx574 = getelementptr inbounds i32, i32* %533, i64 %idxprom572
  store i32 0, i32* %arrayidx574, align 4
  %534 = load i32, i32* %tpos, align 4
  %add575 = add nsw i32 %534, 1
  %535 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %535, i32 0, i32 0
  store i32 %add575, i32* %tlen, align 4
  %536 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7ReverseTrace(%struct.p7trace_s* %536)
  %537 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %537)
  %538 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %tmx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %538)
  %539 = load i32*, i32** %btr, align 8
  %540 = bitcast i32* %539 to i8*
  call void @free(i8* %540) #4
  %541 = load i32*, i32** %etr, align 8
  %542 = bitcast i32* %541 to i8*
  call void @free(i8* %542) #4
  %543 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %544 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %543, %struct.p7trace_s** %544, align 8
  %545 = load i32, i32* %sc, align 4
  %call576 = call float @Scorify(i32 %545)
  ret float %call576
}

; Function Attrs: nounwind uwtable
define float @P7WeeViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.p7trace_s** %ret_tr) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_tr.addr = alloca %struct.p7trace_s**, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %kassign = alloca i32*, align 8
  %tassign = alloca i8*, align 8
  %endlist = alloca i32*, align 8
  %startlist = alloca i32*, align 8
  %lpos = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %k3 = alloca i32, align 4
  %t1 = alloca i8, align 1
  %t2 = alloca i8, align 1
  %t3 = alloca i8, align 1
  %s1 = alloca i32, align 4
  %s2 = alloca i32, align 4
  %s3 = alloca i32, align 4
  %sc = alloca float, align 4
  %ret_sc = alloca float, align 4
  %tlen = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %tpos = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.p7trace_s** %ret_tr, %struct.p7trace_s*** %ret_tr.addr, align 8
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 1282, i64 %mul)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %kassign, align 8
  %2 = load i32, i32* %L.addr, align 4
  %add1 = add nsw i32 %2, 1
  %conv2 = sext i32 %add1 to i64
  %mul3 = mul i64 1, %conv2
  %call4 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 1283, i64 %mul3)
  store i8* %call4, i8** %tassign, align 8
  %3 = load i32, i32* %L.addr, align 4
  %add5 = add nsw i32 %3, 1
  %conv6 = sext i32 %add5 to i64
  %mul7 = mul i64 4, %conv6
  %call8 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 1284, i64 %mul7)
  %4 = bitcast i8* %call8 to i32*
  store i32* %4, i32** %endlist, align 8
  %5 = load i32, i32* %L.addr, align 4
  %add9 = add nsw i32 %5, 1
  %conv10 = sext i32 %add9 to i64
  %mul11 = mul i64 4, %conv10
  %call12 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 1285, i64 %mul11)
  %6 = bitcast i8* %call12 to i32*
  store i32* %6, i32** %startlist, align 8
  store i32 0, i32* %lpos, align 4
  %7 = load i32, i32* %lpos, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32*, i32** %startlist, align 8
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 1, i32* %arrayidx, align 4
  %9 = load i32, i32* %L.addr, align 4
  %10 = load i32, i32* %lpos, align 4
  %idxprom13 = sext i32 %10 to i64
  %11 = load i32*, i32** %endlist, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %11, i64 %idxprom13
  store i32 %9, i32* %arrayidx14, align 4
  %12 = load i32*, i32** %kassign, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 1, i32* %arrayidx15, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 20
  %14 = load i32, i32* %M, align 4
  %15 = load i32, i32* %L.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32*, i32** %kassign, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %16, i64 %idxprom16
  store i32 %14, i32* %arrayidx17, align 4
  %17 = load i8*, i8** %tassign, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 4, i8* %arrayidx18, align 1
  %18 = load i32, i32* %L.addr, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i8*, i8** %tassign, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %19, i64 %idxprom19
  store i8 9, i8* %arrayidx20, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.114, %entry
  %20 = load i32, i32* %lpos, align 4
  %cmp = icmp sge i32 %20, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load i32, i32* %lpos, align 4
  %idxprom22 = sext i32 %21 to i64
  %22 = load i32*, i32** %startlist, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %22, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  store i32 %23, i32* %s1, align 4
  %24 = load i32, i32* %s1, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load i32*, i32** %kassign, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %25, i64 %idxprom24
  %26 = load i32, i32* %arrayidx25, align 4
  store i32 %26, i32* %k1, align 4
  %27 = load i32, i32* %s1, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load i8*, i8** %tassign, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %28, i64 %idxprom26
  %29 = load i8, i8* %arrayidx27, align 1
  store i8 %29, i8* %t1, align 1
  %30 = load i32, i32* %lpos, align 4
  %idxprom28 = sext i32 %30 to i64
  %31 = load i32*, i32** %endlist, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %31, i64 %idxprom28
  %32 = load i32, i32* %arrayidx29, align 4
  store i32 %32, i32* %s3, align 4
  %33 = load i32, i32* %s3, align 4
  %idxprom30 = sext i32 %33 to i64
  %34 = load i32*, i32** %kassign, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %34, i64 %idxprom30
  %35 = load i32, i32* %arrayidx31, align 4
  store i32 %35, i32* %k3, align 4
  %36 = load i32, i32* %s3, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load i8*, i8** %tassign, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %37, i64 %idxprom32
  %38 = load i8, i8* %arrayidx33, align 1
  store i8 %38, i8* %t3, align 1
  %39 = load i32, i32* %lpos, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %lpos, align 4
  %40 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %41 = load i8*, i8** %dsq.addr, align 8
  %42 = load i32, i32* %L.addr, align 4
  %43 = load i32, i32* %k1, align 4
  %44 = load i8, i8* %t1, align 1
  %45 = load i32, i32* %s1, align 4
  %46 = load i32, i32* %k3, align 4
  %47 = load i8, i8* %t3, align 1
  %48 = load i32, i32* %s3, align 4
  %call34 = call float @get_wee_midpt(%struct.plan7_s* %40, i8* %41, i32 %42, i32 %43, i8 signext %44, i32 %45, i32 %46, i8 signext %47, i32 %48, i32* %k2, i8* %t2, i32* %s2)
  store float %call34, float* %sc, align 4
  %49 = load i32, i32* %k2, align 4
  %50 = load i32, i32* %s2, align 4
  %idxprom35 = sext i32 %50 to i64
  %51 = load i32*, i32** %kassign, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %51, i64 %idxprom35
  store i32 %49, i32* %arrayidx36, align 4
  %52 = load i8, i8* %t2, align 1
  %53 = load i32, i32* %s2, align 4
  %idxprom37 = sext i32 %53 to i64
  %54 = load i8*, i8** %tassign, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %54, i64 %idxprom37
  store i8 %52, i8* %arrayidx38, align 1
  %55 = load i8, i8* %t1, align 1
  %conv39 = sext i8 %55 to i32
  %cmp40 = icmp eq i32 %conv39, 4
  br i1 %cmp40, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %56 = load i8, i8* %t3, align 1
  %conv42 = sext i8 %56 to i32
  %cmp43 = icmp eq i32 %conv42, 9
  br i1 %cmp43, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %57 = load float, float* %sc, align 4
  store float %57, float* %ret_sc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %58 = load i8, i8* %t2, align 1
  %conv45 = sext i8 %58 to i32
  %cmp46 = icmp ne i32 %conv45, 5
  br i1 %cmp46, label %land.lhs.true.48, label %if.end.63

land.lhs.true.48:                                 ; preds = %if.end
  %59 = load i32, i32* %s2, align 4
  %60 = load i32, i32* %s1, align 4
  %sub = sub nsw i32 %59, %60
  %cmp49 = icmp sgt i32 %sub, 1
  br i1 %cmp49, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.48
  %61 = load i32, i32* %s2, align 4
  %62 = load i32, i32* %s1, align 4
  %sub51 = sub nsw i32 %61, %62
  %cmp52 = icmp eq i32 %sub51, 1
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.63

land.lhs.true.54:                                 ; preds = %lor.lhs.false
  %63 = load i8, i8* %t1, align 1
  %conv55 = sext i8 %63 to i32
  %cmp56 = icmp eq i32 %conv55, 4
  br i1 %cmp56, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %land.lhs.true.54, %land.lhs.true.48
  %64 = load i32, i32* %lpos, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, i32* %lpos, align 4
  %65 = load i32, i32* %s1, align 4
  %66 = load i32, i32* %lpos, align 4
  %idxprom59 = sext i32 %66 to i64
  %67 = load i32*, i32** %startlist, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %67, i64 %idxprom59
  store i32 %65, i32* %arrayidx60, align 4
  %68 = load i32, i32* %s2, align 4
  %69 = load i32, i32* %lpos, align 4
  %idxprom61 = sext i32 %69 to i64
  %70 = load i32*, i32** %endlist, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %70, i64 %idxprom61
  store i32 %68, i32* %arrayidx62, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %land.lhs.true.54, %lor.lhs.false, %if.end
  %71 = load i8, i8* %t2, align 1
  %conv64 = sext i8 %71 to i32
  %cmp65 = icmp ne i32 %conv64, 8
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.85

land.lhs.true.67:                                 ; preds = %if.end.63
  %72 = load i32, i32* %s3, align 4
  %73 = load i32, i32* %s2, align 4
  %sub68 = sub nsw i32 %72, %73
  %cmp69 = icmp sgt i32 %sub68, 1
  br i1 %cmp69, label %if.then.79, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %land.lhs.true.67
  %74 = load i32, i32* %s3, align 4
  %75 = load i32, i32* %s2, align 4
  %sub72 = sub nsw i32 %74, %75
  %cmp73 = icmp eq i32 %sub72, 1
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.85

land.lhs.true.75:                                 ; preds = %lor.lhs.false.71
  %76 = load i8, i8* %t3, align 1
  %conv76 = sext i8 %76 to i32
  %cmp77 = icmp eq i32 %conv76, 9
  br i1 %cmp77, label %if.then.79, label %if.end.85

if.then.79:                                       ; preds = %land.lhs.true.75, %land.lhs.true.67
  %77 = load i32, i32* %lpos, align 4
  %inc80 = add nsw i32 %77, 1
  store i32 %inc80, i32* %lpos, align 4
  %78 = load i32, i32* %s2, align 4
  %79 = load i32, i32* %lpos, align 4
  %idxprom81 = sext i32 %79 to i64
  %80 = load i32*, i32** %startlist, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %80, i64 %idxprom81
  store i32 %78, i32* %arrayidx82, align 4
  %81 = load i32, i32* %s3, align 4
  %82 = load i32, i32* %lpos, align 4
  %idxprom83 = sext i32 %82 to i64
  %83 = load i32*, i32** %endlist, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %83, i64 %idxprom83
  store i32 %81, i32* %arrayidx84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.79, %land.lhs.true.75, %lor.lhs.false.71, %if.end.63
  %84 = load i8, i8* %t2, align 1
  %conv86 = sext i8 %84 to i32
  %cmp87 = icmp eq i32 %conv86, 5
  br i1 %cmp87, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %if.end.85
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.89
  %85 = load i32, i32* %s2, align 4
  %86 = load i32, i32* %s1, align 4
  %cmp90 = icmp sge i32 %85, %86
  br i1 %cmp90, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %87 = load i32, i32* %s2, align 4
  %idxprom92 = sext i32 %87 to i64
  %88 = load i32*, i32** %kassign, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %88, i64 %idxprom92
  store i32 1, i32* %arrayidx93, align 4
  %89 = load i32, i32* %s2, align 4
  %idxprom94 = sext i32 %89 to i64
  %90 = load i8*, i8** %tassign, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %90, i64 %idxprom94
  store i8 5, i8* %arrayidx95, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %91 = load i32, i32* %s2, align 4
  %dec96 = add nsw i32 %91, -1
  store i32 %dec96, i32* %s2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.97

if.end.97:                                        ; preds = %for.end, %if.end.85
  %92 = load i8, i8* %t2, align 1
  %conv98 = sext i8 %92 to i32
  %cmp99 = icmp eq i32 %conv98, 8
  br i1 %cmp99, label %if.then.101, label %if.end.114

if.then.101:                                      ; preds = %if.end.97
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.111, %if.then.101
  %93 = load i32, i32* %s2, align 4
  %94 = load i32, i32* %s3, align 4
  %cmp103 = icmp sle i32 %93, %94
  br i1 %cmp103, label %for.body.105, label %for.end.113

for.body.105:                                     ; preds = %for.cond.102
  %95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M106 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 20
  %96 = load i32, i32* %M106, align 4
  %97 = load i32, i32* %s2, align 4
  %idxprom107 = sext i32 %97 to i64
  %98 = load i32*, i32** %kassign, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %98, i64 %idxprom107
  store i32 %96, i32* %arrayidx108, align 4
  %99 = load i32, i32* %s2, align 4
  %idxprom109 = sext i32 %99 to i64
  %100 = load i8*, i8** %tassign, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %100, i64 %idxprom109
  store i8 8, i8* %arrayidx110, align 1
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.body.105
  %101 = load i32, i32* %s2, align 4
  %inc112 = add nsw i32 %101, 1
  store i32 %inc112, i32* %s2, align 4
  br label %for.cond.102

for.end.113:                                      ; preds = %for.cond.102
  br label %if.end.114

if.end.114:                                       ; preds = %for.end.113, %if.end.97
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %102 = load i32, i32* %L.addr, align 4
  %add115 = add nsw i32 %102, 6
  store i32 %add115, i32* %tlen, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.180, %while.end
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %L.addr, align 4
  %cmp117 = icmp slt i32 %103, %104
  br i1 %cmp117, label %for.body.119, label %for.end.182

for.body.119:                                     ; preds = %for.cond.116
  %105 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %105 to i64
  %106 = load i8*, i8** %tassign, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %106, i64 %idxprom120
  %107 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %107 to i32
  %cmp123 = icmp eq i32 %conv122, 1
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.141

land.lhs.true.125:                                ; preds = %for.body.119
  %108 = load i32, i32* %i, align 4
  %add126 = add nsw i32 %108, 1
  %idxprom127 = sext i32 %add126 to i64
  %109 = load i8*, i8** %tassign, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %109, i64 %idxprom127
  %110 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %110 to i32
  %cmp130 = icmp eq i32 %conv129, 1
  br i1 %cmp130, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %land.lhs.true.125
  %111 = load i32, i32* %i, align 4
  %add133 = add nsw i32 %111, 1
  %idxprom134 = sext i32 %add133 to i64
  %112 = load i32*, i32** %kassign, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %112, i64 %idxprom134
  %113 = load i32, i32* %arrayidx135, align 4
  %114 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %114 to i64
  %115 = load i32*, i32** %kassign, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %115, i64 %idxprom136
  %116 = load i32, i32* %arrayidx137, align 4
  %sub138 = sub nsw i32 %113, %116
  %sub139 = sub nsw i32 %sub138, 1
  %117 = load i32, i32* %tlen, align 4
  %add140 = add nsw i32 %117, %sub139
  store i32 %add140, i32* %tlen, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.132, %land.lhs.true.125, %for.body.119
  %118 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %118 to i64
  %119 = load i8*, i8** %tassign, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %119, i64 %idxprom142
  %120 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %120 to i32
  %cmp145 = icmp eq i32 %conv144, 5
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.160

land.lhs.true.147:                                ; preds = %if.end.141
  %121 = load i32, i32* %i, align 4
  %add148 = add nsw i32 %121, 1
  %idxprom149 = sext i32 %add148 to i64
  %122 = load i8*, i8** %tassign, align 8
  %arrayidx150 = getelementptr inbounds i8, i8* %122, i64 %idxprom149
  %123 = load i8, i8* %arrayidx150, align 1
  %conv151 = sext i8 %123 to i32
  %cmp152 = icmp eq i32 %conv151, 1
  br i1 %cmp152, label %if.then.154, label %if.end.160

if.then.154:                                      ; preds = %land.lhs.true.147
  %124 = load i32, i32* %i, align 4
  %add155 = add nsw i32 %124, 1
  %idxprom156 = sext i32 %add155 to i64
  %125 = load i32*, i32** %kassign, align 8
  %arrayidx157 = getelementptr inbounds i32, i32* %125, i64 %idxprom156
  %126 = load i32, i32* %arrayidx157, align 4
  %sub158 = sub nsw i32 %126, 1
  %127 = load i32, i32* %tlen, align 4
  %add159 = add nsw i32 %127, %sub158
  store i32 %add159, i32* %tlen, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.154, %land.lhs.true.147, %if.end.141
  %128 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %128 to i64
  %129 = load i8*, i8** %tassign, align 8
  %arrayidx162 = getelementptr inbounds i8, i8* %129, i64 %idxprom161
  %130 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %130 to i32
  %cmp164 = icmp eq i32 %conv163, 1
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.179

land.lhs.true.166:                                ; preds = %if.end.160
  %131 = load i32, i32* %i, align 4
  %add167 = add nsw i32 %131, 1
  %idxprom168 = sext i32 %add167 to i64
  %132 = load i8*, i8** %tassign, align 8
  %arrayidx169 = getelementptr inbounds i8, i8* %132, i64 %idxprom168
  %133 = load i8, i8* %arrayidx169, align 1
  %conv170 = sext i8 %133 to i32
  %cmp171 = icmp eq i32 %conv170, 8
  br i1 %cmp171, label %if.then.173, label %if.end.179

if.then.173:                                      ; preds = %land.lhs.true.166
  %134 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M174 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %134, i32 0, i32 20
  %135 = load i32, i32* %M174, align 4
  %136 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %136 to i64
  %137 = load i32*, i32** %kassign, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %137, i64 %idxprom175
  %138 = load i32, i32* %arrayidx176, align 4
  %sub177 = sub nsw i32 %135, %138
  %139 = load i32, i32* %tlen, align 4
  %add178 = add nsw i32 %139, %sub177
  store i32 %add178, i32* %tlen, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.173, %land.lhs.true.166, %if.end.160
  br label %for.inc.180

for.inc.180:                                      ; preds = %if.end.179
  %140 = load i32, i32* %i, align 4
  %inc181 = add nsw i32 %140, 1
  store i32 %inc181, i32* %i, align 4
  br label %for.cond.116

for.end.182:                                      ; preds = %for.cond.116
  %141 = load i8*, i8** %tassign, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %141, i64 1
  %142 = load i8, i8* %arrayidx183, align 1
  %conv184 = sext i8 %142 to i32
  %cmp185 = icmp eq i32 %conv184, 1
  br i1 %cmp185, label %if.then.187, label %if.end.191

if.then.187:                                      ; preds = %for.end.182
  %143 = load i32*, i32** %kassign, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %143, i64 1
  %144 = load i32, i32* %arrayidx188, align 4
  %sub189 = sub nsw i32 %144, 1
  %145 = load i32, i32* %tlen, align 4
  %add190 = add nsw i32 %145, %sub189
  store i32 %add190, i32* %tlen, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.187, %for.end.182
  %146 = load i32, i32* %L.addr, align 4
  %idxprom192 = sext i32 %146 to i64
  %147 = load i8*, i8** %tassign, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %147, i64 %idxprom192
  %148 = load i8, i8* %arrayidx193, align 1
  %conv194 = sext i8 %148 to i32
  %cmp195 = icmp eq i32 %conv194, 1
  br i1 %cmp195, label %if.then.197, label %if.end.203

if.then.197:                                      ; preds = %if.end.191
  %149 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M198 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %149, i32 0, i32 20
  %150 = load i32, i32* %M198, align 4
  %151 = load i32, i32* %L.addr, align 4
  %idxprom199 = sext i32 %151 to i64
  %152 = load i32*, i32** %kassign, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %152, i64 %idxprom199
  %153 = load i32, i32* %arrayidx200, align 4
  %sub201 = sub nsw i32 %150, %153
  %154 = load i32, i32* %tlen, align 4
  %add202 = add nsw i32 %154, %sub201
  store i32 %add202, i32* %tlen, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.then.197, %if.end.191
  %155 = load i32, i32* %tlen, align 4
  call void @P7AllocTrace(i32 %155, %struct.p7trace_s** %tr)
  %156 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %156, i32 0, i32 1
  %157 = load i8*, i8** %statetype, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %157, i64 0
  store i8 4, i8* %arrayidx204, align 1
  %158 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %158, i32 0, i32 2
  %159 = load i32*, i32** %nodeidx, align 8
  %arrayidx205 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 0, i32* %arrayidx205, align 4
  %160 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %160, i32 0, i32 3
  %161 = load i32*, i32** %pos, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 0, i32* %arrayidx206, align 4
  %162 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype207 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %162, i32 0, i32 1
  %163 = load i8*, i8** %statetype207, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %163, i64 1
  store i8 5, i8* %arrayidx208, align 1
  %164 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx209 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %164, i32 0, i32 2
  %165 = load i32*, i32** %nodeidx209, align 8
  %arrayidx210 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 0, i32* %arrayidx210, align 4
  %166 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos211 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %166, i32 0, i32 3
  %167 = load i32*, i32** %pos211, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %167, i64 1
  store i32 0, i32* %arrayidx212, align 4
  store i32 2, i32* %tpos, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.437, %if.end.203
  %168 = load i32, i32* %i, align 4
  %169 = load i32, i32* %L.addr, align 4
  %cmp214 = icmp sle i32 %168, %169
  br i1 %cmp214, label %for.body.216, label %for.end.439

for.body.216:                                     ; preds = %for.cond.213
  %170 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %170 to i64
  %171 = load i8*, i8** %tassign, align 8
  %arrayidx218 = getelementptr inbounds i8, i8* %171, i64 %idxprom217
  %172 = load i8, i8* %arrayidx218, align 1
  %conv219 = sext i8 %172 to i32
  switch i32 %conv219, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.399
    i32 5, label %sw.bb.412
    i32 8, label %sw.bb.423
  ]

sw.bb:                                            ; preds = %for.body.216
  %173 = load i32, i32* %tpos, align 4
  %sub220 = sub nsw i32 %173, 1
  %idxprom221 = sext i32 %sub220 to i64
  %174 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype222 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %174, i32 0, i32 1
  %175 = load i8*, i8** %statetype222, align 8
  %arrayidx223 = getelementptr inbounds i8, i8* %175, i64 %idxprom221
  %176 = load i8, i8* %arrayidx223, align 1
  %conv224 = sext i8 %176 to i32
  %cmp225 = icmp eq i32 %conv224, 5
  br i1 %cmp225, label %if.then.227, label %if.end.273

if.then.227:                                      ; preds = %sw.bb
  %177 = load i32, i32* %tpos, align 4
  %idxprom228 = sext i32 %177 to i64
  %178 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype229 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %178, i32 0, i32 1
  %179 = load i8*, i8** %statetype229, align 8
  %arrayidx230 = getelementptr inbounds i8, i8* %179, i64 %idxprom228
  store i8 6, i8* %arrayidx230, align 1
  %180 = load i32, i32* %tpos, align 4
  %idxprom231 = sext i32 %180 to i64
  %181 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx232 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %181, i32 0, i32 2
  %182 = load i32*, i32** %nodeidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %182, i64 %idxprom231
  store i32 0, i32* %arrayidx233, align 4
  %183 = load i32, i32* %tpos, align 4
  %idxprom234 = sext i32 %183 to i64
  %184 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos235 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %184, i32 0, i32 3
  %185 = load i32*, i32** %pos235, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %185, i64 %idxprom234
  store i32 0, i32* %arrayidx236, align 4
  %186 = load i32, i32* %tpos, align 4
  %inc237 = add nsw i32 %186, 1
  store i32 %inc237, i32* %tpos, align 4
  %187 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %187 to i64
  %188 = load i32*, i32** %kassign, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %188, i64 %idxprom238
  %189 = load i32, i32* %arrayidx239, align 4
  %idxprom240 = sext i32 %189 to i64
  %190 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %190, i32 0, i32 26
  %191 = load float*, float** %begin, align 8
  %arrayidx241 = getelementptr inbounds float, float* %191, i64 %idxprom240
  %192 = load float, float* %arrayidx241, align 4
  %193 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %193, i32 0, i32 29
  %194 = load float, float* %p1, align 4
  %call242 = call i32 @Prob2Score(float %192, float %194)
  %conv243 = sitofp i32 %call242 to double
  %add244 = fadd double %conv243, 1.000000e+03
  %195 = load i32, i32* %i, align 4
  %idxprom245 = sext i32 %195 to i64
  %196 = load i32*, i32** %kassign, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %196, i64 %idxprom245
  %197 = load i32, i32* %arrayidx246, align 4
  %idxprom247 = sext i32 %197 to i64
  %198 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %198, i32 0, i32 34
  %199 = load i32*, i32** %bsc, align 8
  %arrayidx248 = getelementptr inbounds i32, i32* %199, i64 %idxprom247
  %200 = load i32, i32* %arrayidx248, align 4
  %conv249 = sitofp i32 %200 to double
  %cmp250 = fcmp ole double %add244, %conv249
  br i1 %cmp250, label %if.then.252, label %if.end.272

if.then.252:                                      ; preds = %if.then.227
  store i32 1, i32* %k, align 4
  br label %for.cond.253

for.cond.253:                                     ; preds = %for.inc.269, %if.then.252
  %201 = load i32, i32* %k, align 4
  %202 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %202 to i64
  %203 = load i32*, i32** %kassign, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %203, i64 %idxprom254
  %204 = load i32, i32* %arrayidx255, align 4
  %cmp256 = icmp slt i32 %201, %204
  br i1 %cmp256, label %for.body.258, label %for.end.271

for.body.258:                                     ; preds = %for.cond.253
  %205 = load i32, i32* %tpos, align 4
  %idxprom259 = sext i32 %205 to i64
  %206 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype260 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %206, i32 0, i32 1
  %207 = load i8*, i8** %statetype260, align 8
  %arrayidx261 = getelementptr inbounds i8, i8* %207, i64 %idxprom259
  store i8 2, i8* %arrayidx261, align 1
  %208 = load i32, i32* %k, align 4
  %209 = load i32, i32* %tpos, align 4
  %idxprom262 = sext i32 %209 to i64
  %210 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx263 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %210, i32 0, i32 2
  %211 = load i32*, i32** %nodeidx263, align 8
  %arrayidx264 = getelementptr inbounds i32, i32* %211, i64 %idxprom262
  store i32 %208, i32* %arrayidx264, align 4
  %212 = load i32, i32* %tpos, align 4
  %idxprom265 = sext i32 %212 to i64
  %213 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos266 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %213, i32 0, i32 3
  %214 = load i32*, i32** %pos266, align 8
  %arrayidx267 = getelementptr inbounds i32, i32* %214, i64 %idxprom265
  store i32 0, i32* %arrayidx267, align 4
  %215 = load i32, i32* %tpos, align 4
  %inc268 = add nsw i32 %215, 1
  store i32 %inc268, i32* %tpos, align 4
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.body.258
  %216 = load i32, i32* %k, align 4
  %inc270 = add nsw i32 %216, 1
  store i32 %inc270, i32* %k, align 4
  br label %for.cond.253

for.end.271:                                      ; preds = %for.cond.253
  br label %if.end.272

if.end.272:                                       ; preds = %for.end.271, %if.then.227
  br label %if.end.273

if.end.273:                                       ; preds = %if.end.272, %sw.bb
  %217 = load i32, i32* %tpos, align 4
  %idxprom274 = sext i32 %217 to i64
  %218 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype275 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %218, i32 0, i32 1
  %219 = load i8*, i8** %statetype275, align 8
  %arrayidx276 = getelementptr inbounds i8, i8* %219, i64 %idxprom274
  store i8 1, i8* %arrayidx276, align 1
  %220 = load i32, i32* %i, align 4
  %idxprom277 = sext i32 %220 to i64
  %221 = load i32*, i32** %kassign, align 8
  %arrayidx278 = getelementptr inbounds i32, i32* %221, i64 %idxprom277
  %222 = load i32, i32* %arrayidx278, align 4
  %223 = load i32, i32* %tpos, align 4
  %idxprom279 = sext i32 %223 to i64
  %224 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx280 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %224, i32 0, i32 2
  %225 = load i32*, i32** %nodeidx280, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %225, i64 %idxprom279
  store i32 %222, i32* %arrayidx281, align 4
  %226 = load i32, i32* %i, align 4
  %227 = load i32, i32* %tpos, align 4
  %idxprom282 = sext i32 %227 to i64
  %228 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos283 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %228, i32 0, i32 3
  %229 = load i32*, i32** %pos283, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %229, i64 %idxprom282
  store i32 %226, i32* %arrayidx284, align 4
  %230 = load i32, i32* %tpos, align 4
  %inc285 = add nsw i32 %230, 1
  store i32 %inc285, i32* %tpos, align 4
  %231 = load i32, i32* %i, align 4
  %232 = load i32, i32* %L.addr, align 4
  %cmp286 = icmp slt i32 %231, %232
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.328

land.lhs.true.288:                                ; preds = %if.end.273
  %233 = load i32, i32* %i, align 4
  %add289 = add nsw i32 %233, 1
  %idxprom290 = sext i32 %add289 to i64
  %234 = load i8*, i8** %tassign, align 8
  %arrayidx291 = getelementptr inbounds i8, i8* %234, i64 %idxprom290
  %235 = load i8, i8* %arrayidx291, align 1
  %conv292 = sext i8 %235 to i32
  %cmp293 = icmp eq i32 %conv292, 1
  br i1 %cmp293, label %land.lhs.true.295, label %if.end.328

land.lhs.true.295:                                ; preds = %land.lhs.true.288
  %236 = load i32, i32* %i, align 4
  %add296 = add nsw i32 %236, 1
  %idxprom297 = sext i32 %add296 to i64
  %237 = load i32*, i32** %kassign, align 8
  %arrayidx298 = getelementptr inbounds i32, i32* %237, i64 %idxprom297
  %238 = load i32, i32* %arrayidx298, align 4
  %239 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %239 to i64
  %240 = load i32*, i32** %kassign, align 8
  %arrayidx300 = getelementptr inbounds i32, i32* %240, i64 %idxprom299
  %241 = load i32, i32* %arrayidx300, align 4
  %sub301 = sub nsw i32 %238, %241
  %cmp302 = icmp sgt i32 %sub301, 1
  br i1 %cmp302, label %if.then.304, label %if.end.328

if.then.304:                                      ; preds = %land.lhs.true.295
  %242 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %242 to i64
  %243 = load i32*, i32** %kassign, align 8
  %arrayidx306 = getelementptr inbounds i32, i32* %243, i64 %idxprom305
  %244 = load i32, i32* %arrayidx306, align 4
  %add307 = add nsw i32 %244, 1
  store i32 %add307, i32* %k, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.325, %if.then.304
  %245 = load i32, i32* %k, align 4
  %246 = load i32, i32* %i, align 4
  %add309 = add nsw i32 %246, 1
  %idxprom310 = sext i32 %add309 to i64
  %247 = load i32*, i32** %kassign, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %247, i64 %idxprom310
  %248 = load i32, i32* %arrayidx311, align 4
  %cmp312 = icmp slt i32 %245, %248
  br i1 %cmp312, label %for.body.314, label %for.end.327

for.body.314:                                     ; preds = %for.cond.308
  %249 = load i32, i32* %tpos, align 4
  %idxprom315 = sext i32 %249 to i64
  %250 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype316 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %250, i32 0, i32 1
  %251 = load i8*, i8** %statetype316, align 8
  %arrayidx317 = getelementptr inbounds i8, i8* %251, i64 %idxprom315
  store i8 2, i8* %arrayidx317, align 1
  %252 = load i32, i32* %k, align 4
  %253 = load i32, i32* %tpos, align 4
  %idxprom318 = sext i32 %253 to i64
  %254 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx319 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %254, i32 0, i32 2
  %255 = load i32*, i32** %nodeidx319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %255, i64 %idxprom318
  store i32 %252, i32* %arrayidx320, align 4
  %256 = load i32, i32* %tpos, align 4
  %idxprom321 = sext i32 %256 to i64
  %257 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos322 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %257, i32 0, i32 3
  %258 = load i32*, i32** %pos322, align 8
  %arrayidx323 = getelementptr inbounds i32, i32* %258, i64 %idxprom321
  store i32 0, i32* %arrayidx323, align 4
  %259 = load i32, i32* %tpos, align 4
  %inc324 = add nsw i32 %259, 1
  store i32 %inc324, i32* %tpos, align 4
  br label %for.inc.325

for.inc.325:                                      ; preds = %for.body.314
  %260 = load i32, i32* %k, align 4
  %inc326 = add nsw i32 %260, 1
  store i32 %inc326, i32* %k, align 4
  br label %for.cond.308

for.end.327:                                      ; preds = %for.cond.308
  br label %if.end.328

if.end.328:                                       ; preds = %for.end.327, %land.lhs.true.295, %land.lhs.true.288, %if.end.273
  %261 = load i32, i32* %i, align 4
  %262 = load i32, i32* %L.addr, align 4
  %cmp329 = icmp eq i32 %261, %262
  br i1 %cmp329, label %if.then.338, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %if.end.328
  %263 = load i32, i32* %i, align 4
  %add332 = add nsw i32 %263, 1
  %idxprom333 = sext i32 %add332 to i64
  %264 = load i8*, i8** %tassign, align 8
  %arrayidx334 = getelementptr inbounds i8, i8* %264, i64 %idxprom333
  %265 = load i8, i8* %arrayidx334, align 1
  %conv335 = sext i8 %265 to i32
  %cmp336 = icmp eq i32 %conv335, 8
  br i1 %cmp336, label %if.then.338, label %if.end.398

if.then.338:                                      ; preds = %lor.lhs.false.331, %if.end.328
  %266 = load i32, i32* %i, align 4
  %sub339 = sub nsw i32 %266, 1
  %idxprom340 = sext i32 %sub339 to i64
  %267 = load i32*, i32** %kassign, align 8
  %arrayidx341 = getelementptr inbounds i32, i32* %267, i64 %idxprom340
  %268 = load i32, i32* %arrayidx341, align 4
  %idxprom342 = sext i32 %268 to i64
  %269 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %269, i32 0, i32 27
  %270 = load float*, float** %end, align 8
  %arrayidx343 = getelementptr inbounds float, float* %270, i64 %idxprom342
  %271 = load float, float* %arrayidx343, align 4
  %call344 = call i32 @Prob2Score(float %271, float 1.000000e+00)
  %conv345 = sitofp i32 %call344 to double
  %add346 = fadd double %conv345, 1.000000e+03
  %272 = load i32, i32* %i, align 4
  %sub347 = sub nsw i32 %272, 1
  %idxprom348 = sext i32 %sub347 to i64
  %273 = load i32*, i32** %kassign, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %273, i64 %idxprom348
  %274 = load i32, i32* %arrayidx349, align 4
  %idxprom350 = sext i32 %274 to i64
  %275 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %275, i32 0, i32 35
  %276 = load i32*, i32** %esc, align 8
  %arrayidx351 = getelementptr inbounds i32, i32* %276, i64 %idxprom350
  %277 = load i32, i32* %arrayidx351, align 4
  %conv352 = sitofp i32 %277 to double
  %cmp353 = fcmp ole double %add346, %conv352
  br i1 %cmp353, label %if.then.355, label %if.end.377

if.then.355:                                      ; preds = %if.then.338
  %278 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %278 to i64
  %279 = load i32*, i32** %kassign, align 8
  %arrayidx357 = getelementptr inbounds i32, i32* %279, i64 %idxprom356
  %280 = load i32, i32* %arrayidx357, align 4
  %add358 = add nsw i32 %280, 1
  store i32 %add358, i32* %k, align 4
  br label %for.cond.359

for.cond.359:                                     ; preds = %for.inc.374, %if.then.355
  %281 = load i32, i32* %k, align 4
  %282 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M360 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %282, i32 0, i32 20
  %283 = load i32, i32* %M360, align 4
  %cmp361 = icmp sle i32 %281, %283
  br i1 %cmp361, label %for.body.363, label %for.end.376

for.body.363:                                     ; preds = %for.cond.359
  %284 = load i32, i32* %tpos, align 4
  %idxprom364 = sext i32 %284 to i64
  %285 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype365 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %285, i32 0, i32 1
  %286 = load i8*, i8** %statetype365, align 8
  %arrayidx366 = getelementptr inbounds i8, i8* %286, i64 %idxprom364
  store i8 2, i8* %arrayidx366, align 1
  %287 = load i32, i32* %k, align 4
  %288 = load i32, i32* %tpos, align 4
  %idxprom367 = sext i32 %288 to i64
  %289 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx368 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %289, i32 0, i32 2
  %290 = load i32*, i32** %nodeidx368, align 8
  %arrayidx369 = getelementptr inbounds i32, i32* %290, i64 %idxprom367
  store i32 %287, i32* %arrayidx369, align 4
  %291 = load i32, i32* %tpos, align 4
  %idxprom370 = sext i32 %291 to i64
  %292 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos371 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %292, i32 0, i32 3
  %293 = load i32*, i32** %pos371, align 8
  %arrayidx372 = getelementptr inbounds i32, i32* %293, i64 %idxprom370
  store i32 0, i32* %arrayidx372, align 4
  %294 = load i32, i32* %tpos, align 4
  %inc373 = add nsw i32 %294, 1
  store i32 %inc373, i32* %tpos, align 4
  br label %for.inc.374

for.inc.374:                                      ; preds = %for.body.363
  %295 = load i32, i32* %k, align 4
  %inc375 = add nsw i32 %295, 1
  store i32 %inc375, i32* %k, align 4
  br label %for.cond.359

for.end.376:                                      ; preds = %for.cond.359
  br label %if.end.377

if.end.377:                                       ; preds = %for.end.376, %if.then.338
  %296 = load i32, i32* %tpos, align 4
  %idxprom378 = sext i32 %296 to i64
  %297 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype379 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %297, i32 0, i32 1
  %298 = load i8*, i8** %statetype379, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %298, i64 %idxprom378
  store i8 7, i8* %arrayidx380, align 1
  %299 = load i32, i32* %tpos, align 4
  %idxprom381 = sext i32 %299 to i64
  %300 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx382 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %300, i32 0, i32 2
  %301 = load i32*, i32** %nodeidx382, align 8
  %arrayidx383 = getelementptr inbounds i32, i32* %301, i64 %idxprom381
  store i32 0, i32* %arrayidx383, align 4
  %302 = load i32, i32* %tpos, align 4
  %idxprom384 = sext i32 %302 to i64
  %303 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos385 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %303, i32 0, i32 3
  %304 = load i32*, i32** %pos385, align 8
  %arrayidx386 = getelementptr inbounds i32, i32* %304, i64 %idxprom384
  store i32 0, i32* %arrayidx386, align 4
  %305 = load i32, i32* %tpos, align 4
  %inc387 = add nsw i32 %305, 1
  store i32 %inc387, i32* %tpos, align 4
  %306 = load i32, i32* %tpos, align 4
  %idxprom388 = sext i32 %306 to i64
  %307 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype389 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %307, i32 0, i32 1
  %308 = load i8*, i8** %statetype389, align 8
  %arrayidx390 = getelementptr inbounds i8, i8* %308, i64 %idxprom388
  store i8 8, i8* %arrayidx390, align 1
  %309 = load i32, i32* %tpos, align 4
  %idxprom391 = sext i32 %309 to i64
  %310 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx392 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %310, i32 0, i32 2
  %311 = load i32*, i32** %nodeidx392, align 8
  %arrayidx393 = getelementptr inbounds i32, i32* %311, i64 %idxprom391
  store i32 0, i32* %arrayidx393, align 4
  %312 = load i32, i32* %tpos, align 4
  %idxprom394 = sext i32 %312 to i64
  %313 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos395 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %313, i32 0, i32 3
  %314 = load i32*, i32** %pos395, align 8
  %arrayidx396 = getelementptr inbounds i32, i32* %314, i64 %idxprom394
  store i32 0, i32* %arrayidx396, align 4
  %315 = load i32, i32* %tpos, align 4
  %inc397 = add nsw i32 %315, 1
  store i32 %inc397, i32* %tpos, align 4
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.377, %lor.lhs.false.331
  br label %sw.epilog

sw.bb.399:                                        ; preds = %for.body.216
  %316 = load i32, i32* %tpos, align 4
  %idxprom400 = sext i32 %316 to i64
  %317 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype401 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %317, i32 0, i32 1
  %318 = load i8*, i8** %statetype401, align 8
  %arrayidx402 = getelementptr inbounds i8, i8* %318, i64 %idxprom400
  store i8 3, i8* %arrayidx402, align 1
  %319 = load i32, i32* %i, align 4
  %idxprom403 = sext i32 %319 to i64
  %320 = load i32*, i32** %kassign, align 8
  %arrayidx404 = getelementptr inbounds i32, i32* %320, i64 %idxprom403
  %321 = load i32, i32* %arrayidx404, align 4
  %322 = load i32, i32* %tpos, align 4
  %idxprom405 = sext i32 %322 to i64
  %323 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx406 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %323, i32 0, i32 2
  %324 = load i32*, i32** %nodeidx406, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %324, i64 %idxprom405
  store i32 %321, i32* %arrayidx407, align 4
  %325 = load i32, i32* %i, align 4
  %326 = load i32, i32* %tpos, align 4
  %idxprom408 = sext i32 %326 to i64
  %327 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos409 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %327, i32 0, i32 3
  %328 = load i32*, i32** %pos409, align 8
  %arrayidx410 = getelementptr inbounds i32, i32* %328, i64 %idxprom408
  store i32 %325, i32* %arrayidx410, align 4
  %329 = load i32, i32* %tpos, align 4
  %inc411 = add nsw i32 %329, 1
  store i32 %inc411, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.412:                                        ; preds = %for.body.216
  %330 = load i32, i32* %tpos, align 4
  %idxprom413 = sext i32 %330 to i64
  %331 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype414 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %331, i32 0, i32 1
  %332 = load i8*, i8** %statetype414, align 8
  %arrayidx415 = getelementptr inbounds i8, i8* %332, i64 %idxprom413
  store i8 5, i8* %arrayidx415, align 1
  %333 = load i32, i32* %tpos, align 4
  %idxprom416 = sext i32 %333 to i64
  %334 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx417 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %334, i32 0, i32 2
  %335 = load i32*, i32** %nodeidx417, align 8
  %arrayidx418 = getelementptr inbounds i32, i32* %335, i64 %idxprom416
  store i32 0, i32* %arrayidx418, align 4
  %336 = load i32, i32* %i, align 4
  %337 = load i32, i32* %tpos, align 4
  %idxprom419 = sext i32 %337 to i64
  %338 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos420 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %338, i32 0, i32 3
  %339 = load i32*, i32** %pos420, align 8
  %arrayidx421 = getelementptr inbounds i32, i32* %339, i64 %idxprom419
  store i32 %336, i32* %arrayidx421, align 4
  %340 = load i32, i32* %tpos, align 4
  %inc422 = add nsw i32 %340, 1
  store i32 %inc422, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.423:                                        ; preds = %for.body.216
  %341 = load i32, i32* %tpos, align 4
  %idxprom424 = sext i32 %341 to i64
  %342 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype425 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %342, i32 0, i32 1
  %343 = load i8*, i8** %statetype425, align 8
  %arrayidx426 = getelementptr inbounds i8, i8* %343, i64 %idxprom424
  store i8 8, i8* %arrayidx426, align 1
  %344 = load i32, i32* %tpos, align 4
  %idxprom427 = sext i32 %344 to i64
  %345 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx428 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %345, i32 0, i32 2
  %346 = load i32*, i32** %nodeidx428, align 8
  %arrayidx429 = getelementptr inbounds i32, i32* %346, i64 %idxprom427
  store i32 0, i32* %arrayidx429, align 4
  %347 = load i32, i32* %i, align 4
  %348 = load i32, i32* %tpos, align 4
  %idxprom430 = sext i32 %348 to i64
  %349 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos431 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %349, i32 0, i32 3
  %350 = load i32*, i32** %pos431, align 8
  %arrayidx432 = getelementptr inbounds i32, i32* %350, i64 %idxprom430
  store i32 %347, i32* %arrayidx432, align 4
  %351 = load i32, i32* %tpos, align 4
  %inc433 = add nsw i32 %351, 1
  store i32 %inc433, i32* %tpos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.216
  %352 = load i32, i32* %i, align 4
  %idxprom434 = sext i32 %352 to i64
  %353 = load i8*, i8** %tassign, align 8
  %arrayidx435 = getelementptr inbounds i8, i8* %353, i64 %idxprom434
  %354 = load i8, i8* %arrayidx435, align 1
  %call436 = call i8* @Statetype(i8 signext %354)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* %call436)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.423, %sw.bb.412, %sw.bb.399, %if.end.398
  br label %for.inc.437

for.inc.437:                                      ; preds = %sw.epilog
  %355 = load i32, i32* %i, align 4
  %inc438 = add nsw i32 %355, 1
  store i32 %inc438, i32* %i, align 4
  br label %for.cond.213

for.end.439:                                      ; preds = %for.cond.213
  %356 = load i32, i32* %tpos, align 4
  %idxprom440 = sext i32 %356 to i64
  %357 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype441 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %357, i32 0, i32 1
  %358 = load i8*, i8** %statetype441, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %358, i64 %idxprom440
  store i8 9, i8* %arrayidx442, align 1
  %359 = load i32, i32* %tpos, align 4
  %idxprom443 = sext i32 %359 to i64
  %360 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx444 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %360, i32 0, i32 2
  %361 = load i32*, i32** %nodeidx444, align 8
  %arrayidx445 = getelementptr inbounds i32, i32* %361, i64 %idxprom443
  store i32 0, i32* %arrayidx445, align 4
  %362 = load i32, i32* %tpos, align 4
  %idxprom446 = sext i32 %362 to i64
  %363 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos447 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %363, i32 0, i32 3
  %364 = load i32*, i32** %pos447, align 8
  %arrayidx448 = getelementptr inbounds i32, i32* %364, i64 %idxprom446
  store i32 0, i32* %arrayidx448, align 4
  %365 = load i32, i32* %tpos, align 4
  %add449 = add nsw i32 %365, 1
  %366 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen450 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %366, i32 0, i32 0
  store i32 %add449, i32* %tlen450, align 4
  %367 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %368 = load %struct.p7trace_s**, %struct.p7trace_s*** %ret_tr.addr, align 8
  store %struct.p7trace_s* %367, %struct.p7trace_s** %368, align 8
  %369 = load i32*, i32** %kassign, align 8
  %370 = bitcast i32* %369 to i8*
  call void @free(i8* %370) #4
  %371 = load i8*, i8** %tassign, align 8
  call void @free(i8* %371) #4
  %372 = load i32*, i32** %startlist, align 8
  %373 = bitcast i32* %372 to i8*
  call void @free(i8* %373) #4
  %374 = load i32*, i32** %endlist, align 8
  %375 = bitcast i32* %374 to i8*
  call void @free(i8* %375) #4
  %376 = load float, float* %ret_sc, align 4
  ret float %376
}

declare float @P7Viterbi(i8*, i32, %struct.plan7_s*, %struct.dpmatrix_s*, %struct.p7trace_s**) #1

; Function Attrs: nounwind uwtable
define internal float @get_wee_midpt(%struct.plan7_s* %hmm, i8* %dsq, i32 %L, i32 %k1, i8 signext %t1, i32 %s1, i32 %k3, i8 signext %t3, i32 %s3, i32* %ret_k2, i8* %ret_t2, i32* %ret_s2) #0 {
entry:
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %k1.addr = alloca i32, align 4
  %t1.addr = alloca i8, align 1
  %s1.addr = alloca i32, align 4
  %k3.addr = alloca i32, align 4
  %t3.addr = alloca i8, align 1
  %s3.addr = alloca i32, align 4
  %ret_k2.addr = alloca i32*, align 8
  %ret_t2.addr = alloca i8*, align 8
  %ret_s2.addr = alloca i32*, align 8
  %fwd = alloca %struct.dpmatrix_s*, align 8
  %bck = alloca %struct.dpmatrix_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %k2 = alloca i32, align 4
  %t2 = alloca i8, align 1
  %s2 = alloca i32, align 4
  %cur = alloca i32, align 4
  %prv = alloca i32, align 4
  %nxt = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sc = alloca i32, align 4
  %max = alloca i32, align 4
  %start = alloca i32, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store i32 %k1, i32* %k1.addr, align 4
  store i8 %t1, i8* %t1.addr, align 1
  store i32 %s1, i32* %s1.addr, align 4
  store i32 %k3, i32* %k3.addr, align 4
  store i8 %t3, i8* %t3.addr, align 1
  store i32 %s3, i32* %s3.addr, align 4
  store i32* %ret_k2, i32** %ret_k2.addr, align 8
  store i8* %ret_t2, i8** %ret_t2.addr, align 8
  store i32* %ret_s2, i32** %ret_s2.addr, align 8
  %0 = load i32, i32* %s1.addr, align 4
  %1 = load i32, i32* %s3.addr, align 4
  %2 = load i32, i32* %s1.addr, align 4
  %sub = sub nsw i32 %1, %2
  %div = sdiv i32 %sub, 2
  %add = add nsw i32 %0, %div
  store i32 %add, i32* %s2, align 4
  %3 = load i32, i32* %s3.addr, align 4
  %4 = load i32, i32* %s1.addr, align 4
  %sub1 = sub nsw i32 %3, %4
  %cmp = icmp eq i32 %sub1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8, i8* %t1.addr, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp eq i32 %conv, 4
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %s1.addr, align 4
  store i32 %6, i32* %s2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i32, i32* %s3.addr, align 4
  %8 = load i32, i32* %s1.addr, align 4
  %sub4 = sub nsw i32 %7, %8
  %cmp5 = icmp eq i32 %sub4, 1
  br i1 %cmp5, label %land.lhs.true.7, label %if.end.12

land.lhs.true.7:                                  ; preds = %if.end
  %9 = load i8, i8* %t3.addr, align 1
  %conv8 = sext i8 %9 to i32
  %cmp9 = icmp eq i32 %conv8, 9
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true.7
  %10 = load i32, i32* %s3.addr, align 4
  store i32 %10, i32* %s2, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true.7, %if.end
  %11 = load i8, i8* %t1.addr, align 1
  %conv13 = sext i8 %11 to i32
  %cmp14 = icmp eq i32 %conv13, 4
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.12
  br label %cond.end

cond.false:                                       ; preds = %if.end.12
  %12 = load i32, i32* %s1.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %start, align 4
  %13 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %13, i32 0, i32 20
  %14 = load i32, i32* %M, align 4
  %call = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 2, i32 %14, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %fwd, align 8
  %15 = load i32, i32* %start, align 4
  %rem = srem i32 %15, 2
  store i32 %rem, i32* %cur, align 4
  %16 = load i32, i32* %cur, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %17, i64 %idxprom
  %18 = load i32*, i32** %arrayidx, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 -987654321, i32* %arrayidx16, align 4
  %19 = load i32, i32* %cur, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i32**, i32*** %xmx, align 8
  %arrayidx18 = getelementptr inbounds i32*, i32** %20, i64 %idxprom17
  %21 = load i32*, i32** %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 -987654321, i32* %arrayidx19, align 4
  %22 = load i32, i32* %cur, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i32**, i32*** %xmx, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %23, i64 %idxprom20
  %24 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 -987654321, i32* %arrayidx22, align 4
  %25 = load i32, i32* %cur, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load i32**, i32*** %xmx, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %26, i64 %idxprom23
  %27 = load i32*, i32** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 -987654321, i32* %arrayidx25, align 4
  %28 = load i32, i32* %k1.addr, align 4
  store i32 %28, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %29 = load i32, i32* %k, align 4
  %30 = load i32, i32* %k3.addr, align 4
  %cmp26 = icmp sle i32 %29, %30
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load i32, i32* %cur, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load i32**, i32*** %dmx, align 8
  %arrayidx30 = getelementptr inbounds i32*, i32** %33, i64 %idxprom29
  %34 = load i32*, i32** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %34, i64 %idxprom28
  store i32 -987654321, i32* %arrayidx31, align 4
  %35 = load i32, i32* %k, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load i32, i32* %cur, align 4
  %idxprom33 = sext i32 %36 to i64
  %37 = load i32**, i32*** %imx, align 8
  %arrayidx34 = getelementptr inbounds i32*, i32** %37, i64 %idxprom33
  %38 = load i32*, i32** %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %38, i64 %idxprom32
  store i32 -987654321, i32* %arrayidx35, align 4
  %39 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %39 to i64
  %40 = load i32, i32* %cur, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load i32**, i32*** %mmx, align 8
  %arrayidx38 = getelementptr inbounds i32*, i32** %41, i64 %idxprom37
  %42 = load i32*, i32** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %42, i64 %idxprom36
  store i32 -987654321, i32* %arrayidx39, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %k, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load i8, i8* %t1.addr, align 1
  %conv40 = sext i8 %44 to i32
  switch i32 %conv40, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.45
    i32 5, label %sw.bb.50
    i32 8, label %sw.bb.54
    i32 4, label %sw.bb.58
  ]

sw.bb:                                            ; preds = %for.end
  %45 = load i32, i32* %k1.addr, align 4
  %idxprom41 = sext i32 %45 to i64
  %46 = load i32, i32* %cur, align 4
  %idxprom42 = sext i32 %46 to i64
  %47 = load i32**, i32*** %mmx, align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %47, i64 %idxprom42
  %48 = load i32*, i32** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %48, i64 %idxprom41
  store i32 0, i32* %arrayidx44, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %for.end
  %49 = load i32, i32* %k1.addr, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load i32, i32* %cur, align 4
  %idxprom47 = sext i32 %50 to i64
  %51 = load i32**, i32*** %imx, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %51, i64 %idxprom47
  %52 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %52, i64 %idxprom46
  store i32 0, i32* %arrayidx49, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %for.end
  %53 = load i32, i32* %cur, align 4
  %idxprom51 = sext i32 %53 to i64
  %54 = load i32**, i32*** %xmx, align 8
  %arrayidx52 = getelementptr inbounds i32*, i32** %54, i64 %idxprom51
  %55 = load i32*, i32** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %55, i64 4
  store i32 0, i32* %arrayidx53, align 4
  br label %sw.epilog

sw.bb.54:                                         ; preds = %for.end
  %56 = load i32, i32* %cur, align 4
  %idxprom55 = sext i32 %56 to i64
  %57 = load i32**, i32*** %xmx, align 8
  %arrayidx56 = getelementptr inbounds i32*, i32** %57, i64 %idxprom55
  %58 = load i32*, i32** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 0, i32* %arrayidx57, align 4
  br label %sw.epilog

sw.bb.58:                                         ; preds = %for.end
  %59 = load i32, i32* %cur, align 4
  %idxprom59 = sext i32 %59 to i64
  %60 = load i32**, i32*** %xmx, align 8
  %arrayidx60 = getelementptr inbounds i32*, i32** %60, i64 %idxprom59
  %61 = load i32*, i32** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i32, i32* %61, i64 4
  store i32 0, i32* %arrayidx61, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  %62 = load i8, i8* %t1.addr, align 1
  %call62 = call i8* @Statetype(i8 signext %62)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* %call62)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.58, %sw.bb.54, %sw.bb.50, %sw.bb.45, %sw.bb
  %63 = load i8, i8* %t1.addr, align 1
  %conv63 = sext i8 %63 to i32
  %cmp64 = icmp eq i32 %conv63, 1
  br i1 %cmp64, label %if.then.66, label %if.end.137

if.then.66:                                       ; preds = %sw.epilog
  %64 = load i32, i32* %k1.addr, align 4
  %add67 = add nsw i32 %64, 1
  store i32 %add67, i32* %k, align 4
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.117, %if.then.66
  %65 = load i32, i32* %k, align 4
  %66 = load i32, i32* %k3.addr, align 4
  %cmp69 = icmp sle i32 %65, %66
  br i1 %cmp69, label %for.body.71, label %for.end.119

for.body.71:                                      ; preds = %for.cond.68
  %67 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %67 to i64
  %68 = load i32, i32* %cur, align 4
  %idxprom73 = sext i32 %68 to i64
  %69 = load i32**, i32*** %dmx, align 8
  %arrayidx74 = getelementptr inbounds i32*, i32** %69, i64 %idxprom73
  %70 = load i32*, i32** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %70, i64 %idxprom72
  store i32 -987654321, i32* %arrayidx75, align 4
  %71 = load i32, i32* %k, align 4
  %sub76 = sub nsw i32 %71, 1
  %idxprom77 = sext i32 %sub76 to i64
  %72 = load i32, i32* %cur, align 4
  %idxprom78 = sext i32 %72 to i64
  %73 = load i32**, i32*** %mmx, align 8
  %arrayidx79 = getelementptr inbounds i32*, i32** %73, i64 %idxprom78
  %74 = load i32*, i32** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %74, i64 %idxprom77
  %75 = load i32, i32* %arrayidx80, align 4
  %76 = load i32, i32* %k, align 4
  %sub81 = sub nsw i32 %76, 1
  %idxprom82 = sext i32 %sub81 to i64
  %77 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %77, i32 0, i32 30
  %78 = load i32**, i32*** %tsc, align 8
  %arrayidx83 = getelementptr inbounds i32*, i32** %78, i64 2
  %79 = load i32*, i32** %arrayidx83, align 8
  %arrayidx84 = getelementptr inbounds i32, i32* %79, i64 %idxprom82
  %80 = load i32, i32* %arrayidx84, align 4
  %add85 = add nsw i32 %75, %80
  store i32 %add85, i32* %sc, align 4
  %cmp86 = icmp sgt i32 %add85, -987654321
  br i1 %cmp86, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %for.body.71
  %81 = load i32, i32* %sc, align 4
  %82 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %82 to i64
  %83 = load i32, i32* %cur, align 4
  %idxprom90 = sext i32 %83 to i64
  %84 = load i32**, i32*** %dmx, align 8
  %arrayidx91 = getelementptr inbounds i32*, i32** %84, i64 %idxprom90
  %85 = load i32*, i32** %arrayidx91, align 8
  %arrayidx92 = getelementptr inbounds i32, i32* %85, i64 %idxprom89
  store i32 %81, i32* %arrayidx92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %for.body.71
  %86 = load i32, i32* %k, align 4
  %sub94 = sub nsw i32 %86, 1
  %idxprom95 = sext i32 %sub94 to i64
  %87 = load i32, i32* %cur, align 4
  %idxprom96 = sext i32 %87 to i64
  %88 = load i32**, i32*** %dmx, align 8
  %arrayidx97 = getelementptr inbounds i32*, i32** %88, i64 %idxprom96
  %89 = load i32*, i32** %arrayidx97, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %89, i64 %idxprom95
  %90 = load i32, i32* %arrayidx98, align 4
  %91 = load i32, i32* %k, align 4
  %sub99 = sub nsw i32 %91, 1
  %idxprom100 = sext i32 %sub99 to i64
  %92 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc101 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 30
  %93 = load i32**, i32*** %tsc101, align 8
  %arrayidx102 = getelementptr inbounds i32*, i32** %93, i64 6
  %94 = load i32*, i32** %arrayidx102, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %94, i64 %idxprom100
  %95 = load i32, i32* %arrayidx103, align 4
  %add104 = add nsw i32 %90, %95
  store i32 %add104, i32* %sc, align 4
  %96 = load i32, i32* %k, align 4
  %idxprom105 = sext i32 %96 to i64
  %97 = load i32, i32* %cur, align 4
  %idxprom106 = sext i32 %97 to i64
  %98 = load i32**, i32*** %dmx, align 8
  %arrayidx107 = getelementptr inbounds i32*, i32** %98, i64 %idxprom106
  %99 = load i32*, i32** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %99, i64 %idxprom105
  %100 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp sgt i32 %add104, %100
  br i1 %cmp109, label %if.then.111, label %if.end.116

if.then.111:                                      ; preds = %if.end.93
  %101 = load i32, i32* %sc, align 4
  %102 = load i32, i32* %k, align 4
  %idxprom112 = sext i32 %102 to i64
  %103 = load i32, i32* %cur, align 4
  %idxprom113 = sext i32 %103 to i64
  %104 = load i32**, i32*** %dmx, align 8
  %arrayidx114 = getelementptr inbounds i32*, i32** %104, i64 %idxprom113
  %105 = load i32*, i32** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds i32, i32* %105, i64 %idxprom112
  store i32 %101, i32* %arrayidx115, align 4
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.111, %if.end.93
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %106 = load i32, i32* %k, align 4
  %inc118 = add nsw i32 %106, 1
  store i32 %inc118, i32* %k, align 4
  br label %for.cond.68

for.end.119:                                      ; preds = %for.cond.68
  %107 = load i32, i32* %cur, align 4
  %idxprom120 = sext i32 %107 to i64
  %108 = load i32**, i32*** %xmx, align 8
  %arrayidx121 = getelementptr inbounds i32*, i32** %108, i64 %idxprom120
  %109 = load i32*, i32** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 -987654321, i32* %arrayidx122, align 4
  %110 = load i32, i32* %k1.addr, align 4
  %idxprom123 = sext i32 %110 to i64
  %111 = load i32, i32* %cur, align 4
  %idxprom124 = sext i32 %111 to i64
  %112 = load i32**, i32*** %mmx, align 8
  %arrayidx125 = getelementptr inbounds i32*, i32** %112, i64 %idxprom124
  %113 = load i32*, i32** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %113, i64 %idxprom123
  %114 = load i32, i32* %arrayidx126, align 4
  %115 = load i32, i32* %k1.addr, align 4
  %idxprom127 = sext i32 %115 to i64
  %116 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %116, i32 0, i32 35
  %117 = load i32*, i32** %esc, align 8
  %arrayidx128 = getelementptr inbounds i32, i32* %117, i64 %idxprom127
  %118 = load i32, i32* %arrayidx128, align 4
  %add129 = add nsw i32 %114, %118
  store i32 %add129, i32* %sc, align 4
  %cmp130 = icmp sgt i32 %add129, -987654321
  br i1 %cmp130, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %for.end.119
  %119 = load i32, i32* %sc, align 4
  %120 = load i32, i32* %cur, align 4
  %idxprom133 = sext i32 %120 to i64
  %121 = load i32**, i32*** %xmx, align 8
  %arrayidx134 = getelementptr inbounds i32*, i32** %121, i64 %idxprom133
  %122 = load i32*, i32** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 %119, i32* %arrayidx135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.132, %for.end.119
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %sw.epilog
  %123 = load i32, i32* %cur, align 4
  %idxprom138 = sext i32 %123 to i64
  %124 = load i32**, i32*** %xmx, align 8
  %arrayidx139 = getelementptr inbounds i32*, i32** %124, i64 %idxprom138
  %125 = load i32*, i32** %arrayidx139, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 -987654321, i32* %arrayidx140, align 4
  %126 = load i32, i32* %cur, align 4
  %idxprom141 = sext i32 %126 to i64
  %127 = load i32**, i32*** %xmx, align 8
  %arrayidx142 = getelementptr inbounds i32*, i32** %127, i64 %idxprom141
  %128 = load i32*, i32** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %128, i64 4
  %129 = load i32, i32* %arrayidx143, align 4
  %130 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %130, i32 0, i32 33
  %arrayidx144 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx145 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx144, i32 0, i64 0
  %131 = load i32, i32* %arrayidx145, align 4
  %add146 = add nsw i32 %129, %131
  store i32 %add146, i32* %sc, align 4
  %cmp147 = icmp sgt i32 %add146, -987654321
  br i1 %cmp147, label %if.then.149, label %if.end.153

if.then.149:                                      ; preds = %if.end.137
  %132 = load i32, i32* %sc, align 4
  %133 = load i32, i32* %cur, align 4
  %idxprom150 = sext i32 %133 to i64
  %134 = load i32**, i32*** %xmx, align 8
  %arrayidx151 = getelementptr inbounds i32*, i32** %134, i64 %idxprom150
  %135 = load i32*, i32** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %arrayidx152, align 4
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.149, %if.end.137
  %136 = load i32, i32* %cur, align 4
  %idxprom154 = sext i32 %136 to i64
  %137 = load i32**, i32*** %xmx, align 8
  %arrayidx155 = getelementptr inbounds i32*, i32** %137, i64 %idxprom154
  %138 = load i32*, i32** %arrayidx155, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 -987654321, i32* %arrayidx156, align 4
  %139 = load i32, i32* %cur, align 4
  %idxprom157 = sext i32 %139 to i64
  %140 = load i32**, i32*** %xmx, align 8
  %arrayidx158 = getelementptr inbounds i32*, i32** %140, i64 %idxprom157
  %141 = load i32*, i32** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %141, i64 1
  %142 = load i32, i32* %arrayidx159, align 4
  %143 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc160 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %143, i32 0, i32 33
  %arrayidx161 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc160, i32 0, i64 1
  %arrayidx162 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx161, i32 0, i64 0
  %144 = load i32, i32* %arrayidx162, align 4
  %add163 = add nsw i32 %142, %144
  store i32 %add163, i32* %sc, align 4
  %cmp164 = icmp sgt i32 %add163, -987654321
  br i1 %cmp164, label %if.then.166, label %if.end.170

if.then.166:                                      ; preds = %if.end.153
  %145 = load i32, i32* %sc, align 4
  %146 = load i32, i32* %cur, align 4
  %idxprom167 = sext i32 %146 to i64
  %147 = load i32**, i32*** %xmx, align 8
  %arrayidx168 = getelementptr inbounds i32*, i32** %147, i64 %idxprom167
  %148 = load i32*, i32** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %145, i32* %arrayidx169, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.166, %if.end.153
  %149 = load i32, i32* %start, align 4
  %add171 = add nsw i32 %149, 1
  store i32 %add171, i32* %i, align 4
  br label %for.cond.172

for.cond.172:                                     ; preds = %for.inc.660, %if.end.170
  %150 = load i32, i32* %i, align 4
  %151 = load i32, i32* %s2, align 4
  %cmp173 = icmp sle i32 %150, %151
  br i1 %cmp173, label %for.body.175, label %for.end.662

for.body.175:                                     ; preds = %for.cond.172
  %152 = load i32, i32* %i, align 4
  %rem176 = srem i32 %152, 2
  store i32 %rem176, i32* %cur, align 4
  %153 = load i32, i32* %cur, align 4
  %tobool = icmp ne i32 %153, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %prv, align 4
  %154 = load i32, i32* %k1.addr, align 4
  %idxprom177 = sext i32 %154 to i64
  %155 = load i32, i32* %cur, align 4
  %idxprom178 = sext i32 %155 to i64
  %156 = load i32**, i32*** %dmx, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %156, i64 %idxprom178
  %157 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %157, i64 %idxprom177
  store i32 -987654321, i32* %arrayidx180, align 4
  %158 = load i32, i32* %k1.addr, align 4
  %idxprom181 = sext i32 %158 to i64
  %159 = load i32, i32* %cur, align 4
  %idxprom182 = sext i32 %159 to i64
  %160 = load i32**, i32*** %imx, align 8
  %arrayidx183 = getelementptr inbounds i32*, i32** %160, i64 %idxprom182
  %161 = load i32*, i32** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds i32, i32* %161, i64 %idxprom181
  store i32 -987654321, i32* %arrayidx184, align 4
  %162 = load i32, i32* %k1.addr, align 4
  %idxprom185 = sext i32 %162 to i64
  %163 = load i32, i32* %cur, align 4
  %idxprom186 = sext i32 %163 to i64
  %164 = load i32**, i32*** %mmx, align 8
  %arrayidx187 = getelementptr inbounds i32*, i32** %164, i64 %idxprom186
  %165 = load i32*, i32** %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds i32, i32* %165, i64 %idxprom185
  store i32 -987654321, i32* %arrayidx188, align 4
  %166 = load i32, i32* %k1.addr, align 4
  %167 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M189 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %167, i32 0, i32 20
  %168 = load i32, i32* %M189, align 4
  %cmp190 = icmp slt i32 %166, %168
  br i1 %cmp190, label %if.then.192, label %if.end.263

if.then.192:                                      ; preds = %for.body.175
  %169 = load i32, i32* %k1.addr, align 4
  %idxprom193 = sext i32 %169 to i64
  %170 = load i32, i32* %cur, align 4
  %idxprom194 = sext i32 %170 to i64
  %171 = load i32**, i32*** %imx, align 8
  %arrayidx195 = getelementptr inbounds i32*, i32** %171, i64 %idxprom194
  %172 = load i32*, i32** %arrayidx195, align 8
  %arrayidx196 = getelementptr inbounds i32, i32* %172, i64 %idxprom193
  store i32 -987654321, i32* %arrayidx196, align 4
  %173 = load i32, i32* %k1.addr, align 4
  %idxprom197 = sext i32 %173 to i64
  %174 = load i32, i32* %prv, align 4
  %idxprom198 = sext i32 %174 to i64
  %175 = load i32**, i32*** %mmx, align 8
  %arrayidx199 = getelementptr inbounds i32*, i32** %175, i64 %idxprom198
  %176 = load i32*, i32** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds i32, i32* %176, i64 %idxprom197
  %177 = load i32, i32* %arrayidx200, align 4
  %178 = load i32, i32* %k1.addr, align 4
  %idxprom201 = sext i32 %178 to i64
  %179 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc202 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %179, i32 0, i32 30
  %180 = load i32**, i32*** %tsc202, align 8
  %arrayidx203 = getelementptr inbounds i32*, i32** %180, i64 1
  %181 = load i32*, i32** %arrayidx203, align 8
  %arrayidx204 = getelementptr inbounds i32, i32* %181, i64 %idxprom201
  %182 = load i32, i32* %arrayidx204, align 4
  %add205 = add nsw i32 %177, %182
  store i32 %add205, i32* %sc, align 4
  %cmp206 = icmp sgt i32 %add205, -987654321
  br i1 %cmp206, label %if.then.208, label %if.end.213

if.then.208:                                      ; preds = %if.then.192
  %183 = load i32, i32* %sc, align 4
  %184 = load i32, i32* %k1.addr, align 4
  %idxprom209 = sext i32 %184 to i64
  %185 = load i32, i32* %cur, align 4
  %idxprom210 = sext i32 %185 to i64
  %186 = load i32**, i32*** %imx, align 8
  %arrayidx211 = getelementptr inbounds i32*, i32** %186, i64 %idxprom210
  %187 = load i32*, i32** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %187, i64 %idxprom209
  store i32 %183, i32* %arrayidx212, align 4
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.208, %if.then.192
  %188 = load i32, i32* %k1.addr, align 4
  %idxprom214 = sext i32 %188 to i64
  %189 = load i32, i32* %prv, align 4
  %idxprom215 = sext i32 %189 to i64
  %190 = load i32**, i32*** %imx, align 8
  %arrayidx216 = getelementptr inbounds i32*, i32** %190, i64 %idxprom215
  %191 = load i32*, i32** %arrayidx216, align 8
  %arrayidx217 = getelementptr inbounds i32, i32* %191, i64 %idxprom214
  %192 = load i32, i32* %arrayidx217, align 4
  %193 = load i32, i32* %k1.addr, align 4
  %idxprom218 = sext i32 %193 to i64
  %194 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc219 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %194, i32 0, i32 30
  %195 = load i32**, i32*** %tsc219, align 8
  %arrayidx220 = getelementptr inbounds i32*, i32** %195, i64 4
  %196 = load i32*, i32** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i32, i32* %196, i64 %idxprom218
  %197 = load i32, i32* %arrayidx221, align 4
  %add222 = add nsw i32 %192, %197
  store i32 %add222, i32* %sc, align 4
  %198 = load i32, i32* %k1.addr, align 4
  %idxprom223 = sext i32 %198 to i64
  %199 = load i32, i32* %cur, align 4
  %idxprom224 = sext i32 %199 to i64
  %200 = load i32**, i32*** %imx, align 8
  %arrayidx225 = getelementptr inbounds i32*, i32** %200, i64 %idxprom224
  %201 = load i32*, i32** %arrayidx225, align 8
  %arrayidx226 = getelementptr inbounds i32, i32* %201, i64 %idxprom223
  %202 = load i32, i32* %arrayidx226, align 4
  %cmp227 = icmp sgt i32 %add222, %202
  br i1 %cmp227, label %if.then.229, label %if.end.234

if.then.229:                                      ; preds = %if.end.213
  %203 = load i32, i32* %sc, align 4
  %204 = load i32, i32* %k1.addr, align 4
  %idxprom230 = sext i32 %204 to i64
  %205 = load i32, i32* %cur, align 4
  %idxprom231 = sext i32 %205 to i64
  %206 = load i32**, i32*** %imx, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %206, i64 %idxprom231
  %207 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %207, i64 %idxprom230
  store i32 %203, i32* %arrayidx233, align 4
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.229, %if.end.213
  %208 = load i32, i32* %k1.addr, align 4
  %idxprom235 = sext i32 %208 to i64
  %209 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %209 to i64
  %210 = load i8*, i8** %dsq.addr, align 8
  %arrayidx237 = getelementptr inbounds i8, i8* %210, i64 %idxprom236
  %211 = load i8, i8* %arrayidx237, align 1
  %conv238 = sext i8 %211 to i32
  %idxprom239 = sext i32 %conv238 to i64
  %212 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %212, i32 0, i32 32
  %213 = load i32**, i32*** %isc, align 8
  %arrayidx240 = getelementptr inbounds i32*, i32** %213, i64 %idxprom239
  %214 = load i32*, i32** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %214, i64 %idxprom235
  %215 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp ne i32 %215, -987654321
  br i1 %cmp242, label %if.then.244, label %if.else

if.then.244:                                      ; preds = %if.end.234
  %216 = load i32, i32* %k1.addr, align 4
  %idxprom245 = sext i32 %216 to i64
  %217 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %217 to i64
  %218 = load i8*, i8** %dsq.addr, align 8
  %arrayidx247 = getelementptr inbounds i8, i8* %218, i64 %idxprom246
  %219 = load i8, i8* %arrayidx247, align 1
  %conv248 = sext i8 %219 to i32
  %idxprom249 = sext i32 %conv248 to i64
  %220 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc250 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %220, i32 0, i32 32
  %221 = load i32**, i32*** %isc250, align 8
  %arrayidx251 = getelementptr inbounds i32*, i32** %221, i64 %idxprom249
  %222 = load i32*, i32** %arrayidx251, align 8
  %arrayidx252 = getelementptr inbounds i32, i32* %222, i64 %idxprom245
  %223 = load i32, i32* %arrayidx252, align 4
  %224 = load i32, i32* %k1.addr, align 4
  %idxprom253 = sext i32 %224 to i64
  %225 = load i32, i32* %cur, align 4
  %idxprom254 = sext i32 %225 to i64
  %226 = load i32**, i32*** %imx, align 8
  %arrayidx255 = getelementptr inbounds i32*, i32** %226, i64 %idxprom254
  %227 = load i32*, i32** %arrayidx255, align 8
  %arrayidx256 = getelementptr inbounds i32, i32* %227, i64 %idxprom253
  %228 = load i32, i32* %arrayidx256, align 4
  %add257 = add nsw i32 %228, %223
  store i32 %add257, i32* %arrayidx256, align 4
  br label %if.end.262

if.else:                                          ; preds = %if.end.234
  %229 = load i32, i32* %k1.addr, align 4
  %idxprom258 = sext i32 %229 to i64
  %230 = load i32, i32* %cur, align 4
  %idxprom259 = sext i32 %230 to i64
  %231 = load i32**, i32*** %imx, align 8
  %arrayidx260 = getelementptr inbounds i32*, i32** %231, i64 %idxprom259
  %232 = load i32*, i32** %arrayidx260, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %232, i64 %idxprom258
  store i32 -987654321, i32* %arrayidx261, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.else, %if.then.244
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %for.body.175
  %233 = load i32, i32* %prv, align 4
  %idxprom264 = sext i32 %233 to i64
  %234 = load i32**, i32*** %xmx, align 8
  %arrayidx265 = getelementptr inbounds i32*, i32** %234, i64 %idxprom264
  %235 = load i32*, i32** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %235, i64 0
  %236 = load i32, i32* %arrayidx266, align 4
  %237 = load i32, i32* %k1.addr, align 4
  %idxprom267 = sext i32 %237 to i64
  %238 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %238, i32 0, i32 34
  %239 = load i32*, i32** %bsc, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %239, i64 %idxprom267
  %240 = load i32, i32* %arrayidx268, align 4
  %add269 = add nsw i32 %236, %240
  store i32 %add269, i32* %sc, align 4
  %cmp270 = icmp sgt i32 %add269, -987654321
  br i1 %cmp270, label %if.then.272, label %if.end.277

if.then.272:                                      ; preds = %if.end.263
  %241 = load i32, i32* %sc, align 4
  %242 = load i32, i32* %k1.addr, align 4
  %idxprom273 = sext i32 %242 to i64
  %243 = load i32, i32* %cur, align 4
  %idxprom274 = sext i32 %243 to i64
  %244 = load i32**, i32*** %mmx, align 8
  %arrayidx275 = getelementptr inbounds i32*, i32** %244, i64 %idxprom274
  %245 = load i32*, i32** %arrayidx275, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %245, i64 %idxprom273
  store i32 %241, i32* %arrayidx276, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.272, %if.end.263
  %246 = load i32, i32* %k1.addr, align 4
  %idxprom278 = sext i32 %246 to i64
  %247 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %247 to i64
  %248 = load i8*, i8** %dsq.addr, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %248, i64 %idxprom279
  %249 = load i8, i8* %arrayidx280, align 1
  %conv281 = sext i8 %249 to i32
  %idxprom282 = sext i32 %conv281 to i64
  %250 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %250, i32 0, i32 31
  %251 = load i32**, i32*** %msc, align 8
  %arrayidx283 = getelementptr inbounds i32*, i32** %251, i64 %idxprom282
  %252 = load i32*, i32** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds i32, i32* %252, i64 %idxprom278
  %253 = load i32, i32* %arrayidx284, align 4
  %cmp285 = icmp ne i32 %253, -987654321
  br i1 %cmp285, label %if.then.287, label %if.else.301

if.then.287:                                      ; preds = %if.end.277
  %254 = load i32, i32* %k1.addr, align 4
  %idxprom288 = sext i32 %254 to i64
  %255 = load i32, i32* %i, align 4
  %idxprom289 = sext i32 %255 to i64
  %256 = load i8*, i8** %dsq.addr, align 8
  %arrayidx290 = getelementptr inbounds i8, i8* %256, i64 %idxprom289
  %257 = load i8, i8* %arrayidx290, align 1
  %conv291 = sext i8 %257 to i32
  %idxprom292 = sext i32 %conv291 to i64
  %258 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc293 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %258, i32 0, i32 31
  %259 = load i32**, i32*** %msc293, align 8
  %arrayidx294 = getelementptr inbounds i32*, i32** %259, i64 %idxprom292
  %260 = load i32*, i32** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %260, i64 %idxprom288
  %261 = load i32, i32* %arrayidx295, align 4
  %262 = load i32, i32* %k1.addr, align 4
  %idxprom296 = sext i32 %262 to i64
  %263 = load i32, i32* %cur, align 4
  %idxprom297 = sext i32 %263 to i64
  %264 = load i32**, i32*** %mmx, align 8
  %arrayidx298 = getelementptr inbounds i32*, i32** %264, i64 %idxprom297
  %265 = load i32*, i32** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i32, i32* %265, i64 %idxprom296
  %266 = load i32, i32* %arrayidx299, align 4
  %add300 = add nsw i32 %266, %261
  store i32 %add300, i32* %arrayidx299, align 4
  br label %if.end.306

if.else.301:                                      ; preds = %if.end.277
  %267 = load i32, i32* %k1.addr, align 4
  %idxprom302 = sext i32 %267 to i64
  %268 = load i32, i32* %cur, align 4
  %idxprom303 = sext i32 %268 to i64
  %269 = load i32**, i32*** %mmx, align 8
  %arrayidx304 = getelementptr inbounds i32*, i32** %269, i64 %idxprom303
  %270 = load i32*, i32** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds i32, i32* %270, i64 %idxprom302
  store i32 -987654321, i32* %arrayidx305, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.else.301, %if.then.287
  %271 = load i32, i32* %k1.addr, align 4
  %add307 = add nsw i32 %271, 1
  store i32 %add307, i32* %k, align 4
  br label %for.cond.308

for.cond.308:                                     ; preds = %for.inc.558, %if.end.306
  %272 = load i32, i32* %k, align 4
  %273 = load i32, i32* %k3.addr, align 4
  %cmp309 = icmp sle i32 %272, %273
  br i1 %cmp309, label %for.body.311, label %for.end.560

for.body.311:                                     ; preds = %for.cond.308
  %274 = load i32, i32* %k, align 4
  %idxprom312 = sext i32 %274 to i64
  %275 = load i32, i32* %cur, align 4
  %idxprom313 = sext i32 %275 to i64
  %276 = load i32**, i32*** %mmx, align 8
  %arrayidx314 = getelementptr inbounds i32*, i32** %276, i64 %idxprom313
  %277 = load i32*, i32** %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds i32, i32* %277, i64 %idxprom312
  store i32 -987654321, i32* %arrayidx315, align 4
  %278 = load i32, i32* %k, align 4
  %sub316 = sub nsw i32 %278, 1
  %idxprom317 = sext i32 %sub316 to i64
  %279 = load i32, i32* %prv, align 4
  %idxprom318 = sext i32 %279 to i64
  %280 = load i32**, i32*** %mmx, align 8
  %arrayidx319 = getelementptr inbounds i32*, i32** %280, i64 %idxprom318
  %281 = load i32*, i32** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds i32, i32* %281, i64 %idxprom317
  %282 = load i32, i32* %arrayidx320, align 4
  %283 = load i32, i32* %k, align 4
  %sub321 = sub nsw i32 %283, 1
  %idxprom322 = sext i32 %sub321 to i64
  %284 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc323 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %284, i32 0, i32 30
  %285 = load i32**, i32*** %tsc323, align 8
  %arrayidx324 = getelementptr inbounds i32*, i32** %285, i64 0
  %286 = load i32*, i32** %arrayidx324, align 8
  %arrayidx325 = getelementptr inbounds i32, i32* %286, i64 %idxprom322
  %287 = load i32, i32* %arrayidx325, align 4
  %add326 = add nsw i32 %282, %287
  store i32 %add326, i32* %sc, align 4
  %cmp327 = icmp sgt i32 %add326, -987654321
  br i1 %cmp327, label %if.then.329, label %if.end.334

if.then.329:                                      ; preds = %for.body.311
  %288 = load i32, i32* %sc, align 4
  %289 = load i32, i32* %k, align 4
  %idxprom330 = sext i32 %289 to i64
  %290 = load i32, i32* %cur, align 4
  %idxprom331 = sext i32 %290 to i64
  %291 = load i32**, i32*** %mmx, align 8
  %arrayidx332 = getelementptr inbounds i32*, i32** %291, i64 %idxprom331
  %292 = load i32*, i32** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds i32, i32* %292, i64 %idxprom330
  store i32 %288, i32* %arrayidx333, align 4
  br label %if.end.334

if.end.334:                                       ; preds = %if.then.329, %for.body.311
  %293 = load i32, i32* %k, align 4
  %sub335 = sub nsw i32 %293, 1
  %idxprom336 = sext i32 %sub335 to i64
  %294 = load i32, i32* %prv, align 4
  %idxprom337 = sext i32 %294 to i64
  %295 = load i32**, i32*** %imx, align 8
  %arrayidx338 = getelementptr inbounds i32*, i32** %295, i64 %idxprom337
  %296 = load i32*, i32** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds i32, i32* %296, i64 %idxprom336
  %297 = load i32, i32* %arrayidx339, align 4
  %298 = load i32, i32* %k, align 4
  %sub340 = sub nsw i32 %298, 1
  %idxprom341 = sext i32 %sub340 to i64
  %299 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc342 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %299, i32 0, i32 30
  %300 = load i32**, i32*** %tsc342, align 8
  %arrayidx343 = getelementptr inbounds i32*, i32** %300, i64 3
  %301 = load i32*, i32** %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds i32, i32* %301, i64 %idxprom341
  %302 = load i32, i32* %arrayidx344, align 4
  %add345 = add nsw i32 %297, %302
  store i32 %add345, i32* %sc, align 4
  %303 = load i32, i32* %k, align 4
  %idxprom346 = sext i32 %303 to i64
  %304 = load i32, i32* %cur, align 4
  %idxprom347 = sext i32 %304 to i64
  %305 = load i32**, i32*** %mmx, align 8
  %arrayidx348 = getelementptr inbounds i32*, i32** %305, i64 %idxprom347
  %306 = load i32*, i32** %arrayidx348, align 8
  %arrayidx349 = getelementptr inbounds i32, i32* %306, i64 %idxprom346
  %307 = load i32, i32* %arrayidx349, align 4
  %cmp350 = icmp sgt i32 %add345, %307
  br i1 %cmp350, label %if.then.352, label %if.end.357

if.then.352:                                      ; preds = %if.end.334
  %308 = load i32, i32* %sc, align 4
  %309 = load i32, i32* %k, align 4
  %idxprom353 = sext i32 %309 to i64
  %310 = load i32, i32* %cur, align 4
  %idxprom354 = sext i32 %310 to i64
  %311 = load i32**, i32*** %mmx, align 8
  %arrayidx355 = getelementptr inbounds i32*, i32** %311, i64 %idxprom354
  %312 = load i32*, i32** %arrayidx355, align 8
  %arrayidx356 = getelementptr inbounds i32, i32* %312, i64 %idxprom353
  store i32 %308, i32* %arrayidx356, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.352, %if.end.334
  %313 = load i32, i32* %prv, align 4
  %idxprom358 = sext i32 %313 to i64
  %314 = load i32**, i32*** %xmx, align 8
  %arrayidx359 = getelementptr inbounds i32*, i32** %314, i64 %idxprom358
  %315 = load i32*, i32** %arrayidx359, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %315, i64 0
  %316 = load i32, i32* %arrayidx360, align 4
  %317 = load i32, i32* %k, align 4
  %idxprom361 = sext i32 %317 to i64
  %318 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc362 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %318, i32 0, i32 34
  %319 = load i32*, i32** %bsc362, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %319, i64 %idxprom361
  %320 = load i32, i32* %arrayidx363, align 4
  %add364 = add nsw i32 %316, %320
  store i32 %add364, i32* %sc, align 4
  %321 = load i32, i32* %k, align 4
  %idxprom365 = sext i32 %321 to i64
  %322 = load i32, i32* %cur, align 4
  %idxprom366 = sext i32 %322 to i64
  %323 = load i32**, i32*** %mmx, align 8
  %arrayidx367 = getelementptr inbounds i32*, i32** %323, i64 %idxprom366
  %324 = load i32*, i32** %arrayidx367, align 8
  %arrayidx368 = getelementptr inbounds i32, i32* %324, i64 %idxprom365
  %325 = load i32, i32* %arrayidx368, align 4
  %cmp369 = icmp sgt i32 %add364, %325
  br i1 %cmp369, label %if.then.371, label %if.end.376

if.then.371:                                      ; preds = %if.end.357
  %326 = load i32, i32* %sc, align 4
  %327 = load i32, i32* %k, align 4
  %idxprom372 = sext i32 %327 to i64
  %328 = load i32, i32* %cur, align 4
  %idxprom373 = sext i32 %328 to i64
  %329 = load i32**, i32*** %mmx, align 8
  %arrayidx374 = getelementptr inbounds i32*, i32** %329, i64 %idxprom373
  %330 = load i32*, i32** %arrayidx374, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %330, i64 %idxprom372
  store i32 %326, i32* %arrayidx375, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.371, %if.end.357
  %331 = load i32, i32* %k, align 4
  %sub377 = sub nsw i32 %331, 1
  %idxprom378 = sext i32 %sub377 to i64
  %332 = load i32, i32* %prv, align 4
  %idxprom379 = sext i32 %332 to i64
  %333 = load i32**, i32*** %dmx, align 8
  %arrayidx380 = getelementptr inbounds i32*, i32** %333, i64 %idxprom379
  %334 = load i32*, i32** %arrayidx380, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %334, i64 %idxprom378
  %335 = load i32, i32* %arrayidx381, align 4
  %336 = load i32, i32* %k, align 4
  %sub382 = sub nsw i32 %336, 1
  %idxprom383 = sext i32 %sub382 to i64
  %337 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc384 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %337, i32 0, i32 30
  %338 = load i32**, i32*** %tsc384, align 8
  %arrayidx385 = getelementptr inbounds i32*, i32** %338, i64 5
  %339 = load i32*, i32** %arrayidx385, align 8
  %arrayidx386 = getelementptr inbounds i32, i32* %339, i64 %idxprom383
  %340 = load i32, i32* %arrayidx386, align 4
  %add387 = add nsw i32 %335, %340
  store i32 %add387, i32* %sc, align 4
  %341 = load i32, i32* %k, align 4
  %idxprom388 = sext i32 %341 to i64
  %342 = load i32, i32* %cur, align 4
  %idxprom389 = sext i32 %342 to i64
  %343 = load i32**, i32*** %mmx, align 8
  %arrayidx390 = getelementptr inbounds i32*, i32** %343, i64 %idxprom389
  %344 = load i32*, i32** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %344, i64 %idxprom388
  %345 = load i32, i32* %arrayidx391, align 4
  %cmp392 = icmp sgt i32 %add387, %345
  br i1 %cmp392, label %if.then.394, label %if.end.399

if.then.394:                                      ; preds = %if.end.376
  %346 = load i32, i32* %sc, align 4
  %347 = load i32, i32* %k, align 4
  %idxprom395 = sext i32 %347 to i64
  %348 = load i32, i32* %cur, align 4
  %idxprom396 = sext i32 %348 to i64
  %349 = load i32**, i32*** %mmx, align 8
  %arrayidx397 = getelementptr inbounds i32*, i32** %349, i64 %idxprom396
  %350 = load i32*, i32** %arrayidx397, align 8
  %arrayidx398 = getelementptr inbounds i32, i32* %350, i64 %idxprom395
  store i32 %346, i32* %arrayidx398, align 4
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.394, %if.end.376
  %351 = load i32, i32* %k, align 4
  %idxprom400 = sext i32 %351 to i64
  %352 = load i32, i32* %i, align 4
  %idxprom401 = sext i32 %352 to i64
  %353 = load i8*, i8** %dsq.addr, align 8
  %arrayidx402 = getelementptr inbounds i8, i8* %353, i64 %idxprom401
  %354 = load i8, i8* %arrayidx402, align 1
  %conv403 = sext i8 %354 to i32
  %idxprom404 = sext i32 %conv403 to i64
  %355 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc405 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %355, i32 0, i32 31
  %356 = load i32**, i32*** %msc405, align 8
  %arrayidx406 = getelementptr inbounds i32*, i32** %356, i64 %idxprom404
  %357 = load i32*, i32** %arrayidx406, align 8
  %arrayidx407 = getelementptr inbounds i32, i32* %357, i64 %idxprom400
  %358 = load i32, i32* %arrayidx407, align 4
  %cmp408 = icmp ne i32 %358, -987654321
  br i1 %cmp408, label %if.then.410, label %if.else.424

if.then.410:                                      ; preds = %if.end.399
  %359 = load i32, i32* %k, align 4
  %idxprom411 = sext i32 %359 to i64
  %360 = load i32, i32* %i, align 4
  %idxprom412 = sext i32 %360 to i64
  %361 = load i8*, i8** %dsq.addr, align 8
  %arrayidx413 = getelementptr inbounds i8, i8* %361, i64 %idxprom412
  %362 = load i8, i8* %arrayidx413, align 1
  %conv414 = sext i8 %362 to i32
  %idxprom415 = sext i32 %conv414 to i64
  %363 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc416 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %363, i32 0, i32 31
  %364 = load i32**, i32*** %msc416, align 8
  %arrayidx417 = getelementptr inbounds i32*, i32** %364, i64 %idxprom415
  %365 = load i32*, i32** %arrayidx417, align 8
  %arrayidx418 = getelementptr inbounds i32, i32* %365, i64 %idxprom411
  %366 = load i32, i32* %arrayidx418, align 4
  %367 = load i32, i32* %k, align 4
  %idxprom419 = sext i32 %367 to i64
  %368 = load i32, i32* %cur, align 4
  %idxprom420 = sext i32 %368 to i64
  %369 = load i32**, i32*** %mmx, align 8
  %arrayidx421 = getelementptr inbounds i32*, i32** %369, i64 %idxprom420
  %370 = load i32*, i32** %arrayidx421, align 8
  %arrayidx422 = getelementptr inbounds i32, i32* %370, i64 %idxprom419
  %371 = load i32, i32* %arrayidx422, align 4
  %add423 = add nsw i32 %371, %366
  store i32 %add423, i32* %arrayidx422, align 4
  br label %if.end.429

if.else.424:                                      ; preds = %if.end.399
  %372 = load i32, i32* %k, align 4
  %idxprom425 = sext i32 %372 to i64
  %373 = load i32, i32* %cur, align 4
  %idxprom426 = sext i32 %373 to i64
  %374 = load i32**, i32*** %mmx, align 8
  %arrayidx427 = getelementptr inbounds i32*, i32** %374, i64 %idxprom426
  %375 = load i32*, i32** %arrayidx427, align 8
  %arrayidx428 = getelementptr inbounds i32, i32* %375, i64 %idxprom425
  store i32 -987654321, i32* %arrayidx428, align 4
  br label %if.end.429

if.end.429:                                       ; preds = %if.else.424, %if.then.410
  %376 = load i32, i32* %k, align 4
  %idxprom430 = sext i32 %376 to i64
  %377 = load i32, i32* %cur, align 4
  %idxprom431 = sext i32 %377 to i64
  %378 = load i32**, i32*** %dmx, align 8
  %arrayidx432 = getelementptr inbounds i32*, i32** %378, i64 %idxprom431
  %379 = load i32*, i32** %arrayidx432, align 8
  %arrayidx433 = getelementptr inbounds i32, i32* %379, i64 %idxprom430
  store i32 -987654321, i32* %arrayidx433, align 4
  %380 = load i32, i32* %k, align 4
  %381 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M434 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %381, i32 0, i32 20
  %382 = load i32, i32* %M434, align 4
  %cmp435 = icmp slt i32 %380, %382
  br i1 %cmp435, label %if.then.437, label %if.end.480

if.then.437:                                      ; preds = %if.end.429
  %383 = load i32, i32* %k, align 4
  %sub438 = sub nsw i32 %383, 1
  %idxprom439 = sext i32 %sub438 to i64
  %384 = load i32, i32* %cur, align 4
  %idxprom440 = sext i32 %384 to i64
  %385 = load i32**, i32*** %mmx, align 8
  %arrayidx441 = getelementptr inbounds i32*, i32** %385, i64 %idxprom440
  %386 = load i32*, i32** %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %386, i64 %idxprom439
  %387 = load i32, i32* %arrayidx442, align 4
  %388 = load i32, i32* %k, align 4
  %sub443 = sub nsw i32 %388, 1
  %idxprom444 = sext i32 %sub443 to i64
  %389 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc445 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %389, i32 0, i32 30
  %390 = load i32**, i32*** %tsc445, align 8
  %arrayidx446 = getelementptr inbounds i32*, i32** %390, i64 2
  %391 = load i32*, i32** %arrayidx446, align 8
  %arrayidx447 = getelementptr inbounds i32, i32* %391, i64 %idxprom444
  %392 = load i32, i32* %arrayidx447, align 4
  %add448 = add nsw i32 %387, %392
  store i32 %add448, i32* %sc, align 4
  %cmp449 = icmp sgt i32 %add448, -987654321
  br i1 %cmp449, label %if.then.451, label %if.end.456

if.then.451:                                      ; preds = %if.then.437
  %393 = load i32, i32* %sc, align 4
  %394 = load i32, i32* %k, align 4
  %idxprom452 = sext i32 %394 to i64
  %395 = load i32, i32* %cur, align 4
  %idxprom453 = sext i32 %395 to i64
  %396 = load i32**, i32*** %dmx, align 8
  %arrayidx454 = getelementptr inbounds i32*, i32** %396, i64 %idxprom453
  %397 = load i32*, i32** %arrayidx454, align 8
  %arrayidx455 = getelementptr inbounds i32, i32* %397, i64 %idxprom452
  store i32 %393, i32* %arrayidx455, align 4
  br label %if.end.456

if.end.456:                                       ; preds = %if.then.451, %if.then.437
  %398 = load i32, i32* %k, align 4
  %sub457 = sub nsw i32 %398, 1
  %idxprom458 = sext i32 %sub457 to i64
  %399 = load i32, i32* %cur, align 4
  %idxprom459 = sext i32 %399 to i64
  %400 = load i32**, i32*** %dmx, align 8
  %arrayidx460 = getelementptr inbounds i32*, i32** %400, i64 %idxprom459
  %401 = load i32*, i32** %arrayidx460, align 8
  %arrayidx461 = getelementptr inbounds i32, i32* %401, i64 %idxprom458
  %402 = load i32, i32* %arrayidx461, align 4
  %403 = load i32, i32* %k, align 4
  %sub462 = sub nsw i32 %403, 1
  %idxprom463 = sext i32 %sub462 to i64
  %404 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc464 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %404, i32 0, i32 30
  %405 = load i32**, i32*** %tsc464, align 8
  %arrayidx465 = getelementptr inbounds i32*, i32** %405, i64 6
  %406 = load i32*, i32** %arrayidx465, align 8
  %arrayidx466 = getelementptr inbounds i32, i32* %406, i64 %idxprom463
  %407 = load i32, i32* %arrayidx466, align 4
  %add467 = add nsw i32 %402, %407
  store i32 %add467, i32* %sc, align 4
  %408 = load i32, i32* %k, align 4
  %idxprom468 = sext i32 %408 to i64
  %409 = load i32, i32* %cur, align 4
  %idxprom469 = sext i32 %409 to i64
  %410 = load i32**, i32*** %dmx, align 8
  %arrayidx470 = getelementptr inbounds i32*, i32** %410, i64 %idxprom469
  %411 = load i32*, i32** %arrayidx470, align 8
  %arrayidx471 = getelementptr inbounds i32, i32* %411, i64 %idxprom468
  %412 = load i32, i32* %arrayidx471, align 4
  %cmp472 = icmp sgt i32 %add467, %412
  br i1 %cmp472, label %if.then.474, label %if.end.479

if.then.474:                                      ; preds = %if.end.456
  %413 = load i32, i32* %sc, align 4
  %414 = load i32, i32* %k, align 4
  %idxprom475 = sext i32 %414 to i64
  %415 = load i32, i32* %cur, align 4
  %idxprom476 = sext i32 %415 to i64
  %416 = load i32**, i32*** %dmx, align 8
  %arrayidx477 = getelementptr inbounds i32*, i32** %416, i64 %idxprom476
  %417 = load i32*, i32** %arrayidx477, align 8
  %arrayidx478 = getelementptr inbounds i32, i32* %417, i64 %idxprom475
  store i32 %413, i32* %arrayidx478, align 4
  br label %if.end.479

if.end.479:                                       ; preds = %if.then.474, %if.end.456
  br label %if.end.480

if.end.480:                                       ; preds = %if.end.479, %if.end.429
  %418 = load i32, i32* %k, align 4
  %idxprom481 = sext i32 %418 to i64
  %419 = load i32, i32* %cur, align 4
  %idxprom482 = sext i32 %419 to i64
  %420 = load i32**, i32*** %imx, align 8
  %arrayidx483 = getelementptr inbounds i32*, i32** %420, i64 %idxprom482
  %421 = load i32*, i32** %arrayidx483, align 8
  %arrayidx484 = getelementptr inbounds i32, i32* %421, i64 %idxprom481
  store i32 -987654321, i32* %arrayidx484, align 4
  %422 = load i32, i32* %k, align 4
  %423 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M485 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %423, i32 0, i32 20
  %424 = load i32, i32* %M485, align 4
  %cmp486 = icmp slt i32 %422, %424
  br i1 %cmp486, label %if.then.488, label %if.end.557

if.then.488:                                      ; preds = %if.end.480
  %425 = load i32, i32* %k, align 4
  %idxprom489 = sext i32 %425 to i64
  %426 = load i32, i32* %prv, align 4
  %idxprom490 = sext i32 %426 to i64
  %427 = load i32**, i32*** %mmx, align 8
  %arrayidx491 = getelementptr inbounds i32*, i32** %427, i64 %idxprom490
  %428 = load i32*, i32** %arrayidx491, align 8
  %arrayidx492 = getelementptr inbounds i32, i32* %428, i64 %idxprom489
  %429 = load i32, i32* %arrayidx492, align 4
  %430 = load i32, i32* %k, align 4
  %idxprom493 = sext i32 %430 to i64
  %431 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc494 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %431, i32 0, i32 30
  %432 = load i32**, i32*** %tsc494, align 8
  %arrayidx495 = getelementptr inbounds i32*, i32** %432, i64 1
  %433 = load i32*, i32** %arrayidx495, align 8
  %arrayidx496 = getelementptr inbounds i32, i32* %433, i64 %idxprom493
  %434 = load i32, i32* %arrayidx496, align 4
  %add497 = add nsw i32 %429, %434
  store i32 %add497, i32* %sc, align 4
  %cmp498 = icmp sgt i32 %add497, -987654321
  br i1 %cmp498, label %if.then.500, label %if.end.505

if.then.500:                                      ; preds = %if.then.488
  %435 = load i32, i32* %sc, align 4
  %436 = load i32, i32* %k, align 4
  %idxprom501 = sext i32 %436 to i64
  %437 = load i32, i32* %cur, align 4
  %idxprom502 = sext i32 %437 to i64
  %438 = load i32**, i32*** %imx, align 8
  %arrayidx503 = getelementptr inbounds i32*, i32** %438, i64 %idxprom502
  %439 = load i32*, i32** %arrayidx503, align 8
  %arrayidx504 = getelementptr inbounds i32, i32* %439, i64 %idxprom501
  store i32 %435, i32* %arrayidx504, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.then.500, %if.then.488
  %440 = load i32, i32* %k, align 4
  %idxprom506 = sext i32 %440 to i64
  %441 = load i32, i32* %prv, align 4
  %idxprom507 = sext i32 %441 to i64
  %442 = load i32**, i32*** %imx, align 8
  %arrayidx508 = getelementptr inbounds i32*, i32** %442, i64 %idxprom507
  %443 = load i32*, i32** %arrayidx508, align 8
  %arrayidx509 = getelementptr inbounds i32, i32* %443, i64 %idxprom506
  %444 = load i32, i32* %arrayidx509, align 4
  %445 = load i32, i32* %k, align 4
  %idxprom510 = sext i32 %445 to i64
  %446 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc511 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %446, i32 0, i32 30
  %447 = load i32**, i32*** %tsc511, align 8
  %arrayidx512 = getelementptr inbounds i32*, i32** %447, i64 4
  %448 = load i32*, i32** %arrayidx512, align 8
  %arrayidx513 = getelementptr inbounds i32, i32* %448, i64 %idxprom510
  %449 = load i32, i32* %arrayidx513, align 4
  %add514 = add nsw i32 %444, %449
  store i32 %add514, i32* %sc, align 4
  %450 = load i32, i32* %k, align 4
  %idxprom515 = sext i32 %450 to i64
  %451 = load i32, i32* %cur, align 4
  %idxprom516 = sext i32 %451 to i64
  %452 = load i32**, i32*** %imx, align 8
  %arrayidx517 = getelementptr inbounds i32*, i32** %452, i64 %idxprom516
  %453 = load i32*, i32** %arrayidx517, align 8
  %arrayidx518 = getelementptr inbounds i32, i32* %453, i64 %idxprom515
  %454 = load i32, i32* %arrayidx518, align 4
  %cmp519 = icmp sgt i32 %add514, %454
  br i1 %cmp519, label %if.then.521, label %if.end.526

if.then.521:                                      ; preds = %if.end.505
  %455 = load i32, i32* %sc, align 4
  %456 = load i32, i32* %k, align 4
  %idxprom522 = sext i32 %456 to i64
  %457 = load i32, i32* %cur, align 4
  %idxprom523 = sext i32 %457 to i64
  %458 = load i32**, i32*** %imx, align 8
  %arrayidx524 = getelementptr inbounds i32*, i32** %458, i64 %idxprom523
  %459 = load i32*, i32** %arrayidx524, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %459, i64 %idxprom522
  store i32 %455, i32* %arrayidx525, align 4
  br label %if.end.526

if.end.526:                                       ; preds = %if.then.521, %if.end.505
  %460 = load i32, i32* %k, align 4
  %idxprom527 = sext i32 %460 to i64
  %461 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %461 to i64
  %462 = load i8*, i8** %dsq.addr, align 8
  %arrayidx529 = getelementptr inbounds i8, i8* %462, i64 %idxprom528
  %463 = load i8, i8* %arrayidx529, align 1
  %conv530 = sext i8 %463 to i32
  %idxprom531 = sext i32 %conv530 to i64
  %464 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc532 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %464, i32 0, i32 32
  %465 = load i32**, i32*** %isc532, align 8
  %arrayidx533 = getelementptr inbounds i32*, i32** %465, i64 %idxprom531
  %466 = load i32*, i32** %arrayidx533, align 8
  %arrayidx534 = getelementptr inbounds i32, i32* %466, i64 %idxprom527
  %467 = load i32, i32* %arrayidx534, align 4
  %cmp535 = icmp ne i32 %467, -987654321
  br i1 %cmp535, label %if.then.537, label %if.else.551

if.then.537:                                      ; preds = %if.end.526
  %468 = load i32, i32* %k, align 4
  %idxprom538 = sext i32 %468 to i64
  %469 = load i32, i32* %i, align 4
  %idxprom539 = sext i32 %469 to i64
  %470 = load i8*, i8** %dsq.addr, align 8
  %arrayidx540 = getelementptr inbounds i8, i8* %470, i64 %idxprom539
  %471 = load i8, i8* %arrayidx540, align 1
  %conv541 = sext i8 %471 to i32
  %idxprom542 = sext i32 %conv541 to i64
  %472 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc543 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %472, i32 0, i32 32
  %473 = load i32**, i32*** %isc543, align 8
  %arrayidx544 = getelementptr inbounds i32*, i32** %473, i64 %idxprom542
  %474 = load i32*, i32** %arrayidx544, align 8
  %arrayidx545 = getelementptr inbounds i32, i32* %474, i64 %idxprom538
  %475 = load i32, i32* %arrayidx545, align 4
  %476 = load i32, i32* %k, align 4
  %idxprom546 = sext i32 %476 to i64
  %477 = load i32, i32* %cur, align 4
  %idxprom547 = sext i32 %477 to i64
  %478 = load i32**, i32*** %imx, align 8
  %arrayidx548 = getelementptr inbounds i32*, i32** %478, i64 %idxprom547
  %479 = load i32*, i32** %arrayidx548, align 8
  %arrayidx549 = getelementptr inbounds i32, i32* %479, i64 %idxprom546
  %480 = load i32, i32* %arrayidx549, align 4
  %add550 = add nsw i32 %480, %475
  store i32 %add550, i32* %arrayidx549, align 4
  br label %if.end.556

if.else.551:                                      ; preds = %if.end.526
  %481 = load i32, i32* %k, align 4
  %idxprom552 = sext i32 %481 to i64
  %482 = load i32, i32* %cur, align 4
  %idxprom553 = sext i32 %482 to i64
  %483 = load i32**, i32*** %imx, align 8
  %arrayidx554 = getelementptr inbounds i32*, i32** %483, i64 %idxprom553
  %484 = load i32*, i32** %arrayidx554, align 8
  %arrayidx555 = getelementptr inbounds i32, i32* %484, i64 %idxprom552
  store i32 -987654321, i32* %arrayidx555, align 4
  br label %if.end.556

if.end.556:                                       ; preds = %if.else.551, %if.then.537
  br label %if.end.557

if.end.557:                                       ; preds = %if.end.556, %if.end.480
  br label %for.inc.558

for.inc.558:                                      ; preds = %if.end.557
  %485 = load i32, i32* %k, align 4
  %inc559 = add nsw i32 %485, 1
  store i32 %inc559, i32* %k, align 4
  br label %for.cond.308

for.end.560:                                      ; preds = %for.cond.308
  %486 = load i32, i32* %cur, align 4
  %idxprom561 = sext i32 %486 to i64
  %487 = load i32**, i32*** %xmx, align 8
  %arrayidx562 = getelementptr inbounds i32*, i32** %487, i64 %idxprom561
  %488 = load i32*, i32** %arrayidx562, align 8
  %arrayidx563 = getelementptr inbounds i32, i32* %488, i64 4
  store i32 -987654321, i32* %arrayidx563, align 4
  %489 = load i32, i32* %prv, align 4
  %idxprom564 = sext i32 %489 to i64
  %490 = load i32**, i32*** %xmx, align 8
  %arrayidx565 = getelementptr inbounds i32*, i32** %490, i64 %idxprom564
  %491 = load i32*, i32** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i32, i32* %491, i64 4
  %492 = load i32, i32* %arrayidx566, align 4
  %493 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc567 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %493, i32 0, i32 33
  %arrayidx568 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc567, i32 0, i64 0
  %arrayidx569 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx568, i32 0, i64 1
  %494 = load i32, i32* %arrayidx569, align 4
  %add570 = add nsw i32 %492, %494
  store i32 %add570, i32* %sc, align 4
  %cmp571 = icmp sgt i32 %add570, -987654321
  br i1 %cmp571, label %if.then.573, label %if.end.577

if.then.573:                                      ; preds = %for.end.560
  %495 = load i32, i32* %sc, align 4
  %496 = load i32, i32* %cur, align 4
  %idxprom574 = sext i32 %496 to i64
  %497 = load i32**, i32*** %xmx, align 8
  %arrayidx575 = getelementptr inbounds i32*, i32** %497, i64 %idxprom574
  %498 = load i32*, i32** %arrayidx575, align 8
  %arrayidx576 = getelementptr inbounds i32, i32* %498, i64 4
  store i32 %495, i32* %arrayidx576, align 4
  br label %if.end.577

if.end.577:                                       ; preds = %if.then.573, %for.end.560
  %499 = load i32, i32* %cur, align 4
  %idxprom578 = sext i32 %499 to i64
  %500 = load i32**, i32*** %xmx, align 8
  %arrayidx579 = getelementptr inbounds i32*, i32** %500, i64 %idxprom578
  %501 = load i32*, i32** %arrayidx579, align 8
  %arrayidx580 = getelementptr inbounds i32, i32* %501, i64 1
  store i32 -987654321, i32* %arrayidx580, align 4
  %502 = load i32, i32* %k1.addr, align 4
  store i32 %502, i32* %k, align 4
  br label %for.cond.581

for.cond.581:                                     ; preds = %for.inc.606, %if.end.577
  %503 = load i32, i32* %k, align 4
  %504 = load i32, i32* %k3.addr, align 4
  %cmp582 = icmp sle i32 %503, %504
  br i1 %cmp582, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.581
  %505 = load i32, i32* %k, align 4
  %506 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M584 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %506, i32 0, i32 20
  %507 = load i32, i32* %M584, align 4
  %cmp585 = icmp sle i32 %505, %507
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.581
  %508 = phi i1 [ false, %for.cond.581 ], [ %cmp585, %land.rhs ]
  br i1 %508, label %for.body.587, label %for.end.608

for.body.587:                                     ; preds = %land.end
  %509 = load i32, i32* %k, align 4
  %idxprom588 = sext i32 %509 to i64
  %510 = load i32, i32* %cur, align 4
  %idxprom589 = sext i32 %510 to i64
  %511 = load i32**, i32*** %mmx, align 8
  %arrayidx590 = getelementptr inbounds i32*, i32** %511, i64 %idxprom589
  %512 = load i32*, i32** %arrayidx590, align 8
  %arrayidx591 = getelementptr inbounds i32, i32* %512, i64 %idxprom588
  %513 = load i32, i32* %arrayidx591, align 4
  %514 = load i32, i32* %k, align 4
  %idxprom592 = sext i32 %514 to i64
  %515 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc593 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %515, i32 0, i32 35
  %516 = load i32*, i32** %esc593, align 8
  %arrayidx594 = getelementptr inbounds i32, i32* %516, i64 %idxprom592
  %517 = load i32, i32* %arrayidx594, align 4
  %add595 = add nsw i32 %513, %517
  store i32 %add595, i32* %sc, align 4
  %518 = load i32, i32* %cur, align 4
  %idxprom596 = sext i32 %518 to i64
  %519 = load i32**, i32*** %xmx, align 8
  %arrayidx597 = getelementptr inbounds i32*, i32** %519, i64 %idxprom596
  %520 = load i32*, i32** %arrayidx597, align 8
  %arrayidx598 = getelementptr inbounds i32, i32* %520, i64 1
  %521 = load i32, i32* %arrayidx598, align 4
  %cmp599 = icmp sgt i32 %add595, %521
  br i1 %cmp599, label %if.then.601, label %if.end.605

if.then.601:                                      ; preds = %for.body.587
  %522 = load i32, i32* %sc, align 4
  %523 = load i32, i32* %cur, align 4
  %idxprom602 = sext i32 %523 to i64
  %524 = load i32**, i32*** %xmx, align 8
  %arrayidx603 = getelementptr inbounds i32*, i32** %524, i64 %idxprom602
  %525 = load i32*, i32** %arrayidx603, align 8
  %arrayidx604 = getelementptr inbounds i32, i32* %525, i64 1
  store i32 %522, i32* %arrayidx604, align 4
  br label %if.end.605

if.end.605:                                       ; preds = %if.then.601, %for.body.587
  br label %for.inc.606

for.inc.606:                                      ; preds = %if.end.605
  %526 = load i32, i32* %k, align 4
  %inc607 = add nsw i32 %526, 1
  store i32 %inc607, i32* %k, align 4
  br label %for.cond.581

for.end.608:                                      ; preds = %land.end
  %527 = load i32, i32* %cur, align 4
  %idxprom609 = sext i32 %527 to i64
  %528 = load i32**, i32*** %xmx, align 8
  %arrayidx610 = getelementptr inbounds i32*, i32** %528, i64 %idxprom609
  %529 = load i32*, i32** %arrayidx610, align 8
  %arrayidx611 = getelementptr inbounds i32, i32* %529, i64 0
  store i32 -987654321, i32* %arrayidx611, align 4
  %530 = load i32, i32* %cur, align 4
  %idxprom612 = sext i32 %530 to i64
  %531 = load i32**, i32*** %xmx, align 8
  %arrayidx613 = getelementptr inbounds i32*, i32** %531, i64 %idxprom612
  %532 = load i32*, i32** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i32, i32* %532, i64 4
  %533 = load i32, i32* %arrayidx614, align 4
  %534 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc615 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %534, i32 0, i32 33
  %arrayidx616 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc615, i32 0, i64 0
  %arrayidx617 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx616, i32 0, i64 0
  %535 = load i32, i32* %arrayidx617, align 4
  %add618 = add nsw i32 %533, %535
  store i32 %add618, i32* %sc, align 4
  %cmp619 = icmp sgt i32 %add618, -987654321
  br i1 %cmp619, label %if.then.621, label %if.end.625

if.then.621:                                      ; preds = %for.end.608
  %536 = load i32, i32* %sc, align 4
  %537 = load i32, i32* %cur, align 4
  %idxprom622 = sext i32 %537 to i64
  %538 = load i32**, i32*** %xmx, align 8
  %arrayidx623 = getelementptr inbounds i32*, i32** %538, i64 %idxprom622
  %539 = load i32*, i32** %arrayidx623, align 8
  %arrayidx624 = getelementptr inbounds i32, i32* %539, i64 0
  store i32 %536, i32* %arrayidx624, align 4
  br label %if.end.625

if.end.625:                                       ; preds = %if.then.621, %for.end.608
  %540 = load i32, i32* %cur, align 4
  %idxprom626 = sext i32 %540 to i64
  %541 = load i32**, i32*** %xmx, align 8
  %arrayidx627 = getelementptr inbounds i32*, i32** %541, i64 %idxprom626
  %542 = load i32*, i32** %arrayidx627, align 8
  %arrayidx628 = getelementptr inbounds i32, i32* %542, i64 2
  store i32 -987654321, i32* %arrayidx628, align 4
  %543 = load i32, i32* %prv, align 4
  %idxprom629 = sext i32 %543 to i64
  %544 = load i32**, i32*** %xmx, align 8
  %arrayidx630 = getelementptr inbounds i32*, i32** %544, i64 %idxprom629
  %545 = load i32*, i32** %arrayidx630, align 8
  %arrayidx631 = getelementptr inbounds i32, i32* %545, i64 2
  %546 = load i32, i32* %arrayidx631, align 4
  %547 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc632 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %547, i32 0, i32 33
  %arrayidx633 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc632, i32 0, i64 2
  %arrayidx634 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx633, i32 0, i64 1
  %548 = load i32, i32* %arrayidx634, align 4
  %add635 = add nsw i32 %546, %548
  store i32 %add635, i32* %sc, align 4
  %cmp636 = icmp sgt i32 %add635, -987654321
  br i1 %cmp636, label %if.then.638, label %if.end.642

if.then.638:                                      ; preds = %if.end.625
  %549 = load i32, i32* %sc, align 4
  %550 = load i32, i32* %cur, align 4
  %idxprom639 = sext i32 %550 to i64
  %551 = load i32**, i32*** %xmx, align 8
  %arrayidx640 = getelementptr inbounds i32*, i32** %551, i64 %idxprom639
  %552 = load i32*, i32** %arrayidx640, align 8
  %arrayidx641 = getelementptr inbounds i32, i32* %552, i64 2
  store i32 %549, i32* %arrayidx641, align 4
  br label %if.end.642

if.end.642:                                       ; preds = %if.then.638, %if.end.625
  %553 = load i32, i32* %cur, align 4
  %idxprom643 = sext i32 %553 to i64
  %554 = load i32**, i32*** %xmx, align 8
  %arrayidx644 = getelementptr inbounds i32*, i32** %554, i64 %idxprom643
  %555 = load i32*, i32** %arrayidx644, align 8
  %arrayidx645 = getelementptr inbounds i32, i32* %555, i64 1
  %556 = load i32, i32* %arrayidx645, align 4
  %557 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc646 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %557, i32 0, i32 33
  %arrayidx647 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc646, i32 0, i64 1
  %arrayidx648 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx647, i32 0, i64 0
  %558 = load i32, i32* %arrayidx648, align 4
  %add649 = add nsw i32 %556, %558
  store i32 %add649, i32* %sc, align 4
  %559 = load i32, i32* %cur, align 4
  %idxprom650 = sext i32 %559 to i64
  %560 = load i32**, i32*** %xmx, align 8
  %arrayidx651 = getelementptr inbounds i32*, i32** %560, i64 %idxprom650
  %561 = load i32*, i32** %arrayidx651, align 8
  %arrayidx652 = getelementptr inbounds i32, i32* %561, i64 2
  %562 = load i32, i32* %arrayidx652, align 4
  %cmp653 = icmp sgt i32 %add649, %562
  br i1 %cmp653, label %if.then.655, label %if.end.659

if.then.655:                                      ; preds = %if.end.642
  %563 = load i32, i32* %sc, align 4
  %564 = load i32, i32* %cur, align 4
  %idxprom656 = sext i32 %564 to i64
  %565 = load i32**, i32*** %xmx, align 8
  %arrayidx657 = getelementptr inbounds i32*, i32** %565, i64 %idxprom656
  %566 = load i32*, i32** %arrayidx657, align 8
  %arrayidx658 = getelementptr inbounds i32, i32* %566, i64 2
  store i32 %563, i32* %arrayidx658, align 4
  br label %if.end.659

if.end.659:                                       ; preds = %if.then.655, %if.end.642
  br label %for.inc.660

for.inc.660:                                      ; preds = %if.end.659
  %567 = load i32, i32* %i, align 4
  %inc661 = add nsw i32 %567, 1
  store i32 %inc661, i32* %i, align 4
  br label %for.cond.172

for.end.662:                                      ; preds = %for.cond.172
  %568 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M663 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %568, i32 0, i32 20
  %569 = load i32, i32* %M663, align 4
  %call664 = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 2, i32 %569, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  store %struct.dpmatrix_s* %call664, %struct.dpmatrix_s** %bck, align 8
  %570 = load i32, i32* %s3.addr, align 4
  %rem665 = srem i32 %570, 2
  store i32 %rem665, i32* %nxt, align 4
  %571 = load i32, i32* %nxt, align 4
  %idxprom666 = sext i32 %571 to i64
  %572 = load i32**, i32*** %xmx, align 8
  %arrayidx667 = getelementptr inbounds i32*, i32** %572, i64 %idxprom666
  %573 = load i32*, i32** %arrayidx667, align 8
  %arrayidx668 = getelementptr inbounds i32, i32* %573, i64 0
  store i32 -987654321, i32* %arrayidx668, align 4
  %574 = load i32, i32* %nxt, align 4
  %idxprom669 = sext i32 %574 to i64
  %575 = load i32**, i32*** %xmx, align 8
  %arrayidx670 = getelementptr inbounds i32*, i32** %575, i64 %idxprom669
  %576 = load i32*, i32** %arrayidx670, align 8
  %arrayidx671 = getelementptr inbounds i32, i32* %576, i64 4
  store i32 -987654321, i32* %arrayidx671, align 4
  %577 = load i32, i32* %nxt, align 4
  %idxprom672 = sext i32 %577 to i64
  %578 = load i32**, i32*** %xmx, align 8
  %arrayidx673 = getelementptr inbounds i32*, i32** %578, i64 %idxprom672
  %579 = load i32*, i32** %arrayidx673, align 8
  %arrayidx674 = getelementptr inbounds i32, i32* %579, i64 2
  store i32 -987654321, i32* %arrayidx674, align 4
  %580 = load i32, i32* %nxt, align 4
  %idxprom675 = sext i32 %580 to i64
  %581 = load i32**, i32*** %xmx, align 8
  %arrayidx676 = getelementptr inbounds i32*, i32** %581, i64 %idxprom675
  %582 = load i32*, i32** %arrayidx676, align 8
  %arrayidx677 = getelementptr inbounds i32, i32* %582, i64 1
  store i32 -987654321, i32* %arrayidx677, align 4
  %583 = load i32, i32* %k1.addr, align 4
  store i32 %583, i32* %k, align 4
  br label %for.cond.678

for.cond.678:                                     ; preds = %for.inc.695, %for.end.662
  %584 = load i32, i32* %k, align 4
  %585 = load i32, i32* %k3.addr, align 4
  %add679 = add nsw i32 %585, 1
  %cmp680 = icmp sle i32 %584, %add679
  br i1 %cmp680, label %for.body.682, label %for.end.697

for.body.682:                                     ; preds = %for.cond.678
  %586 = load i32, i32* %k, align 4
  %idxprom683 = sext i32 %586 to i64
  %587 = load i32, i32* %nxt, align 4
  %idxprom684 = sext i32 %587 to i64
  %588 = load i32**, i32*** %dmx, align 8
  %arrayidx685 = getelementptr inbounds i32*, i32** %588, i64 %idxprom684
  %589 = load i32*, i32** %arrayidx685, align 8
  %arrayidx686 = getelementptr inbounds i32, i32* %589, i64 %idxprom683
  store i32 -987654321, i32* %arrayidx686, align 4
  %590 = load i32, i32* %k, align 4
  %idxprom687 = sext i32 %590 to i64
  %591 = load i32, i32* %nxt, align 4
  %idxprom688 = sext i32 %591 to i64
  %592 = load i32**, i32*** %imx, align 8
  %arrayidx689 = getelementptr inbounds i32*, i32** %592, i64 %idxprom688
  %593 = load i32*, i32** %arrayidx689, align 8
  %arrayidx690 = getelementptr inbounds i32, i32* %593, i64 %idxprom687
  store i32 -987654321, i32* %arrayidx690, align 4
  %594 = load i32, i32* %k, align 4
  %idxprom691 = sext i32 %594 to i64
  %595 = load i32, i32* %nxt, align 4
  %idxprom692 = sext i32 %595 to i64
  %596 = load i32**, i32*** %mmx, align 8
  %arrayidx693 = getelementptr inbounds i32*, i32** %596, i64 %idxprom692
  %597 = load i32*, i32** %arrayidx693, align 8
  %arrayidx694 = getelementptr inbounds i32, i32* %597, i64 %idxprom691
  store i32 -987654321, i32* %arrayidx694, align 4
  br label %for.inc.695

for.inc.695:                                      ; preds = %for.body.682
  %598 = load i32, i32* %k, align 4
  %inc696 = add nsw i32 %598, 1
  store i32 %inc696, i32* %k, align 4
  br label %for.cond.678

for.end.697:                                      ; preds = %for.cond.678
  %599 = load i32, i32* %nxt, align 4
  %tobool698 = icmp ne i32 %599, 0
  %lnot699 = xor i1 %tobool698, true
  %lnot.ext700 = zext i1 %lnot699 to i32
  store i32 %lnot.ext700, i32* %cur, align 4
  %600 = load i32, i32* %k3.addr, align 4
  %add701 = add nsw i32 %600, 1
  %idxprom702 = sext i32 %add701 to i64
  %601 = load i32, i32* %cur, align 4
  %idxprom703 = sext i32 %601 to i64
  %602 = load i32**, i32*** %dmx, align 8
  %arrayidx704 = getelementptr inbounds i32*, i32** %602, i64 %idxprom703
  %603 = load i32*, i32** %arrayidx704, align 8
  %arrayidx705 = getelementptr inbounds i32, i32* %603, i64 %idxprom702
  store i32 -987654321, i32* %arrayidx705, align 4
  %604 = load i32, i32* %k3.addr, align 4
  %add706 = add nsw i32 %604, 1
  %idxprom707 = sext i32 %add706 to i64
  %605 = load i32, i32* %cur, align 4
  %idxprom708 = sext i32 %605 to i64
  %606 = load i32**, i32*** %imx, align 8
  %arrayidx709 = getelementptr inbounds i32*, i32** %606, i64 %idxprom708
  %607 = load i32*, i32** %arrayidx709, align 8
  %arrayidx710 = getelementptr inbounds i32, i32* %607, i64 %idxprom707
  store i32 -987654321, i32* %arrayidx710, align 4
  %608 = load i32, i32* %k3.addr, align 4
  %add711 = add nsw i32 %608, 1
  %idxprom712 = sext i32 %add711 to i64
  %609 = load i32, i32* %cur, align 4
  %idxprom713 = sext i32 %609 to i64
  %610 = load i32**, i32*** %mmx, align 8
  %arrayidx714 = getelementptr inbounds i32*, i32** %610, i64 %idxprom713
  %611 = load i32*, i32** %arrayidx714, align 8
  %arrayidx715 = getelementptr inbounds i32, i32* %611, i64 %idxprom712
  store i32 -987654321, i32* %arrayidx715, align 4
  %612 = load i8, i8* %t3.addr, align 1
  %conv716 = sext i8 %612 to i32
  switch i32 %conv716, label %sw.default.742 [
    i32 1, label %sw.bb.717
    i32 3, label %sw.bb.722
    i32 5, label %sw.bb.727
    i32 8, label %sw.bb.731
    i32 9, label %sw.bb.735
  ]

sw.bb.717:                                        ; preds = %for.end.697
  %613 = load i32, i32* %k3.addr, align 4
  %idxprom718 = sext i32 %613 to i64
  %614 = load i32, i32* %nxt, align 4
  %idxprom719 = sext i32 %614 to i64
  %615 = load i32**, i32*** %mmx, align 8
  %arrayidx720 = getelementptr inbounds i32*, i32** %615, i64 %idxprom719
  %616 = load i32*, i32** %arrayidx720, align 8
  %arrayidx721 = getelementptr inbounds i32, i32* %616, i64 %idxprom718
  store i32 0, i32* %arrayidx721, align 4
  br label %sw.epilog.744

sw.bb.722:                                        ; preds = %for.end.697
  %617 = load i32, i32* %k3.addr, align 4
  %idxprom723 = sext i32 %617 to i64
  %618 = load i32, i32* %nxt, align 4
  %idxprom724 = sext i32 %618 to i64
  %619 = load i32**, i32*** %imx, align 8
  %arrayidx725 = getelementptr inbounds i32*, i32** %619, i64 %idxprom724
  %620 = load i32*, i32** %arrayidx725, align 8
  %arrayidx726 = getelementptr inbounds i32, i32* %620, i64 %idxprom723
  store i32 0, i32* %arrayidx726, align 4
  br label %sw.epilog.744

sw.bb.727:                                        ; preds = %for.end.697
  %621 = load i32, i32* %nxt, align 4
  %idxprom728 = sext i32 %621 to i64
  %622 = load i32**, i32*** %xmx, align 8
  %arrayidx729 = getelementptr inbounds i32*, i32** %622, i64 %idxprom728
  %623 = load i32*, i32** %arrayidx729, align 8
  %arrayidx730 = getelementptr inbounds i32, i32* %623, i64 4
  store i32 0, i32* %arrayidx730, align 4
  br label %sw.epilog.744

sw.bb.731:                                        ; preds = %for.end.697
  %624 = load i32, i32* %nxt, align 4
  %idxprom732 = sext i32 %624 to i64
  %625 = load i32**, i32*** %xmx, align 8
  %arrayidx733 = getelementptr inbounds i32*, i32** %625, i64 %idxprom732
  %626 = load i32*, i32** %arrayidx733, align 8
  %arrayidx734 = getelementptr inbounds i32, i32* %626, i64 2
  store i32 0, i32* %arrayidx734, align 4
  br label %sw.epilog.744

sw.bb.735:                                        ; preds = %for.end.697
  %627 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc736 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %627, i32 0, i32 33
  %arrayidx737 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc736, i32 0, i64 2
  %arrayidx738 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx737, i32 0, i64 0
  %628 = load i32, i32* %arrayidx738, align 4
  %629 = load i32, i32* %nxt, align 4
  %idxprom739 = sext i32 %629 to i64
  %630 = load i32**, i32*** %xmx, align 8
  %arrayidx740 = getelementptr inbounds i32*, i32** %630, i64 %idxprom739
  %631 = load i32*, i32** %arrayidx740, align 8
  %arrayidx741 = getelementptr inbounds i32, i32* %631, i64 2
  store i32 %628, i32* %arrayidx741, align 4
  br label %sw.epilog.744

sw.default.742:                                   ; preds = %for.end.697
  %632 = load i8, i8* %t3.addr, align 1
  %call743 = call i8* @Statetype(i8 signext %632)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i32 0, i32 0), i8* %call743)
  br label %sw.epilog.744

sw.epilog.744:                                    ; preds = %sw.default.742, %sw.bb.735, %sw.bb.731, %sw.bb.727, %sw.bb.722, %sw.bb.717
  %633 = load i8, i8* %t3.addr, align 1
  %conv745 = sext i8 %633 to i32
  %cmp746 = icmp eq i32 %conv745, 9
  br i1 %cmp746, label %if.then.748, label %if.end.793

if.then.748:                                      ; preds = %sw.epilog.744
  %634 = load i32, i32* %nxt, align 4
  %idxprom749 = sext i32 %634 to i64
  %635 = load i32**, i32*** %xmx, align 8
  %arrayidx750 = getelementptr inbounds i32*, i32** %635, i64 %idxprom749
  %636 = load i32*, i32** %arrayidx750, align 8
  %arrayidx751 = getelementptr inbounds i32, i32* %636, i64 2
  %637 = load i32, i32* %arrayidx751, align 4
  %638 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc752 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %638, i32 0, i32 33
  %arrayidx753 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc752, i32 0, i64 1
  %arrayidx754 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx753, i32 0, i64 0
  %639 = load i32, i32* %arrayidx754, align 4
  %add755 = add nsw i32 %637, %639
  %640 = load i32, i32* %nxt, align 4
  %idxprom756 = sext i32 %640 to i64
  %641 = load i32**, i32*** %xmx, align 8
  %arrayidx757 = getelementptr inbounds i32*, i32** %641, i64 %idxprom756
  %642 = load i32*, i32** %arrayidx757, align 8
  %arrayidx758 = getelementptr inbounds i32, i32* %642, i64 1
  store i32 %add755, i32* %arrayidx758, align 4
  %643 = load i32, i32* %k3.addr, align 4
  store i32 %643, i32* %k, align 4
  br label %for.cond.759

for.cond.759:                                     ; preds = %for.inc.791, %if.then.748
  %644 = load i32, i32* %k, align 4
  %645 = load i32, i32* %k1.addr, align 4
  %cmp760 = icmp sge i32 %644, %645
  br i1 %cmp760, label %for.body.762, label %for.end.792

for.body.762:                                     ; preds = %for.cond.759
  %646 = load i32, i32* %nxt, align 4
  %idxprom763 = sext i32 %646 to i64
  %647 = load i32**, i32*** %xmx, align 8
  %arrayidx764 = getelementptr inbounds i32*, i32** %647, i64 %idxprom763
  %648 = load i32*, i32** %arrayidx764, align 8
  %arrayidx765 = getelementptr inbounds i32, i32* %648, i64 1
  %649 = load i32, i32* %arrayidx765, align 4
  %650 = load i32, i32* %k, align 4
  %idxprom766 = sext i32 %650 to i64
  %651 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc767 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %651, i32 0, i32 35
  %652 = load i32*, i32** %esc767, align 8
  %arrayidx768 = getelementptr inbounds i32, i32* %652, i64 %idxprom766
  %653 = load i32, i32* %arrayidx768, align 4
  %add769 = add nsw i32 %649, %653
  %654 = load i32, i32* %k, align 4
  %idxprom770 = sext i32 %654 to i64
  %655 = load i32, i32* %nxt, align 4
  %idxprom771 = sext i32 %655 to i64
  %656 = load i32**, i32*** %mmx, align 8
  %arrayidx772 = getelementptr inbounds i32*, i32** %656, i64 %idxprom771
  %657 = load i32*, i32** %arrayidx772, align 8
  %arrayidx773 = getelementptr inbounds i32, i32* %657, i64 %idxprom770
  store i32 %add769, i32* %arrayidx773, align 4
  %658 = load i32, i32* %s3.addr, align 4
  %659 = load i32, i32* %s2, align 4
  %cmp774 = icmp ne i32 %658, %659
  br i1 %cmp774, label %if.then.776, label %if.end.790

if.then.776:                                      ; preds = %for.body.762
  %660 = load i32, i32* %k, align 4
  %idxprom777 = sext i32 %660 to i64
  %661 = load i32, i32* %s3.addr, align 4
  %idxprom778 = sext i32 %661 to i64
  %662 = load i8*, i8** %dsq.addr, align 8
  %arrayidx779 = getelementptr inbounds i8, i8* %662, i64 %idxprom778
  %663 = load i8, i8* %arrayidx779, align 1
  %conv780 = sext i8 %663 to i32
  %idxprom781 = sext i32 %conv780 to i64
  %664 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc782 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %664, i32 0, i32 31
  %665 = load i32**, i32*** %msc782, align 8
  %arrayidx783 = getelementptr inbounds i32*, i32** %665, i64 %idxprom781
  %666 = load i32*, i32** %arrayidx783, align 8
  %arrayidx784 = getelementptr inbounds i32, i32* %666, i64 %idxprom777
  %667 = load i32, i32* %arrayidx784, align 4
  %668 = load i32, i32* %k, align 4
  %idxprom785 = sext i32 %668 to i64
  %669 = load i32, i32* %nxt, align 4
  %idxprom786 = sext i32 %669 to i64
  %670 = load i32**, i32*** %mmx, align 8
  %arrayidx787 = getelementptr inbounds i32*, i32** %670, i64 %idxprom786
  %671 = load i32*, i32** %arrayidx787, align 8
  %arrayidx788 = getelementptr inbounds i32, i32* %671, i64 %idxprom785
  %672 = load i32, i32* %arrayidx788, align 4
  %add789 = add nsw i32 %672, %667
  store i32 %add789, i32* %arrayidx788, align 4
  br label %if.end.790

if.end.790:                                       ; preds = %if.then.776, %for.body.762
  br label %for.inc.791

for.inc.791:                                      ; preds = %if.end.790
  %673 = load i32, i32* %k, align 4
  %dec = add nsw i32 %673, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.759

for.end.792:                                      ; preds = %for.cond.759
  br label %if.end.793

if.end.793:                                       ; preds = %for.end.792, %sw.epilog.744
  %674 = load i32, i32* %s3.addr, align 4
  %sub794 = sub nsw i32 %674, 1
  store i32 %sub794, i32* %i, align 4
  br label %for.cond.795

for.cond.795:                                     ; preds = %for.inc.1148, %if.end.793
  %675 = load i32, i32* %i, align 4
  %676 = load i32, i32* %s2, align 4
  %cmp796 = icmp sge i32 %675, %676
  br i1 %cmp796, label %for.body.798, label %for.end.1150

for.body.798:                                     ; preds = %for.cond.795
  %677 = load i32, i32* %i, align 4
  %rem799 = srem i32 %677, 2
  store i32 %rem799, i32* %cur, align 4
  %678 = load i32, i32* %cur, align 4
  %tobool800 = icmp ne i32 %678, 0
  %lnot801 = xor i1 %tobool800, true
  %lnot.ext802 = zext i1 %lnot801 to i32
  store i32 %lnot.ext802, i32* %nxt, align 4
  %679 = load i32, i32* %cur, align 4
  %idxprom803 = sext i32 %679 to i64
  %680 = load i32**, i32*** %xmx, align 8
  %arrayidx804 = getelementptr inbounds i32*, i32** %680, i64 %idxprom803
  %681 = load i32*, i32** %arrayidx804, align 8
  %arrayidx805 = getelementptr inbounds i32, i32* %681, i64 2
  store i32 -987654321, i32* %arrayidx805, align 4
  %682 = load i32, i32* %nxt, align 4
  %idxprom806 = sext i32 %682 to i64
  %683 = load i32**, i32*** %xmx, align 8
  %arrayidx807 = getelementptr inbounds i32*, i32** %683, i64 %idxprom806
  %684 = load i32*, i32** %arrayidx807, align 8
  %arrayidx808 = getelementptr inbounds i32, i32* %684, i64 2
  %685 = load i32, i32* %arrayidx808, align 4
  %686 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc809 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %686, i32 0, i32 33
  %arrayidx810 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc809, i32 0, i64 2
  %arrayidx811 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx810, i32 0, i64 1
  %687 = load i32, i32* %arrayidx811, align 4
  %add812 = add nsw i32 %685, %687
  store i32 %add812, i32* %sc, align 4
  %cmp813 = icmp sgt i32 %add812, -987654321
  br i1 %cmp813, label %if.then.815, label %if.end.819

if.then.815:                                      ; preds = %for.body.798
  %688 = load i32, i32* %sc, align 4
  %689 = load i32, i32* %cur, align 4
  %idxprom816 = sext i32 %689 to i64
  %690 = load i32**, i32*** %xmx, align 8
  %arrayidx817 = getelementptr inbounds i32*, i32** %690, i64 %idxprom816
  %691 = load i32*, i32** %arrayidx817, align 8
  %arrayidx818 = getelementptr inbounds i32, i32* %691, i64 2
  store i32 %688, i32* %arrayidx818, align 4
  br label %if.end.819

if.end.819:                                       ; preds = %if.then.815, %for.body.798
  %692 = load i32, i32* %cur, align 4
  %idxprom820 = sext i32 %692 to i64
  %693 = load i32**, i32*** %xmx, align 8
  %arrayidx821 = getelementptr inbounds i32*, i32** %693, i64 %idxprom820
  %694 = load i32*, i32** %arrayidx821, align 8
  %arrayidx822 = getelementptr inbounds i32, i32* %694, i64 0
  store i32 -987654321, i32* %arrayidx822, align 4
  %695 = load i32, i32* %k1.addr, align 4
  store i32 %695, i32* %k, align 4
  br label %for.cond.823

for.cond.823:                                     ; preds = %for.inc.845, %if.end.819
  %696 = load i32, i32* %k, align 4
  %697 = load i32, i32* %k3.addr, align 4
  %cmp824 = icmp sle i32 %696, %697
  br i1 %cmp824, label %for.body.826, label %for.end.847

for.body.826:                                     ; preds = %for.cond.823
  %698 = load i32, i32* %k, align 4
  %idxprom827 = sext i32 %698 to i64
  %699 = load i32, i32* %nxt, align 4
  %idxprom828 = sext i32 %699 to i64
  %700 = load i32**, i32*** %mmx, align 8
  %arrayidx829 = getelementptr inbounds i32*, i32** %700, i64 %idxprom828
  %701 = load i32*, i32** %arrayidx829, align 8
  %arrayidx830 = getelementptr inbounds i32, i32* %701, i64 %idxprom827
  %702 = load i32, i32* %arrayidx830, align 4
  %703 = load i32, i32* %k, align 4
  %idxprom831 = sext i32 %703 to i64
  %704 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc832 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %704, i32 0, i32 34
  %705 = load i32*, i32** %bsc832, align 8
  %arrayidx833 = getelementptr inbounds i32, i32* %705, i64 %idxprom831
  %706 = load i32, i32* %arrayidx833, align 4
  %add834 = add nsw i32 %702, %706
  store i32 %add834, i32* %sc, align 4
  %707 = load i32, i32* %cur, align 4
  %idxprom835 = sext i32 %707 to i64
  %708 = load i32**, i32*** %xmx, align 8
  %arrayidx836 = getelementptr inbounds i32*, i32** %708, i64 %idxprom835
  %709 = load i32*, i32** %arrayidx836, align 8
  %arrayidx837 = getelementptr inbounds i32, i32* %709, i64 0
  %710 = load i32, i32* %arrayidx837, align 4
  %cmp838 = icmp sgt i32 %add834, %710
  br i1 %cmp838, label %if.then.840, label %if.end.844

if.then.840:                                      ; preds = %for.body.826
  %711 = load i32, i32* %sc, align 4
  %712 = load i32, i32* %cur, align 4
  %idxprom841 = sext i32 %712 to i64
  %713 = load i32**, i32*** %xmx, align 8
  %arrayidx842 = getelementptr inbounds i32*, i32** %713, i64 %idxprom841
  %714 = load i32*, i32** %arrayidx842, align 8
  %arrayidx843 = getelementptr inbounds i32, i32* %714, i64 0
  store i32 %711, i32* %arrayidx843, align 4
  br label %if.end.844

if.end.844:                                       ; preds = %if.then.840, %for.body.826
  br label %for.inc.845

for.inc.845:                                      ; preds = %if.end.844
  %715 = load i32, i32* %k, align 4
  %inc846 = add nsw i32 %715, 1
  store i32 %inc846, i32* %k, align 4
  br label %for.cond.823

for.end.847:                                      ; preds = %for.cond.823
  %716 = load i32, i32* %cur, align 4
  %idxprom848 = sext i32 %716 to i64
  %717 = load i32**, i32*** %xmx, align 8
  %arrayidx849 = getelementptr inbounds i32*, i32** %717, i64 %idxprom848
  %718 = load i32*, i32** %arrayidx849, align 8
  %arrayidx850 = getelementptr inbounds i32, i32* %718, i64 1
  store i32 -987654321, i32* %arrayidx850, align 4
  %719 = load i32, i32* %cur, align 4
  %idxprom851 = sext i32 %719 to i64
  %720 = load i32**, i32*** %xmx, align 8
  %arrayidx852 = getelementptr inbounds i32*, i32** %720, i64 %idxprom851
  %721 = load i32*, i32** %arrayidx852, align 8
  %arrayidx853 = getelementptr inbounds i32, i32* %721, i64 2
  %722 = load i32, i32* %arrayidx853, align 4
  %723 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc854 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %723, i32 0, i32 33
  %arrayidx855 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc854, i32 0, i64 1
  %arrayidx856 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx855, i32 0, i64 0
  %724 = load i32, i32* %arrayidx856, align 4
  %add857 = add nsw i32 %722, %724
  store i32 %add857, i32* %sc, align 4
  %cmp858 = icmp sgt i32 %add857, -987654321
  br i1 %cmp858, label %if.then.860, label %if.end.864

if.then.860:                                      ; preds = %for.end.847
  %725 = load i32, i32* %sc, align 4
  %726 = load i32, i32* %cur, align 4
  %idxprom861 = sext i32 %726 to i64
  %727 = load i32**, i32*** %xmx, align 8
  %arrayidx862 = getelementptr inbounds i32*, i32** %727, i64 %idxprom861
  %728 = load i32*, i32** %arrayidx862, align 8
  %arrayidx863 = getelementptr inbounds i32, i32* %728, i64 1
  store i32 %725, i32* %arrayidx863, align 4
  br label %if.end.864

if.end.864:                                       ; preds = %if.then.860, %for.end.847
  %729 = load i32, i32* %cur, align 4
  %idxprom865 = sext i32 %729 to i64
  %730 = load i32**, i32*** %xmx, align 8
  %arrayidx866 = getelementptr inbounds i32*, i32** %730, i64 %idxprom865
  %731 = load i32*, i32** %arrayidx866, align 8
  %arrayidx867 = getelementptr inbounds i32, i32* %731, i64 4
  store i32 -987654321, i32* %arrayidx867, align 4
  %732 = load i32, i32* %cur, align 4
  %idxprom868 = sext i32 %732 to i64
  %733 = load i32**, i32*** %xmx, align 8
  %arrayidx869 = getelementptr inbounds i32*, i32** %733, i64 %idxprom868
  %734 = load i32*, i32** %arrayidx869, align 8
  %arrayidx870 = getelementptr inbounds i32, i32* %734, i64 0
  %735 = load i32, i32* %arrayidx870, align 4
  %736 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc871 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %736, i32 0, i32 33
  %arrayidx872 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc871, i32 0, i64 0
  %arrayidx873 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx872, i32 0, i64 0
  %737 = load i32, i32* %arrayidx873, align 4
  %add874 = add nsw i32 %735, %737
  store i32 %add874, i32* %sc, align 4
  %cmp875 = icmp sgt i32 %add874, -987654321
  br i1 %cmp875, label %if.then.877, label %if.end.881

if.then.877:                                      ; preds = %if.end.864
  %738 = load i32, i32* %sc, align 4
  %739 = load i32, i32* %cur, align 4
  %idxprom878 = sext i32 %739 to i64
  %740 = load i32**, i32*** %xmx, align 8
  %arrayidx879 = getelementptr inbounds i32*, i32** %740, i64 %idxprom878
  %741 = load i32*, i32** %arrayidx879, align 8
  %arrayidx880 = getelementptr inbounds i32, i32* %741, i64 4
  store i32 %738, i32* %arrayidx880, align 4
  br label %if.end.881

if.end.881:                                       ; preds = %if.then.877, %if.end.864
  %742 = load i32, i32* %nxt, align 4
  %idxprom882 = sext i32 %742 to i64
  %743 = load i32**, i32*** %xmx, align 8
  %arrayidx883 = getelementptr inbounds i32*, i32** %743, i64 %idxprom882
  %744 = load i32*, i32** %arrayidx883, align 8
  %arrayidx884 = getelementptr inbounds i32, i32* %744, i64 4
  %745 = load i32, i32* %arrayidx884, align 4
  %746 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc885 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %746, i32 0, i32 33
  %arrayidx886 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc885, i32 0, i64 0
  %arrayidx887 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx886, i32 0, i64 1
  %747 = load i32, i32* %arrayidx887, align 4
  %add888 = add nsw i32 %745, %747
  store i32 %add888, i32* %sc, align 4
  %748 = load i32, i32* %cur, align 4
  %idxprom889 = sext i32 %748 to i64
  %749 = load i32**, i32*** %xmx, align 8
  %arrayidx890 = getelementptr inbounds i32*, i32** %749, i64 %idxprom889
  %750 = load i32*, i32** %arrayidx890, align 8
  %arrayidx891 = getelementptr inbounds i32, i32* %750, i64 4
  %751 = load i32, i32* %arrayidx891, align 4
  %cmp892 = icmp sgt i32 %add888, %751
  br i1 %cmp892, label %if.then.894, label %if.end.898

if.then.894:                                      ; preds = %if.end.881
  %752 = load i32, i32* %sc, align 4
  %753 = load i32, i32* %cur, align 4
  %idxprom895 = sext i32 %753 to i64
  %754 = load i32**, i32*** %xmx, align 8
  %arrayidx896 = getelementptr inbounds i32*, i32** %754, i64 %idxprom895
  %755 = load i32*, i32** %arrayidx896, align 8
  %arrayidx897 = getelementptr inbounds i32, i32* %755, i64 4
  store i32 %752, i32* %arrayidx897, align 4
  br label %if.end.898

if.end.898:                                       ; preds = %if.then.894, %if.end.881
  %756 = load i32, i32* %k3.addr, align 4
  store i32 %756, i32* %k, align 4
  br label %for.cond.899

for.cond.899:                                     ; preds = %for.inc.1145, %if.end.898
  %757 = load i32, i32* %k, align 4
  %758 = load i32, i32* %k1.addr, align 4
  %cmp900 = icmp sge i32 %757, %758
  br i1 %cmp900, label %for.body.902, label %for.end.1147

for.body.902:                                     ; preds = %for.cond.899
  %759 = load i32, i32* %k, align 4
  %760 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M903 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %760, i32 0, i32 20
  %761 = load i32, i32* %M903, align 4
  %cmp904 = icmp eq i32 %759, %761
  br i1 %cmp904, label %if.then.906, label %if.end.939

if.then.906:                                      ; preds = %for.body.902
  %762 = load i32, i32* %cur, align 4
  %idxprom907 = sext i32 %762 to i64
  %763 = load i32**, i32*** %xmx, align 8
  %arrayidx908 = getelementptr inbounds i32*, i32** %763, i64 %idxprom907
  %764 = load i32*, i32** %arrayidx908, align 8
  %arrayidx909 = getelementptr inbounds i32, i32* %764, i64 1
  %765 = load i32, i32* %arrayidx909, align 4
  %766 = load i32, i32* %k, align 4
  %idxprom910 = sext i32 %766 to i64
  %767 = load i32, i32* %cur, align 4
  %idxprom911 = sext i32 %767 to i64
  %768 = load i32**, i32*** %mmx, align 8
  %arrayidx912 = getelementptr inbounds i32*, i32** %768, i64 %idxprom911
  %769 = load i32*, i32** %arrayidx912, align 8
  %arrayidx913 = getelementptr inbounds i32, i32* %769, i64 %idxprom910
  store i32 %765, i32* %arrayidx913, align 4
  %770 = load i32, i32* %k, align 4
  %idxprom914 = sext i32 %770 to i64
  %771 = load i32, i32* %cur, align 4
  %idxprom915 = sext i32 %771 to i64
  %772 = load i32**, i32*** %dmx, align 8
  %arrayidx916 = getelementptr inbounds i32*, i32** %772, i64 %idxprom915
  %773 = load i32*, i32** %arrayidx916, align 8
  %arrayidx917 = getelementptr inbounds i32, i32* %773, i64 %idxprom914
  store i32 -987654321, i32* %arrayidx917, align 4
  %774 = load i32, i32* %k, align 4
  %idxprom918 = sext i32 %774 to i64
  %775 = load i32, i32* %cur, align 4
  %idxprom919 = sext i32 %775 to i64
  %776 = load i32**, i32*** %imx, align 8
  %arrayidx920 = getelementptr inbounds i32*, i32** %776, i64 %idxprom919
  %777 = load i32*, i32** %arrayidx920, align 8
  %arrayidx921 = getelementptr inbounds i32, i32* %777, i64 %idxprom918
  store i32 -987654321, i32* %arrayidx921, align 4
  %778 = load i32, i32* %i, align 4
  %779 = load i32, i32* %s2, align 4
  %cmp922 = icmp ne i32 %778, %779
  br i1 %cmp922, label %if.then.924, label %if.end.938

if.then.924:                                      ; preds = %if.then.906
  %780 = load i32, i32* %k, align 4
  %idxprom925 = sext i32 %780 to i64
  %781 = load i32, i32* %i, align 4
  %idxprom926 = sext i32 %781 to i64
  %782 = load i8*, i8** %dsq.addr, align 8
  %arrayidx927 = getelementptr inbounds i8, i8* %782, i64 %idxprom926
  %783 = load i8, i8* %arrayidx927, align 1
  %conv928 = sext i8 %783 to i32
  %idxprom929 = sext i32 %conv928 to i64
  %784 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc930 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %784, i32 0, i32 31
  %785 = load i32**, i32*** %msc930, align 8
  %arrayidx931 = getelementptr inbounds i32*, i32** %785, i64 %idxprom929
  %786 = load i32*, i32** %arrayidx931, align 8
  %arrayidx932 = getelementptr inbounds i32, i32* %786, i64 %idxprom925
  %787 = load i32, i32* %arrayidx932, align 4
  %788 = load i32, i32* %k, align 4
  %idxprom933 = sext i32 %788 to i64
  %789 = load i32, i32* %cur, align 4
  %idxprom934 = sext i32 %789 to i64
  %790 = load i32**, i32*** %mmx, align 8
  %arrayidx935 = getelementptr inbounds i32*, i32** %790, i64 %idxprom934
  %791 = load i32*, i32** %arrayidx935, align 8
  %arrayidx936 = getelementptr inbounds i32, i32* %791, i64 %idxprom933
  %792 = load i32, i32* %arrayidx936, align 4
  %add937 = add nsw i32 %792, %787
  store i32 %add937, i32* %arrayidx936, align 4
  br label %if.end.938

if.end.938:                                       ; preds = %if.then.924, %if.then.906
  br label %for.inc.1145

if.end.939:                                       ; preds = %for.body.902
  %793 = load i32, i32* %k, align 4
  %idxprom940 = sext i32 %793 to i64
  %794 = load i32, i32* %cur, align 4
  %idxprom941 = sext i32 %794 to i64
  %795 = load i32**, i32*** %mmx, align 8
  %arrayidx942 = getelementptr inbounds i32*, i32** %795, i64 %idxprom941
  %796 = load i32*, i32** %arrayidx942, align 8
  %arrayidx943 = getelementptr inbounds i32, i32* %796, i64 %idxprom940
  store i32 -987654321, i32* %arrayidx943, align 4
  %797 = load i32, i32* %cur, align 4
  %idxprom944 = sext i32 %797 to i64
  %798 = load i32**, i32*** %xmx, align 8
  %arrayidx945 = getelementptr inbounds i32*, i32** %798, i64 %idxprom944
  %799 = load i32*, i32** %arrayidx945, align 8
  %arrayidx946 = getelementptr inbounds i32, i32* %799, i64 1
  %800 = load i32, i32* %arrayidx946, align 4
  %801 = load i32, i32* %k, align 4
  %idxprom947 = sext i32 %801 to i64
  %802 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc948 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %802, i32 0, i32 35
  %803 = load i32*, i32** %esc948, align 8
  %arrayidx949 = getelementptr inbounds i32, i32* %803, i64 %idxprom947
  %804 = load i32, i32* %arrayidx949, align 4
  %add950 = add nsw i32 %800, %804
  store i32 %add950, i32* %sc, align 4
  %cmp951 = icmp sgt i32 %add950, -987654321
  br i1 %cmp951, label %if.then.953, label %if.end.958

if.then.953:                                      ; preds = %if.end.939
  %805 = load i32, i32* %sc, align 4
  %806 = load i32, i32* %k, align 4
  %idxprom954 = sext i32 %806 to i64
  %807 = load i32, i32* %cur, align 4
  %idxprom955 = sext i32 %807 to i64
  %808 = load i32**, i32*** %mmx, align 8
  %arrayidx956 = getelementptr inbounds i32*, i32** %808, i64 %idxprom955
  %809 = load i32*, i32** %arrayidx956, align 8
  %arrayidx957 = getelementptr inbounds i32, i32* %809, i64 %idxprom954
  store i32 %805, i32* %arrayidx957, align 4
  br label %if.end.958

if.end.958:                                       ; preds = %if.then.953, %if.end.939
  %810 = load i32, i32* %k, align 4
  %add959 = add nsw i32 %810, 1
  %idxprom960 = sext i32 %add959 to i64
  %811 = load i32, i32* %nxt, align 4
  %idxprom961 = sext i32 %811 to i64
  %812 = load i32**, i32*** %mmx, align 8
  %arrayidx962 = getelementptr inbounds i32*, i32** %812, i64 %idxprom961
  %813 = load i32*, i32** %arrayidx962, align 8
  %arrayidx963 = getelementptr inbounds i32, i32* %813, i64 %idxprom960
  %814 = load i32, i32* %arrayidx963, align 4
  %815 = load i32, i32* %k, align 4
  %idxprom964 = sext i32 %815 to i64
  %816 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc965 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %816, i32 0, i32 30
  %817 = load i32**, i32*** %tsc965, align 8
  %arrayidx966 = getelementptr inbounds i32*, i32** %817, i64 0
  %818 = load i32*, i32** %arrayidx966, align 8
  %arrayidx967 = getelementptr inbounds i32, i32* %818, i64 %idxprom964
  %819 = load i32, i32* %arrayidx967, align 4
  %add968 = add nsw i32 %814, %819
  store i32 %add968, i32* %sc, align 4
  %820 = load i32, i32* %k, align 4
  %idxprom969 = sext i32 %820 to i64
  %821 = load i32, i32* %cur, align 4
  %idxprom970 = sext i32 %821 to i64
  %822 = load i32**, i32*** %mmx, align 8
  %arrayidx971 = getelementptr inbounds i32*, i32** %822, i64 %idxprom970
  %823 = load i32*, i32** %arrayidx971, align 8
  %arrayidx972 = getelementptr inbounds i32, i32* %823, i64 %idxprom969
  %824 = load i32, i32* %arrayidx972, align 4
  %cmp973 = icmp sgt i32 %add968, %824
  br i1 %cmp973, label %if.then.975, label %if.end.980

if.then.975:                                      ; preds = %if.end.958
  %825 = load i32, i32* %sc, align 4
  %826 = load i32, i32* %k, align 4
  %idxprom976 = sext i32 %826 to i64
  %827 = load i32, i32* %cur, align 4
  %idxprom977 = sext i32 %827 to i64
  %828 = load i32**, i32*** %mmx, align 8
  %arrayidx978 = getelementptr inbounds i32*, i32** %828, i64 %idxprom977
  %829 = load i32*, i32** %arrayidx978, align 8
  %arrayidx979 = getelementptr inbounds i32, i32* %829, i64 %idxprom976
  store i32 %825, i32* %arrayidx979, align 4
  br label %if.end.980

if.end.980:                                       ; preds = %if.then.975, %if.end.958
  %830 = load i32, i32* %k, align 4
  %idxprom981 = sext i32 %830 to i64
  %831 = load i32, i32* %nxt, align 4
  %idxprom982 = sext i32 %831 to i64
  %832 = load i32**, i32*** %imx, align 8
  %arrayidx983 = getelementptr inbounds i32*, i32** %832, i64 %idxprom982
  %833 = load i32*, i32** %arrayidx983, align 8
  %arrayidx984 = getelementptr inbounds i32, i32* %833, i64 %idxprom981
  %834 = load i32, i32* %arrayidx984, align 4
  %835 = load i32, i32* %k, align 4
  %idxprom985 = sext i32 %835 to i64
  %836 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc986 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %836, i32 0, i32 30
  %837 = load i32**, i32*** %tsc986, align 8
  %arrayidx987 = getelementptr inbounds i32*, i32** %837, i64 1
  %838 = load i32*, i32** %arrayidx987, align 8
  %arrayidx988 = getelementptr inbounds i32, i32* %838, i64 %idxprom985
  %839 = load i32, i32* %arrayidx988, align 4
  %add989 = add nsw i32 %834, %839
  store i32 %add989, i32* %sc, align 4
  %840 = load i32, i32* %k, align 4
  %idxprom990 = sext i32 %840 to i64
  %841 = load i32, i32* %cur, align 4
  %idxprom991 = sext i32 %841 to i64
  %842 = load i32**, i32*** %mmx, align 8
  %arrayidx992 = getelementptr inbounds i32*, i32** %842, i64 %idxprom991
  %843 = load i32*, i32** %arrayidx992, align 8
  %arrayidx993 = getelementptr inbounds i32, i32* %843, i64 %idxprom990
  %844 = load i32, i32* %arrayidx993, align 4
  %cmp994 = icmp sgt i32 %add989, %844
  br i1 %cmp994, label %if.then.996, label %if.end.1001

if.then.996:                                      ; preds = %if.end.980
  %845 = load i32, i32* %sc, align 4
  %846 = load i32, i32* %k, align 4
  %idxprom997 = sext i32 %846 to i64
  %847 = load i32, i32* %cur, align 4
  %idxprom998 = sext i32 %847 to i64
  %848 = load i32**, i32*** %mmx, align 8
  %arrayidx999 = getelementptr inbounds i32*, i32** %848, i64 %idxprom998
  %849 = load i32*, i32** %arrayidx999, align 8
  %arrayidx1000 = getelementptr inbounds i32, i32* %849, i64 %idxprom997
  store i32 %845, i32* %arrayidx1000, align 4
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.then.996, %if.end.980
  %850 = load i32, i32* %k, align 4
  %add1002 = add nsw i32 %850, 1
  %idxprom1003 = sext i32 %add1002 to i64
  %851 = load i32, i32* %cur, align 4
  %idxprom1004 = sext i32 %851 to i64
  %852 = load i32**, i32*** %dmx, align 8
  %arrayidx1005 = getelementptr inbounds i32*, i32** %852, i64 %idxprom1004
  %853 = load i32*, i32** %arrayidx1005, align 8
  %arrayidx1006 = getelementptr inbounds i32, i32* %853, i64 %idxprom1003
  %854 = load i32, i32* %arrayidx1006, align 4
  %855 = load i32, i32* %k, align 4
  %idxprom1007 = sext i32 %855 to i64
  %856 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc1008 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %856, i32 0, i32 30
  %857 = load i32**, i32*** %tsc1008, align 8
  %arrayidx1009 = getelementptr inbounds i32*, i32** %857, i64 2
  %858 = load i32*, i32** %arrayidx1009, align 8
  %arrayidx1010 = getelementptr inbounds i32, i32* %858, i64 %idxprom1007
  %859 = load i32, i32* %arrayidx1010, align 4
  %add1011 = add nsw i32 %854, %859
  store i32 %add1011, i32* %sc, align 4
  %860 = load i32, i32* %k, align 4
  %idxprom1012 = sext i32 %860 to i64
  %861 = load i32, i32* %cur, align 4
  %idxprom1013 = sext i32 %861 to i64
  %862 = load i32**, i32*** %mmx, align 8
  %arrayidx1014 = getelementptr inbounds i32*, i32** %862, i64 %idxprom1013
  %863 = load i32*, i32** %arrayidx1014, align 8
  %arrayidx1015 = getelementptr inbounds i32, i32* %863, i64 %idxprom1012
  %864 = load i32, i32* %arrayidx1015, align 4
  %cmp1016 = icmp sgt i32 %add1011, %864
  br i1 %cmp1016, label %if.then.1018, label %if.end.1023

if.then.1018:                                     ; preds = %if.end.1001
  %865 = load i32, i32* %sc, align 4
  %866 = load i32, i32* %k, align 4
  %idxprom1019 = sext i32 %866 to i64
  %867 = load i32, i32* %cur, align 4
  %idxprom1020 = sext i32 %867 to i64
  %868 = load i32**, i32*** %mmx, align 8
  %arrayidx1021 = getelementptr inbounds i32*, i32** %868, i64 %idxprom1020
  %869 = load i32*, i32** %arrayidx1021, align 8
  %arrayidx1022 = getelementptr inbounds i32, i32* %869, i64 %idxprom1019
  store i32 %865, i32* %arrayidx1022, align 4
  br label %if.end.1023

if.end.1023:                                      ; preds = %if.then.1018, %if.end.1001
  %870 = load i32, i32* %i, align 4
  %871 = load i32, i32* %s2, align 4
  %cmp1024 = icmp ne i32 %870, %871
  br i1 %cmp1024, label %if.then.1026, label %if.end.1040

if.then.1026:                                     ; preds = %if.end.1023
  %872 = load i32, i32* %k, align 4
  %idxprom1027 = sext i32 %872 to i64
  %873 = load i32, i32* %i, align 4
  %idxprom1028 = sext i32 %873 to i64
  %874 = load i8*, i8** %dsq.addr, align 8
  %arrayidx1029 = getelementptr inbounds i8, i8* %874, i64 %idxprom1028
  %875 = load i8, i8* %arrayidx1029, align 1
  %conv1030 = sext i8 %875 to i32
  %idxprom1031 = sext i32 %conv1030 to i64
  %876 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc1032 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %876, i32 0, i32 31
  %877 = load i32**, i32*** %msc1032, align 8
  %arrayidx1033 = getelementptr inbounds i32*, i32** %877, i64 %idxprom1031
  %878 = load i32*, i32** %arrayidx1033, align 8
  %arrayidx1034 = getelementptr inbounds i32, i32* %878, i64 %idxprom1027
  %879 = load i32, i32* %arrayidx1034, align 4
  %880 = load i32, i32* %k, align 4
  %idxprom1035 = sext i32 %880 to i64
  %881 = load i32, i32* %cur, align 4
  %idxprom1036 = sext i32 %881 to i64
  %882 = load i32**, i32*** %mmx, align 8
  %arrayidx1037 = getelementptr inbounds i32*, i32** %882, i64 %idxprom1036
  %883 = load i32*, i32** %arrayidx1037, align 8
  %arrayidx1038 = getelementptr inbounds i32, i32* %883, i64 %idxprom1035
  %884 = load i32, i32* %arrayidx1038, align 4
  %add1039 = add nsw i32 %884, %879
  store i32 %add1039, i32* %arrayidx1038, align 4
  br label %if.end.1040

if.end.1040:                                      ; preds = %if.then.1026, %if.end.1023
  %885 = load i32, i32* %k, align 4
  %idxprom1041 = sext i32 %885 to i64
  %886 = load i32, i32* %cur, align 4
  %idxprom1042 = sext i32 %886 to i64
  %887 = load i32**, i32*** %dmx, align 8
  %arrayidx1043 = getelementptr inbounds i32*, i32** %887, i64 %idxprom1042
  %888 = load i32*, i32** %arrayidx1043, align 8
  %arrayidx1044 = getelementptr inbounds i32, i32* %888, i64 %idxprom1041
  store i32 -987654321, i32* %arrayidx1044, align 4
  %889 = load i32, i32* %k, align 4
  %add1045 = add nsw i32 %889, 1
  %idxprom1046 = sext i32 %add1045 to i64
  %890 = load i32, i32* %nxt, align 4
  %idxprom1047 = sext i32 %890 to i64
  %891 = load i32**, i32*** %mmx, align 8
  %arrayidx1048 = getelementptr inbounds i32*, i32** %891, i64 %idxprom1047
  %892 = load i32*, i32** %arrayidx1048, align 8
  %arrayidx1049 = getelementptr inbounds i32, i32* %892, i64 %idxprom1046
  %893 = load i32, i32* %arrayidx1049, align 4
  %894 = load i32, i32* %k, align 4
  %idxprom1050 = sext i32 %894 to i64
  %895 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc1051 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %895, i32 0, i32 30
  %896 = load i32**, i32*** %tsc1051, align 8
  %arrayidx1052 = getelementptr inbounds i32*, i32** %896, i64 5
  %897 = load i32*, i32** %arrayidx1052, align 8
  %arrayidx1053 = getelementptr inbounds i32, i32* %897, i64 %idxprom1050
  %898 = load i32, i32* %arrayidx1053, align 4
  %add1054 = add nsw i32 %893, %898
  store i32 %add1054, i32* %sc, align 4
  %cmp1055 = icmp sgt i32 %add1054, -987654321
  br i1 %cmp1055, label %if.then.1057, label %if.end.1062

if.then.1057:                                     ; preds = %if.end.1040
  %899 = load i32, i32* %sc, align 4
  %900 = load i32, i32* %k, align 4
  %idxprom1058 = sext i32 %900 to i64
  %901 = load i32, i32* %cur, align 4
  %idxprom1059 = sext i32 %901 to i64
  %902 = load i32**, i32*** %dmx, align 8
  %arrayidx1060 = getelementptr inbounds i32*, i32** %902, i64 %idxprom1059
  %903 = load i32*, i32** %arrayidx1060, align 8
  %arrayidx1061 = getelementptr inbounds i32, i32* %903, i64 %idxprom1058
  store i32 %899, i32* %arrayidx1061, align 4
  br label %if.end.1062

if.end.1062:                                      ; preds = %if.then.1057, %if.end.1040
  %904 = load i32, i32* %k, align 4
  %add1063 = add nsw i32 %904, 1
  %idxprom1064 = sext i32 %add1063 to i64
  %905 = load i32, i32* %cur, align 4
  %idxprom1065 = sext i32 %905 to i64
  %906 = load i32**, i32*** %dmx, align 8
  %arrayidx1066 = getelementptr inbounds i32*, i32** %906, i64 %idxprom1065
  %907 = load i32*, i32** %arrayidx1066, align 8
  %arrayidx1067 = getelementptr inbounds i32, i32* %907, i64 %idxprom1064
  %908 = load i32, i32* %arrayidx1067, align 4
  %909 = load i32, i32* %k, align 4
  %idxprom1068 = sext i32 %909 to i64
  %910 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc1069 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %910, i32 0, i32 30
  %911 = load i32**, i32*** %tsc1069, align 8
  %arrayidx1070 = getelementptr inbounds i32*, i32** %911, i64 6
  %912 = load i32*, i32** %arrayidx1070, align 8
  %arrayidx1071 = getelementptr inbounds i32, i32* %912, i64 %idxprom1068
  %913 = load i32, i32* %arrayidx1071, align 4
  %add1072 = add nsw i32 %908, %913
  store i32 %add1072, i32* %sc, align 4
  %914 = load i32, i32* %k, align 4
  %idxprom1073 = sext i32 %914 to i64
  %915 = load i32, i32* %cur, align 4
  %idxprom1074 = sext i32 %915 to i64
  %916 = load i32**, i32*** %dmx, align 8
  %arrayidx1075 = getelementptr inbounds i32*, i32** %916, i64 %idxprom1074
  %917 = load i32*, i32** %arrayidx1075, align 8
  %arrayidx1076 = getelementptr inbounds i32, i32* %917, i64 %idxprom1073
  %918 = load i32, i32* %arrayidx1076, align 4
  %cmp1077 = icmp sgt i32 %add1072, %918
  br i1 %cmp1077, label %if.then.1079, label %if.end.1084

if.then.1079:                                     ; preds = %if.end.1062
  %919 = load i32, i32* %sc, align 4
  %920 = load i32, i32* %k, align 4
  %idxprom1080 = sext i32 %920 to i64
  %921 = load i32, i32* %cur, align 4
  %idxprom1081 = sext i32 %921 to i64
  %922 = load i32**, i32*** %dmx, align 8
  %arrayidx1082 = getelementptr inbounds i32*, i32** %922, i64 %idxprom1081
  %923 = load i32*, i32** %arrayidx1082, align 8
  %arrayidx1083 = getelementptr inbounds i32, i32* %923, i64 %idxprom1080
  store i32 %919, i32* %arrayidx1083, align 4
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.then.1079, %if.end.1062
  %924 = load i32, i32* %k, align 4
  %idxprom1085 = sext i32 %924 to i64
  %925 = load i32, i32* %cur, align 4
  %idxprom1086 = sext i32 %925 to i64
  %926 = load i32**, i32*** %imx, align 8
  %arrayidx1087 = getelementptr inbounds i32*, i32** %926, i64 %idxprom1086
  %927 = load i32*, i32** %arrayidx1087, align 8
  %arrayidx1088 = getelementptr inbounds i32, i32* %927, i64 %idxprom1085
  store i32 -987654321, i32* %arrayidx1088, align 4
  %928 = load i32, i32* %k, align 4
  %add1089 = add nsw i32 %928, 1
  %idxprom1090 = sext i32 %add1089 to i64
  %929 = load i32, i32* %nxt, align 4
  %idxprom1091 = sext i32 %929 to i64
  %930 = load i32**, i32*** %mmx, align 8
  %arrayidx1092 = getelementptr inbounds i32*, i32** %930, i64 %idxprom1091
  %931 = load i32*, i32** %arrayidx1092, align 8
  %arrayidx1093 = getelementptr inbounds i32, i32* %931, i64 %idxprom1090
  %932 = load i32, i32* %arrayidx1093, align 4
  %933 = load i32, i32* %k, align 4
  %idxprom1094 = sext i32 %933 to i64
  %934 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc1095 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %934, i32 0, i32 30
  %935 = load i32**, i32*** %tsc1095, align 8
  %arrayidx1096 = getelementptr inbounds i32*, i32** %935, i64 3
  %936 = load i32*, i32** %arrayidx1096, align 8
  %arrayidx1097 = getelementptr inbounds i32, i32* %936, i64 %idxprom1094
  %937 = load i32, i32* %arrayidx1097, align 4
  %add1098 = add nsw i32 %932, %937
  store i32 %add1098, i32* %sc, align 4
  %cmp1099 = icmp sgt i32 %add1098, -987654321
  br i1 %cmp1099, label %if.then.1101, label %if.end.1106

if.then.1101:                                     ; preds = %if.end.1084
  %938 = load i32, i32* %sc, align 4
  %939 = load i32, i32* %k, align 4
  %idxprom1102 = sext i32 %939 to i64
  %940 = load i32, i32* %cur, align 4
  %idxprom1103 = sext i32 %940 to i64
  %941 = load i32**, i32*** %imx, align 8
  %arrayidx1104 = getelementptr inbounds i32*, i32** %941, i64 %idxprom1103
  %942 = load i32*, i32** %arrayidx1104, align 8
  %arrayidx1105 = getelementptr inbounds i32, i32* %942, i64 %idxprom1102
  store i32 %938, i32* %arrayidx1105, align 4
  br label %if.end.1106

if.end.1106:                                      ; preds = %if.then.1101, %if.end.1084
  %943 = load i32, i32* %k, align 4
  %idxprom1107 = sext i32 %943 to i64
  %944 = load i32, i32* %nxt, align 4
  %idxprom1108 = sext i32 %944 to i64
  %945 = load i32**, i32*** %imx, align 8
  %arrayidx1109 = getelementptr inbounds i32*, i32** %945, i64 %idxprom1108
  %946 = load i32*, i32** %arrayidx1109, align 8
  %arrayidx1110 = getelementptr inbounds i32, i32* %946, i64 %idxprom1107
  %947 = load i32, i32* %arrayidx1110, align 4
  %948 = load i32, i32* %k, align 4
  %idxprom1111 = sext i32 %948 to i64
  %949 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc1112 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %949, i32 0, i32 30
  %950 = load i32**, i32*** %tsc1112, align 8
  %arrayidx1113 = getelementptr inbounds i32*, i32** %950, i64 4
  %951 = load i32*, i32** %arrayidx1113, align 8
  %arrayidx1114 = getelementptr inbounds i32, i32* %951, i64 %idxprom1111
  %952 = load i32, i32* %arrayidx1114, align 4
  %add1115 = add nsw i32 %947, %952
  store i32 %add1115, i32* %sc, align 4
  %953 = load i32, i32* %k, align 4
  %idxprom1116 = sext i32 %953 to i64
  %954 = load i32, i32* %cur, align 4
  %idxprom1117 = sext i32 %954 to i64
  %955 = load i32**, i32*** %imx, align 8
  %arrayidx1118 = getelementptr inbounds i32*, i32** %955, i64 %idxprom1117
  %956 = load i32*, i32** %arrayidx1118, align 8
  %arrayidx1119 = getelementptr inbounds i32, i32* %956, i64 %idxprom1116
  %957 = load i32, i32* %arrayidx1119, align 4
  %cmp1120 = icmp sgt i32 %add1115, %957
  br i1 %cmp1120, label %if.then.1122, label %if.end.1127

if.then.1122:                                     ; preds = %if.end.1106
  %958 = load i32, i32* %sc, align 4
  %959 = load i32, i32* %k, align 4
  %idxprom1123 = sext i32 %959 to i64
  %960 = load i32, i32* %cur, align 4
  %idxprom1124 = sext i32 %960 to i64
  %961 = load i32**, i32*** %imx, align 8
  %arrayidx1125 = getelementptr inbounds i32*, i32** %961, i64 %idxprom1124
  %962 = load i32*, i32** %arrayidx1125, align 8
  %arrayidx1126 = getelementptr inbounds i32, i32* %962, i64 %idxprom1123
  store i32 %958, i32* %arrayidx1126, align 4
  br label %if.end.1127

if.end.1127:                                      ; preds = %if.then.1122, %if.end.1106
  %963 = load i32, i32* %i, align 4
  %964 = load i32, i32* %s2, align 4
  %cmp1128 = icmp ne i32 %963, %964
  br i1 %cmp1128, label %if.then.1130, label %if.end.1144

if.then.1130:                                     ; preds = %if.end.1127
  %965 = load i32, i32* %k, align 4
  %idxprom1131 = sext i32 %965 to i64
  %966 = load i32, i32* %i, align 4
  %idxprom1132 = sext i32 %966 to i64
  %967 = load i8*, i8** %dsq.addr, align 8
  %arrayidx1133 = getelementptr inbounds i8, i8* %967, i64 %idxprom1132
  %968 = load i8, i8* %arrayidx1133, align 1
  %conv1134 = sext i8 %968 to i32
  %idxprom1135 = sext i32 %conv1134 to i64
  %969 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc1136 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %969, i32 0, i32 32
  %970 = load i32**, i32*** %isc1136, align 8
  %arrayidx1137 = getelementptr inbounds i32*, i32** %970, i64 %idxprom1135
  %971 = load i32*, i32** %arrayidx1137, align 8
  %arrayidx1138 = getelementptr inbounds i32, i32* %971, i64 %idxprom1131
  %972 = load i32, i32* %arrayidx1138, align 4
  %973 = load i32, i32* %k, align 4
  %idxprom1139 = sext i32 %973 to i64
  %974 = load i32, i32* %cur, align 4
  %idxprom1140 = sext i32 %974 to i64
  %975 = load i32**, i32*** %imx, align 8
  %arrayidx1141 = getelementptr inbounds i32*, i32** %975, i64 %idxprom1140
  %976 = load i32*, i32** %arrayidx1141, align 8
  %arrayidx1142 = getelementptr inbounds i32, i32* %976, i64 %idxprom1139
  %977 = load i32, i32* %arrayidx1142, align 4
  %add1143 = add nsw i32 %977, %972
  store i32 %add1143, i32* %arrayidx1142, align 4
  br label %if.end.1144

if.end.1144:                                      ; preds = %if.then.1130, %if.end.1127
  br label %for.inc.1145

for.inc.1145:                                     ; preds = %if.end.1144, %if.end.938
  %978 = load i32, i32* %k, align 4
  %dec1146 = add nsw i32 %978, -1
  store i32 %dec1146, i32* %k, align 4
  br label %for.cond.899

for.end.1147:                                     ; preds = %for.cond.899
  br label %for.inc.1148

for.inc.1148:                                     ; preds = %for.end.1147
  %979 = load i32, i32* %i, align 4
  %dec1149 = add nsw i32 %979, -1
  store i32 %dec1149, i32* %i, align 4
  br label %for.cond.795

for.end.1150:                                     ; preds = %for.cond.795
  %980 = load i32, i32* %s2, align 4
  %rem1151 = srem i32 %980, 2
  store i32 %rem1151, i32* %cur, align 4
  store i32 -987654321, i32* %max, align 4
  %981 = load i32, i32* %k1.addr, align 4
  store i32 %981, i32* %k, align 4
  br label %for.cond.1152

for.cond.1152:                                    ; preds = %for.inc.1186, %for.end.1150
  %982 = load i32, i32* %k, align 4
  %983 = load i32, i32* %k3.addr, align 4
  %cmp1153 = icmp sle i32 %982, %983
  br i1 %cmp1153, label %for.body.1155, label %for.end.1188

for.body.1155:                                    ; preds = %for.cond.1152
  %984 = load i32, i32* %k, align 4
  %idxprom1156 = sext i32 %984 to i64
  %985 = load i32, i32* %cur, align 4
  %idxprom1157 = sext i32 %985 to i64
  %986 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %fwd, align 8
  %mmx1158 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %986, i32 0, i32 1
  %987 = load i32**, i32*** %mmx1158, align 8
  %arrayidx1159 = getelementptr inbounds i32*, i32** %987, i64 %idxprom1157
  %988 = load i32*, i32** %arrayidx1159, align 8
  %arrayidx1160 = getelementptr inbounds i32, i32* %988, i64 %idxprom1156
  %989 = load i32, i32* %arrayidx1160, align 4
  %990 = load i32, i32* %k, align 4
  %idxprom1161 = sext i32 %990 to i64
  %991 = load i32, i32* %cur, align 4
  %idxprom1162 = sext i32 %991 to i64
  %992 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %bck, align 8
  %mmx1163 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %992, i32 0, i32 1
  %993 = load i32**, i32*** %mmx1163, align 8
  %arrayidx1164 = getelementptr inbounds i32*, i32** %993, i64 %idxprom1162
  %994 = load i32*, i32** %arrayidx1164, align 8
  %arrayidx1165 = getelementptr inbounds i32, i32* %994, i64 %idxprom1161
  %995 = load i32, i32* %arrayidx1165, align 4
  %add1166 = add nsw i32 %989, %995
  store i32 %add1166, i32* %sc, align 4
  %996 = load i32, i32* %max, align 4
  %cmp1167 = icmp sgt i32 %add1166, %996
  br i1 %cmp1167, label %if.then.1169, label %if.end.1170

if.then.1169:                                     ; preds = %for.body.1155
  %997 = load i32, i32* %k, align 4
  store i32 %997, i32* %k2, align 4
  store i8 1, i8* %t2, align 1
  %998 = load i32, i32* %sc, align 4
  store i32 %998, i32* %max, align 4
  br label %if.end.1170

if.end.1170:                                      ; preds = %if.then.1169, %for.body.1155
  %999 = load i32, i32* %k, align 4
  %idxprom1171 = sext i32 %999 to i64
  %1000 = load i32, i32* %cur, align 4
  %idxprom1172 = sext i32 %1000 to i64
  %1001 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %fwd, align 8
  %imx1173 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1001, i32 0, i32 2
  %1002 = load i32**, i32*** %imx1173, align 8
  %arrayidx1174 = getelementptr inbounds i32*, i32** %1002, i64 %idxprom1172
  %1003 = load i32*, i32** %arrayidx1174, align 8
  %arrayidx1175 = getelementptr inbounds i32, i32* %1003, i64 %idxprom1171
  %1004 = load i32, i32* %arrayidx1175, align 4
  %1005 = load i32, i32* %k, align 4
  %idxprom1176 = sext i32 %1005 to i64
  %1006 = load i32, i32* %cur, align 4
  %idxprom1177 = sext i32 %1006 to i64
  %1007 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %bck, align 8
  %imx1178 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1007, i32 0, i32 2
  %1008 = load i32**, i32*** %imx1178, align 8
  %arrayidx1179 = getelementptr inbounds i32*, i32** %1008, i64 %idxprom1177
  %1009 = load i32*, i32** %arrayidx1179, align 8
  %arrayidx1180 = getelementptr inbounds i32, i32* %1009, i64 %idxprom1176
  %1010 = load i32, i32* %arrayidx1180, align 4
  %add1181 = add nsw i32 %1004, %1010
  store i32 %add1181, i32* %sc, align 4
  %1011 = load i32, i32* %max, align 4
  %cmp1182 = icmp sgt i32 %add1181, %1011
  br i1 %cmp1182, label %if.then.1184, label %if.end.1185

if.then.1184:                                     ; preds = %if.end.1170
  %1012 = load i32, i32* %k, align 4
  store i32 %1012, i32* %k2, align 4
  store i8 3, i8* %t2, align 1
  %1013 = load i32, i32* %sc, align 4
  store i32 %1013, i32* %max, align 4
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.then.1184, %if.end.1170
  br label %for.inc.1186

for.inc.1186:                                     ; preds = %if.end.1185
  %1014 = load i32, i32* %k, align 4
  %inc1187 = add nsw i32 %1014, 1
  store i32 %inc1187, i32* %k, align 4
  br label %for.cond.1152

for.end.1188:                                     ; preds = %for.cond.1152
  %1015 = load i32, i32* %cur, align 4
  %idxprom1189 = sext i32 %1015 to i64
  %1016 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %fwd, align 8
  %xmx1190 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1016, i32 0, i32 0
  %1017 = load i32**, i32*** %xmx1190, align 8
  %arrayidx1191 = getelementptr inbounds i32*, i32** %1017, i64 %idxprom1189
  %1018 = load i32*, i32** %arrayidx1191, align 8
  %arrayidx1192 = getelementptr inbounds i32, i32* %1018, i64 4
  %1019 = load i32, i32* %arrayidx1192, align 4
  %1020 = load i32, i32* %cur, align 4
  %idxprom1193 = sext i32 %1020 to i64
  %1021 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %bck, align 8
  %xmx1194 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1021, i32 0, i32 0
  %1022 = load i32**, i32*** %xmx1194, align 8
  %arrayidx1195 = getelementptr inbounds i32*, i32** %1022, i64 %idxprom1193
  %1023 = load i32*, i32** %arrayidx1195, align 8
  %arrayidx1196 = getelementptr inbounds i32, i32* %1023, i64 4
  %1024 = load i32, i32* %arrayidx1196, align 4
  %add1197 = add nsw i32 %1019, %1024
  store i32 %add1197, i32* %sc, align 4
  %1025 = load i32, i32* %max, align 4
  %cmp1198 = icmp sgt i32 %add1197, %1025
  br i1 %cmp1198, label %if.then.1200, label %if.end.1201

if.then.1200:                                     ; preds = %for.end.1188
  store i32 1, i32* %k2, align 4
  store i8 5, i8* %t2, align 1
  %1026 = load i32, i32* %sc, align 4
  store i32 %1026, i32* %max, align 4
  br label %if.end.1201

if.end.1201:                                      ; preds = %if.then.1200, %for.end.1188
  %1027 = load i32, i32* %cur, align 4
  %idxprom1202 = sext i32 %1027 to i64
  %1028 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %fwd, align 8
  %xmx1203 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1028, i32 0, i32 0
  %1029 = load i32**, i32*** %xmx1203, align 8
  %arrayidx1204 = getelementptr inbounds i32*, i32** %1029, i64 %idxprom1202
  %1030 = load i32*, i32** %arrayidx1204, align 8
  %arrayidx1205 = getelementptr inbounds i32, i32* %1030, i64 2
  %1031 = load i32, i32* %arrayidx1205, align 4
  %1032 = load i32, i32* %cur, align 4
  %idxprom1206 = sext i32 %1032 to i64
  %1033 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %bck, align 8
  %xmx1207 = getelementptr inbounds %struct.dpmatrix_s, %struct.dpmatrix_s* %1033, i32 0, i32 0
  %1034 = load i32**, i32*** %xmx1207, align 8
  %arrayidx1208 = getelementptr inbounds i32*, i32** %1034, i64 %idxprom1206
  %1035 = load i32*, i32** %arrayidx1208, align 8
  %arrayidx1209 = getelementptr inbounds i32, i32* %1035, i64 2
  %1036 = load i32, i32* %arrayidx1209, align 4
  %add1210 = add nsw i32 %1031, %1036
  store i32 %add1210, i32* %sc, align 4
  %1037 = load i32, i32* %max, align 4
  %cmp1211 = icmp sgt i32 %add1210, %1037
  br i1 %cmp1211, label %if.then.1213, label %if.end.1215

if.then.1213:                                     ; preds = %if.end.1201
  %1038 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M1214 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1038, i32 0, i32 20
  %1039 = load i32, i32* %M1214, align 4
  store i32 %1039, i32* %k2, align 4
  store i8 8, i8* %t2, align 1
  %1040 = load i32, i32* %sc, align 4
  store i32 %1040, i32* %max, align 4
  br label %if.end.1215

if.end.1215:                                      ; preds = %if.then.1213, %if.end.1201
  %1041 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %fwd, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %1041)
  %1042 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %bck, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %1042)
  %1043 = load i32, i32* %k2, align 4
  %1044 = load i32*, i32** %ret_k2.addr, align 8
  store i32 %1043, i32* %1044, align 4
  %1045 = load i8, i8* %t2, align 1
  %1046 = load i8*, i8** %ret_t2.addr, align 8
  store i8 %1045, i8* %1046, align 1
  %1047 = load i32, i32* %s2, align 4
  %1048 = load i32*, i32** %ret_s2.addr, align 8
  store i32 %1047, i32* %1048, align 4
  %1049 = load i32, i32* %max, align 4
  %call1216 = call float @Scorify(i32 %1049)
  ret float %call1216
}

declare i8* @Statetype(i8 signext) #1

; Function Attrs: nounwind uwtable
define float @Plan7ESTViterbi(i8* %dsq, i32 %L, %struct.plan7_s* %hmm, %struct.dpmatrix_s** %ret_mx) #0 {
entry:
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %ret_mx.addr = alloca %struct.dpmatrix_s**, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sc = alloca i32, align 4
  %codon = alloca i32, align 4
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store %struct.dpmatrix_s** %ret_mx, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  %0 = load i32, i32* %L.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %1, i32 0, i32 20
  %2 = load i32, i32* %M, align 4
  %call = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 %add, i32 %2, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  store %struct.dpmatrix_s* %call, %struct.dpmatrix_s** %mx, align 8
  %3 = load i32**, i32*** %xmx, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %3, i64 0
  %4 = load i32*, i32** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 4
  store i32 0, i32* %arrayidx1, align 4
  %5 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %5, i32 0, i32 33
  %arrayidx2 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx2, i32 0, i64 0
  %6 = load i32, i32* %arrayidx3, align 4
  %7 = load i32**, i32*** %xmx, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %7, i64 0
  %8 = load i32*, i32** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %6, i32* %arrayidx5, align 4
  %9 = load i32**, i32*** %xmx, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 3
  store i32 -987654321, i32* %arrayidx7, align 4
  %11 = load i32**, i32*** %xmx, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %11, i64 0
  %12 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 -987654321, i32* %arrayidx9, align 4
  %13 = load i32**, i32*** %xmx, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %13, i64 0
  %14 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 -987654321, i32* %arrayidx11, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %k, align 4
  %16 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M12 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %16, i32 0, i32 20
  %17 = load i32, i32* %M12, align 4
  %cmp = icmp sle i32 %15, %17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %k, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load i32**, i32*** %dmx, align 8
  %arrayidx13 = getelementptr inbounds i32*, i32** %19, i64 0
  %20 = load i32*, i32** %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %20, i64 %idxprom
  store i32 -987654321, i32* %arrayidx14, align 4
  %21 = load i32, i32* %k, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load i32**, i32*** %imx, align 8
  %arrayidx16 = getelementptr inbounds i32*, i32** %22, i64 0
  %23 = load i32*, i32** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %23, i64 %idxprom15
  store i32 -987654321, i32* %arrayidx17, align 4
  %24 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load i32**, i32*** %mmx, align 8
  %arrayidx19 = getelementptr inbounds i32*, i32** %25, i64 0
  %26 = load i32*, i32** %arrayidx19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %26, i64 %idxprom18
  store i32 -987654321, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load i32**, i32*** %xmx, align 8
  %arrayidx21 = getelementptr inbounds i32*, i32** %28, i64 0
  %29 = load i32*, i32** %arrayidx21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %29, i64 4
  %30 = load i32, i32* %arrayidx22, align 4
  %31 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc23 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %31, i32 0, i32 33
  %arrayidx24 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc23, i32 0, i64 0
  %arrayidx25 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx24, i32 0, i64 1
  %32 = load i32, i32* %arrayidx25, align 4
  %add26 = add nsw i32 %30, %32
  %33 = load i32**, i32*** %xmx, align 8
  %arrayidx27 = getelementptr inbounds i32*, i32** %33, i64 1
  %34 = load i32*, i32** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 %add26, i32* %arrayidx28, align 4
  %35 = load i32**, i32*** %xmx, align 8
  %arrayidx29 = getelementptr inbounds i32*, i32** %35, i64 1
  %36 = load i32*, i32** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %36, i64 4
  %37 = load i32, i32* %arrayidx30, align 4
  %38 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc31 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %38, i32 0, i32 33
  %arrayidx32 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc31, i32 0, i64 0
  %arrayidx33 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx32, i32 0, i64 0
  %39 = load i32, i32* %arrayidx33, align 4
  %add34 = add nsw i32 %37, %39
  %40 = load i32**, i32*** %xmx, align 8
  %arrayidx35 = getelementptr inbounds i32*, i32** %40, i64 1
  %41 = load i32*, i32** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %add34, i32* %arrayidx36, align 4
  %42 = load i32**, i32*** %xmx, align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %42, i64 0
  %43 = load i32*, i32** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 -987654321, i32* %arrayidx38, align 4
  %44 = load i32**, i32*** %xmx, align 8
  %arrayidx39 = getelementptr inbounds i32*, i32** %44, i64 0
  %45 = load i32*, i32** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 -987654321, i32* %arrayidx40, align 4
  %46 = load i32**, i32*** %xmx, align 8
  %arrayidx41 = getelementptr inbounds i32*, i32** %46, i64 0
  %47 = load i32*, i32** %arrayidx41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 -987654321, i32* %arrayidx42, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.56, %for.end
  %48 = load i32, i32* %k, align 4
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M44 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %49, i32 0, i32 20
  %50 = load i32, i32* %M44, align 4
  %cmp45 = icmp sle i32 %48, %50
  br i1 %cmp45, label %for.body.46, label %for.end.58

for.body.46:                                      ; preds = %for.cond.43
  %51 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %51 to i64
  %52 = load i32**, i32*** %dmx, align 8
  %arrayidx48 = getelementptr inbounds i32*, i32** %52, i64 0
  %53 = load i32*, i32** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %53, i64 %idxprom47
  store i32 -987654321, i32* %arrayidx49, align 4
  %54 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load i32**, i32*** %imx, align 8
  %arrayidx51 = getelementptr inbounds i32*, i32** %55, i64 0
  %56 = load i32*, i32** %arrayidx51, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %56, i64 %idxprom50
  store i32 -987654321, i32* %arrayidx52, align 4
  %57 = load i32, i32* %k, align 4
  %idxprom53 = sext i32 %57 to i64
  %58 = load i32**, i32*** %mmx, align 8
  %arrayidx54 = getelementptr inbounds i32*, i32** %58, i64 0
  %59 = load i32*, i32** %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %59, i64 %idxprom53
  store i32 -987654321, i32* %arrayidx55, align 4
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.body.46
  %60 = load i32, i32* %k, align 4
  %inc57 = add nsw i32 %60, 1
  store i32 %inc57, i32* %k, align 4
  br label %for.cond.43

for.end.58:                                       ; preds = %for.cond.43
  store i32 2, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.723, %for.end.58
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %L.addr, align 4
  %cmp60 = icmp sle i32 %61, %62
  br i1 %cmp60, label %for.body.61, label %for.end.725

for.body.61:                                      ; preds = %for.cond.59
  %63 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %63 to i64
  %64 = load i32**, i32*** %dmx, align 8
  %arrayidx63 = getelementptr inbounds i32*, i32** %64, i64 %idxprom62
  %65 = load i32*, i32** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 -987654321, i32* %arrayidx64, align 4
  %66 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %66 to i64
  %67 = load i32**, i32*** %imx, align 8
  %arrayidx66 = getelementptr inbounds i32*, i32** %67, i64 %idxprom65
  %68 = load i32*, i32** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 -987654321, i32* %arrayidx67, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %69 to i64
  %70 = load i32**, i32*** %mmx, align 8
  %arrayidx69 = getelementptr inbounds i32*, i32** %70, i64 %idxprom68
  %71 = load i32*, i32** %arrayidx69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 -987654321, i32* %arrayidx70, align 4
  %72 = load i32, i32* %i, align 4
  %cmp71 = icmp sgt i32 %72, 2
  br i1 %cmp71, label %if.then, label %if.end.103

if.then:                                          ; preds = %for.body.61
  %73 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %73, 2
  %idxprom72 = sext i32 %sub to i64
  %74 = load i8*, i8** %dsq.addr, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %74, i64 %idxprom72
  %75 = load i8, i8* %arrayidx73, align 1
  %conv = sext i8 %75 to i32
  %cmp74 = icmp slt i32 %conv, 4
  br i1 %cmp74, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %76 = load i32, i32* %i, align 4
  %sub76 = sub nsw i32 %76, 1
  %idxprom77 = sext i32 %sub76 to i64
  %77 = load i8*, i8** %dsq.addr, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %77, i64 %idxprom77
  %78 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %78 to i32
  %cmp80 = icmp slt i32 %conv79, 4
  br i1 %cmp80, label %land.lhs.true.82, label %if.else

land.lhs.true.82:                                 ; preds = %land.lhs.true
  %79 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %79 to i64
  %80 = load i8*, i8** %dsq.addr, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %80, i64 %idxprom83
  %81 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %81 to i32
  %cmp86 = icmp slt i32 %conv85, 4
  br i1 %cmp86, label %if.then.88, label %if.else

if.then.88:                                       ; preds = %land.lhs.true.82
  %82 = load i32, i32* %i, align 4
  %sub89 = sub nsw i32 %82, 2
  %idxprom90 = sext i32 %sub89 to i64
  %83 = load i8*, i8** %dsq.addr, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %83, i64 %idxprom90
  %84 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %84 to i32
  %mul = mul nsw i32 %conv92, 16
  %85 = load i32, i32* %i, align 4
  %sub93 = sub nsw i32 %85, 1
  %idxprom94 = sext i32 %sub93 to i64
  %86 = load i8*, i8** %dsq.addr, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %86, i64 %idxprom94
  %87 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %87 to i32
  %mul97 = mul nsw i32 %conv96, 4
  %add98 = add nsw i32 %mul, %mul97
  %88 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %88 to i64
  %89 = load i8*, i8** %dsq.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %89, i64 %idxprom99
  %90 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %90 to i32
  %add102 = add nsw i32 %add98, %conv101
  store i32 %add102, i32* %codon, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.82, %land.lhs.true, %if.then
  store i32 64, i32* %codon, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.88
  br label %if.end.103

if.end.103:                                       ; preds = %if.end, %for.body.61
  store i32 1, i32* %k, align 4
  br label %for.cond.104

for.cond.104:                                     ; preds = %for.inc.593, %if.end.103
  %91 = load i32, i32* %k, align 4
  %92 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M105 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %92, i32 0, i32 20
  %93 = load i32, i32* %M105, align 4
  %cmp106 = icmp sle i32 %91, %93
  br i1 %cmp106, label %for.body.108, label %for.end.595

for.body.108:                                     ; preds = %for.cond.104
  %94 = load i32, i32* %i, align 4
  %cmp109 = icmp sgt i32 %94, 2
  br i1 %cmp109, label %if.then.111, label %if.end.203

if.then.111:                                      ; preds = %for.body.108
  %95 = load i32, i32* %k, align 4
  %sub112 = sub nsw i32 %95, 1
  %idxprom113 = sext i32 %sub112 to i64
  %96 = load i32, i32* %i, align 4
  %sub114 = sub nsw i32 %96, 3
  %idxprom115 = sext i32 %sub114 to i64
  %97 = load i32**, i32*** %mmx, align 8
  %arrayidx116 = getelementptr inbounds i32*, i32** %97, i64 %idxprom115
  %98 = load i32*, i32** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %98, i64 %idxprom113
  %99 = load i32, i32* %arrayidx117, align 4
  %100 = load i32, i32* %k, align 4
  %sub118 = sub nsw i32 %100, 1
  %idxprom119 = sext i32 %sub118 to i64
  %101 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %101, i32 0, i32 30
  %102 = load i32**, i32*** %tsc, align 8
  %arrayidx120 = getelementptr inbounds i32*, i32** %102, i64 0
  %103 = load i32*, i32** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %103, i64 %idxprom119
  %104 = load i32, i32* %arrayidx121, align 4
  %add122 = add nsw i32 %99, %104
  %105 = load i32, i32* %k, align 4
  %idxprom123 = sext i32 %105 to i64
  %106 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %106 to i64
  %107 = load i32**, i32*** %mmx, align 8
  %arrayidx125 = getelementptr inbounds i32*, i32** %107, i64 %idxprom124
  %108 = load i32*, i32** %arrayidx125, align 8
  %arrayidx126 = getelementptr inbounds i32, i32* %108, i64 %idxprom123
  store i32 %add122, i32* %arrayidx126, align 4
  %109 = load i32, i32* %k, align 4
  %sub127 = sub nsw i32 %109, 1
  %idxprom128 = sext i32 %sub127 to i64
  %110 = load i32, i32* %i, align 4
  %sub129 = sub nsw i32 %110, 3
  %idxprom130 = sext i32 %sub129 to i64
  %111 = load i32**, i32*** %imx, align 8
  %arrayidx131 = getelementptr inbounds i32*, i32** %111, i64 %idxprom130
  %112 = load i32*, i32** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %112, i64 %idxprom128
  %113 = load i32, i32* %arrayidx132, align 4
  %114 = load i32, i32* %k, align 4
  %sub133 = sub nsw i32 %114, 1
  %idxprom134 = sext i32 %sub133 to i64
  %115 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc135 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %115, i32 0, i32 30
  %116 = load i32**, i32*** %tsc135, align 8
  %arrayidx136 = getelementptr inbounds i32*, i32** %116, i64 3
  %117 = load i32*, i32** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i32, i32* %117, i64 %idxprom134
  %118 = load i32, i32* %arrayidx137, align 4
  %add138 = add nsw i32 %113, %118
  store i32 %add138, i32* %sc, align 4
  %119 = load i32, i32* %k, align 4
  %idxprom139 = sext i32 %119 to i64
  %120 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %120 to i64
  %121 = load i32**, i32*** %mmx, align 8
  %arrayidx141 = getelementptr inbounds i32*, i32** %121, i64 %idxprom140
  %122 = load i32*, i32** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i32, i32* %122, i64 %idxprom139
  %123 = load i32, i32* %arrayidx142, align 4
  %cmp143 = icmp sgt i32 %add138, %123
  br i1 %cmp143, label %if.then.145, label %if.end.150

if.then.145:                                      ; preds = %if.then.111
  %124 = load i32, i32* %sc, align 4
  %125 = load i32, i32* %k, align 4
  %idxprom146 = sext i32 %125 to i64
  %126 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %126 to i64
  %127 = load i32**, i32*** %mmx, align 8
  %arrayidx148 = getelementptr inbounds i32*, i32** %127, i64 %idxprom147
  %128 = load i32*, i32** %arrayidx148, align 8
  %arrayidx149 = getelementptr inbounds i32, i32* %128, i64 %idxprom146
  store i32 %124, i32* %arrayidx149, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.145, %if.then.111
  %129 = load i32, i32* %i, align 4
  %sub151 = sub nsw i32 %129, 3
  %idxprom152 = sext i32 %sub151 to i64
  %130 = load i32**, i32*** %xmx, align 8
  %arrayidx153 = getelementptr inbounds i32*, i32** %130, i64 %idxprom152
  %131 = load i32*, i32** %arrayidx153, align 8
  %arrayidx154 = getelementptr inbounds i32, i32* %131, i64 0
  %132 = load i32, i32* %arrayidx154, align 4
  %133 = load i32, i32* %k, align 4
  %idxprom155 = sext i32 %133 to i64
  %134 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %134, i32 0, i32 34
  %135 = load i32*, i32** %bsc, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %135, i64 %idxprom155
  %136 = load i32, i32* %arrayidx156, align 4
  %add157 = add nsw i32 %132, %136
  store i32 %add157, i32* %sc, align 4
  %137 = load i32, i32* %k, align 4
  %idxprom158 = sext i32 %137 to i64
  %138 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %138 to i64
  %139 = load i32**, i32*** %mmx, align 8
  %arrayidx160 = getelementptr inbounds i32*, i32** %139, i64 %idxprom159
  %140 = load i32*, i32** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i32, i32* %140, i64 %idxprom158
  %141 = load i32, i32* %arrayidx161, align 4
  %cmp162 = icmp sgt i32 %add157, %141
  br i1 %cmp162, label %if.then.164, label %if.end.169

if.then.164:                                      ; preds = %if.end.150
  %142 = load i32, i32* %sc, align 4
  %143 = load i32, i32* %k, align 4
  %idxprom165 = sext i32 %143 to i64
  %144 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %144 to i64
  %145 = load i32**, i32*** %mmx, align 8
  %arrayidx167 = getelementptr inbounds i32*, i32** %145, i64 %idxprom166
  %146 = load i32*, i32** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %146, i64 %idxprom165
  store i32 %142, i32* %arrayidx168, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.164, %if.end.150
  %147 = load i32, i32* %k, align 4
  %sub170 = sub nsw i32 %147, 1
  %idxprom171 = sext i32 %sub170 to i64
  %148 = load i32, i32* %i, align 4
  %sub172 = sub nsw i32 %148, 3
  %idxprom173 = sext i32 %sub172 to i64
  %149 = load i32**, i32*** %dmx, align 8
  %arrayidx174 = getelementptr inbounds i32*, i32** %149, i64 %idxprom173
  %150 = load i32*, i32** %arrayidx174, align 8
  %arrayidx175 = getelementptr inbounds i32, i32* %150, i64 %idxprom171
  %151 = load i32, i32* %arrayidx175, align 4
  %152 = load i32, i32* %k, align 4
  %sub176 = sub nsw i32 %152, 1
  %idxprom177 = sext i32 %sub176 to i64
  %153 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc178 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %153, i32 0, i32 30
  %154 = load i32**, i32*** %tsc178, align 8
  %arrayidx179 = getelementptr inbounds i32*, i32** %154, i64 5
  %155 = load i32*, i32** %arrayidx179, align 8
  %arrayidx180 = getelementptr inbounds i32, i32* %155, i64 %idxprom177
  %156 = load i32, i32* %arrayidx180, align 4
  %add181 = add nsw i32 %151, %156
  store i32 %add181, i32* %sc, align 4
  %157 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %157 to i64
  %158 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %158 to i64
  %159 = load i32**, i32*** %mmx, align 8
  %arrayidx184 = getelementptr inbounds i32*, i32** %159, i64 %idxprom183
  %160 = load i32*, i32** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %160, i64 %idxprom182
  %161 = load i32, i32* %arrayidx185, align 4
  %cmp186 = icmp sgt i32 %add181, %161
  br i1 %cmp186, label %if.then.188, label %if.end.193

if.then.188:                                      ; preds = %if.end.169
  %162 = load i32, i32* %sc, align 4
  %163 = load i32, i32* %k, align 4
  %idxprom189 = sext i32 %163 to i64
  %164 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %164 to i64
  %165 = load i32**, i32*** %mmx, align 8
  %arrayidx191 = getelementptr inbounds i32*, i32** %165, i64 %idxprom190
  %166 = load i32*, i32** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %166, i64 %idxprom189
  store i32 %162, i32* %arrayidx192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.188, %if.end.169
  %167 = load i32, i32* %k, align 4
  %idxprom194 = sext i32 %167 to i64
  %168 = load i32, i32* %codon, align 4
  %idxprom195 = sext i32 %168 to i64
  %169 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnam = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %169, i32 0, i32 41
  %170 = load i32**, i32*** %dnam, align 8
  %arrayidx196 = getelementptr inbounds i32*, i32** %170, i64 %idxprom195
  %171 = load i32*, i32** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %171, i64 %idxprom194
  %172 = load i32, i32* %arrayidx197, align 4
  %173 = load i32, i32* %k, align 4
  %idxprom198 = sext i32 %173 to i64
  %174 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %174 to i64
  %175 = load i32**, i32*** %mmx, align 8
  %arrayidx200 = getelementptr inbounds i32*, i32** %175, i64 %idxprom199
  %176 = load i32*, i32** %arrayidx200, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %176, i64 %idxprom198
  %177 = load i32, i32* %arrayidx201, align 4
  %add202 = add nsw i32 %177, %172
  store i32 %add202, i32* %arrayidx201, align 4
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.193, %for.body.108
  %178 = load i32, i32* %k, align 4
  %sub204 = sub nsw i32 %178, 1
  %idxprom205 = sext i32 %sub204 to i64
  %179 = load i32, i32* %i, align 4
  %sub206 = sub nsw i32 %179, 2
  %idxprom207 = sext i32 %sub206 to i64
  %180 = load i32**, i32*** %mmx, align 8
  %arrayidx208 = getelementptr inbounds i32*, i32** %180, i64 %idxprom207
  %181 = load i32*, i32** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds i32, i32* %181, i64 %idxprom205
  %182 = load i32, i32* %arrayidx209, align 4
  %183 = load i32, i32* %k, align 4
  %sub210 = sub nsw i32 %183, 1
  %idxprom211 = sext i32 %sub210 to i64
  %184 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc212 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %184, i32 0, i32 30
  %185 = load i32**, i32*** %tsc212, align 8
  %arrayidx213 = getelementptr inbounds i32*, i32** %185, i64 0
  %186 = load i32*, i32** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %186, i64 %idxprom211
  %187 = load i32, i32* %arrayidx214, align 4
  %add215 = add nsw i32 %182, %187
  %188 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %188, i32 0, i32 43
  %189 = load i32, i32* %dna2, align 4
  %add216 = add nsw i32 %add215, %189
  store i32 %add216, i32* %sc, align 4
  %190 = load i32, i32* %k, align 4
  %idxprom217 = sext i32 %190 to i64
  %191 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %191 to i64
  %192 = load i32**, i32*** %mmx, align 8
  %arrayidx219 = getelementptr inbounds i32*, i32** %192, i64 %idxprom218
  %193 = load i32*, i32** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %193, i64 %idxprom217
  %194 = load i32, i32* %arrayidx220, align 4
  %cmp221 = icmp sgt i32 %add216, %194
  br i1 %cmp221, label %if.then.223, label %if.end.228

if.then.223:                                      ; preds = %if.end.203
  %195 = load i32, i32* %sc, align 4
  %196 = load i32, i32* %k, align 4
  %idxprom224 = sext i32 %196 to i64
  %197 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %197 to i64
  %198 = load i32**, i32*** %mmx, align 8
  %arrayidx226 = getelementptr inbounds i32*, i32** %198, i64 %idxprom225
  %199 = load i32*, i32** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i32, i32* %199, i64 %idxprom224
  store i32 %195, i32* %arrayidx227, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.223, %if.end.203
  %200 = load i32, i32* %k, align 4
  %sub229 = sub nsw i32 %200, 1
  %idxprom230 = sext i32 %sub229 to i64
  %201 = load i32, i32* %i, align 4
  %sub231 = sub nsw i32 %201, 2
  %idxprom232 = sext i32 %sub231 to i64
  %202 = load i32**, i32*** %imx, align 8
  %arrayidx233 = getelementptr inbounds i32*, i32** %202, i64 %idxprom232
  %203 = load i32*, i32** %arrayidx233, align 8
  %arrayidx234 = getelementptr inbounds i32, i32* %203, i64 %idxprom230
  %204 = load i32, i32* %arrayidx234, align 4
  %205 = load i32, i32* %k, align 4
  %sub235 = sub nsw i32 %205, 1
  %idxprom236 = sext i32 %sub235 to i64
  %206 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc237 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %206, i32 0, i32 30
  %207 = load i32**, i32*** %tsc237, align 8
  %arrayidx238 = getelementptr inbounds i32*, i32** %207, i64 3
  %208 = load i32*, i32** %arrayidx238, align 8
  %arrayidx239 = getelementptr inbounds i32, i32* %208, i64 %idxprom236
  %209 = load i32, i32* %arrayidx239, align 4
  %add240 = add nsw i32 %204, %209
  %210 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2241 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %210, i32 0, i32 43
  %211 = load i32, i32* %dna2241, align 4
  %add242 = add nsw i32 %add240, %211
  store i32 %add242, i32* %sc, align 4
  %212 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %212 to i64
  %213 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %213 to i64
  %214 = load i32**, i32*** %mmx, align 8
  %arrayidx245 = getelementptr inbounds i32*, i32** %214, i64 %idxprom244
  %215 = load i32*, i32** %arrayidx245, align 8
  %arrayidx246 = getelementptr inbounds i32, i32* %215, i64 %idxprom243
  %216 = load i32, i32* %arrayidx246, align 4
  %cmp247 = icmp sgt i32 %add242, %216
  br i1 %cmp247, label %if.then.249, label %if.end.254

if.then.249:                                      ; preds = %if.end.228
  %217 = load i32, i32* %sc, align 4
  %218 = load i32, i32* %k, align 4
  %idxprom250 = sext i32 %218 to i64
  %219 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %219 to i64
  %220 = load i32**, i32*** %mmx, align 8
  %arrayidx252 = getelementptr inbounds i32*, i32** %220, i64 %idxprom251
  %221 = load i32*, i32** %arrayidx252, align 8
  %arrayidx253 = getelementptr inbounds i32, i32* %221, i64 %idxprom250
  store i32 %217, i32* %arrayidx253, align 4
  br label %if.end.254

if.end.254:                                       ; preds = %if.then.249, %if.end.228
  %222 = load i32, i32* %i, align 4
  %sub255 = sub nsw i32 %222, 2
  %idxprom256 = sext i32 %sub255 to i64
  %223 = load i32**, i32*** %xmx, align 8
  %arrayidx257 = getelementptr inbounds i32*, i32** %223, i64 %idxprom256
  %224 = load i32*, i32** %arrayidx257, align 8
  %arrayidx258 = getelementptr inbounds i32, i32* %224, i64 0
  %225 = load i32, i32* %arrayidx258, align 4
  %226 = load i32, i32* %k, align 4
  %idxprom259 = sext i32 %226 to i64
  %227 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc260 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %227, i32 0, i32 34
  %228 = load i32*, i32** %bsc260, align 8
  %arrayidx261 = getelementptr inbounds i32, i32* %228, i64 %idxprom259
  %229 = load i32, i32* %arrayidx261, align 4
  %add262 = add nsw i32 %225, %229
  %230 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2263 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %230, i32 0, i32 43
  %231 = load i32, i32* %dna2263, align 4
  %add264 = add nsw i32 %add262, %231
  store i32 %add264, i32* %sc, align 4
  %232 = load i32, i32* %k, align 4
  %idxprom265 = sext i32 %232 to i64
  %233 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %233 to i64
  %234 = load i32**, i32*** %mmx, align 8
  %arrayidx267 = getelementptr inbounds i32*, i32** %234, i64 %idxprom266
  %235 = load i32*, i32** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds i32, i32* %235, i64 %idxprom265
  %236 = load i32, i32* %arrayidx268, align 4
  %cmp269 = icmp sgt i32 %add264, %236
  br i1 %cmp269, label %if.then.271, label %if.end.276

if.then.271:                                      ; preds = %if.end.254
  %237 = load i32, i32* %sc, align 4
  %238 = load i32, i32* %k, align 4
  %idxprom272 = sext i32 %238 to i64
  %239 = load i32, i32* %i, align 4
  %idxprom273 = sext i32 %239 to i64
  %240 = load i32**, i32*** %mmx, align 8
  %arrayidx274 = getelementptr inbounds i32*, i32** %240, i64 %idxprom273
  %241 = load i32*, i32** %arrayidx274, align 8
  %arrayidx275 = getelementptr inbounds i32, i32* %241, i64 %idxprom272
  store i32 %237, i32* %arrayidx275, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.271, %if.end.254
  %242 = load i32, i32* %k, align 4
  %sub277 = sub nsw i32 %242, 1
  %idxprom278 = sext i32 %sub277 to i64
  %243 = load i32, i32* %i, align 4
  %sub279 = sub nsw i32 %243, 2
  %idxprom280 = sext i32 %sub279 to i64
  %244 = load i32**, i32*** %dmx, align 8
  %arrayidx281 = getelementptr inbounds i32*, i32** %244, i64 %idxprom280
  %245 = load i32*, i32** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %245, i64 %idxprom278
  %246 = load i32, i32* %arrayidx282, align 4
  %247 = load i32, i32* %k, align 4
  %sub283 = sub nsw i32 %247, 1
  %idxprom284 = sext i32 %sub283 to i64
  %248 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc285 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %248, i32 0, i32 30
  %249 = load i32**, i32*** %tsc285, align 8
  %arrayidx286 = getelementptr inbounds i32*, i32** %249, i64 5
  %250 = load i32*, i32** %arrayidx286, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %250, i64 %idxprom284
  %251 = load i32, i32* %arrayidx287, align 4
  %add288 = add nsw i32 %246, %251
  %252 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2289 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %252, i32 0, i32 43
  %253 = load i32, i32* %dna2289, align 4
  %add290 = add nsw i32 %add288, %253
  store i32 %add290, i32* %sc, align 4
  %254 = load i32, i32* %k, align 4
  %idxprom291 = sext i32 %254 to i64
  %255 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %255 to i64
  %256 = load i32**, i32*** %mmx, align 8
  %arrayidx293 = getelementptr inbounds i32*, i32** %256, i64 %idxprom292
  %257 = load i32*, i32** %arrayidx293, align 8
  %arrayidx294 = getelementptr inbounds i32, i32* %257, i64 %idxprom291
  %258 = load i32, i32* %arrayidx294, align 4
  %cmp295 = icmp sgt i32 %add290, %258
  br i1 %cmp295, label %if.then.297, label %if.end.302

if.then.297:                                      ; preds = %if.end.276
  %259 = load i32, i32* %sc, align 4
  %260 = load i32, i32* %k, align 4
  %idxprom298 = sext i32 %260 to i64
  %261 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %261 to i64
  %262 = load i32**, i32*** %mmx, align 8
  %arrayidx300 = getelementptr inbounds i32*, i32** %262, i64 %idxprom299
  %263 = load i32*, i32** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds i32, i32* %263, i64 %idxprom298
  store i32 %259, i32* %arrayidx301, align 4
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.297, %if.end.276
  %264 = load i32, i32* %i, align 4
  %cmp303 = icmp sgt i32 %264, 3
  br i1 %cmp303, label %if.then.305, label %if.end.405

if.then.305:                                      ; preds = %if.end.302
  %265 = load i32, i32* %k, align 4
  %sub306 = sub nsw i32 %265, 1
  %idxprom307 = sext i32 %sub306 to i64
  %266 = load i32, i32* %i, align 4
  %sub308 = sub nsw i32 %266, 4
  %idxprom309 = sext i32 %sub308 to i64
  %267 = load i32**, i32*** %mmx, align 8
  %arrayidx310 = getelementptr inbounds i32*, i32** %267, i64 %idxprom309
  %268 = load i32*, i32** %arrayidx310, align 8
  %arrayidx311 = getelementptr inbounds i32, i32* %268, i64 %idxprom307
  %269 = load i32, i32* %arrayidx311, align 4
  %270 = load i32, i32* %k, align 4
  %sub312 = sub nsw i32 %270, 1
  %idxprom313 = sext i32 %sub312 to i64
  %271 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc314 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %271, i32 0, i32 30
  %272 = load i32**, i32*** %tsc314, align 8
  %arrayidx315 = getelementptr inbounds i32*, i32** %272, i64 0
  %273 = load i32*, i32** %arrayidx315, align 8
  %arrayidx316 = getelementptr inbounds i32, i32* %273, i64 %idxprom313
  %274 = load i32, i32* %arrayidx316, align 4
  %add317 = add nsw i32 %269, %274
  %275 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %275, i32 0, i32 44
  %276 = load i32, i32* %dna4, align 4
  %add318 = add nsw i32 %add317, %276
  store i32 %add318, i32* %sc, align 4
  %277 = load i32, i32* %k, align 4
  %idxprom319 = sext i32 %277 to i64
  %278 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %278 to i64
  %279 = load i32**, i32*** %mmx, align 8
  %arrayidx321 = getelementptr inbounds i32*, i32** %279, i64 %idxprom320
  %280 = load i32*, i32** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %280, i64 %idxprom319
  %281 = load i32, i32* %arrayidx322, align 4
  %cmp323 = icmp sgt i32 %add318, %281
  br i1 %cmp323, label %if.then.325, label %if.end.330

if.then.325:                                      ; preds = %if.then.305
  %282 = load i32, i32* %sc, align 4
  %283 = load i32, i32* %k, align 4
  %idxprom326 = sext i32 %283 to i64
  %284 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %284 to i64
  %285 = load i32**, i32*** %mmx, align 8
  %arrayidx328 = getelementptr inbounds i32*, i32** %285, i64 %idxprom327
  %286 = load i32*, i32** %arrayidx328, align 8
  %arrayidx329 = getelementptr inbounds i32, i32* %286, i64 %idxprom326
  store i32 %282, i32* %arrayidx329, align 4
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.325, %if.then.305
  %287 = load i32, i32* %k, align 4
  %sub331 = sub nsw i32 %287, 1
  %idxprom332 = sext i32 %sub331 to i64
  %288 = load i32, i32* %i, align 4
  %sub333 = sub nsw i32 %288, 4
  %idxprom334 = sext i32 %sub333 to i64
  %289 = load i32**, i32*** %imx, align 8
  %arrayidx335 = getelementptr inbounds i32*, i32** %289, i64 %idxprom334
  %290 = load i32*, i32** %arrayidx335, align 8
  %arrayidx336 = getelementptr inbounds i32, i32* %290, i64 %idxprom332
  %291 = load i32, i32* %arrayidx336, align 4
  %292 = load i32, i32* %k, align 4
  %sub337 = sub nsw i32 %292, 1
  %idxprom338 = sext i32 %sub337 to i64
  %293 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc339 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %293, i32 0, i32 30
  %294 = load i32**, i32*** %tsc339, align 8
  %arrayidx340 = getelementptr inbounds i32*, i32** %294, i64 3
  %295 = load i32*, i32** %arrayidx340, align 8
  %arrayidx341 = getelementptr inbounds i32, i32* %295, i64 %idxprom338
  %296 = load i32, i32* %arrayidx341, align 4
  %add342 = add nsw i32 %291, %296
  %297 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4343 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %297, i32 0, i32 44
  %298 = load i32, i32* %dna4343, align 4
  %add344 = add nsw i32 %add342, %298
  store i32 %add344, i32* %sc, align 4
  %299 = load i32, i32* %k, align 4
  %idxprom345 = sext i32 %299 to i64
  %300 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %300 to i64
  %301 = load i32**, i32*** %mmx, align 8
  %arrayidx347 = getelementptr inbounds i32*, i32** %301, i64 %idxprom346
  %302 = load i32*, i32** %arrayidx347, align 8
  %arrayidx348 = getelementptr inbounds i32, i32* %302, i64 %idxprom345
  %303 = load i32, i32* %arrayidx348, align 4
  %cmp349 = icmp sgt i32 %add344, %303
  br i1 %cmp349, label %if.then.351, label %if.end.356

if.then.351:                                      ; preds = %if.end.330
  %304 = load i32, i32* %sc, align 4
  %305 = load i32, i32* %k, align 4
  %idxprom352 = sext i32 %305 to i64
  %306 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %306 to i64
  %307 = load i32**, i32*** %mmx, align 8
  %arrayidx354 = getelementptr inbounds i32*, i32** %307, i64 %idxprom353
  %308 = load i32*, i32** %arrayidx354, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %308, i64 %idxprom352
  store i32 %304, i32* %arrayidx355, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.351, %if.end.330
  %309 = load i32, i32* %i, align 4
  %sub357 = sub nsw i32 %309, 4
  %idxprom358 = sext i32 %sub357 to i64
  %310 = load i32**, i32*** %xmx, align 8
  %arrayidx359 = getelementptr inbounds i32*, i32** %310, i64 %idxprom358
  %311 = load i32*, i32** %arrayidx359, align 8
  %arrayidx360 = getelementptr inbounds i32, i32* %311, i64 0
  %312 = load i32, i32* %arrayidx360, align 4
  %313 = load i32, i32* %k, align 4
  %idxprom361 = sext i32 %313 to i64
  %314 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc362 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %314, i32 0, i32 34
  %315 = load i32*, i32** %bsc362, align 8
  %arrayidx363 = getelementptr inbounds i32, i32* %315, i64 %idxprom361
  %316 = load i32, i32* %arrayidx363, align 4
  %add364 = add nsw i32 %312, %316
  %317 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4365 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %317, i32 0, i32 44
  %318 = load i32, i32* %dna4365, align 4
  %add366 = add nsw i32 %add364, %318
  store i32 %add366, i32* %sc, align 4
  %319 = load i32, i32* %k, align 4
  %idxprom367 = sext i32 %319 to i64
  %320 = load i32, i32* %i, align 4
  %idxprom368 = sext i32 %320 to i64
  %321 = load i32**, i32*** %mmx, align 8
  %arrayidx369 = getelementptr inbounds i32*, i32** %321, i64 %idxprom368
  %322 = load i32*, i32** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds i32, i32* %322, i64 %idxprom367
  %323 = load i32, i32* %arrayidx370, align 4
  %cmp371 = icmp sgt i32 %add366, %323
  br i1 %cmp371, label %if.then.373, label %if.end.378

if.then.373:                                      ; preds = %if.end.356
  %324 = load i32, i32* %sc, align 4
  %325 = load i32, i32* %k, align 4
  %idxprom374 = sext i32 %325 to i64
  %326 = load i32, i32* %i, align 4
  %idxprom375 = sext i32 %326 to i64
  %327 = load i32**, i32*** %mmx, align 8
  %arrayidx376 = getelementptr inbounds i32*, i32** %327, i64 %idxprom375
  %328 = load i32*, i32** %arrayidx376, align 8
  %arrayidx377 = getelementptr inbounds i32, i32* %328, i64 %idxprom374
  store i32 %324, i32* %arrayidx377, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.373, %if.end.356
  %329 = load i32, i32* %k, align 4
  %sub379 = sub nsw i32 %329, 1
  %idxprom380 = sext i32 %sub379 to i64
  %330 = load i32, i32* %i, align 4
  %sub381 = sub nsw i32 %330, 4
  %idxprom382 = sext i32 %sub381 to i64
  %331 = load i32**, i32*** %dmx, align 8
  %arrayidx383 = getelementptr inbounds i32*, i32** %331, i64 %idxprom382
  %332 = load i32*, i32** %arrayidx383, align 8
  %arrayidx384 = getelementptr inbounds i32, i32* %332, i64 %idxprom380
  %333 = load i32, i32* %arrayidx384, align 4
  %334 = load i32, i32* %k, align 4
  %sub385 = sub nsw i32 %334, 1
  %idxprom386 = sext i32 %sub385 to i64
  %335 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc387 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %335, i32 0, i32 30
  %336 = load i32**, i32*** %tsc387, align 8
  %arrayidx388 = getelementptr inbounds i32*, i32** %336, i64 5
  %337 = load i32*, i32** %arrayidx388, align 8
  %arrayidx389 = getelementptr inbounds i32, i32* %337, i64 %idxprom386
  %338 = load i32, i32* %arrayidx389, align 4
  %add390 = add nsw i32 %333, %338
  %339 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4391 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %339, i32 0, i32 44
  %340 = load i32, i32* %dna4391, align 4
  %add392 = add nsw i32 %add390, %340
  store i32 %add392, i32* %sc, align 4
  %341 = load i32, i32* %k, align 4
  %idxprom393 = sext i32 %341 to i64
  %342 = load i32, i32* %i, align 4
  %idxprom394 = sext i32 %342 to i64
  %343 = load i32**, i32*** %mmx, align 8
  %arrayidx395 = getelementptr inbounds i32*, i32** %343, i64 %idxprom394
  %344 = load i32*, i32** %arrayidx395, align 8
  %arrayidx396 = getelementptr inbounds i32, i32* %344, i64 %idxprom393
  %345 = load i32, i32* %arrayidx396, align 4
  %cmp397 = icmp sgt i32 %add392, %345
  br i1 %cmp397, label %if.then.399, label %if.end.404

if.then.399:                                      ; preds = %if.end.378
  %346 = load i32, i32* %sc, align 4
  %347 = load i32, i32* %k, align 4
  %idxprom400 = sext i32 %347 to i64
  %348 = load i32, i32* %i, align 4
  %idxprom401 = sext i32 %348 to i64
  %349 = load i32**, i32*** %mmx, align 8
  %arrayidx402 = getelementptr inbounds i32*, i32** %349, i64 %idxprom401
  %350 = load i32*, i32** %arrayidx402, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %350, i64 %idxprom400
  store i32 %346, i32* %arrayidx403, align 4
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.399, %if.end.378
  br label %if.end.405

if.end.405:                                       ; preds = %if.end.404, %if.end.302
  %351 = load i32, i32* %k, align 4
  %sub406 = sub nsw i32 %351, 1
  %idxprom407 = sext i32 %sub406 to i64
  %352 = load i32, i32* %i, align 4
  %idxprom408 = sext i32 %352 to i64
  %353 = load i32**, i32*** %mmx, align 8
  %arrayidx409 = getelementptr inbounds i32*, i32** %353, i64 %idxprom408
  %354 = load i32*, i32** %arrayidx409, align 8
  %arrayidx410 = getelementptr inbounds i32, i32* %354, i64 %idxprom407
  %355 = load i32, i32* %arrayidx410, align 4
  %356 = load i32, i32* %k, align 4
  %sub411 = sub nsw i32 %356, 1
  %idxprom412 = sext i32 %sub411 to i64
  %357 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc413 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %357, i32 0, i32 30
  %358 = load i32**, i32*** %tsc413, align 8
  %arrayidx414 = getelementptr inbounds i32*, i32** %358, i64 2
  %359 = load i32*, i32** %arrayidx414, align 8
  %arrayidx415 = getelementptr inbounds i32, i32* %359, i64 %idxprom412
  %360 = load i32, i32* %arrayidx415, align 4
  %add416 = add nsw i32 %355, %360
  %361 = load i32, i32* %k, align 4
  %idxprom417 = sext i32 %361 to i64
  %362 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %362 to i64
  %363 = load i32**, i32*** %dmx, align 8
  %arrayidx419 = getelementptr inbounds i32*, i32** %363, i64 %idxprom418
  %364 = load i32*, i32** %arrayidx419, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %364, i64 %idxprom417
  store i32 %add416, i32* %arrayidx420, align 4
  %365 = load i32, i32* %k, align 4
  %sub421 = sub nsw i32 %365, 1
  %idxprom422 = sext i32 %sub421 to i64
  %366 = load i32, i32* %i, align 4
  %idxprom423 = sext i32 %366 to i64
  %367 = load i32**, i32*** %dmx, align 8
  %arrayidx424 = getelementptr inbounds i32*, i32** %367, i64 %idxprom423
  %368 = load i32*, i32** %arrayidx424, align 8
  %arrayidx425 = getelementptr inbounds i32, i32* %368, i64 %idxprom422
  %369 = load i32, i32* %arrayidx425, align 4
  %370 = load i32, i32* %k, align 4
  %sub426 = sub nsw i32 %370, 1
  %idxprom427 = sext i32 %sub426 to i64
  %371 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc428 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %371, i32 0, i32 30
  %372 = load i32**, i32*** %tsc428, align 8
  %arrayidx429 = getelementptr inbounds i32*, i32** %372, i64 6
  %373 = load i32*, i32** %arrayidx429, align 8
  %arrayidx430 = getelementptr inbounds i32, i32* %373, i64 %idxprom427
  %374 = load i32, i32* %arrayidx430, align 4
  %add431 = add nsw i32 %369, %374
  store i32 %add431, i32* %sc, align 4
  %375 = load i32, i32* %k, align 4
  %idxprom432 = sext i32 %375 to i64
  %376 = load i32, i32* %i, align 4
  %idxprom433 = sext i32 %376 to i64
  %377 = load i32**, i32*** %dmx, align 8
  %arrayidx434 = getelementptr inbounds i32*, i32** %377, i64 %idxprom433
  %378 = load i32*, i32** %arrayidx434, align 8
  %arrayidx435 = getelementptr inbounds i32, i32* %378, i64 %idxprom432
  %379 = load i32, i32* %arrayidx435, align 4
  %cmp436 = icmp sgt i32 %add431, %379
  br i1 %cmp436, label %if.then.438, label %if.end.443

if.then.438:                                      ; preds = %if.end.405
  %380 = load i32, i32* %sc, align 4
  %381 = load i32, i32* %k, align 4
  %idxprom439 = sext i32 %381 to i64
  %382 = load i32, i32* %i, align 4
  %idxprom440 = sext i32 %382 to i64
  %383 = load i32**, i32*** %dmx, align 8
  %arrayidx441 = getelementptr inbounds i32*, i32** %383, i64 %idxprom440
  %384 = load i32*, i32** %arrayidx441, align 8
  %arrayidx442 = getelementptr inbounds i32, i32* %384, i64 %idxprom439
  store i32 %380, i32* %arrayidx442, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.438, %if.end.405
  %385 = load i32, i32* %i, align 4
  %cmp444 = icmp sgt i32 %385, 2
  br i1 %cmp444, label %if.then.446, label %if.end.492

if.then.446:                                      ; preds = %if.end.443
  %386 = load i32, i32* %k, align 4
  %idxprom447 = sext i32 %386 to i64
  %387 = load i32, i32* %i, align 4
  %sub448 = sub nsw i32 %387, 3
  %idxprom449 = sext i32 %sub448 to i64
  %388 = load i32**, i32*** %mmx, align 8
  %arrayidx450 = getelementptr inbounds i32*, i32** %388, i64 %idxprom449
  %389 = load i32*, i32** %arrayidx450, align 8
  %arrayidx451 = getelementptr inbounds i32, i32* %389, i64 %idxprom447
  %390 = load i32, i32* %arrayidx451, align 4
  %391 = load i32, i32* %k, align 4
  %idxprom452 = sext i32 %391 to i64
  %392 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc453 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %392, i32 0, i32 30
  %393 = load i32**, i32*** %tsc453, align 8
  %arrayidx454 = getelementptr inbounds i32*, i32** %393, i64 1
  %394 = load i32*, i32** %arrayidx454, align 8
  %arrayidx455 = getelementptr inbounds i32, i32* %394, i64 %idxprom452
  %395 = load i32, i32* %arrayidx455, align 4
  %add456 = add nsw i32 %390, %395
  %396 = load i32, i32* %k, align 4
  %idxprom457 = sext i32 %396 to i64
  %397 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %397 to i64
  %398 = load i32**, i32*** %imx, align 8
  %arrayidx459 = getelementptr inbounds i32*, i32** %398, i64 %idxprom458
  %399 = load i32*, i32** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds i32, i32* %399, i64 %idxprom457
  store i32 %add456, i32* %arrayidx460, align 4
  %400 = load i32, i32* %k, align 4
  %idxprom461 = sext i32 %400 to i64
  %401 = load i32, i32* %i, align 4
  %sub462 = sub nsw i32 %401, 3
  %idxprom463 = sext i32 %sub462 to i64
  %402 = load i32**, i32*** %imx, align 8
  %arrayidx464 = getelementptr inbounds i32*, i32** %402, i64 %idxprom463
  %403 = load i32*, i32** %arrayidx464, align 8
  %arrayidx465 = getelementptr inbounds i32, i32* %403, i64 %idxprom461
  %404 = load i32, i32* %arrayidx465, align 4
  %405 = load i32, i32* %k, align 4
  %idxprom466 = sext i32 %405 to i64
  %406 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc467 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %406, i32 0, i32 30
  %407 = load i32**, i32*** %tsc467, align 8
  %arrayidx468 = getelementptr inbounds i32*, i32** %407, i64 4
  %408 = load i32*, i32** %arrayidx468, align 8
  %arrayidx469 = getelementptr inbounds i32, i32* %408, i64 %idxprom466
  %409 = load i32, i32* %arrayidx469, align 4
  %add470 = add nsw i32 %404, %409
  store i32 %add470, i32* %sc, align 4
  %410 = load i32, i32* %k, align 4
  %idxprom471 = sext i32 %410 to i64
  %411 = load i32, i32* %i, align 4
  %idxprom472 = sext i32 %411 to i64
  %412 = load i32**, i32*** %imx, align 8
  %arrayidx473 = getelementptr inbounds i32*, i32** %412, i64 %idxprom472
  %413 = load i32*, i32** %arrayidx473, align 8
  %arrayidx474 = getelementptr inbounds i32, i32* %413, i64 %idxprom471
  %414 = load i32, i32* %arrayidx474, align 4
  %cmp475 = icmp sgt i32 %add470, %414
  br i1 %cmp475, label %if.then.477, label %if.end.482

if.then.477:                                      ; preds = %if.then.446
  %415 = load i32, i32* %sc, align 4
  %416 = load i32, i32* %k, align 4
  %idxprom478 = sext i32 %416 to i64
  %417 = load i32, i32* %i, align 4
  %idxprom479 = sext i32 %417 to i64
  %418 = load i32**, i32*** %imx, align 8
  %arrayidx480 = getelementptr inbounds i32*, i32** %418, i64 %idxprom479
  %419 = load i32*, i32** %arrayidx480, align 8
  %arrayidx481 = getelementptr inbounds i32, i32* %419, i64 %idxprom478
  store i32 %415, i32* %arrayidx481, align 4
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.477, %if.then.446
  %420 = load i32, i32* %k, align 4
  %idxprom483 = sext i32 %420 to i64
  %421 = load i32, i32* %codon, align 4
  %idxprom484 = sext i32 %421 to i64
  %422 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dnai = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %422, i32 0, i32 42
  %423 = load i32**, i32*** %dnai, align 8
  %arrayidx485 = getelementptr inbounds i32*, i32** %423, i64 %idxprom484
  %424 = load i32*, i32** %arrayidx485, align 8
  %arrayidx486 = getelementptr inbounds i32, i32* %424, i64 %idxprom483
  %425 = load i32, i32* %arrayidx486, align 4
  %426 = load i32, i32* %k, align 4
  %idxprom487 = sext i32 %426 to i64
  %427 = load i32, i32* %i, align 4
  %idxprom488 = sext i32 %427 to i64
  %428 = load i32**, i32*** %imx, align 8
  %arrayidx489 = getelementptr inbounds i32*, i32** %428, i64 %idxprom488
  %429 = load i32*, i32** %arrayidx489, align 8
  %arrayidx490 = getelementptr inbounds i32, i32* %429, i64 %idxprom487
  %430 = load i32, i32* %arrayidx490, align 4
  %add491 = add nsw i32 %430, %425
  store i32 %add491, i32* %arrayidx490, align 4
  br label %if.end.492

if.end.492:                                       ; preds = %if.end.482, %if.end.443
  %431 = load i32, i32* %k, align 4
  %idxprom493 = sext i32 %431 to i64
  %432 = load i32, i32* %i, align 4
  %sub494 = sub nsw i32 %432, 2
  %idxprom495 = sext i32 %sub494 to i64
  %433 = load i32**, i32*** %mmx, align 8
  %arrayidx496 = getelementptr inbounds i32*, i32** %433, i64 %idxprom495
  %434 = load i32*, i32** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %434, i64 %idxprom493
  %435 = load i32, i32* %arrayidx497, align 4
  %436 = load i32, i32* %k, align 4
  %idxprom498 = sext i32 %436 to i64
  %437 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc499 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %437, i32 0, i32 30
  %438 = load i32**, i32*** %tsc499, align 8
  %arrayidx500 = getelementptr inbounds i32*, i32** %438, i64 1
  %439 = load i32*, i32** %arrayidx500, align 8
  %arrayidx501 = getelementptr inbounds i32, i32* %439, i64 %idxprom498
  %440 = load i32, i32* %arrayidx501, align 4
  %add502 = add nsw i32 %435, %440
  %441 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2503 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %441, i32 0, i32 43
  %442 = load i32, i32* %dna2503, align 4
  %add504 = add nsw i32 %add502, %442
  store i32 %add504, i32* %sc, align 4
  %443 = load i32, i32* %k, align 4
  %idxprom505 = sext i32 %443 to i64
  %444 = load i32, i32* %i, align 4
  %idxprom506 = sext i32 %444 to i64
  %445 = load i32**, i32*** %imx, align 8
  %arrayidx507 = getelementptr inbounds i32*, i32** %445, i64 %idxprom506
  %446 = load i32*, i32** %arrayidx507, align 8
  %arrayidx508 = getelementptr inbounds i32, i32* %446, i64 %idxprom505
  %447 = load i32, i32* %arrayidx508, align 4
  %cmp509 = icmp sgt i32 %add504, %447
  br i1 %cmp509, label %if.then.511, label %if.end.516

if.then.511:                                      ; preds = %if.end.492
  %448 = load i32, i32* %sc, align 4
  %449 = load i32, i32* %k, align 4
  %idxprom512 = sext i32 %449 to i64
  %450 = load i32, i32* %i, align 4
  %idxprom513 = sext i32 %450 to i64
  %451 = load i32**, i32*** %imx, align 8
  %arrayidx514 = getelementptr inbounds i32*, i32** %451, i64 %idxprom513
  %452 = load i32*, i32** %arrayidx514, align 8
  %arrayidx515 = getelementptr inbounds i32, i32* %452, i64 %idxprom512
  store i32 %448, i32* %arrayidx515, align 4
  br label %if.end.516

if.end.516:                                       ; preds = %if.then.511, %if.end.492
  %453 = load i32, i32* %k, align 4
  %idxprom517 = sext i32 %453 to i64
  %454 = load i32, i32* %i, align 4
  %sub518 = sub nsw i32 %454, 2
  %idxprom519 = sext i32 %sub518 to i64
  %455 = load i32**, i32*** %imx, align 8
  %arrayidx520 = getelementptr inbounds i32*, i32** %455, i64 %idxprom519
  %456 = load i32*, i32** %arrayidx520, align 8
  %arrayidx521 = getelementptr inbounds i32, i32* %456, i64 %idxprom517
  %457 = load i32, i32* %arrayidx521, align 4
  %458 = load i32, i32* %k, align 4
  %idxprom522 = sext i32 %458 to i64
  %459 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc523 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %459, i32 0, i32 30
  %460 = load i32**, i32*** %tsc523, align 8
  %arrayidx524 = getelementptr inbounds i32*, i32** %460, i64 4
  %461 = load i32*, i32** %arrayidx524, align 8
  %arrayidx525 = getelementptr inbounds i32, i32* %461, i64 %idxprom522
  %462 = load i32, i32* %arrayidx525, align 4
  %add526 = add nsw i32 %457, %462
  %463 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna2527 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %463, i32 0, i32 43
  %464 = load i32, i32* %dna2527, align 4
  %add528 = add nsw i32 %add526, %464
  store i32 %add528, i32* %sc, align 4
  %465 = load i32, i32* %k, align 4
  %idxprom529 = sext i32 %465 to i64
  %466 = load i32, i32* %i, align 4
  %idxprom530 = sext i32 %466 to i64
  %467 = load i32**, i32*** %imx, align 8
  %arrayidx531 = getelementptr inbounds i32*, i32** %467, i64 %idxprom530
  %468 = load i32*, i32** %arrayidx531, align 8
  %arrayidx532 = getelementptr inbounds i32, i32* %468, i64 %idxprom529
  %469 = load i32, i32* %arrayidx532, align 4
  %cmp533 = icmp sgt i32 %add528, %469
  br i1 %cmp533, label %if.then.535, label %if.end.540

if.then.535:                                      ; preds = %if.end.516
  %470 = load i32, i32* %sc, align 4
  %471 = load i32, i32* %k, align 4
  %idxprom536 = sext i32 %471 to i64
  %472 = load i32, i32* %i, align 4
  %idxprom537 = sext i32 %472 to i64
  %473 = load i32**, i32*** %imx, align 8
  %arrayidx538 = getelementptr inbounds i32*, i32** %473, i64 %idxprom537
  %474 = load i32*, i32** %arrayidx538, align 8
  %arrayidx539 = getelementptr inbounds i32, i32* %474, i64 %idxprom536
  store i32 %470, i32* %arrayidx539, align 4
  br label %if.end.540

if.end.540:                                       ; preds = %if.then.535, %if.end.516
  %475 = load i32, i32* %i, align 4
  %cmp541 = icmp sgt i32 %475, 4
  br i1 %cmp541, label %if.then.543, label %if.end.592

if.then.543:                                      ; preds = %if.end.540
  %476 = load i32, i32* %k, align 4
  %idxprom544 = sext i32 %476 to i64
  %477 = load i32, i32* %i, align 4
  %sub545 = sub nsw i32 %477, 4
  %idxprom546 = sext i32 %sub545 to i64
  %478 = load i32**, i32*** %mmx, align 8
  %arrayidx547 = getelementptr inbounds i32*, i32** %478, i64 %idxprom546
  %479 = load i32*, i32** %arrayidx547, align 8
  %arrayidx548 = getelementptr inbounds i32, i32* %479, i64 %idxprom544
  %480 = load i32, i32* %arrayidx548, align 4
  %481 = load i32, i32* %k, align 4
  %idxprom549 = sext i32 %481 to i64
  %482 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc550 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %482, i32 0, i32 30
  %483 = load i32**, i32*** %tsc550, align 8
  %arrayidx551 = getelementptr inbounds i32*, i32** %483, i64 1
  %484 = load i32*, i32** %arrayidx551, align 8
  %arrayidx552 = getelementptr inbounds i32, i32* %484, i64 %idxprom549
  %485 = load i32, i32* %arrayidx552, align 4
  %add553 = add nsw i32 %480, %485
  %486 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4554 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %486, i32 0, i32 44
  %487 = load i32, i32* %dna4554, align 4
  %add555 = add nsw i32 %add553, %487
  store i32 %add555, i32* %sc, align 4
  %488 = load i32, i32* %k, align 4
  %idxprom556 = sext i32 %488 to i64
  %489 = load i32, i32* %i, align 4
  %idxprom557 = sext i32 %489 to i64
  %490 = load i32**, i32*** %imx, align 8
  %arrayidx558 = getelementptr inbounds i32*, i32** %490, i64 %idxprom557
  %491 = load i32*, i32** %arrayidx558, align 8
  %arrayidx559 = getelementptr inbounds i32, i32* %491, i64 %idxprom556
  %492 = load i32, i32* %arrayidx559, align 4
  %cmp560 = icmp sgt i32 %add555, %492
  br i1 %cmp560, label %if.then.562, label %if.end.567

if.then.562:                                      ; preds = %if.then.543
  %493 = load i32, i32* %sc, align 4
  %494 = load i32, i32* %k, align 4
  %idxprom563 = sext i32 %494 to i64
  %495 = load i32, i32* %i, align 4
  %idxprom564 = sext i32 %495 to i64
  %496 = load i32**, i32*** %imx, align 8
  %arrayidx565 = getelementptr inbounds i32*, i32** %496, i64 %idxprom564
  %497 = load i32*, i32** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i32, i32* %497, i64 %idxprom563
  store i32 %493, i32* %arrayidx566, align 4
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.562, %if.then.543
  %498 = load i32, i32* %k, align 4
  %idxprom568 = sext i32 %498 to i64
  %499 = load i32, i32* %i, align 4
  %sub569 = sub nsw i32 %499, 4
  %idxprom570 = sext i32 %sub569 to i64
  %500 = load i32**, i32*** %imx, align 8
  %arrayidx571 = getelementptr inbounds i32*, i32** %500, i64 %idxprom570
  %501 = load i32*, i32** %arrayidx571, align 8
  %arrayidx572 = getelementptr inbounds i32, i32* %501, i64 %idxprom568
  %502 = load i32, i32* %arrayidx572, align 4
  %503 = load i32, i32* %k, align 4
  %idxprom573 = sext i32 %503 to i64
  %504 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc574 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %504, i32 0, i32 30
  %505 = load i32**, i32*** %tsc574, align 8
  %arrayidx575 = getelementptr inbounds i32*, i32** %505, i64 4
  %506 = load i32*, i32** %arrayidx575, align 8
  %arrayidx576 = getelementptr inbounds i32, i32* %506, i64 %idxprom573
  %507 = load i32, i32* %arrayidx576, align 4
  %add577 = add nsw i32 %502, %507
  %508 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %dna4578 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %508, i32 0, i32 44
  %509 = load i32, i32* %dna4578, align 4
  %add579 = add nsw i32 %add577, %509
  store i32 %add579, i32* %sc, align 4
  %510 = load i32, i32* %k, align 4
  %idxprom580 = sext i32 %510 to i64
  %511 = load i32, i32* %i, align 4
  %idxprom581 = sext i32 %511 to i64
  %512 = load i32**, i32*** %imx, align 8
  %arrayidx582 = getelementptr inbounds i32*, i32** %512, i64 %idxprom581
  %513 = load i32*, i32** %arrayidx582, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %513, i64 %idxprom580
  %514 = load i32, i32* %arrayidx583, align 4
  %cmp584 = icmp sgt i32 %add579, %514
  br i1 %cmp584, label %if.then.586, label %if.end.591

if.then.586:                                      ; preds = %if.end.567
  %515 = load i32, i32* %sc, align 4
  %516 = load i32, i32* %k, align 4
  %idxprom587 = sext i32 %516 to i64
  %517 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %517 to i64
  %518 = load i32**, i32*** %imx, align 8
  %arrayidx589 = getelementptr inbounds i32*, i32** %518, i64 %idxprom588
  %519 = load i32*, i32** %arrayidx589, align 8
  %arrayidx590 = getelementptr inbounds i32, i32* %519, i64 %idxprom587
  store i32 %515, i32* %arrayidx590, align 4
  br label %if.end.591

if.end.591:                                       ; preds = %if.then.586, %if.end.567
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %if.end.540
  br label %for.inc.593

for.inc.593:                                      ; preds = %if.end.592
  %520 = load i32, i32* %k, align 4
  %inc594 = add nsw i32 %520, 1
  store i32 %inc594, i32* %k, align 4
  br label %for.cond.104

for.end.595:                                      ; preds = %for.cond.104
  %521 = load i32, i32* %i, align 4
  %sub596 = sub nsw i32 %521, 1
  %idxprom597 = sext i32 %sub596 to i64
  %522 = load i32**, i32*** %xmx, align 8
  %arrayidx598 = getelementptr inbounds i32*, i32** %522, i64 %idxprom597
  %523 = load i32*, i32** %arrayidx598, align 8
  %arrayidx599 = getelementptr inbounds i32, i32* %523, i64 4
  %524 = load i32, i32* %arrayidx599, align 4
  %525 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc600 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %525, i32 0, i32 33
  %arrayidx601 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc600, i32 0, i64 0
  %arrayidx602 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx601, i32 0, i64 1
  %526 = load i32, i32* %arrayidx602, align 4
  %add603 = add nsw i32 %524, %526
  %527 = load i32, i32* %i, align 4
  %idxprom604 = sext i32 %527 to i64
  %528 = load i32**, i32*** %xmx, align 8
  %arrayidx605 = getelementptr inbounds i32*, i32** %528, i64 %idxprom604
  %529 = load i32*, i32** %arrayidx605, align 8
  %arrayidx606 = getelementptr inbounds i32, i32* %529, i64 4
  store i32 %add603, i32* %arrayidx606, align 4
  %530 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M607 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %530, i32 0, i32 20
  %531 = load i32, i32* %M607, align 4
  %idxprom608 = sext i32 %531 to i64
  %532 = load i32, i32* %i, align 4
  %idxprom609 = sext i32 %532 to i64
  %533 = load i32**, i32*** %dmx, align 8
  %arrayidx610 = getelementptr inbounds i32*, i32** %533, i64 %idxprom609
  %534 = load i32*, i32** %arrayidx610, align 8
  %arrayidx611 = getelementptr inbounds i32, i32* %534, i64 %idxprom608
  %535 = load i32, i32* %arrayidx611, align 4
  %536 = load i32, i32* %i, align 4
  %idxprom612 = sext i32 %536 to i64
  %537 = load i32**, i32*** %xmx, align 8
  %arrayidx613 = getelementptr inbounds i32*, i32** %537, i64 %idxprom612
  %538 = load i32*, i32** %arrayidx613, align 8
  %arrayidx614 = getelementptr inbounds i32, i32* %538, i64 1
  store i32 %535, i32* %arrayidx614, align 4
  store i32 1, i32* %k, align 4
  br label %for.cond.615

for.cond.615:                                     ; preds = %for.inc.637, %for.end.595
  %539 = load i32, i32* %k, align 4
  %540 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M616 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %540, i32 0, i32 20
  %541 = load i32, i32* %M616, align 4
  %cmp617 = icmp sle i32 %539, %541
  br i1 %cmp617, label %for.body.619, label %for.end.639

for.body.619:                                     ; preds = %for.cond.615
  %542 = load i32, i32* %k, align 4
  %idxprom620 = sext i32 %542 to i64
  %543 = load i32, i32* %i, align 4
  %idxprom621 = sext i32 %543 to i64
  %544 = load i32**, i32*** %mmx, align 8
  %arrayidx622 = getelementptr inbounds i32*, i32** %544, i64 %idxprom621
  %545 = load i32*, i32** %arrayidx622, align 8
  %arrayidx623 = getelementptr inbounds i32, i32* %545, i64 %idxprom620
  %546 = load i32, i32* %arrayidx623, align 4
  %547 = load i32, i32* %k, align 4
  %idxprom624 = sext i32 %547 to i64
  %548 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %548, i32 0, i32 35
  %549 = load i32*, i32** %esc, align 8
  %arrayidx625 = getelementptr inbounds i32, i32* %549, i64 %idxprom624
  %550 = load i32, i32* %arrayidx625, align 4
  %add626 = add nsw i32 %546, %550
  store i32 %add626, i32* %sc, align 4
  %551 = load i32, i32* %i, align 4
  %idxprom627 = sext i32 %551 to i64
  %552 = load i32**, i32*** %xmx, align 8
  %arrayidx628 = getelementptr inbounds i32*, i32** %552, i64 %idxprom627
  %553 = load i32*, i32** %arrayidx628, align 8
  %arrayidx629 = getelementptr inbounds i32, i32* %553, i64 1
  %554 = load i32, i32* %arrayidx629, align 4
  %cmp630 = icmp sgt i32 %add626, %554
  br i1 %cmp630, label %if.then.632, label %if.end.636

if.then.632:                                      ; preds = %for.body.619
  %555 = load i32, i32* %sc, align 4
  %556 = load i32, i32* %i, align 4
  %idxprom633 = sext i32 %556 to i64
  %557 = load i32**, i32*** %xmx, align 8
  %arrayidx634 = getelementptr inbounds i32*, i32** %557, i64 %idxprom633
  %558 = load i32*, i32** %arrayidx634, align 8
  %arrayidx635 = getelementptr inbounds i32, i32* %558, i64 1
  store i32 %555, i32* %arrayidx635, align 4
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.632, %for.body.619
  br label %for.inc.637

for.inc.637:                                      ; preds = %if.end.636
  %559 = load i32, i32* %k, align 4
  %inc638 = add nsw i32 %559, 1
  store i32 %inc638, i32* %k, align 4
  br label %for.cond.615

for.end.639:                                      ; preds = %for.cond.615
  %560 = load i32, i32* %i, align 4
  %sub640 = sub nsw i32 %560, 1
  %idxprom641 = sext i32 %sub640 to i64
  %561 = load i32**, i32*** %xmx, align 8
  %arrayidx642 = getelementptr inbounds i32*, i32** %561, i64 %idxprom641
  %562 = load i32*, i32** %arrayidx642, align 8
  %arrayidx643 = getelementptr inbounds i32, i32* %562, i64 3
  %563 = load i32, i32* %arrayidx643, align 4
  %564 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc644 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %564, i32 0, i32 33
  %arrayidx645 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc644, i32 0, i64 3
  %arrayidx646 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx645, i32 0, i64 1
  %565 = load i32, i32* %arrayidx646, align 4
  %add647 = add nsw i32 %563, %565
  %566 = load i32, i32* %i, align 4
  %idxprom648 = sext i32 %566 to i64
  %567 = load i32**, i32*** %xmx, align 8
  %arrayidx649 = getelementptr inbounds i32*, i32** %567, i64 %idxprom648
  %568 = load i32*, i32** %arrayidx649, align 8
  %arrayidx650 = getelementptr inbounds i32, i32* %568, i64 3
  store i32 %add647, i32* %arrayidx650, align 4
  %569 = load i32, i32* %i, align 4
  %idxprom651 = sext i32 %569 to i64
  %570 = load i32**, i32*** %xmx, align 8
  %arrayidx652 = getelementptr inbounds i32*, i32** %570, i64 %idxprom651
  %571 = load i32*, i32** %arrayidx652, align 8
  %arrayidx653 = getelementptr inbounds i32, i32* %571, i64 1
  %572 = load i32, i32* %arrayidx653, align 4
  %573 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc654 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %573, i32 0, i32 33
  %arrayidx655 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc654, i32 0, i64 1
  %arrayidx656 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx655, i32 0, i64 1
  %574 = load i32, i32* %arrayidx656, align 4
  %add657 = add nsw i32 %572, %574
  store i32 %add657, i32* %sc, align 4
  %575 = load i32, i32* %i, align 4
  %idxprom658 = sext i32 %575 to i64
  %576 = load i32**, i32*** %xmx, align 8
  %arrayidx659 = getelementptr inbounds i32*, i32** %576, i64 %idxprom658
  %577 = load i32*, i32** %arrayidx659, align 8
  %arrayidx660 = getelementptr inbounds i32, i32* %577, i64 3
  %578 = load i32, i32* %arrayidx660, align 4
  %cmp661 = icmp sgt i32 %add657, %578
  br i1 %cmp661, label %if.then.663, label %if.end.667

if.then.663:                                      ; preds = %for.end.639
  %579 = load i32, i32* %sc, align 4
  %580 = load i32, i32* %i, align 4
  %idxprom664 = sext i32 %580 to i64
  %581 = load i32**, i32*** %xmx, align 8
  %arrayidx665 = getelementptr inbounds i32*, i32** %581, i64 %idxprom664
  %582 = load i32*, i32** %arrayidx665, align 8
  %arrayidx666 = getelementptr inbounds i32, i32* %582, i64 3
  store i32 %579, i32* %arrayidx666, align 4
  br label %if.end.667

if.end.667:                                       ; preds = %if.then.663, %for.end.639
  %583 = load i32, i32* %i, align 4
  %idxprom668 = sext i32 %583 to i64
  %584 = load i32**, i32*** %xmx, align 8
  %arrayidx669 = getelementptr inbounds i32*, i32** %584, i64 %idxprom668
  %585 = load i32*, i32** %arrayidx669, align 8
  %arrayidx670 = getelementptr inbounds i32, i32* %585, i64 4
  %586 = load i32, i32* %arrayidx670, align 4
  %587 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc671 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %587, i32 0, i32 33
  %arrayidx672 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc671, i32 0, i64 0
  %arrayidx673 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx672, i32 0, i64 0
  %588 = load i32, i32* %arrayidx673, align 4
  %add674 = add nsw i32 %586, %588
  %589 = load i32, i32* %i, align 4
  %idxprom675 = sext i32 %589 to i64
  %590 = load i32**, i32*** %xmx, align 8
  %arrayidx676 = getelementptr inbounds i32*, i32** %590, i64 %idxprom675
  %591 = load i32*, i32** %arrayidx676, align 8
  %arrayidx677 = getelementptr inbounds i32, i32* %591, i64 0
  store i32 %add674, i32* %arrayidx677, align 4
  %592 = load i32, i32* %i, align 4
  %idxprom678 = sext i32 %592 to i64
  %593 = load i32**, i32*** %xmx, align 8
  %arrayidx679 = getelementptr inbounds i32*, i32** %593, i64 %idxprom678
  %594 = load i32*, i32** %arrayidx679, align 8
  %arrayidx680 = getelementptr inbounds i32, i32* %594, i64 3
  %595 = load i32, i32* %arrayidx680, align 4
  %596 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc681 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %596, i32 0, i32 33
  %arrayidx682 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc681, i32 0, i64 3
  %arrayidx683 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx682, i32 0, i64 0
  %597 = load i32, i32* %arrayidx683, align 4
  %add684 = add nsw i32 %595, %597
  store i32 %add684, i32* %sc, align 4
  %598 = load i32, i32* %i, align 4
  %idxprom685 = sext i32 %598 to i64
  %599 = load i32**, i32*** %xmx, align 8
  %arrayidx686 = getelementptr inbounds i32*, i32** %599, i64 %idxprom685
  %600 = load i32*, i32** %arrayidx686, align 8
  %arrayidx687 = getelementptr inbounds i32, i32* %600, i64 0
  %601 = load i32, i32* %arrayidx687, align 4
  %cmp688 = icmp sgt i32 %add684, %601
  br i1 %cmp688, label %if.then.690, label %if.end.694

if.then.690:                                      ; preds = %if.end.667
  %602 = load i32, i32* %sc, align 4
  %603 = load i32, i32* %i, align 4
  %idxprom691 = sext i32 %603 to i64
  %604 = load i32**, i32*** %xmx, align 8
  %arrayidx692 = getelementptr inbounds i32*, i32** %604, i64 %idxprom691
  %605 = load i32*, i32** %arrayidx692, align 8
  %arrayidx693 = getelementptr inbounds i32, i32* %605, i64 0
  store i32 %602, i32* %arrayidx693, align 4
  br label %if.end.694

if.end.694:                                       ; preds = %if.then.690, %if.end.667
  %606 = load i32, i32* %i, align 4
  %sub695 = sub nsw i32 %606, 1
  %idxprom696 = sext i32 %sub695 to i64
  %607 = load i32**, i32*** %xmx, align 8
  %arrayidx697 = getelementptr inbounds i32*, i32** %607, i64 %idxprom696
  %608 = load i32*, i32** %arrayidx697, align 8
  %arrayidx698 = getelementptr inbounds i32, i32* %608, i64 2
  %609 = load i32, i32* %arrayidx698, align 4
  %610 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc699 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %610, i32 0, i32 33
  %arrayidx700 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc699, i32 0, i64 2
  %arrayidx701 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx700, i32 0, i64 1
  %611 = load i32, i32* %arrayidx701, align 4
  %add702 = add nsw i32 %609, %611
  %612 = load i32, i32* %i, align 4
  %idxprom703 = sext i32 %612 to i64
  %613 = load i32**, i32*** %xmx, align 8
  %arrayidx704 = getelementptr inbounds i32*, i32** %613, i64 %idxprom703
  %614 = load i32*, i32** %arrayidx704, align 8
  %arrayidx705 = getelementptr inbounds i32, i32* %614, i64 2
  store i32 %add702, i32* %arrayidx705, align 4
  %615 = load i32, i32* %i, align 4
  %idxprom706 = sext i32 %615 to i64
  %616 = load i32**, i32*** %xmx, align 8
  %arrayidx707 = getelementptr inbounds i32*, i32** %616, i64 %idxprom706
  %617 = load i32*, i32** %arrayidx707, align 8
  %arrayidx708 = getelementptr inbounds i32, i32* %617, i64 1
  %618 = load i32, i32* %arrayidx708, align 4
  %619 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc709 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %619, i32 0, i32 33
  %arrayidx710 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc709, i32 0, i64 1
  %arrayidx711 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx710, i32 0, i64 0
  %620 = load i32, i32* %arrayidx711, align 4
  %add712 = add nsw i32 %618, %620
  store i32 %add712, i32* %sc, align 4
  %621 = load i32, i32* %i, align 4
  %idxprom713 = sext i32 %621 to i64
  %622 = load i32**, i32*** %xmx, align 8
  %arrayidx714 = getelementptr inbounds i32*, i32** %622, i64 %idxprom713
  %623 = load i32*, i32** %arrayidx714, align 8
  %arrayidx715 = getelementptr inbounds i32, i32* %623, i64 2
  %624 = load i32, i32* %arrayidx715, align 4
  %cmp716 = icmp sgt i32 %add712, %624
  br i1 %cmp716, label %if.then.718, label %if.end.722

if.then.718:                                      ; preds = %if.end.694
  %625 = load i32, i32* %sc, align 4
  %626 = load i32, i32* %i, align 4
  %idxprom719 = sext i32 %626 to i64
  %627 = load i32**, i32*** %xmx, align 8
  %arrayidx720 = getelementptr inbounds i32*, i32** %627, i64 %idxprom719
  %628 = load i32*, i32** %arrayidx720, align 8
  %arrayidx721 = getelementptr inbounds i32, i32* %628, i64 2
  store i32 %625, i32* %arrayidx721, align 4
  br label %if.end.722

if.end.722:                                       ; preds = %if.then.718, %if.end.694
  br label %for.inc.723

for.inc.723:                                      ; preds = %if.end.722
  %629 = load i32, i32* %i, align 4
  %inc724 = add nsw i32 %629, 1
  store i32 %inc724, i32* %i, align 4
  br label %for.cond.59

for.end.725:                                      ; preds = %for.cond.59
  %630 = load i32, i32* %L.addr, align 4
  %idxprom726 = sext i32 %630 to i64
  %631 = load i32**, i32*** %xmx, align 8
  %arrayidx727 = getelementptr inbounds i32*, i32** %631, i64 %idxprom726
  %632 = load i32*, i32** %arrayidx727, align 8
  %arrayidx728 = getelementptr inbounds i32, i32* %632, i64 2
  %633 = load i32, i32* %arrayidx728, align 4
  %634 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc729 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %634, i32 0, i32 33
  %arrayidx730 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc729, i32 0, i64 2
  %arrayidx731 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx730, i32 0, i64 0
  %635 = load i32, i32* %arrayidx731, align 4
  %add732 = add nsw i32 %633, %635
  store i32 %add732, i32* %sc, align 4
  %636 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  %cmp733 = icmp ne %struct.dpmatrix_s** %636, null
  br i1 %cmp733, label %if.then.735, label %if.else.736

if.then.735:                                      ; preds = %for.end.725
  %637 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  %638 = load %struct.dpmatrix_s**, %struct.dpmatrix_s*** %ret_mx.addr, align 8
  store %struct.dpmatrix_s* %637, %struct.dpmatrix_s** %638, align 8
  br label %if.end.737

if.else.736:                                      ; preds = %for.end.725
  %639 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %639)
  br label %if.end.737

if.end.737:                                       ; preds = %if.else.736, %if.then.735
  %640 = load i32, i32* %sc, align 4
  %call738 = call float @Scorify(i32 %640)
  ret float %call738
}

; Function Attrs: nounwind uwtable
define %struct.p7trace_s* @P7ViterbiAlignAlignment(%struct.msa_struct* %msa, %struct.plan7_s* %hmm) #0 {
entry:
  %msa.addr = alloca %struct.msa_struct*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %mx = alloca %struct.dpmatrix_s*, align 8
  %tb = alloca %struct.dpshadow_s*, align 8
  %tr = alloca %struct.p7trace_s*, align 8
  %xmx = alloca i32**, align 8
  %mmx = alloca i32**, align 8
  %imx = alloca i32**, align 8
  %dmx = alloca i32**, align 8
  %xtb = alloca i8**, align 8
  %mtb = alloca i8**, align 8
  %itb = alloca i8**, align 8
  %dtb = alloca i8**, align 8
  %con = alloca float**, align 8
  %mocc = alloca float*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %idx = alloca i32, align 4
  %sym = alloca i32, align 4
  %sc = alloca i32, align 4
  %denom = alloca float, align 4
  %cur = alloca i32, align 4
  %prv = alloca i32, align 4
  store %struct.msa_struct* %msa, %struct.msa_struct** %msa.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  %0 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %0, i32 0, i32 3
  %1 = load i32, i32* %alen, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 2044, i64 %mul)
  %2 = bitcast i8* %call to float**
  store float** %2, float*** %con, align 8
  %3 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen1 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %3, i32 0, i32 3
  %4 = load i32, i32* %alen1, align 4
  %add2 = add nsw i32 %4, 1
  %conv3 = sext i32 %add2 to i64
  %mul4 = mul i64 4, %conv3
  %call5 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 2045, i64 %mul4)
  %5 = bitcast i8* %call5 to float*
  store float* %5, float** %mocc, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen6 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %7, i32 0, i32 3
  %8 = load i32, i32* %alen6, align 4
  %cmp = icmp sle i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* @Alphabet_size, align 4
  %conv8 = sext i32 %9 to i64
  %mul9 = mul i64 4, %conv8
  %call10 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 2047, i64 %mul9)
  %10 = bitcast i8* %call10 to float*
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load float**, float*** %con, align 8
  %arrayidx = getelementptr inbounds float*, float** %12, i64 %idxprom
  store float* %10, float** %arrayidx, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load float**, float*** %con, align 8
  %arrayidx12 = getelementptr inbounds float*, float** %14, i64 %idxprom11
  %15 = load float*, float** %arrayidx12, align 8
  %16 = load i32, i32* @Alphabet_size, align 4
  call void @FSet(float* %15, i32 %16, float 0.000000e+00)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load float*, float** %mocc, align 8
  %arrayidx13 = getelementptr inbounds float, float* %18, i64 0
  store float -9.999000e+03, float* %arrayidx13, align 4
  %19 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %19, i32 0, i32 2
  %20 = load float*, float** %wgt, align 8
  %21 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %21, i32 0, i32 4
  %22 = load i32, i32* %nseq, align 4
  %call14 = call float @FSum(float* %20, i32 %22)
  store float %call14, float* %denom, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.97, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen16 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %24, i32 0, i32 3
  %25 = load i32, i32* %alen16, align 4
  %cmp17 = icmp sle i32 %23, %25
  br i1 %cmp17, label %for.body.19, label %for.end.99

for.body.19:                                      ; preds = %for.cond.15
  store i32 0, i32* %idx, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.85, %for.body.19
  %26 = load i32, i32* %idx, align 4
  %27 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %nseq21 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %27, i32 0, i32 4
  %28 = load i32, i32* %nseq21, align 4
  %cmp22 = icmp slt i32 %26, %28
  br i1 %cmp22, label %for.body.24, label %for.end.87

for.body.24:                                      ; preds = %for.cond.20
  %29 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %29, 1
  %idxprom25 = sext i32 %sub to i64
  %30 = load i32, i32* %idx, align 4
  %idxprom26 = sext i32 %30 to i64
  %31 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %31, i32 0, i32 0
  %32 = load i8**, i8*** %aseq, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %32, i64 %idxprom26
  %33 = load i8*, i8** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %33, i64 %idxprom25
  %34 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %34 to i32
  %cmp30 = icmp eq i32 %conv29, 32
  br i1 %cmp30, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.24
  %35 = load i32, i32* %i, align 4
  %sub32 = sub nsw i32 %35, 1
  %idxprom33 = sext i32 %sub32 to i64
  %36 = load i32, i32* %idx, align 4
  %idxprom34 = sext i32 %36 to i64
  %37 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq35 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %37, i32 0, i32 0
  %38 = load i8**, i8*** %aseq35, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %38, i64 %idxprom34
  %39 = load i8*, i8** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %39, i64 %idxprom33
  %40 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %40 to i32
  %cmp39 = icmp eq i32 %conv38, 46
  br i1 %cmp39, label %if.end, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %41 = load i32, i32* %i, align 4
  %sub42 = sub nsw i32 %41, 1
  %idxprom43 = sext i32 %sub42 to i64
  %42 = load i32, i32* %idx, align 4
  %idxprom44 = sext i32 %42 to i64
  %43 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq45 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %43, i32 0, i32 0
  %44 = load i8**, i8*** %aseq45, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %44, i64 %idxprom44
  %45 = load i8*, i8** %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %45, i64 %idxprom43
  %46 = load i8, i8* %arrayidx47, align 1
  %conv48 = sext i8 %46 to i32
  %cmp49 = icmp eq i32 %conv48, 95
  br i1 %cmp49, label %if.end, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.41
  %47 = load i32, i32* %i, align 4
  %sub52 = sub nsw i32 %47, 1
  %idxprom53 = sext i32 %sub52 to i64
  %48 = load i32, i32* %idx, align 4
  %idxprom54 = sext i32 %48 to i64
  %49 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq55 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %49, i32 0, i32 0
  %50 = load i8**, i8*** %aseq55, align 8
  %arrayidx56 = getelementptr inbounds i8*, i8** %50, i64 %idxprom54
  %51 = load i8*, i8** %arrayidx56, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %51, i64 %idxprom53
  %52 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %52 to i32
  %cmp59 = icmp eq i32 %conv58, 45
  br i1 %cmp59, label %if.end, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.51
  %53 = load i32, i32* %i, align 4
  %sub62 = sub nsw i32 %53, 1
  %idxprom63 = sext i32 %sub62 to i64
  %54 = load i32, i32* %idx, align 4
  %idxprom64 = sext i32 %54 to i64
  %55 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq65 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %55, i32 0, i32 0
  %56 = load i8**, i8*** %aseq65, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %56, i64 %idxprom64
  %57 = load i8*, i8** %arrayidx66, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %57, i64 %idxprom63
  %58 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %58 to i32
  %cmp69 = icmp eq i32 %conv68, 126
  br i1 %cmp69, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.61
  %59 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %59 to i64
  %60 = load float**, float*** %con, align 8
  %arrayidx72 = getelementptr inbounds float*, float** %60, i64 %idxprom71
  %61 = load float*, float** %arrayidx72, align 8
  %62 = load i32, i32* %i, align 4
  %sub73 = sub nsw i32 %62, 1
  %idxprom74 = sext i32 %sub73 to i64
  %63 = load i32, i32* %idx, align 4
  %idxprom75 = sext i32 %63 to i64
  %64 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %aseq76 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %64, i32 0, i32 0
  %65 = load i8**, i8*** %aseq76, align 8
  %arrayidx77 = getelementptr inbounds i8*, i8** %65, i64 %idxprom75
  %66 = load i8*, i8** %arrayidx77, align 8
  %arrayidx78 = getelementptr inbounds i8, i8* %66, i64 %idxprom74
  %67 = load i8, i8* %arrayidx78, align 1
  %conv79 = sext i8 %67 to i32
  %call80 = call i8* @strchr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @Alphabet, i32 0, i32 0), i32 %conv79) #5
  %sub.ptr.lhs.cast = ptrtoint i8* %call80 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint ([25 x i8]* @Alphabet to i64)
  %conv81 = trunc i64 %sub.ptr.sub to i8
  %68 = load i32, i32* %idx, align 4
  %idxprom82 = sext i32 %68 to i64
  %69 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %wgt83 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %69, i32 0, i32 2
  %70 = load float*, float** %wgt83, align 8
  %arrayidx84 = getelementptr inbounds float, float* %70, i64 %idxprom82
  %71 = load float, float* %arrayidx84, align 4
  call void @P7CountSymbol(float* %61, i8 signext %conv81, float %71)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.61, %lor.lhs.false.51, %lor.lhs.false.41, %lor.lhs.false, %for.body.24
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end
  %72 = load i32, i32* %idx, align 4
  %inc86 = add nsw i32 %72, 1
  store i32 %inc86, i32* %idx, align 4
  br label %for.cond.20

for.end.87:                                       ; preds = %for.cond.20
  %73 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %73 to i64
  %74 = load float**, float*** %con, align 8
  %arrayidx89 = getelementptr inbounds float*, float** %74, i64 %idxprom88
  %75 = load float*, float** %arrayidx89, align 8
  %76 = load i32, i32* @Alphabet_size, align 4
  %77 = load float, float* %denom, align 4
  %conv90 = fpext float %77 to double
  %div = fdiv double 1.000000e+00, %conv90
  %conv91 = fptrunc double %div to float
  call void @FScale(float* %75, i32 %76, float %conv91)
  %78 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %78 to i64
  %79 = load float**, float*** %con, align 8
  %arrayidx93 = getelementptr inbounds float*, float** %79, i64 %idxprom92
  %80 = load float*, float** %arrayidx93, align 8
  %81 = load i32, i32* @Alphabet_size, align 4
  %call94 = call float @FSum(float* %80, i32 %81)
  %82 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %82 to i64
  %83 = load float*, float** %mocc, align 8
  %arrayidx96 = getelementptr inbounds float, float* %83, i64 %idxprom95
  store float %call94, float* %arrayidx96, align 4
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.end.87
  %84 = load i32, i32* %i, align 4
  %inc98 = add nsw i32 %84, 1
  store i32 %inc98, i32* %i, align 4
  br label %for.cond.15

for.end.99:                                       ; preds = %for.cond.15
  %85 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 20
  %86 = load i32, i32* %M, align 4
  %call100 = call %struct.dpmatrix_s* @AllocPlan7Matrix(i32 2, i32 %86, i32*** %xmx, i32*** %mmx, i32*** %imx, i32*** %dmx)
  store %struct.dpmatrix_s* %call100, %struct.dpmatrix_s** %mx, align 8
  %87 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen101 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %87, i32 0, i32 3
  %88 = load i32, i32* %alen101, align 4
  %add102 = add nsw i32 %88, 1
  %89 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M103 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %89, i32 0, i32 20
  %90 = load i32, i32* %M103, align 4
  %call104 = call %struct.dpshadow_s* @AllocShadowMatrix(i32 %add102, i32 %90, i8*** %xtb, i8*** %mtb, i8*** %itb, i8*** %dtb)
  store %struct.dpshadow_s* %call104, %struct.dpshadow_s** %tb, align 8
  %91 = load i32**, i32*** %xmx, align 8
  %arrayidx105 = getelementptr inbounds i32*, i32** %91, i64 0
  %92 = load i32*, i32** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i32, i32* %92, i64 4
  store i32 0, i32* %arrayidx106, align 4
  %93 = load i8**, i8*** %xtb, align 8
  %arrayidx107 = getelementptr inbounds i8*, i8** %93, i64 0
  %94 = load i8*, i8** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %94, i64 4
  store i8 4, i8* %arrayidx108, align 1
  %95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 33
  %arrayidx109 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc, i32 0, i64 0
  %arrayidx110 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx109, i32 0, i64 0
  %96 = load i32, i32* %arrayidx110, align 4
  %97 = load i32**, i32*** %xmx, align 8
  %arrayidx111 = getelementptr inbounds i32*, i32** %97, i64 0
  %98 = load i32*, i32** %arrayidx111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %96, i32* %arrayidx112, align 4
  %99 = load i8**, i8*** %xtb, align 8
  %arrayidx113 = getelementptr inbounds i8*, i8** %99, i64 0
  %100 = load i8*, i8** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %100, i64 0
  store i8 5, i8* %arrayidx114, align 1
  %101 = load i32**, i32*** %xmx, align 8
  %arrayidx115 = getelementptr inbounds i32*, i32** %101, i64 0
  %102 = load i32*, i32** %arrayidx115, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %102, i64 3
  store i32 -987654321, i32* %arrayidx116, align 4
  %103 = load i32**, i32*** %xmx, align 8
  %arrayidx117 = getelementptr inbounds i32*, i32** %103, i64 0
  %104 = load i32*, i32** %arrayidx117, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %104, i64 2
  store i32 -987654321, i32* %arrayidx118, align 4
  %105 = load i32**, i32*** %xmx, align 8
  %arrayidx119 = getelementptr inbounds i32*, i32** %105, i64 0
  %106 = load i32*, i32** %arrayidx119, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 -987654321, i32* %arrayidx120, align 4
  %107 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %esrc = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %107, i32 0, i32 4
  %108 = load i32*, i32** %esrc, align 8
  %arrayidx121 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 0, i32* %arrayidx121, align 4
  %109 = load i8**, i8*** %xtb, align 8
  %arrayidx122 = getelementptr inbounds i8*, i8** %109, i64 0
  %110 = load i8*, i8** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %110, i64 3
  store i8 0, i8* %arrayidx123, align 1
  %111 = load i8**, i8*** %xtb, align 8
  %arrayidx124 = getelementptr inbounds i8*, i8** %111, i64 0
  %112 = load i8*, i8** %arrayidx124, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %112, i64 2
  store i8 0, i8* %arrayidx125, align 1
  store i32 0, i32* %k, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.149, %for.end.99
  %113 = load i32, i32* %k, align 4
  %114 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M127 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %114, i32 0, i32 20
  %115 = load i32, i32* %M127, align 4
  %cmp128 = icmp sle i32 %113, %115
  br i1 %cmp128, label %for.body.130, label %for.end.151

for.body.130:                                     ; preds = %for.cond.126
  %116 = load i32, i32* %k, align 4
  %idxprom131 = sext i32 %116 to i64
  %117 = load i32**, i32*** %dmx, align 8
  %arrayidx132 = getelementptr inbounds i32*, i32** %117, i64 0
  %118 = load i32*, i32** %arrayidx132, align 8
  %arrayidx133 = getelementptr inbounds i32, i32* %118, i64 %idxprom131
  store i32 -987654321, i32* %arrayidx133, align 4
  %119 = load i32, i32* %k, align 4
  %idxprom134 = sext i32 %119 to i64
  %120 = load i32**, i32*** %imx, align 8
  %arrayidx135 = getelementptr inbounds i32*, i32** %120, i64 0
  %121 = load i32*, i32** %arrayidx135, align 8
  %arrayidx136 = getelementptr inbounds i32, i32* %121, i64 %idxprom134
  store i32 -987654321, i32* %arrayidx136, align 4
  %122 = load i32, i32* %k, align 4
  %idxprom137 = sext i32 %122 to i64
  %123 = load i32**, i32*** %mmx, align 8
  %arrayidx138 = getelementptr inbounds i32*, i32** %123, i64 0
  %124 = load i32*, i32** %arrayidx138, align 8
  %arrayidx139 = getelementptr inbounds i32, i32* %124, i64 %idxprom137
  store i32 -987654321, i32* %arrayidx139, align 4
  %125 = load i32, i32* %k, align 4
  %idxprom140 = sext i32 %125 to i64
  %126 = load i8**, i8*** %dtb, align 8
  %arrayidx141 = getelementptr inbounds i8*, i8** %126, i64 0
  %127 = load i8*, i8** %arrayidx141, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %127, i64 %idxprom140
  store i8 0, i8* %arrayidx142, align 1
  %128 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %128 to i64
  %129 = load i8**, i8*** %itb, align 8
  %arrayidx144 = getelementptr inbounds i8*, i8** %129, i64 0
  %130 = load i8*, i8** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i8, i8* %130, i64 %idxprom143
  store i8 0, i8* %arrayidx145, align 1
  %131 = load i32, i32* %k, align 4
  %idxprom146 = sext i32 %131 to i64
  %132 = load i8**, i8*** %mtb, align 8
  %arrayidx147 = getelementptr inbounds i8*, i8** %132, i64 0
  %133 = load i8*, i8** %arrayidx147, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %133, i64 %idxprom146
  store i8 0, i8* %arrayidx148, align 1
  br label %for.inc.149

for.inc.149:                                      ; preds = %for.body.130
  %134 = load i32, i32* %k, align 4
  %inc150 = add nsw i32 %134, 1
  store i32 %inc150, i32* %k, align 4
  br label %for.cond.126

for.end.151:                                      ; preds = %for.cond.126
  store i32 1, i32* %i, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.835, %for.end.151
  %135 = load i32, i32* %i, align 4
  %136 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen153 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %136, i32 0, i32 3
  %137 = load i32, i32* %alen153, align 4
  %cmp154 = icmp sle i32 %135, %137
  br i1 %cmp154, label %for.body.156, label %for.end.837

for.body.156:                                     ; preds = %for.cond.152
  %138 = load i32, i32* %i, align 4
  %rem = srem i32 %138, 2
  store i32 %rem, i32* %cur, align 4
  %139 = load i32, i32* %cur, align 4
  %tobool = icmp ne i32 %139, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %prv, align 4
  %140 = load i32, i32* %cur, align 4
  %idxprom157 = sext i32 %140 to i64
  %141 = load i32**, i32*** %dmx, align 8
  %arrayidx158 = getelementptr inbounds i32*, i32** %141, i64 %idxprom157
  %142 = load i32*, i32** %arrayidx158, align 8
  %arrayidx159 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 -987654321, i32* %arrayidx159, align 4
  %143 = load i32, i32* %cur, align 4
  %idxprom160 = sext i32 %143 to i64
  %144 = load i32**, i32*** %imx, align 8
  %arrayidx161 = getelementptr inbounds i32*, i32** %144, i64 %idxprom160
  %145 = load i32*, i32** %arrayidx161, align 8
  %arrayidx162 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 -987654321, i32* %arrayidx162, align 4
  %146 = load i32, i32* %cur, align 4
  %idxprom163 = sext i32 %146 to i64
  %147 = load i32**, i32*** %mmx, align 8
  %arrayidx164 = getelementptr inbounds i32*, i32** %147, i64 %idxprom163
  %148 = load i32*, i32** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i32, i32* %148, i64 0
  store i32 -987654321, i32* %arrayidx165, align 4
  %149 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %149 to i64
  %150 = load i8**, i8*** %dtb, align 8
  %arrayidx167 = getelementptr inbounds i8*, i8** %150, i64 %idxprom166
  %151 = load i8*, i8** %arrayidx167, align 8
  %arrayidx168 = getelementptr inbounds i8, i8* %151, i64 0
  store i8 0, i8* %arrayidx168, align 1
  %152 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %152 to i64
  %153 = load i8**, i8*** %itb, align 8
  %arrayidx170 = getelementptr inbounds i8*, i8** %153, i64 %idxprom169
  %154 = load i8*, i8** %arrayidx170, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %154, i64 0
  store i8 0, i8* %arrayidx171, align 1
  %155 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %155 to i64
  %156 = load i8**, i8*** %mtb, align 8
  %arrayidx173 = getelementptr inbounds i8*, i8** %156, i64 %idxprom172
  %157 = load i8*, i8** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %157, i64 0
  store i8 0, i8* %arrayidx174, align 1
  store i32 1, i32* %k, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.633, %for.body.156
  %158 = load i32, i32* %k, align 4
  %159 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M176 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %159, i32 0, i32 20
  %160 = load i32, i32* %M176, align 4
  %cmp177 = icmp sle i32 %158, %160
  br i1 %cmp177, label %for.body.179, label %for.end.635

for.body.179:                                     ; preds = %for.cond.175
  %161 = load i32, i32* %k, align 4
  %idxprom180 = sext i32 %161 to i64
  %162 = load i32, i32* %cur, align 4
  %idxprom181 = sext i32 %162 to i64
  %163 = load i32**, i32*** %mmx, align 8
  %arrayidx182 = getelementptr inbounds i32*, i32** %163, i64 %idxprom181
  %164 = load i32*, i32** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds i32, i32* %164, i64 %idxprom180
  store i32 -987654321, i32* %arrayidx183, align 4
  %165 = load i32, i32* %k, align 4
  %idxprom184 = sext i32 %165 to i64
  %166 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %166 to i64
  %167 = load i8**, i8*** %mtb, align 8
  %arrayidx186 = getelementptr inbounds i8*, i8** %167, i64 %idxprom185
  %168 = load i8*, i8** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %168, i64 %idxprom184
  store i8 0, i8* %arrayidx187, align 1
  %169 = load i32, i32* %k, align 4
  %sub188 = sub nsw i32 %169, 1
  %idxprom189 = sext i32 %sub188 to i64
  %170 = load i32, i32* %prv, align 4
  %idxprom190 = sext i32 %170 to i64
  %171 = load i32**, i32*** %mmx, align 8
  %arrayidx191 = getelementptr inbounds i32*, i32** %171, i64 %idxprom190
  %172 = load i32*, i32** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds i32, i32* %172, i64 %idxprom189
  %173 = load i32, i32* %arrayidx192, align 4
  %cmp193 = icmp sgt i32 %173, -987654321
  br i1 %cmp193, label %land.lhs.true, label %if.end.228

land.lhs.true:                                    ; preds = %for.body.179
  %174 = load i32, i32* %k, align 4
  %sub195 = sub nsw i32 %174, 1
  %idxprom196 = sext i32 %sub195 to i64
  %175 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %175, i32 0, i32 30
  %176 = load i32**, i32*** %tsc, align 8
  %arrayidx197 = getelementptr inbounds i32*, i32** %176, i64 0
  %177 = load i32*, i32** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds i32, i32* %177, i64 %idxprom196
  %178 = load i32, i32* %arrayidx198, align 4
  %cmp199 = icmp sgt i32 %178, -987654321
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.228

land.lhs.true.201:                                ; preds = %land.lhs.true
  %179 = load i32, i32* %k, align 4
  %sub202 = sub nsw i32 %179, 1
  %idxprom203 = sext i32 %sub202 to i64
  %180 = load i32, i32* %prv, align 4
  %idxprom204 = sext i32 %180 to i64
  %181 = load i32**, i32*** %mmx, align 8
  %arrayidx205 = getelementptr inbounds i32*, i32** %181, i64 %idxprom204
  %182 = load i32*, i32** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds i32, i32* %182, i64 %idxprom203
  %183 = load i32, i32* %arrayidx206, align 4
  %184 = load i32, i32* %k, align 4
  %sub207 = sub nsw i32 %184, 1
  %idxprom208 = sext i32 %sub207 to i64
  %185 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc209 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %185, i32 0, i32 30
  %186 = load i32**, i32*** %tsc209, align 8
  %arrayidx210 = getelementptr inbounds i32*, i32** %186, i64 0
  %187 = load i32*, i32** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i32, i32* %187, i64 %idxprom208
  %188 = load i32, i32* %arrayidx211, align 4
  %add212 = add nsw i32 %183, %188
  store i32 %add212, i32* %sc, align 4
  %189 = load i32, i32* %k, align 4
  %idxprom213 = sext i32 %189 to i64
  %190 = load i32, i32* %cur, align 4
  %idxprom214 = sext i32 %190 to i64
  %191 = load i32**, i32*** %mmx, align 8
  %arrayidx215 = getelementptr inbounds i32*, i32** %191, i64 %idxprom214
  %192 = load i32*, i32** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %192, i64 %idxprom213
  %193 = load i32, i32* %arrayidx216, align 4
  %cmp217 = icmp sgt i32 %add212, %193
  br i1 %cmp217, label %if.then.219, label %if.end.228

if.then.219:                                      ; preds = %land.lhs.true.201
  %194 = load i32, i32* %sc, align 4
  %195 = load i32, i32* %k, align 4
  %idxprom220 = sext i32 %195 to i64
  %196 = load i32, i32* %cur, align 4
  %idxprom221 = sext i32 %196 to i64
  %197 = load i32**, i32*** %mmx, align 8
  %arrayidx222 = getelementptr inbounds i32*, i32** %197, i64 %idxprom221
  %198 = load i32*, i32** %arrayidx222, align 8
  %arrayidx223 = getelementptr inbounds i32, i32* %198, i64 %idxprom220
  store i32 %194, i32* %arrayidx223, align 4
  %199 = load i32, i32* %k, align 4
  %idxprom224 = sext i32 %199 to i64
  %200 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %200 to i64
  %201 = load i8**, i8*** %mtb, align 8
  %arrayidx226 = getelementptr inbounds i8*, i8** %201, i64 %idxprom225
  %202 = load i8*, i8** %arrayidx226, align 8
  %arrayidx227 = getelementptr inbounds i8, i8* %202, i64 %idxprom224
  store i8 1, i8* %arrayidx227, align 1
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.219, %land.lhs.true.201, %land.lhs.true, %for.body.179
  %203 = load i32, i32* %k, align 4
  %sub229 = sub nsw i32 %203, 1
  %idxprom230 = sext i32 %sub229 to i64
  %204 = load i32, i32* %prv, align 4
  %idxprom231 = sext i32 %204 to i64
  %205 = load i32**, i32*** %imx, align 8
  %arrayidx232 = getelementptr inbounds i32*, i32** %205, i64 %idxprom231
  %206 = load i32*, i32** %arrayidx232, align 8
  %arrayidx233 = getelementptr inbounds i32, i32* %206, i64 %idxprom230
  %207 = load i32, i32* %arrayidx233, align 4
  %cmp234 = icmp sgt i32 %207, -987654321
  br i1 %cmp234, label %land.lhs.true.236, label %if.end.278

land.lhs.true.236:                                ; preds = %if.end.228
  %208 = load i32, i32* %k, align 4
  %sub237 = sub nsw i32 %208, 1
  %idxprom238 = sext i32 %sub237 to i64
  %209 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc239 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %209, i32 0, i32 30
  %210 = load i32**, i32*** %tsc239, align 8
  %arrayidx240 = getelementptr inbounds i32*, i32** %210, i64 3
  %211 = load i32*, i32** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds i32, i32* %211, i64 %idxprom238
  %212 = load i32, i32* %arrayidx241, align 4
  %cmp242 = icmp sgt i32 %212, -987654321
  br i1 %cmp242, label %land.lhs.true.244, label %if.end.278

land.lhs.true.244:                                ; preds = %land.lhs.true.236
  %213 = load i32, i32* %k, align 4
  %sub245 = sub nsw i32 %213, 1
  %idxprom246 = sext i32 %sub245 to i64
  %214 = load i32, i32* %prv, align 4
  %idxprom247 = sext i32 %214 to i64
  %215 = load i32**, i32*** %imx, align 8
  %arrayidx248 = getelementptr inbounds i32*, i32** %215, i64 %idxprom247
  %216 = load i32*, i32** %arrayidx248, align 8
  %arrayidx249 = getelementptr inbounds i32, i32* %216, i64 %idxprom246
  %217 = load i32, i32* %arrayidx249, align 4
  %conv250 = sitofp i32 %217 to float
  %218 = load i32, i32* %k, align 4
  %sub251 = sub nsw i32 %218, 1
  %idxprom252 = sext i32 %sub251 to i64
  %219 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc253 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %219, i32 0, i32 30
  %220 = load i32**, i32*** %tsc253, align 8
  %arrayidx254 = getelementptr inbounds i32*, i32** %220, i64 3
  %221 = load i32*, i32** %arrayidx254, align 8
  %arrayidx255 = getelementptr inbounds i32, i32* %221, i64 %idxprom252
  %222 = load i32, i32* %arrayidx255, align 4
  %conv256 = sitofp i32 %222 to float
  %223 = load i32, i32* %i, align 4
  %sub257 = sub nsw i32 %223, 1
  %idxprom258 = sext i32 %sub257 to i64
  %224 = load float*, float** %mocc, align 8
  %arrayidx259 = getelementptr inbounds float, float* %224, i64 %idxprom258
  %225 = load float, float* %arrayidx259, align 4
  %mul260 = fmul float %conv256, %225
  %add261 = fadd float %conv250, %mul260
  %conv262 = fptosi float %add261 to i32
  store i32 %conv262, i32* %sc, align 4
  %226 = load i32, i32* %k, align 4
  %idxprom263 = sext i32 %226 to i64
  %227 = load i32, i32* %cur, align 4
  %idxprom264 = sext i32 %227 to i64
  %228 = load i32**, i32*** %mmx, align 8
  %arrayidx265 = getelementptr inbounds i32*, i32** %228, i64 %idxprom264
  %229 = load i32*, i32** %arrayidx265, align 8
  %arrayidx266 = getelementptr inbounds i32, i32* %229, i64 %idxprom263
  %230 = load i32, i32* %arrayidx266, align 4
  %cmp267 = icmp sgt i32 %conv262, %230
  br i1 %cmp267, label %if.then.269, label %if.end.278

if.then.269:                                      ; preds = %land.lhs.true.244
  %231 = load i32, i32* %sc, align 4
  %232 = load i32, i32* %k, align 4
  %idxprom270 = sext i32 %232 to i64
  %233 = load i32, i32* %cur, align 4
  %idxprom271 = sext i32 %233 to i64
  %234 = load i32**, i32*** %mmx, align 8
  %arrayidx272 = getelementptr inbounds i32*, i32** %234, i64 %idxprom271
  %235 = load i32*, i32** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %235, i64 %idxprom270
  store i32 %231, i32* %arrayidx273, align 4
  %236 = load i32, i32* %k, align 4
  %idxprom274 = sext i32 %236 to i64
  %237 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %237 to i64
  %238 = load i8**, i8*** %mtb, align 8
  %arrayidx276 = getelementptr inbounds i8*, i8** %238, i64 %idxprom275
  %239 = load i8*, i8** %arrayidx276, align 8
  %arrayidx277 = getelementptr inbounds i8, i8* %239, i64 %idxprom274
  store i8 3, i8* %arrayidx277, align 1
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.269, %land.lhs.true.244, %land.lhs.true.236, %if.end.228
  %240 = load i32, i32* %prv, align 4
  %idxprom279 = sext i32 %240 to i64
  %241 = load i32**, i32*** %xmx, align 8
  %arrayidx280 = getelementptr inbounds i32*, i32** %241, i64 %idxprom279
  %242 = load i32*, i32** %arrayidx280, align 8
  %arrayidx281 = getelementptr inbounds i32, i32* %242, i64 0
  %243 = load i32, i32* %arrayidx281, align 4
  %244 = load i32, i32* %k, align 4
  %idxprom282 = sext i32 %244 to i64
  %245 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %245, i32 0, i32 34
  %246 = load i32*, i32** %bsc, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %246, i64 %idxprom282
  %247 = load i32, i32* %arrayidx283, align 4
  %add284 = add nsw i32 %243, %247
  store i32 %add284, i32* %sc, align 4
  %248 = load i32, i32* %k, align 4
  %idxprom285 = sext i32 %248 to i64
  %249 = load i32, i32* %cur, align 4
  %idxprom286 = sext i32 %249 to i64
  %250 = load i32**, i32*** %mmx, align 8
  %arrayidx287 = getelementptr inbounds i32*, i32** %250, i64 %idxprom286
  %251 = load i32*, i32** %arrayidx287, align 8
  %arrayidx288 = getelementptr inbounds i32, i32* %251, i64 %idxprom285
  %252 = load i32, i32* %arrayidx288, align 4
  %cmp289 = icmp sgt i32 %add284, %252
  br i1 %cmp289, label %if.then.291, label %if.end.300

if.then.291:                                      ; preds = %if.end.278
  %253 = load i32, i32* %sc, align 4
  %254 = load i32, i32* %k, align 4
  %idxprom292 = sext i32 %254 to i64
  %255 = load i32, i32* %cur, align 4
  %idxprom293 = sext i32 %255 to i64
  %256 = load i32**, i32*** %mmx, align 8
  %arrayidx294 = getelementptr inbounds i32*, i32** %256, i64 %idxprom293
  %257 = load i32*, i32** %arrayidx294, align 8
  %arrayidx295 = getelementptr inbounds i32, i32* %257, i64 %idxprom292
  store i32 %253, i32* %arrayidx295, align 4
  %258 = load i32, i32* %k, align 4
  %idxprom296 = sext i32 %258 to i64
  %259 = load i32, i32* %i, align 4
  %idxprom297 = sext i32 %259 to i64
  %260 = load i8**, i8*** %mtb, align 8
  %arrayidx298 = getelementptr inbounds i8*, i8** %260, i64 %idxprom297
  %261 = load i8*, i8** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds i8, i8* %261, i64 %idxprom296
  store i8 6, i8* %arrayidx299, align 1
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.291, %if.end.278
  %262 = load i32, i32* %k, align 4
  %sub301 = sub nsw i32 %262, 1
  %idxprom302 = sext i32 %sub301 to i64
  %263 = load i32, i32* %prv, align 4
  %idxprom303 = sext i32 %263 to i64
  %264 = load i32**, i32*** %dmx, align 8
  %arrayidx304 = getelementptr inbounds i32*, i32** %264, i64 %idxprom303
  %265 = load i32*, i32** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds i32, i32* %265, i64 %idxprom302
  %266 = load i32, i32* %arrayidx305, align 4
  %cmp306 = icmp sgt i32 %266, -987654321
  br i1 %cmp306, label %land.lhs.true.308, label %if.end.343

land.lhs.true.308:                                ; preds = %if.end.300
  %267 = load i32, i32* %k, align 4
  %sub309 = sub nsw i32 %267, 1
  %idxprom310 = sext i32 %sub309 to i64
  %268 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc311 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %268, i32 0, i32 30
  %269 = load i32**, i32*** %tsc311, align 8
  %arrayidx312 = getelementptr inbounds i32*, i32** %269, i64 5
  %270 = load i32*, i32** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %270, i64 %idxprom310
  %271 = load i32, i32* %arrayidx313, align 4
  %cmp314 = icmp sgt i32 %271, -987654321
  br i1 %cmp314, label %land.lhs.true.316, label %if.end.343

land.lhs.true.316:                                ; preds = %land.lhs.true.308
  %272 = load i32, i32* %k, align 4
  %sub317 = sub nsw i32 %272, 1
  %idxprom318 = sext i32 %sub317 to i64
  %273 = load i32, i32* %prv, align 4
  %idxprom319 = sext i32 %273 to i64
  %274 = load i32**, i32*** %dmx, align 8
  %arrayidx320 = getelementptr inbounds i32*, i32** %274, i64 %idxprom319
  %275 = load i32*, i32** %arrayidx320, align 8
  %arrayidx321 = getelementptr inbounds i32, i32* %275, i64 %idxprom318
  %276 = load i32, i32* %arrayidx321, align 4
  %277 = load i32, i32* %k, align 4
  %sub322 = sub nsw i32 %277, 1
  %idxprom323 = sext i32 %sub322 to i64
  %278 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc324 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %278, i32 0, i32 30
  %279 = load i32**, i32*** %tsc324, align 8
  %arrayidx325 = getelementptr inbounds i32*, i32** %279, i64 5
  %280 = load i32*, i32** %arrayidx325, align 8
  %arrayidx326 = getelementptr inbounds i32, i32* %280, i64 %idxprom323
  %281 = load i32, i32* %arrayidx326, align 4
  %add327 = add nsw i32 %276, %281
  store i32 %add327, i32* %sc, align 4
  %282 = load i32, i32* %k, align 4
  %idxprom328 = sext i32 %282 to i64
  %283 = load i32, i32* %cur, align 4
  %idxprom329 = sext i32 %283 to i64
  %284 = load i32**, i32*** %mmx, align 8
  %arrayidx330 = getelementptr inbounds i32*, i32** %284, i64 %idxprom329
  %285 = load i32*, i32** %arrayidx330, align 8
  %arrayidx331 = getelementptr inbounds i32, i32* %285, i64 %idxprom328
  %286 = load i32, i32* %arrayidx331, align 4
  %cmp332 = icmp sgt i32 %add327, %286
  br i1 %cmp332, label %if.then.334, label %if.end.343

if.then.334:                                      ; preds = %land.lhs.true.316
  %287 = load i32, i32* %sc, align 4
  %288 = load i32, i32* %k, align 4
  %idxprom335 = sext i32 %288 to i64
  %289 = load i32, i32* %cur, align 4
  %idxprom336 = sext i32 %289 to i64
  %290 = load i32**, i32*** %mmx, align 8
  %arrayidx337 = getelementptr inbounds i32*, i32** %290, i64 %idxprom336
  %291 = load i32*, i32** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %291, i64 %idxprom335
  store i32 %287, i32* %arrayidx338, align 4
  %292 = load i32, i32* %k, align 4
  %idxprom339 = sext i32 %292 to i64
  %293 = load i32, i32* %i, align 4
  %idxprom340 = sext i32 %293 to i64
  %294 = load i8**, i8*** %mtb, align 8
  %arrayidx341 = getelementptr inbounds i8*, i8** %294, i64 %idxprom340
  %295 = load i8*, i8** %arrayidx341, align 8
  %arrayidx342 = getelementptr inbounds i8, i8* %295, i64 %idxprom339
  store i8 2, i8* %arrayidx342, align 1
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.334, %land.lhs.true.316, %land.lhs.true.308, %if.end.300
  store i32 0, i32* %sym, align 4
  br label %for.cond.344

for.cond.344:                                     ; preds = %for.inc.385, %if.end.343
  %296 = load i32, i32* %sym, align 4
  %297 = load i32, i32* @Alphabet_size, align 4
  %cmp345 = icmp slt i32 %296, %297
  br i1 %cmp345, label %for.body.347, label %for.end.387

for.body.347:                                     ; preds = %for.cond.344
  %298 = load i32, i32* %sym, align 4
  %idxprom348 = sext i32 %298 to i64
  %299 = load i32, i32* %i, align 4
  %idxprom349 = sext i32 %299 to i64
  %300 = load float**, float*** %con, align 8
  %arrayidx350 = getelementptr inbounds float*, float** %300, i64 %idxprom349
  %301 = load float*, float** %arrayidx350, align 8
  %arrayidx351 = getelementptr inbounds float, float* %301, i64 %idxprom348
  %302 = load float, float* %arrayidx351, align 4
  %cmp352 = fcmp ogt float %302, 0.000000e+00
  br i1 %cmp352, label %land.lhs.true.354, label %if.end.366

land.lhs.true.354:                                ; preds = %for.body.347
  %303 = load i32, i32* %k, align 4
  %idxprom355 = sext i32 %303 to i64
  %304 = load i32, i32* %sym, align 4
  %idxprom356 = sext i32 %304 to i64
  %305 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %305, i32 0, i32 31
  %306 = load i32**, i32*** %msc, align 8
  %arrayidx357 = getelementptr inbounds i32*, i32** %306, i64 %idxprom356
  %307 = load i32*, i32** %arrayidx357, align 8
  %arrayidx358 = getelementptr inbounds i32, i32* %307, i64 %idxprom355
  %308 = load i32, i32* %arrayidx358, align 4
  %cmp359 = icmp eq i32 %308, -987654321
  br i1 %cmp359, label %if.then.361, label %if.end.366

if.then.361:                                      ; preds = %land.lhs.true.354
  %309 = load i32, i32* %k, align 4
  %idxprom362 = sext i32 %309 to i64
  %310 = load i32, i32* %cur, align 4
  %idxprom363 = sext i32 %310 to i64
  %311 = load i32**, i32*** %mmx, align 8
  %arrayidx364 = getelementptr inbounds i32*, i32** %311, i64 %idxprom363
  %312 = load i32*, i32** %arrayidx364, align 8
  %arrayidx365 = getelementptr inbounds i32, i32* %312, i64 %idxprom362
  store i32 -987654321, i32* %arrayidx365, align 4
  br label %for.end.387

if.end.366:                                       ; preds = %land.lhs.true.354, %for.body.347
  %313 = load i32, i32* %k, align 4
  %idxprom367 = sext i32 %313 to i64
  %314 = load i32, i32* %sym, align 4
  %idxprom368 = sext i32 %314 to i64
  %315 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %msc369 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %315, i32 0, i32 31
  %316 = load i32**, i32*** %msc369, align 8
  %arrayidx370 = getelementptr inbounds i32*, i32** %316, i64 %idxprom368
  %317 = load i32*, i32** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds i32, i32* %317, i64 %idxprom367
  %318 = load i32, i32* %arrayidx371, align 4
  %conv372 = sitofp i32 %318 to float
  %319 = load i32, i32* %sym, align 4
  %idxprom373 = sext i32 %319 to i64
  %320 = load i32, i32* %i, align 4
  %idxprom374 = sext i32 %320 to i64
  %321 = load float**, float*** %con, align 8
  %arrayidx375 = getelementptr inbounds float*, float** %321, i64 %idxprom374
  %322 = load float*, float** %arrayidx375, align 8
  %arrayidx376 = getelementptr inbounds float, float* %322, i64 %idxprom373
  %323 = load float, float* %arrayidx376, align 4
  %mul377 = fmul float %conv372, %323
  %324 = load i32, i32* %k, align 4
  %idxprom378 = sext i32 %324 to i64
  %325 = load i32, i32* %cur, align 4
  %idxprom379 = sext i32 %325 to i64
  %326 = load i32**, i32*** %mmx, align 8
  %arrayidx380 = getelementptr inbounds i32*, i32** %326, i64 %idxprom379
  %327 = load i32*, i32** %arrayidx380, align 8
  %arrayidx381 = getelementptr inbounds i32, i32* %327, i64 %idxprom378
  %328 = load i32, i32* %arrayidx381, align 4
  %conv382 = sitofp i32 %328 to float
  %add383 = fadd float %conv382, %mul377
  %conv384 = fptosi float %add383 to i32
  store i32 %conv384, i32* %arrayidx381, align 4
  br label %for.inc.385

for.inc.385:                                      ; preds = %if.end.366
  %329 = load i32, i32* %sym, align 4
  %inc386 = add nsw i32 %329, 1
  store i32 %inc386, i32* %sym, align 4
  br label %for.cond.344

for.end.387:                                      ; preds = %if.then.361, %for.cond.344
  %330 = load i32, i32* %k, align 4
  %idxprom388 = sext i32 %330 to i64
  %331 = load i32, i32* %cur, align 4
  %idxprom389 = sext i32 %331 to i64
  %332 = load i32**, i32*** %dmx, align 8
  %arrayidx390 = getelementptr inbounds i32*, i32** %332, i64 %idxprom389
  %333 = load i32*, i32** %arrayidx390, align 8
  %arrayidx391 = getelementptr inbounds i32, i32* %333, i64 %idxprom388
  store i32 -987654321, i32* %arrayidx391, align 4
  %334 = load i32, i32* %k, align 4
  %idxprom392 = sext i32 %334 to i64
  %335 = load i32, i32* %i, align 4
  %idxprom393 = sext i32 %335 to i64
  %336 = load i8**, i8*** %dtb, align 8
  %arrayidx394 = getelementptr inbounds i8*, i8** %336, i64 %idxprom393
  %337 = load i8*, i8** %arrayidx394, align 8
  %arrayidx395 = getelementptr inbounds i8, i8* %337, i64 %idxprom392
  store i8 0, i8* %arrayidx395, align 1
  %338 = load i32, i32* %k, align 4
  %sub396 = sub nsw i32 %338, 1
  %idxprom397 = sext i32 %sub396 to i64
  %339 = load i32, i32* %cur, align 4
  %idxprom398 = sext i32 %339 to i64
  %340 = load i32**, i32*** %mmx, align 8
  %arrayidx399 = getelementptr inbounds i32*, i32** %340, i64 %idxprom398
  %341 = load i32*, i32** %arrayidx399, align 8
  %arrayidx400 = getelementptr inbounds i32, i32* %341, i64 %idxprom397
  %342 = load i32, i32* %arrayidx400, align 4
  %cmp401 = icmp sgt i32 %342, -987654321
  br i1 %cmp401, label %land.lhs.true.403, label %if.end.438

land.lhs.true.403:                                ; preds = %for.end.387
  %343 = load i32, i32* %k, align 4
  %sub404 = sub nsw i32 %343, 1
  %idxprom405 = sext i32 %sub404 to i64
  %344 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc406 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %344, i32 0, i32 30
  %345 = load i32**, i32*** %tsc406, align 8
  %arrayidx407 = getelementptr inbounds i32*, i32** %345, i64 2
  %346 = load i32*, i32** %arrayidx407, align 8
  %arrayidx408 = getelementptr inbounds i32, i32* %346, i64 %idxprom405
  %347 = load i32, i32* %arrayidx408, align 4
  %cmp409 = icmp sgt i32 %347, -987654321
  br i1 %cmp409, label %land.lhs.true.411, label %if.end.438

land.lhs.true.411:                                ; preds = %land.lhs.true.403
  %348 = load i32, i32* %k, align 4
  %sub412 = sub nsw i32 %348, 1
  %idxprom413 = sext i32 %sub412 to i64
  %349 = load i32, i32* %cur, align 4
  %idxprom414 = sext i32 %349 to i64
  %350 = load i32**, i32*** %mmx, align 8
  %arrayidx415 = getelementptr inbounds i32*, i32** %350, i64 %idxprom414
  %351 = load i32*, i32** %arrayidx415, align 8
  %arrayidx416 = getelementptr inbounds i32, i32* %351, i64 %idxprom413
  %352 = load i32, i32* %arrayidx416, align 4
  %353 = load i32, i32* %k, align 4
  %sub417 = sub nsw i32 %353, 1
  %idxprom418 = sext i32 %sub417 to i64
  %354 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc419 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %354, i32 0, i32 30
  %355 = load i32**, i32*** %tsc419, align 8
  %arrayidx420 = getelementptr inbounds i32*, i32** %355, i64 2
  %356 = load i32*, i32** %arrayidx420, align 8
  %arrayidx421 = getelementptr inbounds i32, i32* %356, i64 %idxprom418
  %357 = load i32, i32* %arrayidx421, align 4
  %add422 = add nsw i32 %352, %357
  store i32 %add422, i32* %sc, align 4
  %358 = load i32, i32* %k, align 4
  %idxprom423 = sext i32 %358 to i64
  %359 = load i32, i32* %cur, align 4
  %idxprom424 = sext i32 %359 to i64
  %360 = load i32**, i32*** %dmx, align 8
  %arrayidx425 = getelementptr inbounds i32*, i32** %360, i64 %idxprom424
  %361 = load i32*, i32** %arrayidx425, align 8
  %arrayidx426 = getelementptr inbounds i32, i32* %361, i64 %idxprom423
  %362 = load i32, i32* %arrayidx426, align 4
  %cmp427 = icmp sgt i32 %add422, %362
  br i1 %cmp427, label %if.then.429, label %if.end.438

if.then.429:                                      ; preds = %land.lhs.true.411
  %363 = load i32, i32* %sc, align 4
  %364 = load i32, i32* %k, align 4
  %idxprom430 = sext i32 %364 to i64
  %365 = load i32, i32* %cur, align 4
  %idxprom431 = sext i32 %365 to i64
  %366 = load i32**, i32*** %dmx, align 8
  %arrayidx432 = getelementptr inbounds i32*, i32** %366, i64 %idxprom431
  %367 = load i32*, i32** %arrayidx432, align 8
  %arrayidx433 = getelementptr inbounds i32, i32* %367, i64 %idxprom430
  store i32 %363, i32* %arrayidx433, align 4
  %368 = load i32, i32* %k, align 4
  %idxprom434 = sext i32 %368 to i64
  %369 = load i32, i32* %i, align 4
  %idxprom435 = sext i32 %369 to i64
  %370 = load i8**, i8*** %dtb, align 8
  %arrayidx436 = getelementptr inbounds i8*, i8** %370, i64 %idxprom435
  %371 = load i8*, i8** %arrayidx436, align 8
  %arrayidx437 = getelementptr inbounds i8, i8* %371, i64 %idxprom434
  store i8 1, i8* %arrayidx437, align 1
  br label %if.end.438

if.end.438:                                       ; preds = %if.then.429, %land.lhs.true.411, %land.lhs.true.403, %for.end.387
  %372 = load i32, i32* %k, align 4
  %sub439 = sub nsw i32 %372, 1
  %idxprom440 = sext i32 %sub439 to i64
  %373 = load i32, i32* %cur, align 4
  %idxprom441 = sext i32 %373 to i64
  %374 = load i32**, i32*** %dmx, align 8
  %arrayidx442 = getelementptr inbounds i32*, i32** %374, i64 %idxprom441
  %375 = load i32*, i32** %arrayidx442, align 8
  %arrayidx443 = getelementptr inbounds i32, i32* %375, i64 %idxprom440
  %376 = load i32, i32* %arrayidx443, align 4
  %cmp444 = icmp sgt i32 %376, -987654321
  br i1 %cmp444, label %land.lhs.true.446, label %if.end.481

land.lhs.true.446:                                ; preds = %if.end.438
  %377 = load i32, i32* %k, align 4
  %sub447 = sub nsw i32 %377, 1
  %idxprom448 = sext i32 %sub447 to i64
  %378 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc449 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %378, i32 0, i32 30
  %379 = load i32**, i32*** %tsc449, align 8
  %arrayidx450 = getelementptr inbounds i32*, i32** %379, i64 6
  %380 = load i32*, i32** %arrayidx450, align 8
  %arrayidx451 = getelementptr inbounds i32, i32* %380, i64 %idxprom448
  %381 = load i32, i32* %arrayidx451, align 4
  %cmp452 = icmp sgt i32 %381, -987654321
  br i1 %cmp452, label %land.lhs.true.454, label %if.end.481

land.lhs.true.454:                                ; preds = %land.lhs.true.446
  %382 = load i32, i32* %k, align 4
  %sub455 = sub nsw i32 %382, 1
  %idxprom456 = sext i32 %sub455 to i64
  %383 = load i32, i32* %cur, align 4
  %idxprom457 = sext i32 %383 to i64
  %384 = load i32**, i32*** %dmx, align 8
  %arrayidx458 = getelementptr inbounds i32*, i32** %384, i64 %idxprom457
  %385 = load i32*, i32** %arrayidx458, align 8
  %arrayidx459 = getelementptr inbounds i32, i32* %385, i64 %idxprom456
  %386 = load i32, i32* %arrayidx459, align 4
  %387 = load i32, i32* %k, align 4
  %sub460 = sub nsw i32 %387, 1
  %idxprom461 = sext i32 %sub460 to i64
  %388 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc462 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %388, i32 0, i32 30
  %389 = load i32**, i32*** %tsc462, align 8
  %arrayidx463 = getelementptr inbounds i32*, i32** %389, i64 6
  %390 = load i32*, i32** %arrayidx463, align 8
  %arrayidx464 = getelementptr inbounds i32, i32* %390, i64 %idxprom461
  %391 = load i32, i32* %arrayidx464, align 4
  %add465 = add nsw i32 %386, %391
  store i32 %add465, i32* %sc, align 4
  %392 = load i32, i32* %k, align 4
  %idxprom466 = sext i32 %392 to i64
  %393 = load i32, i32* %cur, align 4
  %idxprom467 = sext i32 %393 to i64
  %394 = load i32**, i32*** %dmx, align 8
  %arrayidx468 = getelementptr inbounds i32*, i32** %394, i64 %idxprom467
  %395 = load i32*, i32** %arrayidx468, align 8
  %arrayidx469 = getelementptr inbounds i32, i32* %395, i64 %idxprom466
  %396 = load i32, i32* %arrayidx469, align 4
  %cmp470 = icmp sgt i32 %add465, %396
  br i1 %cmp470, label %if.then.472, label %if.end.481

if.then.472:                                      ; preds = %land.lhs.true.454
  %397 = load i32, i32* %sc, align 4
  %398 = load i32, i32* %k, align 4
  %idxprom473 = sext i32 %398 to i64
  %399 = load i32, i32* %cur, align 4
  %idxprom474 = sext i32 %399 to i64
  %400 = load i32**, i32*** %dmx, align 8
  %arrayidx475 = getelementptr inbounds i32*, i32** %400, i64 %idxprom474
  %401 = load i32*, i32** %arrayidx475, align 8
  %arrayidx476 = getelementptr inbounds i32, i32* %401, i64 %idxprom473
  store i32 %397, i32* %arrayidx476, align 4
  %402 = load i32, i32* %k, align 4
  %idxprom477 = sext i32 %402 to i64
  %403 = load i32, i32* %i, align 4
  %idxprom478 = sext i32 %403 to i64
  %404 = load i8**, i8*** %dtb, align 8
  %arrayidx479 = getelementptr inbounds i8*, i8** %404, i64 %idxprom478
  %405 = load i8*, i8** %arrayidx479, align 8
  %arrayidx480 = getelementptr inbounds i8, i8* %405, i64 %idxprom477
  store i8 2, i8* %arrayidx480, align 1
  br label %if.end.481

if.end.481:                                       ; preds = %if.then.472, %land.lhs.true.454, %land.lhs.true.446, %if.end.438
  %406 = load i32, i32* %k, align 4
  %407 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M482 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %407, i32 0, i32 20
  %408 = load i32, i32* %M482, align 4
  %cmp483 = icmp slt i32 %406, %408
  br i1 %cmp483, label %if.then.485, label %if.end.632

if.then.485:                                      ; preds = %if.end.481
  %409 = load i32, i32* %k, align 4
  %idxprom486 = sext i32 %409 to i64
  %410 = load i32, i32* %cur, align 4
  %idxprom487 = sext i32 %410 to i64
  %411 = load i32**, i32*** %imx, align 8
  %arrayidx488 = getelementptr inbounds i32*, i32** %411, i64 %idxprom487
  %412 = load i32*, i32** %arrayidx488, align 8
  %arrayidx489 = getelementptr inbounds i32, i32* %412, i64 %idxprom486
  store i32 -987654321, i32* %arrayidx489, align 4
  %413 = load i32, i32* %k, align 4
  %idxprom490 = sext i32 %413 to i64
  %414 = load i32, i32* %i, align 4
  %idxprom491 = sext i32 %414 to i64
  %415 = load i8**, i8*** %itb, align 8
  %arrayidx492 = getelementptr inbounds i8*, i8** %415, i64 %idxprom491
  %416 = load i8*, i8** %arrayidx492, align 8
  %arrayidx493 = getelementptr inbounds i8, i8* %416, i64 %idxprom490
  store i8 0, i8* %arrayidx493, align 1
  %417 = load i32, i32* %k, align 4
  %idxprom494 = sext i32 %417 to i64
  %418 = load i32, i32* %prv, align 4
  %idxprom495 = sext i32 %418 to i64
  %419 = load i32**, i32*** %mmx, align 8
  %arrayidx496 = getelementptr inbounds i32*, i32** %419, i64 %idxprom495
  %420 = load i32*, i32** %arrayidx496, align 8
  %arrayidx497 = getelementptr inbounds i32, i32* %420, i64 %idxprom494
  %421 = load i32, i32* %arrayidx497, align 4
  %cmp498 = icmp sgt i32 %421, -987654321
  br i1 %cmp498, label %land.lhs.true.500, label %if.end.538

land.lhs.true.500:                                ; preds = %if.then.485
  %422 = load i32, i32* %k, align 4
  %idxprom501 = sext i32 %422 to i64
  %423 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc502 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %423, i32 0, i32 30
  %424 = load i32**, i32*** %tsc502, align 8
  %arrayidx503 = getelementptr inbounds i32*, i32** %424, i64 1
  %425 = load i32*, i32** %arrayidx503, align 8
  %arrayidx504 = getelementptr inbounds i32, i32* %425, i64 %idxprom501
  %426 = load i32, i32* %arrayidx504, align 4
  %cmp505 = icmp sgt i32 %426, -987654321
  br i1 %cmp505, label %land.lhs.true.507, label %if.end.538

land.lhs.true.507:                                ; preds = %land.lhs.true.500
  %427 = load i32, i32* %k, align 4
  %idxprom508 = sext i32 %427 to i64
  %428 = load i32, i32* %prv, align 4
  %idxprom509 = sext i32 %428 to i64
  %429 = load i32**, i32*** %mmx, align 8
  %arrayidx510 = getelementptr inbounds i32*, i32** %429, i64 %idxprom509
  %430 = load i32*, i32** %arrayidx510, align 8
  %arrayidx511 = getelementptr inbounds i32, i32* %430, i64 %idxprom508
  %431 = load i32, i32* %arrayidx511, align 4
  %conv512 = sitofp i32 %431 to float
  %432 = load i32, i32* %k, align 4
  %idxprom513 = sext i32 %432 to i64
  %433 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc514 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %433, i32 0, i32 30
  %434 = load i32**, i32*** %tsc514, align 8
  %arrayidx515 = getelementptr inbounds i32*, i32** %434, i64 1
  %435 = load i32*, i32** %arrayidx515, align 8
  %arrayidx516 = getelementptr inbounds i32, i32* %435, i64 %idxprom513
  %436 = load i32, i32* %arrayidx516, align 4
  %conv517 = sitofp i32 %436 to float
  %437 = load i32, i32* %i, align 4
  %idxprom518 = sext i32 %437 to i64
  %438 = load float*, float** %mocc, align 8
  %arrayidx519 = getelementptr inbounds float, float* %438, i64 %idxprom518
  %439 = load float, float* %arrayidx519, align 4
  %mul520 = fmul float %conv517, %439
  %add521 = fadd float %conv512, %mul520
  %conv522 = fptosi float %add521 to i32
  store i32 %conv522, i32* %sc, align 4
  %440 = load i32, i32* %k, align 4
  %idxprom523 = sext i32 %440 to i64
  %441 = load i32, i32* %cur, align 4
  %idxprom524 = sext i32 %441 to i64
  %442 = load i32**, i32*** %imx, align 8
  %arrayidx525 = getelementptr inbounds i32*, i32** %442, i64 %idxprom524
  %443 = load i32*, i32** %arrayidx525, align 8
  %arrayidx526 = getelementptr inbounds i32, i32* %443, i64 %idxprom523
  %444 = load i32, i32* %arrayidx526, align 4
  %cmp527 = icmp sgt i32 %conv522, %444
  br i1 %cmp527, label %if.then.529, label %if.end.538

if.then.529:                                      ; preds = %land.lhs.true.507
  %445 = load i32, i32* %sc, align 4
  %446 = load i32, i32* %k, align 4
  %idxprom530 = sext i32 %446 to i64
  %447 = load i32, i32* %cur, align 4
  %idxprom531 = sext i32 %447 to i64
  %448 = load i32**, i32*** %imx, align 8
  %arrayidx532 = getelementptr inbounds i32*, i32** %448, i64 %idxprom531
  %449 = load i32*, i32** %arrayidx532, align 8
  %arrayidx533 = getelementptr inbounds i32, i32* %449, i64 %idxprom530
  store i32 %445, i32* %arrayidx533, align 4
  %450 = load i32, i32* %k, align 4
  %idxprom534 = sext i32 %450 to i64
  %451 = load i32, i32* %i, align 4
  %idxprom535 = sext i32 %451 to i64
  %452 = load i8**, i8*** %itb, align 8
  %arrayidx536 = getelementptr inbounds i8*, i8** %452, i64 %idxprom535
  %453 = load i8*, i8** %arrayidx536, align 8
  %arrayidx537 = getelementptr inbounds i8, i8* %453, i64 %idxprom534
  store i8 1, i8* %arrayidx537, align 1
  br label %if.end.538

if.end.538:                                       ; preds = %if.then.529, %land.lhs.true.507, %land.lhs.true.500, %if.then.485
  %454 = load i32, i32* %k, align 4
  %idxprom539 = sext i32 %454 to i64
  %455 = load i32, i32* %prv, align 4
  %idxprom540 = sext i32 %455 to i64
  %456 = load i32**, i32*** %imx, align 8
  %arrayidx541 = getelementptr inbounds i32*, i32** %456, i64 %idxprom540
  %457 = load i32*, i32** %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds i32, i32* %457, i64 %idxprom539
  %458 = load i32, i32* %arrayidx542, align 4
  %cmp543 = icmp sgt i32 %458, -987654321
  br i1 %cmp543, label %land.lhs.true.545, label %if.end.587

land.lhs.true.545:                                ; preds = %if.end.538
  %459 = load i32, i32* %k, align 4
  %idxprom546 = sext i32 %459 to i64
  %460 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc547 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %460, i32 0, i32 30
  %461 = load i32**, i32*** %tsc547, align 8
  %arrayidx548 = getelementptr inbounds i32*, i32** %461, i64 4
  %462 = load i32*, i32** %arrayidx548, align 8
  %arrayidx549 = getelementptr inbounds i32, i32* %462, i64 %idxprom546
  %463 = load i32, i32* %arrayidx549, align 4
  %cmp550 = icmp sgt i32 %463, -987654321
  br i1 %cmp550, label %land.lhs.true.552, label %if.end.587

land.lhs.true.552:                                ; preds = %land.lhs.true.545
  %464 = load i32, i32* %k, align 4
  %idxprom553 = sext i32 %464 to i64
  %465 = load i32, i32* %prv, align 4
  %idxprom554 = sext i32 %465 to i64
  %466 = load i32**, i32*** %imx, align 8
  %arrayidx555 = getelementptr inbounds i32*, i32** %466, i64 %idxprom554
  %467 = load i32*, i32** %arrayidx555, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %467, i64 %idxprom553
  %468 = load i32, i32* %arrayidx556, align 4
  %conv557 = sitofp i32 %468 to float
  %469 = load i32, i32* %k, align 4
  %idxprom558 = sext i32 %469 to i64
  %470 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %tsc559 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %470, i32 0, i32 30
  %471 = load i32**, i32*** %tsc559, align 8
  %arrayidx560 = getelementptr inbounds i32*, i32** %471, i64 4
  %472 = load i32*, i32** %arrayidx560, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %472, i64 %idxprom558
  %473 = load i32, i32* %arrayidx561, align 4
  %conv562 = sitofp i32 %473 to float
  %474 = load i32, i32* %i, align 4
  %sub563 = sub nsw i32 %474, 1
  %idxprom564 = sext i32 %sub563 to i64
  %475 = load float*, float** %mocc, align 8
  %arrayidx565 = getelementptr inbounds float, float* %475, i64 %idxprom564
  %476 = load float, float* %arrayidx565, align 4
  %mul566 = fmul float %conv562, %476
  %477 = load i32, i32* %i, align 4
  %idxprom567 = sext i32 %477 to i64
  %478 = load float*, float** %mocc, align 8
  %arrayidx568 = getelementptr inbounds float, float* %478, i64 %idxprom567
  %479 = load float, float* %arrayidx568, align 4
  %mul569 = fmul float %mul566, %479
  %add570 = fadd float %conv557, %mul569
  %conv571 = fptosi float %add570 to i32
  store i32 %conv571, i32* %sc, align 4
  %480 = load i32, i32* %k, align 4
  %idxprom572 = sext i32 %480 to i64
  %481 = load i32, i32* %cur, align 4
  %idxprom573 = sext i32 %481 to i64
  %482 = load i32**, i32*** %imx, align 8
  %arrayidx574 = getelementptr inbounds i32*, i32** %482, i64 %idxprom573
  %483 = load i32*, i32** %arrayidx574, align 8
  %arrayidx575 = getelementptr inbounds i32, i32* %483, i64 %idxprom572
  %484 = load i32, i32* %arrayidx575, align 4
  %cmp576 = icmp sgt i32 %conv571, %484
  br i1 %cmp576, label %if.then.578, label %if.end.587

if.then.578:                                      ; preds = %land.lhs.true.552
  %485 = load i32, i32* %sc, align 4
  %486 = load i32, i32* %k, align 4
  %idxprom579 = sext i32 %486 to i64
  %487 = load i32, i32* %cur, align 4
  %idxprom580 = sext i32 %487 to i64
  %488 = load i32**, i32*** %imx, align 8
  %arrayidx581 = getelementptr inbounds i32*, i32** %488, i64 %idxprom580
  %489 = load i32*, i32** %arrayidx581, align 8
  %arrayidx582 = getelementptr inbounds i32, i32* %489, i64 %idxprom579
  store i32 %485, i32* %arrayidx582, align 4
  %490 = load i32, i32* %k, align 4
  %idxprom583 = sext i32 %490 to i64
  %491 = load i32, i32* %i, align 4
  %idxprom584 = sext i32 %491 to i64
  %492 = load i8**, i8*** %itb, align 8
  %arrayidx585 = getelementptr inbounds i8*, i8** %492, i64 %idxprom584
  %493 = load i8*, i8** %arrayidx585, align 8
  %arrayidx586 = getelementptr inbounds i8, i8* %493, i64 %idxprom583
  store i8 3, i8* %arrayidx586, align 1
  br label %if.end.587

if.end.587:                                       ; preds = %if.then.578, %land.lhs.true.552, %land.lhs.true.545, %if.end.538
  store i32 0, i32* %sym, align 4
  br label %for.cond.588

for.cond.588:                                     ; preds = %for.inc.629, %if.end.587
  %494 = load i32, i32* %sym, align 4
  %495 = load i32, i32* @Alphabet_size, align 4
  %cmp589 = icmp slt i32 %494, %495
  br i1 %cmp589, label %for.body.591, label %for.end.631

for.body.591:                                     ; preds = %for.cond.588
  %496 = load i32, i32* %sym, align 4
  %idxprom592 = sext i32 %496 to i64
  %497 = load i32, i32* %i, align 4
  %idxprom593 = sext i32 %497 to i64
  %498 = load float**, float*** %con, align 8
  %arrayidx594 = getelementptr inbounds float*, float** %498, i64 %idxprom593
  %499 = load float*, float** %arrayidx594, align 8
  %arrayidx595 = getelementptr inbounds float, float* %499, i64 %idxprom592
  %500 = load float, float* %arrayidx595, align 4
  %cmp596 = fcmp ogt float %500, 0.000000e+00
  br i1 %cmp596, label %land.lhs.true.598, label %if.end.610

land.lhs.true.598:                                ; preds = %for.body.591
  %501 = load i32, i32* %k, align 4
  %idxprom599 = sext i32 %501 to i64
  %502 = load i32, i32* %sym, align 4
  %idxprom600 = sext i32 %502 to i64
  %503 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %503, i32 0, i32 32
  %504 = load i32**, i32*** %isc, align 8
  %arrayidx601 = getelementptr inbounds i32*, i32** %504, i64 %idxprom600
  %505 = load i32*, i32** %arrayidx601, align 8
  %arrayidx602 = getelementptr inbounds i32, i32* %505, i64 %idxprom599
  %506 = load i32, i32* %arrayidx602, align 4
  %cmp603 = icmp eq i32 %506, -987654321
  br i1 %cmp603, label %if.then.605, label %if.end.610

if.then.605:                                      ; preds = %land.lhs.true.598
  %507 = load i32, i32* %k, align 4
  %idxprom606 = sext i32 %507 to i64
  %508 = load i32, i32* %cur, align 4
  %idxprom607 = sext i32 %508 to i64
  %509 = load i32**, i32*** %imx, align 8
  %arrayidx608 = getelementptr inbounds i32*, i32** %509, i64 %idxprom607
  %510 = load i32*, i32** %arrayidx608, align 8
  %arrayidx609 = getelementptr inbounds i32, i32* %510, i64 %idxprom606
  store i32 -987654321, i32* %arrayidx609, align 4
  br label %for.end.631

if.end.610:                                       ; preds = %land.lhs.true.598, %for.body.591
  %511 = load i32, i32* %k, align 4
  %idxprom611 = sext i32 %511 to i64
  %512 = load i32, i32* %sym, align 4
  %idxprom612 = sext i32 %512 to i64
  %513 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %isc613 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %513, i32 0, i32 32
  %514 = load i32**, i32*** %isc613, align 8
  %arrayidx614 = getelementptr inbounds i32*, i32** %514, i64 %idxprom612
  %515 = load i32*, i32** %arrayidx614, align 8
  %arrayidx615 = getelementptr inbounds i32, i32* %515, i64 %idxprom611
  %516 = load i32, i32* %arrayidx615, align 4
  %conv616 = sitofp i32 %516 to float
  %517 = load i32, i32* %sym, align 4
  %idxprom617 = sext i32 %517 to i64
  %518 = load i32, i32* %i, align 4
  %idxprom618 = sext i32 %518 to i64
  %519 = load float**, float*** %con, align 8
  %arrayidx619 = getelementptr inbounds float*, float** %519, i64 %idxprom618
  %520 = load float*, float** %arrayidx619, align 8
  %arrayidx620 = getelementptr inbounds float, float* %520, i64 %idxprom617
  %521 = load float, float* %arrayidx620, align 4
  %mul621 = fmul float %conv616, %521
  %522 = load i32, i32* %k, align 4
  %idxprom622 = sext i32 %522 to i64
  %523 = load i32, i32* %cur, align 4
  %idxprom623 = sext i32 %523 to i64
  %524 = load i32**, i32*** %imx, align 8
  %arrayidx624 = getelementptr inbounds i32*, i32** %524, i64 %idxprom623
  %525 = load i32*, i32** %arrayidx624, align 8
  %arrayidx625 = getelementptr inbounds i32, i32* %525, i64 %idxprom622
  %526 = load i32, i32* %arrayidx625, align 4
  %conv626 = sitofp i32 %526 to float
  %add627 = fadd float %conv626, %mul621
  %conv628 = fptosi float %add627 to i32
  store i32 %conv628, i32* %arrayidx625, align 4
  br label %for.inc.629

for.inc.629:                                      ; preds = %if.end.610
  %527 = load i32, i32* %sym, align 4
  %inc630 = add nsw i32 %527, 1
  store i32 %inc630, i32* %sym, align 4
  br label %for.cond.588

for.end.631:                                      ; preds = %if.then.605, %for.cond.588
  br label %if.end.632

if.end.632:                                       ; preds = %for.end.631, %if.end.481
  br label %for.inc.633

for.inc.633:                                      ; preds = %if.end.632
  %528 = load i32, i32* %k, align 4
  %inc634 = add nsw i32 %528, 1
  store i32 %inc634, i32* %k, align 4
  br label %for.cond.175

for.end.635:                                      ; preds = %for.cond.175
  %529 = load i32, i32* %cur, align 4
  %idxprom636 = sext i32 %529 to i64
  %530 = load i32**, i32*** %xmx, align 8
  %arrayidx637 = getelementptr inbounds i32*, i32** %530, i64 %idxprom636
  %531 = load i32*, i32** %arrayidx637, align 8
  %arrayidx638 = getelementptr inbounds i32, i32* %531, i64 4
  store i32 -987654321, i32* %arrayidx638, align 4
  %532 = load i32, i32* %i, align 4
  %idxprom639 = sext i32 %532 to i64
  %533 = load i8**, i8*** %xtb, align 8
  %arrayidx640 = getelementptr inbounds i8*, i8** %533, i64 %idxprom639
  %534 = load i8*, i8** %arrayidx640, align 8
  %arrayidx641 = getelementptr inbounds i8, i8* %534, i64 4
  store i8 0, i8* %arrayidx641, align 1
  %535 = load i32, i32* %prv, align 4
  %idxprom642 = sext i32 %535 to i64
  %536 = load i32**, i32*** %xmx, align 8
  %arrayidx643 = getelementptr inbounds i32*, i32** %536, i64 %idxprom642
  %537 = load i32*, i32** %arrayidx643, align 8
  %arrayidx644 = getelementptr inbounds i32, i32* %537, i64 4
  %538 = load i32, i32* %arrayidx644, align 4
  %cmp645 = icmp sgt i32 %538, -987654321
  br i1 %cmp645, label %land.lhs.true.647, label %if.end.676

land.lhs.true.647:                                ; preds = %for.end.635
  %539 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc648 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %539, i32 0, i32 33
  %arrayidx649 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc648, i32 0, i64 0
  %arrayidx650 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx649, i32 0, i64 1
  %540 = load i32, i32* %arrayidx650, align 4
  %cmp651 = icmp sgt i32 %540, -987654321
  br i1 %cmp651, label %land.lhs.true.653, label %if.end.676

land.lhs.true.653:                                ; preds = %land.lhs.true.647
  %541 = load i32, i32* %prv, align 4
  %idxprom654 = sext i32 %541 to i64
  %542 = load i32**, i32*** %xmx, align 8
  %arrayidx655 = getelementptr inbounds i32*, i32** %542, i64 %idxprom654
  %543 = load i32*, i32** %arrayidx655, align 8
  %arrayidx656 = getelementptr inbounds i32, i32* %543, i64 4
  %544 = load i32, i32* %arrayidx656, align 4
  %conv657 = sitofp i32 %544 to float
  %545 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc658 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %545, i32 0, i32 33
  %arrayidx659 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc658, i32 0, i64 0
  %arrayidx660 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx659, i32 0, i64 1
  %546 = load i32, i32* %arrayidx660, align 4
  %conv661 = sitofp i32 %546 to float
  %547 = load i32, i32* %i, align 4
  %idxprom662 = sext i32 %547 to i64
  %548 = load float*, float** %mocc, align 8
  %arrayidx663 = getelementptr inbounds float, float* %548, i64 %idxprom662
  %549 = load float, float* %arrayidx663, align 4
  %mul664 = fmul float %conv661, %549
  %add665 = fadd float %conv657, %mul664
  %conv666 = fptosi float %add665 to i32
  store i32 %conv666, i32* %sc, align 4
  %cmp667 = icmp sgt i32 %conv666, -987654321
  br i1 %cmp667, label %if.then.669, label %if.end.676

if.then.669:                                      ; preds = %land.lhs.true.653
  %550 = load i32, i32* %sc, align 4
  %551 = load i32, i32* %cur, align 4
  %idxprom670 = sext i32 %551 to i64
  %552 = load i32**, i32*** %xmx, align 8
  %arrayidx671 = getelementptr inbounds i32*, i32** %552, i64 %idxprom670
  %553 = load i32*, i32** %arrayidx671, align 8
  %arrayidx672 = getelementptr inbounds i32, i32* %553, i64 4
  store i32 %550, i32* %arrayidx672, align 4
  %554 = load i32, i32* %i, align 4
  %idxprom673 = sext i32 %554 to i64
  %555 = load i8**, i8*** %xtb, align 8
  %arrayidx674 = getelementptr inbounds i8*, i8** %555, i64 %idxprom673
  %556 = load i8*, i8** %arrayidx674, align 8
  %arrayidx675 = getelementptr inbounds i8, i8* %556, i64 4
  store i8 5, i8* %arrayidx675, align 1
  br label %if.end.676

if.end.676:                                       ; preds = %if.then.669, %land.lhs.true.653, %land.lhs.true.647, %for.end.635
  %557 = load i32, i32* %cur, align 4
  %idxprom677 = sext i32 %557 to i64
  %558 = load i32**, i32*** %xmx, align 8
  %arrayidx678 = getelementptr inbounds i32*, i32** %558, i64 %idxprom677
  %559 = load i32*, i32** %arrayidx678, align 8
  %arrayidx679 = getelementptr inbounds i32, i32* %559, i64 1
  store i32 -987654321, i32* %arrayidx679, align 4
  %560 = load i32, i32* %i, align 4
  %idxprom680 = sext i32 %560 to i64
  %561 = load i8**, i8*** %xtb, align 8
  %arrayidx681 = getelementptr inbounds i8*, i8** %561, i64 %idxprom680
  %562 = load i8*, i8** %arrayidx681, align 8
  %arrayidx682 = getelementptr inbounds i8, i8* %562, i64 1
  store i8 0, i8* %arrayidx682, align 1
  store i32 1, i32* %k, align 4
  br label %for.cond.683

for.cond.683:                                     ; preds = %for.inc.721, %if.end.676
  %563 = load i32, i32* %k, align 4
  %564 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M684 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %564, i32 0, i32 20
  %565 = load i32, i32* %M684, align 4
  %cmp685 = icmp sle i32 %563, %565
  br i1 %cmp685, label %for.body.687, label %for.end.723

for.body.687:                                     ; preds = %for.cond.683
  %566 = load i32, i32* %k, align 4
  %idxprom688 = sext i32 %566 to i64
  %567 = load i32, i32* %cur, align 4
  %idxprom689 = sext i32 %567 to i64
  %568 = load i32**, i32*** %mmx, align 8
  %arrayidx690 = getelementptr inbounds i32*, i32** %568, i64 %idxprom689
  %569 = load i32*, i32** %arrayidx690, align 8
  %arrayidx691 = getelementptr inbounds i32, i32* %569, i64 %idxprom688
  %570 = load i32, i32* %arrayidx691, align 4
  %cmp692 = icmp sgt i32 %570, -987654321
  br i1 %cmp692, label %land.lhs.true.694, label %if.end.720

land.lhs.true.694:                                ; preds = %for.body.687
  %571 = load i32, i32* %k, align 4
  %idxprom695 = sext i32 %571 to i64
  %572 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %572, i32 0, i32 35
  %573 = load i32*, i32** %esc, align 8
  %arrayidx696 = getelementptr inbounds i32, i32* %573, i64 %idxprom695
  %574 = load i32, i32* %arrayidx696, align 4
  %cmp697 = icmp sgt i32 %574, -987654321
  br i1 %cmp697, label %land.lhs.true.699, label %if.end.720

land.lhs.true.699:                                ; preds = %land.lhs.true.694
  %575 = load i32, i32* %k, align 4
  %idxprom700 = sext i32 %575 to i64
  %576 = load i32, i32* %cur, align 4
  %idxprom701 = sext i32 %576 to i64
  %577 = load i32**, i32*** %mmx, align 8
  %arrayidx702 = getelementptr inbounds i32*, i32** %577, i64 %idxprom701
  %578 = load i32*, i32** %arrayidx702, align 8
  %arrayidx703 = getelementptr inbounds i32, i32* %578, i64 %idxprom700
  %579 = load i32, i32* %arrayidx703, align 4
  %580 = load i32, i32* %k, align 4
  %idxprom704 = sext i32 %580 to i64
  %581 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc705 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %581, i32 0, i32 35
  %582 = load i32*, i32** %esc705, align 8
  %arrayidx706 = getelementptr inbounds i32, i32* %582, i64 %idxprom704
  %583 = load i32, i32* %arrayidx706, align 4
  %add707 = add nsw i32 %579, %583
  store i32 %add707, i32* %sc, align 4
  %584 = load i32, i32* %cur, align 4
  %idxprom708 = sext i32 %584 to i64
  %585 = load i32**, i32*** %xmx, align 8
  %arrayidx709 = getelementptr inbounds i32*, i32** %585, i64 %idxprom708
  %586 = load i32*, i32** %arrayidx709, align 8
  %arrayidx710 = getelementptr inbounds i32, i32* %586, i64 1
  %587 = load i32, i32* %arrayidx710, align 4
  %cmp711 = icmp sgt i32 %add707, %587
  br i1 %cmp711, label %if.then.713, label %if.end.720

if.then.713:                                      ; preds = %land.lhs.true.699
  %588 = load i32, i32* %sc, align 4
  %589 = load i32, i32* %cur, align 4
  %idxprom714 = sext i32 %589 to i64
  %590 = load i32**, i32*** %xmx, align 8
  %arrayidx715 = getelementptr inbounds i32*, i32** %590, i64 %idxprom714
  %591 = load i32*, i32** %arrayidx715, align 8
  %arrayidx716 = getelementptr inbounds i32, i32* %591, i64 1
  store i32 %588, i32* %arrayidx716, align 4
  %592 = load i32, i32* %k, align 4
  %593 = load i32, i32* %i, align 4
  %idxprom717 = sext i32 %593 to i64
  %594 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %esrc718 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %594, i32 0, i32 4
  %595 = load i32*, i32** %esrc718, align 8
  %arrayidx719 = getelementptr inbounds i32, i32* %595, i64 %idxprom717
  store i32 %592, i32* %arrayidx719, align 4
  br label %if.end.720

if.end.720:                                       ; preds = %if.then.713, %land.lhs.true.699, %land.lhs.true.694, %for.body.687
  br label %for.inc.721

for.inc.721:                                      ; preds = %if.end.720
  %596 = load i32, i32* %k, align 4
  %inc722 = add nsw i32 %596, 1
  store i32 %inc722, i32* %k, align 4
  br label %for.cond.683

for.end.723:                                      ; preds = %for.cond.683
  %597 = load i32, i32* %cur, align 4
  %idxprom724 = sext i32 %597 to i64
  %598 = load i32**, i32*** %xmx, align 8
  %arrayidx725 = getelementptr inbounds i32*, i32** %598, i64 %idxprom724
  %599 = load i32*, i32** %arrayidx725, align 8
  %arrayidx726 = getelementptr inbounds i32, i32* %599, i64 0
  store i32 -987654321, i32* %arrayidx726, align 4
  %600 = load i32, i32* %i, align 4
  %idxprom727 = sext i32 %600 to i64
  %601 = load i8**, i8*** %xtb, align 8
  %arrayidx728 = getelementptr inbounds i8*, i8** %601, i64 %idxprom727
  %602 = load i8*, i8** %arrayidx728, align 8
  %arrayidx729 = getelementptr inbounds i8, i8* %602, i64 0
  store i8 0, i8* %arrayidx729, align 1
  %603 = load i32, i32* %cur, align 4
  %idxprom730 = sext i32 %603 to i64
  %604 = load i32**, i32*** %xmx, align 8
  %arrayidx731 = getelementptr inbounds i32*, i32** %604, i64 %idxprom730
  %605 = load i32*, i32** %arrayidx731, align 8
  %arrayidx732 = getelementptr inbounds i32, i32* %605, i64 4
  %606 = load i32, i32* %arrayidx732, align 4
  %cmp733 = icmp sgt i32 %606, -987654321
  br i1 %cmp733, label %land.lhs.true.735, label %if.end.761

land.lhs.true.735:                                ; preds = %for.end.723
  %607 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc736 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %607, i32 0, i32 33
  %arrayidx737 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc736, i32 0, i64 0
  %arrayidx738 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx737, i32 0, i64 0
  %608 = load i32, i32* %arrayidx738, align 4
  %cmp739 = icmp sgt i32 %608, -987654321
  br i1 %cmp739, label %land.lhs.true.741, label %if.end.761

land.lhs.true.741:                                ; preds = %land.lhs.true.735
  %609 = load i32, i32* %cur, align 4
  %idxprom742 = sext i32 %609 to i64
  %610 = load i32**, i32*** %xmx, align 8
  %arrayidx743 = getelementptr inbounds i32*, i32** %610, i64 %idxprom742
  %611 = load i32*, i32** %arrayidx743, align 8
  %arrayidx744 = getelementptr inbounds i32, i32* %611, i64 4
  %612 = load i32, i32* %arrayidx744, align 4
  %613 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc745 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %613, i32 0, i32 33
  %arrayidx746 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc745, i32 0, i64 0
  %arrayidx747 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx746, i32 0, i64 0
  %614 = load i32, i32* %arrayidx747, align 4
  %add748 = add nsw i32 %612, %614
  store i32 %add748, i32* %sc, align 4
  %615 = load i32, i32* %cur, align 4
  %idxprom749 = sext i32 %615 to i64
  %616 = load i32**, i32*** %xmx, align 8
  %arrayidx750 = getelementptr inbounds i32*, i32** %616, i64 %idxprom749
  %617 = load i32*, i32** %arrayidx750, align 8
  %arrayidx751 = getelementptr inbounds i32, i32* %617, i64 0
  %618 = load i32, i32* %arrayidx751, align 4
  %cmp752 = icmp sgt i32 %add748, %618
  br i1 %cmp752, label %if.then.754, label %if.end.761

if.then.754:                                      ; preds = %land.lhs.true.741
  %619 = load i32, i32* %sc, align 4
  %620 = load i32, i32* %cur, align 4
  %idxprom755 = sext i32 %620 to i64
  %621 = load i32**, i32*** %xmx, align 8
  %arrayidx756 = getelementptr inbounds i32*, i32** %621, i64 %idxprom755
  %622 = load i32*, i32** %arrayidx756, align 8
  %arrayidx757 = getelementptr inbounds i32, i32* %622, i64 0
  store i32 %619, i32* %arrayidx757, align 4
  %623 = load i32, i32* %i, align 4
  %idxprom758 = sext i32 %623 to i64
  %624 = load i8**, i8*** %xtb, align 8
  %arrayidx759 = getelementptr inbounds i8*, i8** %624, i64 %idxprom758
  %625 = load i8*, i8** %arrayidx759, align 8
  %arrayidx760 = getelementptr inbounds i8, i8* %625, i64 0
  store i8 5, i8* %arrayidx760, align 1
  br label %if.end.761

if.end.761:                                       ; preds = %if.then.754, %land.lhs.true.741, %land.lhs.true.735, %for.end.723
  %626 = load i32, i32* %cur, align 4
  %idxprom762 = sext i32 %626 to i64
  %627 = load i32**, i32*** %xmx, align 8
  %arrayidx763 = getelementptr inbounds i32*, i32** %627, i64 %idxprom762
  %628 = load i32*, i32** %arrayidx763, align 8
  %arrayidx764 = getelementptr inbounds i32, i32* %628, i64 2
  store i32 -987654321, i32* %arrayidx764, align 4
  %629 = load i32, i32* %i, align 4
  %idxprom765 = sext i32 %629 to i64
  %630 = load i8**, i8*** %xtb, align 8
  %arrayidx766 = getelementptr inbounds i8*, i8** %630, i64 %idxprom765
  %631 = load i8*, i8** %arrayidx766, align 8
  %arrayidx767 = getelementptr inbounds i8, i8* %631, i64 2
  store i8 0, i8* %arrayidx767, align 1
  %632 = load i32, i32* %prv, align 4
  %idxprom768 = sext i32 %632 to i64
  %633 = load i32**, i32*** %xmx, align 8
  %arrayidx769 = getelementptr inbounds i32*, i32** %633, i64 %idxprom768
  %634 = load i32*, i32** %arrayidx769, align 8
  %arrayidx770 = getelementptr inbounds i32, i32* %634, i64 2
  %635 = load i32, i32* %arrayidx770, align 4
  %cmp771 = icmp sgt i32 %635, -987654321
  br i1 %cmp771, label %land.lhs.true.773, label %if.end.802

land.lhs.true.773:                                ; preds = %if.end.761
  %636 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc774 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %636, i32 0, i32 33
  %arrayidx775 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc774, i32 0, i64 2
  %arrayidx776 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx775, i32 0, i64 1
  %637 = load i32, i32* %arrayidx776, align 4
  %cmp777 = icmp sgt i32 %637, -987654321
  br i1 %cmp777, label %land.lhs.true.779, label %if.end.802

land.lhs.true.779:                                ; preds = %land.lhs.true.773
  %638 = load i32, i32* %prv, align 4
  %idxprom780 = sext i32 %638 to i64
  %639 = load i32**, i32*** %xmx, align 8
  %arrayidx781 = getelementptr inbounds i32*, i32** %639, i64 %idxprom780
  %640 = load i32*, i32** %arrayidx781, align 8
  %arrayidx782 = getelementptr inbounds i32, i32* %640, i64 2
  %641 = load i32, i32* %arrayidx782, align 4
  %conv783 = sitofp i32 %641 to float
  %642 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc784 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %642, i32 0, i32 33
  %arrayidx785 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc784, i32 0, i64 2
  %arrayidx786 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx785, i32 0, i64 1
  %643 = load i32, i32* %arrayidx786, align 4
  %conv787 = sitofp i32 %643 to float
  %644 = load i32, i32* %i, align 4
  %idxprom788 = sext i32 %644 to i64
  %645 = load float*, float** %mocc, align 8
  %arrayidx789 = getelementptr inbounds float, float* %645, i64 %idxprom788
  %646 = load float, float* %arrayidx789, align 4
  %mul790 = fmul float %conv787, %646
  %add791 = fadd float %conv783, %mul790
  %conv792 = fptosi float %add791 to i32
  store i32 %conv792, i32* %sc, align 4
  %cmp793 = icmp sgt i32 %conv792, -987654321
  br i1 %cmp793, label %if.then.795, label %if.end.802

if.then.795:                                      ; preds = %land.lhs.true.779
  %647 = load i32, i32* %sc, align 4
  %648 = load i32, i32* %cur, align 4
  %idxprom796 = sext i32 %648 to i64
  %649 = load i32**, i32*** %xmx, align 8
  %arrayidx797 = getelementptr inbounds i32*, i32** %649, i64 %idxprom796
  %650 = load i32*, i32** %arrayidx797, align 8
  %arrayidx798 = getelementptr inbounds i32, i32* %650, i64 2
  store i32 %647, i32* %arrayidx798, align 4
  %651 = load i32, i32* %i, align 4
  %idxprom799 = sext i32 %651 to i64
  %652 = load i8**, i8*** %xtb, align 8
  %arrayidx800 = getelementptr inbounds i8*, i8** %652, i64 %idxprom799
  %653 = load i8*, i8** %arrayidx800, align 8
  %arrayidx801 = getelementptr inbounds i8, i8* %653, i64 2
  store i8 8, i8* %arrayidx801, align 1
  br label %if.end.802

if.end.802:                                       ; preds = %if.then.795, %land.lhs.true.779, %land.lhs.true.773, %if.end.761
  %654 = load i32, i32* %cur, align 4
  %idxprom803 = sext i32 %654 to i64
  %655 = load i32**, i32*** %xmx, align 8
  %arrayidx804 = getelementptr inbounds i32*, i32** %655, i64 %idxprom803
  %656 = load i32*, i32** %arrayidx804, align 8
  %arrayidx805 = getelementptr inbounds i32, i32* %656, i64 1
  %657 = load i32, i32* %arrayidx805, align 4
  %cmp806 = icmp sgt i32 %657, -987654321
  br i1 %cmp806, label %land.lhs.true.808, label %if.end.834

land.lhs.true.808:                                ; preds = %if.end.802
  %658 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc809 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %658, i32 0, i32 33
  %arrayidx810 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc809, i32 0, i64 1
  %arrayidx811 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx810, i32 0, i64 0
  %659 = load i32, i32* %arrayidx811, align 4
  %cmp812 = icmp sgt i32 %659, -987654321
  br i1 %cmp812, label %land.lhs.true.814, label %if.end.834

land.lhs.true.814:                                ; preds = %land.lhs.true.808
  %660 = load i32, i32* %cur, align 4
  %idxprom815 = sext i32 %660 to i64
  %661 = load i32**, i32*** %xmx, align 8
  %arrayidx816 = getelementptr inbounds i32*, i32** %661, i64 %idxprom815
  %662 = load i32*, i32** %arrayidx816, align 8
  %arrayidx817 = getelementptr inbounds i32, i32* %662, i64 1
  %663 = load i32, i32* %arrayidx817, align 4
  %664 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc818 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %664, i32 0, i32 33
  %arrayidx819 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc818, i32 0, i64 1
  %arrayidx820 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx819, i32 0, i64 0
  %665 = load i32, i32* %arrayidx820, align 4
  %add821 = add nsw i32 %663, %665
  store i32 %add821, i32* %sc, align 4
  %666 = load i32, i32* %cur, align 4
  %idxprom822 = sext i32 %666 to i64
  %667 = load i32**, i32*** %xmx, align 8
  %arrayidx823 = getelementptr inbounds i32*, i32** %667, i64 %idxprom822
  %668 = load i32*, i32** %arrayidx823, align 8
  %arrayidx824 = getelementptr inbounds i32, i32* %668, i64 2
  %669 = load i32, i32* %arrayidx824, align 4
  %cmp825 = icmp sgt i32 %add821, %669
  br i1 %cmp825, label %if.then.827, label %if.end.834

if.then.827:                                      ; preds = %land.lhs.true.814
  %670 = load i32, i32* %sc, align 4
  %671 = load i32, i32* %cur, align 4
  %idxprom828 = sext i32 %671 to i64
  %672 = load i32**, i32*** %xmx, align 8
  %arrayidx829 = getelementptr inbounds i32*, i32** %672, i64 %idxprom828
  %673 = load i32*, i32** %arrayidx829, align 8
  %arrayidx830 = getelementptr inbounds i32, i32* %673, i64 2
  store i32 %670, i32* %arrayidx830, align 4
  %674 = load i32, i32* %i, align 4
  %idxprom831 = sext i32 %674 to i64
  %675 = load i8**, i8*** %xtb, align 8
  %arrayidx832 = getelementptr inbounds i8*, i8** %675, i64 %idxprom831
  %676 = load i8*, i8** %arrayidx832, align 8
  %arrayidx833 = getelementptr inbounds i8, i8* %676, i64 2
  store i8 7, i8* %arrayidx833, align 1
  br label %if.end.834

if.end.834:                                       ; preds = %if.then.827, %land.lhs.true.814, %land.lhs.true.808, %if.end.802
  br label %for.inc.835

for.inc.835:                                      ; preds = %if.end.834
  %677 = load i32, i32* %i, align 4
  %inc836 = add nsw i32 %677, 1
  store i32 %inc836, i32* %i, align 4
  br label %for.cond.152

for.end.837:                                      ; preds = %for.cond.152
  %678 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen838 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %678, i32 0, i32 3
  %679 = load i32, i32* %alen838, align 4
  %rem839 = srem i32 %679, 2
  %idxprom840 = sext i32 %rem839 to i64
  %680 = load i32**, i32*** %xmx, align 8
  %arrayidx841 = getelementptr inbounds i32*, i32** %680, i64 %idxprom840
  %681 = load i32*, i32** %arrayidx841, align 8
  %arrayidx842 = getelementptr inbounds i32, i32* %681, i64 2
  %682 = load i32, i32* %arrayidx842, align 4
  %683 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %xsc843 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %683, i32 0, i32 33
  %arrayidx844 = getelementptr inbounds [4 x [2 x i32]], [4 x [2 x i32]]* %xsc843, i32 0, i64 2
  %arrayidx845 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx844, i32 0, i64 0
  %684 = load i32, i32* %arrayidx845, align 4
  %add846 = add nsw i32 %682, %684
  store i32 %add846, i32* %sc, align 4
  %685 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  %686 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %687 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen847 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %687, i32 0, i32 3
  %688 = load i32, i32* %alen847, align 4
  %call848 = call %struct.p7trace_s* @ShadowTrace(%struct.dpshadow_s* %685, %struct.plan7_s* %686, i32 %688)
  store %struct.p7trace_s* %call848, %struct.p7trace_s** %tr, align 8
  %689 = load %struct.dpmatrix_s*, %struct.dpmatrix_s** %mx, align 8
  call void @FreePlan7Matrix(%struct.dpmatrix_s* %689)
  %690 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb, align 8
  call void @FreeShadowMatrix(%struct.dpshadow_s* %690)
  store i32 1, i32* %i, align 4
  br label %for.cond.849

for.cond.849:                                     ; preds = %for.inc.856, %for.end.837
  %691 = load i32, i32* %i, align 4
  %692 = load %struct.msa_struct*, %struct.msa_struct** %msa.addr, align 8
  %alen850 = getelementptr inbounds %struct.msa_struct, %struct.msa_struct* %692, i32 0, i32 3
  %693 = load i32, i32* %alen850, align 4
  %cmp851 = icmp sle i32 %691, %693
  br i1 %cmp851, label %for.body.853, label %for.end.858

for.body.853:                                     ; preds = %for.cond.849
  %694 = load i32, i32* %i, align 4
  %idxprom854 = sext i32 %694 to i64
  %695 = load float**, float*** %con, align 8
  %arrayidx855 = getelementptr inbounds float*, float** %695, i64 %idxprom854
  %696 = load float*, float** %arrayidx855, align 8
  %697 = bitcast float* %696 to i8*
  call void @free(i8* %697) #4
  br label %for.inc.856

for.inc.856:                                      ; preds = %for.body.853
  %698 = load i32, i32* %i, align 4
  %inc857 = add nsw i32 %698, 1
  store i32 %inc857, i32* %i, align 4
  br label %for.cond.849

for.end.858:                                      ; preds = %for.cond.849
  %699 = load float**, float*** %con, align 8
  %700 = bitcast float** %699 to i8*
  call void @free(i8* %700) #4
  %701 = load float*, float** %mocc, align 8
  %702 = bitcast float* %701 to i8*
  call void @free(i8* %702) #4
  %703 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  ret %struct.p7trace_s* %703
}

declare void @FSet(float*, i32, float) #1

declare float @FSum(float*, i32) #1

declare void @P7CountSymbol(float*, i8 signext, float) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare void @FScale(float*, i32, float) #1

; Function Attrs: nounwind uwtable
define %struct.p7trace_s* @ShadowTrace(%struct.dpshadow_s* %tb, %struct.plan7_s* %hmm, i32 %L) #0 {
entry:
  %tb.addr = alloca %struct.dpshadow_s*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %L.addr = alloca i32, align 4
  %tr = alloca %struct.p7trace_s*, align 8
  %curralloc = alloca i32, align 4
  %tpos = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %nxtstate = alloca i8, align 1
  %dk = alloca i32, align 4
  store %struct.dpshadow_s* %tb, %struct.dpshadow_s** %tb.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  %0 = load i32, i32* %L.addr, align 4
  %mul = mul nsw i32 %0, 2
  %add = add nsw i32 %mul, 6
  store i32 %add, i32* %curralloc, align 4
  %1 = load i32, i32* %curralloc, align 4
  call void @P7AllocTrace(i32 %1, %struct.p7trace_s** %tr)
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %2, i32 0, i32 1
  %3 = load i8*, i8** %statetype, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 9, i8* %arrayidx, align 1
  %4 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %4, i32 0, i32 2
  %5 = load i32*, i32** %nodeidx, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 0, i32* %arrayidx1, align 4
  %6 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %6, i32 0, i32 3
  %7 = load i32*, i32** %pos, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 0, i32* %arrayidx2, align 4
  store i32 1, i32* %tpos, align 4
  %8 = load i32, i32* %L.addr, align 4
  store i32 %8, i32* %i, align 4
  store i32 0, i32* %k, align 4
  store i8 8, i8* %nxtstate, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.208, %entry
  %9 = load i8, i8* %nxtstate, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp ne i32 %conv, 4
  br i1 %cmp, label %while.body, label %while.end.209

while.body:                                       ; preds = %while.cond
  %10 = load i8, i8* %nxtstate, align 1
  %conv4 = sext i8 %10 to i32
  switch i32 %conv4, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.18
    i32 2, label %sw.bb.34
    i32 5, label %sw.bb.50
    i32 6, label %sw.bb.68
    i32 10, label %sw.bb.114
    i32 7, label %sw.bb.137
    i32 8, label %sw.bb.180
  ]

sw.bb:                                            ; preds = %while.body
  %11 = load i32, i32* %tpos, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype5 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %12, i32 0, i32 1
  %13 = load i8*, i8** %statetype5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %13, i64 %idxprom
  store i8 1, i8* %arrayidx6, align 1
  %14 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %mtb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %16, i32 0, i32 1
  %17 = load i8**, i8*** %mtb, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %17, i64 %idxprom8
  %18 = load i8*, i8** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %18, i64 %idxprom7
  %19 = load i8, i8* %arrayidx10, align 1
  store i8 %19, i8* %nxtstate, align 1
  %20 = load i32, i32* %k, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %k, align 4
  %21 = load i32, i32* %tpos, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx12 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %22, i32 0, i32 2
  %23 = load i32*, i32** %nodeidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %23, i64 %idxprom11
  store i32 %20, i32* %arrayidx13, align 4
  %24 = load i32, i32* %i, align 4
  %dec14 = add nsw i32 %24, -1
  store i32 %dec14, i32* %i, align 4
  %25 = load i32, i32* %tpos, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos16 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %26, i32 0, i32 3
  %27 = load i32*, i32** %pos16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %27, i64 %idxprom15
  store i32 %24, i32* %arrayidx17, align 4
  %28 = load i32, i32* %tpos, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %while.body
  %29 = load i32, i32* %tpos, align 4
  %idxprom19 = sext i32 %29 to i64
  %30 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype20 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %30, i32 0, i32 1
  %31 = load i8*, i8** %statetype20, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %31, i64 %idxprom19
  store i8 3, i8* %arrayidx21, align 1
  %32 = load i32, i32* %k, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %33 to i64
  %34 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %itb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %34, i32 0, i32 2
  %35 = load i8**, i8*** %itb, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %35, i64 %idxprom23
  %36 = load i8*, i8** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %36, i64 %idxprom22
  %37 = load i8, i8* %arrayidx25, align 1
  store i8 %37, i8* %nxtstate, align 1
  %38 = load i32, i32* %k, align 4
  %39 = load i32, i32* %tpos, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx27 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %40, i32 0, i32 2
  %41 = load i32*, i32** %nodeidx27, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %41, i64 %idxprom26
  store i32 %38, i32* %arrayidx28, align 4
  %42 = load i32, i32* %i, align 4
  %dec29 = add nsw i32 %42, -1
  store i32 %dec29, i32* %i, align 4
  %43 = load i32, i32* %tpos, align 4
  %idxprom30 = sext i32 %43 to i64
  %44 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos31 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %44, i32 0, i32 3
  %45 = load i32*, i32** %pos31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %45, i64 %idxprom30
  store i32 %42, i32* %arrayidx32, align 4
  %46 = load i32, i32* %tpos, align 4
  %inc33 = add nsw i32 %46, 1
  store i32 %inc33, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %while.body
  %47 = load i32, i32* %tpos, align 4
  %idxprom35 = sext i32 %47 to i64
  %48 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype36 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %48, i32 0, i32 1
  %49 = load i8*, i8** %statetype36, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %49, i64 %idxprom35
  store i8 2, i8* %arrayidx37, align 1
  %50 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %50 to i64
  %51 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %51 to i64
  %52 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %dtb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %52, i32 0, i32 3
  %53 = load i8**, i8*** %dtb, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %53, i64 %idxprom39
  %54 = load i8*, i8** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %54, i64 %idxprom38
  %55 = load i8, i8* %arrayidx41, align 1
  store i8 %55, i8* %nxtstate, align 1
  %56 = load i32, i32* %k, align 4
  %dec42 = add nsw i32 %56, -1
  store i32 %dec42, i32* %k, align 4
  %57 = load i32, i32* %tpos, align 4
  %idxprom43 = sext i32 %57 to i64
  %58 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx44 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %58, i32 0, i32 2
  %59 = load i32*, i32** %nodeidx44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %59, i64 %idxprom43
  store i32 %56, i32* %arrayidx45, align 4
  %60 = load i32, i32* %tpos, align 4
  %idxprom46 = sext i32 %60 to i64
  %61 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos47 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %61, i32 0, i32 3
  %62 = load i32*, i32** %pos47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %62, i64 %idxprom46
  store i32 0, i32* %arrayidx48, align 4
  %63 = load i32, i32* %tpos, align 4
  %inc49 = add nsw i32 %63, 1
  store i32 %inc49, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.50:                                         ; preds = %while.body
  %64 = load i32, i32* %tpos, align 4
  %idxprom51 = sext i32 %64 to i64
  %65 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype52 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %65, i32 0, i32 1
  %66 = load i8*, i8** %statetype52, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %66, i64 %idxprom51
  store i8 5, i8* %arrayidx53, align 1
  %67 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %67 to i64
  %68 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %xtb = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %68, i32 0, i32 0
  %69 = load i8**, i8*** %xtb, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %69, i64 %idxprom54
  %70 = load i8*, i8** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %70, i64 4
  %71 = load i8, i8* %arrayidx56, align 1
  store i8 %71, i8* %nxtstate, align 1
  %72 = load i32, i32* %tpos, align 4
  %idxprom57 = sext i32 %72 to i64
  %73 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx58 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %73, i32 0, i32 2
  %74 = load i32*, i32** %nodeidx58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %74, i64 %idxprom57
  store i32 0, i32* %arrayidx59, align 4
  %75 = load i8, i8* %nxtstate, align 1
  %conv60 = sext i8 %75 to i32
  %cmp61 = icmp eq i32 %conv60, 5
  br i1 %cmp61, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.50
  %76 = load i32, i32* %i, align 4
  %dec63 = add nsw i32 %76, -1
  store i32 %dec63, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.50
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %76, %cond.true ], [ 0, %cond.false ]
  %77 = load i32, i32* %tpos, align 4
  %idxprom64 = sext i32 %77 to i64
  %78 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos65 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %78, i32 0, i32 3
  %79 = load i32*, i32** %pos65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %79, i64 %idxprom64
  store i32 %cond, i32* %arrayidx66, align 4
  %80 = load i32, i32* %tpos, align 4
  %inc67 = add nsw i32 %80, 1
  store i32 %inc67, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %while.body
  %81 = load i32, i32* %k, align 4
  %add69 = add nsw i32 %81, 1
  %idxprom70 = sext i32 %add69 to i64
  %82 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %begin = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %82, i32 0, i32 26
  %83 = load float*, float** %begin, align 8
  %arrayidx71 = getelementptr inbounds float, float* %83, i64 %idxprom70
  %84 = load float, float* %arrayidx71, align 4
  %85 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %p1 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %85, i32 0, i32 29
  %86 = load float, float* %p1, align 4
  %call = call i32 @Prob2Score(float %84, float %86)
  %conv72 = sitofp i32 %call to double
  %add73 = fadd double %conv72, 1.000000e+03
  %87 = load i32, i32* %k, align 4
  %add74 = add nsw i32 %87, 1
  %idxprom75 = sext i32 %add74 to i64
  %88 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %bsc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %88, i32 0, i32 34
  %89 = load i32*, i32** %bsc, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %89, i64 %idxprom75
  %90 = load i32, i32* %arrayidx76, align 4
  %conv77 = sitofp i32 %90 to double
  %cmp78 = fcmp ole double %add73, %conv77
  br i1 %cmp78, label %if.then, label %if.end.99

if.then:                                          ; preds = %sw.bb.68
  br label %while.cond.80

while.cond.80:                                    ; preds = %if.end, %if.then
  %91 = load i32, i32* %k, align 4
  %cmp81 = icmp sgt i32 %91, 0
  br i1 %cmp81, label %while.body.83, label %while.end

while.body.83:                                    ; preds = %while.cond.80
  %92 = load i32, i32* %tpos, align 4
  %idxprom84 = sext i32 %92 to i64
  %93 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype85 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %93, i32 0, i32 1
  %94 = load i8*, i8** %statetype85, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %94, i64 %idxprom84
  store i8 2, i8* %arrayidx86, align 1
  %95 = load i32, i32* %k, align 4
  %dec87 = add nsw i32 %95, -1
  store i32 %dec87, i32* %k, align 4
  %96 = load i32, i32* %tpos, align 4
  %idxprom88 = sext i32 %96 to i64
  %97 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx89 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %97, i32 0, i32 2
  %98 = load i32*, i32** %nodeidx89, align 8
  %arrayidx90 = getelementptr inbounds i32, i32* %98, i64 %idxprom88
  store i32 %95, i32* %arrayidx90, align 4
  %99 = load i32, i32* %tpos, align 4
  %idxprom91 = sext i32 %99 to i64
  %100 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos92 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %100, i32 0, i32 3
  %101 = load i32*, i32** %pos92, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %101, i64 %idxprom91
  store i32 0, i32* %arrayidx93, align 4
  %102 = load i32, i32* %tpos, align 4
  %inc94 = add nsw i32 %102, 1
  store i32 %inc94, i32* %tpos, align 4
  %103 = load i32, i32* %tpos, align 4
  %104 = load i32, i32* %curralloc, align 4
  %cmp95 = icmp eq i32 %103, %104
  br i1 %cmp95, label %if.then.97, label %if.end

if.then.97:                                       ; preds = %while.body.83
  %105 = load i32, i32* %L.addr, align 4
  %106 = load i32, i32* %curralloc, align 4
  %add98 = add nsw i32 %106, %105
  store i32 %add98, i32* %curralloc, align 4
  %107 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %108 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %107, i32 %108)
  br label %if.end

if.end:                                           ; preds = %if.then.97, %while.body.83
  br label %while.cond.80

while.end:                                        ; preds = %while.cond.80
  br label %if.end.99

if.end.99:                                        ; preds = %while.end, %sw.bb.68
  %109 = load i32, i32* %tpos, align 4
  %idxprom100 = sext i32 %109 to i64
  %110 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype101 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %110, i32 0, i32 1
  %111 = load i8*, i8** %statetype101, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %111, i64 %idxprom100
  store i8 6, i8* %arrayidx102, align 1
  %112 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %112 to i64
  %113 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %xtb104 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %113, i32 0, i32 0
  %114 = load i8**, i8*** %xtb104, align 8
  %arrayidx105 = getelementptr inbounds i8*, i8** %114, i64 %idxprom103
  %115 = load i8*, i8** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %115, i64 0
  %116 = load i8, i8* %arrayidx106, align 1
  store i8 %116, i8* %nxtstate, align 1
  %117 = load i32, i32* %tpos, align 4
  %idxprom107 = sext i32 %117 to i64
  %118 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx108 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %118, i32 0, i32 2
  %119 = load i32*, i32** %nodeidx108, align 8
  %arrayidx109 = getelementptr inbounds i32, i32* %119, i64 %idxprom107
  store i32 0, i32* %arrayidx109, align 4
  %120 = load i32, i32* %tpos, align 4
  %idxprom110 = sext i32 %120 to i64
  %121 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos111 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %121, i32 0, i32 3
  %122 = load i32*, i32** %pos111, align 8
  %arrayidx112 = getelementptr inbounds i32, i32* %122, i64 %idxprom110
  store i32 0, i32* %arrayidx112, align 4
  %123 = load i32, i32* %tpos, align 4
  %inc113 = add nsw i32 %123, 1
  store i32 %inc113, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.114:                                        ; preds = %while.body
  %124 = load i32, i32* %tpos, align 4
  %idxprom115 = sext i32 %124 to i64
  %125 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype116 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %125, i32 0, i32 1
  %126 = load i8*, i8** %statetype116, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %126, i64 %idxprom115
  store i8 10, i8* %arrayidx117, align 1
  %127 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %127 to i64
  %128 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %xtb119 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %128, i32 0, i32 0
  %129 = load i8**, i8*** %xtb119, align 8
  %arrayidx120 = getelementptr inbounds i8*, i8** %129, i64 %idxprom118
  %130 = load i8*, i8** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %130, i64 3
  %131 = load i8, i8* %arrayidx121, align 1
  store i8 %131, i8* %nxtstate, align 1
  %132 = load i32, i32* %tpos, align 4
  %idxprom122 = sext i32 %132 to i64
  %133 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx123 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %133, i32 0, i32 2
  %134 = load i32*, i32** %nodeidx123, align 8
  %arrayidx124 = getelementptr inbounds i32, i32* %134, i64 %idxprom122
  store i32 0, i32* %arrayidx124, align 4
  %135 = load i8, i8* %nxtstate, align 1
  %conv125 = sext i8 %135 to i32
  %cmp126 = icmp eq i32 %conv125, 10
  br i1 %cmp126, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %sw.bb.114
  %136 = load i32, i32* %i, align 4
  %dec129 = add nsw i32 %136, -1
  store i32 %dec129, i32* %i, align 4
  br label %cond.end.131

cond.false.130:                                   ; preds = %sw.bb.114
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.128
  %cond132 = phi i32 [ %136, %cond.true.128 ], [ 0, %cond.false.130 ]
  %137 = load i32, i32* %tpos, align 4
  %idxprom133 = sext i32 %137 to i64
  %138 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos134 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %138, i32 0, i32 3
  %139 = load i32*, i32** %pos134, align 8
  %arrayidx135 = getelementptr inbounds i32, i32* %139, i64 %idxprom133
  store i32 %cond132, i32* %arrayidx135, align 4
  %140 = load i32, i32* %tpos, align 4
  %inc136 = add nsw i32 %140, 1
  store i32 %inc136, i32* %tpos, align 4
  br label %sw.epilog

sw.bb.137:                                        ; preds = %while.body
  %141 = load i32, i32* %tpos, align 4
  %idxprom138 = sext i32 %141 to i64
  %142 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype139 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %142, i32 0, i32 1
  %143 = load i8*, i8** %statetype139, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %143, i64 %idxprom138
  store i8 7, i8* %arrayidx140, align 1
  %144 = load i32, i32* %tpos, align 4
  %idxprom141 = sext i32 %144 to i64
  %145 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx142 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %145, i32 0, i32 2
  %146 = load i32*, i32** %nodeidx142, align 8
  %arrayidx143 = getelementptr inbounds i32, i32* %146, i64 %idxprom141
  store i32 0, i32* %arrayidx143, align 4
  %147 = load i32, i32* %tpos, align 4
  %idxprom144 = sext i32 %147 to i64
  %148 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos145 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %148, i32 0, i32 3
  %149 = load i32*, i32** %pos145, align 8
  %arrayidx146 = getelementptr inbounds i32, i32* %149, i64 %idxprom144
  store i32 0, i32* %arrayidx146, align 4
  %150 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %150 to i64
  %151 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %esrc = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %151, i32 0, i32 4
  %152 = load i32*, i32** %esrc, align 8
  %arrayidx148 = getelementptr inbounds i32, i32* %152, i64 %idxprom147
  %153 = load i32, i32* %arrayidx148, align 4
  store i32 %153, i32* %k, align 4
  store i8 1, i8* %nxtstate, align 1
  %154 = load i32, i32* %tpos, align 4
  %inc149 = add nsw i32 %154, 1
  store i32 %inc149, i32* %tpos, align 4
  %155 = load i32, i32* %k, align 4
  %idxprom150 = sext i32 %155 to i64
  %156 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %end = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %156, i32 0, i32 27
  %157 = load float*, float** %end, align 8
  %arrayidx151 = getelementptr inbounds float, float* %157, i64 %idxprom150
  %158 = load float, float* %arrayidx151, align 4
  %call152 = call i32 @Prob2Score(float %158, float 1.000000e+00)
  %conv153 = sitofp i32 %call152 to double
  %add154 = fadd double %conv153, 1.000000e+03
  %159 = load i32, i32* %k, align 4
  %idxprom155 = sext i32 %159 to i64
  %160 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %esc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %160, i32 0, i32 35
  %161 = load i32*, i32** %esc, align 8
  %arrayidx156 = getelementptr inbounds i32, i32* %161, i64 %idxprom155
  %162 = load i32, i32* %arrayidx156, align 4
  %conv157 = sitofp i32 %162 to double
  %cmp158 = fcmp ole double %add154, %conv157
  br i1 %cmp158, label %if.then.160, label %if.end.179

if.then.160:                                      ; preds = %sw.bb.137
  %163 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %163, i32 0, i32 20
  %164 = load i32, i32* %M, align 4
  store i32 %164, i32* %dk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.160
  %165 = load i32, i32* %dk, align 4
  %166 = load i32, i32* %k, align 4
  %cmp161 = icmp sgt i32 %165, %166
  br i1 %cmp161, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %167 = load i32, i32* %tpos, align 4
  %idxprom163 = sext i32 %167 to i64
  %168 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype164 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %168, i32 0, i32 1
  %169 = load i8*, i8** %statetype164, align 8
  %arrayidx165 = getelementptr inbounds i8, i8* %169, i64 %idxprom163
  store i8 2, i8* %arrayidx165, align 1
  %170 = load i32, i32* %dk, align 4
  %171 = load i32, i32* %tpos, align 4
  %idxprom166 = sext i32 %171 to i64
  %172 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx167 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %172, i32 0, i32 2
  %173 = load i32*, i32** %nodeidx167, align 8
  %arrayidx168 = getelementptr inbounds i32, i32* %173, i64 %idxprom166
  store i32 %170, i32* %arrayidx168, align 4
  %174 = load i32, i32* %tpos, align 4
  %idxprom169 = sext i32 %174 to i64
  %175 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos170 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %175, i32 0, i32 3
  %176 = load i32*, i32** %pos170, align 8
  %arrayidx171 = getelementptr inbounds i32, i32* %176, i64 %idxprom169
  store i32 0, i32* %arrayidx171, align 4
  %177 = load i32, i32* %tpos, align 4
  %inc172 = add nsw i32 %177, 1
  store i32 %inc172, i32* %tpos, align 4
  %178 = load i32, i32* %tpos, align 4
  %179 = load i32, i32* %curralloc, align 4
  %cmp173 = icmp eq i32 %178, %179
  br i1 %cmp173, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %for.body
  %180 = load i32, i32* %L.addr, align 4
  %181 = load i32, i32* %curralloc, align 4
  %add176 = add nsw i32 %181, %180
  store i32 %add176, i32* %curralloc, align 4
  %182 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %183 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %182, i32 %183)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.175, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.177
  %184 = load i32, i32* %dk, align 4
  %dec178 = add nsw i32 %184, -1
  store i32 %dec178, i32* %dk, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.179

if.end.179:                                       ; preds = %for.end, %sw.bb.137
  br label %sw.epilog

sw.bb.180:                                        ; preds = %while.body
  %185 = load i32, i32* %tpos, align 4
  %idxprom181 = sext i32 %185 to i64
  %186 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype182 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %186, i32 0, i32 1
  %187 = load i8*, i8** %statetype182, align 8
  %arrayidx183 = getelementptr inbounds i8, i8* %187, i64 %idxprom181
  store i8 8, i8* %arrayidx183, align 1
  %188 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %188 to i64
  %189 = load %struct.dpshadow_s*, %struct.dpshadow_s** %tb.addr, align 8
  %xtb185 = getelementptr inbounds %struct.dpshadow_s, %struct.dpshadow_s* %189, i32 0, i32 0
  %190 = load i8**, i8*** %xtb185, align 8
  %arrayidx186 = getelementptr inbounds i8*, i8** %190, i64 %idxprom184
  %191 = load i8*, i8** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i8, i8* %191, i64 2
  %192 = load i8, i8* %arrayidx187, align 1
  store i8 %192, i8* %nxtstate, align 1
  %193 = load i32, i32* %tpos, align 4
  %idxprom188 = sext i32 %193 to i64
  %194 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx189 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %194, i32 0, i32 2
  %195 = load i32*, i32** %nodeidx189, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %195, i64 %idxprom188
  store i32 0, i32* %arrayidx190, align 4
  %196 = load i8, i8* %nxtstate, align 1
  %conv191 = sext i8 %196 to i32
  %cmp192 = icmp eq i32 %conv191, 8
  br i1 %cmp192, label %cond.true.194, label %cond.false.196

cond.true.194:                                    ; preds = %sw.bb.180
  %197 = load i32, i32* %i, align 4
  %dec195 = add nsw i32 %197, -1
  store i32 %dec195, i32* %i, align 4
  br label %cond.end.197

cond.false.196:                                   ; preds = %sw.bb.180
  br label %cond.end.197

cond.end.197:                                     ; preds = %cond.false.196, %cond.true.194
  %cond198 = phi i32 [ %197, %cond.true.194 ], [ 0, %cond.false.196 ]
  %198 = load i32, i32* %tpos, align 4
  %idxprom199 = sext i32 %198 to i64
  %199 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos200 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %199, i32 0, i32 3
  %200 = load i32*, i32** %pos200, align 8
  %arrayidx201 = getelementptr inbounds i32, i32* %200, i64 %idxprom199
  store i32 %cond198, i32* %arrayidx201, align 4
  %201 = load i32, i32* %tpos, align 4
  %inc202 = add nsw i32 %201, 1
  store i32 %inc202, i32* %tpos, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %202 = load i8, i8* %nxtstate, align 1
  %call203 = call i8* @Statetype(i8 signext %202)
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i8* %call203)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.197, %if.end.179, %cond.end.131, %if.end.99, %cond.end, %sw.bb.34, %sw.bb.18, %sw.bb
  %203 = load i32, i32* %tpos, align 4
  %204 = load i32, i32* %curralloc, align 4
  %cmp204 = icmp eq i32 %203, %204
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %sw.epilog
  %205 = load i32, i32* %L.addr, align 4
  %206 = load i32, i32* %curralloc, align 4
  %add207 = add nsw i32 %206, %205
  store i32 %add207, i32* %curralloc, align 4
  %207 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %208 = load i32, i32* %curralloc, align 4
  call void @P7ReallocTrace(%struct.p7trace_s* %207, i32 %208)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %sw.epilog
  br label %while.cond

while.end.209:                                    ; preds = %while.cond
  %209 = load i32, i32* %tpos, align 4
  %idxprom210 = sext i32 %209 to i64
  %210 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %statetype211 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %210, i32 0, i32 1
  %211 = load i8*, i8** %statetype211, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %211, i64 %idxprom210
  store i8 4, i8* %arrayidx212, align 1
  %212 = load i32, i32* %tpos, align 4
  %idxprom213 = sext i32 %212 to i64
  %213 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %nodeidx214 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %213, i32 0, i32 2
  %214 = load i32*, i32** %nodeidx214, align 8
  %arrayidx215 = getelementptr inbounds i32, i32* %214, i64 %idxprom213
  store i32 0, i32* %arrayidx215, align 4
  %215 = load i32, i32* %tpos, align 4
  %idxprom216 = sext i32 %215 to i64
  %216 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %pos217 = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %216, i32 0, i32 3
  %217 = load i32*, i32** %pos217, align 8
  %arrayidx218 = getelementptr inbounds i32, i32* %217, i64 %idxprom216
  store i32 0, i32* %arrayidx218, align 4
  %218 = load i32, i32* %tpos, align 4
  %add219 = add nsw i32 %218, 1
  %219 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  %tlen = getelementptr inbounds %struct.p7trace_s, %struct.p7trace_s* %219, i32 0, i32 0
  store i32 %add219, i32* %tlen, align 4
  %220 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  call void @P7ReverseTrace(%struct.p7trace_s* %220)
  %221 = load %struct.p7trace_s*, %struct.p7trace_s** %tr, align 8
  ret %struct.p7trace_s* %221
}

; Function Attrs: nounwind uwtable
define float @PostprocessSignificantHit(%struct.tophit_s* %ghit, %struct.tophit_s* %dhit, %struct.p7trace_s* %tr, %struct.plan7_s* %hmm, i8* %dsq, i32 %L, i8* %seqname, i8* %seqacc, i8* %seqdesc, i32 %do_forward, float %sc_override, i32 %do_null2, %struct.threshold_s* %thresh, i32 %hmmpfam_mode) #0 {
entry:
  %retval = alloca float, align 4
  %ghit.addr = alloca %struct.tophit_s*, align 8
  %dhit.addr = alloca %struct.tophit_s*, align 8
  %tr.addr = alloca %struct.p7trace_s*, align 8
  %hmm.addr = alloca %struct.plan7_s*, align 8
  %dsq.addr = alloca i8*, align 8
  %L.addr = alloca i32, align 4
  %seqname.addr = alloca i8*, align 8
  %seqacc.addr = alloca i8*, align 8
  %seqdesc.addr = alloca i8*, align 8
  %do_forward.addr = alloca i32, align 4
  %sc_override.addr = alloca float, align 4
  %do_null2.addr = alloca i32, align 4
  %thresh.addr = alloca %struct.threshold_s*, align 8
  %hmmpfam_mode.addr = alloca i32, align 4
  %tarr = alloca %struct.p7trace_s**, align 8
  %ali = alloca %struct.fancyali_s*, align 8
  %ntr = alloca i32, align 4
  %tidx = alloca i32, align 4
  %ndom = alloca i32, align 4
  %didx = alloca i32, align 4
  %k1 = alloca i32, align 4
  %k2 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %whole_sc = alloca float, align 4
  %score = alloca float*, align 8
  %usedomain = alloca i32*, align 8
  %whole_pval = alloca double, align 8
  %pvalue = alloca double, align 8
  %sortkey = alloca double, align 8
  store %struct.tophit_s* %ghit, %struct.tophit_s** %ghit.addr, align 8
  store %struct.tophit_s* %dhit, %struct.tophit_s** %dhit.addr, align 8
  store %struct.p7trace_s* %tr, %struct.p7trace_s** %tr.addr, align 8
  store %struct.plan7_s* %hmm, %struct.plan7_s** %hmm.addr, align 8
  store i8* %dsq, i8** %dsq.addr, align 8
  store i32 %L, i32* %L.addr, align 4
  store i8* %seqname, i8** %seqname.addr, align 8
  store i8* %seqacc, i8** %seqacc.addr, align 8
  store i8* %seqdesc, i8** %seqdesc.addr, align 8
  store i32 %do_forward, i32* %do_forward.addr, align 4
  store float %sc_override, float* %sc_override.addr, align 4
  store i32 %do_null2, i32* %do_null2.addr, align 4
  store %struct.threshold_s* %thresh, %struct.threshold_s** %thresh.addr, align 8
  store i32 %hmmpfam_mode, i32* %hmmpfam_mode.addr, align 4
  %0 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  %cmp = icmp eq %struct.p7trace_s* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load float, float* %sc_override.addr, align 4
  store float %1, float* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.p7trace_s*, %struct.p7trace_s** %tr.addr, align 8
  call void @TraceDecompose(%struct.p7trace_s* %2, %struct.p7trace_s*** %tarr, i32* %ntr)
  %3 = load i32, i32* %ntr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void (i8*, ...) @Die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %4 = load i32, i32* %ntr, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 4, %conv
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 2480, i64 %mul)
  %5 = bitcast i8* %call to float*
  store float* %5, float** %score, align 8
  %6 = load i32, i32* %ntr, align 4
  %conv4 = sext i32 %6 to i64
  %mul5 = mul i64 4, %conv4
  %call6 = call i8* @sre_malloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 2481, i64 %mul5)
  %7 = bitcast i8* %call6 to i32*
  store i32* %7, i32** %usedomain, align 8
  store i32 0, i32* %ndom, align 4
  store float 0.000000e+00, float* %whole_sc, align 4
  store i32 0, i32* %tidx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load i32, i32* %tidx, align 4
  %9 = load i32, i32* %ntr, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %11 = load i8*, i8** %dsq.addr, align 8
  %12 = load i32, i32* %tidx, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %13, i64 %idxprom
  %14 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx, align 8
  %call9 = call float @P7TraceScore(%struct.plan7_s* %10, i8* %11, %struct.p7trace_s* %14)
  %15 = load i32, i32* %tidx, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load float*, float** %score, align 8
  %arrayidx11 = getelementptr inbounds float, float* %16, i64 %idxprom10
  store float %call9, float* %arrayidx11, align 4
  %17 = load i32, i32* %do_null2.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %for.body
  %18 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %19 = load i32, i32* %tidx, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx14 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %20, i64 %idxprom13
  %21 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx14, align 8
  %22 = load i8*, i8** %dsq.addr, align 8
  %call15 = call float @TraceScoreCorrection(%struct.plan7_s* %18, %struct.p7trace_s* %21, i8* %22)
  %23 = load i32, i32* %tidx, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load float*, float** %score, align 8
  %arrayidx17 = getelementptr inbounds float, float* %24, i64 %idxprom16
  %25 = load float, float* %arrayidx17, align 4
  %sub = fsub float %25, %call15
  store float %sub, float* %arrayidx17, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.12, %for.body
  %26 = load i32, i32* %tidx, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load float*, float** %score, align 8
  %arrayidx20 = getelementptr inbounds float, float* %27, i64 %idxprom19
  %28 = load float, float* %arrayidx20, align 4
  %conv21 = fpext float %28 to double
  %cmp22 = fcmp ogt double %conv21, 0.000000e+00
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.end.18
  %29 = load i32, i32* %tidx, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load i32*, i32** %usedomain, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %30, i64 %idxprom25
  store i32 1, i32* %arrayidx26, align 4
  %31 = load i32, i32* %ndom, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %ndom, align 4
  %32 = load i32, i32* %tidx, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load float*, float** %score, align 8
  %arrayidx28 = getelementptr inbounds float, float* %33, i64 %idxprom27
  %34 = load float, float* %arrayidx28, align 4
  %35 = load float, float* %whole_sc, align 4
  %add = fadd float %35, %34
  store float %add, float* %whole_sc, align 4
  br label %if.end.31

if.else:                                          ; preds = %if.end.18
  %36 = load i32, i32* %tidx, align 4
  %idxprom29 = sext i32 %36 to i64
  %37 = load i32*, i32** %usedomain, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %37, i64 %idxprom29
  store i32 0, i32* %arrayidx30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %38 = load i32, i32* %tidx, align 4
  %inc32 = add nsw i32 %38, 1
  store i32 %inc32, i32* %tidx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load i32, i32* %ndom, align 4
  %cmp33 = icmp eq i32 %39, 0
  br i1 %cmp33, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %for.end
  %40 = load float*, float** %score, align 8
  %41 = load i32, i32* %ntr, align 4
  %call36 = call i32 @FArgMax(float* %40, i32 %41)
  store i32 %call36, i32* %tidx, align 4
  %42 = load i32, i32* %tidx, align 4
  %idxprom37 = sext i32 %42 to i64
  %43 = load i32*, i32** %usedomain, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %43, i64 %idxprom37
  store i32 1, i32* %arrayidx38, align 4
  %44 = load i32, i32* %tidx, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load float*, float** %score, align 8
  %arrayidx40 = getelementptr inbounds float, float* %45, i64 %idxprom39
  %46 = load float, float* %arrayidx40, align 4
  store float %46, float* %whole_sc, align 4
  store i32 1, i32* %ndom, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.35, %for.end
  %47 = load i32, i32* %do_forward.addr, align 4
  %tobool42 = icmp ne i32 %47, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.41
  %48 = load float, float* %sc_override.addr, align 4
  store float %48, float* %whole_sc, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %49 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %50 = load float, float* %whole_sc, align 4
  %call45 = call double @PValue(%struct.plan7_s* %49, float %50)
  store double %call45, double* %whole_pval, align 8
  store i32 0, i32* %tidx, align 4
  store i32 1, i32* %didx, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.94, %if.end.44
  %51 = load i32, i32* %tidx, align 4
  %52 = load i32, i32* %ntr, align 4
  %cmp47 = icmp slt i32 %51, %52
  br i1 %cmp47, label %for.body.49, label %for.end.96

for.body.49:                                      ; preds = %for.cond.46
  %53 = load i32, i32* %tidx, align 4
  %idxprom50 = sext i32 %53 to i64
  %54 = load i32*, i32** %usedomain, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %54, i64 %idxprom50
  %55 = load i32, i32* %arrayidx51, align 4
  %tobool52 = icmp ne i32 %55, 0
  br i1 %tobool52, label %if.end.54, label %if.then.53

if.then.53:                                       ; preds = %for.body.49
  br label %for.inc.94

if.end.54:                                        ; preds = %for.body.49
  %56 = load i32, i32* %tidx, align 4
  %idxprom55 = sext i32 %56 to i64
  %57 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx56 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %57, i64 %idxprom55
  %58 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx56, align 8
  call void @TraceSimpleBounds(%struct.p7trace_s* %58, i32* %i1, i32* %i2, i32* %k1, i32* %k2)
  %59 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %60 = load i32, i32* %tidx, align 4
  %idxprom57 = sext i32 %60 to i64
  %61 = load float*, float** %score, align 8
  %arrayidx58 = getelementptr inbounds float, float* %61, i64 %idxprom57
  %62 = load float, float* %arrayidx58, align 4
  %call59 = call double @PValue(%struct.plan7_s* %59, float %62)
  store double %call59, double* %pvalue, align 8
  %63 = load double, double* %pvalue, align 8
  %64 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domE = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %64, i32 0, i32 3
  %65 = load double, double* %domE, align 8
  %cmp60 = fcmp ole double %63, %65
  br i1 %cmp60, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %if.end.54
  %66 = load i32, i32* %tidx, align 4
  %idxprom62 = sext i32 %66 to i64
  %67 = load float*, float** %score, align 8
  %arrayidx63 = getelementptr inbounds float, float* %67, i64 %idxprom62
  %68 = load float, float* %arrayidx63, align 4
  %69 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %domT = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %69, i32 0, i32 2
  %70 = load float, float* %domT, align 4
  %cmp64 = fcmp oge float %68, %70
  br i1 %cmp64, label %if.then.66, label %if.end.92

if.then.66:                                       ; preds = %land.lhs.true
  %71 = load i32, i32* %tidx, align 4
  %idxprom67 = sext i32 %71 to i64
  %72 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx68 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %72, i64 %idxprom67
  %73 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx68, align 8
  %74 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %75 = load i8*, i8** %dsq.addr, align 8
  %76 = load i8*, i8** %seqname.addr, align 8
  %call69 = call %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s* %73, %struct.plan7_s* %74, i8* %75, i8* %76)
  store %struct.fancyali_s* %call69, %struct.fancyali_s** %ali, align 8
  %77 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool70 = icmp ne i32 %77, 0
  br i1 %tobool70, label %if.then.71, label %if.else.74

if.then.71:                                       ; preds = %if.then.66
  %78 = load i32, i32* %i1, align 4
  %conv72 = sitofp i32 %78 to double
  %mul73 = fmul double -1.000000e+00, %conv72
  store double %mul73, double* %sortkey, align 8
  br label %if.end.78

if.else.74:                                       ; preds = %if.then.66
  %79 = load i32, i32* %tidx, align 4
  %idxprom75 = sext i32 %79 to i64
  %80 = load float*, float** %score, align 8
  %arrayidx76 = getelementptr inbounds float, float* %80, i64 %idxprom75
  %81 = load float, float* %arrayidx76, align 4
  %conv77 = fpext float %81 to double
  store double %conv77, double* %sortkey, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.74, %if.then.71
  %82 = load %struct.tophit_s*, %struct.tophit_s** %dhit.addr, align 8
  %83 = load double, double* %sortkey, align 8
  %84 = load double, double* %pvalue, align 8
  %85 = load i32, i32* %tidx, align 4
  %idxprom79 = sext i32 %85 to i64
  %86 = load float*, float** %score, align 8
  %arrayidx80 = getelementptr inbounds float, float* %86, i64 %idxprom79
  %87 = load float, float* %arrayidx80, align 4
  %88 = load double, double* %whole_pval, align 8
  %89 = load float, float* %whole_sc, align 4
  %90 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool81 = icmp ne i32 %90, 0
  br i1 %tobool81, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.78
  %91 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %91, i32 0, i32 0
  %92 = load i8*, i8** %name, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.78
  %93 = load i8*, i8** %seqname.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %92, %cond.true ], [ %93, %cond.false ]
  %94 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool82 = icmp ne i32 %94, 0
  br i1 %tobool82, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %cond.end
  %95 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %95, i32 0, i32 1
  %96 = load i8*, i8** %acc, align 8
  br label %cond.end.85

cond.false.84:                                    ; preds = %cond.end
  %97 = load i8*, i8** %seqacc.addr, align 8
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi i8* [ %96, %cond.true.83 ], [ %97, %cond.false.84 ]
  %98 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool87 = icmp ne i32 %98, 0
  br i1 %tobool87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.end.85
  %99 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %99, i32 0, i32 2
  %100 = load i8*, i8** %desc, align 8
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.end.85
  %101 = load i8*, i8** %seqdesc.addr, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.88
  %cond91 = phi i8* [ %100, %cond.true.88 ], [ %101, %cond.false.89 ]
  %102 = load i32, i32* %i1, align 4
  %103 = load i32, i32* %i2, align 4
  %104 = load i32, i32* %L.addr, align 4
  %105 = load i32, i32* %k1, align 4
  %106 = load i32, i32* %k2, align 4
  %107 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %M = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %107, i32 0, i32 20
  %108 = load i32, i32* %M, align 4
  %109 = load i32, i32* %didx, align 4
  %110 = load i32, i32* %ndom, align 4
  %111 = load %struct.fancyali_s*, %struct.fancyali_s** %ali, align 8
  call void @RegisterHit(%struct.tophit_s* %82, double %83, double %84, float %87, double %88, float %89, i8* %cond, i8* %cond86, i8* %cond91, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %108, i32 %109, i32 %110, %struct.fancyali_s* %111)
  br label %if.end.92

if.end.92:                                        ; preds = %cond.end.90, %land.lhs.true, %if.end.54
  %112 = load i32, i32* %didx, align 4
  %inc93 = add nsw i32 %112, 1
  store i32 %inc93, i32* %didx, align 4
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.92, %if.then.53
  %113 = load i32, i32* %tidx, align 4
  %inc95 = add nsw i32 %113, 1
  store i32 %inc95, i32* %tidx, align 4
  br label %for.cond.46

for.end.96:                                       ; preds = %for.cond.46
  %114 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool97 = icmp ne i32 %114, 0
  br i1 %tobool97, label %if.then.98, label %if.else.109

if.then.98:                                       ; preds = %for.end.96
  %115 = load double, double* %whole_pval, align 8
  %cmp99 = fcmp ogt double %115, 0.000000e+00
  br i1 %cmp99, label %cond.true.101, label %cond.false.104

cond.true.101:                                    ; preds = %if.then.98
  %116 = load double, double* %whole_pval, align 8
  %call102 = call double @log(double %116) #4
  %mul103 = fmul double -1.000000e+00, %call102
  br label %cond.end.107

cond.false.104:                                   ; preds = %if.then.98
  %117 = load float, float* %whole_sc, align 4
  %conv105 = fpext float %117 to double
  %add106 = fadd double 1.000000e+05, %conv105
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.104, %cond.true.101
  %cond108 = phi double [ %mul103, %cond.true.101 ], [ %add106, %cond.false.104 ]
  store double %cond108, double* %sortkey, align 8
  br label %if.end.111

if.else.109:                                      ; preds = %for.end.96
  %118 = load float, float* %whole_sc, align 4
  %conv110 = fpext float %118 to double
  store double %conv110, double* %sortkey, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.109, %cond.end.107
  %119 = load float, float* %whole_sc, align 4
  %120 = load %struct.threshold_s*, %struct.threshold_s** %thresh.addr, align 8
  %globT = getelementptr inbounds %struct.threshold_s, %struct.threshold_s* %120, i32 0, i32 0
  %121 = load float, float* %globT, align 4
  %cmp112 = fcmp oge float %119, %121
  br i1 %cmp112, label %if.then.114, label %if.end.133

if.then.114:                                      ; preds = %if.end.111
  %122 = load %struct.tophit_s*, %struct.tophit_s** %ghit.addr, align 8
  %123 = load double, double* %sortkey, align 8
  %124 = load double, double* %whole_pval, align 8
  %125 = load float, float* %whole_sc, align 4
  %126 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool115 = icmp ne i32 %126, 0
  br i1 %tobool115, label %cond.true.116, label %cond.false.118

cond.true.116:                                    ; preds = %if.then.114
  %127 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %name117 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %127, i32 0, i32 0
  %128 = load i8*, i8** %name117, align 8
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.then.114
  %129 = load i8*, i8** %seqname.addr, align 8
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.116
  %cond120 = phi i8* [ %128, %cond.true.116 ], [ %129, %cond.false.118 ]
  %130 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool121 = icmp ne i32 %130, 0
  br i1 %tobool121, label %cond.true.122, label %cond.false.124

cond.true.122:                                    ; preds = %cond.end.119
  %131 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %acc123 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %131, i32 0, i32 1
  %132 = load i8*, i8** %acc123, align 8
  br label %cond.end.125

cond.false.124:                                   ; preds = %cond.end.119
  %133 = load i8*, i8** %seqacc.addr, align 8
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.122
  %cond126 = phi i8* [ %132, %cond.true.122 ], [ %133, %cond.false.124 ]
  %134 = load i32, i32* %hmmpfam_mode.addr, align 4
  %tobool127 = icmp ne i32 %134, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %cond.end.125
  %135 = load %struct.plan7_s*, %struct.plan7_s** %hmm.addr, align 8
  %desc129 = getelementptr inbounds %struct.plan7_s, %struct.plan7_s* %135, i32 0, i32 2
  %136 = load i8*, i8** %desc129, align 8
  br label %cond.end.131

cond.false.130:                                   ; preds = %cond.end.125
  %137 = load i8*, i8** %seqdesc.addr, align 8
  br label %cond.end.131

cond.end.131:                                     ; preds = %cond.false.130, %cond.true.128
  %cond132 = phi i8* [ %136, %cond.true.128 ], [ %137, %cond.false.130 ]
  %138 = load i32, i32* %ndom, align 4
  call void @RegisterHit(%struct.tophit_s* %122, double %123, double %124, float %125, double 0.000000e+00, float 0.000000e+00, i8* %cond120, i8* %cond126, i8* %cond132, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %138, %struct.fancyali_s* null)
  br label %if.end.133

if.end.133:                                       ; preds = %cond.end.131, %if.end.111
  store i32 0, i32* %tidx, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.140, %if.end.133
  %139 = load i32, i32* %tidx, align 4
  %140 = load i32, i32* %ntr, align 4
  %cmp135 = icmp slt i32 %139, %140
  br i1 %cmp135, label %for.body.137, label %for.end.142

for.body.137:                                     ; preds = %for.cond.134
  %141 = load i32, i32* %tidx, align 4
  %idxprom138 = sext i32 %141 to i64
  %142 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %arrayidx139 = getelementptr inbounds %struct.p7trace_s*, %struct.p7trace_s** %142, i64 %idxprom138
  %143 = load %struct.p7trace_s*, %struct.p7trace_s** %arrayidx139, align 8
  call void @P7FreeTrace(%struct.p7trace_s* %143)
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.137
  %144 = load i32, i32* %tidx, align 4
  %inc141 = add nsw i32 %144, 1
  store i32 %inc141, i32* %tidx, align 4
  br label %for.cond.134

for.end.142:                                      ; preds = %for.cond.134
  %145 = load %struct.p7trace_s**, %struct.p7trace_s*** %tarr, align 8
  %146 = bitcast %struct.p7trace_s** %145 to i8*
  call void @free(i8* %146) #4
  %147 = load float*, float** %score, align 8
  %148 = bitcast float* %147 to i8*
  call void @free(i8* %148) #4
  %149 = load i32*, i32** %usedomain, align 8
  %150 = bitcast i32* %149 to i8*
  call void @free(i8* %150) #4
  %151 = load float, float* %whole_sc, align 4
  store float %151, float* %retval
  br label %return

return:                                           ; preds = %for.end.142, %if.then
  %152 = load float, float* %retval
  ret float %152
}

declare void @TraceDecompose(%struct.p7trace_s*, %struct.p7trace_s***, i32*) #1

declare float @P7TraceScore(%struct.plan7_s*, i8*, %struct.p7trace_s*) #1

declare float @TraceScoreCorrection(%struct.plan7_s*, %struct.p7trace_s*, i8*) #1

declare i32 @FArgMax(float*, i32) #1

declare double @PValue(%struct.plan7_s*, float) #1

declare void @TraceSimpleBounds(%struct.p7trace_s*, i32*, i32*, i32*, i32*) #1

declare %struct.fancyali_s* @CreateFancyAli(%struct.p7trace_s*, %struct.plan7_s*, i8*, i8*) #1

declare void @RegisterHit(%struct.tophit_s*, double, double, float, double, float, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fancyali_s*) #1

; Function Attrs: nounwind
declare double @log(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
