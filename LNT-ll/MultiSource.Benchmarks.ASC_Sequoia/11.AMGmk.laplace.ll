; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/11.AMGmk.laplace.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: nounwind uwtable
define %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 %nx, i32 %ny, i32 %nz, double* %value, %struct.hypre_Vector** %rhs_ptr, %struct.hypre_Vector** %x_ptr, %struct.hypre_Vector** %sol_ptr) #0 {
entry:
  %nx.addr = alloca i32, align 4
  %ny.addr = alloca i32, align 4
  %nz.addr = alloca i32, align 4
  %value.addr = alloca double*, align 8
  %rhs_ptr.addr = alloca %struct.hypre_Vector**, align 8
  %x_ptr.addr = alloca %struct.hypre_Vector**, align 8
  %sol_ptr.addr = alloca %struct.hypre_Vector**, align 8
  %A = alloca %struct.hypre_CSRMatrix*, align 8
  %rhs = alloca %struct.hypre_Vector*, align 8
  %x = alloca %struct.hypre_Vector*, align 8
  %sol = alloca %struct.hypre_Vector*, align 8
  %rhs_data = alloca double*, align 8
  %x_data = alloca double*, align 8
  %sol_data = alloca double*, align 8
  %A_i = alloca i32*, align 8
  %A_j = alloca i32*, align 8
  %A_data = alloca double*, align 8
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %cnt = alloca i32, align 4
  %row_index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %grid_size = alloca i32, align 4
  store i32 %nx, i32* %nx.addr, align 4
  store i32 %ny, i32* %ny.addr, align 4
  store i32 %nz, i32* %nz.addr, align 4
  store double* %value, double** %value.addr, align 8
  store %struct.hypre_Vector** %rhs_ptr, %struct.hypre_Vector*** %rhs_ptr.addr, align 8
  store %struct.hypre_Vector** %x_ptr, %struct.hypre_Vector*** %x_ptr.addr, align 8
  store %struct.hypre_Vector** %sol_ptr, %struct.hypre_Vector*** %sol_ptr.addr, align 8
  %0 = load i32, i32* %nx.addr, align 4
  %1 = load i32, i32* %ny.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %nz.addr, align 4
  %mul1 = mul nsw i32 %mul, %2
  store i32 %mul1, i32* %grid_size, align 4
  %3 = load i32, i32* %grid_size, align 4
  %add = add nsw i32 %3, 1
  %call = call i8* @hypre_CAlloc(i32 %add, i32 4)
  %4 = bitcast i8* %call to i32*
  store i32* %4, i32** %A_i, align 8
  %5 = load i32, i32* %grid_size, align 4
  %call2 = call i8* @hypre_CAlloc(i32 %5, i32 8)
  %6 = bitcast i8* %call2 to double*
  store double* %6, double** %rhs_data, align 8
  %7 = load i32, i32* %grid_size, align 4
  %call3 = call i8* @hypre_CAlloc(i32 %7, i32 8)
  %8 = bitcast i8* %call3 to double*
  store double* %8, double** %x_data, align 8
  %9 = load i32, i32* %grid_size, align 4
  %call4 = call i8* @hypre_CAlloc(i32 %9, i32 8)
  %10 = bitcast i8* %call4 to double*
  store double* %10, double** %sol_data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %grid_size, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load double*, double** %x_data, align 8
  %arrayidx = getelementptr inbounds double, double* %14, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %16 = load double*, double** %sol_data, align 8
  %arrayidx6 = getelementptr inbounds double, double* %16, i64 %idxprom5
  store double 0.000000e+00, double* %arrayidx6, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load double*, double** %rhs_data, align 8
  %arrayidx8 = getelementptr inbounds double, double* %18, i64 %idxprom7
  store double 1.000000e+00, double* %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %cnt, align 4
  %20 = load i32*, i32** %A_i, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %arrayidx9, align 4
  store i32 0, i32* %iz, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.69, %for.end
  %21 = load i32, i32* %iz, align 4
  %22 = load i32, i32* %nz.addr, align 4
  %cmp11 = icmp slt i32 %21, %22
  br i1 %cmp11, label %for.body.12, label %for.end.71

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %iy, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.66, %for.body.12
  %23 = load i32, i32* %iy, align 4
  %24 = load i32, i32* %ny.addr, align 4
  %cmp14 = icmp slt i32 %23, %24
  br i1 %cmp14, label %for.body.15, label %for.end.68

