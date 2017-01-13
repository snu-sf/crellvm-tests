; ModuleID = './MultiSource.Benchmarks.ASCI_Purple/15.SMG2000.smg2000.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_StructMatrix_struct = type opaque
%struct.hypre_StructVector_struct = type opaque
%struct.hypre_StructSolver_struct = type opaque
%struct.hypre_StructGrid_struct = type opaque
%struct.hypre_StructStencil_struct = type opaque
%struct.hypre_Solver_struct = type opaque
%struct.hypre_Matrix_struct = type opaque
%struct.hypre_Vector_struct = type opaque

@.str = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"-solver\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Usage: %s [<options>]\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"  -n <nx> <ny> <nz>    : problem size per block\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"  -P <Px> <Py> <Pz>    : processor topology\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"  -b <bx> <by> <bz>    : blocking per processor\0A\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"  -c <cx> <cy> <cz>    : diffusion coefficients\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"  -v <n_pre> <n_post>  : number of pre and post relaxations\0A\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"  -d <dim>             : problem dimension (2 or 3)\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"  -solver <ID>         : solver ID (default = 0)\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"                         0 - SMG\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"                         1 - CG with SMG precond\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"                         2 - CG with diagonal scaling\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"                         3 - CG\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Error: Invalid number of processors or processor topology \0A\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"Running with these driver parameters:\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"  (nx, ny, nz)    = (%d, %d, %d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"  (Px, Py, Pz)    = (%d, %d, %d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"  (bx, by, bz)    = (%d, %d, %d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"  (cx, cy, cz)    = (%f, %f, %f)\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"  (n_pre, n_post) = (%d, %d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"  dim             = %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"  solver ID       = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Struct Interface\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"SMG Setup\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"Setup phase times\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"SMG Solve\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"Solve phase times\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"PCG Setup\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"PCG Solve\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"Iterations = %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Final Relative Residual Norm = %e\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arg_index = alloca i32, align 4
  %print_usage = alloca i32, align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %P = alloca i32, align 4
  %Q = alloca i32, align 4
  %R = alloca i32, align 4
  %bx = alloca i32, align 4
  %by = alloca i32, align 4
  %bz = alloca i32, align 4
  %cx = alloca double, align 8
  %cy = alloca double, align 8
  %cz = alloca double, align 8
  %solver_id = alloca i32, align 4
  %A_num_ghost = alloca [6 x i32], align 16
  %A = alloca %struct.hypre_StructMatrix_struct*, align 8
  %b = alloca %struct.hypre_StructVector_struct*, align 8
  %x = alloca %struct.hypre_StructVector_struct*, align 8
  %solver = alloca %struct.hypre_StructSolver_struct*, align 8
  %precond = alloca %struct.hypre_StructSolver_struct*, align 8
  %num_iterations = alloca i32, align 4
  %time_index = alloca i32, align 4
  %final_res_norm = alloca double, align 8
  %num_procs = alloca i32, align 4
  %myid = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %r = alloca i32, align 4
  %dim = alloca i32, align 4
  %n_pre = alloca i32, align 4
  %n_post = alloca i32, align 4
  %nblocks = alloca i32, align 4
  %volume = alloca i32, align 4
  %iupper = alloca i32**, align 8
  %ilower = alloca i32**, align 8
  %istart = alloca [3 x i32], align 4
  %offsets = alloca i32**, align 8
  %grid = alloca %struct.hypre_StructGrid_struct*, align 8
  %stencil = alloca %struct.hypre_StructStencil_struct*, align 8
  %stencil_indices = alloca i32*, align 8
  %values = alloca double*, align 8
  %i = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %ib = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [6 x i32]* %A_num_ghost to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 16, i1 false)
  %call = call i32 @hypre_MPI_Init(i32* %argc.addr, i8*** %argv.addr)
  %call1 = call i32 @hypre_MPI_Comm_size(i32 0, i32* %num_procs)
  %call2 = call i32 @hypre_MPI_Comm_rank(i32 0, i32* %myid)
  store i32 3, i32* %dim, align 4
  store i32 10, i32* %nx, align 4
  store i32 10, i32* %ny, align 4
  store i32 10, i32* %nz, align 4
  %1 = load i32, i32* %num_procs, align 4
  store i32 %1, i32* %P, align 4
  store i32 1, i32* %Q, align 4
  store i32 1, i32* %R, align 4
  store i32 1, i32* %bx, align 4
  store i32 1, i32* %by, align 4
  store i32 1, i32* %bz, align 4
  store double 1.000000e+00, double* %cx, align 8
  store double 1.000000e+00, double* %cy, align 8
  store double 1.000000e+00, double* %cz, align 8
  store i32 1, i32* %n_pre, align 4
  store i32 1, i32* %n_post, align 4
  store i32 0, i32* %solver_id, align 4
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 0
  store i32 -17, i32* %arrayidx, align 4
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 1
  store i32 0, i32* %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 2
  store i32 32, i32* %arrayidx4, align 4
  store i32 0, i32* %print_usage, align 4
  store i32 1, i32* %arg_index, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.125, %entry
  %2 = load i32, i32* %arg_index, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %arg_index, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0)) #5
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, i32* %arg_index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %arg_index, align 4
  %8 = load i32, i32* %arg_index, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %arg_index, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %9, i64 %idxprom9
  %10 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @atoi(i8* %10) #5
  store i32 %call11, i32* %nx, align 4
  %11 = load i32, i32* %arg_index, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %arg_index, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %12, i64 %idxprom13
  %13 = load i8*, i8** %arrayidx14, align 8
  %call15 = call i32 @atoi(i8* %13) #5
  store i32 %call15, i32* %ny, align 4
  %14 = load i32, i32* %arg_index, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* %arg_index, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load i8**, i8*** %argv.addr, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %15, i64 %idxprom17
  %16 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i32 @atoi(i8* %16) #5
  store i32 %call19, i32* %nz, align 4
  br label %if.end.125

if.else:                                          ; preds = %while.body
  %17 = load i32, i32* %arg_index, align 4
  %idxprom20 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %18, i64 %idxprom20
  %19 = load i8*, i8** %arrayidx21, align 8
  %call22 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #5
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.38

if.then.24:                                       ; preds = %if.else
  %20 = load i32, i32* %arg_index, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %arg_index, align 4
  %21 = load i32, i32* %arg_index, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, i32* %arg_index, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %22, i64 %idxprom27
  %23 = load i8*, i8** %arrayidx28, align 8
  %call29 = call i32 @atoi(i8* %23) #5
  store i32 %call29, i32* %P, align 4
  %24 = load i32, i32* %arg_index, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, i32* %arg_index, align 4
  %idxprom31 = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %25, i64 %idxprom31
  %26 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i32 @atoi(i8* %26) #5
  store i32 %call33, i32* %Q, align 4
  %27 = load i32, i32* %arg_index, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %arg_index, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %28, i64 %idxprom35
  %29 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i32 @atoi(i8* %29) #5
  store i32 %call37, i32* %R, align 4
  br label %if.end.124

if.else.38:                                       ; preds = %if.else
  %30 = load i32, i32* %arg_index, align 4
  %idxprom39 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx40 = getelementptr inbounds i8*, i8** %31, i64 %idxprom39
  %32 = load i8*, i8** %arrayidx40, align 8
  %call41 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0)) #5
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then.43, label %if.else.57

if.then.43:                                       ; preds = %if.else.38
  %33 = load i32, i32* %arg_index, align 4
  %inc44 = add nsw i32 %33, 1
  store i32 %inc44, i32* %arg_index, align 4
  %34 = load i32, i32* %arg_index, align 4
  %inc45 = add nsw i32 %34, 1
  store i32 %inc45, i32* %arg_index, align 4
  %idxprom46 = sext i32 %34 to i64
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %35, i64 %idxprom46
  %36 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 @atoi(i8* %36) #5
  store i32 %call48, i32* %bx, align 4
  %37 = load i32, i32* %arg_index, align 4
  %inc49 = add nsw i32 %37, 1
  store i32 %inc49, i32* %arg_index, align 4
  %idxprom50 = sext i32 %37 to i64
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %38, i64 %idxprom50
  %39 = load i8*, i8** %arrayidx51, align 8
  %call52 = call i32 @atoi(i8* %39) #5
  store i32 %call52, i32* %by, align 4
  %40 = load i32, i32* %arg_index, align 4
  %inc53 = add nsw i32 %40, 1
  store i32 %inc53, i32* %arg_index, align 4
  %idxprom54 = sext i32 %40 to i64
  %41 = load i8**, i8*** %argv.addr, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %41, i64 %idxprom54
  %42 = load i8*, i8** %arrayidx55, align 8
  %call56 = call i32 @atoi(i8* %42) #5
  store i32 %call56, i32* %bz, align 4
  br label %if.end.123

if.else.57:                                       ; preds = %if.else.38
  %43 = load i32, i32* %arg_index, align 4
  %idxprom58 = sext i32 %43 to i64
  %44 = load i8**, i8*** %argv.addr, align 8
  %arrayidx59 = getelementptr inbounds i8*, i8** %44, i64 %idxprom58
  %45 = load i8*, i8** %arrayidx59, align 8
  %call60 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)) #5
  %cmp61 = icmp eq i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.76

if.then.62:                                       ; preds = %if.else.57
  %46 = load i32, i32* %arg_index, align 4
  %inc63 = add nsw i32 %46, 1
  store i32 %inc63, i32* %arg_index, align 4
  %47 = load i32, i32* %arg_index, align 4
  %inc64 = add nsw i32 %47, 1
  store i32 %inc64, i32* %arg_index, align 4
  %idxprom65 = sext i32 %47 to i64
  %48 = load i8**, i8*** %argv.addr, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %48, i64 %idxprom65
  %49 = load i8*, i8** %arrayidx66, align 8
  %call67 = call double @atof(i8* %49) #5
  store double %call67, double* %cx, align 8
  %50 = load i32, i32* %arg_index, align 4
  %inc68 = add nsw i32 %50, 1
  store i32 %inc68, i32* %arg_index, align 4
  %idxprom69 = sext i32 %50 to i64
  %51 = load i8**, i8*** %argv.addr, align 8
  %arrayidx70 = getelementptr inbounds i8*, i8** %51, i64 %idxprom69
  %52 = load i8*, i8** %arrayidx70, align 8
  %call71 = call double @atof(i8* %52) #5
  store double %call71, double* %cy, align 8
  %53 = load i32, i32* %arg_index, align 4
  %inc72 = add nsw i32 %53, 1
  store i32 %inc72, i32* %arg_index, align 4
  %idxprom73 = sext i32 %53 to i64
  %54 = load i8**, i8*** %argv.addr, align 8
  %arrayidx74 = getelementptr inbounds i8*, i8** %54, i64 %idxprom73
  %55 = load i8*, i8** %arrayidx74, align 8
  %call75 = call double @atof(i8* %55) #5
  store double %call75, double* %cz, align 8
  br label %if.end.122

if.else.76:                                       ; preds = %if.else.57
  %56 = load i32, i32* %arg_index, align 4
  %idxprom77 = sext i32 %56 to i64
  %57 = load i8**, i8*** %argv.addr, align 8
  %arrayidx78 = getelementptr inbounds i8*, i8** %57, i64 %idxprom77
  %58 = load i8*, i8** %arrayidx78, align 8
  %call79 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)) #5
  %cmp80 = icmp eq i32 %call79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.91

if.then.81:                                       ; preds = %if.else.76
  %59 = load i32, i32* %arg_index, align 4
  %inc82 = add nsw i32 %59, 1
  store i32 %inc82, i32* %arg_index, align 4
  %60 = load i32, i32* %arg_index, align 4
  %inc83 = add nsw i32 %60, 1
  store i32 %inc83, i32* %arg_index, align 4
  %idxprom84 = sext i32 %60 to i64
  %61 = load i8**, i8*** %argv.addr, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %61, i64 %idxprom84
  %62 = load i8*, i8** %arrayidx85, align 8
  %call86 = call i32 @atoi(i8* %62) #5
  store i32 %call86, i32* %n_pre, align 4
  %63 = load i32, i32* %arg_index, align 4
  %inc87 = add nsw i32 %63, 1
  store i32 %inc87, i32* %arg_index, align 4
  %idxprom88 = sext i32 %63 to i64
  %64 = load i8**, i8*** %argv.addr, align 8
  %arrayidx89 = getelementptr inbounds i8*, i8** %64, i64 %idxprom88
  %65 = load i8*, i8** %arrayidx89, align 8
  %call90 = call i32 @atoi(i8* %65) #5
  store i32 %call90, i32* %n_post, align 4
  br label %if.end.121

if.else.91:                                       ; preds = %if.else.76
  %66 = load i32, i32* %arg_index, align 4
  %idxprom92 = sext i32 %66 to i64
  %67 = load i8**, i8*** %argv.addr, align 8
  %arrayidx93 = getelementptr inbounds i8*, i8** %67, i64 %idxprom92
  %68 = load i8*, i8** %arrayidx93, align 8
  %call94 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0)) #5
  %cmp95 = icmp eq i32 %call94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.102

