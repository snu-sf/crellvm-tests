; ModuleID = './MultiSource.Applications.viterbi/3.dec_viterbi_F.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvector = type { i64, double* }
%struct.bitvector = type { i64, i8* }
%struct.dvarray = type { i64, %struct.dvector* }
%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

; Function Attrs: nounwind uwtable
define void @dec_viterbi_F(%struct.dvector* %Metr_mem, i8* %history_mem, %struct.bitvector* %bit_stream, %struct.dvarray* %Dist, %struct.param_viterbi_t* %param, i64 %n) #0 {
entry:
  %Metr_mem.addr = alloca %struct.dvector*, align 8
  %history_mem.addr = alloca i8*, align 8
  %bit_stream.addr = alloca %struct.bitvector*, align 8
  %Dist.addr = alloca %struct.dvarray*, align 8
  %param.addr = alloca %struct.param_viterbi_t*, align 8
  %n.addr = alloca i64, align 8
  %i_in = alloca i64, align 8
  %i_punct = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %vote = alloca i64, align 8
  %bv = alloca i64, align 8
  %Metr0 = alloca double*, align 8
  %Metr1 = alloca double*, align 8
  %Metr = alloca double*, align 8
  %X0 = alloca i8, align 1
  %X1 = alloca i8, align 1
  %Y0 = alloca i8, align 1
  %Y1 = alloca i8, align 1
  %history = alloca [128 x [143 x i8]], align 16
  %history_new = alloca [128 x [144 x i8]], align 16
  store %struct.dvector* %Metr_mem, %struct.dvector** %Metr_mem.addr, align 8
  store i8* %history_mem, i8** %history_mem.addr, align 8
  store %struct.bitvector* %bit_stream, %struct.bitvector** %bit_stream.addr, align 8
  store %struct.dvarray* %Dist, %struct.dvarray** %Dist.addr, align 8
  store %struct.param_viterbi_t* %param, %struct.param_viterbi_t** %param.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i64 0, i64* %i_in, align 8
  store i64 0, i64* %bv, align 8
  %0 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %length = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i32 0, i32 0
  %1 = load i64, i64* %length, align 8
  %tobool = icmp ne i64 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  call void @bitvector_clear(%struct.bitvector* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.dvarray*, %struct.dvarray** %Dist.addr, align 8
  %data = getelementptr inbounds %struct.dvarray, %struct.dvarray* %4, i32 0, i32 1
  %5 = load %struct.dvector*, %struct.dvector** %data, align 8
  %arrayidx = getelementptr inbounds %struct.dvector, %struct.dvector* %5, i64 0
  %length2 = getelementptr inbounds %struct.dvector, %struct.dvector* %arrayidx, i32 0, i32 0
  %6 = load i64, i64* %length2, align 8
  store i64 %6, i64* %n.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %7 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %8 = load i64, i64* %n.addr, align 8
  call void @bitvector_init(%struct.bitvector* %7, i64 %8)
  %9 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %length4 = getelementptr inbounds %struct.dvector, %struct.dvector* %9, i32 0, i32 0
  %10 = load i64, i64* %length4, align 8
  %mul = mul i64 %10, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %11 = bitcast i8* %call to double*
  store double* %11, double** %Metr, align 8
  %12 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %length5 = getelementptr inbounds %struct.dvector, %struct.dvector* %12, i32 0, i32 0
  %13 = load i64, i64* %length5, align 8
  %mul6 = mul i64 %13, 8
  %call7 = call noalias i8* @malloc(i64 %mul6) #3
  %14 = bitcast i8* %call7 to double*
  store double* %14, double** %Metr0, align 8
  %15 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %length8 = getelementptr inbounds %struct.dvector, %struct.dvector* %15, i32 0, i32 0
  %16 = load i64, i64* %length8, align 8
  %mul9 = mul i64 %16, 8
  %call10 = call noalias i8* @malloc(i64 %mul9) #3
  %17 = bitcast i8* %call10 to double*
  store double* %17, double** %Metr1, align 8
  %18 = load double*, double** %Metr, align 8
  %19 = bitcast double* %18 to i8*
  %20 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %data11 = getelementptr inbounds %struct.dvector, %struct.dvector* %20, i32 0, i32 1
  %21 = load double*, double** %data11, align 8
  %22 = bitcast double* %21 to i8*
  %23 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %length12 = getelementptr inbounds %struct.dvector, %struct.dvector* %23, i32 0, i32 0
  %24 = load i64, i64* %length12, align 8
  %mul13 = mul i64 %24, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %22, i64 %mul13, i32 8, i1 false)
  %25 = bitcast [128 x [143 x i8]]* %history to i8*
  %26 = load i8*, i8** %history_mem.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 18304, i32 1, i1 false)
  store i64 0, i64* %i_punct, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.261, %if.end.3
  %27 = load i64, i64* %i_in, align 8
  %28 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %length14 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %28, i32 0, i32 0
  %29 = load i64, i64* %length14, align 8
  %cmp15 = icmp ult i64 %27, %29
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load double*, double** %Metr0, align 8
  %31 = bitcast double* %30 to i8*
  %32 = load double*, double** %Metr, align 8
  %33 = bitcast double* %32 to i8*
  %34 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %length16 = getelementptr inbounds %struct.dvector, %struct.dvector* %34, i32 0, i32 0
  %35 = load i64, i64* %length16, align 8
  %mul17 = mul i64 %35, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %33, i64 %mul17, i32 8, i1 false)
  %36 = load double*, double** %Metr1, align 8
  %37 = bitcast double* %36 to i8*
  %38 = load double*, double** %Metr, align 8
  %39 = bitcast double* %38 to i8*
  %40 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %length18 = getelementptr inbounds %struct.dvector, %struct.dvector* %40, i32 0, i32 0
  %41 = load i64, i64* %length18, align 8
  %mul19 = mul i64 %41, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 %mul19, i32 8, i1 false)
  %42 = load i64, i64* %i_punct, align 8
  %43 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct1 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %43, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [7 x i8], [7 x i8]* %punct1, i32 0, i64 %42
  %44 = load i8, i8* %arrayidx20, align 1
  %conv = zext i8 %44 to i32
  %cmp21 = icmp eq i32 %conv, 1
  br i1 %cmp21, label %if.then.23, label %if.end.46

