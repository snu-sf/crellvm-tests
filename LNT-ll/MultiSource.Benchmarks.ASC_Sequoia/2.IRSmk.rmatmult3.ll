; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/2.IRSmk.rmatmult3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Domain_s = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RadiationData_t = type { double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double* }

@.str = private unnamed_addr constant [10 x i8] c"rmatmult3\00", align 1
@kmin = common global i32 0, align 4
@kmax = common global i32 0, align 4
@jmin = common global i32 0, align 4
@jmax = common global i32 0, align 4
@imin = common global i32 0, align 4
@imax = common global i32 0, align 4
@kp = common global i32 0, align 4
@jp = common global i32 0, align 4
@i_lb = common global i32 0, align 4
@i_ub = common global i32 0, align 4
@x_size = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @rmatmult3(%struct.Domain_s* %domain, %struct.RadiationData_t* %rblk, double* %x, double* %b) #0 {
entry:
  %domain.addr = alloca %struct.Domain_s*, align 8
  %rblk.addr = alloca %struct.RadiationData_t*, align 8
  %x.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %me = alloca i8*, align 8
  %i = alloca i32, align 4
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %imin = alloca i32, align 4
  %imax = alloca i32, align 4
  %jmin = alloca i32, align 4
  %jmax = alloca i32, align 4
  %kmin = alloca i32, align 4
  %kmax = alloca i32, align 4
  %jp = alloca i32, align 4
  %kp = alloca i32, align 4
  %dbl = alloca double*, align 8
  %dbc = alloca double*, align 8
  %dbr = alloca double*, align 8
  %dcl = alloca double*, align 8
  %dcc = alloca double*, align 8
  %dcr = alloca double*, align 8
  %dfl = alloca double*, align 8
  %dfc = alloca double*, align 8
  %dfr = alloca double*, align 8
  %cbl = alloca double*, align 8
  %cbc = alloca double*, align 8
  %cbr = alloca double*, align 8
  %ccl = alloca double*, align 8
  %ccc = alloca double*, align 8
  %ccr = alloca double*, align 8
  %cfl = alloca double*, align 8
  %cfc = alloca double*, align 8
  %cfr = alloca double*, align 8
  %ubl = alloca double*, align 8
  %ubc = alloca double*, align 8
  %ubr = alloca double*, align 8
  %ucl = alloca double*, align 8
  %ucc = alloca double*, align 8
  %ucr = alloca double*, align 8
  %ufl = alloca double*, align 8
  %ufc = alloca double*, align 8
  %ufr = alloca double*, align 8
  %xdbl = alloca double*, align 8
  %xdbc = alloca double*, align 8
  %xdbr = alloca double*, align 8
  %xdcl = alloca double*, align 8
  %xdcc = alloca double*, align 8
  %xdcr = alloca double*, align 8
  %xdfl = alloca double*, align 8
  %xdfc = alloca double*, align 8
  %xdfr = alloca double*, align 8
  %xcbl = alloca double*, align 8
  %xcbc = alloca double*, align 8
  %xcbr = alloca double*, align 8
  %xccl = alloca double*, align 8
  %xccc = alloca double*, align 8
  %xccr = alloca double*, align 8
  %xcfl = alloca double*, align 8
  %xcfc = alloca double*, align 8
  %xcfr = alloca double*, align 8
  %xubl = alloca double*, align 8
  %xubc = alloca double*, align 8
  %xubr = alloca double*, align 8
  %xucl = alloca double*, align 8
  %xucc = alloca double*, align 8
  %xucr = alloca double*, align 8
  %xufl = alloca double*, align 8
  %xufc = alloca double*, align 8
  %xufr = alloca double*, align 8
  store %struct.Domain_s* %domain, %struct.Domain_s** %domain.addr, align 8
  store %struct.RadiationData_t* %rblk, %struct.RadiationData_t** %rblk.addr, align 8
  store double* %x, double** %x.addr, align 8
  store double* %b, double** %b.addr, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8** %me, align 8
  %0 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %imin1 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %0, i32 0, i32 2
  %1 = load i32, i32* %imin1, align 4
  store i32 %1, i32* %imin, align 4
  %2 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %imax2 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %2, i32 0, i32 5
  %3 = load i32, i32* %imax2, align 4
  store i32 %3, i32* %imax, align 4
  %4 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %jmin3 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %4, i32 0, i32 3
  %5 = load i32, i32* %jmin3, align 4
  store i32 %5, i32* %jmin, align 4
  %6 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %jmax4 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %6, i32 0, i32 6
  %7 = load i32, i32* %jmax4, align 4
  store i32 %7, i32* %jmax, align 4
  %8 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %kmin5 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %8, i32 0, i32 4
  %9 = load i32, i32* %kmin5, align 4
  store i32 %9, i32* %kmin, align 4
  %10 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %kmax6 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %10, i32 0, i32 7
  %11 = load i32, i32* %kmax6, align 4
  store i32 %11, i32* %kmax, align 4
  %12 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %jp7 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %12, i32 0, i32 17
  %13 = load i32, i32* %jp7, align 4
  store i32 %13, i32* %jp, align 4
  %14 = load %struct.Domain_s*, %struct.Domain_s** %domain.addr, align 8
  %kp8 = getelementptr inbounds %struct.Domain_s, %struct.Domain_s* %14, i32 0, i32 18
  %15 = load i32, i32* %kp8, align 4
  store i32 %15, i32* %kp, align 4
  %16 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbl9 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %16, i32 0, i32 0
  %17 = load double*, double** %dbl9, align 8
  store double* %17, double** %dbl, align 8
  %18 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbc10 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %18, i32 0, i32 1
  %19 = load double*, double** %dbc10, align 8
  store double* %19, double** %dbc, align 8
  %20 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dbr11 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %20, i32 0, i32 2
  %21 = load double*, double** %dbr11, align 8
  store double* %21, double** %dbr, align 8
  %22 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcl12 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %22, i32 0, i32 3
  %23 = load double*, double** %dcl12, align 8
  store double* %23, double** %dcl, align 8
  %24 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcc13 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %24, i32 0, i32 4
  %25 = load double*, double** %dcc13, align 8
  store double* %25, double** %dcc, align 8
  %26 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dcr14 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %26, i32 0, i32 5
  %27 = load double*, double** %dcr14, align 8
  store double* %27, double** %dcr, align 8
  %28 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfl15 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %28, i32 0, i32 6
  %29 = load double*, double** %dfl15, align 8
  store double* %29, double** %dfl, align 8
  %30 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfc16 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %30, i32 0, i32 7
  %31 = load double*, double** %dfc16, align 8
  store double* %31, double** %dfc, align 8
  %32 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %dfr17 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %32, i32 0, i32 8
  %33 = load double*, double** %dfr17, align 8
  store double* %33, double** %dfr, align 8
  %34 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbl18 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %34, i32 0, i32 9
  %35 = load double*, double** %cbl18, align 8
  store double* %35, double** %cbl, align 8
  %36 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbc19 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %36, i32 0, i32 10
  %37 = load double*, double** %cbc19, align 8
  store double* %37, double** %cbc, align 8
  %38 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cbr20 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %38, i32 0, i32 11
  %39 = load double*, double** %cbr20, align 8
  store double* %39, double** %cbr, align 8
  %40 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccl21 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %40, i32 0, i32 12
  %41 = load double*, double** %ccl21, align 8
  store double* %41, double** %ccl, align 8
  %42 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccc22 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %42, i32 0, i32 13
  %43 = load double*, double** %ccc22, align 8
  store double* %43, double** %ccc, align 8
  %44 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ccr23 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %44, i32 0, i32 14
  %45 = load double*, double** %ccr23, align 8
  store double* %45, double** %ccr, align 8
  %46 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfl24 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %46, i32 0, i32 15
  %47 = load double*, double** %cfl24, align 8
  store double* %47, double** %cfl, align 8
  %48 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfc25 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %48, i32 0, i32 16
  %49 = load double*, double** %cfc25, align 8
  store double* %49, double** %cfc, align 8
  %50 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %cfr26 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %50, i32 0, i32 17
  %51 = load double*, double** %cfr26, align 8
  store double* %51, double** %cfr, align 8
  %52 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubl27 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %52, i32 0, i32 18
  %53 = load double*, double** %ubl27, align 8
  store double* %53, double** %ubl, align 8
  %54 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubc28 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %54, i32 0, i32 19
  %55 = load double*, double** %ubc28, align 8
  store double* %55, double** %ubc, align 8
  %56 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ubr29 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %56, i32 0, i32 20
  %57 = load double*, double** %ubr29, align 8
  store double* %57, double** %ubr, align 8
  %58 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucl30 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %58, i32 0, i32 21
  %59 = load double*, double** %ucl30, align 8
  store double* %59, double** %ucl, align 8
  %60 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucc31 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %60, i32 0, i32 22
  %61 = load double*, double** %ucc31, align 8
  store double* %61, double** %ucc, align 8
  %62 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ucr32 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %62, i32 0, i32 23
  %63 = load double*, double** %ucr32, align 8
  store double* %63, double** %ucr, align 8
  %64 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufl33 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %64, i32 0, i32 24
  %65 = load double*, double** %ufl33, align 8
  store double* %65, double** %ufl, align 8
  %66 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufc34 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %66, i32 0, i32 25
  %67 = load double*, double** %ufc34, align 8
  store double* %67, double** %ufc, align 8
  %68 = load %struct.RadiationData_t*, %struct.RadiationData_t** %rblk.addr, align 8
  %ufr35 = getelementptr inbounds %struct.RadiationData_t, %struct.RadiationData_t* %68, i32 0, i32 26
  %69 = load double*, double** %ufr35, align 8
  store double* %69, double** %ufr, align 8
  %70 = load double*, double** %x.addr, align 8
  %71 = load i32, i32* %kp, align 4
  %idx.ext = sext i32 %71 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds double, double* %70, i64 %idx.neg
  %72 = load i32, i32* %jp, align 4
  %idx.ext36 = sext i32 %72 to i64
  %idx.neg37 = sub i64 0, %idx.ext36
  %add.ptr38 = getelementptr inbounds double, double* %add.ptr, i64 %idx.neg37
  %add.ptr39 = getelementptr inbounds double, double* %add.ptr38, i64 -1
  store double* %add.ptr39, double** %xdbl, align 8
  %73 = load double*, double** %x.addr, align 8
  %74 = load i32, i32* %kp, align 4
  %idx.ext40 = sext i32 %74 to i64
  %idx.neg41 = sub i64 0, %idx.ext40
  %add.ptr42 = getelementptr inbounds double, double* %73, i64 %idx.neg41
  %75 = load i32, i32* %jp, align 4
  %idx.ext43 = sext i32 %75 to i64
  %idx.neg44 = sub i64 0, %idx.ext43
  %add.ptr45 = getelementptr inbounds double, double* %add.ptr42, i64 %idx.neg44
  store double* %add.ptr45, double** %xdbc, align 8
  %76 = load double*, double** %x.addr, align 8
  %77 = load i32, i32* %kp, align 4
  %idx.ext46 = sext i32 %77 to i64
  %idx.neg47 = sub i64 0, %idx.ext46
  %add.ptr48 = getelementptr inbounds double, double* %76, i64 %idx.neg47
  %78 = load i32, i32* %jp, align 4
  %idx.ext49 = sext i32 %78 to i64
  %idx.neg50 = sub i64 0, %idx.ext49
  %add.ptr51 = getelementptr inbounds double, double* %add.ptr48, i64 %idx.neg50
  %add.ptr52 = getelementptr inbounds double, double* %add.ptr51, i64 1
  store double* %add.ptr52, double** %xdbr, align 8
  %79 = load double*, double** %x.addr, align 8
  %80 = load i32, i32* %kp, align 4
  %idx.ext53 = sext i32 %80 to i64
  %idx.neg54 = sub i64 0, %idx.ext53
  %add.ptr55 = getelementptr inbounds double, double* %79, i64 %idx.neg54
  %add.ptr56 = getelementptr inbounds double, double* %add.ptr55, i64 -1
  store double* %add.ptr56, double** %xdcl, align 8
  %81 = load double*, double** %x.addr, align 8
  %82 = load i32, i32* %kp, align 4
  %idx.ext57 = sext i32 %82 to i64
  %idx.neg58 = sub i64 0, %idx.ext57
  %add.ptr59 = getelementptr inbounds double, double* %81, i64 %idx.neg58
  store double* %add.ptr59, double** %xdcc, align 8
  %83 = load double*, double** %x.addr, align 8
  %84 = load i32, i32* %kp, align 4
  %idx.ext60 = sext i32 %84 to i64
  %idx.neg61 = sub i64 0, %idx.ext60
  %add.ptr62 = getelementptr inbounds double, double* %83, i64 %idx.neg61
  %add.ptr63 = getelementptr inbounds double, double* %add.ptr62, i64 1
  store double* %add.ptr63, double** %xdcr, align 8
  %85 = load double*, double** %x.addr, align 8
  %86 = load i32, i32* %kp, align 4
  %idx.ext64 = sext i32 %86 to i64
  %idx.neg65 = sub i64 0, %idx.ext64
  %add.ptr66 = getelementptr inbounds double, double* %85, i64 %idx.neg65
  %87 = load i32, i32* %jp, align 4
  %idx.ext67 = sext i32 %87 to i64
  %add.ptr68 = getelementptr inbounds double, double* %add.ptr66, i64 %idx.ext67
  %add.ptr69 = getelementptr inbounds double, double* %add.ptr68, i64 -1
  store double* %add.ptr69, double** %xdfl, align 8
  %88 = load double*, double** %x.addr, align 8
  %89 = load i32, i32* %kp, align 4
  %idx.ext70 = sext i32 %89 to i64
  %idx.neg71 = sub i64 0, %idx.ext70
  %add.ptr72 = getelementptr inbounds double, double* %88, i64 %idx.neg71
  %90 = load i32, i32* %jp, align 4
  %idx.ext73 = sext i32 %90 to i64
  %add.ptr74 = getelementptr inbounds double, double* %add.ptr72, i64 %idx.ext73
  store double* %add.ptr74, double** %xdfc, align 8
  %91 = load double*, double** %x.addr, align 8
  %92 = load i32, i32* %kp, align 4
  %idx.ext75 = sext i32 %92 to i64
  %idx.neg76 = sub i64 0, %idx.ext75
  %add.ptr77 = getelementptr inbounds double, double* %91, i64 %idx.neg76
  %93 = load i32, i32* %jp, align 4
  %idx.ext78 = sext i32 %93 to i64
  %add.ptr79 = getelementptr inbounds double, double* %add.ptr77, i64 %idx.ext78
  %add.ptr80 = getelementptr inbounds double, double* %add.ptr79, i64 1
  store double* %add.ptr80, double** %xdfr, align 8
  %94 = load double*, double** %x.addr, align 8
  %95 = load i32, i32* %jp, align 4
  %idx.ext81 = sext i32 %95 to i64
  %idx.neg82 = sub i64 0, %idx.ext81
  %add.ptr83 = getelementptr inbounds double, double* %94, i64 %idx.neg82
  %add.ptr84 = getelementptr inbounds double, double* %add.ptr83, i64 -1
  store double* %add.ptr84, double** %xcbl, align 8
  %96 = load double*, double** %x.addr, align 8
  %97 = load i32, i32* %jp, align 4
  %idx.ext85 = sext i32 %97 to i64
  %idx.neg86 = sub i64 0, %idx.ext85
  %add.ptr87 = getelementptr inbounds double, double* %96, i64 %idx.neg86
  store double* %add.ptr87, double** %xcbc, align 8
  %98 = load double*, double** %x.addr, align 8
  %99 = load i32, i32* %jp, align 4
  %idx.ext88 = sext i32 %99 to i64
  %idx.neg89 = sub i64 0, %idx.ext88
  %add.ptr90 = getelementptr inbounds double, double* %98, i64 %idx.neg89
  %add.ptr91 = getelementptr inbounds double, double* %add.ptr90, i64 1
  store double* %add.ptr91, double** %xcbr, align 8
  %100 = load double*, double** %x.addr, align 8
  %add.ptr92 = getelementptr inbounds double, double* %100, i64 -1
  store double* %add.ptr92, double** %xccl, align 8
  %101 = load double*, double** %x.addr, align 8
  store double* %101, double** %xccc, align 8
  %102 = load double*, double** %x.addr, align 8
  %add.ptr93 = getelementptr inbounds double, double* %102, i64 1
  store double* %add.ptr93, double** %xccr, align 8
  %103 = load double*, double** %x.addr, align 8
  %104 = load i32, i32* %jp, align 4
  %idx.ext94 = sext i32 %104 to i64
  %add.ptr95 = getelementptr inbounds double, double* %103, i64 %idx.ext94
  %add.ptr96 = getelementptr inbounds double, double* %add.ptr95, i64 -1
  store double* %add.ptr96, double** %xcfl, align 8
  %105 = load double*, double** %x.addr, align 8
  %106 = load i32, i32* %jp, align 4
  %idx.ext97 = sext i32 %106 to i64
  %add.ptr98 = getelementptr inbounds double, double* %105, i64 %idx.ext97
  store double* %add.ptr98, double** %xcfc, align 8
  %107 = load double*, double** %x.addr, align 8
  %108 = load i32, i32* %jp, align 4
  %idx.ext99 = sext i32 %108 to i64
  %add.ptr100 = getelementptr inbounds double, double* %107, i64 %idx.ext99
  %add.ptr101 = getelementptr inbounds double, double* %add.ptr100, i64 1
  store double* %add.ptr101, double** %xcfr, align 8
  %109 = load double*, double** %x.addr, align 8
  %110 = load i32, i32* %kp, align 4
  %idx.ext102 = sext i32 %110 to i64
  %add.ptr103 = getelementptr inbounds double, double* %109, i64 %idx.ext102
  %111 = load i32, i32* %jp, align 4
  %idx.ext104 = sext i32 %111 to i64
  %idx.neg105 = sub i64 0, %idx.ext104
  %add.ptr106 = getelementptr inbounds double, double* %add.ptr103, i64 %idx.neg105
  %add.ptr107 = getelementptr inbounds double, double* %add.ptr106, i64 -1
  store double* %add.ptr107, double** %xubl, align 8
  %112 = load double*, double** %x.addr, align 8
  %113 = load i32, i32* %kp, align 4
  %idx.ext108 = sext i32 %113 to i64
  %add.ptr109 = getelementptr inbounds double, double* %112, i64 %idx.ext108
  %114 = load i32, i32* %jp, align 4
  %idx.ext110 = sext i32 %114 to i64
  %idx.neg111 = sub i64 0, %idx.ext110
  %add.ptr112 = getelementptr inbounds double, double* %add.ptr109, i64 %idx.neg111
  store double* %add.ptr112, double** %xubc, align 8
  %115 = load double*, double** %x.addr, align 8
  %116 = load i32, i32* %kp, align 4
  %idx.ext113 = sext i32 %116 to i64
  %add.ptr114 = getelementptr inbounds double, double* %115, i64 %idx.ext113
  %117 = load i32, i32* %jp, align 4
  %idx.ext115 = sext i32 %117 to i64
  %idx.neg116 = sub i64 0, %idx.ext115
  %add.ptr117 = getelementptr inbounds double, double* %add.ptr114, i64 %idx.neg116
  %add.ptr118 = getelementptr inbounds double, double* %add.ptr117, i64 1
  store double* %add.ptr118, double** %xubr, align 8
  %118 = load double*, double** %x.addr, align 8
  %119 = load i32, i32* %kp, align 4
  %idx.ext119 = sext i32 %119 to i64
  %add.ptr120 = getelementptr inbounds double, double* %118, i64 %idx.ext119
  %add.ptr121 = getelementptr inbounds double, double* %add.ptr120, i64 -1
  store double* %add.ptr121, double** %xucl, align 8
  %120 = load double*, double** %x.addr, align 8
  %121 = load i32, i32* %kp, align 4
  %idx.ext122 = sext i32 %121 to i64
  %add.ptr123 = getelementptr inbounds double, double* %120, i64 %idx.ext122
  store double* %add.ptr123, double** %xucc, align 8
  %122 = load double*, double** %x.addr, align 8
  %123 = load i32, i32* %kp, align 4
  %idx.ext124 = sext i32 %123 to i64
  %add.ptr125 = getelementptr inbounds double, double* %122, i64 %idx.ext124
  %add.ptr126 = getelementptr inbounds double, double* %add.ptr125, i64 1
  store double* %add.ptr126, double** %xucr, align 8
  %124 = load double*, double** %x.addr, align 8
  %125 = load i32, i32* %kp, align 4
  %idx.ext127 = sext i32 %125 to i64
  %add.ptr128 = getelementptr inbounds double, double* %124, i64 %idx.ext127
  %126 = load i32, i32* %jp, align 4
  %idx.ext129 = sext i32 %126 to i64
  %add.ptr130 = getelementptr inbounds double, double* %add.ptr128, i64 %idx.ext129
  %add.ptr131 = getelementptr inbounds double, double* %add.ptr130, i64 -1
  store double* %add.ptr131, double** %xufl, align 8
  %127 = load double*, double** %x.addr, align 8
  %128 = load i32, i32* %kp, align 4
  %idx.ext132 = sext i32 %128 to i64
  %add.ptr133 = getelementptr inbounds double, double* %127, i64 %idx.ext132
  %129 = load i32, i32* %jp, align 4
  %idx.ext134 = sext i32 %129 to i64
  %add.ptr135 = getelementptr inbounds double, double* %add.ptr133, i64 %idx.ext134
  store double* %add.ptr135, double** %xufc, align 8
  %130 = load double*, double** %x.addr, align 8
  %131 = load i32, i32* %kp, align 4
  %idx.ext136 = sext i32 %131 to i64
  %add.ptr137 = getelementptr inbounds double, double* %130, i64 %idx.ext136
  %132 = load i32, i32* %jp, align 4
  %idx.ext138 = sext i32 %132 to i64
  %add.ptr139 = getelementptr inbounds double, double* %add.ptr137, i64 %idx.ext138
  %add.ptr140 = getelementptr inbounds double, double* %add.ptr139, i64 1
  store double* %add.ptr140, double** %xufr, align 8
  %133 = load i32, i32* %kmin, align 4
  store i32 %133, i32* %kk, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.313, %entry
  %134 = load i32, i32* %kk, align 4
  %135 = load i32, i32* %kmax, align 4
  %cmp = icmp slt i32 %134, %135
  br i1 %cmp, label %for.body, label %for.end.315