for.body.15:                                      ; preds = %for.cond.13
  store i32 0, i32* %ix, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.63, %for.body.15
  %25 = load i32, i32* %ix, align 4
  %26 = load i32, i32* %nx.addr, align 4
  %cmp17 = icmp slt i32 %25, %26
  br i1 %cmp17, label %for.body.18, label %for.end.65

for.body.18:                                      ; preds = %for.cond.16
  %27 = load i32, i32* %cnt, align 4
  %sub = sub nsw i32 %27, 1
  %idxprom19 = sext i32 %sub to i64
  %28 = load i32*, i32** %A_i, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %28, i64 %idxprom19
  %29 = load i32, i32* %arrayidx20, align 4
  %30 = load i32, i32* %cnt, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load i32*, i32** %A_i, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 %idxprom21
  store i32 %29, i32* %arrayidx22, align 4
  %32 = load i32, i32* %cnt, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load i32*, i32** %A_i, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 %idxprom23
  %34 = load i32, i32* %arrayidx24, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, i32* %arrayidx24, align 4
  %35 = load i32, i32* %iz, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.18
  %36 = load i32, i32* %cnt, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load i32*, i32** %A_i, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %37, i64 %idxprom26
  %38 = load i32, i32* %arrayidx27, align 4
  %inc28 = add nsw i32 %38, 1
  store i32 %inc28, i32* %arrayidx27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.18
  %39 = load i32, i32* %iy, align 4
  %tobool29 = icmp ne i32 %39, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end
  %40 = load i32, i32* %cnt, align 4
  %idxprom31 = sext i32 %40 to i64
  %41 = load i32*, i32** %A_i, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %41, i64 %idxprom31
  %42 = load i32, i32* %arrayidx32, align 4
  %inc33 = add nsw i32 %42, 1
  store i32 %inc33, i32* %arrayidx32, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end
  %43 = load i32, i32* %ix, align 4
  %tobool35 = icmp ne i32 %43, 0
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end.34
  %44 = load i32, i32* %cnt, align 4
  %idxprom37 = sext i32 %44 to i64
  %45 = load i32*, i32** %A_i, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %45, i64 %idxprom37
  %46 = load i32, i32* %arrayidx38, align 4
  %inc39 = add nsw i32 %46, 1
  store i32 %inc39, i32* %arrayidx38, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.end.34
  %47 = load i32, i32* %ix, align 4
  %add41 = add nsw i32 %47, 1
  %48 = load i32, i32* %nx.addr, align 4
  %cmp42 = icmp slt i32 %add41, %48
  br i1 %cmp42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.40
  %49 = load i32, i32* %cnt, align 4
  %idxprom44 = sext i32 %49 to i64
  %50 = load i32*, i32** %A_i, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %50, i64 %idxprom44
  %51 = load i32, i32* %arrayidx45, align 4
  %inc46 = add nsw i32 %51, 1
  store i32 %inc46, i32* %arrayidx45, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.40
  %52 = load i32, i32* %iy, align 4
  %add48 = add nsw i32 %52, 1
  %53 = load i32, i32* %ny.addr, align 4
  %cmp49 = icmp slt i32 %add48, %53
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.47
  %54 = load i32, i32* %cnt, align 4
  %idxprom51 = sext i32 %54 to i64
  %55 = load i32*, i32** %A_i, align 8
  %arrayidx52 = getelementptr inbounds i32, i32* %55, i64 %idxprom51
  %56 = load i32, i32* %arrayidx52, align 4
  %inc53 = add nsw i32 %56, 1
  store i32 %inc53, i32* %arrayidx52, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.47
  %57 = load i32, i32* %iz, align 4
  %add55 = add nsw i32 %57, 1
  %58 = load i32, i32* %nz.addr, align 4
  %cmp56 = icmp slt i32 %add55, %58
  br i1 %cmp56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.54
  %59 = load i32, i32* %cnt, align 4
  %idxprom58 = sext i32 %59 to i64
  %60 = load i32*, i32** %A_i, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %60, i64 %idxprom58
  %61 = load i32, i32* %arrayidx59, align 4
  %inc60 = add nsw i32 %61, 1
  store i32 %inc60, i32* %arrayidx59, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.54
  %62 = load i32, i32* %cnt, align 4
  %inc62 = add nsw i32 %62, 1
  store i32 %inc62, i32* %cnt, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.61
  %63 = load i32, i32* %ix, align 4
  %inc64 = add nsw i32 %63, 1
  store i32 %inc64, i32* %ix, align 4
  br label %for.cond.16