if.then.23:                                       ; preds = %while.body
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %46, i32 0, i32 1
  %47 = load i64, i64* %Nways, align 8
  %cmp24 = icmp ult i64 %45, %47
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i64, i64* %i, align 8
  %49 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Tabl_X = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %49, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [128 x i8], [128 x i8]* %Tabl_X, i32 0, i64 %48
  %50 = load i8, i8* %arrayidx26, align 1
  store i8 %50, i8* %X0, align 1
  %51 = load i64, i64* %i, align 8
  %52 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Tabl_X27 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %52, i32 0, i32 6
  %arrayidx28 = getelementptr inbounds [128 x i8], [128 x i8]* %Tabl_X27, i32 0, i64 %51
  %53 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %53 to i32
  %sub = sub nsw i32 1, %conv29
  %conv30 = trunc i32 %sub to i8
  store i8 %conv30, i8* %X1, align 1
  %54 = load i64, i64* %i, align 8
  %55 = load double*, double** %Metr0, align 8
  %arrayidx31 = getelementptr inbounds double, double* %55, i64 %54
  %56 = load double, double* %arrayidx31, align 8
  %57 = load i64, i64* %i_in, align 8
  %58 = load i8, i8* %X0, align 1
  %idxprom = sext i8 %58 to i64
  %59 = load %struct.dvarray*, %struct.dvarray** %Dist.addr, align 8
  %data32 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %59, i32 0, i32 1
  %60 = load %struct.dvector*, %struct.dvector** %data32, align 8
  %arrayidx33 = getelementptr inbounds %struct.dvector, %struct.dvector* %60, i64 %idxprom
  %data34 = getelementptr inbounds %struct.dvector, %struct.dvector* %arrayidx33, i32 0, i32 1
  %61 = load double*, double** %data34, align 8
  %arrayidx35 = getelementptr inbounds double, double* %61, i64 %57
  %62 = load double, double* %arrayidx35, align 8
  %add = fadd double %56, %62
  %63 = load i64, i64* %i, align 8
  %64 = load double*, double** %Metr0, align 8
  %arrayidx36 = getelementptr inbounds double, double* %64, i64 %63
  store double %add, double* %arrayidx36, align 8
  %65 = load i64, i64* %i, align 8
  %66 = load double*, double** %Metr1, align 8
  %arrayidx37 = getelementptr inbounds double, double* %66, i64 %65
  %67 = load double, double* %arrayidx37, align 8
  %68 = load i64, i64* %i_in, align 8
  %69 = load i8, i8* %X1, align 1
  %idxprom38 = sext i8 %69 to i64
  %70 = load %struct.dvarray*, %struct.dvarray** %Dist.addr, align 8
  %data39 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %70, i32 0, i32 1
  %71 = load %struct.dvector*, %struct.dvector** %data39, align 8
  %arrayidx40 = getelementptr inbounds %struct.dvector, %struct.dvector* %71, i64 %idxprom38
  %data41 = getelementptr inbounds %struct.dvector, %struct.dvector* %arrayidx40, i32 0, i32 1
  %72 = load double*, double** %data41, align 8
  %arrayidx42 = getelementptr inbounds double, double* %72, i64 %68
  %73 = load double, double* %arrayidx42, align 8
  %add43 = fadd double %67, %73
  %74 = load i64, i64* %i, align 8
  %75 = load double*, double** %Metr1, align 8
  %arrayidx44 = getelementptr inbounds double, double* %75, i64 %74
  store double %add43, double* %arrayidx44, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load i64, i64* %i, align 8
  %inc = add i64 %76, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load i64, i64* %i_in, align 8
  %inc45 = add i64 %77, 1
  store i64 %inc45, i64* %i_in, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %for.end, %while.body
  %78 = load i64, i64* %i_punct, align 8
  %79 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %punct2 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %79, i32 0, i32 4
  %arrayidx47 = getelementptr inbounds [7 x i8], [7 x i8]* %punct2, i32 0, i64 %78
  %80 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %80 to i32
  %cmp49 = icmp eq i32 %conv48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.88

