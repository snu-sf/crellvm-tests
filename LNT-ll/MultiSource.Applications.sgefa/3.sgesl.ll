; ModuleID = './MultiSource.Applications.sgefa/3.sgesl.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FULL = type { i32, i32, [1000 x float*] }

; Function Attrs: nounwind uwtable
define i32 @sgesl(%struct.FULL* %a, i32* %ipvt, float* %b, i32 %job) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.FULL*, align 8
  %ipvt.addr = alloca i32*, align 8
  %b.addr = alloca float*, align 8
  %job.addr = alloca i32, align 4
  %t = alloca float, align 4
  %akk = alloca float*, align 8
  %mik = alloca float*, align 8
  %uik = alloca float*, align 8
  %bi = alloca float*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %n = alloca i32, align 4
  %nm1 = alloca i32, align 4
  store %struct.FULL* %a, %struct.FULL** %a.addr, align 8
  store i32* %ipvt, i32** %ipvt.addr, align 8
  store float* %b, float** %b.addr, align 8
  store i32 %job, i32* %job.addr, align 4
  %0 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %cd = getelementptr inbounds %struct.FULL, %struct.FULL* %0, i32 0, i32 0
  %1 = load i32, i32* %cd, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %nm1, align 4
  %3 = load i32, i32* %job.addr, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.51

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %if.then
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %nm1, align 4
  %cmp1 = icmp slt i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd = getelementptr inbounds %struct.FULL, %struct.FULL* %7, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd, i32 0, i64 %idxprom
  %8 = load float*, float** %arrayidx, align 8
  %9 = load i32, i32* %k, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds float, float* %8, i64 %idx.ext
  store float* %add.ptr, float** %akk, align 8
  %10 = load i32*, i32** %ipvt.addr, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %l, align 4
  %12 = load i32, i32* %l, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load float*, float** %b.addr, align 8
  %arrayidx3 = getelementptr inbounds float, float* %13, i64 %idxprom2
  %14 = load float, float* %arrayidx3, align 4
  store float %14, float* %t, align 4
  %15 = load i32, i32* %l, align 4
  %16 = load i32, i32* %k, align 4
  %cmp4 = icmp ne i32 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %17 = load i32, i32* %k, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load float*, float** %b.addr, align 8
  %arrayidx7 = getelementptr inbounds float, float* %18, i64 %idxprom6
  %19 = load float, float* %arrayidx7, align 4
  %20 = load i32, i32* %l, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load float*, float** %b.addr, align 8
  %arrayidx9 = getelementptr inbounds float, float* %21, i64 %idxprom8
  store float %19, float* %arrayidx9, align 4
  %22 = load float, float* %t, align 4
  %23 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load float*, float** %b.addr, align 8
  %arrayidx11 = getelementptr inbounds float, float* %24, i64 %idxprom10
  store float %22, float* %arrayidx11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  %25 = load i32, i32* %k, align 4
  %add = add nsw i32 %25, 1
  store i32 %add, i32* %i, align 4
  %26 = load float*, float** %akk, align 8
  %add.ptr12 = getelementptr inbounds float, float* %26, i64 1
  store float* %add.ptr12, float** %mik, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %n, align 4
  %cmp14 = icmp slt i32 %27, %28
  br i1 %cmp14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %29 = load float*, float** %mik, align 8
  %30 = load float, float* %29, align 4
  %31 = load float, float* %t, align 4
  %mul = fmul float %30, %31
  %32 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %32 to i64
  %33 = load float*, float** %b.addr, align 8
  %arrayidx17 = getelementptr inbounds float, float* %33, i64 %idxprom16
  %34 = load float, float* %arrayidx17, align 4
  %add18 = fadd float %34, %mul
  store float %add18, float* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  %36 = load float*, float** %mik, align 8
  %incdec.ptr = getelementptr inbounds float, float* %36, i32 1
  store float* %incdec.ptr, float** %mik, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end
  %37 = load i32, i32* %k, align 4
  %inc20 = add nsw i32 %37, 1
  store i32 %inc20, i32* %k, align 4
  %38 = load i32*, i32** %ipvt.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %incdec.ptr21, i32** %ipvt.addr, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %39 = load i32, i32* %nm1, align 4
  store i32 %39, i32* %k, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.49, %for.end.22
  %40 = load i32, i32* %k, align 4
  %cmp24 = icmp sge i32 %40, 0
  br i1 %cmp24, label %for.body.25, label %for.end.50