if.then.96:                                       ; preds = %if.else.91
  %69 = load i32, i32* %arg_index, align 4
  %inc97 = add nsw i32 %69, 1
  store i32 %inc97, i32* %arg_index, align 4
  %70 = load i32, i32* %arg_index, align 4
  %inc98 = add nsw i32 %70, 1
  store i32 %inc98, i32* %arg_index, align 4
  %idxprom99 = sext i32 %70 to i64
  %71 = load i8**, i8*** %argv.addr, align 8
  %arrayidx100 = getelementptr inbounds i8*, i8** %71, i64 %idxprom99
  %72 = load i8*, i8** %arrayidx100, align 8
  %call101 = call i32 @atoi(i8* %72) #5
  store i32 %call101, i32* %dim, align 4
  br label %if.end.120

if.else.102:                                      ; preds = %if.else.91
  %73 = load i32, i32* %arg_index, align 4
  %idxprom103 = sext i32 %73 to i64
  %74 = load i8**, i8*** %argv.addr, align 8
  %arrayidx104 = getelementptr inbounds i8*, i8** %74, i64 %idxprom103
  %75 = load i8*, i8** %arrayidx104, align 8
  %call105 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #5
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.113

if.then.107:                                      ; preds = %if.else.102
  %76 = load i32, i32* %arg_index, align 4
  %inc108 = add nsw i32 %76, 1
  store i32 %inc108, i32* %arg_index, align 4
  %77 = load i32, i32* %arg_index, align 4
  %inc109 = add nsw i32 %77, 1
  store i32 %inc109, i32* %arg_index, align 4
  %idxprom110 = sext i32 %77 to i64
  %78 = load i8**, i8*** %argv.addr, align 8
  %arrayidx111 = getelementptr inbounds i8*, i8** %78, i64 %idxprom110
  %79 = load i8*, i8** %arrayidx111, align 8
  %call112 = call i32 @atoi(i8* %79) #5
  store i32 %call112, i32* %solver_id, align 4
  br label %if.end

if.else.113:                                      ; preds = %if.else.102
  %80 = load i32, i32* %arg_index, align 4
  %idxprom114 = sext i32 %80 to i64
  %81 = load i8**, i8*** %argv.addr, align 8
  %arrayidx115 = getelementptr inbounds i8*, i8** %81, i64 %idxprom114
  %82 = load i8*, i8** %arrayidx115, align 8
  %call116 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #5
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.else.113
  store i32 1, i32* %print_usage, align 4
  br label %while.end

if.else.119:                                      ; preds = %if.else.113
  br label %while.end

if.end:                                           ; preds = %if.then.107
  br label %if.end.120

if.end.120:                                       ; preds = %if.end, %if.then.96
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.then.81
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.62
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.43
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.24
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.then
  br label %while.cond

while.end:                                        ; preds = %if.else.119, %if.then.118, %while.cond
  %83 = load i32, i32* %print_usage, align 4
  %tobool = icmp ne i32 %83, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.144

land.lhs.true:                                    ; preds = %while.end
  %84 = load i32, i32* %myid, align 4
  %cmp126 = icmp eq i32 %84, 0
  br i1 %cmp126, label %if.then.127, label %if.end.144

if.then.127:                                      ; preds = %land.lhs.true
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %85 = load i8**, i8*** %argv.addr, align 8
  %arrayidx129 = getelementptr inbounds i8*, i8** %85, i64 0
  %86 = load i8*, i8** %arrayidx129, align 8
  %call130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* %86)
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i32 0, i32 0))
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0))
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i32 0, i32 0))
  %call136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i32 0, i32 0))
  %call137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i32 0, i32 0))
  %call138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i32 0, i32 0))
  %call139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0))
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.18, i32 0, i32 0))
  %call141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.19, i32 0, i32 0))
  %call142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i32 0, i32 0))
  %call143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.127, %land.lhs.true, %while.end
  %87 = load i32, i32* %print_usage, align 4
  %tobool145 = icmp ne i32 %87, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.144
  call void @exit(i32 1) #6
  unreachable

if.end.147:                                       ; preds = %if.end.144
  %88 = load i32, i32* %P, align 4
  %89 = load i32, i32* %Q, align 4
  %mul = mul nsw i32 %88, %89
  %90 = load i32, i32* %R, align 4
  %mul148 = mul nsw i32 %mul, %90
  %91 = load i32, i32* %num_procs, align 4
  %cmp149 = icmp ne i32 %mul148, %91
  br i1 %cmp149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.end.147
  %call151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i32 0, i32 0))
  call void @exit(i32 1) #6
  unreachable

if.end.152:                                       ; preds = %if.end.147
  %92 = load i32, i32* %myid, align 4
  %cmp153 = icmp eq i32 %92, 0
  br i1 %cmp153, label %if.then.154, label %if.end.163

if.then.154:                                      ; preds = %if.end.152
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i32 0, i32 0))
  %93 = load i32, i32* %nx, align 4
  %94 = load i32, i32* %ny, align 4
  %95 = load i32, i32* %nz, align 4
  %call156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i32 %93, i32 %94, i32 %95)
  %96 = load i32, i32* %P, align 4
  %97 = load i32, i32* %Q, align 4
  %98 = load i32, i32* %R, align 4
  %call157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0), i32 %96, i32 %97, i32 %98)
  %99 = load i32, i32* %bx, align 4
  %100 = load i32, i32* %by, align 4
  %101 = load i32, i32* %bz, align 4
  %call158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0), i32 %99, i32 %100, i32 %101)
  %102 = load double, double* %cx, align 8
  %103 = load double, double* %cy, align 8
  %104 = load double, double* %cz, align 8
  %call159 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i32 0, i32 0), double %102, double %103, double %104)
  %105 = load i32, i32* %n_pre, align 4
  %106 = load i32, i32* %n_post, align 4
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0), i32 %105, i32 %106)
  %107 = load i32, i32* %dim, align 4
  %call161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i32 0, i32 0), i32 %107)
  %108 = load i32, i32* %solver_id, align 4
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0), i32 %108)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.154, %if.end.152
  %call164 = call i32 @hypre_MPI_Barrier(i32 0)
  %call165 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0))
  store i32 %call165, i32* %time_index, align 4
  %109 = load i32, i32* %time_index, align 4
  %call166 = call i32 @hypre_BeginTiming(i32 %109)
  %110 = load i32, i32* %dim, align 4
  switch i32 %110, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.177
    i32 3, label %sw.bb.202
  ]

sw.bb:                                            ; preds = %if.end.163
  %111 = load i32, i32* %nx, align 4
  store i32 %111, i32* %volume, align 4
  %112 = load i32, i32* %bx, align 4
  store i32 %112, i32* %nblocks, align 4
  %call167 = call i8* @hypre_CAlloc(i32 2, i32 4)
  %113 = bitcast i8* %call167 to i32*
  store i32* %113, i32** %stencil_indices, align 8
  %call168 = call i8* @hypre_CAlloc(i32 2, i32 8)
  %114 = bitcast i8* %call168 to i32**
  store i32** %114, i32*** %offsets, align 8
  %call169 = call i8* @hypre_CAlloc(i32 1, i32 4)
  %115 = bitcast i8* %call169 to i32*
  %116 = load i32**, i32*** %offsets, align 8
  %arrayidx170 = getelementptr inbounds i32*, i32** %116, i64 0
  store i32* %115, i32** %arrayidx170, align 8
  %117 = load i32**, i32*** %offsets, align 8
  %arrayidx171 = getelementptr inbounds i32*, i32** %117, i64 0
  %118 = load i32*, i32** %arrayidx171, align 8
  %arrayidx172 = getelementptr inbounds i32, i32* %118, i64 0
  store i32 -1, i32* %arrayidx172, align 4
  %call173 = call i8* @hypre_CAlloc(i32 1, i32 4)
  %119 = bitcast i8* %call173 to i32*
  %120 = load i32**, i32*** %offsets, align 8
  %arrayidx174 = getelementptr inbounds i32*, i32** %120, i64 1
  store i32* %119, i32** %arrayidx174, align 8
  %121 = load i32**, i32*** %offsets, align 8
  %arrayidx175 = getelementptr inbounds i32*, i32** %121, i64 1
  %122 = load i32*, i32** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 0, i32* %arrayidx176, align 4
  %123 = load i32, i32* %myid, align 4
  %124 = load i32, i32* %P, align 4
  %rem = srem i32 %123, %124
  store i32 %rem, i32* %p, align 4
  br label %sw.epilog

sw.bb.177:                                        ; preds = %if.end.163
  %125 = load i32, i32* %nx, align 4
  %126 = load i32, i32* %ny, align 4
  %mul178 = mul nsw i32 %125, %126
  store i32 %mul178, i32* %volume, align 4
  %127 = load i32, i32* %bx, align 4
  %128 = load i32, i32* %by, align 4
  %mul179 = mul nsw i32 %127, %128
  store i32 %mul179, i32* %nblocks, align 4
  %call180 = call i8* @hypre_CAlloc(i32 3, i32 4)
  %129 = bitcast i8* %call180 to i32*
  store i32* %129, i32** %stencil_indices, align 8
  %call181 = call i8* @hypre_CAlloc(i32 3, i32 8)
  %130 = bitcast i8* %call181 to i32**
  store i32** %130, i32*** %offsets, align 8
  %call182 = call i8* @hypre_CAlloc(i32 2, i32 4)
  %131 = bitcast i8* %call182 to i32*
  %132 = load i32**, i32*** %offsets, align 8
  %arrayidx183 = getelementptr inbounds i32*, i32** %132, i64 0
  store i32* %131, i32** %arrayidx183, align 8
  %133 = load i32**, i32*** %offsets, align 8
  %arrayidx184 = getelementptr inbounds i32*, i32** %133, i64 0
  %134 = load i32*, i32** %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 -1, i32* %arrayidx185, align 4
  %135 = load i32**, i32*** %offsets, align 8
  %arrayidx186 = getelementptr inbounds i32*, i32** %135, i64 0
  %136 = load i32*, i32** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 0, i32* %arrayidx187, align 4
  %call188 = call i8* @hypre_CAlloc(i32 2, i32 4)
  %137 = bitcast i8* %call188 to i32*
  %138 = load i32**, i32*** %offsets, align 8
  %arrayidx189 = getelementptr inbounds i32*, i32** %138, i64 1
  store i32* %137, i32** %arrayidx189, align 8
  %139 = load i32**, i32*** %offsets, align 8
  %arrayidx190 = getelementptr inbounds i32*, i32** %139, i64 1
  %140 = load i32*, i32** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds i32, i32* %140, i64 0
  store i32 0, i32* %arrayidx191, align 4
  %141 = load i32**, i32*** %offsets, align 8
  %arrayidx192 = getelementptr inbounds i32*, i32** %141, i64 1
  %142 = load i32*, i32** %arrayidx192, align 8
  %arrayidx193 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 -1, i32* %arrayidx193, align 4
  %call194 = call i8* @hypre_CAlloc(i32 2, i32 4)
  %143 = bitcast i8* %call194 to i32*
  %144 = load i32**, i32*** %offsets, align 8
  %arrayidx195 = getelementptr inbounds i32*, i32** %144, i64 2
  store i32* %143, i32** %arrayidx195, align 8
  %145 = load i32**, i32*** %offsets, align 8
  %arrayidx196 = getelementptr inbounds i32*, i32** %145, i64 2
  %146 = load i32*, i32** %arrayidx196, align 8
  %arrayidx197 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 0, i32* %arrayidx197, align 4
  %147 = load i32**, i32*** %offsets, align 8
  %arrayidx198 = getelementptr inbounds i32*, i32** %147, i64 2
  %148 = load i32*, i32** %arrayidx198, align 8
  %arrayidx199 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 0, i32* %arrayidx199, align 4
  %149 = load i32, i32* %myid, align 4
  %150 = load i32, i32* %P, align 4
  %rem200 = srem i32 %149, %150
  store i32 %rem200, i32* %p, align 4
  %151 = load i32, i32* %myid, align 4
  %152 = load i32, i32* %p, align 4
  %sub = sub nsw i32 %151, %152
  %153 = load i32, i32* %P, align 4
  %div = sdiv i32 %sub, %153
  %154 = load i32, i32* %Q, align 4
  %rem201 = srem i32 %div, %154
  store i32 %rem201, i32* %q, align 4
  br label %sw.epilog