if.then.51:                                       ; preds = %if.end.46
  %81 = load i64, i64* %i_in, align 8
  %82 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %length52 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %82, i32 0, i32 0
  %83 = load i64, i64* %length52, align 8
  %cmp53 = icmp uge i64 %81, %83
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.51
  store i64 0, i64* %i, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.84, %if.end.56
  %84 = load i64, i64* %i, align 8
  %85 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways58 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %85, i32 0, i32 1
  %86 = load i64, i64* %Nways58, align 8
  %cmp59 = icmp ult i64 %84, %86
  br i1 %cmp59, label %for.body.61, label %for.end.86

for.body.61:                                      ; preds = %for.cond.57
  %87 = load i64, i64* %i, align 8
  %88 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Tabl_Y = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %88, i32 0, i32 7
  %arrayidx62 = getelementptr inbounds [128 x i8], [128 x i8]* %Tabl_Y, i32 0, i64 %87
  %89 = load i8, i8* %arrayidx62, align 1
  store i8 %89, i8* %Y0, align 1
  %90 = load i64, i64* %i, align 8
  %91 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Tabl_Y63 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %91, i32 0, i32 7
  %arrayidx64 = getelementptr inbounds [128 x i8], [128 x i8]* %Tabl_Y63, i32 0, i64 %90
  %92 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %92 to i32
  %sub66 = sub nsw i32 1, %conv65
  %conv67 = trunc i32 %sub66 to i8
  store i8 %conv67, i8* %Y1, align 1
  %93 = load i64, i64* %i, align 8
  %94 = load double*, double** %Metr0, align 8
  %arrayidx68 = getelementptr inbounds double, double* %94, i64 %93
  %95 = load double, double* %arrayidx68, align 8
  %96 = load i64, i64* %i_in, align 8
  %97 = load i8, i8* %Y0, align 1
  %idxprom69 = sext i8 %97 to i64
  %98 = load %struct.dvarray*, %struct.dvarray** %Dist.addr, align 8
  %data70 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %98, i32 0, i32 1
  %99 = load %struct.dvector*, %struct.dvector** %data70, align 8
  %arrayidx71 = getelementptr inbounds %struct.dvector, %struct.dvector* %99, i64 %idxprom69
  %data72 = getelementptr inbounds %struct.dvector, %struct.dvector* %arrayidx71, i32 0, i32 1
  %100 = load double*, double** %data72, align 8
  %arrayidx73 = getelementptr inbounds double, double* %100, i64 %96
  %101 = load double, double* %arrayidx73, align 8
  %add74 = fadd double %95, %101
  %102 = load i64, i64* %i, align 8
  %103 = load double*, double** %Metr0, align 8
  %arrayidx75 = getelementptr inbounds double, double* %103, i64 %102
  store double %add74, double* %arrayidx75, align 8
  %104 = load i64, i64* %i, align 8
  %105 = load double*, double** %Metr1, align 8
  %arrayidx76 = getelementptr inbounds double, double* %105, i64 %104
  %106 = load double, double* %arrayidx76, align 8
  %107 = load i64, i64* %i_in, align 8
  %108 = load i8, i8* %Y1, align 1
  %idxprom77 = sext i8 %108 to i64
  %109 = load %struct.dvarray*, %struct.dvarray** %Dist.addr, align 8
  %data78 = getelementptr inbounds %struct.dvarray, %struct.dvarray* %109, i32 0, i32 1
  %110 = load %struct.dvector*, %struct.dvector** %data78, align 8
  %arrayidx79 = getelementptr inbounds %struct.dvector, %struct.dvector* %110, i64 %idxprom77
  %data80 = getelementptr inbounds %struct.dvector, %struct.dvector* %arrayidx79, i32 0, i32 1
  %111 = load double*, double** %data80, align 8
  %arrayidx81 = getelementptr inbounds double, double* %111, i64 %107
  %112 = load double, double* %arrayidx81, align 8
  %add82 = fadd double %106, %112
  %113 = load i64, i64* %i, align 8
  %114 = load double*, double** %Metr1, align 8
  %arrayidx83 = getelementptr inbounds double, double* %114, i64 %113
  store double %add82, double* %arrayidx83, align 8
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.61
  %115 = load i64, i64* %i, align 8
  %inc85 = add i64 %115, 1
  store i64 %inc85, i64* %i, align 8
  br label %for.cond.57

