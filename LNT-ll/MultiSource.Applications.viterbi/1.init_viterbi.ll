; ModuleID = './MultiSource.Applications.viterbi/1.init_viterbi.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

; Function Attrs: nounwind uwtable
define void @init_viterbi(%struct.param_viterbi_t* %param, i32 %in_rate) #0 {
entry:
  %param.addr = alloca %struct.param_viterbi_t*, align 8
  %in_rate.addr = alloca i32, align 4
  %Tabl = alloca [7 x [128 x i8]], align 16
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.param_viterbi_t* %param, %struct.param_viterbi_t** %param.addr, align 8
  store i32 %in_rate, i32* %in_rate.addr, align 4
  %0 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %1 = bitcast %struct.param_viterbi_t* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 19632, i32 8, i1 false)
  %2 = bitcast [7 x [128 x i8]]* %Tabl to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 896, i32 16, i1 false)
  %3 = load i32, i32* %in_rate.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.12
    i32 4, label %sw.bb.26
    i32 5, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct1 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %4, i32 0, i32 3
  %arrayidx = getelementptr inbounds [7 x i8], [7 x i8]* %punct1, i32 0, i64 0
  store i8 1, i8* %arrayidx, align 1
  %5 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct2 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %5, i32 0, i32 4
  %arrayidx1 = getelementptr inbounds [7 x i8], [7 x i8]* %punct2, i32 0, i64 0
  store i8 1, i8* %arrayidx1, align 1
  %6 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %n_in = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %6, i32 0, i32 5
  store i64 1, i64* %n_in, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct13 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %7, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [7 x i8], [7 x i8]* %punct13, i32 0, i64 0
  store i8 1, i8* %arrayidx4, align 1
  %8 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct15 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %8, i32 0, i32 3
  %arrayidx6 = getelementptr inbounds [7 x i8], [7 x i8]* %punct15, i32 0, i64 1
  store i8 0, i8* %arrayidx6, align 1
  %9 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct27 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %9, i32 0, i32 4
  %arrayidx8 = getelementptr inbounds [7 x i8], [7 x i8]* %punct27, i32 0, i64 0
  store i8 1, i8* %arrayidx8, align 1
  %10 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct29 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %10, i32 0, i32 4
  %arrayidx10 = getelementptr inbounds [7 x i8], [7 x i8]* %punct29, i32 0, i64 1
  store i8 1, i8* %arrayidx10, align 1
  %11 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %n_in11 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %11, i32 0, i32 5
  store i64 2, i64* %n_in11, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %12 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct113 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %12, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [7 x i8], [7 x i8]* %punct113, i32 0, i64 0
  store i8 1, i8* %arrayidx14, align 1
  %13 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct115 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %13, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [7 x i8], [7 x i8]* %punct115, i32 0, i64 1
  store i8 0, i8* %arrayidx16, align 1
  %14 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct117 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %14, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [7 x i8], [7 x i8]* %punct117, i32 0, i64 2
  store i8 1, i8* %arrayidx18, align 1
  %15 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct219 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %15, i32 0, i32 4
  %arrayidx20 = getelementptr inbounds [7 x i8], [7 x i8]* %punct219, i32 0, i64 0
  store i8 1, i8* %arrayidx20, align 1
  %16 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct221 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %16, i32 0, i32 4
  %arrayidx22 = getelementptr inbounds [7 x i8], [7 x i8]* %punct221, i32 0, i64 1
  store i8 1, i8* %arrayidx22, align 1
  %17 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct223 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %17, i32 0, i32 4
  %arrayidx24 = getelementptr inbounds [7 x i8], [7 x i8]* %punct223, i32 0, i64 2
  store i8 0, i8* %arrayidx24, align 1
  %18 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %n_in25 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %18, i32 0, i32 5
  store i64 3, i64* %n_in25, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %19 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct127 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %19, i32 0, i32 3
  %arrayidx28 = getelementptr inbounds [7 x i8], [7 x i8]* %punct127, i32 0, i64 0
  store i8 1, i8* %arrayidx28, align 1
  %20 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct129 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %20, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [7 x i8], [7 x i8]* %punct129, i32 0, i64 1
  store i8 0, i8* %arrayidx30, align 1
  %21 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct131 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %21, i32 0, i32 3
  %arrayidx32 = getelementptr inbounds [7 x i8], [7 x i8]* %punct131, i32 0, i64 2
  store i8 1, i8* %arrayidx32, align 1
  %22 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct133 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %22, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [7 x i8], [7 x i8]* %punct133, i32 0, i64 3
  store i8 0, i8* %arrayidx34, align 1
  %23 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct135 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %23, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [7 x i8], [7 x i8]* %punct135, i32 0, i64 4
  store i8 1, i8* %arrayidx36, align 1
  %24 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct237 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %24, i32 0, i32 4
  %arrayidx38 = getelementptr inbounds [7 x i8], [7 x i8]* %punct237, i32 0, i64 0
  store i8 1, i8* %arrayidx38, align 1
  %25 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct239 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %25, i32 0, i32 4
  %arrayidx40 = getelementptr inbounds [7 x i8], [7 x i8]* %punct239, i32 0, i64 1
  store i8 1, i8* %arrayidx40, align 1
  %26 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct241 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %26, i32 0, i32 4
  %arrayidx42 = getelementptr inbounds [7 x i8], [7 x i8]* %punct241, i32 0, i64 2
  store i8 0, i8* %arrayidx42, align 1
  %27 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct243 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %27, i32 0, i32 4
  %arrayidx44 = getelementptr inbounds [7 x i8], [7 x i8]* %punct243, i32 0, i64 3
  store i8 1, i8* %arrayidx44, align 1
  %28 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct245 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %28, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [7 x i8], [7 x i8]* %punct245, i32 0, i64 4
  store i8 0, i8* %arrayidx46, align 1
  %29 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %n_in47 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %29, i32 0, i32 5
  store i64 5, i64* %n_in47, align 8
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %30 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct149 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %30, i32 0, i32 3
  %arrayidx50 = getelementptr inbounds [7 x i8], [7 x i8]* %punct149, i32 0, i64 0
  store i8 1, i8* %arrayidx50, align 1
  %31 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct151 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %31, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [7 x i8], [7 x i8]* %punct151, i32 0, i64 1
  store i8 0, i8* %arrayidx52, align 1
  %32 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct153 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %32, i32 0, i32 3
  %arrayidx54 = getelementptr inbounds [7 x i8], [7 x i8]* %punct153, i32 0, i64 2
  store i8 0, i8* %arrayidx54, align 1
  %33 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct155 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %33, i32 0, i32 3
  %arrayidx56 = getelementptr inbounds [7 x i8], [7 x i8]* %punct155, i32 0, i64 3
  store i8 0, i8* %arrayidx56, align 1
  %34 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct157 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %34, i32 0, i32 3
  %arrayidx58 = getelementptr inbounds [7 x i8], [7 x i8]* %punct157, i32 0, i64 4
  store i8 1, i8* %arrayidx58, align 1
  %35 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct159 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %35, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [7 x i8], [7 x i8]* %punct159, i32 0, i64 5
  store i8 0, i8* %arrayidx60, align 1
  %36 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct161 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %36, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [7 x i8], [7 x i8]* %punct161, i32 0, i64 6
  store i8 1, i8* %arrayidx62, align 1
  %37 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct263 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %37, i32 0, i32 4
  %arrayidx64 = getelementptr inbounds [7 x i8], [7 x i8]* %punct263, i32 0, i64 0
  store i8 1, i8* %arrayidx64, align 1
  %38 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct265 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %38, i32 0, i32 4
  %arrayidx66 = getelementptr inbounds [7 x i8], [7 x i8]* %punct265, i32 0, i64 1
  store i8 1, i8* %arrayidx66, align 1
  %39 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct267 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %39, i32 0, i32 4
  %arrayidx68 = getelementptr inbounds [7 x i8], [7 x i8]* %punct267, i32 0, i64 2
  store i8 1, i8* %arrayidx68, align 1
  %40 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct269 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %40, i32 0, i32 4
  %arrayidx70 = getelementptr inbounds [7 x i8], [7 x i8]* %punct269, i32 0, i64 3
  store i8 1, i8* %arrayidx70, align 1
  %41 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct271 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %41, i32 0, i32 4
  %arrayidx72 = getelementptr inbounds [7 x i8], [7 x i8]* %punct271, i32 0, i64 4
  store i8 0, i8* %arrayidx72, align 1
  %42 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct273 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %42, i32 0, i32 4
  %arrayidx74 = getelementptr inbounds [7 x i8], [7 x i8]* %punct273, i32 0, i64 5
  store i8 1, i8* %arrayidx74, align 1
  %43 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct275 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %43, i32 0, i32 4
  %arrayidx76 = getelementptr inbounds [7 x i8], [7 x i8]* %punct275, i32 0, i64 6
  store i8 0, i8* %arrayidx76, align 1
  %44 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %n_in77 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %44, i32 0, i32 5
  store i64 7, i64* %n_in77, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.48, %sw.bb.26, %sw.bb.12, %sw.bb.2, %sw.bb
  %45 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nbits = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %45, i32 0, i32 0
  store i64 7, i64* %Nbits, align 8
  %46 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nbits78 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %46, i32 0, i32 0
  %47 = load i64, i64* %Nbits78, align 8
  %sh_prom = trunc i64 %47 to i32
  %shl = shl i32 1, %sh_prom
  %conv = sext i32 %shl to i64
  %48 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %48, i32 0, i32 1
  store i64 %conv, i64* %Nways, align 8
  %49 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Delay = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %49, i32 0, i32 2
  store i64 150, i64* %Delay, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %sw.epilog
  %50 = load i64, i64* %i, align 8
  %51 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways79 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %51, i32 0, i32 1
  %52 = load i64, i64* %Nways79, align 8
  %cmp = icmp ult i64 %50, %52
  br i1 %cmp, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %j, align 8
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc, %for.body
  %53 = load i64, i64* %j, align 8
  %cmp82 = icmp ult i64 %53, 7
  br i1 %cmp82, label %for.body.84, label %for.end

