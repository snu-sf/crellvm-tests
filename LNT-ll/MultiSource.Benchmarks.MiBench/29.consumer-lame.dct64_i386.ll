; ModuleID = './MultiSource.Benchmarks.MiBench/29.consumer-lame.dct64_i386.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnts = external global [5 x double*], align 16

; Function Attrs: nounwind uwtable
define void @dct64(double* %a, double* %b, double* %c) #0 {
entry:
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %c.addr = alloca double*, align 8
  %bufs = alloca [64 x double], align 16
  store double* %a, double** %a.addr, align 8, !tbaa !1
  store double* %b, double** %b.addr, align 8, !tbaa !1
  store double* %c, double** %c.addr, align 8, !tbaa !1
  %0 = bitcast [64 x double]* %bufs to i8*
  call void @llvm.lifetime.start(i64 512, i8* %0) #1
  %1 = load double*, double** %a.addr, align 8, !tbaa !1
  %2 = load double*, double** %b.addr, align 8, !tbaa !1
  %arraydecay = getelementptr inbounds [64 x double], [64 x double]* %bufs, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [64 x double], [64 x double]* %bufs, i32 0, i32 0
  %add.ptr = getelementptr inbounds double, double* %arraydecay1, i64 32
  %3 = load double*, double** %c.addr, align 8, !tbaa !1
  call void @dct64_1(double* %1, double* %2, double* %arraydecay, double* %add.ptr, double* %3)
  %4 = bitcast [64 x double]* %bufs to i8*
  call void @llvm.lifetime.end(i64 512, i8* %4) #1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @dct64_1(double* %out0, double* %out1, double* %b1, double* %b2, double* %samples) #0 {