for.end.86:                                       ; preds = %for.cond.57
  %116 = load i64, i64* %i_in, align 8
  %inc87 = add i64 %116, 1
  store i64 %inc87, i64* %i_in, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.86, %if.end.46
  store i64 0, i64* %i, align 8
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.207, %if.end.88
  %117 = load i64, i64* %i, align 8
  %118 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways90 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %118, i32 0, i32 1
  %119 = load i64, i64* %Nways90, align 8
  %div = udiv i64 %119, 2
  %cmp91 = icmp ult i64 %117, %div
  br i1 %cmp91, label %for.body.93, label %for.end.209

for.body.93:                                      ; preds = %for.cond.89
  %120 = load i64, i64* %i, align 8
  %mul94 = mul i64 2, %120
  %121 = load double*, double** %Metr0, align 8
  %arrayidx95 = getelementptr inbounds double, double* %121, i64 %mul94
  %122 = load double, double* %arrayidx95, align 8
  %123 = load i64, i64* %i, align 8
  %mul96 = mul i64 2, %123
  %add97 = add i64 %mul96, 1
  %124 = load double*, double** %Metr0, align 8
  %arrayidx98 = getelementptr inbounds double, double* %124, i64 %add97
  %125 = load double, double* %arrayidx98, align 8
  %cmp99 = fcmp ole double %122, %125
  br i1 %cmp99, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %for.body.93
  %126 = load i64, i64* %i, align 8
  %mul102 = mul i64 2, %126
  %127 = load double*, double** %Metr0, align 8
  %arrayidx103 = getelementptr inbounds double, double* %127, i64 %mul102
  %128 = load double, double* %arrayidx103, align 8
  %129 = load i64, i64* %i, align 8
  %130 = load double*, double** %Metr, align 8
  %arrayidx104 = getelementptr inbounds double, double* %130, i64 %129
  store double %128, double* %arrayidx104, align 8
  %131 = load i64, i64* %i, align 8
  %arrayidx105 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %131
  %arrayidx106 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx105, i32 0, i64 0
  store i8 0, i8* %arrayidx106, align 1
  store i64 0, i64* %j, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.117, %if.then.101
  %132 = load i64, i64* %j, align 8
  %cmp108 = icmp ult i64 %132, 143
  br i1 %cmp108, label %for.body.110, label %for.end.119

for.body.110:                                     ; preds = %for.cond.107
  %133 = load i64, i64* %j, align 8
  %134 = load i64, i64* %i, align 8
  %mul111 = mul i64 2, %134
  %arrayidx112 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %history, i32 0, i64 %mul111
  %arrayidx113 = getelementptr inbounds [143 x i8], [143 x i8]* %arrayidx112, i32 0, i64 %133
  %135 = load i8, i8* %arrayidx113, align 1
  %136 = load i64, i64* %j, align 8
  %add114 = add i64 %136, 1
  %137 = load i64, i64* %i, align 8
  %arrayidx115 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %137
  %arrayidx116 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx115, i32 0, i64 %add114
  store i8 %135, i8* %arrayidx116, align 1
  br label %for.inc.117

for.inc.117:                                      ; preds = %for.body.110
  %138 = load i64, i64* %j, align 8
  %inc118 = add i64 %138, 1
  store i64 %inc118, i64* %j, align 8
  br label %for.cond.107