sw.bb.202:                                        ; preds = %if.end.163
  %155 = load i32, i32* %nx, align 4
  %156 = load i32, i32* %ny, align 4
  %mul203 = mul nsw i32 %155, %156
  %157 = load i32, i32* %nz, align 4
  %mul204 = mul nsw i32 %mul203, %157
  store i32 %mul204, i32* %volume, align 4
  %158 = load i32, i32* %bx, align 4
  %159 = load i32, i32* %by, align 4
  %mul205 = mul nsw i32 %158, %159
  %160 = load i32, i32* %bz, align 4
  %mul206 = mul nsw i32 %mul205, %160
  store i32 %mul206, i32* %nblocks, align 4
  %call207 = call i8* @hypre_CAlloc(i32 4, i32 4)
  %161 = bitcast i8* %call207 to i32*
  store i32* %161, i32** %stencil_indices, align 8
  %call208 = call i8* @hypre_CAlloc(i32 4, i32 8)
  %162 = bitcast i8* %call208 to i32**
  store i32** %162, i32*** %offsets, align 8
  %call209 = call i8* @hypre_CAlloc(i32 3, i32 4)
  %163 = bitcast i8* %call209 to i32*
  %164 = load i32**, i32*** %offsets, align 8
  %arrayidx210 = getelementptr inbounds i32*, i32** %164, i64 0
  store i32* %163, i32** %arrayidx210, align 8
  %165 = load i32**, i32*** %offsets, align 8
  %arrayidx211 = getelementptr inbounds i32*, i32** %165, i64 0
  %166 = load i32*, i32** %arrayidx211, align 8
  %arrayidx212 = getelementptr inbounds i32, i32* %166, i64 0
  store i32 -1, i32* %arrayidx212, align 4
  %167 = load i32**, i32*** %offsets, align 8
  %arrayidx213 = getelementptr inbounds i32*, i32** %167, i64 0
  %168 = load i32*, i32** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 0, i32* %arrayidx214, align 4
  %169 = load i32**, i32*** %offsets, align 8
  %arrayidx215 = getelementptr inbounds i32*, i32** %169, i64 0
  %170 = load i32*, i32** %arrayidx215, align 8
  %arrayidx216 = getelementptr inbounds i32, i32* %170, i64 2
  store i32 0, i32* %arrayidx216, align 4
  %call217 = call i8* @hypre_CAlloc(i32 3, i32 4)
  %171 = bitcast i8* %call217 to i32*
  %172 = load i32**, i32*** %offsets, align 8
  %arrayidx218 = getelementptr inbounds i32*, i32** %172, i64 1
  store i32* %171, i32** %arrayidx218, align 8
  %173 = load i32**, i32*** %offsets, align 8
  %arrayidx219 = getelementptr inbounds i32*, i32** %173, i64 1
  %174 = load i32*, i32** %arrayidx219, align 8
  %arrayidx220 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 0, i32* %arrayidx220, align 4
  %175 = load i32**, i32*** %offsets, align 8
  %arrayidx221 = getelementptr inbounds i32*, i32** %175, i64 1
  %176 = load i32*, i32** %arrayidx221, align 8
  %arrayidx222 = getelementptr inbounds i32, i32* %176, i64 1
  store i32 -1, i32* %arrayidx222, align 4
  %177 = load i32**, i32*** %offsets, align 8
  %arrayidx223 = getelementptr inbounds i32*, i32** %177, i64 1
  %178 = load i32*, i32** %arrayidx223, align 8
  %arrayidx224 = getelementptr inbounds i32, i32* %178, i64 2
  store i32 0, i32* %arrayidx224, align 4
  %call225 = call i8* @hypre_CAlloc(i32 3, i32 4)
  %179 = bitcast i8* %call225 to i32*
  %180 = load i32**, i32*** %offsets, align 8
  %arrayidx226 = getelementptr inbounds i32*, i32** %180, i64 2
  store i32* %179, i32** %arrayidx226, align 8
  %181 = load i32**, i32*** %offsets, align 8
  %arrayidx227 = getelementptr inbounds i32*, i32** %181, i64 2
  %182 = load i32*, i32** %arrayidx227, align 8
  %arrayidx228 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 0, i32* %arrayidx228, align 4
  %183 = load i32**, i32*** %offsets, align 8
  %arrayidx229 = getelementptr inbounds i32*, i32** %183, i64 2
  %184 = load i32*, i32** %arrayidx229, align 8
  %arrayidx230 = getelementptr inbounds i32, i32* %184, i64 1
  store i32 0, i32* %arrayidx230, align 4
  %185 = load i32**, i32*** %offsets, align 8
  %arrayidx231 = getelementptr inbounds i32*, i32** %185, i64 2
  %186 = load i32*, i32** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds i32, i32* %186, i64 2
  store i32 -1, i32* %arrayidx232, align 4
  %call233 = call i8* @hypre_CAlloc(i32 3, i32 4)
  %187 = bitcast i8* %call233 to i32*
  %188 = load i32**, i32*** %offsets, align 8
  %arrayidx234 = getelementptr inbounds i32*, i32** %188, i64 3
  store i32* %187, i32** %arrayidx234, align 8
  %189 = load i32**, i32*** %offsets, align 8
  %arrayidx235 = getelementptr inbounds i32*, i32** %189, i64 3
  %190 = load i32*, i32** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds i32, i32* %190, i64 0
  store i32 0, i32* %arrayidx236, align 4
  %191 = load i32**, i32*** %offsets, align 8
  %arrayidx237 = getelementptr inbounds i32*, i32** %191, i64 3
  %192 = load i32*, i32** %arrayidx237, align 8
  %arrayidx238 = getelementptr inbounds i32, i32* %192, i64 1
  store i32 0, i32* %arrayidx238, align 4
  %193 = load i32**, i32*** %offsets, align 8
  %arrayidx239 = getelementptr inbounds i32*, i32** %193, i64 3
  %194 = load i32*, i32** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds i32, i32* %194, i64 2
  store i32 0, i32* %arrayidx240, align 4
  %195 = load i32, i32* %myid, align 4
  %196 = load i32, i32* %P, align 4
  %rem241 = srem i32 %195, %196
  store i32 %rem241, i32* %p, align 4
  %197 = load i32, i32* %myid, align 4
  %198 = load i32, i32* %p, align 4
  %sub242 = sub nsw i32 %197, %198
  %199 = load i32, i32* %P, align 4
  %div243 = sdiv i32 %sub242, %199
  %200 = load i32, i32* %Q, align 4
  %rem244 = srem i32 %div243, %200
  store i32 %rem244, i32* %q, align 4
  %201 = load i32, i32* %myid, align 4
  %202 = load i32, i32* %p, align 4
  %sub245 = sub nsw i32 %201, %202
  %203 = load i32, i32* %P, align 4
  %204 = load i32, i32* %q, align 4
  %mul246 = mul nsw i32 %203, %204
  %sub247 = sub nsw i32 %sub245, %mul246
  %205 = load i32, i32* %P, align 4
  %206 = load i32, i32* %Q, align 4
  %mul248 = mul nsw i32 %205, %206
  %div249 = sdiv i32 %sub247, %mul248
  store i32 %div249, i32* %r, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.163, %sw.bb.202, %sw.bb.177, %sw.bb
  %207 = load i32, i32* %nblocks, align 4
  %call250 = call i8* @hypre_CAlloc(i32 %207, i32 8)
  %208 = bitcast i8* %call250 to i32**
  store i32** %208, i32*** %ilower, align 8
  %209 = load i32, i32* %nblocks, align 4
  %call251 = call i8* @hypre_CAlloc(i32 %209, i32 8)
  %210 = bitcast i8* %call251 to i32**
  store i32** %210, i32*** %iupper, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.epilog
  %211 = load i32, i32* %i, align 4
  %212 = load i32, i32* %nblocks, align 4
  %cmp252 = icmp slt i32 %211, %212
  br i1 %cmp252, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %213 = load i32, i32* %dim, align 4
  %call253 = call i8* @hypre_CAlloc(i32 %213, i32 4)
  %214 = bitcast i8* %call253 to i32*
  %215 = load i32, i32* %i, align 4
  %idxprom254 = sext i32 %215 to i64
  %216 = load i32**, i32*** %ilower, align 8
  %arrayidx255 = getelementptr inbounds i32*, i32** %216, i64 %idxprom254
  store i32* %214, i32** %arrayidx255, align 8
  %217 = load i32, i32* %dim, align 4
  %call256 = call i8* @hypre_CAlloc(i32 %217, i32 4)
  %218 = bitcast i8* %call256 to i32*
  %219 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %219 to i64
  %220 = load i32**, i32*** %iupper, align 8
  %arrayidx258 = getelementptr inbounds i32*, i32** %220, i64 %idxprom257
  store i32* %218, i32** %arrayidx258, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %221 = load i32, i32* %i, align 4
  %inc259 = add nsw i32 %221, 1
  store i32 %inc259, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.269, %for.end
  %222 = load i32, i32* %i, align 4
  %223 = load i32, i32* %dim, align 4
  %cmp261 = icmp slt i32 %222, %223
  br i1 %cmp261, label %for.body.262, label %for.end.271

for.body.262:                                     ; preds = %for.cond.260
  %224 = load i32, i32* %i, align 4
  %mul263 = mul nsw i32 2, %224
  %idxprom264 = sext i32 %mul263 to i64
  %arrayidx265 = getelementptr inbounds [6 x i32], [6 x i32]* %A_num_ghost, i32 0, i64 %idxprom264
  store i32 1, i32* %arrayidx265, align 4
  %225 = load i32, i32* %i, align 4
  %mul266 = mul nsw i32 2, %225
  %add = add nsw i32 %mul266, 1
  %idxprom267 = sext i32 %add to i64
  %arrayidx268 = getelementptr inbounds [6 x i32], [6 x i32]* %A_num_ghost, i32 0, i64 %idxprom267
  store i32 1, i32* %arrayidx268, align 4
  br label %for.inc.269

for.inc.269:                                      ; preds = %for.body.262
  %226 = load i32, i32* %i, align 4
  %inc270 = add nsw i32 %226, 1
  store i32 %inc270, i32* %i, align 4
  br label %for.cond.260

for.end.271:                                      ; preds = %for.cond.260
  store i32 0, i32* %ib, align 4
  %227 = load i32, i32* %dim, align 4
  switch i32 %227, label %sw.epilog.422 [
    i32 1, label %sw.bb.272
    i32 2, label %sw.bb.298
    i32 3, label %sw.bb.348
  ]

sw.bb.272:                                        ; preds = %for.end.271
  store i32 0, i32* %ix, align 4
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.295, %sw.bb.272
  %228 = load i32, i32* %ix, align 4
  %229 = load i32, i32* %bx, align 4
  %cmp274 = icmp slt i32 %228, %229
  br i1 %cmp274, label %for.body.275, label %for.end.297

for.body.275:                                     ; preds = %for.cond.273
  %arrayidx276 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 0
  %230 = load i32, i32* %arrayidx276, align 4
  %231 = load i32, i32* %nx, align 4
  %232 = load i32, i32* %bx, align 4
  %233 = load i32, i32* %p, align 4
  %mul277 = mul nsw i32 %232, %233
  %234 = load i32, i32* %ix, align 4
  %add278 = add nsw i32 %mul277, %234
  %mul279 = mul nsw i32 %231, %add278
  %add280 = add nsw i32 %230, %mul279
  %235 = load i32, i32* %ib, align 4
  %idxprom281 = sext i32 %235 to i64
  %236 = load i32**, i32*** %ilower, align 8
  %arrayidx282 = getelementptr inbounds i32*, i32** %236, i64 %idxprom281
  %237 = load i32*, i32** %arrayidx282, align 8
  %arrayidx283 = getelementptr inbounds i32, i32* %237, i64 0
  store i32 %add280, i32* %arrayidx283, align 4
  %arrayidx284 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 0
  %238 = load i32, i32* %arrayidx284, align 4
  %239 = load i32, i32* %nx, align 4
  %240 = load i32, i32* %bx, align 4
  %241 = load i32, i32* %p, align 4
  %mul285 = mul nsw i32 %240, %241
  %242 = load i32, i32* %ix, align 4
  %add286 = add nsw i32 %mul285, %242
  %add287 = add nsw i32 %add286, 1
  %mul288 = mul nsw i32 %239, %add287
  %add289 = add nsw i32 %238, %mul288
  %sub290 = sub nsw i32 %add289, 1
  %243 = load i32, i32* %ib, align 4
  %idxprom291 = sext i32 %243 to i64
  %244 = load i32**, i32*** %iupper, align 8
  %arrayidx292 = getelementptr inbounds i32*, i32** %244, i64 %idxprom291
  %245 = load i32*, i32** %arrayidx292, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %245, i64 0
  store i32 %sub290, i32* %arrayidx293, align 4
  %246 = load i32, i32* %ib, align 4
  %inc294 = add nsw i32 %246, 1
  store i32 %inc294, i32* %ib, align 4
  br label %for.inc.295

for.inc.295:                                      ; preds = %for.body.275
  %247 = load i32, i32* %ix, align 4
  %inc296 = add nsw i32 %247, 1
  store i32 %inc296, i32* %ix, align 4
  br label %for.cond.273

for.end.297:                                      ; preds = %for.cond.273
  br label %sw.epilog.422

sw.bb.298:                                        ; preds = %for.end.271
  store i32 0, i32* %iy, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.345, %sw.bb.298
  %248 = load i32, i32* %iy, align 4
  %249 = load i32, i32* %by, align 4
  %cmp300 = icmp slt i32 %248, %249
  br i1 %cmp300, label %for.body.301, label %for.end.347