for.end.65:                                       ; preds = %for.cond.16
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %64 = load i32, i32* %iy, align 4
  %inc67 = add nsw i32 %64, 1
  store i32 %inc67, i32* %iy, align 4
  br label %for.cond.13

for.end.68:                                       ; preds = %for.cond.13
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %65 = load i32, i32* %iz, align 4
  %inc70 = add nsw i32 %65, 1
  store i32 %inc70, i32* %iz, align 4
  br label %for.cond.10

for.end.71:                                       ; preds = %for.cond.10
  %66 = load i32, i32* %grid_size, align 4
  %idxprom72 = sext i32 %66 to i64
  %67 = load i32*, i32** %A_i, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %67, i64 %idxprom72
  %68 = load i32, i32* %arrayidx73, align 4
  %call74 = call i8* @hypre_CAlloc(i32 %68, i32 4)
  %69 = bitcast i8* %call74 to i32*
  store i32* %69, i32** %A_j, align 8
  %70 = load i32, i32* %grid_size, align 4
  %idxprom75 = sext i32 %70 to i64
  %71 = load i32*, i32** %A_i, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %71, i64 %idxprom75
  %72 = load i32, i32* %arrayidx76, align 4
  %call77 = call i8* @hypre_CAlloc(i32 %72, i32 8)
  %73 = bitcast i8* %call77 to double*
  store double* %73, double** %A_data, align 8
  store i32 0, i32* %row_index, align 4
  store i32 0, i32* %cnt, align 4
  store i32 0, i32* %iz, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.165, %for.end.71
  %74 = load i32, i32* %iz, align 4
  %75 = load i32, i32* %nz.addr, align 4
  %cmp79 = icmp slt i32 %74, %75
  br i1 %cmp79, label %for.body.80, label %for.end.167

for.body.80:                                      ; preds = %for.cond.78
  store i32 0, i32* %iy, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.162, %for.body.80
  %76 = load i32, i32* %iy, align 4
  %77 = load i32, i32* %ny.addr, align 4
  %cmp82 = icmp slt i32 %76, %77
  br i1 %cmp82, label %for.body.83, label %for.end.164

for.body.83:                                      ; preds = %for.cond.81
  store i32 0, i32* %ix, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.159, %for.body.83
  %78 = load i32, i32* %ix, align 4
  %79 = load i32, i32* %nx.addr, align 4
  %cmp85 = icmp slt i32 %78, %79
  br i1 %cmp85, label %for.body.86, label %for.end.161