for.body.84:                                      ; preds = %for.cond.81
  %54 = load i64, i64* %i, align 8
  %55 = load i64, i64* %j, align 8
  %sh_prom85 = trunc i64 %55 to i32
  %shl86 = shl i32 1, %sh_prom85
  %conv87 = sext i32 %shl86 to i64
  %and = and i64 %54, %conv87
  %cmp88 = icmp ne i64 %and, 0
  %conv89 = zext i1 %cmp88 to i32
  %conv90 = trunc i32 %conv89 to i8
  %56 = load i64, i64* %i, align 8
  %57 = load i64, i64* %j, align 8
  %sub = sub i64 6, %57
  %arrayidx91 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 %sub
  %arrayidx92 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx91, i32 0, i64 %56
  store i8 %conv90, i8* %arrayidx92, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.84
  %58 = load i64, i64* %j, align 8
  %inc = add i64 %58, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.81

for.end:                                          ; preds = %for.cond.81
  br label %for.inc.93

for.inc.93:                                       ; preds = %for.end
  %59 = load i64, i64* %i, align 8
  %inc94 = add i64 %59, 1
  store i64 %inc94, i64* %i, align 8
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.96

for.cond.96:                                      ; preds = %for.inc.134, %for.end.95
  %60 = load i64, i64* %i, align 8
  %61 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways97 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %61, i32 0, i32 1
  %62 = load i64, i64* %Nways97, align 8
  %cmp98 = icmp ult i64 %60, %62
  br i1 %cmp98, label %for.body.100, label %for.end.136