for.body.301:                                     ; preds = %for.cond.299
  store i32 0, i32* %ix, align 4
  br label %for.cond.302

for.cond.302:                                     ; preds = %for.inc.342, %for.body.301
  %250 = load i32, i32* %ix, align 4
  %251 = load i32, i32* %bx, align 4
  %cmp303 = icmp slt i32 %250, %251
  br i1 %cmp303, label %for.body.304, label %for.end.344

for.body.304:                                     ; preds = %for.cond.302
  %arrayidx305 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 0
  %252 = load i32, i32* %arrayidx305, align 4
  %253 = load i32, i32* %nx, align 4
  %254 = load i32, i32* %bx, align 4
  %255 = load i32, i32* %p, align 4
  %mul306 = mul nsw i32 %254, %255
  %256 = load i32, i32* %ix, align 4
  %add307 = add nsw i32 %mul306, %256
  %mul308 = mul nsw i32 %253, %add307
  %add309 = add nsw i32 %252, %mul308
  %257 = load i32, i32* %ib, align 4
  %idxprom310 = sext i32 %257 to i64
  %258 = load i32**, i32*** %ilower, align 8
  %arrayidx311 = getelementptr inbounds i32*, i32** %258, i64 %idxprom310
  %259 = load i32*, i32** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds i32, i32* %259, i64 0
  store i32 %add309, i32* %arrayidx312, align 4
  %arrayidx313 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 0
  %260 = load i32, i32* %arrayidx313, align 4
  %261 = load i32, i32* %nx, align 4
  %262 = load i32, i32* %bx, align 4
  %263 = load i32, i32* %p, align 4
  %mul314 = mul nsw i32 %262, %263
  %264 = load i32, i32* %ix, align 4
  %add315 = add nsw i32 %mul314, %264
  %add316 = add nsw i32 %add315, 1
  %mul317 = mul nsw i32 %261, %add316
  %add318 = add nsw i32 %260, %mul317
  %sub319 = sub nsw i32 %add318, 1
  %265 = load i32, i32* %ib, align 4
  %idxprom320 = sext i32 %265 to i64
  %266 = load i32**, i32*** %iupper, align 8
  %arrayidx321 = getelementptr inbounds i32*, i32** %266, i64 %idxprom320
  %267 = load i32*, i32** %arrayidx321, align 8
  %arrayidx322 = getelementptr inbounds i32, i32* %267, i64 0
  store i32 %sub319, i32* %arrayidx322, align 4
  %arrayidx323 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 1
  %268 = load i32, i32* %arrayidx323, align 4
  %269 = load i32, i32* %ny, align 4
  %270 = load i32, i32* %by, align 4
  %271 = load i32, i32* %q, align 4
  %mul324 = mul nsw i32 %270, %271
  %272 = load i32, i32* %iy, align 4
  %add325 = add nsw i32 %mul324, %272
  %mul326 = mul nsw i32 %269, %add325
  %add327 = add nsw i32 %268, %mul326
  %273 = load i32, i32* %ib, align 4
  %idxprom328 = sext i32 %273 to i64
  %274 = load i32**, i32*** %ilower, align 8
  %arrayidx329 = getelementptr inbounds i32*, i32** %274, i64 %idxprom328
  %275 = load i32*, i32** %arrayidx329, align 8
  %arrayidx330 = getelementptr inbounds i32, i32* %275, i64 1
  store i32 %add327, i32* %arrayidx330, align 4
  %arrayidx331 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 1
  %276 = load i32, i32* %arrayidx331, align 4
  %277 = load i32, i32* %ny, align 4
  %278 = load i32, i32* %by, align 4
  %279 = load i32, i32* %q, align 4
  %mul332 = mul nsw i32 %278, %279
  %280 = load i32, i32* %iy, align 4
  %add333 = add nsw i32 %mul332, %280
  %add334 = add nsw i32 %add333, 1
  %mul335 = mul nsw i32 %277, %add334
  %add336 = add nsw i32 %276, %mul335
  %sub337 = sub nsw i32 %add336, 1
  %281 = load i32, i32* %ib, align 4
  %idxprom338 = sext i32 %281 to i64
  %282 = load i32**, i32*** %iupper, align 8
  %arrayidx339 = getelementptr inbounds i32*, i32** %282, i64 %idxprom338
  %283 = load i32*, i32** %arrayidx339, align 8
  %arrayidx340 = getelementptr inbounds i32, i32* %283, i64 1
  store i32 %sub337, i32* %arrayidx340, align 4
  %284 = load i32, i32* %ib, align 4
  %inc341 = add nsw i32 %284, 1
  store i32 %inc341, i32* %ib, align 4
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.body.304
  %285 = load i32, i32* %ix, align 4
  %inc343 = add nsw i32 %285, 1
  store i32 %inc343, i32* %ix, align 4
  br label %for.cond.302

for.end.344:                                      ; preds = %for.cond.302
  br label %for.inc.345

for.inc.345:                                      ; preds = %for.end.344
  %286 = load i32, i32* %iy, align 4
  %inc346 = add nsw i32 %286, 1
  store i32 %inc346, i32* %iy, align 4
  br label %for.cond.299

for.end.347:                                      ; preds = %for.cond.299
  br label %sw.epilog.422

sw.bb.348:                                        ; preds = %for.end.271
  store i32 0, i32* %iz, align 4
  br label %for.cond.349

for.cond.349:                                     ; preds = %for.inc.419, %sw.bb.348
  %287 = load i32, i32* %iz, align 4
  %288 = load i32, i32* %bz, align 4
  %cmp350 = icmp slt i32 %287, %288
  br i1 %cmp350, label %for.body.351, label %for.end.421

for.body.351:                                     ; preds = %for.cond.349
  store i32 0, i32* %iy, align 4
  br label %for.cond.352

for.cond.352:                                     ; preds = %for.inc.416, %for.body.351
  %289 = load i32, i32* %iy, align 4
  %290 = load i32, i32* %by, align 4
  %cmp353 = icmp slt i32 %289, %290
  br i1 %cmp353, label %for.body.354, label %for.end.418

for.body.354:                                     ; preds = %for.cond.352
  store i32 0, i32* %ix, align 4
  br label %for.cond.355

for.cond.355:                                     ; preds = %for.inc.413, %for.body.354
  %291 = load i32, i32* %ix, align 4
  %292 = load i32, i32* %bx, align 4
  %cmp356 = icmp slt i32 %291, %292
  br i1 %cmp356, label %for.body.357, label %for.end.415

for.body.357:                                     ; preds = %for.cond.355
  %arrayidx358 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 0
  %293 = load i32, i32* %arrayidx358, align 4
  %294 = load i32, i32* %nx, align 4
  %295 = load i32, i32* %bx, align 4
  %296 = load i32, i32* %p, align 4
  %mul359 = mul nsw i32 %295, %296
  %297 = load i32, i32* %ix, align 4
  %add360 = add nsw i32 %mul359, %297
  %mul361 = mul nsw i32 %294, %add360
  %add362 = add nsw i32 %293, %mul361
  %298 = load i32, i32* %ib, align 4
  %idxprom363 = sext i32 %298 to i64
  %299 = load i32**, i32*** %ilower, align 8
  %arrayidx364 = getelementptr inbounds i32*, i32** %299, i64 %idxprom363
  %300 = load i32*, i32** %arrayidx364, align 8
  %arrayidx365 = getelementptr inbounds i32, i32* %300, i64 0
  store i32 %add362, i32* %arrayidx365, align 4
  %arrayidx366 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 0
  %301 = load i32, i32* %arrayidx366, align 4
  %302 = load i32, i32* %nx, align 4
  %303 = load i32, i32* %bx, align 4
  %304 = load i32, i32* %p, align 4
  %mul367 = mul nsw i32 %303, %304
  %305 = load i32, i32* %ix, align 4
  %add368 = add nsw i32 %mul367, %305
  %add369 = add nsw i32 %add368, 1
  %mul370 = mul nsw i32 %302, %add369
  %add371 = add nsw i32 %301, %mul370
  %sub372 = sub nsw i32 %add371, 1
  %306 = load i32, i32* %ib, align 4
  %idxprom373 = sext i32 %306 to i64
  %307 = load i32**, i32*** %iupper, align 8
  %arrayidx374 = getelementptr inbounds i32*, i32** %307, i64 %idxprom373
  %308 = load i32*, i32** %arrayidx374, align 8
  %arrayidx375 = getelementptr inbounds i32, i32* %308, i64 0
  store i32 %sub372, i32* %arrayidx375, align 4
  %arrayidx376 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 1
  %309 = load i32, i32* %arrayidx376, align 4
  %310 = load i32, i32* %ny, align 4
  %311 = load i32, i32* %by, align 4
  %312 = load i32, i32* %q, align 4
  %mul377 = mul nsw i32 %311, %312
  %313 = load i32, i32* %iy, align 4
  %add378 = add nsw i32 %mul377, %313
  %mul379 = mul nsw i32 %310, %add378
  %add380 = add nsw i32 %309, %mul379
  %314 = load i32, i32* %ib, align 4
  %idxprom381 = sext i32 %314 to i64
  %315 = load i32**, i32*** %ilower, align 8
  %arrayidx382 = getelementptr inbounds i32*, i32** %315, i64 %idxprom381
  %316 = load i32*, i32** %arrayidx382, align 8
  %arrayidx383 = getelementptr inbounds i32, i32* %316, i64 1
  store i32 %add380, i32* %arrayidx383, align 4
  %arrayidx384 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 1
  %317 = load i32, i32* %arrayidx384, align 4
  %318 = load i32, i32* %ny, align 4
  %319 = load i32, i32* %by, align 4
  %320 = load i32, i32* %q, align 4
  %mul385 = mul nsw i32 %319, %320
  %321 = load i32, i32* %iy, align 4
  %add386 = add nsw i32 %mul385, %321
  %add387 = add nsw i32 %add386, 1
  %mul388 = mul nsw i32 %318, %add387
  %add389 = add nsw i32 %317, %mul388
  %sub390 = sub nsw i32 %add389, 1
  %322 = load i32, i32* %ib, align 4
  %idxprom391 = sext i32 %322 to i64
  %323 = load i32**, i32*** %iupper, align 8
  %arrayidx392 = getelementptr inbounds i32*, i32** %323, i64 %idxprom391
  %324 = load i32*, i32** %arrayidx392, align 8
  %arrayidx393 = getelementptr inbounds i32, i32* %324, i64 1
  store i32 %sub390, i32* %arrayidx393, align 4
  %arrayidx394 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 2
  %325 = load i32, i32* %arrayidx394, align 4
  %326 = load i32, i32* %nz, align 4
  %327 = load i32, i32* %bz, align 4
  %328 = load i32, i32* %r, align 4
  %mul395 = mul nsw i32 %327, %328
  %329 = load i32, i32* %iz, align 4
  %add396 = add nsw i32 %mul395, %329
  %mul397 = mul nsw i32 %326, %add396
  %add398 = add nsw i32 %325, %mul397
  %330 = load i32, i32* %ib, align 4
  %idxprom399 = sext i32 %330 to i64
  %331 = load i32**, i32*** %ilower, align 8
  %arrayidx400 = getelementptr inbounds i32*, i32** %331, i64 %idxprom399
  %332 = load i32*, i32** %arrayidx400, align 8
  %arrayidx401 = getelementptr inbounds i32, i32* %332, i64 2
  store i32 %add398, i32* %arrayidx401, align 4
  %arrayidx402 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 2
  %333 = load i32, i32* %arrayidx402, align 4
  %334 = load i32, i32* %nz, align 4
  %335 = load i32, i32* %bz, align 4
  %336 = load i32, i32* %r, align 4
  %mul403 = mul nsw i32 %335, %336
  %337 = load i32, i32* %iz, align 4
  %add404 = add nsw i32 %mul403, %337
  %add405 = add nsw i32 %add404, 1
  %mul406 = mul nsw i32 %334, %add405
  %add407 = add nsw i32 %333, %mul406
  %sub408 = sub nsw i32 %add407, 1
  %338 = load i32, i32* %ib, align 4
  %idxprom409 = sext i32 %338 to i64
  %339 = load i32**, i32*** %iupper, align 8
  %arrayidx410 = getelementptr inbounds i32*, i32** %339, i64 %idxprom409
  %340 = load i32*, i32** %arrayidx410, align 8
  %arrayidx411 = getelementptr inbounds i32, i32* %340, i64 2
  store i32 %sub408, i32* %arrayidx411, align 4
  %341 = load i32, i32* %ib, align 4
  %inc412 = add nsw i32 %341, 1
  store i32 %inc412, i32* %ib, align 4
  br label %for.inc.413

for.inc.413:                                      ; preds = %for.body.357
  %342 = load i32, i32* %ix, align 4
  %inc414 = add nsw i32 %342, 1
  store i32 %inc414, i32* %ix, align 4
  br label %for.cond.355

for.end.415:                                      ; preds = %for.cond.355
  br label %for.inc.416