for.end.119:                                      ; preds = %for.cond.107
  br label %if.end.140

if.else:                                          ; preds = %for.body.93
  %139 = load i64, i64* %i, align 8
  %mul120 = mul i64 2, %139
  %add121 = add i64 %mul120, 1
  %140 = load double*, double** %Metr0, align 8
  %arrayidx122 = getelementptr inbounds double, double* %140, i64 %add121
  %141 = load double, double* %arrayidx122, align 8
  %142 = load i64, i64* %i, align 8
  %143 = load double*, double** %Metr, align 8
  %arrayidx123 = getelementptr inbounds double, double* %143, i64 %142
  store double %141, double* %arrayidx123, align 8
  %144 = load i64, i64* %i, align 8
  %arrayidx124 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %144
  %arrayidx125 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx124, i32 0, i64 0
  store i8 1, i8* %arrayidx125, align 1
  store i64 0, i64* %j, align 8
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.137, %if.else
  %145 = load i64, i64* %j, align 8
  %cmp127 = icmp ult i64 %145, 143
  br i1 %cmp127, label %for.body.129, label %for.end.139

for.body.129:                                     ; preds = %for.cond.126
  %146 = load i64, i64* %j, align 8
  %147 = load i64, i64* %i, align 8
  %mul130 = mul i64 2, %147
  %add131 = add i64 %mul130, 1
  %arrayidx132 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %history, i32 0, i64 %add131
  %arrayidx133 = getelementptr inbounds [143 x i8], [143 x i8]* %arrayidx132, i32 0, i64 %146
  %148 = load i8, i8* %arrayidx133, align 1
  %149 = load i64, i64* %j, align 8
  %add134 = add i64 %149, 1
  %150 = load i64, i64* %i, align 8
  %arrayidx135 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %150
  %arrayidx136 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx135, i32 0, i64 %add134
  store i8 %148, i8* %arrayidx136, align 1
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.129
  %151 = load i64, i64* %j, align 8
  %inc138 = add i64 %151, 1
  store i64 %inc138, i64* %j, align 8
  br label %for.cond.126

for.end.139:                                      ; preds = %for.cond.126
  br label %if.end.140

if.end.140:                                       ; preds = %for.end.139, %for.end.119
  %152 = load i64, i64* %i, align 8
  %mul141 = mul i64 2, %152
  %153 = load double*, double** %Metr1, align 8
  %arrayidx142 = getelementptr inbounds double, double* %153, i64 %mul141
  %154 = load double, double* %arrayidx142, align 8
  %155 = load i64, i64* %i, align 8
  %mul143 = mul i64 2, %155
  %add144 = add i64 %mul143, 1
  %156 = load double*, double** %Metr1, align 8
  %arrayidx145 = getelementptr inbounds double, double* %156, i64 %add144
  %157 = load double, double* %arrayidx145, align 8
  %cmp146 = fcmp ole double %154, %157
  br i1 %cmp146, label %if.then.148, label %if.else.176

if.then.148:                                      ; preds = %if.end.140
  %158 = load i64, i64* %i, align 8
  %mul149 = mul i64 2, %158
  %159 = load double*, double** %Metr1, align 8
  %arrayidx150 = getelementptr inbounds double, double* %159, i64 %mul149
  %160 = load double, double* %arrayidx150, align 8
  %161 = load i64, i64* %i, align 8
  %162 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways151 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %162, i32 0, i32 1
  %163 = load i64, i64* %Nways151, align 8
  %div152 = udiv i64 %163, 2
  %add153 = add i64 %161, %div152
  %164 = load double*, double** %Metr, align 8
  %arrayidx154 = getelementptr inbounds double, double* %164, i64 %add153
  store double %160, double* %arrayidx154, align 8
  %165 = load i64, i64* %i, align 8
  %166 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways155 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %166, i32 0, i32 1
  %167 = load i64, i64* %Nways155, align 8
  %div156 = udiv i64 %167, 2
  %add157 = add i64 %165, %div156
  %arrayidx158 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %add157
  %arrayidx159 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx158, i32 0, i64 0
  store i8 0, i8* %arrayidx159, align 1
  store i64 0, i64* %j, align 8
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.173, %if.then.148
  %168 = load i64, i64* %j, align 8
  %cmp161 = icmp ult i64 %168, 143
  br i1 %cmp161, label %for.body.163, label %for.end.175