for.body:                                         ; preds = %for.cond
  %136 = load i32, i32* %jmin, align 4
  store i32 %136, i32* %jj, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.310, %for.body
  %137 = load i32, i32* %jj, align 4
  %138 = load i32, i32* %jmax, align 4
  %cmp142 = icmp slt i32 %137, %138
  br i1 %cmp142, label %for.body.143, label %for.end.312

for.body.143:                                     ; preds = %for.cond.141
  %139 = load i32, i32* %imin, align 4
  store i32 %139, i32* %ii, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc, %for.body.143
  %140 = load i32, i32* %ii, align 4
  %141 = load i32, i32* %imax, align 4
  %cmp145 = icmp slt i32 %140, %141
  br i1 %cmp145, label %for.body.146, label %for.end

for.body.146:                                     ; preds = %for.cond.144
  %142 = load i32, i32* %ii, align 4
  %143 = load i32, i32* %jj, align 4
  %144 = load i32, i32* %jp, align 4
  %mul = mul nsw i32 %143, %144
  %add = add nsw i32 %142, %mul
  %145 = load i32, i32* %kk, align 4
  %146 = load i32, i32* %kp, align 4
  %mul147 = mul nsw i32 %145, %146
  %add148 = add nsw i32 %add, %mul147
  store i32 %add148, i32* %i, align 4
  %147 = load i32, i32* %i, align 4
  %idxprom = sext i32 %147 to i64
  %148 = load double*, double** %dbl, align 8
  %arrayidx = getelementptr inbounds double, double* %148, i64 %idxprom
  %149 = load double, double* %arrayidx, align 8
  %150 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %150 to i64
  %151 = load double*, double** %xdbl, align 8
  %arrayidx150 = getelementptr inbounds double, double* %151, i64 %idxprom149
  %152 = load double, double* %arrayidx150, align 8
  %mul151 = fmul double %149, %152
  %153 = load i32, i32* %i, align 4
  %idxprom152 = sext i32 %153 to i64
  %154 = load double*, double** %dbc, align 8
  %arrayidx153 = getelementptr inbounds double, double* %154, i64 %idxprom152
  %155 = load double, double* %arrayidx153, align 8
  %156 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %156 to i64
  %157 = load double*, double** %xdbc, align 8
  %arrayidx155 = getelementptr inbounds double, double* %157, i64 %idxprom154
  %158 = load double, double* %arrayidx155, align 8
  %mul156 = fmul double %155, %158
  %add157 = fadd double %mul151, %mul156
  %159 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %159 to i64
  %160 = load double*, double** %dbr, align 8
  %arrayidx159 = getelementptr inbounds double, double* %160, i64 %idxprom158
  %161 = load double, double* %arrayidx159, align 8
  %162 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %162 to i64
  %163 = load double*, double** %xdbr, align 8
  %arrayidx161 = getelementptr inbounds double, double* %163, i64 %idxprom160
  %164 = load double, double* %arrayidx161, align 8
  %mul162 = fmul double %161, %164
  %add163 = fadd double %add157, %mul162
  %165 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %165 to i64
  %166 = load double*, double** %dcl, align 8
  %arrayidx165 = getelementptr inbounds double, double* %166, i64 %idxprom164
  %167 = load double, double* %arrayidx165, align 8
  %168 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %168 to i64
  %169 = load double*, double** %xdcl, align 8
  %arrayidx167 = getelementptr inbounds double, double* %169, i64 %idxprom166
  %170 = load double, double* %arrayidx167, align 8
  %mul168 = fmul double %167, %170
  %add169 = fadd double %add163, %mul168
  %171 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %171 to i64
  %172 = load double*, double** %dcc, align 8
  %arrayidx171 = getelementptr inbounds double, double* %172, i64 %idxprom170
  %173 = load double, double* %arrayidx171, align 8
  %174 = load i32, i32* %i, align 4
  %idxprom172 = sext i32 %174 to i64
  %175 = load double*, double** %xdcc, align 8
  %arrayidx173 = getelementptr inbounds double, double* %175, i64 %idxprom172
  %176 = load double, double* %arrayidx173, align 8
  %mul174 = fmul double %173, %176
  %add175 = fadd double %add169, %mul174
  %177 = load i32, i32* %i, align 4
  %idxprom176 = sext i32 %177 to i64
  %178 = load double*, double** %dcr, align 8
  %arrayidx177 = getelementptr inbounds double, double* %178, i64 %idxprom176
  %179 = load double, double* %arrayidx177, align 8
  %180 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %180 to i64
  %181 = load double*, double** %xdcr, align 8
  %arrayidx179 = getelementptr inbounds double, double* %181, i64 %idxprom178
  %182 = load double, double* %arrayidx179, align 8
  %mul180 = fmul double %179, %182
  %add181 = fadd double %add175, %mul180
  %183 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %183 to i64
  %184 = load double*, double** %dfl, align 8
  %arrayidx183 = getelementptr inbounds double, double* %184, i64 %idxprom182
  %185 = load double, double* %arrayidx183, align 8
  %186 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %186 to i64
  %187 = load double*, double** %xdfl, align 8
  %arrayidx185 = getelementptr inbounds double, double* %187, i64 %idxprom184
  %188 = load double, double* %arrayidx185, align 8
  %mul186 = fmul double %185, %188
  %add187 = fadd double %add181, %mul186
  %189 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %189 to i64
  %190 = load double*, double** %dfc, align 8
  %arrayidx189 = getelementptr inbounds double, double* %190, i64 %idxprom188
  %191 = load double, double* %arrayidx189, align 8
  %192 = load i32, i32* %i, align 4
  %idxprom190 = sext i32 %192 to i64
  %193 = load double*, double** %xdfc, align 8
  %arrayidx191 = getelementptr inbounds double, double* %193, i64 %idxprom190
  %194 = load double, double* %arrayidx191, align 8
  %mul192 = fmul double %191, %194
  %add193 = fadd double %add187, %mul192
  %195 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %195 to i64
  %196 = load double*, double** %dfr, align 8
  %arrayidx195 = getelementptr inbounds double, double* %196, i64 %idxprom194
  %197 = load double, double* %arrayidx195, align 8
  %198 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %198 to i64
  %199 = load double*, double** %xdfr, align 8
  %arrayidx197 = getelementptr inbounds double, double* %199, i64 %idxprom196
  %200 = load double, double* %arrayidx197, align 8
  %mul198 = fmul double %197, %200
  %add199 = fadd double %add193, %mul198
  %201 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %201 to i64
  %202 = load double*, double** %cbl, align 8
  %arrayidx201 = getelementptr inbounds double, double* %202, i64 %idxprom200
  %203 = load double, double* %arrayidx201, align 8
  %204 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %204 to i64
  %205 = load double*, double** %xcbl, align 8
  %arrayidx203 = getelementptr inbounds double, double* %205, i64 %idxprom202
  %206 = load double, double* %arrayidx203, align 8
  %mul204 = fmul double %203, %206
  %add205 = fadd double %add199, %mul204
  %207 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %207 to i64
  %208 = load double*, double** %cbc, align 8
  %arrayidx207 = getelementptr inbounds double, double* %208, i64 %idxprom206
  %209 = load double, double* %arrayidx207, align 8
  %210 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %210 to i64
  %211 = load double*, double** %xcbc, align 8
  %arrayidx209 = getelementptr inbounds double, double* %211, i64 %idxprom208
  %212 = load double, double* %arrayidx209, align 8
  %mul210 = fmul double %209, %212
  %add211 = fadd double %add205, %mul210
  %213 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %213 to i64
  %214 = load double*, double** %cbr, align 8
  %arrayidx213 = getelementptr inbounds double, double* %214, i64 %idxprom212
  %215 = load double, double* %arrayidx213, align 8
  %216 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %216 to i64
  %217 = load double*, double** %xcbr, align 8
  %arrayidx215 = getelementptr inbounds double, double* %217, i64 %idxprom214
  %218 = load double, double* %arrayidx215, align 8
  %mul216 = fmul double %215, %218
  %add217 = fadd double %add211, %mul216
  %219 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %219 to i64
  %220 = load double*, double** %ccl, align 8
  %arrayidx219 = getelementptr inbounds double, double* %220, i64 %idxprom218
  %221 = load double, double* %arrayidx219, align 8
  %222 = load i32, i32* %i, align 4
  %idxprom220 = sext i32 %222 to i64
  %223 = load double*, double** %xccl, align 8
  %arrayidx221 = getelementptr inbounds double, double* %223, i64 %idxprom220
  %224 = load double, double* %arrayidx221, align 8
  %mul222 = fmul double %221, %224
  %add223 = fadd double %add217, %mul222
  %225 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %225 to i64
  %226 = load double*, double** %ccc, align 8
  %arrayidx225 = getelementptr inbounds double, double* %226, i64 %idxprom224
  %227 = load double, double* %arrayidx225, align 8
  %228 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %228 to i64
  %229 = load double*, double** %xccc, align 8
  %arrayidx227 = getelementptr inbounds double, double* %229, i64 %idxprom226
  %230 = load double, double* %arrayidx227, align 8
  %mul228 = fmul double %227, %230
  %add229 = fadd double %add223, %mul228
  %231 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %231 to i64
  %232 = load double*, double** %ccr, align 8
  %arrayidx231 = getelementptr inbounds double, double* %232, i64 %idxprom230
  %233 = load double, double* %arrayidx231, align 8
  %234 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %234 to i64
  %235 = load double*, double** %xccr, align 8
  %arrayidx233 = getelementptr inbounds double, double* %235, i64 %idxprom232
  %236 = load double, double* %arrayidx233, align 8
  %mul234 = fmul double %233, %236
  %add235 = fadd double %add229, %mul234
  %237 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %237 to i64
  %238 = load double*, double** %cfl, align 8
  %arrayidx237 = getelementptr inbounds double, double* %238, i64 %idxprom236
  %239 = load double, double* %arrayidx237, align 8
  %240 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %240 to i64
  %241 = load double*, double** %xcfl, align 8
  %arrayidx239 = getelementptr inbounds double, double* %241, i64 %idxprom238
  %242 = load double, double* %arrayidx239, align 8
  %mul240 = fmul double %239, %242
  %add241 = fadd double %add235, %mul240
  %243 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %243 to i64
  %244 = load double*, double** %cfc, align 8
  %arrayidx243 = getelementptr inbounds double, double* %244, i64 %idxprom242
  %245 = load double, double* %arrayidx243, align 8
  %246 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %246 to i64
  %247 = load double*, double** %xcfc, align 8
  %arrayidx245 = getelementptr inbounds double, double* %247, i64 %idxprom244
  %248 = load double, double* %arrayidx245, align 8
  %mul246 = fmul double %245, %248
  %add247 = fadd double %add241, %mul246
  %249 = load i32, i32* %i, align 4
  %idxprom248 = sext i32 %249 to i64
  %250 = load double*, double** %cfr, align 8
  %arrayidx249 = getelementptr inbounds double, double* %250, i64 %idxprom248
  %251 = load double, double* %arrayidx249, align 8
  %252 = load i32, i32* %i, align 4
  %idxprom250 = sext i32 %252 to i64
  %253 = load double*, double** %xcfr, align 8
  %arrayidx251 = getelementptr inbounds double, double* %253, i64 %idxprom250
  %254 = load double, double* %arrayidx251, align 8
  %mul252 = fmul double %251, %254
  %add253 = fadd double %add247, %mul252
  %255 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %255 to i64
  %256 = load double*, double** %ubl, align 8
  %arrayidx255 = getelementptr inbounds double, double* %256, i64 %idxprom254
  %257 = load double, double* %arrayidx255, align 8
  %258 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %258 to i64
  %259 = load double*, double** %xubl, align 8
  %arrayidx257 = getelementptr inbounds double, double* %259, i64 %idxprom256
  %260 = load double, double* %arrayidx257, align 8
  %mul258 = fmul double %257, %260
  %add259 = fadd double %add253, %mul258
  %261 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %261 to i64
  %262 = load double*, double** %ubc, align 8
  %arrayidx261 = getelementptr inbounds double, double* %262, i64 %idxprom260
  %263 = load double, double* %arrayidx261, align 8
  %264 = load i32, i32* %i, align 4
  %idxprom262 = sext i32 %264 to i64
  %265 = load double*, double** %xubc, align 8
  %arrayidx263 = getelementptr inbounds double, double* %265, i64 %idxprom262
  %266 = load double, double* %arrayidx263, align 8
  %mul264 = fmul double %263, %266
  %add265 = fadd double %add259, %mul264
  %267 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %267 to i64
  %268 = load double*, double** %ubr, align 8
  %arrayidx267 = getelementptr inbounds double, double* %268, i64 %idxprom266
  %269 = load double, double* %arrayidx267, align 8
  %270 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %270 to i64
  %271 = load double*, double** %xubr, align 8
  %arrayidx269 = getelementptr inbounds double, double* %271, i64 %idxprom268
  %272 = load double, double* %arrayidx269, align 8
  %mul270 = fmul double %269, %272
  %add271 = fadd double %add265, %mul270
  %273 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %273 to i64
  %274 = load double*, double** %ucl, align 8
  %arrayidx273 = getelementptr inbounds double, double* %274, i64 %idxprom272
  %275 = load double, double* %arrayidx273, align 8
  %276 = load i32, i32* %i, align 4
  %idxprom274 = sext i32 %276 to i64
  %277 = load double*, double** %xucl, align 8
  %arrayidx275 = getelementptr inbounds double, double* %277, i64 %idxprom274
  %278 = load double, double* %arrayidx275, align 8
  %mul276 = fmul double %275, %278
  %add277 = fadd double %add271, %mul276
  %279 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %279 to i64
  %280 = load double*, double** %ucc, align 8
  %arrayidx279 = getelementptr inbounds double, double* %280, i64 %idxprom278
  %281 = load double, double* %arrayidx279, align 8
  %282 = load i32, i32* %i, align 4
  %idxprom280 = sext i32 %282 to i64
  %283 = load double*, double** %xucc, align 8
  %arrayidx281 = getelementptr inbounds double, double* %283, i64 %idxprom280
  %284 = load double, double* %arrayidx281, align 8
  %mul282 = fmul double %281, %284
  %add283 = fadd double %add277, %mul282
  %285 = load i32, i32* %i, align 4
  %idxprom284 = sext i32 %285 to i64
  %286 = load double*, double** %ucr, align 8
  %arrayidx285 = getelementptr inbounds double, double* %286, i64 %idxprom284
  %287 = load double, double* %arrayidx285, align 8
  %288 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %288 to i64
  %289 = load double*, double** %xucr, align 8
  %arrayidx287 = getelementptr inbounds double, double* %289, i64 %idxprom286
  %290 = load double, double* %arrayidx287, align 8
  %mul288 = fmul double %287, %290
  %add289 = fadd double %add283, %mul288
  %291 = load i32, i32* %i, align 4
  %idxprom290 = sext i32 %291 to i64
  %292 = load double*, double** %ufl, align 8
  %arrayidx291 = getelementptr inbounds double, double* %292, i64 %idxprom290
  %293 = load double, double* %arrayidx291, align 8
  %294 = load i32, i32* %i, align 4
  %idxprom292 = sext i32 %294 to i64
  %295 = load double*, double** %xufl, align 8
  %arrayidx293 = getelementptr inbounds double, double* %295, i64 %idxprom292
  %296 = load double, double* %arrayidx293, align 8
  %mul294 = fmul double %293, %296
  %add295 = fadd double %add289, %mul294
  %297 = load i32, i32* %i, align 4
  %idxprom296 = sext i32 %297 to i64
  %298 = load double*, double** %ufc, align 8
  %arrayidx297 = getelementptr inbounds double, double* %298, i64 %idxprom296
  %299 = load double, double* %arrayidx297, align 8
  %300 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %300 to i64
  %301 = load double*, double** %xufc, align 8
  %arrayidx299 = getelementptr inbounds double, double* %301, i64 %idxprom298
  %302 = load double, double* %arrayidx299, align 8
  %mul300 = fmul double %299, %302
  %add301 = fadd double %add295, %mul300
  %303 = load i32, i32* %i, align 4
  %idxprom302 = sext i32 %303 to i64
  %304 = load double*, double** %ufr, align 8
  %arrayidx303 = getelementptr inbounds double, double* %304, i64 %idxprom302
  %305 = load double, double* %arrayidx303, align 8
  %306 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %306 to i64
  %307 = load double*, double** %xufr, align 8
  %arrayidx305 = getelementptr inbounds double, double* %307, i64 %idxprom304
  %308 = load double, double* %arrayidx305, align 8
  %mul306 = fmul double %305, %308
  %add307 = fadd double %add301, %mul306
  %309 = load i32, i32* %i, align 4
  %idxprom308 = sext i32 %309 to i64
  %310 = load double*, double** %b.addr, align 8
  %arrayidx309 = getelementptr inbounds double, double* %310, i64 %idxprom308
  store double %add307, double* %arrayidx309, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.146
  %311 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %311, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond.144

for.end:                                          ; preds = %for.cond.144
  br label %for.inc.310

for.inc.310:                                      ; preds = %for.end
  %312 = load i32, i32* %jj, align 4
  %inc311 = add nsw i32 %312, 1
  store i32 %inc311, i32* %jj, align 4
  br label %for.cond.141

for.end.312:                                      ; preds = %for.cond.141
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.end.312
  %313 = load i32, i32* %kk, align 4
  %inc314 = add nsw i32 %313, 1
  store i32 %inc314, i32* %kk, align 4
  br label %for.cond

for.end.315:                                      ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