for.body.100:                                     ; preds = %for.cond.96
  %63 = load i64, i64* %i, align 8
  %arrayidx101 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 0
  %arrayidx102 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx101, i32 0, i64 %63
  %64 = load i8, i8* %arrayidx102, align 1
  %conv103 = zext i8 %64 to i32
  %65 = load i64, i64* %i, align 8
  %arrayidx104 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 1
  %arrayidx105 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx104, i32 0, i64 %65
  %66 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %66 to i32
  %xor = xor i32 %conv103, %conv106
  %67 = load i64, i64* %i, align 8
  %arrayidx107 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 2
  %arrayidx108 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx107, i32 0, i64 %67
  %68 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %68 to i32
  %xor110 = xor i32 %xor, %conv109
  %69 = load i64, i64* %i, align 8
  %arrayidx111 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 5
  %arrayidx112 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx111, i32 0, i64 %69
  %70 = load i8, i8* %arrayidx112, align 1
  %conv113 = zext i8 %70 to i32
  %xor114 = xor i32 %xor110, %conv113
  %conv115 = trunc i32 %xor114 to i8
  %71 = load i64, i64* %i, align 8
  %72 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Tabl_X = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %72, i32 0, i32 6
  %arrayidx116 = getelementptr inbounds [128 x i8], [128 x i8]* %Tabl_X, i32 0, i64 %71
  store i8 %conv115, i8* %arrayidx116, align 1
  %73 = load i64, i64* %i, align 8
  %arrayidx117 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 1
  %arrayidx118 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx117, i32 0, i64 %73
  %74 = load i8, i8* %arrayidx118, align 1
  %conv119 = zext i8 %74 to i32
  %75 = load i64, i64* %i, align 8
  %arrayidx120 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 2
  %arrayidx121 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx120, i32 0, i64 %75
  %76 = load i8, i8* %arrayidx121, align 1
  %conv122 = zext i8 %76 to i32
  %xor123 = xor i32 %conv119, %conv122
  %77 = load i64, i64* %i, align 8
  %arrayidx124 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 4
  %arrayidx125 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx124, i32 0, i64 %77
  %78 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %78 to i32
  %xor127 = xor i32 %xor123, %conv126
  %79 = load i64, i64* %i, align 8
  %arrayidx128 = getelementptr inbounds [7 x [128 x i8]], [7 x [128 x i8]]* %Tabl, i32 0, i64 5
  %arrayidx129 = getelementptr inbounds [128 x i8], [128 x i8]* %arrayidx128, i32 0, i64 %79
  %80 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %80 to i32
  %xor131 = xor i32 %xor127, %conv130
  %conv132 = trunc i32 %xor131 to i8
  %81 = load i64, i64* %i, align 8
  %82 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Tabl_Y = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %82, i32 0, i32 7
  %arrayidx133 = getelementptr inbounds [128 x i8], [128 x i8]* %Tabl_Y, i32 0, i64 %81
  store i8 %conv132, i8* %arrayidx133, align 1
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.body.100
  %83 = load i64, i64* %i, align 8
  %inc135 = add i64 %83, 1
  store i64 %inc135, i64* %i, align 8
  br label %for.cond.96

for.end.136:                                      ; preds = %for.cond.96
  store i64 0, i64* %i, align 8
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.143, %for.end.136
  %84 = load i64, i64* %i, align 8
  %85 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways138 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %85, i32 0, i32 1
  %86 = load i64, i64* %Nways138, align 8
  %cmp139 = icmp ult i64 %84, %86
  br i1 %cmp139, label %for.body.141, label %for.end.145

for.body.141:                                     ; preds = %for.cond.137
  %87 = load i64, i64* %i, align 8
  %88 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Metr = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %88, i32 0, i32 8
  %arrayidx142 = getelementptr inbounds [128 x double], [128 x double]* %Metr, i32 0, i64 %87
  store double 1.000000e+06, double* %arrayidx142, align 8
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.141
  %89 = load i64, i64* %i, align 8
  %inc144 = add i64 %89, 1
  store i64 %inc144, i64* %i, align 8
  br label %for.cond.137

for.end.145:                                      ; preds = %for.cond.137
  %90 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Metr146 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %90, i32 0, i32 8
  %arrayidx147 = getelementptr inbounds [128 x double], [128 x double]* %Metr146, i32 0, i64 0
  store double 0.000000e+00, double* %arrayidx147, align 8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