for.inc.416:                                      ; preds = %for.end.415
  %343 = load i32, i32* %iy, align 4
  %inc417 = add nsw i32 %343, 1
  store i32 %inc417, i32* %iy, align 4
  br label %for.cond.352

for.end.418:                                      ; preds = %for.cond.352
  br label %for.inc.419

for.inc.419:                                      ; preds = %for.end.418
  %344 = load i32, i32* %iz, align 4
  %inc420 = add nsw i32 %344, 1
  store i32 %inc420, i32* %iz, align 4
  br label %for.cond.349

for.end.421:                                      ; preds = %for.cond.349
  br label %sw.epilog.422

sw.epilog.422:                                    ; preds = %for.end.271, %for.end.421, %for.end.347, %for.end.297
  %345 = load i32, i32* %dim, align 4
  %call423 = call i32 @HYPRE_StructGridCreate(i32 0, i32 %345, %struct.hypre_StructGrid_struct** %grid)
  store i32 0, i32* %ib, align 4
  br label %for.cond.424

for.cond.424:                                     ; preds = %for.inc.432, %sw.epilog.422
  %346 = load i32, i32* %ib, align 4
  %347 = load i32, i32* %nblocks, align 4
  %cmp425 = icmp slt i32 %346, %347
  br i1 %cmp425, label %for.body.426, label %for.end.434

for.body.426:                                     ; preds = %for.cond.424
  %348 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %349 = load i32, i32* %ib, align 4
  %idxprom427 = sext i32 %349 to i64
  %350 = load i32**, i32*** %ilower, align 8
  %arrayidx428 = getelementptr inbounds i32*, i32** %350, i64 %idxprom427
  %351 = load i32*, i32** %arrayidx428, align 8
  %352 = load i32, i32* %ib, align 4
  %idxprom429 = sext i32 %352 to i64
  %353 = load i32**, i32*** %iupper, align 8
  %arrayidx430 = getelementptr inbounds i32*, i32** %353, i64 %idxprom429
  %354 = load i32*, i32** %arrayidx430, align 8
  %call431 = call i32 @HYPRE_StructGridSetExtents(%struct.hypre_StructGrid_struct* %348, i32* %351, i32* %354)
  br label %for.inc.432

for.inc.432:                                      ; preds = %for.body.426
  %355 = load i32, i32* %ib, align 4
  %inc433 = add nsw i32 %355, 1
  store i32 %inc433, i32* %ib, align 4
  br label %for.cond.424

for.end.434:                                      ; preds = %for.cond.424
  %356 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call435 = call i32 @HYPRE_StructGridAssemble(%struct.hypre_StructGrid_struct* %356)
  %357 = load i32, i32* %dim, align 4
  %358 = load i32, i32* %dim, align 4
  %add436 = add nsw i32 %358, 1
  %call437 = call i32 @HYPRE_StructStencilCreate(i32 %357, i32 %add436, %struct.hypre_StructStencil_struct** %stencil)
  store i32 0, i32* %s, align 4
  br label %for.cond.438

for.cond.438:                                     ; preds = %for.inc.445, %for.end.434
  %359 = load i32, i32* %s, align 4
  %360 = load i32, i32* %dim, align 4
  %add439 = add nsw i32 %360, 1
  %cmp440 = icmp slt i32 %359, %add439
  br i1 %cmp440, label %for.body.441, label %for.end.447

for.body.441:                                     ; preds = %for.cond.438
  %361 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %362 = load i32, i32* %s, align 4
  %363 = load i32, i32* %s, align 4
  %idxprom442 = sext i32 %363 to i64
  %364 = load i32**, i32*** %offsets, align 8
  %arrayidx443 = getelementptr inbounds i32*, i32** %364, i64 %idxprom442
  %365 = load i32*, i32** %arrayidx443, align 8
  %call444 = call i32 @HYPRE_StructStencilSetElement(%struct.hypre_StructStencil_struct* %361, i32 %362, i32* %365)
  br label %for.inc.445

for.inc.445:                                      ; preds = %for.body.441
  %366 = load i32, i32* %s, align 4
  %inc446 = add nsw i32 %366, 1
  store i32 %inc446, i32* %s, align 4
  br label %for.cond.438

for.end.447:                                      ; preds = %for.cond.438
  %367 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %368 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call448 = call i32 @HYPRE_StructMatrixCreate(i32 0, %struct.hypre_StructGrid_struct* %367, %struct.hypre_StructStencil_struct* %368, %struct.hypre_StructMatrix_struct** %A)
  %369 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call449 = call i32 @HYPRE_StructMatrixSetSymmetric(%struct.hypre_StructMatrix_struct* %369, i32 1)
  %370 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %A_num_ghost, i32 0, i32 0
  %call450 = call i32 @HYPRE_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct* %370, i32* %arraydecay)
  %371 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call451 = call i32 @HYPRE_StructMatrixInitialize(%struct.hypre_StructMatrix_struct* %371)
  %372 = load i32, i32* %dim, align 4
  %add452 = add nsw i32 %372, 1
  %373 = load i32, i32* %volume, align 4
  %mul453 = mul nsw i32 %add452, %373
  %call454 = call i8* @hypre_CAlloc(i32 %mul453, i32 8)
  %374 = bitcast i8* %call454 to double*
  store double* %374, double** %values, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.509, %for.end.447
  %375 = load i32, i32* %i, align 4
  %376 = load i32, i32* %dim, align 4
  %add456 = add nsw i32 %376, 1
  %377 = load i32, i32* %volume, align 4
  %mul457 = mul nsw i32 %add456, %377
  %cmp458 = icmp slt i32 %375, %mul457
  br i1 %cmp458, label %for.body.459, label %for.end.512

for.body.459:                                     ; preds = %for.cond.455
  store i32 0, i32* %s, align 4
  br label %for.cond.460

for.cond.460:                                     ; preds = %for.inc.506, %for.body.459
  %378 = load i32, i32* %s, align 4
  %379 = load i32, i32* %dim, align 4
  %add461 = add nsw i32 %379, 1
  %cmp462 = icmp slt i32 %378, %add461
  br i1 %cmp462, label %for.body.463, label %for.end.508

for.body.463:                                     ; preds = %for.cond.460
  %380 = load i32, i32* %s, align 4
  %381 = load i32, i32* %s, align 4
  %idxprom464 = sext i32 %381 to i64
  %382 = load i32*, i32** %stencil_indices, align 8
  %arrayidx465 = getelementptr inbounds i32, i32* %382, i64 %idxprom464
  store i32 %380, i32* %arrayidx465, align 4
  %383 = load i32, i32* %dim, align 4
  switch i32 %383, label %sw.epilog.505 [
    i32 1, label %sw.bb.466
    i32 2, label %sw.bb.474
    i32 3, label %sw.bb.487
  ]

sw.bb.466:                                        ; preds = %for.body.463
  %384 = load double, double* %cx, align 8
  %sub467 = fsub double -0.000000e+00, %384
  %385 = load i32, i32* %i, align 4
  %idxprom468 = sext i32 %385 to i64
  %386 = load double*, double** %values, align 8
  %arrayidx469 = getelementptr inbounds double, double* %386, i64 %idxprom468
  store double %sub467, double* %arrayidx469, align 8
  %387 = load double, double* %cx, align 8
  %mul470 = fmul double 2.000000e+00, %387
  %388 = load i32, i32* %i, align 4
  %add471 = add nsw i32 %388, 1
  %idxprom472 = sext i32 %add471 to i64
  %389 = load double*, double** %values, align 8
  %arrayidx473 = getelementptr inbounds double, double* %389, i64 %idxprom472
  store double %mul470, double* %arrayidx473, align 8
  br label %sw.epilog.505

sw.bb.474:                                        ; preds = %for.body.463
  %390 = load double, double* %cx, align 8
  %sub475 = fsub double -0.000000e+00, %390
  %391 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %391 to i64
  %392 = load double*, double** %values, align 8
  %arrayidx477 = getelementptr inbounds double, double* %392, i64 %idxprom476
  store double %sub475, double* %arrayidx477, align 8
  %393 = load double, double* %cy, align 8
  %sub478 = fsub double -0.000000e+00, %393
  %394 = load i32, i32* %i, align 4
  %add479 = add nsw i32 %394, 1
  %idxprom480 = sext i32 %add479 to i64
  %395 = load double*, double** %values, align 8
  %arrayidx481 = getelementptr inbounds double, double* %395, i64 %idxprom480
  store double %sub478, double* %arrayidx481, align 8
  %396 = load double, double* %cx, align 8
  %397 = load double, double* %cy, align 8
  %add482 = fadd double %396, %397
  %mul483 = fmul double 2.000000e+00, %add482
  %398 = load i32, i32* %i, align 4
  %add484 = add nsw i32 %398, 2
  %idxprom485 = sext i32 %add484 to i64
  %399 = load double*, double** %values, align 8
  %arrayidx486 = getelementptr inbounds double, double* %399, i64 %idxprom485
  store double %mul483, double* %arrayidx486, align 8
  br label %sw.epilog.505

sw.bb.487:                                        ; preds = %for.body.463
  %400 = load double, double* %cx, align 8
  %sub488 = fsub double -0.000000e+00, %400
  %401 = load i32, i32* %i, align 4
  %idxprom489 = sext i32 %401 to i64
  %402 = load double*, double** %values, align 8
  %arrayidx490 = getelementptr inbounds double, double* %402, i64 %idxprom489
  store double %sub488, double* %arrayidx490, align 8
  %403 = load double, double* %cy, align 8
  %sub491 = fsub double -0.000000e+00, %403
  %404 = load i32, i32* %i, align 4
  %add492 = add nsw i32 %404, 1
  %idxprom493 = sext i32 %add492 to i64
  %405 = load double*, double** %values, align 8
  %arrayidx494 = getelementptr inbounds double, double* %405, i64 %idxprom493
  store double %sub491, double* %arrayidx494, align 8
  %406 = load double, double* %cz, align 8
  %sub495 = fsub double -0.000000e+00, %406
  %407 = load i32, i32* %i, align 4
  %add496 = add nsw i32 %407, 2
  %idxprom497 = sext i32 %add496 to i64
  %408 = load double*, double** %values, align 8
  %arrayidx498 = getelementptr inbounds double, double* %408, i64 %idxprom497
  store double %sub495, double* %arrayidx498, align 8
  %409 = load double, double* %cx, align 8
  %410 = load double, double* %cy, align 8
  %add499 = fadd double %409, %410
  %411 = load double, double* %cz, align 8
  %add500 = fadd double %add499, %411
  %mul501 = fmul double 2.000000e+00, %add500
  %412 = load i32, i32* %i, align 4
  %add502 = add nsw i32 %412, 3
  %idxprom503 = sext i32 %add502 to i64
  %413 = load double*, double** %values, align 8
  %arrayidx504 = getelementptr inbounds double, double* %413, i64 %idxprom503
  store double %mul501, double* %arrayidx504, align 8
  br label %sw.epilog.505

sw.epilog.505:                                    ; preds = %for.body.463, %sw.bb.487, %sw.bb.474, %sw.bb.466
  br label %for.inc.506

for.inc.506:                                      ; preds = %sw.epilog.505
  %414 = load i32, i32* %s, align 4
  %inc507 = add nsw i32 %414, 1
  store i32 %inc507, i32* %s, align 4
  br label %for.cond.460

for.end.508:                                      ; preds = %for.cond.460
  br label %for.inc.509

for.inc.509:                                      ; preds = %for.end.508
  %415 = load i32, i32* %dim, align 4
  %add510 = add nsw i32 %415, 1
  %416 = load i32, i32* %i, align 4
  %add511 = add nsw i32 %416, %add510
  store i32 %add511, i32* %i, align 4
  br label %for.cond.455

for.end.512:                                      ; preds = %for.cond.455
  store i32 0, i32* %ib, align 4
  br label %for.cond.513

for.cond.513:                                     ; preds = %for.inc.522, %for.end.512
  %417 = load i32, i32* %ib, align 4
  %418 = load i32, i32* %nblocks, align 4
  %cmp514 = icmp slt i32 %417, %418
  br i1 %cmp514, label %for.body.515, label %for.end.524

for.body.515:                                     ; preds = %for.cond.513
  %419 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %420 = load i32, i32* %ib, align 4
  %idxprom516 = sext i32 %420 to i64
  %421 = load i32**, i32*** %ilower, align 8
  %arrayidx517 = getelementptr inbounds i32*, i32** %421, i64 %idxprom516
  %422 = load i32*, i32** %arrayidx517, align 8
  %423 = load i32, i32* %ib, align 4
  %idxprom518 = sext i32 %423 to i64
  %424 = load i32**, i32*** %iupper, align 8
  %arrayidx519 = getelementptr inbounds i32*, i32** %424, i64 %idxprom518
  %425 = load i32*, i32** %arrayidx519, align 8
  %426 = load i32, i32* %dim, align 4
  %add520 = add nsw i32 %426, 1
  %427 = load i32*, i32** %stencil_indices, align 8
  %428 = load double*, double** %values, align 8
  %call521 = call i32 @HYPRE_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct* %419, i32* %422, i32* %425, i32 %add520, i32* %427, double* %428)
  br label %for.inc.522