for.body.86:                                      ; preds = %for.cond.84
  %80 = load i32, i32* %row_index, align 4
  %81 = load i32, i32* %cnt, align 4
  %idxprom87 = sext i32 %81 to i64
  %82 = load i32*, i32** %A_j, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %82, i64 %idxprom87
  store i32 %80, i32* %arrayidx88, align 4
  %83 = load double*, double** %value.addr, align 8
  %arrayidx89 = getelementptr inbounds double, double* %83, i64 0
  %84 = load double, double* %arrayidx89, align 8
  %85 = load i32, i32* %cnt, align 4
  %inc90 = add nsw i32 %85, 1
  store i32 %inc90, i32* %cnt, align 4
  %idxprom91 = sext i32 %85 to i64
  %86 = load double*, double** %A_data, align 8
  %arrayidx92 = getelementptr inbounds double, double* %86, i64 %idxprom91
  store double %84, double* %arrayidx92, align 8
  %87 = load i32, i32* %iz, align 4
  %tobool93 = icmp ne i32 %87, 0
  br i1 %tobool93, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %for.body.86
  %88 = load i32, i32* %row_index, align 4
  %89 = load i32, i32* %nx.addr, align 4
  %90 = load i32, i32* %ny.addr, align 4
  %mul95 = mul nsw i32 %89, %90
  %sub96 = sub nsw i32 %88, %mul95
  %91 = load i32, i32* %cnt, align 4
  %idxprom97 = sext i32 %91 to i64
  %92 = load i32*, i32** %A_j, align 8
  %arrayidx98 = getelementptr inbounds i32, i32* %92, i64 %idxprom97
  store i32 %sub96, i32* %arrayidx98, align 4
  %93 = load double*, double** %value.addr, align 8
  %arrayidx99 = getelementptr inbounds double, double* %93, i64 3
  %94 = load double, double* %arrayidx99, align 8
  %95 = load i32, i32* %cnt, align 4
  %inc100 = add nsw i32 %95, 1
  store i32 %inc100, i32* %cnt, align 4
  %idxprom101 = sext i32 %95 to i64
  %96 = load double*, double** %A_data, align 8
  %arrayidx102 = getelementptr inbounds double, double* %96, i64 %idxprom101
  store double %94, double* %arrayidx102, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.94, %for.body.86
  %97 = load i32, i32* %iy, align 4
  %tobool104 = icmp ne i32 %97, 0
  br i1 %tobool104, label %if.then.105, label %if.end.113

if.then.105:                                      ; preds = %if.end.103
  %98 = load i32, i32* %row_index, align 4
  %99 = load i32, i32* %nx.addr, align 4
  %sub106 = sub nsw i32 %98, %99
  %100 = load i32, i32* %cnt, align 4
  %idxprom107 = sext i32 %100 to i64
  %101 = load i32*, i32** %A_j, align 8
  %arrayidx108 = getelementptr inbounds i32, i32* %101, i64 %idxprom107
  store i32 %sub106, i32* %arrayidx108, align 4
  %102 = load double*, double** %value.addr, align 8
  %arrayidx109 = getelementptr inbounds double, double* %102, i64 2
  %103 = load double, double* %arrayidx109, align 8
  %104 = load i32, i32* %cnt, align 4
  %inc110 = add nsw i32 %104, 1
  store i32 %inc110, i32* %cnt, align 4
  %idxprom111 = sext i32 %104 to i64
  %105 = load double*, double** %A_data, align 8
  %arrayidx112 = getelementptr inbounds double, double* %105, i64 %idxprom111
  store double %103, double* %arrayidx112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.105, %if.end.103
  %106 = load i32, i32* %ix, align 4
  %tobool114 = icmp ne i32 %106, 0
  br i1 %tobool114, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %if.end.113
  %107 = load i32, i32* %row_index, align 4
  %sub116 = sub nsw i32 %107, 1
  %108 = load i32, i32* %cnt, align 4
  %idxprom117 = sext i32 %108 to i64
  %109 = load i32*, i32** %A_j, align 8
  %arrayidx118 = getelementptr inbounds i32, i32* %109, i64 %idxprom117
  store i32 %sub116, i32* %arrayidx118, align 4
  %110 = load double*, double** %value.addr, align 8
  %arrayidx119 = getelementptr inbounds double, double* %110, i64 1
  %111 = load double, double* %arrayidx119, align 8
  %112 = load i32, i32* %cnt, align 4
  %inc120 = add nsw i32 %112, 1
  store i32 %inc120, i32* %cnt, align 4
  %idxprom121 = sext i32 %112 to i64
  %113 = load double*, double** %A_data, align 8
  %arrayidx122 = getelementptr inbounds double, double* %113, i64 %idxprom121
  store double %111, double* %arrayidx122, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.115, %if.end.113
  %114 = load i32, i32* %ix, align 4
  %add124 = add nsw i32 %114, 1
  %115 = load i32, i32* %nx.addr, align 4
  %cmp125 = icmp slt i32 %add124, %115
  br i1 %cmp125, label %if.then.126, label %if.end.134

