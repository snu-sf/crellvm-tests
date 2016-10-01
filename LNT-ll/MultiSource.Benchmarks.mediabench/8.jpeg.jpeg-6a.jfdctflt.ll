; ModuleID = './MultiSource.Benchmarks.mediabench/8.jpeg.jpeg-6a.jfdctflt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @jpeg_fdct_float(float* %data) #0 {
entry:
  %data.addr = alloca float*, align 8
  %tmp0 = alloca float, align 4
  %tmp1 = alloca float, align 4
  %tmp2 = alloca float, align 4
  %tmp3 = alloca float, align 4
  %tmp4 = alloca float, align 4
  %tmp5 = alloca float, align 4
  %tmp6 = alloca float, align 4
  %tmp7 = alloca float, align 4
  %tmp10 = alloca float, align 4
  %tmp11 = alloca float, align 4
  %tmp12 = alloca float, align 4
  %tmp13 = alloca float, align 4
  %z1 = alloca float, align 4
  %z2 = alloca float, align 4
  %z3 = alloca float, align 4
  %z4 = alloca float, align 4
  %z5 = alloca float, align 4
  %z11 = alloca float, align 4
  %z13 = alloca float, align 4
  %dataptr = alloca float*, align 8
  %ctr = alloca i32, align 4
  store float* %data, float** %data.addr, align 8
  %0 = load float*, float** %data.addr, align 8
  store float* %0, float** %dataptr, align 8
  store i32 7, i32* %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %ctr, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %dataptr, align 8
  %arrayidx = getelementptr inbounds float, float* %2, i64 0
  %3 = load float, float* %arrayidx, align 4
  %4 = load float*, float** %dataptr, align 8
  %arrayidx1 = getelementptr inbounds float, float* %4, i64 7
  %5 = load float, float* %arrayidx1, align 4
  %add = fadd float %3, %5
  store float %add, float* %tmp0, align 4
  %6 = load float*, float** %dataptr, align 8
  %arrayidx2 = getelementptr inbounds float, float* %6, i64 0
  %7 = load float, float* %arrayidx2, align 4
  %8 = load float*, float** %dataptr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %8, i64 7
  %9 = load float, float* %arrayidx3, align 4
  %sub = fsub float %7, %9
  store float %sub, float* %tmp7, align 4
  %10 = load float*, float** %dataptr, align 8
  %arrayidx4 = getelementptr inbounds float, float* %10, i64 1
  %11 = load float, float* %arrayidx4, align 4
  %12 = load float*, float** %dataptr, align 8
  %arrayidx5 = getelementptr inbounds float, float* %12, i64 6
  %13 = load float, float* %arrayidx5, align 4
  %add6 = fadd float %11, %13
  store float %add6, float* %tmp1, align 4
  %14 = load float*, float** %dataptr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %14, i64 1
  %15 = load float, float* %arrayidx7, align 4
  %16 = load float*, float** %dataptr, align 8
  %arrayidx8 = getelementptr inbounds float, float* %16, i64 6
  %17 = load float, float* %arrayidx8, align 4
  %sub9 = fsub float %15, %17
  store float %sub9, float* %tmp6, align 4
  %18 = load float*, float** %dataptr, align 8
  %arrayidx10 = getelementptr inbounds float, float* %18, i64 2
  %19 = load float, float* %arrayidx10, align 4
  %20 = load float*, float** %dataptr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %20, i64 5
  %21 = load float, float* %arrayidx11, align 4
  %add12 = fadd float %19, %21
  store float %add12, float* %tmp2, align 4
  %22 = load float*, float** %dataptr, align 8
  %arrayidx13 = getelementptr inbounds float, float* %22, i64 2
  %23 = load float, float* %arrayidx13, align 4
  %24 = load float*, float** %dataptr, align 8
  %arrayidx14 = getelementptr inbounds float, float* %24, i64 5
  %25 = load float, float* %arrayidx14, align 4
  %sub15 = fsub float %23, %25
  store float %sub15, float* %tmp5, align 4
  %26 = load float*, float** %dataptr, align 8
  %arrayidx16 = getelementptr inbounds float, float* %26, i64 3
  %27 = load float, float* %arrayidx16, align 4
  %28 = load float*, float** %dataptr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %28, i64 4
  %29 = load float, float* %arrayidx17, align 4
  %add18 = fadd float %27, %29
  store float %add18, float* %tmp3, align 4
  %30 = load float*, float** %dataptr, align 8
  %arrayidx19 = getelementptr inbounds float, float* %30, i64 3
  %31 = load float, float* %arrayidx19, align 4
  %32 = load float*, float** %dataptr, align 8
  %arrayidx20 = getelementptr inbounds float, float* %32, i64 4
  %33 = load float, float* %arrayidx20, align 4
  %sub21 = fsub float %31, %33
  store float %sub21, float* %tmp4, align 4
  %34 = load float, float* %tmp0, align 4
  %35 = load float, float* %tmp3, align 4
  %add22 = fadd float %34, %35
  store float %add22, float* %tmp10, align 4
  %36 = load float, float* %tmp0, align 4
  %37 = load float, float* %tmp3, align 4
  %sub23 = fsub float %36, %37
  store float %sub23, float* %tmp13, align 4
  %38 = load float, float* %tmp1, align 4
  %39 = load float, float* %tmp2, align 4
  %add24 = fadd float %38, %39
  store float %add24, float* %tmp11, align 4
  %40 = load float, float* %tmp1, align 4
  %41 = load float, float* %tmp2, align 4
  %sub25 = fsub float %40, %41
  store float %sub25, float* %tmp12, align 4
  %42 = load float, float* %tmp10, align 4
  %43 = load float, float* %tmp11, align 4
  %add26 = fadd float %42, %43
  %44 = load float*, float** %dataptr, align 8
  %arrayidx27 = getelementptr inbounds float, float* %44, i64 0
  store float %add26, float* %arrayidx27, align 4
  %45 = load float, float* %tmp10, align 4
  %46 = load float, float* %tmp11, align 4
  %sub28 = fsub float %45, %46
  %47 = load float*, float** %dataptr, align 8
  %arrayidx29 = getelementptr inbounds float, float* %47, i64 4
  store float %sub28, float* %arrayidx29, align 4
  %48 = load float, float* %tmp12, align 4
  %49 = load float, float* %tmp13, align 4
  %add30 = fadd float %48, %49
  %mul = fmul float %add30, 0x3FE6A09E60000000
  store float %mul, float* %z1, align 4
  %50 = load float, float* %tmp13, align 4
  %51 = load float, float* %z1, align 4
  %add31 = fadd float %50, %51
  %52 = load float*, float** %dataptr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %52, i64 2
  store float %add31, float* %arrayidx32, align 4
  %53 = load float, float* %tmp13, align 4
  %54 = load float, float* %z1, align 4
  %sub33 = fsub float %53, %54
  %55 = load float*, float** %dataptr, align 8
  %arrayidx34 = getelementptr inbounds float, float* %55, i64 6
  store float %sub33, float* %arrayidx34, align 4
  %56 = load float, float* %tmp4, align 4
  %57 = load float, float* %tmp5, align 4
  %add35 = fadd float %56, %57
  store float %add35, float* %tmp10, align 4
  %58 = load float, float* %tmp5, align 4
  %59 = load float, float* %tmp6, align 4
  %add36 = fadd float %58, %59
  store float %add36, float* %tmp11, align 4
  %60 = load float, float* %tmp6, align 4
  %61 = load float, float* %tmp7, align 4
  %add37 = fadd float %60, %61
  store float %add37, float* %tmp12, align 4
  %62 = load float, float* %tmp10, align 4
  %63 = load float, float* %tmp12, align 4
  %sub38 = fsub float %62, %63
  %mul39 = fmul float %sub38, 0x3FD87DE2A0000000
  store float %mul39, float* %z5, align 4
  %64 = load float, float* %tmp10, align 4
  %mul40 = fmul float 0x3FE1517A80000000, %64
  %65 = load float, float* %z5, align 4
  %add41 = fadd float %mul40, %65
  store float %add41, float* %z2, align 4
  %66 = load float, float* %tmp12, align 4
  %mul42 = fmul float 0x3FF4E7AEA0000000, %66
  %67 = load float, float* %z5, align 4
  %add43 = fadd float %mul42, %67
  store float %add43, float* %z4, align 4
  %68 = load float, float* %tmp11, align 4
  %mul44 = fmul float %68, 0x3FE6A09E60000000
  store float %mul44, float* %z3, align 4
  %69 = load float, float* %tmp7, align 4
  %70 = load float, float* %z3, align 4
  %add45 = fadd float %69, %70
  store float %add45, float* %z11, align 4
  %71 = load float, float* %tmp7, align 4
  %72 = load float, float* %z3, align 4
  %sub46 = fsub float %71, %72
  store float %sub46, float* %z13, align 4
  %73 = load float, float* %z13, align 4
  %74 = load float, float* %z2, align 4
  %add47 = fadd float %73, %74
  %75 = load float*, float** %dataptr, align 8
  %arrayidx48 = getelementptr inbounds float, float* %75, i64 5
  store float %add47, float* %arrayidx48, align 4
  %76 = load float, float* %z13, align 4
  %77 = load float, float* %z2, align 4
  %sub49 = fsub float %76, %77
  %78 = load float*, float** %dataptr, align 8
  %arrayidx50 = getelementptr inbounds float, float* %78, i64 3
  store float %sub49, float* %arrayidx50, align 4
  %79 = load float, float* %z11, align 4
  %80 = load float, float* %z4, align 4
  %add51 = fadd float %79, %80
  %81 = load float*, float** %dataptr, align 8
  %arrayidx52 = getelementptr inbounds float, float* %81, i64 1
  store float %add51, float* %arrayidx52, align 4
  %82 = load float, float* %z11, align 4
  %83 = load float, float* %z4, align 4
  %sub53 = fsub float %82, %83
  %84 = load float*, float** %dataptr, align 8
  %arrayidx54 = getelementptr inbounds float, float* %84, i64 7
  store float %sub53, float* %arrayidx54, align 4
  %85 = load float*, float** %dataptr, align 8
  %add.ptr = getelementptr inbounds float, float* %85, i64 8
  store float* %add.ptr, float** %dataptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %86 = load i32, i32* %ctr, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %ctr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %87 = load float*, float** %data.addr, align 8
  store float* %87, float** %dataptr, align 8
  store i32 7, i32* %ctr, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.116, %for.end
  %88 = load i32, i32* %ctr, align 4
  %cmp56 = icmp sge i32 %88, 0
  br i1 %cmp56, label %for.body.57, label %for.end.118