for.inc.522:                                      ; preds = %for.body.515
  %429 = load i32, i32* %ib, align 4
  %inc523 = add nsw i32 %429, 1
  store i32 %inc523, i32* %ib, align 4
  br label %for.cond.513

for.end.524:                                      ; preds = %for.cond.513
  store i32 0, i32* %i, align 4
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.530, %for.end.524
  %430 = load i32, i32* %i, align 4
  %431 = load i32, i32* %volume, align 4
  %cmp526 = icmp slt i32 %430, %431
  br i1 %cmp526, label %for.body.527, label %for.end.532

for.body.527:                                     ; preds = %for.cond.525
  %432 = load i32, i32* %i, align 4
  %idxprom528 = sext i32 %432 to i64
  %433 = load double*, double** %values, align 8
  %arrayidx529 = getelementptr inbounds double, double* %433, i64 %idxprom528
  store double 0.000000e+00, double* %arrayidx529, align 8
  br label %for.inc.530

for.inc.530:                                      ; preds = %for.body.527
  %434 = load i32, i32* %i, align 4
  %inc531 = add nsw i32 %434, 1
  store i32 %inc531, i32* %i, align 4
  br label %for.cond.525

for.end.532:                                      ; preds = %for.cond.525
  store i32 0, i32* %d, align 4
  br label %for.cond.533

for.cond.533:                                     ; preds = %for.inc.571, %for.end.532
  %435 = load i32, i32* %d, align 4
  %436 = load i32, i32* %dim, align 4
  %cmp534 = icmp slt i32 %435, %436
  br i1 %cmp534, label %for.body.535, label %for.end.573

for.body.535:                                     ; preds = %for.cond.533
  store i32 0, i32* %ib, align 4
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.568, %for.body.535
  %437 = load i32, i32* %ib, align 4
  %438 = load i32, i32* %nblocks, align 4
  %cmp537 = icmp slt i32 %437, %438
  br i1 %cmp537, label %for.body.538, label %for.end.570

for.body.538:                                     ; preds = %for.cond.536
  %439 = load i32, i32* %d, align 4
  %idxprom539 = sext i32 %439 to i64
  %440 = load i32, i32* %ib, align 4
  %idxprom540 = sext i32 %440 to i64
  %441 = load i32**, i32*** %ilower, align 8
  %arrayidx541 = getelementptr inbounds i32*, i32** %441, i64 %idxprom540
  %442 = load i32*, i32** %arrayidx541, align 8
  %arrayidx542 = getelementptr inbounds i32, i32* %442, i64 %idxprom539
  %443 = load i32, i32* %arrayidx542, align 4
  %444 = load i32, i32* %d, align 4
  %idxprom543 = sext i32 %444 to i64
  %arrayidx544 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 %idxprom543
  %445 = load i32, i32* %arrayidx544, align 4
  %cmp545 = icmp eq i32 %443, %445
  br i1 %cmp545, label %if.then.546, label %if.end.567

if.then.546:                                      ; preds = %for.body.538
  %446 = load i32, i32* %d, align 4
  %idxprom547 = sext i32 %446 to i64
  %447 = load i32, i32* %ib, align 4
  %idxprom548 = sext i32 %447 to i64
  %448 = load i32**, i32*** %iupper, align 8
  %arrayidx549 = getelementptr inbounds i32*, i32** %448, i64 %idxprom548
  %449 = load i32*, i32** %arrayidx549, align 8
  %arrayidx550 = getelementptr inbounds i32, i32* %449, i64 %idxprom547
  %450 = load i32, i32* %arrayidx550, align 4
  store i32 %450, i32* %i, align 4
  %451 = load i32, i32* %d, align 4
  %idxprom551 = sext i32 %451 to i64
  %arrayidx552 = getelementptr inbounds [3 x i32], [3 x i32]* %istart, i32 0, i64 %idxprom551
  %452 = load i32, i32* %arrayidx552, align 4
  %453 = load i32, i32* %d, align 4
  %idxprom553 = sext i32 %453 to i64
  %454 = load i32, i32* %ib, align 4
  %idxprom554 = sext i32 %454 to i64
  %455 = load i32**, i32*** %iupper, align 8
  %arrayidx555 = getelementptr inbounds i32*, i32** %455, i64 %idxprom554
  %456 = load i32*, i32** %arrayidx555, align 8
  %arrayidx556 = getelementptr inbounds i32, i32* %456, i64 %idxprom553
  store i32 %452, i32* %arrayidx556, align 4
  %457 = load i32, i32* %d, align 4
  %458 = load i32*, i32** %stencil_indices, align 8
  %arrayidx557 = getelementptr inbounds i32, i32* %458, i64 0
  store i32 %457, i32* %arrayidx557, align 4
  %459 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %460 = load i32, i32* %ib, align 4
  %idxprom558 = sext i32 %460 to i64
  %461 = load i32**, i32*** %ilower, align 8
  %arrayidx559 = getelementptr inbounds i32*, i32** %461, i64 %idxprom558
  %462 = load i32*, i32** %arrayidx559, align 8
  %463 = load i32, i32* %ib, align 4
  %idxprom560 = sext i32 %463 to i64
  %464 = load i32**, i32*** %iupper, align 8
  %arrayidx561 = getelementptr inbounds i32*, i32** %464, i64 %idxprom560
  %465 = load i32*, i32** %arrayidx561, align 8
  %466 = load i32*, i32** %stencil_indices, align 8
  %467 = load double*, double** %values, align 8
  %call562 = call i32 @HYPRE_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct* %459, i32* %462, i32* %465, i32 1, i32* %466, double* %467)
  %468 = load i32, i32* %i, align 4
  %469 = load i32, i32* %d, align 4
  %idxprom563 = sext i32 %469 to i64
  %470 = load i32, i32* %ib, align 4
  %idxprom564 = sext i32 %470 to i64
  %471 = load i32**, i32*** %iupper, align 8
  %arrayidx565 = getelementptr inbounds i32*, i32** %471, i64 %idxprom564
  %472 = load i32*, i32** %arrayidx565, align 8
  %arrayidx566 = getelementptr inbounds i32, i32* %472, i64 %idxprom563
  store i32 %468, i32* %arrayidx566, align 4
  br label %if.end.567

if.end.567:                                       ; preds = %if.then.546, %for.body.538
  br label %for.inc.568

for.inc.568:                                      ; preds = %if.end.567
  %473 = load i32, i32* %ib, align 4
  %inc569 = add nsw i32 %473, 1
  store i32 %inc569, i32* %ib, align 4
  br label %for.cond.536

for.end.570:                                      ; preds = %for.cond.536
  br label %for.inc.571

for.inc.571:                                      ; preds = %for.end.570
  %474 = load i32, i32* %d, align 4
  %inc572 = add nsw i32 %474, 1
  store i32 %inc572, i32* %d, align 4
  br label %for.cond.533

for.end.573:                                      ; preds = %for.cond.533
  %475 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call574 = call i32 @HYPRE_StructMatrixAssemble(%struct.hypre_StructMatrix_struct* %475)
  %476 = load double*, double** %values, align 8
  %477 = bitcast double* %476 to i8*
  call void @hypre_Free(i8* %477)
  store double* null, double** %values, align 8
  %478 = load i32, i32* %volume, align 4
  %call575 = call i8* @hypre_CAlloc(i32 %478, i32 8)
  %479 = bitcast i8* %call575 to double*
  store double* %479, double** %values, align 8
  %480 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call576 = call i32 @HYPRE_StructVectorCreate(i32 0, %struct.hypre_StructGrid_struct* %480, %struct.hypre_StructVector_struct** %b)
  %481 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %call577 = call i32 @HYPRE_StructVectorInitialize(%struct.hypre_StructVector_struct* %481)
  store i32 0, i32* %i, align 4
  br label %for.cond.578

for.cond.578:                                     ; preds = %for.inc.583, %for.end.573
  %482 = load i32, i32* %i, align 4
  %483 = load i32, i32* %volume, align 4
  %cmp579 = icmp slt i32 %482, %483
  br i1 %cmp579, label %for.body.580, label %for.end.585

for.body.580:                                     ; preds = %for.cond.578
  %484 = load i32, i32* %i, align 4
  %idxprom581 = sext i32 %484 to i64
  %485 = load double*, double** %values, align 8
  %arrayidx582 = getelementptr inbounds double, double* %485, i64 %idxprom581
  store double 1.000000e+00, double* %arrayidx582, align 8
  br label %for.inc.583

for.inc.583:                                      ; preds = %for.body.580
  %486 = load i32, i32* %i, align 4
  %inc584 = add nsw i32 %486, 1
  store i32 %inc584, i32* %i, align 4
  br label %for.cond.578

for.end.585:                                      ; preds = %for.cond.578
  store i32 0, i32* %ib, align 4
  br label %for.cond.586

for.cond.586:                                     ; preds = %for.inc.594, %for.end.585
  %487 = load i32, i32* %ib, align 4
  %488 = load i32, i32* %nblocks, align 4
  %cmp587 = icmp slt i32 %487, %488
  br i1 %cmp587, label %for.body.588, label %for.end.596

for.body.588:                                     ; preds = %for.cond.586
  %489 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %490 = load i32, i32* %ib, align 4
  %idxprom589 = sext i32 %490 to i64
  %491 = load i32**, i32*** %ilower, align 8
  %arrayidx590 = getelementptr inbounds i32*, i32** %491, i64 %idxprom589
  %492 = load i32*, i32** %arrayidx590, align 8
  %493 = load i32, i32* %ib, align 4
  %idxprom591 = sext i32 %493 to i64
  %494 = load i32**, i32*** %iupper, align 8
  %arrayidx592 = getelementptr inbounds i32*, i32** %494, i64 %idxprom591
  %495 = load i32*, i32** %arrayidx592, align 8
  %496 = load double*, double** %values, align 8
  %call593 = call i32 @HYPRE_StructVectorSetBoxValues(%struct.hypre_StructVector_struct* %489, i32* %492, i32* %495, double* %496)
  br label %for.inc.594

for.inc.594:                                      ; preds = %for.body.588
  %497 = load i32, i32* %ib, align 4
  %inc595 = add nsw i32 %497, 1
  store i32 %inc595, i32* %ib, align 4
  br label %for.cond.586

for.end.596:                                      ; preds = %for.cond.586
  %498 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %call597 = call i32 @HYPRE_StructVectorAssemble(%struct.hypre_StructVector_struct* %498)
  %499 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call598 = call i32 @HYPRE_StructVectorCreate(i32 0, %struct.hypre_StructGrid_struct* %499, %struct.hypre_StructVector_struct** %x)
  %500 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call599 = call i32 @HYPRE_StructVectorInitialize(%struct.hypre_StructVector_struct* %500)
  store i32 0, i32* %i, align 4
  br label %for.cond.600

for.cond.600:                                     ; preds = %for.inc.605, %for.end.596
  %501 = load i32, i32* %i, align 4
  %502 = load i32, i32* %volume, align 4
  %cmp601 = icmp slt i32 %501, %502
  br i1 %cmp601, label %for.body.602, label %for.end.607

for.body.602:                                     ; preds = %for.cond.600
  %503 = load i32, i32* %i, align 4
  %idxprom603 = sext i32 %503 to i64
  %504 = load double*, double** %values, align 8
  %arrayidx604 = getelementptr inbounds double, double* %504, i64 %idxprom603
  store double 0.000000e+00, double* %arrayidx604, align 8
  br label %for.inc.605

for.inc.605:                                      ; preds = %for.body.602
  %505 = load i32, i32* %i, align 4
  %inc606 = add nsw i32 %505, 1
  store i32 %inc606, i32* %i, align 4
  br label %for.cond.600

for.end.607:                                      ; preds = %for.cond.600
  store i32 0, i32* %ib, align 4
  br label %for.cond.608

for.cond.608:                                     ; preds = %for.inc.616, %for.end.607
  %506 = load i32, i32* %ib, align 4
  %507 = load i32, i32* %nblocks, align 4
  %cmp609 = icmp slt i32 %506, %507
  br i1 %cmp609, label %for.body.610, label %for.end.618

for.body.610:                                     ; preds = %for.cond.608
  %508 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %509 = load i32, i32* %ib, align 4
  %idxprom611 = sext i32 %509 to i64
  %510 = load i32**, i32*** %ilower, align 8
  %arrayidx612 = getelementptr inbounds i32*, i32** %510, i64 %idxprom611
  %511 = load i32*, i32** %arrayidx612, align 8
  %512 = load i32, i32* %ib, align 4
  %idxprom613 = sext i32 %512 to i64
  %513 = load i32**, i32*** %iupper, align 8
  %arrayidx614 = getelementptr inbounds i32*, i32** %513, i64 %idxprom613
  %514 = load i32*, i32** %arrayidx614, align 8
  %515 = load double*, double** %values, align 8
  %call615 = call i32 @HYPRE_StructVectorSetBoxValues(%struct.hypre_StructVector_struct* %508, i32* %511, i32* %514, double* %515)
  br label %for.inc.616