for.body.25:                                      ; preds = %for.cond.23
  %41 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %41 to i64
  %42 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd27 = getelementptr inbounds %struct.FULL, %struct.FULL* %42, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd27, i32 0, i64 %idxprom26
  %43 = load float*, float** %arrayidx28, align 8
  %44 = load i32, i32* %k, align 4
  %idx.ext29 = sext i32 %44 to i64
  %add.ptr30 = getelementptr inbounds float, float* %43, i64 %idx.ext29
  store float* %add.ptr30, float** %akk, align 8
  %45 = load float*, float** %akk, align 8
  %46 = load float, float* %45, align 4
  %47 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %47 to i64
  %48 = load float*, float** %b.addr, align 8
  %arrayidx32 = getelementptr inbounds float, float* %48, i64 %idxprom31
  %49 = load float, float* %arrayidx32, align 4
  %div = fdiv float %49, %46
  store float %div, float* %arrayidx32, align 4
  store i32 0, i32* %i, align 4
  %50 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %50 to i64
  %51 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd34 = getelementptr inbounds %struct.FULL, %struct.FULL* %51, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd34, i32 0, i64 %idxprom33
  %52 = load float*, float** %arrayidx35, align 8
  store float* %52, float** %uik, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.45, %for.body.25
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %k, align 4
  %cmp37 = icmp slt i32 %53, %54
  br i1 %cmp37, label %for.body.38, label %for.end.48

for.body.38:                                      ; preds = %for.cond.36
  %55 = load float*, float** %uik, align 8
  %56 = load float, float* %55, align 4
  %57 = load i32, i32* %k, align 4
  %idxprom39 = sext i32 %57 to i64
  %58 = load float*, float** %b.addr, align 8
  %arrayidx40 = getelementptr inbounds float, float* %58, i64 %idxprom39
  %59 = load float, float* %arrayidx40, align 4
  %mul41 = fmul float %56, %59
  %60 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %60 to i64
  %61 = load float*, float** %b.addr, align 8
  %arrayidx43 = getelementptr inbounds float, float* %61, i64 %idxprom42
  %62 = load float, float* %arrayidx43, align 4
  %sub44 = fsub float %62, %mul41
  store float %sub44, float* %arrayidx43, align 4
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.38
  %63 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %63, 1
  store i32 %inc46, i32* %i, align 4
  %64 = load float*, float** %uik, align 8
  %incdec.ptr47 = getelementptr inbounds float, float* %64, i32 1
  store float* %incdec.ptr47, float** %uik, align 8
  br label %for.cond.36

for.end.48:                                       ; preds = %for.cond.36
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %65 = load i32, i32* %k, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.23

for.end.50:                                       ; preds = %for.cond.23
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %entry
  store i32 0, i32* %k, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.79, %if.end.51
  %66 = load i32, i32* %k, align 4
  %67 = load i32, i32* %n, align 4
  %cmp53 = icmp slt i32 %66, %67
  br i1 %cmp53, label %for.body.54, label %for.end.81

for.body.54:                                      ; preds = %for.cond.52
  %68 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %68 to i64
  %69 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd56 = getelementptr inbounds %struct.FULL, %struct.FULL* %69, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd56, i32 0, i64 %idxprom55
  %70 = load float*, float** %arrayidx57, align 8
  %71 = load i32, i32* %k, align 4
  %idx.ext58 = sext i32 %71 to i64
  %add.ptr59 = getelementptr inbounds float, float* %70, i64 %idx.ext58
  store float* %add.ptr59, float** %akk, align 8
  store i32 0, i32* %i, align 4
  store float 0.000000e+00, float* %t, align 4
  %72 = load i32, i32* %k, align 4
  %idxprom60 = sext i32 %72 to i64
  %73 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd61 = getelementptr inbounds %struct.FULL, %struct.FULL* %73, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd61, i32 0, i64 %idxprom60
  %74 = load float*, float** %arrayidx62, align 8
  store float* %74, float** %uik, align 8
  %75 = load float*, float** %b.addr, align 8
  store float* %75, float** %bi, align 8
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.68, %for.body.54
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %k, align 4
  %cmp64 = icmp slt i32 %76, %77
  br i1 %cmp64, label %for.body.65, label %for.end.72