if.then.126:                                      ; preds = %if.end.123
  %116 = load i32, i32* %row_index, align 4
  %add127 = add nsw i32 %116, 1
  %117 = load i32, i32* %cnt, align 4
  %idxprom128 = sext i32 %117 to i64
  %118 = load i32*, i32** %A_j, align 8
  %arrayidx129 = getelementptr inbounds i32, i32* %118, i64 %idxprom128
  store i32 %add127, i32* %arrayidx129, align 4
  %119 = load double*, double** %value.addr, align 8
  %arrayidx130 = getelementptr inbounds double, double* %119, i64 1
  %120 = load double, double* %arrayidx130, align 8
  %121 = load i32, i32* %cnt, align 4
  %inc131 = add nsw i32 %121, 1
  store i32 %inc131, i32* %cnt, align 4
  %idxprom132 = sext i32 %121 to i64
  %122 = load double*, double** %A_data, align 8
  %arrayidx133 = getelementptr inbounds double, double* %122, i64 %idxprom132
  store double %120, double* %arrayidx133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.126, %if.end.123
  %123 = load i32, i32* %iy, align 4
  %add135 = add nsw i32 %123, 1
  %124 = load i32, i32* %ny.addr, align 4
  %cmp136 = icmp slt i32 %add135, %124
  br i1 %cmp136, label %if.then.137, label %if.end.145

if.then.137:                                      ; preds = %if.end.134
  %125 = load i32, i32* %row_index, align 4
  %126 = load i32, i32* %nx.addr, align 4
  %add138 = add nsw i32 %125, %126
  %127 = load i32, i32* %cnt, align 4
  %idxprom139 = sext i32 %127 to i64
  %128 = load i32*, i32** %A_j, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %128, i64 %idxprom139
  store i32 %add138, i32* %arrayidx140, align 4
  %129 = load double*, double** %value.addr, align 8
  %arrayidx141 = getelementptr inbounds double, double* %129, i64 2
  %130 = load double, double* %arrayidx141, align 8
  %131 = load i32, i32* %cnt, align 4
  %inc142 = add nsw i32 %131, 1
  store i32 %inc142, i32* %cnt, align 4
  %idxprom143 = sext i32 %131 to i64
  %132 = load double*, double** %A_data, align 8
  %arrayidx144 = getelementptr inbounds double, double* %132, i64 %idxprom143
  store double %130, double* %arrayidx144, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.137, %if.end.134
  %133 = load i32, i32* %iz, align 4
  %add146 = add nsw i32 %133, 1
  %134 = load i32, i32* %nz.addr, align 4
  %cmp147 = icmp slt i32 %add146, %134
  br i1 %cmp147, label %if.then.148, label %if.end.157