for.body.57:                                      ; preds = %for.cond.55
  %89 = load float*, float** %dataptr, align 8
  %arrayidx58 = getelementptr inbounds float, float* %89, i64 0
  %90 = load float, float* %arrayidx58, align 4
  %91 = load float*, float** %dataptr, align 8
  %arrayidx59 = getelementptr inbounds float, float* %91, i64 56
  %92 = load float, float* %arrayidx59, align 4
  %add60 = fadd float %90, %92
  store float %add60, float* %tmp0, align 4
  %93 = load float*, float** %dataptr, align 8
  %arrayidx61 = getelementptr inbounds float, float* %93, i64 0
  %94 = load float, float* %arrayidx61, align 4
  %95 = load float*, float** %dataptr, align 8
  %arrayidx62 = getelementptr inbounds float, float* %95, i64 56
  %96 = load float, float* %arrayidx62, align 4
  %sub63 = fsub float %94, %96
  store float %sub63, float* %tmp7, align 4
  %97 = load float*, float** %dataptr, align 8
  %arrayidx64 = getelementptr inbounds float, float* %97, i64 8
  %98 = load float, float* %arrayidx64, align 4
  %99 = load float*, float** %dataptr, align 8
  %arrayidx65 = getelementptr inbounds float, float* %99, i64 48
  %100 = load float, float* %arrayidx65, align 4
  %add66 = fadd float %98, %100
  store float %add66, float* %tmp1, align 4
  %101 = load float*, float** %dataptr, align 8
  %arrayidx67 = getelementptr inbounds float, float* %101, i64 8
  %102 = load float, float* %arrayidx67, align 4
  %103 = load float*, float** %dataptr, align 8
  %arrayidx68 = getelementptr inbounds float, float* %103, i64 48
  %104 = load float, float* %arrayidx68, align 4
  %sub69 = fsub float %102, %104
  store float %sub69, float* %tmp6, align 4
  %105 = load float*, float** %dataptr, align 8
  %arrayidx70 = getelementptr inbounds float, float* %105, i64 16
  %106 = load float, float* %arrayidx70, align 4
  %107 = load float*, float** %dataptr, align 8
  %arrayidx71 = getelementptr inbounds float, float* %107, i64 40
  %108 = load float, float* %arrayidx71, align 4
  %add72 = fadd float %106, %108
  store float %add72, float* %tmp2, align 4
  %109 = load float*, float** %dataptr, align 8
  %arrayidx73 = getelementptr inbounds float, float* %109, i64 16
  %110 = load float, float* %arrayidx73, align 4
  %111 = load float*, float** %dataptr, align 8
  %arrayidx74 = getelementptr inbounds float, float* %111, i64 40
  %112 = load float, float* %arrayidx74, align 4
  %sub75 = fsub float %110, %112
  store float %sub75, float* %tmp5, align 4
  %113 = load float*, float** %dataptr, align 8
  %arrayidx76 = getelementptr inbounds float, float* %113, i64 24
  %114 = load float, float* %arrayidx76, align 4
  %115 = load float*, float** %dataptr, align 8
  %arrayidx77 = getelementptr inbounds float, float* %115, i64 32
  %116 = load float, float* %arrayidx77, align 4
  %add78 = fadd float %114, %116
  store float %add78, float* %tmp3, align 4
  %117 = load float*, float** %dataptr, align 8
  %arrayidx79 = getelementptr inbounds float, float* %117, i64 24
  %118 = load float, float* %arrayidx79, align 4
  %119 = load float*, float** %dataptr, align 8
  %arrayidx80 = getelementptr inbounds float, float* %119, i64 32
  %120 = load float, float* %arrayidx80, align 4
  %sub81 = fsub float %118, %120
  store float %sub81, float* %tmp4, align 4
  %121 = load float, float* %tmp0, align 4
  %122 = load float, float* %tmp3, align 4
  %add82 = fadd float %121, %122
  store float %add82, float* %tmp10, align 4
  %123 = load float, float* %tmp0, align 4
  %124 = load float, float* %tmp3, align 4
  %sub83 = fsub float %123, %124
  store float %sub83, float* %tmp13, align 4
  %125 = load float, float* %tmp1, align 4
  %126 = load float, float* %tmp2, align 4
  %add84 = fadd float %125, %126
  store float %add84, float* %tmp11, align 4
  %127 = load float, float* %tmp1, align 4
  %128 = load float, float* %tmp2, align 4
  %sub85 = fsub float %127, %128
  store float %sub85, float* %tmp12, align 4
  %129 = load float, float* %tmp10, align 4
  %130 = load float, float* %tmp11, align 4
  %add86 = fadd float %129, %130
  %131 = load float*, float** %dataptr, align 8
  %arrayidx87 = getelementptr inbounds float, float* %131, i64 0
  store float %add86, float* %arrayidx87, align 4
  %132 = load float, float* %tmp10, align 4
  %133 = load float, float* %tmp11, align 4
  %sub88 = fsub float %132, %133
  %134 = load float*, float** %dataptr, align 8
  %arrayidx89 = getelementptr inbounds float, float* %134, i64 32
  store float %sub88, float* %arrayidx89, align 4
  %135 = load float, float* %tmp12, align 4
  %136 = load float, float* %tmp13, align 4
  %add90 = fadd float %135, %136
  %mul91 = fmul float %add90, 0x3FE6A09E60000000
  store float %mul91, float* %z1, align 4
  %137 = load float, float* %tmp13, align 4
  %138 = load float, float* %z1, align 4
  %add92 = fadd float %137, %138
  %139 = load float*, float** %dataptr, align 8
  %arrayidx93 = getelementptr inbounds float, float* %139, i64 16
  store float %add92, float* %arrayidx93, align 4
  %140 = load float, float* %tmp13, align 4
  %141 = load float, float* %z1, align 4
  %sub94 = fsub float %140, %141
  %142 = load float*, float** %dataptr, align 8
  %arrayidx95 = getelementptr inbounds float, float* %142, i64 48
  store float %sub94, float* %arrayidx95, align 4
  %143 = load float, float* %tmp4, align 4
  %144 = load float, float* %tmp5, align 4
  %add96 = fadd float %143, %144
  store float %add96, float* %tmp10, align 4
  %145 = load float, float* %tmp5, align 4
  %146 = load float, float* %tmp6, align 4
  %add97 = fadd float %145, %146
  store float %add97, float* %tmp11, align 4
  %147 = load float, float* %tmp6, align 4
  %148 = load float, float* %tmp7, align 4
  %add98 = fadd float %147, %148
  store float %add98, float* %tmp12, align 4
  %149 = load float, float* %tmp10, align 4
  %150 = load float, float* %tmp12, align 4
  %sub99 = fsub float %149, %150
  %mul100 = fmul float %sub99, 0x3FD87DE2A0000000
  store float %mul100, float* %z5, align 4
  %151 = load float, float* %tmp10, align 4
  %mul101 = fmul float 0x3FE1517A80000000, %151
  %152 = load float, float* %z5, align 4
  %add102 = fadd float %mul101, %152
  store float %add102, float* %z2, align 4
  %153 = load float, float* %tmp12, align 4
  %mul103 = fmul float 0x3FF4E7AEA0000000, %153
  %154 = load float, float* %z5, align 4
  %add104 = fadd float %mul103, %154
  store float %add104, float* %z4, align 4
  %155 = load float, float* %tmp11, align 4
  %mul105 = fmul float %155, 0x3FE6A09E60000000
  store float %mul105, float* %z3, align 4
  %156 = load float, float* %tmp7, align 4
  %157 = load float, float* %z3, align 4
  %add106 = fadd float %156, %157
  store float %add106, float* %z11, align 4
  %158 = load float, float* %tmp7, align 4
  %159 = load float, float* %z3, align 4
  %sub107 = fsub float %158, %159
  store float %sub107, float* %z13, align 4
  %160 = load float, float* %z13, align 4
  %161 = load float, float* %z2, align 4
  %add108 = fadd float %160, %161
  %162 = load float*, float** %dataptr, align 8
  %arrayidx109 = getelementptr inbounds float, float* %162, i64 40
  store float %add108, float* %arrayidx109, align 4
  %163 = load float, float* %z13, align 4
  %164 = load float, float* %z2, align 4
  %sub110 = fsub float %163, %164
  %165 = load float*, float** %dataptr, align 8
  %arrayidx111 = getelementptr inbounds float, float* %165, i64 24
  store float %sub110, float* %arrayidx111, align 4
  %166 = load float, float* %z11, align 4
  %167 = load float, float* %z4, align 4
  %add112 = fadd float %166, %167
  %168 = load float*, float** %dataptr, align 8
  %arrayidx113 = getelementptr inbounds float, float* %168, i64 8
  store float %add112, float* %arrayidx113, align 4
  %169 = load float, float* %z11, align 4
  %170 = load float, float* %z4, align 4
  %sub114 = fsub float %169, %170
  %171 = load float*, float** %dataptr, align 8
  %arrayidx115 = getelementptr inbounds float, float* %171, i64 56
  store float %sub114, float* %arrayidx115, align 4
  %172 = load float*, float** %dataptr, align 8
  %incdec.ptr = getelementptr inbounds float, float* %172, i32 1
  store float* %incdec.ptr, float** %dataptr, align 8
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.57
  %173 = load i32, i32* %ctr, align 4
  %dec117 = add nsw i32 %173, -1
  store i32 %dec117, i32* %ctr, align 4
  br label %for.cond.55

for.end.118:                                      ; preds = %for.cond.55
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