for.body.65:                                      ; preds = %for.cond.63
  %78 = load float*, float** %uik, align 8
  %79 = load float, float* %78, align 4
  %80 = load float*, float** %bi, align 8
  %81 = load float, float* %80, align 4
  %mul66 = fmul float %79, %81
  %82 = load float, float* %t, align 4
  %add67 = fadd float %82, %mul66
  store float %add67, float* %t, align 4
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.65
  %83 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %83, 1
  store i32 %inc69, i32* %i, align 4
  %84 = load float*, float** %uik, align 8
  %incdec.ptr70 = getelementptr inbounds float, float* %84, i32 1
  store float* %incdec.ptr70, float** %uik, align 8
  %85 = load float*, float** %bi, align 8
  %incdec.ptr71 = getelementptr inbounds float, float* %85, i32 1
  store float* %incdec.ptr71, float** %bi, align 8
  br label %for.cond.63

for.end.72:                                       ; preds = %for.cond.63
  %86 = load i32, i32* %k, align 4
  %idxprom73 = sext i32 %86 to i64
  %87 = load float*, float** %b.addr, align 8
  %arrayidx74 = getelementptr inbounds float, float* %87, i64 %idxprom73
  %88 = load float, float* %arrayidx74, align 4
  %89 = load float, float* %t, align 4
  %sub75 = fsub float %88, %89
  %90 = load float*, float** %akk, align 8
  %91 = load float, float* %90, align 4
  %div76 = fdiv float %sub75, %91
  %92 = load i32, i32* %k, align 4
  %idxprom77 = sext i32 %92 to i64
  %93 = load float*, float** %b.addr, align 8
  %arrayidx78 = getelementptr inbounds float, float* %93, i64 %idxprom77
  store float %div76, float* %arrayidx78, align 4
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.72
  %94 = load i32, i32* %k, align 4
  %inc80 = add nsw i32 %94, 1
  store i32 %inc80, i32* %k, align 4
  br label %for.cond.52

for.end.81:                                       ; preds = %for.cond.52
  %95 = load i32, i32* %n, align 4
  %sub82 = sub nsw i32 %95, 2
  %96 = load i32*, i32** %ipvt.addr, align 8
  %idx.ext83 = sext i32 %sub82 to i64
  %add.ptr84 = getelementptr inbounds i32, i32* %96, i64 %idx.ext83
  store i32* %add.ptr84, i32** %ipvt.addr, align 8
  %97 = load i32, i32* %n, align 4
  %sub85 = sub nsw i32 %97, 2
  store i32 %sub85, i32* %k, align 4
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.123, %for.end.81
  %98 = load i32, i32* %k, align 4
  %cmp87 = icmp sge i32 %98, 0
  br i1 %cmp87, label %for.body.88, label %for.end.126

for.body.88:                                      ; preds = %for.cond.86
  %99 = load i32, i32* %k, align 4
  %add89 = add nsw i32 %99, 1
  store i32 %add89, i32* %i, align 4
  store float 0.000000e+00, float* %t, align 4
  %100 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %100 to i64
  %101 = load %struct.FULL*, %struct.FULL** %a.addr, align 8
  %pd91 = getelementptr inbounds %struct.FULL, %struct.FULL* %101, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [1000 x float*], [1000 x float*]* %pd91, i32 0, i64 %idxprom90
  %102 = load float*, float** %arrayidx92, align 8
  %103 = load i32, i32* %k, align 4
  %idx.ext93 = sext i32 %103 to i64
  %add.ptr94 = getelementptr inbounds float, float* %102, i64 %idx.ext93
  %add.ptr95 = getelementptr inbounds float, float* %add.ptr94, i64 1
  store float* %add.ptr95, float** %mik, align 8
  %104 = load float*, float** %b.addr, align 8
  %105 = load i32, i32* %k, align 4
  %idx.ext96 = sext i32 %105 to i64
  %add.ptr97 = getelementptr inbounds float, float* %104, i64 %idx.ext96
  %add.ptr98 = getelementptr inbounds float, float* %add.ptr97, i64 1
  store float* %add.ptr98, float** %bi, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.104, %for.body.88
  %106 = load i32, i32* %i, align 4
  %107 = load i32, i32* %n, align 4
  %cmp100 = icmp slt i32 %106, %107
  br i1 %cmp100, label %for.body.101, label %for.end.108