if.then.148:                                      ; preds = %if.end.145
  %135 = load i32, i32* %row_index, align 4
  %136 = load i32, i32* %nx.addr, align 4
  %137 = load i32, i32* %ny.addr, align 4
  %mul149 = mul nsw i32 %136, %137
  %add150 = add nsw i32 %135, %mul149
  %138 = load i32, i32* %cnt, align 4
  %idxprom151 = sext i32 %138 to i64
  %139 = load i32*, i32** %A_j, align 8
  %arrayidx152 = getelementptr inbounds i32, i32* %139, i64 %idxprom151
  store i32 %add150, i32* %arrayidx152, align 4
  %140 = load double*, double** %value.addr, align 8
  %arrayidx153 = getelementptr inbounds double, double* %140, i64 3
  %141 = load double, double* %arrayidx153, align 8
  %142 = load i32, i32* %cnt, align 4
  %inc154 = add nsw i32 %142, 1
  store i32 %inc154, i32* %cnt, align 4
  %idxprom155 = sext i32 %142 to i64
  %143 = load double*, double** %A_data, align 8
  %arrayidx156 = getelementptr inbounds double, double* %143, i64 %idxprom155
  store double %141, double* %arrayidx156, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.148, %if.end.145
  %144 = load i32, i32* %row_index, align 4
  %inc158 = add nsw i32 %144, 1
  store i32 %inc158, i32* %row_index, align 4
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.157
  %145 = load i32, i32* %ix, align 4
  %inc160 = add nsw i32 %145, 1
  store i32 %inc160, i32* %ix, align 4
  br label %for.cond.84

for.end.161:                                      ; preds = %for.cond.84
  br label %for.inc.162

for.inc.162:                                      ; preds = %for.end.161
  %146 = load i32, i32* %iy, align 4
  %inc163 = add nsw i32 %146, 1
  store i32 %inc163, i32* %iy, align 4
  br label %for.cond.81

for.end.164:                                      ; preds = %for.cond.81
  br label %for.inc.165

for.inc.165:                                      ; preds = %for.end.164
  %147 = load i32, i32* %iz, align 4
  %inc166 = add nsw i32 %147, 1
  store i32 %inc166, i32* %iz, align 4
  br label %for.cond.78

for.end.167:                                      ; preds = %for.cond.78
  %148 = load i32, i32* %grid_size, align 4
  %149 = load i32, i32* %grid_size, align 4
  %150 = load i32, i32* %grid_size, align 4
  %idxprom168 = sext i32 %150 to i64
  %151 = load i32*, i32** %A_i, align 8
  %arrayidx169 = getelementptr inbounds i32, i32* %151, i64 %idxprom168
  %152 = load i32, i32* %arrayidx169, align 4
  %call170 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %148, i32 %149, i32 %152)
  store %struct.hypre_CSRMatrix* %call170, %struct.hypre_CSRMatrix** %A, align 8
  %153 = load i32, i32* %grid_size, align 4
  %call171 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %153)
  store %struct.hypre_Vector* %call171, %struct.hypre_Vector** %rhs, align 8
  %154 = load double*, double** %rhs_data, align 8
  %155 = load %struct.hypre_Vector*, %struct.hypre_Vector** %rhs, align 8
  %data = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %155, i32 0, i32 0
  store double* %154, double** %data, align 8
  %156 = load i32, i32* %grid_size, align 4
  %call172 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %156)
  store %struct.hypre_Vector* %call172, %struct.hypre_Vector** %x, align 8
  %157 = load double*, double** %x_data, align 8
  %158 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %data173 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %158, i32 0, i32 0
  store double* %157, double** %data173, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.174

for.cond.174:                                     ; preds = %for.inc.193, %for.end.167
  %159 = load i32, i32* %i, align 4
  %160 = load i32, i32* %grid_size, align 4
  %cmp175 = icmp slt i32 %159, %160
  br i1 %cmp175, label %for.body.176, label %for.end.195