for.inc.616:                                      ; preds = %for.body.610
  %516 = load i32, i32* %ib, align 4
  %inc617 = add nsw i32 %516, 1
  store i32 %inc617, i32* %ib, align 4
  br label %for.cond.608

for.end.618:                                      ; preds = %for.cond.608
  %517 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call619 = call i32 @HYPRE_StructVectorAssemble(%struct.hypre_StructVector_struct* %517)
  %518 = load double*, double** %values, align 8
  %519 = bitcast double* %518 to i8*
  call void @hypre_Free(i8* %519)
  store double* null, double** %values, align 8
  %520 = load i32, i32* %time_index, align 4
  %call620 = call i32 @hypre_EndTiming(i32 %520)
  %call621 = call i32 @hypre_PrintTiming(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 0)
  %521 = load i32, i32* %time_index, align 4
  %call622 = call i32 @hypre_FinalizeTiming(i32 %521)
  %call623 = call i32 @hypre_ClearTiming()
  %522 = load i32, i32* %solver_id, align 4
  %cmp624 = icmp eq i32 %522, 0
  br i1 %cmp624, label %if.then.625, label %if.end.651

if.then.625:                                      ; preds = %for.end.618
  %call626 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0))
  store i32 %call626, i32* %time_index, align 4
  %523 = load i32, i32* %time_index, align 4
  %call627 = call i32 @hypre_BeginTiming(i32 %523)
  %call628 = call i32 @HYPRE_StructSMGCreate(i32 0, %struct.hypre_StructSolver_struct** %solver)
  %524 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call629 = call i32 @HYPRE_StructSMGSetMemoryUse(%struct.hypre_StructSolver_struct* %524, i32 0)
  %525 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call630 = call i32 @HYPRE_StructSMGSetMaxIter(%struct.hypre_StructSolver_struct* %525, i32 50)
  %526 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call631 = call i32 @HYPRE_StructSMGSetTol(%struct.hypre_StructSolver_struct* %526, double 1.000000e-06)
  %527 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call632 = call i32 @HYPRE_StructSMGSetRelChange(%struct.hypre_StructSolver_struct* %527, i32 0)
  %528 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %529 = load i32, i32* %n_pre, align 4
  %call633 = call i32 @HYPRE_StructSMGSetNumPreRelax(%struct.hypre_StructSolver_struct* %528, i32 %529)
  %530 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %531 = load i32, i32* %n_post, align 4
  %call634 = call i32 @HYPRE_StructSMGSetNumPostRelax(%struct.hypre_StructSolver_struct* %530, i32 %531)
  %532 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call635 = call i32 @HYPRE_StructSMGSetLogging(%struct.hypre_StructSolver_struct* %532, i32 1)
  %533 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %534 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %535 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %536 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call636 = call i32 @HYPRE_StructSMGSetup(%struct.hypre_StructSolver_struct* %533, %struct.hypre_StructMatrix_struct* %534, %struct.hypre_StructVector_struct* %535, %struct.hypre_StructVector_struct* %536)
  %537 = load i32, i32* %time_index, align 4
  %call637 = call i32 @hypre_EndTiming(i32 %537)
  %call638 = call i32 @hypre_PrintTiming(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 0)
  %538 = load i32, i32* %time_index, align 4
  %call639 = call i32 @hypre_FinalizeTiming(i32 %538)
  %call640 = call i32 @hypre_ClearTiming()
  %call641 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0))
  store i32 %call641, i32* %time_index, align 4
  %539 = load i32, i32* %time_index, align 4
  %call642 = call i32 @hypre_BeginTiming(i32 %539)
  %540 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %541 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %542 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %543 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call643 = call i32 @HYPRE_StructSMGSolve(%struct.hypre_StructSolver_struct* %540, %struct.hypre_StructMatrix_struct* %541, %struct.hypre_StructVector_struct* %542, %struct.hypre_StructVector_struct* %543)
  %544 = load i32, i32* %time_index, align 4
  %call644 = call i32 @hypre_EndTiming(i32 %544)
  %call645 = call i32 @hypre_PrintTiming(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 0)
  %545 = load i32, i32* %time_index, align 4
  %call646 = call i32 @hypre_FinalizeTiming(i32 %545)
  %call647 = call i32 @hypre_ClearTiming()
  %546 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call648 = call i32 @HYPRE_StructSMGGetNumIterations(%struct.hypre_StructSolver_struct* %546, i32* %num_iterations)
  %547 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call649 = call i32 @HYPRE_StructSMGGetFinalRelativeResidualNorm(%struct.hypre_StructSolver_struct* %547, double* %final_res_norm)
  %548 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call650 = call i32 @HYPRE_StructSMGDestroy(%struct.hypre_StructSolver_struct* %548)
  br label %if.end.651

if.end.651:                                       ; preds = %if.then.625, %for.end.618
  %549 = load i32, i32* %solver_id, align 4
  %cmp652 = icmp sgt i32 %549, 0
  br i1 %cmp652, label %if.then.653, label %if.end.698

if.then.653:                                      ; preds = %if.end.651
  %call654 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0))
  store i32 %call654, i32* %time_index, align 4
  %550 = load i32, i32* %time_index, align 4
  %call655 = call i32 @hypre_BeginTiming(i32 %550)
  %call656 = call i32 @HYPRE_StructPCGCreate(i32 0, %struct.hypre_StructSolver_struct** %solver)
  %551 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %552 = bitcast %struct.hypre_StructSolver_struct* %551 to %struct.hypre_Solver_struct*
  %call657 = call i32 @HYPRE_PCGSetMaxIter(%struct.hypre_Solver_struct* %552, i32 50)
  %553 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %554 = bitcast %struct.hypre_StructSolver_struct* %553 to %struct.hypre_Solver_struct*
  %call658 = call i32 @HYPRE_PCGSetTol(%struct.hypre_Solver_struct* %554, double 1.000000e-06)
  %555 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %556 = bitcast %struct.hypre_StructSolver_struct* %555 to %struct.hypre_Solver_struct*
  %call659 = call i32 @HYPRE_PCGSetTwoNorm(%struct.hypre_Solver_struct* %556, i32 1)
  %557 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %558 = bitcast %struct.hypre_StructSolver_struct* %557 to %struct.hypre_Solver_struct*
  %call660 = call i32 @HYPRE_PCGSetRelChange(%struct.hypre_Solver_struct* %558, i32 0)
  %559 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %560 = bitcast %struct.hypre_StructSolver_struct* %559 to %struct.hypre_Solver_struct*
  %call661 = call i32 @HYPRE_PCGSetLogging(%struct.hypre_Solver_struct* %560, i32 1)
  %561 = load i32, i32* %solver_id, align 4
  %cmp662 = icmp eq i32 %561, 1
  br i1 %cmp662, label %if.then.663, label %if.else.673

if.then.663:                                      ; preds = %if.then.653
  %call664 = call i32 @HYPRE_StructSMGCreate(i32 0, %struct.hypre_StructSolver_struct** %precond)
  %562 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %call665 = call i32 @HYPRE_StructSMGSetMemoryUse(%struct.hypre_StructSolver_struct* %562, i32 0)
  %563 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %call666 = call i32 @HYPRE_StructSMGSetMaxIter(%struct.hypre_StructSolver_struct* %563, i32 1)
  %564 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %call667 = call i32 @HYPRE_StructSMGSetTol(%struct.hypre_StructSolver_struct* %564, double 0.000000e+00)
  %565 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %call668 = call i32 @HYPRE_StructSMGSetZeroGuess(%struct.hypre_StructSolver_struct* %565)
  %566 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %567 = load i32, i32* %n_pre, align 4
  %call669 = call i32 @HYPRE_StructSMGSetNumPreRelax(%struct.hypre_StructSolver_struct* %566, i32 %567)
  %568 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %569 = load i32, i32* %n_post, align 4
  %call670 = call i32 @HYPRE_StructSMGSetNumPostRelax(%struct.hypre_StructSolver_struct* %568, i32 %569)
  %570 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %call671 = call i32 @HYPRE_StructSMGSetLogging(%struct.hypre_StructSolver_struct* %570, i32 0)
  %571 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %572 = bitcast %struct.hypre_StructSolver_struct* %571 to %struct.hypre_Solver_struct*
  %573 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %574 = bitcast %struct.hypre_StructSolver_struct* %573 to %struct.hypre_Solver_struct*
  %call672 = call i32 @HYPRE_PCGSetPrecond(%struct.hypre_Solver_struct* %572, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* bitcast (i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* @HYPRE_StructSMGSolve to i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*), i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* bitcast (i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* @HYPRE_StructSMGSetup to i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*), %struct.hypre_Solver_struct* %574)
  br label %if.end.678

if.else.673:                                      ; preds = %if.then.653
  %575 = load i32, i32* %solver_id, align 4
  %cmp674 = icmp eq i32 %575, 2
  br i1 %cmp674, label %if.then.675, label %if.end.677

if.then.675:                                      ; preds = %if.else.673
  store %struct.hypre_StructSolver_struct* null, %struct.hypre_StructSolver_struct** %precond, align 8
  %576 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %577 = bitcast %struct.hypre_StructSolver_struct* %576 to %struct.hypre_Solver_struct*
  %578 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %579 = bitcast %struct.hypre_StructSolver_struct* %578 to %struct.hypre_Solver_struct*
  %call676 = call i32 @HYPRE_PCGSetPrecond(%struct.hypre_Solver_struct* %577, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* bitcast (i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* @HYPRE_StructDiagScale to i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*), i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)* bitcast (i32 (%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*)* @HYPRE_StructDiagScaleSetup to i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*), %struct.hypre_Solver_struct* %579)
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.675, %if.else.673
  br label %if.end.678

if.end.678:                                       ; preds = %if.end.677, %if.then.663
  %580 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %581 = bitcast %struct.hypre_StructSolver_struct* %580 to %struct.hypre_Solver_struct*
  %582 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %583 = bitcast %struct.hypre_StructMatrix_struct* %582 to %struct.hypre_Matrix_struct*
  %584 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %585 = bitcast %struct.hypre_StructVector_struct* %584 to %struct.hypre_Vector_struct*
  %586 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %587 = bitcast %struct.hypre_StructVector_struct* %586 to %struct.hypre_Vector_struct*
  %call679 = call i32 @HYPRE_PCGSetup(%struct.hypre_Solver_struct* %581, %struct.hypre_Matrix_struct* %583, %struct.hypre_Vector_struct* %585, %struct.hypre_Vector_struct* %587)
  %588 = load i32, i32* %time_index, align 4
  %call680 = call i32 @hypre_EndTiming(i32 %588)
  %call681 = call i32 @hypre_PrintTiming(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i32 0, i32 0), i32 0)
  %589 = load i32, i32* %time_index, align 4
  %call682 = call i32 @hypre_FinalizeTiming(i32 %589)
  %call683 = call i32 @hypre_ClearTiming()
  %call684 = call i32 @hypre_InitializeTiming(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0))
  store i32 %call684, i32* %time_index, align 4
  %590 = load i32, i32* %time_index, align 4
  %call685 = call i32 @hypre_BeginTiming(i32 %590)
  %591 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %592 = bitcast %struct.hypre_StructSolver_struct* %591 to %struct.hypre_Solver_struct*
  %593 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %594 = bitcast %struct.hypre_StructMatrix_struct* %593 to %struct.hypre_Matrix_struct*
  %595 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %596 = bitcast %struct.hypre_StructVector_struct* %595 to %struct.hypre_Vector_struct*
  %597 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %598 = bitcast %struct.hypre_StructVector_struct* %597 to %struct.hypre_Vector_struct*
  %call686 = call i32 @HYPRE_PCGSolve(%struct.hypre_Solver_struct* %592, %struct.hypre_Matrix_struct* %594, %struct.hypre_Vector_struct* %596, %struct.hypre_Vector_struct* %598)
  %599 = load i32, i32* %time_index, align 4
  %call687 = call i32 @hypre_EndTiming(i32 %599)
  %call688 = call i32 @hypre_PrintTiming(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i32 0)
  %600 = load i32, i32* %time_index, align 4
  %call689 = call i32 @hypre_FinalizeTiming(i32 %600)
  %call690 = call i32 @hypre_ClearTiming()
  %601 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %602 = bitcast %struct.hypre_StructSolver_struct* %601 to %struct.hypre_Solver_struct*
  %call691 = call i32 @HYPRE_PCGGetNumIterations(%struct.hypre_Solver_struct* %602, i32* %num_iterations)
  %603 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %604 = bitcast %struct.hypre_StructSolver_struct* %603 to %struct.hypre_Solver_struct*
  %call692 = call i32 @HYPRE_PCGGetFinalRelativeResidualNorm(%struct.hypre_Solver_struct* %604, double* %final_res_norm)
  %605 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %solver, align 8
  %call693 = call i32 @HYPRE_StructPCGDestroy(%struct.hypre_StructSolver_struct* %605)
  %606 = load i32, i32* %solver_id, align 4
  %cmp694 = icmp eq i32 %606, 1
  br i1 %cmp694, label %if.then.695, label %if.end.697