for.body.101:                                     ; preds = %for.cond.99
  %108 = load float*, float** %mik, align 8
  %109 = load float, float* %108, align 4
  %110 = load float*, float** %bi, align 8
  %111 = load float, float* %110, align 4
  %mul102 = fmul float %109, %111
  %112 = load float, float* %t, align 4
  %add103 = fadd float %112, %mul102
  store float %add103, float* %t, align 4
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.body.101
  %113 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %113, 1
  store i32 %inc105, i32* %i, align 4
  %114 = load float*, float** %mik, align 8
  %incdec.ptr106 = getelementptr inbounds float, float* %114, i32 1
  store float* %incdec.ptr106, float** %mik, align 8
  %115 = load float*, float** %bi, align 8
  %incdec.ptr107 = getelementptr inbounds float, float* %115, i32 1
  store float* %incdec.ptr107, float** %bi, align 8
  br label %for.cond.99

for.end.108:                                      ; preds = %for.cond.99
  %116 = load float, float* %t, align 4
  %117 = load i32, i32* %k, align 4
  %idxprom109 = sext i32 %117 to i64
  %118 = load float*, float** %b.addr, align 8
  %arrayidx110 = getelementptr inbounds float, float* %118, i64 %idxprom109
  %119 = load float, float* %arrayidx110, align 4
  %add111 = fadd float %119, %116
  store float %add111, float* %arrayidx110, align 4
  %120 = load i32*, i32** %ipvt.addr, align 8
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %l, align 4
  %122 = load i32, i32* %l, align 4
  %123 = load i32, i32* %k, align 4
  %cmp112 = icmp eq i32 %122, %123
  br i1 %cmp112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %for.end.108
  br label %for.inc.123

if.end.114:                                       ; preds = %for.end.108
  %124 = load i32, i32* %l, align 4
  %idxprom115 = sext i32 %124 to i64
  %125 = load float*, float** %b.addr, align 8
  %arrayidx116 = getelementptr inbounds float, float* %125, i64 %idxprom115
  %126 = load float, float* %arrayidx116, align 4
  store float %126, float* %t, align 4
  %127 = load i32, i32* %k, align 4
  %idxprom117 = sext i32 %127 to i64
  %128 = load float*, float** %b.addr, align 8
  %arrayidx118 = getelementptr inbounds float, float* %128, i64 %idxprom117
  %129 = load float, float* %arrayidx118, align 4
  %130 = load i32, i32* %l, align 4
  %idxprom119 = sext i32 %130 to i64
  %131 = load float*, float** %b.addr, align 8
  %arrayidx120 = getelementptr inbounds float, float* %131, i64 %idxprom119
  store float %129, float* %arrayidx120, align 4
  %132 = load float, float* %t, align 4
  %133 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %133 to i64
  %134 = load float*, float** %b.addr, align 8
  %arrayidx122 = getelementptr inbounds float, float* %134, i64 %idxprom121
  store float %132, float* %arrayidx122, align 4
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.114, %if.then.113
  %135 = load i32, i32* %k, align 4
  %dec124 = add nsw i32 %135, -1
  store i32 %dec124, i32* %k, align 4
  %136 = load i32*, i32** %ipvt.addr, align 8
  %incdec.ptr125 = getelementptr inbounds i32, i32* %136, i32 -1
  store i32* %incdec.ptr125, i32** %ipvt.addr, align 8
  br label %for.cond.86

for.end.126:                                      ; preds = %for.cond.86
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.126, %for.end.50
  %137 = load i32, i32* %retval
  ret i32 %137
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