for.body.163:                                     ; preds = %for.cond.160
  %169 = load i64, i64* %j, align 8
  %170 = load i64, i64* %i, align 8
  %mul164 = mul i64 2, %170
  %arrayidx165 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %history, i32 0, i64 %mul164
  %arrayidx166 = getelementptr inbounds [143 x i8], [143 x i8]* %arrayidx165, i32 0, i64 %169
  %171 = load i8, i8* %arrayidx166, align 1
  %172 = load i64, i64* %j, align 8
  %add167 = add i64 %172, 1
  %173 = load i64, i64* %i, align 8
  %174 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways168 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %174, i32 0, i32 1
  %175 = load i64, i64* %Nways168, align 8
  %div169 = udiv i64 %175, 2
  %add170 = add i64 %173, %div169
  %arrayidx171 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %add170
  %arrayidx172 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx171, i32 0, i64 %add167
  store i8 %171, i8* %arrayidx172, align 1
  br label %for.inc.173

for.inc.173:                                      ; preds = %for.body.163
  %176 = load i64, i64* %j, align 8
  %inc174 = add i64 %176, 1
  store i64 %inc174, i64* %j, align 8
  br label %for.cond.160

for.end.175:                                      ; preds = %for.cond.160
  br label %if.end.206

if.else.176:                                      ; preds = %if.end.140
  %177 = load i64, i64* %i, align 8
  %mul177 = mul i64 2, %177
  %add178 = add i64 %mul177, 1
  %178 = load double*, double** %Metr1, align 8
  %arrayidx179 = getelementptr inbounds double, double* %178, i64 %add178
  %179 = load double, double* %arrayidx179, align 8
  %180 = load i64, i64* %i, align 8
  %181 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways180 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %181, i32 0, i32 1
  %182 = load i64, i64* %Nways180, align 8
  %div181 = udiv i64 %182, 2
  %add182 = add i64 %180, %div181
  %183 = load double*, double** %Metr, align 8
  %arrayidx183 = getelementptr inbounds double, double* %183, i64 %add182
  store double %179, double* %arrayidx183, align 8
  %184 = load i64, i64* %i, align 8
  %185 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways184 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %185, i32 0, i32 1
  %186 = load i64, i64* %Nways184, align 8
  %div185 = udiv i64 %186, 2
  %add186 = add i64 %184, %div185
  %arrayidx187 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %add186
  %arrayidx188 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx187, i32 0, i64 0
  store i8 1, i8* %arrayidx188, align 1
  store i64 0, i64* %j, align 8
  br label %for.cond.189

for.cond.189:                                     ; preds = %for.inc.203, %if.else.176
  %187 = load i64, i64* %j, align 8
  %cmp190 = icmp ult i64 %187, 143
  br i1 %cmp190, label %for.body.192, label %for.end.205

for.body.192:                                     ; preds = %for.cond.189
  %188 = load i64, i64* %j, align 8
  %189 = load i64, i64* %i, align 8
  %mul193 = mul i64 2, %189
  %add194 = add i64 %mul193, 1
  %arrayidx195 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %history, i32 0, i64 %add194
  %arrayidx196 = getelementptr inbounds [143 x i8], [143 x i8]* %arrayidx195, i32 0, i64 %188
  %190 = load i8, i8* %arrayidx196, align 1
  %191 = load i64, i64* %j, align 8
  %add197 = add i64 %191, 1
  %192 = load i64, i64* %i, align 8
  %193 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways198 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %193, i32 0, i32 1
  %194 = load i64, i64* %Nways198, align 8
  %div199 = udiv i64 %194, 2
  %add200 = add i64 %192, %div199
  %arrayidx201 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %add200
  %arrayidx202 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx201, i32 0, i64 %add197
  store i8 %190, i8* %arrayidx202, align 1
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.body.192
  %195 = load i64, i64* %j, align 8
  %inc204 = add i64 %195, 1
  store i64 %inc204, i64* %j, align 8
  br label %for.cond.189

for.end.205:                                      ; preds = %for.cond.189
  br label %if.end.206

if.end.206:                                       ; preds = %for.end.205, %for.end.175
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.206
  %196 = load i64, i64* %i, align 8
  %inc208 = add i64 %196, 1
  store i64 %inc208, i64* %i, align 8
  br label %for.cond.89