if.then.695:                                      ; preds = %if.end.678
  %607 = load %struct.hypre_StructSolver_struct*, %struct.hypre_StructSolver_struct** %precond, align 8
  %call696 = call i32 @HYPRE_StructSMGDestroy(%struct.hypre_StructSolver_struct* %607)
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.695, %if.end.678
  br label %if.end.698

if.end.698:                                       ; preds = %if.end.697, %if.end.651
  %608 = load i32, i32* %myid, align 4
  %cmp699 = icmp eq i32 %608, 0
  br i1 %cmp699, label %if.then.700, label %if.end.705

if.then.700:                                      ; preds = %if.end.698
  %call701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  %609 = load i32, i32* %num_iterations, align 4
  %call702 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i32 %609)
  %610 = load double, double* %final_res_norm, align 8
  %call703 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i32 0, i32 0), double %610)
  %call704 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.705

if.end.705:                                       ; preds = %if.then.700, %if.end.698
  %611 = load %struct.hypre_StructGrid_struct*, %struct.hypre_StructGrid_struct** %grid, align 8
  %call706 = call i32 @HYPRE_StructGridDestroy(%struct.hypre_StructGrid_struct* %611)
  %612 = load %struct.hypre_StructStencil_struct*, %struct.hypre_StructStencil_struct** %stencil, align 8
  %call707 = call i32 @HYPRE_StructStencilDestroy(%struct.hypre_StructStencil_struct* %612)
  %613 = load %struct.hypre_StructMatrix_struct*, %struct.hypre_StructMatrix_struct** %A, align 8
  %call708 = call i32 @HYPRE_StructMatrixDestroy(%struct.hypre_StructMatrix_struct* %613)
  %614 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %b, align 8
  %call709 = call i32 @HYPRE_StructVectorDestroy(%struct.hypre_StructVector_struct* %614)
  %615 = load %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct** %x, align 8
  %call710 = call i32 @HYPRE_StructVectorDestroy(%struct.hypre_StructVector_struct* %615)
  store i32 0, i32* %i, align 4
  br label %for.cond.711

for.cond.711:                                     ; preds = %for.inc.722, %if.end.705
  %616 = load i32, i32* %i, align 4
  %617 = load i32, i32* %nblocks, align 4
  %cmp712 = icmp slt i32 %616, %617
  br i1 %cmp712, label %for.body.713, label %for.end.724

for.body.713:                                     ; preds = %for.cond.711
  %618 = load i32, i32* %i, align 4
  %idxprom714 = sext i32 %618 to i64
  %619 = load i32**, i32*** %iupper, align 8
  %arrayidx715 = getelementptr inbounds i32*, i32** %619, i64 %idxprom714
  %620 = load i32*, i32** %arrayidx715, align 8
  %621 = bitcast i32* %620 to i8*
  call void @hypre_Free(i8* %621)
  %622 = load i32, i32* %i, align 4
  %idxprom716 = sext i32 %622 to i64
  %623 = load i32**, i32*** %iupper, align 8
  %arrayidx717 = getelementptr inbounds i32*, i32** %623, i64 %idxprom716
  store i32* null, i32** %arrayidx717, align 8
  %624 = load i32, i32* %i, align 4
  %idxprom718 = sext i32 %624 to i64
  %625 = load i32**, i32*** %ilower, align 8
  %arrayidx719 = getelementptr inbounds i32*, i32** %625, i64 %idxprom718
  %626 = load i32*, i32** %arrayidx719, align 8
  %627 = bitcast i32* %626 to i8*
  call void @hypre_Free(i8* %627)
  %628 = load i32, i32* %i, align 4
  %idxprom720 = sext i32 %628 to i64
  %629 = load i32**, i32*** %ilower, align 8
  %arrayidx721 = getelementptr inbounds i32*, i32** %629, i64 %idxprom720
  store i32* null, i32** %arrayidx721, align 8
  br label %for.inc.722

for.inc.722:                                      ; preds = %for.body.713
  %630 = load i32, i32* %i, align 4
  %inc723 = add nsw i32 %630, 1
  store i32 %inc723, i32* %i, align 4
  br label %for.cond.711

for.end.724:                                      ; preds = %for.cond.711
  %631 = load i32**, i32*** %ilower, align 8
  %632 = bitcast i32** %631 to i8*
  call void @hypre_Free(i8* %632)
  store i32** null, i32*** %ilower, align 8
  %633 = load i32**, i32*** %iupper, align 8
  %634 = bitcast i32** %633 to i8*
  call void @hypre_Free(i8* %634)
  store i32** null, i32*** %iupper, align 8
  %635 = load i32*, i32** %stencil_indices, align 8
  %636 = bitcast i32* %635 to i8*
  call void @hypre_Free(i8* %636)
  store i32* null, i32** %stencil_indices, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.725

for.cond.725:                                     ; preds = %for.inc.733, %for.end.724
  %637 = load i32, i32* %i, align 4
  %638 = load i32, i32* %dim, align 4
  %add726 = add nsw i32 %638, 1
  %cmp727 = icmp slt i32 %637, %add726
  br i1 %cmp727, label %for.body.728, label %for.end.735

for.body.728:                                     ; preds = %for.cond.725
  %639 = load i32, i32* %i, align 4
  %idxprom729 = sext i32 %639 to i64
  %640 = load i32**, i32*** %offsets, align 8
  %arrayidx730 = getelementptr inbounds i32*, i32** %640, i64 %idxprom729
  %641 = load i32*, i32** %arrayidx730, align 8
  %642 = bitcast i32* %641 to i8*
  call void @hypre_Free(i8* %642)
  %643 = load i32, i32* %i, align 4
  %idxprom731 = sext i32 %643 to i64
  %644 = load i32**, i32*** %offsets, align 8
  %arrayidx732 = getelementptr inbounds i32*, i32** %644, i64 %idxprom731
  store i32* null, i32** %arrayidx732, align 8
  br label %for.inc.733

for.inc.733:                                      ; preds = %for.body.728
  %645 = load i32, i32* %i, align 4
  %inc734 = add nsw i32 %645, 1
  store i32 %inc734, i32* %i, align 4
  br label %for.cond.725

for.end.735:                                      ; preds = %for.cond.725
  %646 = load i32**, i32*** %offsets, align 8
  %647 = bitcast i32** %646 to i8*
  call void @hypre_Free(i8* %647)
  store i32** null, i32*** %offsets, align 8
  %call736 = call i32 @hypre_MPI_Finalize()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare i32 @hypre_MPI_Init(i32*, i8***) #2

declare i32 @hypre_MPI_Comm_size(i32, i32*) #2

declare i32 @hypre_MPI_Comm_rank(i32, i32*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @hypre_MPI_Barrier(i32) #2

declare i32 @hypre_InitializeTiming(i8*) #2

declare i32 @hypre_BeginTiming(i32) #2

declare i8* @hypre_CAlloc(i32, i32) #2

declare i32 @HYPRE_StructGridCreate(i32, i32, %struct.hypre_StructGrid_struct**) #2

declare i32 @HYPRE_StructGridSetExtents(%struct.hypre_StructGrid_struct*, i32*, i32*) #2

declare i32 @HYPRE_StructGridAssemble(%struct.hypre_StructGrid_struct*) #2

declare i32 @HYPRE_StructStencilCreate(i32, i32, %struct.hypre_StructStencil_struct**) #2

declare i32 @HYPRE_StructStencilSetElement(%struct.hypre_StructStencil_struct*, i32, i32*) #2

declare i32 @HYPRE_StructMatrixCreate(i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructStencil_struct*, %struct.hypre_StructMatrix_struct**) #2

declare i32 @HYPRE_StructMatrixSetSymmetric(%struct.hypre_StructMatrix_struct*, i32) #2

declare i32 @HYPRE_StructMatrixSetNumGhost(%struct.hypre_StructMatrix_struct*, i32*) #2

declare i32 @HYPRE_StructMatrixInitialize(%struct.hypre_StructMatrix_struct*) #2

declare i32 @HYPRE_StructMatrixSetBoxValues(%struct.hypre_StructMatrix_struct*, i32*, i32*, i32, i32*, double*) #2

declare i32 @HYPRE_StructMatrixAssemble(%struct.hypre_StructMatrix_struct*) #2

declare void @hypre_Free(i8*) #2

declare i32 @HYPRE_StructVectorCreate(i32, %struct.hypre_StructGrid_struct*, %struct.hypre_StructVector_struct**) #2

declare i32 @HYPRE_StructVectorInitialize(%struct.hypre_StructVector_struct*) #2

declare i32 @HYPRE_StructVectorSetBoxValues(%struct.hypre_StructVector_struct*, i32*, i32*, double*) #2

declare i32 @HYPRE_StructVectorAssemble(%struct.hypre_StructVector_struct*) #2

declare i32 @hypre_EndTiming(i32) #2

declare i32 @hypre_PrintTiming(i8*, i32) #2

declare i32 @hypre_FinalizeTiming(i32) #2

declare i32 @hypre_ClearTiming() #2

declare i32 @HYPRE_StructSMGCreate(i32, %struct.hypre_StructSolver_struct**) #2

declare i32 @HYPRE_StructSMGSetMemoryUse(%struct.hypre_StructSolver_struct*, i32) #2

declare i32 @HYPRE_StructSMGSetMaxIter(%struct.hypre_StructSolver_struct*, i32) #2

declare i32 @HYPRE_StructSMGSetTol(%struct.hypre_StructSolver_struct*, double) #2

declare i32 @HYPRE_StructSMGSetRelChange(%struct.hypre_StructSolver_struct*, i32) #2

declare i32 @HYPRE_StructSMGSetNumPreRelax(%struct.hypre_StructSolver_struct*, i32) #2

declare i32 @HYPRE_StructSMGSetNumPostRelax(%struct.hypre_StructSolver_struct*, i32) #2

declare i32 @HYPRE_StructSMGSetLogging(%struct.hypre_StructSolver_struct*, i32) #2

declare i32 @HYPRE_StructSMGSetup(%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i32 @HYPRE_StructSMGSolve(%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i32 @HYPRE_StructSMGGetNumIterations(%struct.hypre_StructSolver_struct*, i32*) #2

declare i32 @HYPRE_StructSMGGetFinalRelativeResidualNorm(%struct.hypre_StructSolver_struct*, double*) #2

declare i32 @HYPRE_StructSMGDestroy(%struct.hypre_StructSolver_struct*) #2

declare i32 @HYPRE_StructPCGCreate(i32, %struct.hypre_StructSolver_struct**) #2

declare i32 @HYPRE_PCGSetMaxIter(%struct.hypre_Solver_struct*, i32) #2

declare i32 @HYPRE_PCGSetTol(%struct.hypre_Solver_struct*, double) #2

declare i32 @HYPRE_PCGSetTwoNorm(%struct.hypre_Solver_struct*, i32) #2

declare i32 @HYPRE_PCGSetRelChange(%struct.hypre_Solver_struct*, i32) #2

declare i32 @HYPRE_PCGSetLogging(%struct.hypre_Solver_struct*, i32) #2

declare i32 @HYPRE_StructSMGSetZeroGuess(%struct.hypre_StructSolver_struct*) #2

declare i32 @HYPRE_PCGSetPrecond(%struct.hypre_Solver_struct*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, i32 (%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*)*, %struct.hypre_Solver_struct*) #2

declare i32 @HYPRE_StructDiagScale(%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i32 @HYPRE_StructDiagScaleSetup(%struct.hypre_StructSolver_struct*, %struct.hypre_StructMatrix_struct*, %struct.hypre_StructVector_struct*, %struct.hypre_StructVector_struct*) #2

declare i32 @HYPRE_PCGSetup(%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*) #2

declare i32 @HYPRE_PCGSolve(%struct.hypre_Solver_struct*, %struct.hypre_Matrix_struct*, %struct.hypre_Vector_struct*, %struct.hypre_Vector_struct*) #2

declare i32 @HYPRE_PCGGetNumIterations(%struct.hypre_Solver_struct*, i32*) #2

declare i32 @HYPRE_PCGGetFinalRelativeResidualNorm(%struct.hypre_Solver_struct*, double*) #2

declare i32 @HYPRE_StructPCGDestroy(%struct.hypre_StructSolver_struct*) #2

declare i32 @HYPRE_StructGridDestroy(%struct.hypre_StructGrid_struct*) #2

declare i32 @HYPRE_StructStencilDestroy(%struct.hypre_StructStencil_struct*) #2

declare i32 @HYPRE_StructMatrixDestroy(%struct.hypre_StructMatrix_struct*) #2

declare i32 @HYPRE_StructVectorDestroy(%struct.hypre_StructVector_struct*) #2

declare i32 @hypre_MPI_Finalize() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