for.body.176:                                     ; preds = %for.cond.174
  %161 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %161 to i64
  %162 = load i32*, i32** %A_i, align 8
  %arrayidx178 = getelementptr inbounds i32, i32* %162, i64 %idxprom177
  %163 = load i32, i32* %arrayidx178, align 4
  store i32 %163, i32* %j, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.190, %for.body.176
  %164 = load i32, i32* %j, align 4
  %165 = load i32, i32* %i, align 4
  %add180 = add nsw i32 %165, 1
  %idxprom181 = sext i32 %add180 to i64
  %166 = load i32*, i32** %A_i, align 8
  %arrayidx182 = getelementptr inbounds i32, i32* %166, i64 %idxprom181
  %167 = load i32, i32* %arrayidx182, align 4
  %cmp183 = icmp slt i32 %164, %167
  br i1 %cmp183, label %for.body.184, label %for.end.192

for.body.184:                                     ; preds = %for.cond.179
  %168 = load i32, i32* %j, align 4
  %idxprom185 = sext i32 %168 to i64
  %169 = load double*, double** %A_data, align 8
  %arrayidx186 = getelementptr inbounds double, double* %169, i64 %idxprom185
  %170 = load double, double* %arrayidx186, align 8
  %171 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %171 to i64
  %172 = load double*, double** %sol_data, align 8
  %arrayidx188 = getelementptr inbounds double, double* %172, i64 %idxprom187
  %173 = load double, double* %arrayidx188, align 8
  %add189 = fadd double %173, %170
  store double %add189, double* %arrayidx188, align 8
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.184
  %174 = load i32, i32* %j, align 4
  %inc191 = add nsw i32 %174, 1
  store i32 %inc191, i32* %j, align 4
  br label %for.cond.179

for.end.192:                                      ; preds = %for.cond.179
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.end.192
  %175 = load i32, i32* %i, align 4
  %inc194 = add nsw i32 %175, 1
  store i32 %inc194, i32* %i, align 4
  br label %for.cond.174

for.end.195:                                      ; preds = %for.cond.174
  %176 = load i32, i32* %grid_size, align 4
  %call196 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %176)
  store %struct.hypre_Vector* %call196, %struct.hypre_Vector** %sol, align 8
  %177 = load double*, double** %sol_data, align 8
  %178 = load %struct.hypre_Vector*, %struct.hypre_Vector** %sol, align 8
  %data197 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %178, i32 0, i32 0
  store double* %177, double** %data197, align 8
  %179 = load i32*, i32** %A_i, align 8
  %180 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  %i198 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %180, i32 0, i32 1
  store i32* %179, i32** %i198, align 8
  %181 = load i32*, i32** %A_j, align 8
  %182 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  %j199 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %182, i32 0, i32 2
  store i32* %181, i32** %j199, align 8
  %183 = load double*, double** %A_data, align 8
  %184 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  %data200 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %184, i32 0, i32 0
  store double* %183, double** %data200, align 8
  %185 = load %struct.hypre_Vector*, %struct.hypre_Vector** %rhs, align 8
  %186 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %rhs_ptr.addr, align 8
  store %struct.hypre_Vector* %185, %struct.hypre_Vector** %186, align 8
  %187 = load %struct.hypre_Vector*, %struct.hypre_Vector** %x, align 8
  %188 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %x_ptr.addr, align 8
  store %struct.hypre_Vector* %187, %struct.hypre_Vector** %188, align 8
  %189 = load %struct.hypre_Vector*, %struct.hypre_Vector** %sol, align 8
  %190 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %sol_ptr.addr, align 8
  store %struct.hypre_Vector* %189, %struct.hypre_Vector** %190, align 8
  %191 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %A, align 8
  ret %struct.hypre_CSRMatrix* %191
}

declare i8* @hypre_CAlloc(i32, i32) #1

declare %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32, i32, i32) #1

declare %struct.hypre_Vector* @hypre_SeqVectorCreate(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