for.end.209:                                      ; preds = %for.cond.89
  store i64 0, i64* %i, align 8
  store i64 0, i64* %vote, align 8
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.222, %for.end.209
  %197 = load i64, i64* %i, align 8
  %198 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways211 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %198, i32 0, i32 1
  %199 = load i64, i64* %Nways211, align 8
  %cmp212 = icmp ult i64 %197, %199
  br i1 %cmp212, label %for.body.214, label %for.end.224

for.body.214:                                     ; preds = %for.cond.210
  %200 = load i64, i64* %i, align 8
  %arrayidx215 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %200
  %arrayidx216 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx215, i32 0, i64 143
  %201 = load i8, i8* %arrayidx216, align 1
  %conv217 = zext i8 %201 to i32
  %cmp218 = icmp eq i32 %conv217, 0
  %conv219 = zext i1 %cmp218 to i32
  %conv220 = sext i32 %conv219 to i64
  %202 = load i64, i64* %vote, align 8
  %add221 = add i64 %202, %conv220
  store i64 %add221, i64* %vote, align 8
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body.214
  %203 = load i64, i64* %i, align 8
  %inc223 = add i64 %203, 1
  store i64 %inc223, i64* %i, align 8
  br label %for.cond.210

for.end.224:                                      ; preds = %for.cond.210
  %204 = load i64, i64* %vote, align 8
  %205 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways225 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %205, i32 0, i32 1
  %206 = load i64, i64* %Nways225, align 8
  %div226 = udiv i64 %206, 2
  %cmp227 = icmp uge i64 %204, %div226
  br i1 %cmp227, label %if.then.229, label %if.else.233

if.then.229:                                      ; preds = %for.end.224
  %207 = load i64, i64* %bv, align 8
  %inc230 = add i64 %207, 1
  store i64 %inc230, i64* %bv, align 8
  %208 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %data231 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %208, i32 0, i32 1
  %209 = load i8*, i8** %data231, align 8
  %arrayidx232 = getelementptr inbounds i8, i8* %209, i64 %207
  store i8 0, i8* %arrayidx232, align 1
  br label %if.end.237

if.else.233:                                      ; preds = %for.end.224
  %210 = load i64, i64* %bv, align 8
  %inc234 = add i64 %210, 1
  store i64 %inc234, i64* %bv, align 8
  %211 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %data235 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %211, i32 0, i32 1
  %212 = load i8*, i8** %data235, align 8
  %arrayidx236 = getelementptr inbounds i8, i8* %212, i64 %210
  store i8 1, i8* %arrayidx236, align 1
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.233, %if.then.229
  store i64 0, i64* %i, align 8
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.254, %if.end.237
  %213 = load i64, i64* %i, align 8
  %214 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %Nways239 = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %214, i32 0, i32 1
  %215 = load i64, i64* %Nways239, align 8
  %cmp240 = icmp ult i64 %213, %215
  br i1 %cmp240, label %for.body.242, label %for.end.256

for.body.242:                                     ; preds = %for.cond.238
  store i64 0, i64* %j, align 8
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.251, %for.body.242
  %216 = load i64, i64* %j, align 8
  %cmp244 = icmp ult i64 %216, 143
  br i1 %cmp244, label %for.body.246, label %for.end.253

for.body.246:                                     ; preds = %for.cond.243
  %217 = load i64, i64* %j, align 8
  %218 = load i64, i64* %i, align 8
  %arrayidx247 = getelementptr inbounds [128 x [144 x i8]], [128 x [144 x i8]]* %history_new, i32 0, i64 %218
  %arrayidx248 = getelementptr inbounds [144 x i8], [144 x i8]* %arrayidx247, i32 0, i64 %217
  %219 = load i8, i8* %arrayidx248, align 1
  %220 = load i64, i64* %j, align 8
  %221 = load i64, i64* %i, align 8
  %arrayidx249 = getelementptr inbounds [128 x [143 x i8]], [128 x [143 x i8]]* %history, i32 0, i64 %221
  %arrayidx250 = getelementptr inbounds [143 x i8], [143 x i8]* %arrayidx249, i32 0, i64 %220
  store i8 %219, i8* %arrayidx250, align 1
  br label %for.inc.251

for.inc.251:                                      ; preds = %for.body.246
  %222 = load i64, i64* %j, align 8
  %inc252 = add i64 %222, 1
  store i64 %inc252, i64* %j, align 8
  br label %for.cond.243

for.end.253:                                      ; preds = %for.cond.243
  br label %for.inc.254

for.inc.254:                                      ; preds = %for.end.253
  %223 = load i64, i64* %i, align 8
  %inc255 = add i64 %223, 1
  store i64 %inc255, i64* %i, align 8
  br label %for.cond.238