entry:
  %out0.addr = alloca double*, align 8
  %out1.addr = alloca double*, align 8
  %b1.addr = alloca double*, align 8
  %b2.addr = alloca double*, align 8
  %samples.addr = alloca double*, align 8
  %costab = alloca double*, align 8
  %costab157 = alloca double*, align 8
  %costab318 = alloca double*, align 8
  %cos0 = alloca double, align 8
  %cos1 = alloca double, align 8
  %cos0625 = alloca double, align 8
  store double* %out0, double** %out0.addr, align 8, !tbaa !1
  store double* %out1, double** %out1.addr, align 8, !tbaa !1
  store double* %b1, double** %b1.addr, align 8, !tbaa !1
  store double* %b2, double** %b2.addr, align 8, !tbaa !1
  store double* %samples, double** %samples.addr, align 8, !tbaa !1
  %0 = bitcast double** %costab to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load double*, double** getelementptr inbounds ([5 x double*], [5 x double*]* @pnts, i32 0, i64 0), align 8, !tbaa !1
  store double* %1, double** %costab, align 8, !tbaa !1
  %2 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8, !tbaa !5
  %4 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx1 = getelementptr inbounds double, double* %4, i64 31
  %5 = load double, double* %arrayidx1, align 8, !tbaa !5
  %add = fadd double %3, %5
  %6 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 0
  store double %add, double* %arrayidx2, align 8, !tbaa !5
  %7 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx3 = getelementptr inbounds double, double* %7, i64 0
  %8 = load double, double* %arrayidx3, align 8, !tbaa !5
  %9 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx4 = getelementptr inbounds double, double* %9, i64 31
  %10 = load double, double* %arrayidx4, align 8, !tbaa !5
  %sub = fsub double %8, %10
  %11 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx5 = getelementptr inbounds double, double* %11, i64 0
  %12 = load double, double* %arrayidx5, align 8, !tbaa !5
  %mul = fmul double %sub, %12
  %13 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx6 = getelementptr inbounds double, double* %13, i64 31
  store double %mul, double* %arrayidx6, align 8, !tbaa !5
  %14 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx7 = getelementptr inbounds double, double* %14, i64 1
  %15 = load double, double* %arrayidx7, align 8, !tbaa !5
  %16 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx8 = getelementptr inbounds double, double* %16, i64 30
  %17 = load double, double* %arrayidx8, align 8, !tbaa !5
  %add9 = fadd double %15, %17
  %18 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 1
  store double %add9, double* %arrayidx10, align 8, !tbaa !5
  %19 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx11 = getelementptr inbounds double, double* %19, i64 1
  %20 = load double, double* %arrayidx11, align 8, !tbaa !5
  %21 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx12 = getelementptr inbounds double, double* %21, i64 30
  %22 = load double, double* %arrayidx12, align 8, !tbaa !5
  %sub13 = fsub double %20, %22
  %23 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx14 = getelementptr inbounds double, double* %23, i64 1
  %24 = load double, double* %arrayidx14, align 8, !tbaa !5
  %mul15 = fmul double %sub13, %24
  %25 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx16 = getelementptr inbounds double, double* %25, i64 30
  store double %mul15, double* %arrayidx16, align 8, !tbaa !5
  %26 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx17 = getelementptr inbounds double, double* %26, i64 2
  %27 = load double, double* %arrayidx17, align 8, !tbaa !5
  %28 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx18 = getelementptr inbounds double, double* %28, i64 29
  %29 = load double, double* %arrayidx18, align 8, !tbaa !5
  %add19 = fadd double %27, %29
  %30 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx20 = getelementptr inbounds double, double* %30, i64 2
  store double %add19, double* %arrayidx20, align 8, !tbaa !5
  %31 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx21 = getelementptr inbounds double, double* %31, i64 2
  %32 = load double, double* %arrayidx21, align 8, !tbaa !5
  %33 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx22 = getelementptr inbounds double, double* %33, i64 29
  %34 = load double, double* %arrayidx22, align 8, !tbaa !5
  %sub23 = fsub double %32, %34
  %35 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx24 = getelementptr inbounds double, double* %35, i64 2
  %36 = load double, double* %arrayidx24, align 8, !tbaa !5
  %mul25 = fmul double %sub23, %36
  %37 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx26 = getelementptr inbounds double, double* %37, i64 29
  store double %mul25, double* %arrayidx26, align 8, !tbaa !5
  %38 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx27 = getelementptr inbounds double, double* %38, i64 3
  %39 = load double, double* %arrayidx27, align 8, !tbaa !5
  %40 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx28 = getelementptr inbounds double, double* %40, i64 28
  %41 = load double, double* %arrayidx28, align 8, !tbaa !5
  %add29 = fadd double %39, %41
  %42 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx30 = getelementptr inbounds double, double* %42, i64 3
  store double %add29, double* %arrayidx30, align 8, !tbaa !5
  %43 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx31 = getelementptr inbounds double, double* %43, i64 3
  %44 = load double, double* %arrayidx31, align 8, !tbaa !5
  %45 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx32 = getelementptr inbounds double, double* %45, i64 28
  %46 = load double, double* %arrayidx32, align 8, !tbaa !5
  %sub33 = fsub double %44, %46
  %47 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx34 = getelementptr inbounds double, double* %47, i64 3
  %48 = load double, double* %arrayidx34, align 8, !tbaa !5
  %mul35 = fmul double %sub33, %48
  %49 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx36 = getelementptr inbounds double, double* %49, i64 28
  store double %mul35, double* %arrayidx36, align 8, !tbaa !5
  %50 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx37 = getelementptr inbounds double, double* %50, i64 4
  %51 = load double, double* %arrayidx37, align 8, !tbaa !5
  %52 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx38 = getelementptr inbounds double, double* %52, i64 27
  %53 = load double, double* %arrayidx38, align 8, !tbaa !5
  %add39 = fadd double %51, %53
  %54 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx40 = getelementptr inbounds double, double* %54, i64 4
  store double %add39, double* %arrayidx40, align 8, !tbaa !5
  %55 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx41 = getelementptr inbounds double, double* %55, i64 4
  %56 = load double, double* %arrayidx41, align 8, !tbaa !5
  %57 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx42 = getelementptr inbounds double, double* %57, i64 27
  %58 = load double, double* %arrayidx42, align 8, !tbaa !5
  %sub43 = fsub double %56, %58
  %59 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx44 = getelementptr inbounds double, double* %59, i64 4
  %60 = load double, double* %arrayidx44, align 8, !tbaa !5
  %mul45 = fmul double %sub43, %60
  %61 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx46 = getelementptr inbounds double, double* %61, i64 27
  store double %mul45, double* %arrayidx46, align 8, !tbaa !5
  %62 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx47 = getelementptr inbounds double, double* %62, i64 5
  %63 = load double, double* %arrayidx47, align 8, !tbaa !5
  %64 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx48 = getelementptr inbounds double, double* %64, i64 26
  %65 = load double, double* %arrayidx48, align 8, !tbaa !5
  %add49 = fadd double %63, %65
  %66 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx50 = getelementptr inbounds double, double* %66, i64 5
  store double %add49, double* %arrayidx50, align 8, !tbaa !5
  %67 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx51 = getelementptr inbounds double, double* %67, i64 5
  %68 = load double, double* %arrayidx51, align 8, !tbaa !5
  %69 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx52 = getelementptr inbounds double, double* %69, i64 26
  %70 = load double, double* %arrayidx52, align 8, !tbaa !5
  %sub53 = fsub double %68, %70
  %71 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx54 = getelementptr inbounds double, double* %71, i64 5
  %72 = load double, double* %arrayidx54, align 8, !tbaa !5
  %mul55 = fmul double %sub53, %72
  %73 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx56 = getelementptr inbounds double, double* %73, i64 26
  store double %mul55, double* %arrayidx56, align 8, !tbaa !5
  %74 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx57 = getelementptr inbounds double, double* %74, i64 6
  %75 = load double, double* %arrayidx57, align 8, !tbaa !5
  %76 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx58 = getelementptr inbounds double, double* %76, i64 25
  %77 = load double, double* %arrayidx58, align 8, !tbaa !5
  %add59 = fadd double %75, %77
  %78 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx60 = getelementptr inbounds double, double* %78, i64 6
  store double %add59, double* %arrayidx60, align 8, !tbaa !5
  %79 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx61 = getelementptr inbounds double, double* %79, i64 6
  %80 = load double, double* %arrayidx61, align 8, !tbaa !5
  %81 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx62 = getelementptr inbounds double, double* %81, i64 25
  %82 = load double, double* %arrayidx62, align 8, !tbaa !5
  %sub63 = fsub double %80, %82
  %83 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx64 = getelementptr inbounds double, double* %83, i64 6
  %84 = load double, double* %arrayidx64, align 8, !tbaa !5
  %mul65 = fmul double %sub63, %84
  %85 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx66 = getelementptr inbounds double, double* %85, i64 25
  store double %mul65, double* %arrayidx66, align 8, !tbaa !5
  %86 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx67 = getelementptr inbounds double, double* %86, i64 7
  %87 = load double, double* %arrayidx67, align 8, !tbaa !5
  %88 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx68 = getelementptr inbounds double, double* %88, i64 24
  %89 = load double, double* %arrayidx68, align 8, !tbaa !5
  %add69 = fadd double %87, %89
  %90 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx70 = getelementptr inbounds double, double* %90, i64 7
  store double %add69, double* %arrayidx70, align 8, !tbaa !5
  %91 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx71 = getelementptr inbounds double, double* %91, i64 7
  %92 = load double, double* %arrayidx71, align 8, !tbaa !5
  %93 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx72 = getelementptr inbounds double, double* %93, i64 24
  %94 = load double, double* %arrayidx72, align 8, !tbaa !5
  %sub73 = fsub double %92, %94
  %95 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx74 = getelementptr inbounds double, double* %95, i64 7
  %96 = load double, double* %arrayidx74, align 8, !tbaa !5
  %mul75 = fmul double %sub73, %96
  %97 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx76 = getelementptr inbounds double, double* %97, i64 24
  store double %mul75, double* %arrayidx76, align 8, !tbaa !5
  %98 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx77 = getelementptr inbounds double, double* %98, i64 8
  %99 = load double, double* %arrayidx77, align 8, !tbaa !5
  %100 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx78 = getelementptr inbounds double, double* %100, i64 23
  %101 = load double, double* %arrayidx78, align 8, !tbaa !5
  %add79 = fadd double %99, %101
  %102 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx80 = getelementptr inbounds double, double* %102, i64 8
  store double %add79, double* %arrayidx80, align 8, !tbaa !5
  %103 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx81 = getelementptr inbounds double, double* %103, i64 8
  %104 = load double, double* %arrayidx81, align 8, !tbaa !5
  %105 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx82 = getelementptr inbounds double, double* %105, i64 23
  %106 = load double, double* %arrayidx82, align 8, !tbaa !5
  %sub83 = fsub double %104, %106
  %107 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx84 = getelementptr inbounds double, double* %107, i64 8
  %108 = load double, double* %arrayidx84, align 8, !tbaa !5
  %mul85 = fmul double %sub83, %108
  %109 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx86 = getelementptr inbounds double, double* %109, i64 23
  store double %mul85, double* %arrayidx86, align 8, !tbaa !5
  %110 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx87 = getelementptr inbounds double, double* %110, i64 9
  %111 = load double, double* %arrayidx87, align 8, !tbaa !5
  %112 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx88 = getelementptr inbounds double, double* %112, i64 22
  %113 = load double, double* %arrayidx88, align 8, !tbaa !5
  %add89 = fadd double %111, %113
  %114 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx90 = getelementptr inbounds double, double* %114, i64 9
  store double %add89, double* %arrayidx90, align 8, !tbaa !5
  %115 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx91 = getelementptr inbounds double, double* %115, i64 9
  %116 = load double, double* %arrayidx91, align 8, !tbaa !5
  %117 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx92 = getelementptr inbounds double, double* %117, i64 22
  %118 = load double, double* %arrayidx92, align 8, !tbaa !5
  %sub93 = fsub double %116, %118
  %119 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx94 = getelementptr inbounds double, double* %119, i64 9
  %120 = load double, double* %arrayidx94, align 8, !tbaa !5
  %mul95 = fmul double %sub93, %120
  %121 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx96 = getelementptr inbounds double, double* %121, i64 22
  store double %mul95, double* %arrayidx96, align 8, !tbaa !5
  %122 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx97 = getelementptr inbounds double, double* %122, i64 10
  %123 = load double, double* %arrayidx97, align 8, !tbaa !5
  %124 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx98 = getelementptr inbounds double, double* %124, i64 21
  %125 = load double, double* %arrayidx98, align 8, !tbaa !5
  %add99 = fadd double %123, %125
  %126 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx100 = getelementptr inbounds double, double* %126, i64 10
  store double %add99, double* %arrayidx100, align 8, !tbaa !5
  %127 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx101 = getelementptr inbounds double, double* %127, i64 10
  %128 = load double, double* %arrayidx101, align 8, !tbaa !5
  %129 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx102 = getelementptr inbounds double, double* %129, i64 21
  %130 = load double, double* %arrayidx102, align 8, !tbaa !5
  %sub103 = fsub double %128, %130
  %131 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx104 = getelementptr inbounds double, double* %131, i64 10
  %132 = load double, double* %arrayidx104, align 8, !tbaa !5
  %mul105 = fmul double %sub103, %132
  %133 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx106 = getelementptr inbounds double, double* %133, i64 21
  store double %mul105, double* %arrayidx106, align 8, !tbaa !5
  %134 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx107 = getelementptr inbounds double, double* %134, i64 11
  %135 = load double, double* %arrayidx107, align 8, !tbaa !5
  %136 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx108 = getelementptr inbounds double, double* %136, i64 20
  %137 = load double, double* %arrayidx108, align 8, !tbaa !5
  %add109 = fadd double %135, %137
  %138 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx110 = getelementptr inbounds double, double* %138, i64 11
  store double %add109, double* %arrayidx110, align 8, !tbaa !5
  %139 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx111 = getelementptr inbounds double, double* %139, i64 11
  %140 = load double, double* %arrayidx111, align 8, !tbaa !5
  %141 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx112 = getelementptr inbounds double, double* %141, i64 20
  %142 = load double, double* %arrayidx112, align 8, !tbaa !5
  %sub113 = fsub double %140, %142
  %143 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx114 = getelementptr inbounds double, double* %143, i64 11
  %144 = load double, double* %arrayidx114, align 8, !tbaa !5
  %mul115 = fmul double %sub113, %144
  %145 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx116 = getelementptr inbounds double, double* %145, i64 20
  store double %mul115, double* %arrayidx116, align 8, !tbaa !5
  %146 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx117 = getelementptr inbounds double, double* %146, i64 12
  %147 = load double, double* %arrayidx117, align 8, !tbaa !5
  %148 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx118 = getelementptr inbounds double, double* %148, i64 19
  %149 = load double, double* %arrayidx118, align 8, !tbaa !5
  %add119 = fadd double %147, %149
  %150 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx120 = getelementptr inbounds double, double* %150, i64 12
  store double %add119, double* %arrayidx120, align 8, !tbaa !5
  %151 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx121 = getelementptr inbounds double, double* %151, i64 12
  %152 = load double, double* %arrayidx121, align 8, !tbaa !5
  %153 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx122 = getelementptr inbounds double, double* %153, i64 19
  %154 = load double, double* %arrayidx122, align 8, !tbaa !5
  %sub123 = fsub double %152, %154
  %155 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx124 = getelementptr inbounds double, double* %155, i64 12
  %156 = load double, double* %arrayidx124, align 8, !tbaa !5
  %mul125 = fmul double %sub123, %156
  %157 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx126 = getelementptr inbounds double, double* %157, i64 19
  store double %mul125, double* %arrayidx126, align 8, !tbaa !5
  %158 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx127 = getelementptr inbounds double, double* %158, i64 13
  %159 = load double, double* %arrayidx127, align 8, !tbaa !5
  %160 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx128 = getelementptr inbounds double, double* %160, i64 18
  %161 = load double, double* %arrayidx128, align 8, !tbaa !5
  %add129 = fadd double %159, %161
  %162 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx130 = getelementptr inbounds double, double* %162, i64 13
  store double %add129, double* %arrayidx130, align 8, !tbaa !5
  %163 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx131 = getelementptr inbounds double, double* %163, i64 13
  %164 = load double, double* %arrayidx131, align 8, !tbaa !5
  %165 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx132 = getelementptr inbounds double, double* %165, i64 18
  %166 = load double, double* %arrayidx132, align 8, !tbaa !5
  %sub133 = fsub double %164, %166
  %167 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx134 = getelementptr inbounds double, double* %167, i64 13
  %168 = load double, double* %arrayidx134, align 8, !tbaa !5
  %mul135 = fmul double %sub133, %168
  %169 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx136 = getelementptr inbounds double, double* %169, i64 18
  store double %mul135, double* %arrayidx136, align 8, !tbaa !5
  %170 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx137 = getelementptr inbounds double, double* %170, i64 14
  %171 = load double, double* %arrayidx137, align 8, !tbaa !5
  %172 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx138 = getelementptr inbounds double, double* %172, i64 17
  %173 = load double, double* %arrayidx138, align 8, !tbaa !5
  %add139 = fadd double %171, %173
  %174 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx140 = getelementptr inbounds double, double* %174, i64 14
  store double %add139, double* %arrayidx140, align 8, !tbaa !5
  %175 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx141 = getelementptr inbounds double, double* %175, i64 14
  %176 = load double, double* %arrayidx141, align 8, !tbaa !5
  %177 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx142 = getelementptr inbounds double, double* %177, i64 17
  %178 = load double, double* %arrayidx142, align 8, !tbaa !5
  %sub143 = fsub double %176, %178
  %179 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx144 = getelementptr inbounds double, double* %179, i64 14
  %180 = load double, double* %arrayidx144, align 8, !tbaa !5
  %mul145 = fmul double %sub143, %180
  %181 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx146 = getelementptr inbounds double, double* %181, i64 17
  store double %mul145, double* %arrayidx146, align 8, !tbaa !5
  %182 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx147 = getelementptr inbounds double, double* %182, i64 15
  %183 = load double, double* %arrayidx147, align 8, !tbaa !5
  %184 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx148 = getelementptr inbounds double, double* %184, i64 16
  %185 = load double, double* %arrayidx148, align 8, !tbaa !5
  %add149 = fadd double %183, %185
  %186 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx150 = getelementptr inbounds double, double* %186, i64 15
  store double %add149, double* %arrayidx150, align 8, !tbaa !5
  %187 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx151 = getelementptr inbounds double, double* %187, i64 15
  %188 = load double, double* %arrayidx151, align 8, !tbaa !5
  %189 = load double*, double** %samples.addr, align 8, !tbaa !1
  %arrayidx152 = getelementptr inbounds double, double* %189, i64 16
  %190 = load double, double* %arrayidx152, align 8, !tbaa !5
  %sub153 = fsub double %188, %190
  %191 = load double*, double** %costab, align 8, !tbaa !1
  %arrayidx154 = getelementptr inbounds double, double* %191, i64 15
  %192 = load double, double* %arrayidx154, align 8, !tbaa !5
  %mul155 = fmul double %sub153, %192
  %193 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx156 = getelementptr inbounds double, double* %193, i64 16
  store double %mul155, double* %arrayidx156, align 8, !tbaa !5
  %194 = bitcast double** %costab to i8*
  call void @llvm.lifetime.end(i64 8, i8* %194) #1
  %195 = bitcast double** %costab157 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %195) #1
  %196 = load double*, double** getelementptr inbounds ([5 x double*], [5 x double*]* @pnts, i32 0, i64 1), align 8, !tbaa !1
  store double* %196, double** %costab157, align 8, !tbaa !1
  %197 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx158 = getelementptr inbounds double, double* %197, i64 0
  %198 = load double, double* %arrayidx158, align 8, !tbaa !5
  %199 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx159 = getelementptr inbounds double, double* %199, i64 15
  %200 = load double, double* %arrayidx159, align 8, !tbaa !5
  %add160 = fadd double %198, %200
  %201 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx161 = getelementptr inbounds double, double* %201, i64 0
  store double %add160, double* %arrayidx161, align 8, !tbaa !5
  %202 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx162 = getelementptr inbounds double, double* %202, i64 0
  %203 = load double, double* %arrayidx162, align 8, !tbaa !5
  %204 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx163 = getelementptr inbounds double, double* %204, i64 15
  %205 = load double, double* %arrayidx163, align 8, !tbaa !5
  %sub164 = fsub double %203, %205
  %206 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx165 = getelementptr inbounds double, double* %206, i64 0
  %207 = load double, double* %arrayidx165, align 8, !tbaa !5
  %mul166 = fmul double %sub164, %207
  %208 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx167 = getelementptr inbounds double, double* %208, i64 15
  store double %mul166, double* %arrayidx167, align 8, !tbaa !5
  %209 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx168 = getelementptr inbounds double, double* %209, i64 1
  %210 = load double, double* %arrayidx168, align 8, !tbaa !5
  %211 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx169 = getelementptr inbounds double, double* %211, i64 14
  %212 = load double, double* %arrayidx169, align 8, !tbaa !5
  %add170 = fadd double %210, %212
  %213 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx171 = getelementptr inbounds double, double* %213, i64 1
  store double %add170, double* %arrayidx171, align 8, !tbaa !5
  %214 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx172 = getelementptr inbounds double, double* %214, i64 1
  %215 = load double, double* %arrayidx172, align 8, !tbaa !5
  %216 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx173 = getelementptr inbounds double, double* %216, i64 14
  %217 = load double, double* %arrayidx173, align 8, !tbaa !5
  %sub174 = fsub double %215, %217
  %218 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx175 = getelementptr inbounds double, double* %218, i64 1
  %219 = load double, double* %arrayidx175, align 8, !tbaa !5
  %mul176 = fmul double %sub174, %219
  %220 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx177 = getelementptr inbounds double, double* %220, i64 14
  store double %mul176, double* %arrayidx177, align 8, !tbaa !5
  %221 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx178 = getelementptr inbounds double, double* %221, i64 2
  %222 = load double, double* %arrayidx178, align 8, !tbaa !5
  %223 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx179 = getelementptr inbounds double, double* %223, i64 13
  %224 = load double, double* %arrayidx179, align 8, !tbaa !5
  %add180 = fadd double %222, %224
  %225 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx181 = getelementptr inbounds double, double* %225, i64 2
  store double %add180, double* %arrayidx181, align 8, !tbaa !5
  %226 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx182 = getelementptr inbounds double, double* %226, i64 2
  %227 = load double, double* %arrayidx182, align 8, !tbaa !5
  %228 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx183 = getelementptr inbounds double, double* %228, i64 13
  %229 = load double, double* %arrayidx183, align 8, !tbaa !5
  %sub184 = fsub double %227, %229
  %230 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx185 = getelementptr inbounds double, double* %230, i64 2
  %231 = load double, double* %arrayidx185, align 8, !tbaa !5
  %mul186 = fmul double %sub184, %231
  %232 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx187 = getelementptr inbounds double, double* %232, i64 13
  store double %mul186, double* %arrayidx187, align 8, !tbaa !5
  %233 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx188 = getelementptr inbounds double, double* %233, i64 3
  %234 = load double, double* %arrayidx188, align 8, !tbaa !5
  %235 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx189 = getelementptr inbounds double, double* %235, i64 12
  %236 = load double, double* %arrayidx189, align 8, !tbaa !5
  %add190 = fadd double %234, %236
  %237 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx191 = getelementptr inbounds double, double* %237, i64 3
  store double %add190, double* %arrayidx191, align 8, !tbaa !5
  %238 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx192 = getelementptr inbounds double, double* %238, i64 3
  %239 = load double, double* %arrayidx192, align 8, !tbaa !5
  %240 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx193 = getelementptr inbounds double, double* %240, i64 12
  %241 = load double, double* %arrayidx193, align 8, !tbaa !5
  %sub194 = fsub double %239, %241
  %242 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx195 = getelementptr inbounds double, double* %242, i64 3
  %243 = load double, double* %arrayidx195, align 8, !tbaa !5
  %mul196 = fmul double %sub194, %243
  %244 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx197 = getelementptr inbounds double, double* %244, i64 12
  store double %mul196, double* %arrayidx197, align 8, !tbaa !5
  %245 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx198 = getelementptr inbounds double, double* %245, i64 4
  %246 = load double, double* %arrayidx198, align 8, !tbaa !5
  %247 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx199 = getelementptr inbounds double, double* %247, i64 11
  %248 = load double, double* %arrayidx199, align 8, !tbaa !5
  %add200 = fadd double %246, %248
  %249 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx201 = getelementptr inbounds double, double* %249, i64 4
  store double %add200, double* %arrayidx201, align 8, !tbaa !5
  %250 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx202 = getelementptr inbounds double, double* %250, i64 4
  %251 = load double, double* %arrayidx202, align 8, !tbaa !5
  %252 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx203 = getelementptr inbounds double, double* %252, i64 11
  %253 = load double, double* %arrayidx203, align 8, !tbaa !5
  %sub204 = fsub double %251, %253
  %254 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx205 = getelementptr inbounds double, double* %254, i64 4
  %255 = load double, double* %arrayidx205, align 8, !tbaa !5
  %mul206 = fmul double %sub204, %255
  %256 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx207 = getelementptr inbounds double, double* %256, i64 11
  store double %mul206, double* %arrayidx207, align 8, !tbaa !5
  %257 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx208 = getelementptr inbounds double, double* %257, i64 5
  %258 = load double, double* %arrayidx208, align 8, !tbaa !5
  %259 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx209 = getelementptr inbounds double, double* %259, i64 10
  %260 = load double, double* %arrayidx209, align 8, !tbaa !5
  %add210 = fadd double %258, %260
  %261 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx211 = getelementptr inbounds double, double* %261, i64 5
  store double %add210, double* %arrayidx211, align 8, !tbaa !5
  %262 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx212 = getelementptr inbounds double, double* %262, i64 5
  %263 = load double, double* %arrayidx212, align 8, !tbaa !5
  %264 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx213 = getelementptr inbounds double, double* %264, i64 10
  %265 = load double, double* %arrayidx213, align 8, !tbaa !5
  %sub214 = fsub double %263, %265
  %266 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx215 = getelementptr inbounds double, double* %266, i64 5
  %267 = load double, double* %arrayidx215, align 8, !tbaa !5
  %mul216 = fmul double %sub214, %267
  %268 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx217 = getelementptr inbounds double, double* %268, i64 10
  store double %mul216, double* %arrayidx217, align 8, !tbaa !5
  %269 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx218 = getelementptr inbounds double, double* %269, i64 6
  %270 = load double, double* %arrayidx218, align 8, !tbaa !5
  %271 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx219 = getelementptr inbounds double, double* %271, i64 9
  %272 = load double, double* %arrayidx219, align 8, !tbaa !5
  %add220 = fadd double %270, %272
  %273 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx221 = getelementptr inbounds double, double* %273, i64 6
  store double %add220, double* %arrayidx221, align 8, !tbaa !5
  %274 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx222 = getelementptr inbounds double, double* %274, i64 6
  %275 = load double, double* %arrayidx222, align 8, !tbaa !5
  %276 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx223 = getelementptr inbounds double, double* %276, i64 9
  %277 = load double, double* %arrayidx223, align 8, !tbaa !5
  %sub224 = fsub double %275, %277
  %278 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx225 = getelementptr inbounds double, double* %278, i64 6
  %279 = load double, double* %arrayidx225, align 8, !tbaa !5
  %mul226 = fmul double %sub224, %279
  %280 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx227 = getelementptr inbounds double, double* %280, i64 9
  store double %mul226, double* %arrayidx227, align 8, !tbaa !5
  %281 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx228 = getelementptr inbounds double, double* %281, i64 7
  %282 = load double, double* %arrayidx228, align 8, !tbaa !5
  %283 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx229 = getelementptr inbounds double, double* %283, i64 8
  %284 = load double, double* %arrayidx229, align 8, !tbaa !5
  %add230 = fadd double %282, %284
  %285 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx231 = getelementptr inbounds double, double* %285, i64 7
  store double %add230, double* %arrayidx231, align 8, !tbaa !5
  %286 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx232 = getelementptr inbounds double, double* %286, i64 7
  %287 = load double, double* %arrayidx232, align 8, !tbaa !5
  %288 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx233 = getelementptr inbounds double, double* %288, i64 8
  %289 = load double, double* %arrayidx233, align 8, !tbaa !5
  %sub234 = fsub double %287, %289
  %290 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx235 = getelementptr inbounds double, double* %290, i64 7
  %291 = load double, double* %arrayidx235, align 8, !tbaa !5
  %mul236 = fmul double %sub234, %291
  %292 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx237 = getelementptr inbounds double, double* %292, i64 8
  store double %mul236, double* %arrayidx237, align 8, !tbaa !5
  %293 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx238 = getelementptr inbounds double, double* %293, i64 16
  %294 = load double, double* %arrayidx238, align 8, !tbaa !5
  %295 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx239 = getelementptr inbounds double, double* %295, i64 31
  %296 = load double, double* %arrayidx239, align 8, !tbaa !5
  %add240 = fadd double %294, %296
  %297 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx241 = getelementptr inbounds double, double* %297, i64 16
  store double %add240, double* %arrayidx241, align 8, !tbaa !5
  %298 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx242 = getelementptr inbounds double, double* %298, i64 31
  %299 = load double, double* %arrayidx242, align 8, !tbaa !5
  %300 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx243 = getelementptr inbounds double, double* %300, i64 16
  %301 = load double, double* %arrayidx243, align 8, !tbaa !5
  %sub244 = fsub double %299, %301
  %302 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx245 = getelementptr inbounds double, double* %302, i64 0
  %303 = load double, double* %arrayidx245, align 8, !tbaa !5
  %mul246 = fmul double %sub244, %303
  %304 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx247 = getelementptr inbounds double, double* %304, i64 31
  store double %mul246, double* %arrayidx247, align 8, !tbaa !5
  %305 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx248 = getelementptr inbounds double, double* %305, i64 17
  %306 = load double, double* %arrayidx248, align 8, !tbaa !5
  %307 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx249 = getelementptr inbounds double, double* %307, i64 30
  %308 = load double, double* %arrayidx249, align 8, !tbaa !5
  %add250 = fadd double %306, %308
  %309 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx251 = getelementptr inbounds double, double* %309, i64 17
  store double %add250, double* %arrayidx251, align 8, !tbaa !5
  %310 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx252 = getelementptr inbounds double, double* %310, i64 30
  %311 = load double, double* %arrayidx252, align 8, !tbaa !5
  %312 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx253 = getelementptr inbounds double, double* %312, i64 17
  %313 = load double, double* %arrayidx253, align 8, !tbaa !5
  %sub254 = fsub double %311, %313
  %314 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx255 = getelementptr inbounds double, double* %314, i64 1
  %315 = load double, double* %arrayidx255, align 8, !tbaa !5
  %mul256 = fmul double %sub254, %315
  %316 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx257 = getelementptr inbounds double, double* %316, i64 30
  store double %mul256, double* %arrayidx257, align 8, !tbaa !5
  %317 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx258 = getelementptr inbounds double, double* %317, i64 18
  %318 = load double, double* %arrayidx258, align 8, !tbaa !5
  %319 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx259 = getelementptr inbounds double, double* %319, i64 29
  %320 = load double, double* %arrayidx259, align 8, !tbaa !5
  %add260 = fadd double %318, %320
  %321 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx261 = getelementptr inbounds double, double* %321, i64 18
  store double %add260, double* %arrayidx261, align 8, !tbaa !5
  %322 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx262 = getelementptr inbounds double, double* %322, i64 29
  %323 = load double, double* %arrayidx262, align 8, !tbaa !5
  %324 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx263 = getelementptr inbounds double, double* %324, i64 18
  %325 = load double, double* %arrayidx263, align 8, !tbaa !5
  %sub264 = fsub double %323, %325
  %326 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx265 = getelementptr inbounds double, double* %326, i64 2
  %327 = load double, double* %arrayidx265, align 8, !tbaa !5
  %mul266 = fmul double %sub264, %327
  %328 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx267 = getelementptr inbounds double, double* %328, i64 29
  store double %mul266, double* %arrayidx267, align 8, !tbaa !5
  %329 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx268 = getelementptr inbounds double, double* %329, i64 19
  %330 = load double, double* %arrayidx268, align 8, !tbaa !5
  %331 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx269 = getelementptr inbounds double, double* %331, i64 28
  %332 = load double, double* %arrayidx269, align 8, !tbaa !5
  %add270 = fadd double %330, %332
  %333 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx271 = getelementptr inbounds double, double* %333, i64 19
  store double %add270, double* %arrayidx271, align 8, !tbaa !5
  %334 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx272 = getelementptr inbounds double, double* %334, i64 28
  %335 = load double, double* %arrayidx272, align 8, !tbaa !5
  %336 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx273 = getelementptr inbounds double, double* %336, i64 19
  %337 = load double, double* %arrayidx273, align 8, !tbaa !5
  %sub274 = fsub double %335, %337
  %338 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx275 = getelementptr inbounds double, double* %338, i64 3
  %339 = load double, double* %arrayidx275, align 8, !tbaa !5
  %mul276 = fmul double %sub274, %339
  %340 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx277 = getelementptr inbounds double, double* %340, i64 28
  store double %mul276, double* %arrayidx277, align 8, !tbaa !5
  %341 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx278 = getelementptr inbounds double, double* %341, i64 20
  %342 = load double, double* %arrayidx278, align 8, !tbaa !5
  %343 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx279 = getelementptr inbounds double, double* %343, i64 27
  %344 = load double, double* %arrayidx279, align 8, !tbaa !5
  %add280 = fadd double %342, %344
  %345 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx281 = getelementptr inbounds double, double* %345, i64 20
  store double %add280, double* %arrayidx281, align 8, !tbaa !5
  %346 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx282 = getelementptr inbounds double, double* %346, i64 27
  %347 = load double, double* %arrayidx282, align 8, !tbaa !5
  %348 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx283 = getelementptr inbounds double, double* %348, i64 20
  %349 = load double, double* %arrayidx283, align 8, !tbaa !5
  %sub284 = fsub double %347, %349
  %350 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx285 = getelementptr inbounds double, double* %350, i64 4
  %351 = load double, double* %arrayidx285, align 8, !tbaa !5
  %mul286 = fmul double %sub284, %351
  %352 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx287 = getelementptr inbounds double, double* %352, i64 27
  store double %mul286, double* %arrayidx287, align 8, !tbaa !5
  %353 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx288 = getelementptr inbounds double, double* %353, i64 21
  %354 = load double, double* %arrayidx288, align 8, !tbaa !5
  %355 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx289 = getelementptr inbounds double, double* %355, i64 26
  %356 = load double, double* %arrayidx289, align 8, !tbaa !5
  %add290 = fadd double %354, %356
  %357 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx291 = getelementptr inbounds double, double* %357, i64 21
  store double %add290, double* %arrayidx291, align 8, !tbaa !5
  %358 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx292 = getelementptr inbounds double, double* %358, i64 26
  %359 = load double, double* %arrayidx292, align 8, !tbaa !5
  %360 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx293 = getelementptr inbounds double, double* %360, i64 21
  %361 = load double, double* %arrayidx293, align 8, !tbaa !5
  %sub294 = fsub double %359, %361
  %362 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx295 = getelementptr inbounds double, double* %362, i64 5
  %363 = load double, double* %arrayidx295, align 8, !tbaa !5
  %mul296 = fmul double %sub294, %363
  %364 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx297 = getelementptr inbounds double, double* %364, i64 26
  store double %mul296, double* %arrayidx297, align 8, !tbaa !5
  %365 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx298 = getelementptr inbounds double, double* %365, i64 22
  %366 = load double, double* %arrayidx298, align 8, !tbaa !5
  %367 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx299 = getelementptr inbounds double, double* %367, i64 25
  %368 = load double, double* %arrayidx299, align 8, !tbaa !5
  %add300 = fadd double %366, %368
  %369 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx301 = getelementptr inbounds double, double* %369, i64 22
  store double %add300, double* %arrayidx301, align 8, !tbaa !5
  %370 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx302 = getelementptr inbounds double, double* %370, i64 25
  %371 = load double, double* %arrayidx302, align 8, !tbaa !5
  %372 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx303 = getelementptr inbounds double, double* %372, i64 22
  %373 = load double, double* %arrayidx303, align 8, !tbaa !5
  %sub304 = fsub double %371, %373
  %374 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx305 = getelementptr inbounds double, double* %374, i64 6
  %375 = load double, double* %arrayidx305, align 8, !tbaa !5
  %mul306 = fmul double %sub304, %375
  %376 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx307 = getelementptr inbounds double, double* %376, i64 25
  store double %mul306, double* %arrayidx307, align 8, !tbaa !5
  %377 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx308 = getelementptr inbounds double, double* %377, i64 23
  %378 = load double, double* %arrayidx308, align 8, !tbaa !5
  %379 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx309 = getelementptr inbounds double, double* %379, i64 24
  %380 = load double, double* %arrayidx309, align 8, !tbaa !5
  %add310 = fadd double %378, %380
  %381 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx311 = getelementptr inbounds double, double* %381, i64 23
  store double %add310, double* %arrayidx311, align 8, !tbaa !5
  %382 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx312 = getelementptr inbounds double, double* %382, i64 24
  %383 = load double, double* %arrayidx312, align 8, !tbaa !5
  %384 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx313 = getelementptr inbounds double, double* %384, i64 23
  %385 = load double, double* %arrayidx313, align 8, !tbaa !5
  %sub314 = fsub double %383, %385
  %386 = load double*, double** %costab157, align 8, !tbaa !1
  %arrayidx315 = getelementptr inbounds double, double* %386, i64 7
  %387 = load double, double* %arrayidx315, align 8, !tbaa !5
  %mul316 = fmul double %sub314, %387
  %388 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx317 = getelementptr inbounds double, double* %388, i64 24
  store double %mul316, double* %arrayidx317, align 8, !tbaa !5
  %389 = bitcast double** %costab157 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %389) #1
  %390 = bitcast double** %costab318 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %390) #1
  %391 = load double*, double** getelementptr inbounds ([5 x double*], [5 x double*]* @pnts, i32 0, i64 2), align 8, !tbaa !1
  store double* %391, double** %costab318, align 8, !tbaa !1
  %392 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx319 = getelementptr inbounds double, double* %392, i64 0
  %393 = load double, double* %arrayidx319, align 8, !tbaa !5
  %394 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx320 = getelementptr inbounds double, double* %394, i64 7
  %395 = load double, double* %arrayidx320, align 8, !tbaa !5
  %add321 = fadd double %393, %395
  %396 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx322 = getelementptr inbounds double, double* %396, i64 0
  store double %add321, double* %arrayidx322, align 8, !tbaa !5
  %397 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx323 = getelementptr inbounds double, double* %397, i64 0
  %398 = load double, double* %arrayidx323, align 8, !tbaa !5
  %399 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx324 = getelementptr inbounds double, double* %399, i64 7
  %400 = load double, double* %arrayidx324, align 8, !tbaa !5
  %sub325 = fsub double %398, %400
  %401 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx326 = getelementptr inbounds double, double* %401, i64 0
  %402 = load double, double* %arrayidx326, align 8, !tbaa !5
  %mul327 = fmul double %sub325, %402
  %403 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx328 = getelementptr inbounds double, double* %403, i64 7
  store double %mul327, double* %arrayidx328, align 8, !tbaa !5
  %404 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx329 = getelementptr inbounds double, double* %404, i64 1
  %405 = load double, double* %arrayidx329, align 8, !tbaa !5
  %406 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx330 = getelementptr inbounds double, double* %406, i64 6
  %407 = load double, double* %arrayidx330, align 8, !tbaa !5
  %add331 = fadd double %405, %407
  %408 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx332 = getelementptr inbounds double, double* %408, i64 1
  store double %add331, double* %arrayidx332, align 8, !tbaa !5
  %409 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx333 = getelementptr inbounds double, double* %409, i64 1
  %410 = load double, double* %arrayidx333, align 8, !tbaa !5
  %411 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx334 = getelementptr inbounds double, double* %411, i64 6
  %412 = load double, double* %arrayidx334, align 8, !tbaa !5
  %sub335 = fsub double %410, %412
  %413 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx336 = getelementptr inbounds double, double* %413, i64 1
  %414 = load double, double* %arrayidx336, align 8, !tbaa !5
  %mul337 = fmul double %sub335, %414
  %415 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx338 = getelementptr inbounds double, double* %415, i64 6
  store double %mul337, double* %arrayidx338, align 8, !tbaa !5
  %416 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx339 = getelementptr inbounds double, double* %416, i64 2
  %417 = load double, double* %arrayidx339, align 8, !tbaa !5
  %418 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx340 = getelementptr inbounds double, double* %418, i64 5
  %419 = load double, double* %arrayidx340, align 8, !tbaa !5
  %add341 = fadd double %417, %419
  %420 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx342 = getelementptr inbounds double, double* %420, i64 2
  store double %add341, double* %arrayidx342, align 8, !tbaa !5
  %421 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx343 = getelementptr inbounds double, double* %421, i64 2
  %422 = load double, double* %arrayidx343, align 8, !tbaa !5
  %423 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx344 = getelementptr inbounds double, double* %423, i64 5
  %424 = load double, double* %arrayidx344, align 8, !tbaa !5
  %sub345 = fsub double %422, %424
  %425 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx346 = getelementptr inbounds double, double* %425, i64 2
  %426 = load double, double* %arrayidx346, align 8, !tbaa !5
  %mul347 = fmul double %sub345, %426
  %427 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx348 = getelementptr inbounds double, double* %427, i64 5
  store double %mul347, double* %arrayidx348, align 8, !tbaa !5
  %428 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx349 = getelementptr inbounds double, double* %428, i64 3
  %429 = load double, double* %arrayidx349, align 8, !tbaa !5
  %430 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx350 = getelementptr inbounds double, double* %430, i64 4
  %431 = load double, double* %arrayidx350, align 8, !tbaa !5
  %add351 = fadd double %429, %431
  %432 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx352 = getelementptr inbounds double, double* %432, i64 3
  store double %add351, double* %arrayidx352, align 8, !tbaa !5
  %433 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx353 = getelementptr inbounds double, double* %433, i64 3
  %434 = load double, double* %arrayidx353, align 8, !tbaa !5
  %435 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx354 = getelementptr inbounds double, double* %435, i64 4
  %436 = load double, double* %arrayidx354, align 8, !tbaa !5
  %sub355 = fsub double %434, %436
  %437 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx356 = getelementptr inbounds double, double* %437, i64 3
  %438 = load double, double* %arrayidx356, align 8, !tbaa !5
  %mul357 = fmul double %sub355, %438
  %439 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx358 = getelementptr inbounds double, double* %439, i64 4
  store double %mul357, double* %arrayidx358, align 8, !tbaa !5
  %440 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx359 = getelementptr inbounds double, double* %440, i64 8
  %441 = load double, double* %arrayidx359, align 8, !tbaa !5
  %442 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx360 = getelementptr inbounds double, double* %442, i64 15
  %443 = load double, double* %arrayidx360, align 8, !tbaa !5
  %add361 = fadd double %441, %443
  %444 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx362 = getelementptr inbounds double, double* %444, i64 8
  store double %add361, double* %arrayidx362, align 8, !tbaa !5
  %445 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx363 = getelementptr inbounds double, double* %445, i64 15
  %446 = load double, double* %arrayidx363, align 8, !tbaa !5
  %447 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx364 = getelementptr inbounds double, double* %447, i64 8
  %448 = load double, double* %arrayidx364, align 8, !tbaa !5
  %sub365 = fsub double %446, %448
  %449 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx366 = getelementptr inbounds double, double* %449, i64 0
  %450 = load double, double* %arrayidx366, align 8, !tbaa !5
  %mul367 = fmul double %sub365, %450
  %451 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx368 = getelementptr inbounds double, double* %451, i64 15
  store double %mul367, double* %arrayidx368, align 8, !tbaa !5
  %452 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx369 = getelementptr inbounds double, double* %452, i64 9
  %453 = load double, double* %arrayidx369, align 8, !tbaa !5
  %454 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx370 = getelementptr inbounds double, double* %454, i64 14
  %455 = load double, double* %arrayidx370, align 8, !tbaa !5
  %add371 = fadd double %453, %455
  %456 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx372 = getelementptr inbounds double, double* %456, i64 9
  store double %add371, double* %arrayidx372, align 8, !tbaa !5
  %457 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx373 = getelementptr inbounds double, double* %457, i64 14
  %458 = load double, double* %arrayidx373, align 8, !tbaa !5
  %459 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx374 = getelementptr inbounds double, double* %459, i64 9
  %460 = load double, double* %arrayidx374, align 8, !tbaa !5
  %sub375 = fsub double %458, %460
  %461 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx376 = getelementptr inbounds double, double* %461, i64 1
  %462 = load double, double* %arrayidx376, align 8, !tbaa !5
  %mul377 = fmul double %sub375, %462
  %463 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx378 = getelementptr inbounds double, double* %463, i64 14
  store double %mul377, double* %arrayidx378, align 8, !tbaa !5
  %464 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx379 = getelementptr inbounds double, double* %464, i64 10
  %465 = load double, double* %arrayidx379, align 8, !tbaa !5
  %466 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx380 = getelementptr inbounds double, double* %466, i64 13
  %467 = load double, double* %arrayidx380, align 8, !tbaa !5
  %add381 = fadd double %465, %467
  %468 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx382 = getelementptr inbounds double, double* %468, i64 10
  store double %add381, double* %arrayidx382, align 8, !tbaa !5
  %469 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx383 = getelementptr inbounds double, double* %469, i64 13
  %470 = load double, double* %arrayidx383, align 8, !tbaa !5
  %471 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx384 = getelementptr inbounds double, double* %471, i64 10
  %472 = load double, double* %arrayidx384, align 8, !tbaa !5
  %sub385 = fsub double %470, %472
  %473 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx386 = getelementptr inbounds double, double* %473, i64 2
  %474 = load double, double* %arrayidx386, align 8, !tbaa !5
  %mul387 = fmul double %sub385, %474
  %475 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx388 = getelementptr inbounds double, double* %475, i64 13
  store double %mul387, double* %arrayidx388, align 8, !tbaa !5
  %476 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx389 = getelementptr inbounds double, double* %476, i64 11
  %477 = load double, double* %arrayidx389, align 8, !tbaa !5
  %478 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx390 = getelementptr inbounds double, double* %478, i64 12
  %479 = load double, double* %arrayidx390, align 8, !tbaa !5
  %add391 = fadd double %477, %479
  %480 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx392 = getelementptr inbounds double, double* %480, i64 11
  store double %add391, double* %arrayidx392, align 8, !tbaa !5
  %481 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx393 = getelementptr inbounds double, double* %481, i64 12
  %482 = load double, double* %arrayidx393, align 8, !tbaa !5
  %483 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx394 = getelementptr inbounds double, double* %483, i64 11
  %484 = load double, double* %arrayidx394, align 8, !tbaa !5
  %sub395 = fsub double %482, %484
  %485 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx396 = getelementptr inbounds double, double* %485, i64 3
  %486 = load double, double* %arrayidx396, align 8, !tbaa !5
  %mul397 = fmul double %sub395, %486
  %487 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx398 = getelementptr inbounds double, double* %487, i64 12
  store double %mul397, double* %arrayidx398, align 8, !tbaa !5
  %488 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx399 = getelementptr inbounds double, double* %488, i64 16
  %489 = load double, double* %arrayidx399, align 8, !tbaa !5
  %490 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx400 = getelementptr inbounds double, double* %490, i64 23
  %491 = load double, double* %arrayidx400, align 8, !tbaa !5
  %add401 = fadd double %489, %491
  %492 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx402 = getelementptr inbounds double, double* %492, i64 16
  store double %add401, double* %arrayidx402, align 8, !tbaa !5
  %493 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx403 = getelementptr inbounds double, double* %493, i64 16
  %494 = load double, double* %arrayidx403, align 8, !tbaa !5
  %495 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx404 = getelementptr inbounds double, double* %495, i64 23
  %496 = load double, double* %arrayidx404, align 8, !tbaa !5
  %sub405 = fsub double %494, %496
  %497 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx406 = getelementptr inbounds double, double* %497, i64 0
  %498 = load double, double* %arrayidx406, align 8, !tbaa !5
  %mul407 = fmul double %sub405, %498
  %499 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx408 = getelementptr inbounds double, double* %499, i64 23
  store double %mul407, double* %arrayidx408, align 8, !tbaa !5
  %500 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx409 = getelementptr inbounds double, double* %500, i64 17
  %501 = load double, double* %arrayidx409, align 8, !tbaa !5
  %502 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx410 = getelementptr inbounds double, double* %502, i64 22
  %503 = load double, double* %arrayidx410, align 8, !tbaa !5
  %add411 = fadd double %501, %503
  %504 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx412 = getelementptr inbounds double, double* %504, i64 17
  store double %add411, double* %arrayidx412, align 8, !tbaa !5
  %505 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx413 = getelementptr inbounds double, double* %505, i64 17
  %506 = load double, double* %arrayidx413, align 8, !tbaa !5
  %507 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx414 = getelementptr inbounds double, double* %507, i64 22
  %508 = load double, double* %arrayidx414, align 8, !tbaa !5
  %sub415 = fsub double %506, %508
  %509 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx416 = getelementptr inbounds double, double* %509, i64 1
  %510 = load double, double* %arrayidx416, align 8, !tbaa !5
  %mul417 = fmul double %sub415, %510
  %511 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx418 = getelementptr inbounds double, double* %511, i64 22
  store double %mul417, double* %arrayidx418, align 8, !tbaa !5
  %512 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx419 = getelementptr inbounds double, double* %512, i64 18
  %513 = load double, double* %arrayidx419, align 8, !tbaa !5
  %514 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx420 = getelementptr inbounds double, double* %514, i64 21
  %515 = load double, double* %arrayidx420, align 8, !tbaa !5
  %add421 = fadd double %513, %515
  %516 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx422 = getelementptr inbounds double, double* %516, i64 18
  store double %add421, double* %arrayidx422, align 8, !tbaa !5
  %517 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx423 = getelementptr inbounds double, double* %517, i64 18
  %518 = load double, double* %arrayidx423, align 8, !tbaa !5
  %519 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx424 = getelementptr inbounds double, double* %519, i64 21
  %520 = load double, double* %arrayidx424, align 8, !tbaa !5
  %sub425 = fsub double %518, %520
  %521 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx426 = getelementptr inbounds double, double* %521, i64 2
  %522 = load double, double* %arrayidx426, align 8, !tbaa !5
  %mul427 = fmul double %sub425, %522
  %523 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx428 = getelementptr inbounds double, double* %523, i64 21
  store double %mul427, double* %arrayidx428, align 8, !tbaa !5
  %524 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx429 = getelementptr inbounds double, double* %524, i64 19
  %525 = load double, double* %arrayidx429, align 8, !tbaa !5
  %526 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx430 = getelementptr inbounds double, double* %526, i64 20
  %527 = load double, double* %arrayidx430, align 8, !tbaa !5
  %add431 = fadd double %525, %527
  %528 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx432 = getelementptr inbounds double, double* %528, i64 19
  store double %add431, double* %arrayidx432, align 8, !tbaa !5
  %529 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx433 = getelementptr inbounds double, double* %529, i64 19
  %530 = load double, double* %arrayidx433, align 8, !tbaa !5
  %531 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx434 = getelementptr inbounds double, double* %531, i64 20
  %532 = load double, double* %arrayidx434, align 8, !tbaa !5
  %sub435 = fsub double %530, %532
  %533 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx436 = getelementptr inbounds double, double* %533, i64 3
  %534 = load double, double* %arrayidx436, align 8, !tbaa !5
  %mul437 = fmul double %sub435, %534
  %535 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx438 = getelementptr inbounds double, double* %535, i64 20
  store double %mul437, double* %arrayidx438, align 8, !tbaa !5
  %536 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx439 = getelementptr inbounds double, double* %536, i64 24
  %537 = load double, double* %arrayidx439, align 8, !tbaa !5
  %538 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx440 = getelementptr inbounds double, double* %538, i64 31
  %539 = load double, double* %arrayidx440, align 8, !tbaa !5
  %add441 = fadd double %537, %539
  %540 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx442 = getelementptr inbounds double, double* %540, i64 24
  store double %add441, double* %arrayidx442, align 8, !tbaa !5
  %541 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx443 = getelementptr inbounds double, double* %541, i64 31
  %542 = load double, double* %arrayidx443, align 8, !tbaa !5
  %543 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx444 = getelementptr inbounds double, double* %543, i64 24
  %544 = load double, double* %arrayidx444, align 8, !tbaa !5
  %sub445 = fsub double %542, %544
  %545 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx446 = getelementptr inbounds double, double* %545, i64 0
  %546 = load double, double* %arrayidx446, align 8, !tbaa !5
  %mul447 = fmul double %sub445, %546
  %547 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx448 = getelementptr inbounds double, double* %547, i64 31
  store double %mul447, double* %arrayidx448, align 8, !tbaa !5
  %548 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx449 = getelementptr inbounds double, double* %548, i64 25
  %549 = load double, double* %arrayidx449, align 8, !tbaa !5
  %550 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx450 = getelementptr inbounds double, double* %550, i64 30
  %551 = load double, double* %arrayidx450, align 8, !tbaa !5
  %add451 = fadd double %549, %551
  %552 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx452 = getelementptr inbounds double, double* %552, i64 25
  store double %add451, double* %arrayidx452, align 8, !tbaa !5
  %553 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx453 = getelementptr inbounds double, double* %553, i64 30
  %554 = load double, double* %arrayidx453, align 8, !tbaa !5
  %555 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx454 = getelementptr inbounds double, double* %555, i64 25
  %556 = load double, double* %arrayidx454, align 8, !tbaa !5
  %sub455 = fsub double %554, %556
  %557 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx456 = getelementptr inbounds double, double* %557, i64 1
  %558 = load double, double* %arrayidx456, align 8, !tbaa !5
  %mul457 = fmul double %sub455, %558
  %559 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx458 = getelementptr inbounds double, double* %559, i64 30
  store double %mul457, double* %arrayidx458, align 8, !tbaa !5
  %560 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx459 = getelementptr inbounds double, double* %560, i64 26
  %561 = load double, double* %arrayidx459, align 8, !tbaa !5
  %562 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx460 = getelementptr inbounds double, double* %562, i64 29
  %563 = load double, double* %arrayidx460, align 8, !tbaa !5
  %add461 = fadd double %561, %563
  %564 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx462 = getelementptr inbounds double, double* %564, i64 26
  store double %add461, double* %arrayidx462, align 8, !tbaa !5
  %565 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx463 = getelementptr inbounds double, double* %565, i64 29
  %566 = load double, double* %arrayidx463, align 8, !tbaa !5
  %567 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx464 = getelementptr inbounds double, double* %567, i64 26
  %568 = load double, double* %arrayidx464, align 8, !tbaa !5
  %sub465 = fsub double %566, %568
  %569 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx466 = getelementptr inbounds double, double* %569, i64 2
  %570 = load double, double* %arrayidx466, align 8, !tbaa !5
  %mul467 = fmul double %sub465, %570
  %571 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx468 = getelementptr inbounds double, double* %571, i64 29
  store double %mul467, double* %arrayidx468, align 8, !tbaa !5
  %572 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx469 = getelementptr inbounds double, double* %572, i64 27
  %573 = load double, double* %arrayidx469, align 8, !tbaa !5
  %574 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx470 = getelementptr inbounds double, double* %574, i64 28
  %575 = load double, double* %arrayidx470, align 8, !tbaa !5
  %add471 = fadd double %573, %575
  %576 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx472 = getelementptr inbounds double, double* %576, i64 27
  store double %add471, double* %arrayidx472, align 8, !tbaa !5
  %577 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx473 = getelementptr inbounds double, double* %577, i64 28
  %578 = load double, double* %arrayidx473, align 8, !tbaa !5
  %579 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx474 = getelementptr inbounds double, double* %579, i64 27
  %580 = load double, double* %arrayidx474, align 8, !tbaa !5
  %sub475 = fsub double %578, %580
  %581 = load double*, double** %costab318, align 8, !tbaa !1
  %arrayidx476 = getelementptr inbounds double, double* %581, i64 3
  %582 = load double, double* %arrayidx476, align 8, !tbaa !5
  %mul477 = fmul double %sub475, %582
  %583 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx478 = getelementptr inbounds double, double* %583, i64 28
  store double %mul477, double* %arrayidx478, align 8, !tbaa !5
  %584 = bitcast double** %costab318 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %584) #1
  %585 = bitcast double* %cos0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %585) #1
  %586 = load double*, double** getelementptr inbounds ([5 x double*], [5 x double*]* @pnts, i32 0, i64 3), align 8, !tbaa !1
  %arrayidx479 = getelementptr inbounds double, double* %586, i64 0
  %587 = load double, double* %arrayidx479, align 8, !tbaa !5
  store double %587, double* %cos0, align 8, !tbaa !5
  %588 = bitcast double* %cos1 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %588) #1
  %589 = load double*, double** getelementptr inbounds ([5 x double*], [5 x double*]* @pnts, i32 0, i64 3), align 8, !tbaa !1
  %arrayidx480 = getelementptr inbounds double, double* %589, i64 1
  %590 = load double, double* %arrayidx480, align 8, !tbaa !5
  store double %590, double* %cos1, align 8, !tbaa !5
  %591 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx481 = getelementptr inbounds double, double* %591, i64 0
  %592 = load double, double* %arrayidx481, align 8, !tbaa !5
  %593 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx482 = getelementptr inbounds double, double* %593, i64 3
  %594 = load double, double* %arrayidx482, align 8, !tbaa !5
  %add483 = fadd double %592, %594
  %595 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx484 = getelementptr inbounds double, double* %595, i64 0
  store double %add483, double* %arrayidx484, align 8, !tbaa !5
  %596 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx485 = getelementptr inbounds double, double* %596, i64 0
  %597 = load double, double* %arrayidx485, align 8, !tbaa !5
  %598 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx486 = getelementptr inbounds double, double* %598, i64 3
  %599 = load double, double* %arrayidx486, align 8, !tbaa !5
  %sub487 = fsub double %597, %599
  %600 = load double, double* %cos0, align 8, !tbaa !5
  %mul488 = fmul double %sub487, %600
  %601 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx489 = getelementptr inbounds double, double* %601, i64 3
  store double %mul488, double* %arrayidx489, align 8, !tbaa !5
  %602 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx490 = getelementptr inbounds double, double* %602, i64 1
  %603 = load double, double* %arrayidx490, align 8, !tbaa !5
  %604 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx491 = getelementptr inbounds double, double* %604, i64 2
  %605 = load double, double* %arrayidx491, align 8, !tbaa !5
  %add492 = fadd double %603, %605
  %606 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx493 = getelementptr inbounds double, double* %606, i64 1
  store double %add492, double* %arrayidx493, align 8, !tbaa !5
  %607 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx494 = getelementptr inbounds double, double* %607, i64 1
  %608 = load double, double* %arrayidx494, align 8, !tbaa !5
  %609 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx495 = getelementptr inbounds double, double* %609, i64 2
  %610 = load double, double* %arrayidx495, align 8, !tbaa !5
  %sub496 = fsub double %608, %610
  %611 = load double, double* %cos1, align 8, !tbaa !5
  %mul497 = fmul double %sub496, %611
  %612 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx498 = getelementptr inbounds double, double* %612, i64 2
  store double %mul497, double* %arrayidx498, align 8, !tbaa !5
  %613 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx499 = getelementptr inbounds double, double* %613, i64 4
  %614 = load double, double* %arrayidx499, align 8, !tbaa !5
  %615 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx500 = getelementptr inbounds double, double* %615, i64 7
  %616 = load double, double* %arrayidx500, align 8, !tbaa !5
  %add501 = fadd double %614, %616
  %617 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx502 = getelementptr inbounds double, double* %617, i64 4
  store double %add501, double* %arrayidx502, align 8, !tbaa !5
  %618 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx503 = getelementptr inbounds double, double* %618, i64 7
  %619 = load double, double* %arrayidx503, align 8, !tbaa !5
  %620 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx504 = getelementptr inbounds double, double* %620, i64 4
  %621 = load double, double* %arrayidx504, align 8, !tbaa !5
  %sub505 = fsub double %619, %621
  %622 = load double, double* %cos0, align 8, !tbaa !5
  %mul506 = fmul double %sub505, %622
  %623 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx507 = getelementptr inbounds double, double* %623, i64 7
  store double %mul506, double* %arrayidx507, align 8, !tbaa !5
  %624 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx508 = getelementptr inbounds double, double* %624, i64 5
  %625 = load double, double* %arrayidx508, align 8, !tbaa !5
  %626 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx509 = getelementptr inbounds double, double* %626, i64 6
  %627 = load double, double* %arrayidx509, align 8, !tbaa !5
  %add510 = fadd double %625, %627
  %628 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx511 = getelementptr inbounds double, double* %628, i64 5
  store double %add510, double* %arrayidx511, align 8, !tbaa !5
  %629 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx512 = getelementptr inbounds double, double* %629, i64 6
  %630 = load double, double* %arrayidx512, align 8, !tbaa !5
  %631 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx513 = getelementptr inbounds double, double* %631, i64 5
  %632 = load double, double* %arrayidx513, align 8, !tbaa !5
  %sub514 = fsub double %630, %632
  %633 = load double, double* %cos1, align 8, !tbaa !5
  %mul515 = fmul double %sub514, %633
  %634 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx516 = getelementptr inbounds double, double* %634, i64 6
  store double %mul515, double* %arrayidx516, align 8, !tbaa !5
  %635 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx517 = getelementptr inbounds double, double* %635, i64 8
  %636 = load double, double* %arrayidx517, align 8, !tbaa !5
  %637 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx518 = getelementptr inbounds double, double* %637, i64 11
  %638 = load double, double* %arrayidx518, align 8, !tbaa !5
  %add519 = fadd double %636, %638
  %639 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx520 = getelementptr inbounds double, double* %639, i64 8
  store double %add519, double* %arrayidx520, align 8, !tbaa !5
  %640 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx521 = getelementptr inbounds double, double* %640, i64 8
  %641 = load double, double* %arrayidx521, align 8, !tbaa !5
  %642 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx522 = getelementptr inbounds double, double* %642, i64 11
  %643 = load double, double* %arrayidx522, align 8, !tbaa !5
  %sub523 = fsub double %641, %643
  %644 = load double, double* %cos0, align 8, !tbaa !5
  %mul524 = fmul double %sub523, %644
  %645 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx525 = getelementptr inbounds double, double* %645, i64 11
  store double %mul524, double* %arrayidx525, align 8, !tbaa !5
  %646 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx526 = getelementptr inbounds double, double* %646, i64 9
  %647 = load double, double* %arrayidx526, align 8, !tbaa !5
  %648 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx527 = getelementptr inbounds double, double* %648, i64 10
  %649 = load double, double* %arrayidx527, align 8, !tbaa !5
  %add528 = fadd double %647, %649
  %650 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx529 = getelementptr inbounds double, double* %650, i64 9
  store double %add528, double* %arrayidx529, align 8, !tbaa !5
  %651 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx530 = getelementptr inbounds double, double* %651, i64 9
  %652 = load double, double* %arrayidx530, align 8, !tbaa !5
  %653 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx531 = getelementptr inbounds double, double* %653, i64 10
  %654 = load double, double* %arrayidx531, align 8, !tbaa !5
  %sub532 = fsub double %652, %654
  %655 = load double, double* %cos1, align 8, !tbaa !5
  %mul533 = fmul double %sub532, %655
  %656 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx534 = getelementptr inbounds double, double* %656, i64 10
  store double %mul533, double* %arrayidx534, align 8, !tbaa !5
  %657 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx535 = getelementptr inbounds double, double* %657, i64 12
  %658 = load double, double* %arrayidx535, align 8, !tbaa !5
  %659 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx536 = getelementptr inbounds double, double* %659, i64 15
  %660 = load double, double* %arrayidx536, align 8, !tbaa !5
  %add537 = fadd double %658, %660
  %661 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx538 = getelementptr inbounds double, double* %661, i64 12
  store double %add537, double* %arrayidx538, align 8, !tbaa !5
  %662 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx539 = getelementptr inbounds double, double* %662, i64 15
  %663 = load double, double* %arrayidx539, align 8, !tbaa !5
  %664 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx540 = getelementptr inbounds double, double* %664, i64 12
  %665 = load double, double* %arrayidx540, align 8, !tbaa !5
  %sub541 = fsub double %663, %665
  %666 = load double, double* %cos0, align 8, !tbaa !5
  %mul542 = fmul double %sub541, %666
  %667 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx543 = getelementptr inbounds double, double* %667, i64 15
  store double %mul542, double* %arrayidx543, align 8, !tbaa !5
  %668 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx544 = getelementptr inbounds double, double* %668, i64 13
  %669 = load double, double* %arrayidx544, align 8, !tbaa !5
  %670 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx545 = getelementptr inbounds double, double* %670, i64 14
  %671 = load double, double* %arrayidx545, align 8, !tbaa !5
  %add546 = fadd double %669, %671
  %672 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx547 = getelementptr inbounds double, double* %672, i64 13
  store double %add546, double* %arrayidx547, align 8, !tbaa !5
  %673 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx548 = getelementptr inbounds double, double* %673, i64 14
  %674 = load double, double* %arrayidx548, align 8, !tbaa !5
  %675 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx549 = getelementptr inbounds double, double* %675, i64 13
  %676 = load double, double* %arrayidx549, align 8, !tbaa !5
  %sub550 = fsub double %674, %676
  %677 = load double, double* %cos1, align 8, !tbaa !5
  %mul551 = fmul double %sub550, %677
  %678 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx552 = getelementptr inbounds double, double* %678, i64 14
  store double %mul551, double* %arrayidx552, align 8, !tbaa !5
  %679 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx553 = getelementptr inbounds double, double* %679, i64 16
  %680 = load double, double* %arrayidx553, align 8, !tbaa !5
  %681 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx554 = getelementptr inbounds double, double* %681, i64 19
  %682 = load double, double* %arrayidx554, align 8, !tbaa !5
  %add555 = fadd double %680, %682
  %683 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx556 = getelementptr inbounds double, double* %683, i64 16
  store double %add555, double* %arrayidx556, align 8, !tbaa !5
  %684 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx557 = getelementptr inbounds double, double* %684, i64 16
  %685 = load double, double* %arrayidx557, align 8, !tbaa !5
  %686 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx558 = getelementptr inbounds double, double* %686, i64 19
  %687 = load double, double* %arrayidx558, align 8, !tbaa !5
  %sub559 = fsub double %685, %687
  %688 = load double, double* %cos0, align 8, !tbaa !5
  %mul560 = fmul double %sub559, %688
  %689 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx561 = getelementptr inbounds double, double* %689, i64 19
  store double %mul560, double* %arrayidx561, align 8, !tbaa !5
  %690 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx562 = getelementptr inbounds double, double* %690, i64 17
  %691 = load double, double* %arrayidx562, align 8, !tbaa !5
  %692 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx563 = getelementptr inbounds double, double* %692, i64 18
  %693 = load double, double* %arrayidx563, align 8, !tbaa !5
  %add564 = fadd double %691, %693
  %694 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx565 = getelementptr inbounds double, double* %694, i64 17
  store double %add564, double* %arrayidx565, align 8, !tbaa !5
  %695 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx566 = getelementptr inbounds double, double* %695, i64 17
  %696 = load double, double* %arrayidx566, align 8, !tbaa !5
  %697 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx567 = getelementptr inbounds double, double* %697, i64 18
  %698 = load double, double* %arrayidx567, align 8, !tbaa !5
  %sub568 = fsub double %696, %698
  %699 = load double, double* %cos1, align 8, !tbaa !5
  %mul569 = fmul double %sub568, %699
  %700 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx570 = getelementptr inbounds double, double* %700, i64 18
  store double %mul569, double* %arrayidx570, align 8, !tbaa !5
  %701 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx571 = getelementptr inbounds double, double* %701, i64 20
  %702 = load double, double* %arrayidx571, align 8, !tbaa !5
  %703 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx572 = getelementptr inbounds double, double* %703, i64 23
  %704 = load double, double* %arrayidx572, align 8, !tbaa !5
  %add573 = fadd double %702, %704
  %705 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx574 = getelementptr inbounds double, double* %705, i64 20
  store double %add573, double* %arrayidx574, align 8, !tbaa !5
  %706 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx575 = getelementptr inbounds double, double* %706, i64 23
  %707 = load double, double* %arrayidx575, align 8, !tbaa !5
  %708 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx576 = getelementptr inbounds double, double* %708, i64 20
  %709 = load double, double* %arrayidx576, align 8, !tbaa !5
  %sub577 = fsub double %707, %709
  %710 = load double, double* %cos0, align 8, !tbaa !5
  %mul578 = fmul double %sub577, %710
  %711 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx579 = getelementptr inbounds double, double* %711, i64 23
  store double %mul578, double* %arrayidx579, align 8, !tbaa !5
  %712 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx580 = getelementptr inbounds double, double* %712, i64 21
  %713 = load double, double* %arrayidx580, align 8, !tbaa !5
  %714 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx581 = getelementptr inbounds double, double* %714, i64 22
  %715 = load double, double* %arrayidx581, align 8, !tbaa !5
  %add582 = fadd double %713, %715
  %716 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx583 = getelementptr inbounds double, double* %716, i64 21
  store double %add582, double* %arrayidx583, align 8, !tbaa !5
  %717 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx584 = getelementptr inbounds double, double* %717, i64 22
  %718 = load double, double* %arrayidx584, align 8, !tbaa !5
  %719 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx585 = getelementptr inbounds double, double* %719, i64 21
  %720 = load double, double* %arrayidx585, align 8, !tbaa !5
  %sub586 = fsub double %718, %720
  %721 = load double, double* %cos1, align 8, !tbaa !5
  %mul587 = fmul double %sub586, %721
  %722 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx588 = getelementptr inbounds double, double* %722, i64 22
  store double %mul587, double* %arrayidx588, align 8, !tbaa !5
  %723 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx589 = getelementptr inbounds double, double* %723, i64 24
  %724 = load double, double* %arrayidx589, align 8, !tbaa !5
  %725 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx590 = getelementptr inbounds double, double* %725, i64 27
  %726 = load double, double* %arrayidx590, align 8, !tbaa !5
  %add591 = fadd double %724, %726
  %727 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx592 = getelementptr inbounds double, double* %727, i64 24
  store double %add591, double* %arrayidx592, align 8, !tbaa !5
  %728 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx593 = getelementptr inbounds double, double* %728, i64 24
  %729 = load double, double* %arrayidx593, align 8, !tbaa !5
  %730 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx594 = getelementptr inbounds double, double* %730, i64 27
  %731 = load double, double* %arrayidx594, align 8, !tbaa !5
  %sub595 = fsub double %729, %731
  %732 = load double, double* %cos0, align 8, !tbaa !5
  %mul596 = fmul double %sub595, %732
  %733 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx597 = getelementptr inbounds double, double* %733, i64 27
  store double %mul596, double* %arrayidx597, align 8, !tbaa !5
  %734 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx598 = getelementptr inbounds double, double* %734, i64 25
  %735 = load double, double* %arrayidx598, align 8, !tbaa !5
  %736 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx599 = getelementptr inbounds double, double* %736, i64 26
  %737 = load double, double* %arrayidx599, align 8, !tbaa !5
  %add600 = fadd double %735, %737
  %738 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx601 = getelementptr inbounds double, double* %738, i64 25
  store double %add600, double* %arrayidx601, align 8, !tbaa !5
  %739 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx602 = getelementptr inbounds double, double* %739, i64 25
  %740 = load double, double* %arrayidx602, align 8, !tbaa !5
  %741 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx603 = getelementptr inbounds double, double* %741, i64 26
  %742 = load double, double* %arrayidx603, align 8, !tbaa !5
  %sub604 = fsub double %740, %742
  %743 = load double, double* %cos1, align 8, !tbaa !5
  %mul605 = fmul double %sub604, %743
  %744 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx606 = getelementptr inbounds double, double* %744, i64 26
  store double %mul605, double* %arrayidx606, align 8, !tbaa !5
  %745 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx607 = getelementptr inbounds double, double* %745, i64 28
  %746 = load double, double* %arrayidx607, align 8, !tbaa !5
  %747 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx608 = getelementptr inbounds double, double* %747, i64 31
  %748 = load double, double* %arrayidx608, align 8, !tbaa !5
  %add609 = fadd double %746, %748
  %749 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx610 = getelementptr inbounds double, double* %749, i64 28
  store double %add609, double* %arrayidx610, align 8, !tbaa !5
  %750 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx611 = getelementptr inbounds double, double* %750, i64 31
  %751 = load double, double* %arrayidx611, align 8, !tbaa !5
  %752 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx612 = getelementptr inbounds double, double* %752, i64 28
  %753 = load double, double* %arrayidx612, align 8, !tbaa !5
  %sub613 = fsub double %751, %753
  %754 = load double, double* %cos0, align 8, !tbaa !5
  %mul614 = fmul double %sub613, %754
  %755 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx615 = getelementptr inbounds double, double* %755, i64 31
  store double %mul614, double* %arrayidx615, align 8, !tbaa !5
  %756 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx616 = getelementptr inbounds double, double* %756, i64 29
  %757 = load double, double* %arrayidx616, align 8, !tbaa !5
  %758 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx617 = getelementptr inbounds double, double* %758, i64 30
  %759 = load double, double* %arrayidx617, align 8, !tbaa !5
  %add618 = fadd double %757, %759
  %760 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx619 = getelementptr inbounds double, double* %760, i64 29
  store double %add618, double* %arrayidx619, align 8, !tbaa !5
  %761 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx620 = getelementptr inbounds double, double* %761, i64 30
  %762 = load double, double* %arrayidx620, align 8, !tbaa !5
  %763 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx621 = getelementptr inbounds double, double* %763, i64 29
  %764 = load double, double* %arrayidx621, align 8, !tbaa !5
  %sub622 = fsub double %762, %764
  %765 = load double, double* %cos1, align 8, !tbaa !5
  %mul623 = fmul double %sub622, %765
  %766 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx624 = getelementptr inbounds double, double* %766, i64 30
  store double %mul623, double* %arrayidx624, align 8, !tbaa !5
  %767 = bitcast double* %cos1 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %767) #1
  %768 = bitcast double* %cos0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %768) #1
  %769 = bitcast double* %cos0625 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %769) #1
  %770 = load double*, double** getelementptr inbounds ([5 x double*], [5 x double*]* @pnts, i32 0, i64 4), align 8, !tbaa !1
  %arrayidx626 = getelementptr inbounds double, double* %770, i64 0
  %771 = load double, double* %arrayidx626, align 8, !tbaa !5
  store double %771, double* %cos0625, align 8, !tbaa !5
  %772 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx627 = getelementptr inbounds double, double* %772, i64 0
  %773 = load double, double* %arrayidx627, align 8, !tbaa !5
  %774 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx628 = getelementptr inbounds double, double* %774, i64 1
  %775 = load double, double* %arrayidx628, align 8, !tbaa !5
  %add629 = fadd double %773, %775
  %776 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx630 = getelementptr inbounds double, double* %776, i64 0
  store double %add629, double* %arrayidx630, align 8, !tbaa !5
  %777 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx631 = getelementptr inbounds double, double* %777, i64 0
  %778 = load double, double* %arrayidx631, align 8, !tbaa !5
  %779 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx632 = getelementptr inbounds double, double* %779, i64 1
  %780 = load double, double* %arrayidx632, align 8, !tbaa !5
  %sub633 = fsub double %778, %780
  %781 = load double, double* %cos0625, align 8, !tbaa !5
  %mul634 = fmul double %sub633, %781
  %782 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx635 = getelementptr inbounds double, double* %782, i64 1
  store double %mul634, double* %arrayidx635, align 8, !tbaa !5
  %783 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx636 = getelementptr inbounds double, double* %783, i64 2
  %784 = load double, double* %arrayidx636, align 8, !tbaa !5
  %785 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx637 = getelementptr inbounds double, double* %785, i64 3
  %786 = load double, double* %arrayidx637, align 8, !tbaa !5
  %add638 = fadd double %784, %786
  %787 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx639 = getelementptr inbounds double, double* %787, i64 2
  store double %add638, double* %arrayidx639, align 8, !tbaa !5
  %788 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx640 = getelementptr inbounds double, double* %788, i64 3
  %789 = load double, double* %arrayidx640, align 8, !tbaa !5
  %790 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx641 = getelementptr inbounds double, double* %790, i64 2
  %791 = load double, double* %arrayidx641, align 8, !tbaa !5
  %sub642 = fsub double %789, %791
  %792 = load double, double* %cos0625, align 8, !tbaa !5
  %mul643 = fmul double %sub642, %792
  %793 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx644 = getelementptr inbounds double, double* %793, i64 3
  store double %mul643, double* %arrayidx644, align 8, !tbaa !5
  %794 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx645 = getelementptr inbounds double, double* %794, i64 3
  %795 = load double, double* %arrayidx645, align 8, !tbaa !5
  %796 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx646 = getelementptr inbounds double, double* %796, i64 2
  %797 = load double, double* %arrayidx646, align 8, !tbaa !5
  %add647 = fadd double %797, %795
  store double %add647, double* %arrayidx646, align 8, !tbaa !5
  %798 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx648 = getelementptr inbounds double, double* %798, i64 4
  %799 = load double, double* %arrayidx648, align 8, !tbaa !5
  %800 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx649 = getelementptr inbounds double, double* %800, i64 5
  %801 = load double, double* %arrayidx649, align 8, !tbaa !5
  %add650 = fadd double %799, %801
  %802 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx651 = getelementptr inbounds double, double* %802, i64 4
  store double %add650, double* %arrayidx651, align 8, !tbaa !5
  %803 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx652 = getelementptr inbounds double, double* %803, i64 4
  %804 = load double, double* %arrayidx652, align 8, !tbaa !5
  %805 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx653 = getelementptr inbounds double, double* %805, i64 5
  %806 = load double, double* %arrayidx653, align 8, !tbaa !5
  %sub654 = fsub double %804, %806
  %807 = load double, double* %cos0625, align 8, !tbaa !5
  %mul655 = fmul double %sub654, %807
  %808 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx656 = getelementptr inbounds double, double* %808, i64 5
  store double %mul655, double* %arrayidx656, align 8, !tbaa !5
  %809 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx657 = getelementptr inbounds double, double* %809, i64 6
  %810 = load double, double* %arrayidx657, align 8, !tbaa !5
  %811 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx658 = getelementptr inbounds double, double* %811, i64 7
  %812 = load double, double* %arrayidx658, align 8, !tbaa !5
  %add659 = fadd double %810, %812
  %813 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx660 = getelementptr inbounds double, double* %813, i64 6
  store double %add659, double* %arrayidx660, align 8, !tbaa !5
  %814 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx661 = getelementptr inbounds double, double* %814, i64 7
  %815 = load double, double* %arrayidx661, align 8, !tbaa !5
  %816 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx662 = getelementptr inbounds double, double* %816, i64 6
  %817 = load double, double* %arrayidx662, align 8, !tbaa !5
  %sub663 = fsub double %815, %817
  %818 = load double, double* %cos0625, align 8, !tbaa !5
  %mul664 = fmul double %sub663, %818
  %819 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx665 = getelementptr inbounds double, double* %819, i64 7
  store double %mul664, double* %arrayidx665, align 8, !tbaa !5
  %820 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx666 = getelementptr inbounds double, double* %820, i64 7
  %821 = load double, double* %arrayidx666, align 8, !tbaa !5
  %822 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx667 = getelementptr inbounds double, double* %822, i64 6
  %823 = load double, double* %arrayidx667, align 8, !tbaa !5
  %add668 = fadd double %823, %821
  store double %add668, double* %arrayidx667, align 8, !tbaa !5
  %824 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx669 = getelementptr inbounds double, double* %824, i64 6
  %825 = load double, double* %arrayidx669, align 8, !tbaa !5
  %826 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx670 = getelementptr inbounds double, double* %826, i64 4
  %827 = load double, double* %arrayidx670, align 8, !tbaa !5
  %add671 = fadd double %827, %825
  store double %add671, double* %arrayidx670, align 8, !tbaa !5
  %828 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx672 = getelementptr inbounds double, double* %828, i64 5
  %829 = load double, double* %arrayidx672, align 8, !tbaa !5
  %830 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx673 = getelementptr inbounds double, double* %830, i64 6
  %831 = load double, double* %arrayidx673, align 8, !tbaa !5
  %add674 = fadd double %831, %829
  store double %add674, double* %arrayidx673, align 8, !tbaa !5
  %832 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx675 = getelementptr inbounds double, double* %832, i64 7
  %833 = load double, double* %arrayidx675, align 8, !tbaa !5
  %834 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx676 = getelementptr inbounds double, double* %834, i64 5
  %835 = load double, double* %arrayidx676, align 8, !tbaa !5
  %add677 = fadd double %835, %833
  store double %add677, double* %arrayidx676, align 8, !tbaa !5
  %836 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx678 = getelementptr inbounds double, double* %836, i64 8
  %837 = load double, double* %arrayidx678, align 8, !tbaa !5
  %838 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx679 = getelementptr inbounds double, double* %838, i64 9
  %839 = load double, double* %arrayidx679, align 8, !tbaa !5
  %add680 = fadd double %837, %839
  %840 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx681 = getelementptr inbounds double, double* %840, i64 8
  store double %add680, double* %arrayidx681, align 8, !tbaa !5
  %841 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx682 = getelementptr inbounds double, double* %841, i64 8
  %842 = load double, double* %arrayidx682, align 8, !tbaa !5
  %843 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx683 = getelementptr inbounds double, double* %843, i64 9
  %844 = load double, double* %arrayidx683, align 8, !tbaa !5
  %sub684 = fsub double %842, %844
  %845 = load double, double* %cos0625, align 8, !tbaa !5
  %mul685 = fmul double %sub684, %845
  %846 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx686 = getelementptr inbounds double, double* %846, i64 9
  store double %mul685, double* %arrayidx686, align 8, !tbaa !5
  %847 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx687 = getelementptr inbounds double, double* %847, i64 10
  %848 = load double, double* %arrayidx687, align 8, !tbaa !5
  %849 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx688 = getelementptr inbounds double, double* %849, i64 11
  %850 = load double, double* %arrayidx688, align 8, !tbaa !5
  %add689 = fadd double %848, %850
  %851 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx690 = getelementptr inbounds double, double* %851, i64 10
  store double %add689, double* %arrayidx690, align 8, !tbaa !5
  %852 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx691 = getelementptr inbounds double, double* %852, i64 11
  %853 = load double, double* %arrayidx691, align 8, !tbaa !5
  %854 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx692 = getelementptr inbounds double, double* %854, i64 10
  %855 = load double, double* %arrayidx692, align 8, !tbaa !5
  %sub693 = fsub double %853, %855
  %856 = load double, double* %cos0625, align 8, !tbaa !5
  %mul694 = fmul double %sub693, %856
  %857 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx695 = getelementptr inbounds double, double* %857, i64 11
  store double %mul694, double* %arrayidx695, align 8, !tbaa !5
  %858 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx696 = getelementptr inbounds double, double* %858, i64 11
  %859 = load double, double* %arrayidx696, align 8, !tbaa !5
  %860 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx697 = getelementptr inbounds double, double* %860, i64 10
  %861 = load double, double* %arrayidx697, align 8, !tbaa !5
  %add698 = fadd double %861, %859
  store double %add698, double* %arrayidx697, align 8, !tbaa !5
  %862 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx699 = getelementptr inbounds double, double* %862, i64 12
  %863 = load double, double* %arrayidx699, align 8, !tbaa !5
  %864 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx700 = getelementptr inbounds double, double* %864, i64 13
  %865 = load double, double* %arrayidx700, align 8, !tbaa !5
  %add701 = fadd double %863, %865
  %866 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx702 = getelementptr inbounds double, double* %866, i64 12
  store double %add701, double* %arrayidx702, align 8, !tbaa !5
  %867 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx703 = getelementptr inbounds double, double* %867, i64 12
  %868 = load double, double* %arrayidx703, align 8, !tbaa !5
  %869 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx704 = getelementptr inbounds double, double* %869, i64 13
  %870 = load double, double* %arrayidx704, align 8, !tbaa !5
  %sub705 = fsub double %868, %870
  %871 = load double, double* %cos0625, align 8, !tbaa !5
  %mul706 = fmul double %sub705, %871
  %872 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx707 = getelementptr inbounds double, double* %872, i64 13
  store double %mul706, double* %arrayidx707, align 8, !tbaa !5
  %873 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx708 = getelementptr inbounds double, double* %873, i64 14
  %874 = load double, double* %arrayidx708, align 8, !tbaa !5
  %875 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx709 = getelementptr inbounds double, double* %875, i64 15
  %876 = load double, double* %arrayidx709, align 8, !tbaa !5
  %add710 = fadd double %874, %876
  %877 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx711 = getelementptr inbounds double, double* %877, i64 14
  store double %add710, double* %arrayidx711, align 8, !tbaa !5
  %878 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx712 = getelementptr inbounds double, double* %878, i64 15
  %879 = load double, double* %arrayidx712, align 8, !tbaa !5
  %880 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx713 = getelementptr inbounds double, double* %880, i64 14
  %881 = load double, double* %arrayidx713, align 8, !tbaa !5
  %sub714 = fsub double %879, %881
  %882 = load double, double* %cos0625, align 8, !tbaa !5
  %mul715 = fmul double %sub714, %882
  %883 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx716 = getelementptr inbounds double, double* %883, i64 15
  store double %mul715, double* %arrayidx716, align 8, !tbaa !5
  %884 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx717 = getelementptr inbounds double, double* %884, i64 15
  %885 = load double, double* %arrayidx717, align 8, !tbaa !5
  %886 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx718 = getelementptr inbounds double, double* %886, i64 14
  %887 = load double, double* %arrayidx718, align 8, !tbaa !5
  %add719 = fadd double %887, %885
  store double %add719, double* %arrayidx718, align 8, !tbaa !5
  %888 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx720 = getelementptr inbounds double, double* %888, i64 14
  %889 = load double, double* %arrayidx720, align 8, !tbaa !5
  %890 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx721 = getelementptr inbounds double, double* %890, i64 12
  %891 = load double, double* %arrayidx721, align 8, !tbaa !5
  %add722 = fadd double %891, %889
  store double %add722, double* %arrayidx721, align 8, !tbaa !5
  %892 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx723 = getelementptr inbounds double, double* %892, i64 13
  %893 = load double, double* %arrayidx723, align 8, !tbaa !5
  %894 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx724 = getelementptr inbounds double, double* %894, i64 14
  %895 = load double, double* %arrayidx724, align 8, !tbaa !5
  %add725 = fadd double %895, %893
  store double %add725, double* %arrayidx724, align 8, !tbaa !5
  %896 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx726 = getelementptr inbounds double, double* %896, i64 15
  %897 = load double, double* %arrayidx726, align 8, !tbaa !5
  %898 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx727 = getelementptr inbounds double, double* %898, i64 13
  %899 = load double, double* %arrayidx727, align 8, !tbaa !5
  %add728 = fadd double %899, %897
  store double %add728, double* %arrayidx727, align 8, !tbaa !5
  %900 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx729 = getelementptr inbounds double, double* %900, i64 16
  %901 = load double, double* %arrayidx729, align 8, !tbaa !5
  %902 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx730 = getelementptr inbounds double, double* %902, i64 17
  %903 = load double, double* %arrayidx730, align 8, !tbaa !5
  %add731 = fadd double %901, %903
  %904 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx732 = getelementptr inbounds double, double* %904, i64 16
  store double %add731, double* %arrayidx732, align 8, !tbaa !5
  %905 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx733 = getelementptr inbounds double, double* %905, i64 16
  %906 = load double, double* %arrayidx733, align 8, !tbaa !5
  %907 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx734 = getelementptr inbounds double, double* %907, i64 17
  %908 = load double, double* %arrayidx734, align 8, !tbaa !5
  %sub735 = fsub double %906, %908
  %909 = load double, double* %cos0625, align 8, !tbaa !5
  %mul736 = fmul double %sub735, %909
  %910 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx737 = getelementptr inbounds double, double* %910, i64 17
  store double %mul736, double* %arrayidx737, align 8, !tbaa !5
  %911 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx738 = getelementptr inbounds double, double* %911, i64 18
  %912 = load double, double* %arrayidx738, align 8, !tbaa !5
  %913 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx739 = getelementptr inbounds double, double* %913, i64 19
  %914 = load double, double* %arrayidx739, align 8, !tbaa !5
  %add740 = fadd double %912, %914
  %915 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx741 = getelementptr inbounds double, double* %915, i64 18
  store double %add740, double* %arrayidx741, align 8, !tbaa !5
  %916 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx742 = getelementptr inbounds double, double* %916, i64 19
  %917 = load double, double* %arrayidx742, align 8, !tbaa !5
  %918 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx743 = getelementptr inbounds double, double* %918, i64 18
  %919 = load double, double* %arrayidx743, align 8, !tbaa !5
  %sub744 = fsub double %917, %919
  %920 = load double, double* %cos0625, align 8, !tbaa !5
  %mul745 = fmul double %sub744, %920
  %921 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx746 = getelementptr inbounds double, double* %921, i64 19
  store double %mul745, double* %arrayidx746, align 8, !tbaa !5
  %922 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx747 = getelementptr inbounds double, double* %922, i64 19
  %923 = load double, double* %arrayidx747, align 8, !tbaa !5
  %924 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx748 = getelementptr inbounds double, double* %924, i64 18
  %925 = load double, double* %arrayidx748, align 8, !tbaa !5
  %add749 = fadd double %925, %923
  store double %add749, double* %arrayidx748, align 8, !tbaa !5
  %926 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx750 = getelementptr inbounds double, double* %926, i64 20
  %927 = load double, double* %arrayidx750, align 8, !tbaa !5
  %928 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx751 = getelementptr inbounds double, double* %928, i64 21
  %929 = load double, double* %arrayidx751, align 8, !tbaa !5
  %add752 = fadd double %927, %929
  %930 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx753 = getelementptr inbounds double, double* %930, i64 20
  store double %add752, double* %arrayidx753, align 8, !tbaa !5
  %931 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx754 = getelementptr inbounds double, double* %931, i64 20
  %932 = load double, double* %arrayidx754, align 8, !tbaa !5
  %933 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx755 = getelementptr inbounds double, double* %933, i64 21
  %934 = load double, double* %arrayidx755, align 8, !tbaa !5
  %sub756 = fsub double %932, %934
  %935 = load double, double* %cos0625, align 8, !tbaa !5
  %mul757 = fmul double %sub756, %935
  %936 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx758 = getelementptr inbounds double, double* %936, i64 21
  store double %mul757, double* %arrayidx758, align 8, !tbaa !5
  %937 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx759 = getelementptr inbounds double, double* %937, i64 22
  %938 = load double, double* %arrayidx759, align 8, !tbaa !5
  %939 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx760 = getelementptr inbounds double, double* %939, i64 23
  %940 = load double, double* %arrayidx760, align 8, !tbaa !5
  %add761 = fadd double %938, %940
  %941 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx762 = getelementptr inbounds double, double* %941, i64 22
  store double %add761, double* %arrayidx762, align 8, !tbaa !5
  %942 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx763 = getelementptr inbounds double, double* %942, i64 23
  %943 = load double, double* %arrayidx763, align 8, !tbaa !5
  %944 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx764 = getelementptr inbounds double, double* %944, i64 22
  %945 = load double, double* %arrayidx764, align 8, !tbaa !5
  %sub765 = fsub double %943, %945
  %946 = load double, double* %cos0625, align 8, !tbaa !5
  %mul766 = fmul double %sub765, %946
  %947 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx767 = getelementptr inbounds double, double* %947, i64 23
  store double %mul766, double* %arrayidx767, align 8, !tbaa !5
  %948 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx768 = getelementptr inbounds double, double* %948, i64 23
  %949 = load double, double* %arrayidx768, align 8, !tbaa !5
  %950 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx769 = getelementptr inbounds double, double* %950, i64 22
  %951 = load double, double* %arrayidx769, align 8, !tbaa !5
  %add770 = fadd double %951, %949
  store double %add770, double* %arrayidx769, align 8, !tbaa !5
  %952 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx771 = getelementptr inbounds double, double* %952, i64 22
  %953 = load double, double* %arrayidx771, align 8, !tbaa !5
  %954 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx772 = getelementptr inbounds double, double* %954, i64 20
  %955 = load double, double* %arrayidx772, align 8, !tbaa !5
  %add773 = fadd double %955, %953
  store double %add773, double* %arrayidx772, align 8, !tbaa !5
  %956 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx774 = getelementptr inbounds double, double* %956, i64 21
  %957 = load double, double* %arrayidx774, align 8, !tbaa !5
  %958 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx775 = getelementptr inbounds double, double* %958, i64 22
  %959 = load double, double* %arrayidx775, align 8, !tbaa !5
  %add776 = fadd double %959, %957
  store double %add776, double* %arrayidx775, align 8, !tbaa !5
  %960 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx777 = getelementptr inbounds double, double* %960, i64 23
  %961 = load double, double* %arrayidx777, align 8, !tbaa !5
  %962 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx778 = getelementptr inbounds double, double* %962, i64 21
  %963 = load double, double* %arrayidx778, align 8, !tbaa !5
  %add779 = fadd double %963, %961
  store double %add779, double* %arrayidx778, align 8, !tbaa !5
  %964 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx780 = getelementptr inbounds double, double* %964, i64 24
  %965 = load double, double* %arrayidx780, align 8, !tbaa !5
  %966 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx781 = getelementptr inbounds double, double* %966, i64 25
  %967 = load double, double* %arrayidx781, align 8, !tbaa !5
  %add782 = fadd double %965, %967
  %968 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx783 = getelementptr inbounds double, double* %968, i64 24
  store double %add782, double* %arrayidx783, align 8, !tbaa !5
  %969 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx784 = getelementptr inbounds double, double* %969, i64 24
  %970 = load double, double* %arrayidx784, align 8, !tbaa !5
  %971 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx785 = getelementptr inbounds double, double* %971, i64 25
  %972 = load double, double* %arrayidx785, align 8, !tbaa !5
  %sub786 = fsub double %970, %972
  %973 = load double, double* %cos0625, align 8, !tbaa !5
  %mul787 = fmul double %sub786, %973
  %974 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx788 = getelementptr inbounds double, double* %974, i64 25
  store double %mul787, double* %arrayidx788, align 8, !tbaa !5
  %975 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx789 = getelementptr inbounds double, double* %975, i64 26
  %976 = load double, double* %arrayidx789, align 8, !tbaa !5
  %977 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx790 = getelementptr inbounds double, double* %977, i64 27
  %978 = load double, double* %arrayidx790, align 8, !tbaa !5
  %add791 = fadd double %976, %978
  %979 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx792 = getelementptr inbounds double, double* %979, i64 26
  store double %add791, double* %arrayidx792, align 8, !tbaa !5
  %980 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx793 = getelementptr inbounds double, double* %980, i64 27
  %981 = load double, double* %arrayidx793, align 8, !tbaa !5
  %982 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx794 = getelementptr inbounds double, double* %982, i64 26
  %983 = load double, double* %arrayidx794, align 8, !tbaa !5
  %sub795 = fsub double %981, %983
  %984 = load double, double* %cos0625, align 8, !tbaa !5
  %mul796 = fmul double %sub795, %984
  %985 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx797 = getelementptr inbounds double, double* %985, i64 27
  store double %mul796, double* %arrayidx797, align 8, !tbaa !5
  %986 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx798 = getelementptr inbounds double, double* %986, i64 27
  %987 = load double, double* %arrayidx798, align 8, !tbaa !5
  %988 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx799 = getelementptr inbounds double, double* %988, i64 26
  %989 = load double, double* %arrayidx799, align 8, !tbaa !5
  %add800 = fadd double %989, %987
  store double %add800, double* %arrayidx799, align 8, !tbaa !5
  %990 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx801 = getelementptr inbounds double, double* %990, i64 28
  %991 = load double, double* %arrayidx801, align 8, !tbaa !5
  %992 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx802 = getelementptr inbounds double, double* %992, i64 29
  %993 = load double, double* %arrayidx802, align 8, !tbaa !5
  %add803 = fadd double %991, %993
  %994 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx804 = getelementptr inbounds double, double* %994, i64 28
  store double %add803, double* %arrayidx804, align 8, !tbaa !5
  %995 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx805 = getelementptr inbounds double, double* %995, i64 28
  %996 = load double, double* %arrayidx805, align 8, !tbaa !5
  %997 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx806 = getelementptr inbounds double, double* %997, i64 29
  %998 = load double, double* %arrayidx806, align 8, !tbaa !5
  %sub807 = fsub double %996, %998
  %999 = load double, double* %cos0625, align 8, !tbaa !5
  %mul808 = fmul double %sub807, %999
  %1000 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx809 = getelementptr inbounds double, double* %1000, i64 29
  store double %mul808, double* %arrayidx809, align 8, !tbaa !5
  %1001 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx810 = getelementptr inbounds double, double* %1001, i64 30
  %1002 = load double, double* %arrayidx810, align 8, !tbaa !5
  %1003 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx811 = getelementptr inbounds double, double* %1003, i64 31
  %1004 = load double, double* %arrayidx811, align 8, !tbaa !5
  %add812 = fadd double %1002, %1004
  %1005 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx813 = getelementptr inbounds double, double* %1005, i64 30
  store double %add812, double* %arrayidx813, align 8, !tbaa !5
  %1006 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx814 = getelementptr inbounds double, double* %1006, i64 31
  %1007 = load double, double* %arrayidx814, align 8, !tbaa !5
  %1008 = load double*, double** %b2.addr, align 8, !tbaa !1
  %arrayidx815 = getelementptr inbounds double, double* %1008, i64 30
  %1009 = load double, double* %arrayidx815, align 8, !tbaa !5
  %sub816 = fsub double %1007, %1009
  %1010 = load double, double* %cos0625, align 8, !tbaa !5
  %mul817 = fmul double %sub816, %1010
  %1011 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx818 = getelementptr inbounds double, double* %1011, i64 31
  store double %mul817, double* %arrayidx818, align 8, !tbaa !5
  %1012 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx819 = getelementptr inbounds double, double* %1012, i64 31
  %1013 = load double, double* %arrayidx819, align 8, !tbaa !5
  %1014 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx820 = getelementptr inbounds double, double* %1014, i64 30
  %1015 = load double, double* %arrayidx820, align 8, !tbaa !5
  %add821 = fadd double %1015, %1013
  store double %add821, double* %arrayidx820, align 8, !tbaa !5
  %1016 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx822 = getelementptr inbounds double, double* %1016, i64 30
  %1017 = load double, double* %arrayidx822, align 8, !tbaa !5
  %1018 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx823 = getelementptr inbounds double, double* %1018, i64 28
  %1019 = load double, double* %arrayidx823, align 8, !tbaa !5
  %add824 = fadd double %1019, %1017
  store double %add824, double* %arrayidx823, align 8, !tbaa !5
  %1020 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx825 = getelementptr inbounds double, double* %1020, i64 29
  %1021 = load double, double* %arrayidx825, align 8, !tbaa !5
  %1022 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx826 = getelementptr inbounds double, double* %1022, i64 30
  %1023 = load double, double* %arrayidx826, align 8, !tbaa !5
  %add827 = fadd double %1023, %1021
  store double %add827, double* %arrayidx826, align 8, !tbaa !5
  %1024 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx828 = getelementptr inbounds double, double* %1024, i64 31
  %1025 = load double, double* %arrayidx828, align 8, !tbaa !5
  %1026 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx829 = getelementptr inbounds double, double* %1026, i64 29
  %1027 = load double, double* %arrayidx829, align 8, !tbaa !5
  %add830 = fadd double %1027, %1025
  store double %add830, double* %arrayidx829, align 8, !tbaa !5
  %1028 = bitcast double* %cos0625 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %1028) #1
  %1029 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx831 = getelementptr inbounds double, double* %1029, i64 0
  %1030 = load double, double* %arrayidx831, align 8, !tbaa !5
  %1031 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx832 = getelementptr inbounds double, double* %1031, i64 256
  store double %1030, double* %arrayidx832, align 8, !tbaa !5
  %1032 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx833 = getelementptr inbounds double, double* %1032, i64 4
  %1033 = load double, double* %arrayidx833, align 8, !tbaa !5
  %1034 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx834 = getelementptr inbounds double, double* %1034, i64 192
  store double %1033, double* %arrayidx834, align 8, !tbaa !5
  %1035 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx835 = getelementptr inbounds double, double* %1035, i64 2
  %1036 = load double, double* %arrayidx835, align 8, !tbaa !5
  %1037 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx836 = getelementptr inbounds double, double* %1037, i64 128
  store double %1036, double* %arrayidx836, align 8, !tbaa !5
  %1038 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx837 = getelementptr inbounds double, double* %1038, i64 6
  %1039 = load double, double* %arrayidx837, align 8, !tbaa !5
  %1040 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx838 = getelementptr inbounds double, double* %1040, i64 64
  store double %1039, double* %arrayidx838, align 8, !tbaa !5
  %1041 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx839 = getelementptr inbounds double, double* %1041, i64 1
  %1042 = load double, double* %arrayidx839, align 8, !tbaa !5
  %1043 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx840 = getelementptr inbounds double, double* %1043, i64 0
  store double %1042, double* %arrayidx840, align 8, !tbaa !5
  %1044 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx841 = getelementptr inbounds double, double* %1044, i64 1
  %1045 = load double, double* %arrayidx841, align 8, !tbaa !5
  %1046 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx842 = getelementptr inbounds double, double* %1046, i64 0
  store double %1045, double* %arrayidx842, align 8, !tbaa !5
  %1047 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx843 = getelementptr inbounds double, double* %1047, i64 5
  %1048 = load double, double* %arrayidx843, align 8, !tbaa !5
  %1049 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx844 = getelementptr inbounds double, double* %1049, i64 64
  store double %1048, double* %arrayidx844, align 8, !tbaa !5
  %1050 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx845 = getelementptr inbounds double, double* %1050, i64 3
  %1051 = load double, double* %arrayidx845, align 8, !tbaa !5
  %1052 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx846 = getelementptr inbounds double, double* %1052, i64 128
  store double %1051, double* %arrayidx846, align 8, !tbaa !5
  %1053 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx847 = getelementptr inbounds double, double* %1053, i64 7
  %1054 = load double, double* %arrayidx847, align 8, !tbaa !5
  %1055 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx848 = getelementptr inbounds double, double* %1055, i64 192
  store double %1054, double* %arrayidx848, align 8, !tbaa !5
  %1056 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx849 = getelementptr inbounds double, double* %1056, i64 12
  %1057 = load double, double* %arrayidx849, align 8, !tbaa !5
  %1058 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx850 = getelementptr inbounds double, double* %1058, i64 8
  %1059 = load double, double* %arrayidx850, align 8, !tbaa !5
  %add851 = fadd double %1059, %1057
  store double %add851, double* %arrayidx850, align 8, !tbaa !5
  %1060 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx852 = getelementptr inbounds double, double* %1060, i64 8
  %1061 = load double, double* %arrayidx852, align 8, !tbaa !5
  %1062 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx853 = getelementptr inbounds double, double* %1062, i64 224
  store double %1061, double* %arrayidx853, align 8, !tbaa !5
  %1063 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx854 = getelementptr inbounds double, double* %1063, i64 10
  %1064 = load double, double* %arrayidx854, align 8, !tbaa !5
  %1065 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx855 = getelementptr inbounds double, double* %1065, i64 12
  %1066 = load double, double* %arrayidx855, align 8, !tbaa !5
  %add856 = fadd double %1066, %1064
  store double %add856, double* %arrayidx855, align 8, !tbaa !5
  %1067 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx857 = getelementptr inbounds double, double* %1067, i64 12
  %1068 = load double, double* %arrayidx857, align 8, !tbaa !5
  %1069 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx858 = getelementptr inbounds double, double* %1069, i64 160
  store double %1068, double* %arrayidx858, align 8, !tbaa !5
  %1070 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx859 = getelementptr inbounds double, double* %1070, i64 14
  %1071 = load double, double* %arrayidx859, align 8, !tbaa !5
  %1072 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx860 = getelementptr inbounds double, double* %1072, i64 10
  %1073 = load double, double* %arrayidx860, align 8, !tbaa !5
  %add861 = fadd double %1073, %1071
  store double %add861, double* %arrayidx860, align 8, !tbaa !5
  %1074 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx862 = getelementptr inbounds double, double* %1074, i64 10
  %1075 = load double, double* %arrayidx862, align 8, !tbaa !5
  %1076 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx863 = getelementptr inbounds double, double* %1076, i64 96
  store double %1075, double* %arrayidx863, align 8, !tbaa !5
  %1077 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx864 = getelementptr inbounds double, double* %1077, i64 9
  %1078 = load double, double* %arrayidx864, align 8, !tbaa !5
  %1079 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx865 = getelementptr inbounds double, double* %1079, i64 14
  %1080 = load double, double* %arrayidx865, align 8, !tbaa !5
  %add866 = fadd double %1080, %1078
  store double %add866, double* %arrayidx865, align 8, !tbaa !5
  %1081 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx867 = getelementptr inbounds double, double* %1081, i64 14
  %1082 = load double, double* %arrayidx867, align 8, !tbaa !5
  %1083 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx868 = getelementptr inbounds double, double* %1083, i64 32
  store double %1082, double* %arrayidx868, align 8, !tbaa !5
  %1084 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx869 = getelementptr inbounds double, double* %1084, i64 13
  %1085 = load double, double* %arrayidx869, align 8, !tbaa !5
  %1086 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx870 = getelementptr inbounds double, double* %1086, i64 9
  %1087 = load double, double* %arrayidx870, align 8, !tbaa !5
  %add871 = fadd double %1087, %1085
  store double %add871, double* %arrayidx870, align 8, !tbaa !5
  %1088 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx872 = getelementptr inbounds double, double* %1088, i64 9
  %1089 = load double, double* %arrayidx872, align 8, !tbaa !5
  %1090 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx873 = getelementptr inbounds double, double* %1090, i64 32
  store double %1089, double* %arrayidx873, align 8, !tbaa !5
  %1091 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx874 = getelementptr inbounds double, double* %1091, i64 11
  %1092 = load double, double* %arrayidx874, align 8, !tbaa !5
  %1093 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx875 = getelementptr inbounds double, double* %1093, i64 13
  %1094 = load double, double* %arrayidx875, align 8, !tbaa !5
  %add876 = fadd double %1094, %1092
  store double %add876, double* %arrayidx875, align 8, !tbaa !5
  %1095 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx877 = getelementptr inbounds double, double* %1095, i64 13
  %1096 = load double, double* %arrayidx877, align 8, !tbaa !5
  %1097 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx878 = getelementptr inbounds double, double* %1097, i64 96
  store double %1096, double* %arrayidx878, align 8, !tbaa !5
  %1098 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx879 = getelementptr inbounds double, double* %1098, i64 15
  %1099 = load double, double* %arrayidx879, align 8, !tbaa !5
  %1100 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx880 = getelementptr inbounds double, double* %1100, i64 11
  %1101 = load double, double* %arrayidx880, align 8, !tbaa !5
  %add881 = fadd double %1101, %1099
  store double %add881, double* %arrayidx880, align 8, !tbaa !5
  %1102 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx882 = getelementptr inbounds double, double* %1102, i64 11
  %1103 = load double, double* %arrayidx882, align 8, !tbaa !5
  %1104 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx883 = getelementptr inbounds double, double* %1104, i64 160
  store double %1103, double* %arrayidx883, align 8, !tbaa !5
  %1105 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx884 = getelementptr inbounds double, double* %1105, i64 15
  %1106 = load double, double* %arrayidx884, align 8, !tbaa !5
  %1107 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx885 = getelementptr inbounds double, double* %1107, i64 224
  store double %1106, double* %arrayidx885, align 8, !tbaa !5
  %1108 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx886 = getelementptr inbounds double, double* %1108, i64 28
  %1109 = load double, double* %arrayidx886, align 8, !tbaa !5
  %1110 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx887 = getelementptr inbounds double, double* %1110, i64 24
  %1111 = load double, double* %arrayidx887, align 8, !tbaa !5
  %add888 = fadd double %1111, %1109
  store double %add888, double* %arrayidx887, align 8, !tbaa !5
  %1112 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx889 = getelementptr inbounds double, double* %1112, i64 16
  %1113 = load double, double* %arrayidx889, align 8, !tbaa !5
  %1114 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx890 = getelementptr inbounds double, double* %1114, i64 24
  %1115 = load double, double* %arrayidx890, align 8, !tbaa !5
  %add891 = fadd double %1113, %1115
  %1116 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx892 = getelementptr inbounds double, double* %1116, i64 240
  store double %add891, double* %arrayidx892, align 8, !tbaa !5
  %1117 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx893 = getelementptr inbounds double, double* %1117, i64 24
  %1118 = load double, double* %arrayidx893, align 8, !tbaa !5
  %1119 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx894 = getelementptr inbounds double, double* %1119, i64 20
  %1120 = load double, double* %arrayidx894, align 8, !tbaa !5
  %add895 = fadd double %1118, %1120
  %1121 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx896 = getelementptr inbounds double, double* %1121, i64 208
  store double %add895, double* %arrayidx896, align 8, !tbaa !5
  %1122 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx897 = getelementptr inbounds double, double* %1122, i64 26
  %1123 = load double, double* %arrayidx897, align 8, !tbaa !5
  %1124 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx898 = getelementptr inbounds double, double* %1124, i64 28
  %1125 = load double, double* %arrayidx898, align 8, !tbaa !5
  %add899 = fadd double %1125, %1123
  store double %add899, double* %arrayidx898, align 8, !tbaa !5
  %1126 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx900 = getelementptr inbounds double, double* %1126, i64 20
  %1127 = load double, double* %arrayidx900, align 8, !tbaa !5
  %1128 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx901 = getelementptr inbounds double, double* %1128, i64 28
  %1129 = load double, double* %arrayidx901, align 8, !tbaa !5
  %add902 = fadd double %1127, %1129
  %1130 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx903 = getelementptr inbounds double, double* %1130, i64 176
  store double %add902, double* %arrayidx903, align 8, !tbaa !5
  %1131 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx904 = getelementptr inbounds double, double* %1131, i64 28
  %1132 = load double, double* %arrayidx904, align 8, !tbaa !5
  %1133 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx905 = getelementptr inbounds double, double* %1133, i64 18
  %1134 = load double, double* %arrayidx905, align 8, !tbaa !5
  %add906 = fadd double %1132, %1134
  %1135 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx907 = getelementptr inbounds double, double* %1135, i64 144
  store double %add906, double* %arrayidx907, align 8, !tbaa !5
  %1136 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx908 = getelementptr inbounds double, double* %1136, i64 30
  %1137 = load double, double* %arrayidx908, align 8, !tbaa !5
  %1138 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx909 = getelementptr inbounds double, double* %1138, i64 26
  %1139 = load double, double* %arrayidx909, align 8, !tbaa !5
  %add910 = fadd double %1139, %1137
  store double %add910, double* %arrayidx909, align 8, !tbaa !5
  %1140 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx911 = getelementptr inbounds double, double* %1140, i64 18
  %1141 = load double, double* %arrayidx911, align 8, !tbaa !5
  %1142 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx912 = getelementptr inbounds double, double* %1142, i64 26
  %1143 = load double, double* %arrayidx912, align 8, !tbaa !5
  %add913 = fadd double %1141, %1143
  %1144 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx914 = getelementptr inbounds double, double* %1144, i64 112
  store double %add913, double* %arrayidx914, align 8, !tbaa !5
  %1145 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx915 = getelementptr inbounds double, double* %1145, i64 26
  %1146 = load double, double* %arrayidx915, align 8, !tbaa !5
  %1147 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx916 = getelementptr inbounds double, double* %1147, i64 22
  %1148 = load double, double* %arrayidx916, align 8, !tbaa !5
  %add917 = fadd double %1146, %1148
  %1149 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx918 = getelementptr inbounds double, double* %1149, i64 80
  store double %add917, double* %arrayidx918, align 8, !tbaa !5
  %1150 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx919 = getelementptr inbounds double, double* %1150, i64 25
  %1151 = load double, double* %arrayidx919, align 8, !tbaa !5
  %1152 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx920 = getelementptr inbounds double, double* %1152, i64 30
  %1153 = load double, double* %arrayidx920, align 8, !tbaa !5
  %add921 = fadd double %1153, %1151
  store double %add921, double* %arrayidx920, align 8, !tbaa !5
  %1154 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx922 = getelementptr inbounds double, double* %1154, i64 22
  %1155 = load double, double* %arrayidx922, align 8, !tbaa !5
  %1156 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx923 = getelementptr inbounds double, double* %1156, i64 30
  %1157 = load double, double* %arrayidx923, align 8, !tbaa !5
  %add924 = fadd double %1155, %1157
  %1158 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx925 = getelementptr inbounds double, double* %1158, i64 48
  store double %add924, double* %arrayidx925, align 8, !tbaa !5
  %1159 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx926 = getelementptr inbounds double, double* %1159, i64 30
  %1160 = load double, double* %arrayidx926, align 8, !tbaa !5
  %1161 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx927 = getelementptr inbounds double, double* %1161, i64 17
  %1162 = load double, double* %arrayidx927, align 8, !tbaa !5
  %add928 = fadd double %1160, %1162
  %1163 = load double*, double** %out0.addr, align 8, !tbaa !1
  %arrayidx929 = getelementptr inbounds double, double* %1163, i64 16
  store double %add928, double* %arrayidx929, align 8, !tbaa !5
  %1164 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx930 = getelementptr inbounds double, double* %1164, i64 29
  %1165 = load double, double* %arrayidx930, align 8, !tbaa !5
  %1166 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx931 = getelementptr inbounds double, double* %1166, i64 25
  %1167 = load double, double* %arrayidx931, align 8, !tbaa !5
  %add932 = fadd double %1167, %1165
  store double %add932, double* %arrayidx931, align 8, !tbaa !5
  %1168 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx933 = getelementptr inbounds double, double* %1168, i64 17
  %1169 = load double, double* %arrayidx933, align 8, !tbaa !5
  %1170 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx934 = getelementptr inbounds double, double* %1170, i64 25
  %1171 = load double, double* %arrayidx934, align 8, !tbaa !5
  %add935 = fadd double %1169, %1171
  %1172 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx936 = getelementptr inbounds double, double* %1172, i64 16
  store double %add935, double* %arrayidx936, align 8, !tbaa !5
  %1173 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx937 = getelementptr inbounds double, double* %1173, i64 25
  %1174 = load double, double* %arrayidx937, align 8, !tbaa !5
  %1175 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx938 = getelementptr inbounds double, double* %1175, i64 21
  %1176 = load double, double* %arrayidx938, align 8, !tbaa !5
  %add939 = fadd double %1174, %1176
  %1177 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx940 = getelementptr inbounds double, double* %1177, i64 48
  store double %add939, double* %arrayidx940, align 8, !tbaa !5
  %1178 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx941 = getelementptr inbounds double, double* %1178, i64 27
  %1179 = load double, double* %arrayidx941, align 8, !tbaa !5
  %1180 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx942 = getelementptr inbounds double, double* %1180, i64 29
  %1181 = load double, double* %arrayidx942, align 8, !tbaa !5
  %add943 = fadd double %1181, %1179
  store double %add943, double* %arrayidx942, align 8, !tbaa !5
  %1182 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx944 = getelementptr inbounds double, double* %1182, i64 21
  %1183 = load double, double* %arrayidx944, align 8, !tbaa !5
  %1184 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx945 = getelementptr inbounds double, double* %1184, i64 29
  %1185 = load double, double* %arrayidx945, align 8, !tbaa !5
  %add946 = fadd double %1183, %1185
  %1186 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx947 = getelementptr inbounds double, double* %1186, i64 80
  store double %add946, double* %arrayidx947, align 8, !tbaa !5
  %1187 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx948 = getelementptr inbounds double, double* %1187, i64 29
  %1188 = load double, double* %arrayidx948, align 8, !tbaa !5
  %1189 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx949 = getelementptr inbounds double, double* %1189, i64 19
  %1190 = load double, double* %arrayidx949, align 8, !tbaa !5
  %add950 = fadd double %1188, %1190
  %1191 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx951 = getelementptr inbounds double, double* %1191, i64 112
  store double %add950, double* %arrayidx951, align 8, !tbaa !5
  %1192 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx952 = getelementptr inbounds double, double* %1192, i64 31
  %1193 = load double, double* %arrayidx952, align 8, !tbaa !5
  %1194 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx953 = getelementptr inbounds double, double* %1194, i64 27
  %1195 = load double, double* %arrayidx953, align 8, !tbaa !5
  %add954 = fadd double %1195, %1193
  store double %add954, double* %arrayidx953, align 8, !tbaa !5
  %1196 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx955 = getelementptr inbounds double, double* %1196, i64 19
  %1197 = load double, double* %arrayidx955, align 8, !tbaa !5
  %1198 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx956 = getelementptr inbounds double, double* %1198, i64 27
  %1199 = load double, double* %arrayidx956, align 8, !tbaa !5
  %add957 = fadd double %1197, %1199
  %1200 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx958 = getelementptr inbounds double, double* %1200, i64 144
  store double %add957, double* %arrayidx958, align 8, !tbaa !5
  %1201 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx959 = getelementptr inbounds double, double* %1201, i64 27
  %1202 = load double, double* %arrayidx959, align 8, !tbaa !5
  %1203 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx960 = getelementptr inbounds double, double* %1203, i64 23
  %1204 = load double, double* %arrayidx960, align 8, !tbaa !5
  %add961 = fadd double %1202, %1204
  %1205 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx962 = getelementptr inbounds double, double* %1205, i64 176
  store double %add961, double* %arrayidx962, align 8, !tbaa !5
  %1206 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx963 = getelementptr inbounds double, double* %1206, i64 23
  %1207 = load double, double* %arrayidx963, align 8, !tbaa !5
  %1208 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx964 = getelementptr inbounds double, double* %1208, i64 31
  %1209 = load double, double* %arrayidx964, align 8, !tbaa !5
  %add965 = fadd double %1207, %1209
  %1210 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx966 = getelementptr inbounds double, double* %1210, i64 208
  store double %add965, double* %arrayidx966, align 8, !tbaa !5
  %1211 = load double*, double** %b1.addr, align 8, !tbaa !1
  %arrayidx967 = getelementptr inbounds double, double* %1211, i64 31
  %1212 = load double, double* %arrayidx967, align 8, !tbaa !5
  %1213 = load double*, double** %out1.addr, align 8, !tbaa !1
  %arrayidx968 = getelementptr inbounds double, double* %1213, i64 240
  store double %1212, double* %arrayidx968, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !3, i64 0}