for.end.256:                                      ; preds = %for.cond.238
  %224 = load i64, i64* %i_punct, align 8
  %inc257 = add i64 %224, 1
  store i64 %inc257, i64* %i_punct, align 8
  %225 = load %struct.param_viterbi_t*, %struct.param_viterbi_t** %param.addr, align 8
  %n_in = getelementptr inbounds %struct.param_viterbi_t, %struct.param_viterbi_t* %225, i32 0, i32 5
  %226 = load i64, i64* %n_in, align 8
  %cmp258 = icmp eq i64 %inc257, %226
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %for.end.256
  store i64 0, i64* %i_punct, align 8
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.260, %for.end.256
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %227 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %data262 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %227, i32 0, i32 1
  %228 = load i8*, i8** %data262, align 8
  %229 = load i64, i64* %bv, align 8
  %mul263 = mul i64 %229, 1
  %call264 = call i8* @realloc(i8* %228, i64 %mul263) #3
  %230 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %data265 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %230, i32 0, i32 1
  store i8* %call264, i8** %data265, align 8
  %231 = load i64, i64* %bv, align 8
  %232 = load %struct.bitvector*, %struct.bitvector** %bit_stream.addr, align 8
  %length266 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %232, i32 0, i32 0
  store i64 %231, i64* %length266, align 8
  %233 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %data267 = getelementptr inbounds %struct.dvector, %struct.dvector* %233, i32 0, i32 1
  %234 = load double*, double** %data267, align 8
  %235 = bitcast double* %234 to i8*
  %236 = load double*, double** %Metr, align 8
  %237 = bitcast double* %236 to i8*
  %238 = load %struct.dvector*, %struct.dvector** %Metr_mem.addr, align 8
  %length268 = getelementptr inbounds %struct.dvector, %struct.dvector* %238, i32 0, i32 0
  %239 = load i64, i64* %length268, align 8
  %mul269 = mul i64 %239, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* %237, i64 %mul269, i32 8, i1 false)
  %240 = load i8*, i8** %history_mem.addr, align 8
  %241 = bitcast [128 x [143 x i8]]* %history to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %240, i8* %241, i64 18304, i32 1, i1 false)
  %242 = load double*, double** %Metr, align 8
  %243 = bitcast double* %242 to i8*
  call void @free(i8* %243) #3
  %244 = load double*, double** %Metr0, align 8
  %245 = bitcast double* %244 to i8*
  call void @free(i8* %245) #3
  %246 = load double*, double** %Metr1, align 8
  %247 = bitcast double* %246 to i8*
  call void @free(i8* %247) #3
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @bitvector_clear(%struct.bitvector* %vector) #1 {
entry:
  %vector.addr = alloca %struct.bitvector*, align 8
  store %struct.bitvector* %vector, %struct.bitvector** %vector.addr, align 8
  %0 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.bitvector, %struct.bitvector* %0, i32 0, i32 1
  %1 = load i8*, i8** %data, align 8
  call void @free(i8* %1) #3
  %2 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %length = getelementptr inbounds %struct.bitvector, %struct.bitvector* %2, i32 0, i32 0
  store i64 0, i64* %length, align 8
  %3 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data1 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %3, i32 0, i32 1
  store i8* null, i8** %data1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @bitvector_init(%struct.bitvector* %vector, i64 %length) #1 {
entry:
  %vector.addr = alloca %struct.bitvector*, align 8
  %length.addr = alloca i64, align 8
  store %struct.bitvector* %vector, %struct.bitvector** %vector.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  %0 = load i64, i64* %length.addr, align 8
  %1 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %length1 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %1, i32 0, i32 0
  store i64 %0, i64* %length1, align 8
  %2 = load i64, i64* %length.addr, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %length.addr, align 8
  %mul = mul i64 %3, 1
  %call = call noalias i8* @malloc(i64 %mul) #3
  %4 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data = getelementptr inbounds %struct.bitvector, %struct.bitvector* %4, i32 0, i32 1
  store i8* %call, i8** %data, align 8
  %5 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data2 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %5, i32 0, i32 1
  %6 = load i8*, i8** %data2, align 8
  %7 = load i64, i64* %length.addr, align 8
  %mul3 = mul i64 %7, 1
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %mul3, i32 1, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.bitvector*, %struct.bitvector** %vector.addr, align 8
  %data4 = getelementptr inbounds %struct.bitvector, %struct.bitvector* %8, i32 0, i32 1
  store i8* null, i8** %data4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
