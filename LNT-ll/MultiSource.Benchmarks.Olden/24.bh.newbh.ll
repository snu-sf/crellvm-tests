; ModuleID = './MultiSource.Benchmarks.Olden/24.bh.newbh.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i16, double, [3 x double], i32, i32 }
%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, %struct.bnode*, %struct.bnode* }
%struct.tree = type { [3 x double], double, %struct.node*, [64 x %struct.bnode*], [64 x %struct.bnode*] }
%struct.datapoints = type { [3 x double], [3 x double], %struct.bnode*, %struct.bnode* }
%struct.icstruct = type { [3 x i32], i16 }
%struct.cnode = type { i16, double, [3 x double], i32, i32, [8 x %struct.node*], %struct.cnode* }
%struct.hgstruct = type { %struct.bnode*, [3 x double], double, [3 x double] }

@.str = private unnamed_addr constant [27 x i8] c"nbody = %d, numnodes = %d\0A\00", align 1
@nbody = common global i32 0, align 4
@NumNodes = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"bodies created \0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Bodies per %d = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Assertion Failure #%d\00", align 1
@cp_free_list = global %struct.node* null, align 8
@bp_free_list = global %struct.bnode* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"testdata: not enough memory\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%2d BODY@%x %f, %f, %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"%2d CELL@%x %f, %f, %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%2d NULL TREE\0A\00", align 1
@root = common global %struct.node* null, align 8
@rmin = common global [3 x double] zeroinitializer, align 16
@xxxrsize = common global double 0.000000e+00, align 8
@arg1 = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %t = alloca %struct.tree*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 (i32, i8**, ...) bitcast (i32 (...)* @dealwithargs to i32 (i32, i8**, ...)*)(i32 %0, i8** %1)
  %2 = load i32, i32* @nbody, align 4
  %3 = load i32, i32* @NumNodes, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0), i32 %2, i32 %3)
  %call2 = call %struct.tree* @old_main()
  store %struct.tree* %call2, %struct.tree** %t, align 8
  ret i32 0
}

declare i32 @dealwithargs(...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.tree* @old_main() #0 {
entry:
  %tnow = alloca double, align 8
  %tout = alloca double, align 8
  %i = alloca i32, align 4
  %nsteps = alloca i32, align 4
  %nprocs = alloca i32, align 4
  %t = alloca %struct.tree*, align 8
  %bt0 = alloca %struct.bnode*, align 8
  %p = alloca %struct.bnode*, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %cmr = alloca [3 x double], align 16
  %cmv = alloca [3 x double], align 16
  %prev = alloca %struct.bnode*, align 8
  %tmp = alloca i32, align 4
  %range = alloca i32, align 4
  %bodiesper = alloca [64 x i32], align 16
  %ptrper = alloca [64 x %struct.bnode*], align 16
  %i9 = alloca i32, align 4
  %i12 = alloca i32, align 4
  %points = alloca %struct.datapoints, align 8
  %processor = alloca i32, align 4
  %tmp29 = alloca %struct.datapoints, align 8
  %i34 = alloca i32, align 4
  %i50 = alloca i32, align 4
  %i70 = alloca i32, align 4
  %i83 = alloca i32, align 4
  %xqic = alloca %struct.icstruct, align 4
  %i116 = alloca i32, align 4
  %i132 = alloca i32, align 4
  %coerce = alloca %struct.icstruct, align 4
  store %struct.bnode* null, %struct.bnode** %prev, align 8
  store i32 0, i32* %tmp, align 4
  %0 = load i32, i32* @NumNodes, align 4
  %div = sdiv i32 64, %0
  store i32 %div, i32* %range, align 4
  call void @srand(i32 123) #3
  %call = call noalias i8* @malloc(i64 1064) #3
  %1 = bitcast i8* %call to %struct.tree*
  store %struct.tree* %1, %struct.tree** %t, align 8
  %2 = load %struct.tree*, %struct.tree** %t, align 8
  %root = getelementptr inbounds %struct.tree, %struct.tree* %2, i32 0, i32 2
  store %struct.node* null, %struct.node** %root, align 8
  %3 = load %struct.tree*, %struct.tree** %t, align 8
  %rmin = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %rmin, i32 0, i64 0
  store double -2.000000e+00, double* %arrayidx, align 8
  %4 = load %struct.tree*, %struct.tree** %t, align 8
  %rmin4 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %rmin4, i32 0, i64 1
  store double -2.000000e+00, double* %arrayidx5, align 8
  %5 = load %struct.tree*, %struct.tree** %t, align 8
  %rmin6 = getelementptr inbounds %struct.tree, %struct.tree* %5, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %rmin6, i32 0, i64 2
  store double -2.000000e+00, double* %arrayidx7, align 8
  %6 = load %struct.tree*, %struct.tree** %t, align 8
  %rsize = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 1
  store double 4.000000e+00, double* %rsize, align 8
  store i32 0, i32* %i9, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i9, align 4
  %cmp = icmp slt i32 %7, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i9, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %cmr, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i9, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i9, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i12, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.18, %for.end
  %10 = load i32, i32* %i12, align 4
  %cmp14 = icmp slt i32 %10, 3
  br i1 %cmp14, label %for.body.15, label %for.end.20

for.body.15:                                      ; preds = %for.cond.13
  %11 = load i32, i32* %i12, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %cmv, i32 0, i64 %idxprom16
  store double 0.000000e+00, double* %arrayidx17, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.15
  %12 = load i32, i32* %i12, align 4
  %inc19 = add nsw i32 %12, 1
  store i32 %inc19, i32* %i12, align 4
  br label %for.cond.13

for.end.20:                                       ; preds = %for.cond.13
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.65, %for.end.20
  %13 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %13, 32
  br i1 %cmp22, label %for.body.23, label %for.end.67

for.body.23:                                      ; preds = %for.cond.21
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @NumNodes, align 4
  %div26 = sdiv i32 32, %15
  %div27 = sdiv i32 %14, %div26
  store i32 %div27, i32* %processor, align 4
  %16 = load i32, i32* %processor, align 4
  %17 = load i32, i32* @nbody, align 4
  %div28 = sdiv i32 %17, 32
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  call void @uniform_testdata(%struct.datapoints* sret %tmp29, i32 %16, i32 %div28, i32 %add)
  %19 = bitcast %struct.datapoints* %points to i8*
  %20 = bitcast %struct.datapoints* %tmp29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 64, i32 8, i1 false)
  %list = getelementptr inbounds %struct.datapoints, %struct.datapoints* %points, i32 0, i32 2
  %21 = load %struct.bnode*, %struct.bnode** %list, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load %struct.tree*, %struct.tree** %t, align 8
  %bodytab = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 3
  %arrayidx31 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %bodytab, i32 0, i64 %idxprom30
  store %struct.bnode* %21, %struct.bnode** %arrayidx31, align 8
  %24 = load %struct.bnode*, %struct.bnode** %prev, align 8
  %tobool = icmp ne %struct.bnode* %24, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.23
  %list32 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %points, i32 0, i32 2
  %25 = load %struct.bnode*, %struct.bnode** %list32, align 8
  %26 = load %struct.bnode*, %struct.bnode** %prev, align 8
  %next = getelementptr inbounds %struct.bnode, %struct.bnode* %26, i32 0, i32 9
  store %struct.bnode* %25, %struct.bnode** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.23
  %tail = getelementptr inbounds %struct.datapoints, %struct.datapoints* %points, i32 0, i32 3
  %27 = load %struct.bnode*, %struct.bnode** %tail, align 8
  store %struct.bnode* %27, %struct.bnode** %prev, align 8
  store i32 0, i32* %i34, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.46, %if.end
  %28 = load i32, i32* %i34, align 4
  %cmp36 = icmp slt i32 %28, 3
  br i1 %cmp36, label %for.body.37, label %for.end.48

for.body.37:                                      ; preds = %for.cond.35
  %29 = load i32, i32* %i34, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %cmr, i32 0, i64 %idxprom38
  %30 = load double, double* %arrayidx39, align 8
  %31 = load i32, i32* %i34, align 4
  %idxprom40 = sext i32 %31 to i64
  %cmr41 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %points, i32 0, i32 0
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %cmr41, i32 0, i64 %idxprom40
  %32 = load double, double* %arrayidx42, align 8
  %add43 = fadd double %30, %32
  %33 = load i32, i32* %i34, align 4
  %idxprom44 = sext i32 %33 to i64
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %cmr, i32 0, i64 %idxprom44
  store double %add43, double* %arrayidx45, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.37
  %34 = load i32, i32* %i34, align 4
  %inc47 = add nsw i32 %34, 1
  store i32 %inc47, i32* %i34, align 4
  br label %for.cond.35

for.end.48:                                       ; preds = %for.cond.35
  store i32 0, i32* %i50, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.62, %for.end.48
  %35 = load i32, i32* %i50, align 4
  %cmp52 = icmp slt i32 %35, 3
  br i1 %cmp52, label %for.body.53, label %for.end.64

for.body.53:                                      ; preds = %for.cond.51
  %36 = load i32, i32* %i50, align 4
  %idxprom54 = sext i32 %36 to i64
  %arrayidx55 = getelementptr inbounds [3 x double], [3 x double]* %cmv, i32 0, i64 %idxprom54
  %37 = load double, double* %arrayidx55, align 8
  %38 = load i32, i32* %i50, align 4
  %idxprom56 = sext i32 %38 to i64
  %cmv57 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %points, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %cmv57, i32 0, i64 %idxprom56
  %39 = load double, double* %arrayidx58, align 8
  %add59 = fadd double %37, %39
  %40 = load i32, i32* %i50, align 4
  %idxprom60 = sext i32 %40 to i64
  %arrayidx61 = getelementptr inbounds [3 x double], [3 x double]* %cmv, i32 0, i64 %idxprom60
  store double %add59, double* %arrayidx61, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.53
  %41 = load i32, i32* %i50, align 4
  %inc63 = add nsw i32 %41, 1
  store i32 %inc63, i32* %i50, align 4
  br label %for.cond.51

for.end.64:                                       ; preds = %for.cond.51
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %42 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %42, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.21

for.end.67:                                       ; preds = %for.cond.21
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %i70, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.79, %for.end.67
  %43 = load i32, i32* %i70, align 4
  %cmp72 = icmp slt i32 %43, 3
  br i1 %cmp72, label %for.body.73, label %for.end.81

for.body.73:                                      ; preds = %for.cond.71
  %44 = load i32, i32* %i70, align 4
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds [3 x double], [3 x double]* %cmr, i32 0, i64 %idxprom74
  %45 = load double, double* %arrayidx75, align 8
  %46 = load i32, i32* @nbody, align 4
  %conv = sitofp i32 %46 to double
  %div76 = fdiv double %45, %conv
  %47 = load i32, i32* %i70, align 4
  %idxprom77 = sext i32 %47 to i64
  %arrayidx78 = getelementptr inbounds [3 x double], [3 x double]* %cmr, i32 0, i64 %idxprom77
  store double %div76, double* %arrayidx78, align 8
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.body.73
  %48 = load i32, i32* %i70, align 4
  %inc80 = add nsw i32 %48, 1
  store i32 %inc80, i32* %i70, align 4
  br label %for.cond.71

for.end.81:                                       ; preds = %for.cond.71
  store i32 0, i32* %i83, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.94, %for.end.81
  %49 = load i32, i32* %i83, align 4
  %cmp85 = icmp slt i32 %49, 3
  br i1 %cmp85, label %for.body.87, label %for.end.96

for.body.87:                                      ; preds = %for.cond.84
  %50 = load i32, i32* %i83, align 4
  %idxprom88 = sext i32 %50 to i64
  %arrayidx89 = getelementptr inbounds [3 x double], [3 x double]* %cmv, i32 0, i64 %idxprom88
  %51 = load double, double* %arrayidx89, align 8
  %52 = load i32, i32* @nbody, align 4
  %conv90 = sitofp i32 %52 to double
  %div91 = fdiv double %51, %conv90
  %53 = load i32, i32* %i83, align 4
  %idxprom92 = sext i32 %53 to i64
  %arrayidx93 = getelementptr inbounds [3 x double], [3 x double]* %cmv, i32 0, i64 %idxprom92
  store double %div91, double* %arrayidx93, align 8
  br label %for.inc.94

for.inc.94:                                       ; preds = %for.body.87
  %54 = load i32, i32* %i83, align 4
  %inc95 = add nsw i32 %54, 1
  store i32 %inc95, i32* %i83, align 4
  br label %for.cond.84

for.end.96:                                       ; preds = %for.cond.84
  store i32 0, i32* %tmp, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.105, %for.end.96
  %55 = load i32, i32* %tmp, align 4
  %cmp98 = icmp slt i32 %55, 64
  br i1 %cmp98, label %for.body.100, label %for.end.107

for.body.100:                                     ; preds = %for.cond.97
  %56 = load i32, i32* %tmp, align 4
  %idxprom101 = sext i32 %56 to i64
  %arrayidx102 = getelementptr inbounds [64 x i32], [64 x i32]* %bodiesper, i32 0, i64 %idxprom101
  store i32 0, i32* %arrayidx102, align 4
  %57 = load i32, i32* %tmp, align 4
  %idxprom103 = sext i32 %57 to i64
  %arrayidx104 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %ptrper, i32 0, i64 %idxprom103
  store %struct.bnode* null, %struct.bnode** %arrayidx104, align 8
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.body.100
  %58 = load i32, i32* %tmp, align 4
  %inc106 = add nsw i32 %58, 1
  store i32 %inc106, i32* %tmp, align 4
  br label %for.cond.97

for.end.107:                                      ; preds = %for.cond.97
  %59 = load %struct.tree*, %struct.tree** %t, align 8
  %bodytab108 = getelementptr inbounds %struct.tree, %struct.tree* %59, i32 0, i32 3
  %arrayidx109 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %bodytab108, i32 0, i64 0
  %60 = load %struct.bnode*, %struct.bnode** %arrayidx109, align 8
  store %struct.bnode* %60, %struct.bnode** %p, align 8
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.160, %for.end.107
  %61 = load %struct.bnode*, %struct.bnode** %p, align 8
  %cmp111 = icmp ne %struct.bnode* %61, null
  br i1 %cmp111, label %for.body.113, label %for.end.162

for.body.113:                                     ; preds = %for.cond.110
  store i32 0, i32* %i116, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.128, %for.body.113
  %62 = load i32, i32* %i116, align 4
  %cmp118 = icmp slt i32 %62, 3
  br i1 %cmp118, label %for.body.120, label %for.end.130

for.body.120:                                     ; preds = %for.cond.117
  %63 = load i32, i32* %i116, align 4
  %idxprom121 = sext i32 %63 to i64
  %64 = load %struct.bnode*, %struct.bnode** %p, align 8
  %pos = getelementptr inbounds %struct.bnode, %struct.bnode* %64, i32 0, i32 2
  %arrayidx122 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 %idxprom121
  %65 = load double, double* %arrayidx122, align 8
  %66 = load i32, i32* %i116, align 4
  %idxprom123 = sext i32 %66 to i64
  %arrayidx124 = getelementptr inbounds [3 x double], [3 x double]* %cmr, i32 0, i64 %idxprom123
  %67 = load double, double* %arrayidx124, align 8
  %sub = fsub double %65, %67
  %68 = load i32, i32* %i116, align 4
  %idxprom125 = sext i32 %68 to i64
  %69 = load %struct.bnode*, %struct.bnode** %p, align 8
  %pos126 = getelementptr inbounds %struct.bnode, %struct.bnode* %69, i32 0, i32 2
  %arrayidx127 = getelementptr inbounds [3 x double], [3 x double]* %pos126, i32 0, i64 %idxprom125
  store double %sub, double* %arrayidx127, align 8
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.body.120
  %70 = load i32, i32* %i116, align 4
  %inc129 = add nsw i32 %70, 1
  store i32 %inc129, i32* %i116, align 4
  br label %for.cond.117

for.end.130:                                      ; preds = %for.cond.117
  store i32 0, i32* %i132, align 4
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.145, %for.end.130
  %71 = load i32, i32* %i132, align 4
  %cmp134 = icmp slt i32 %71, 3
  br i1 %cmp134, label %for.body.136, label %for.end.147

for.body.136:                                     ; preds = %for.cond.133
  %72 = load i32, i32* %i132, align 4
  %idxprom137 = sext i32 %72 to i64
  %73 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel = getelementptr inbounds %struct.bnode, %struct.bnode* %73, i32 0, i32 5
  %arrayidx138 = getelementptr inbounds [3 x double], [3 x double]* %vel, i32 0, i64 %idxprom137
  %74 = load double, double* %arrayidx138, align 8
  %75 = load i32, i32* %i132, align 4
  %idxprom139 = sext i32 %75 to i64
  %arrayidx140 = getelementptr inbounds [3 x double], [3 x double]* %cmv, i32 0, i64 %idxprom139
  %76 = load double, double* %arrayidx140, align 8
  %sub141 = fsub double %74, %76
  %77 = load i32, i32* %i132, align 4
  %idxprom142 = sext i32 %77 to i64
  %78 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel143 = getelementptr inbounds %struct.bnode, %struct.bnode* %78, i32 0, i32 5
  %arrayidx144 = getelementptr inbounds [3 x double], [3 x double]* %vel143, i32 0, i64 %idxprom142
  store double %sub141, double* %arrayidx144, align 8
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.136
  %79 = load i32, i32* %i132, align 4
  %inc146 = add nsw i32 %79, 1
  store i32 %inc146, i32* %i132, align 4
  br label %for.cond.133

for.end.147:                                      ; preds = %for.cond.133
  %80 = load %struct.bnode*, %struct.bnode** %p, align 8
  %81 = load %struct.tree*, %struct.tree** %t, align 8
  %call148 = call { i64, i64 } @intcoord(%struct.bnode* %80, %struct.tree* %81)
  %82 = bitcast %struct.icstruct* %coerce to { i64, i64 }*
  %83 = getelementptr { i64, i64 }, { i64, i64 }* %82, i32 0, i32 0
  %84 = extractvalue { i64, i64 } %call148, 0
  store i64 %84, i64* %83, align 4
  %85 = getelementptr { i64, i64 }, { i64, i64 }* %82, i32 0, i32 1
  %86 = extractvalue { i64, i64 } %call148, 1
  store i64 %86, i64* %85, align 4
  %87 = bitcast %struct.icstruct* %xqic to i8*
  %88 = bitcast %struct.icstruct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %87, i8* %88, i64 16, i32 4, i1 false)
  %89 = bitcast %struct.icstruct* %xqic to { i64, i64 }*
  %90 = getelementptr { i64, i64 }, { i64, i64 }* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 1
  %92 = getelementptr { i64, i64 }, { i64, i64 }* %89, i32 0, i32 1
  %93 = load i64, i64* %92, align 1
  %call149 = call i32 @old_subindex(i64 %91, i64 %93, i32 536870912)
  %shl = shl i32 %call149, 3
  %94 = bitcast %struct.icstruct* %xqic to { i64, i64 }*
  %95 = getelementptr { i64, i64 }, { i64, i64 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 1
  %97 = getelementptr { i64, i64 }, { i64, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 1
  %call150 = call i32 @old_subindex(i64 %96, i64 %98, i32 268435456)
  %add151 = add nsw i32 %shl, %call150
  store i32 %add151, i32* %tmp, align 4
  %99 = load i32, i32* %tmp, align 4
  %100 = load i32, i32* %range, align 4
  %div152 = sdiv i32 %99, %100
  store i32 %div152, i32* %tmp, align 4
  %101 = load i32, i32* %tmp, align 4
  %idxprom153 = sext i32 %101 to i64
  %arrayidx154 = getelementptr inbounds [64 x i32], [64 x i32]* %bodiesper, i32 0, i64 %idxprom153
  %102 = load i32, i32* %arrayidx154, align 4
  %inc155 = add nsw i32 %102, 1
  store i32 %inc155, i32* %arrayidx154, align 4
  %103 = load i32, i32* %tmp, align 4
  %idxprom156 = sext i32 %103 to i64
  %arrayidx157 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %ptrper, i32 0, i64 %idxprom156
  %104 = load %struct.bnode*, %struct.bnode** %arrayidx157, align 8
  %105 = load %struct.bnode*, %struct.bnode** %p, align 8
  %proc_next = getelementptr inbounds %struct.bnode, %struct.bnode* %105, i32 0, i32 10
  store %struct.bnode* %104, %struct.bnode** %proc_next, align 8
  %106 = load %struct.bnode*, %struct.bnode** %p, align 8
  %107 = load i32, i32* %tmp, align 4
  %idxprom158 = sext i32 %107 to i64
  %arrayidx159 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %ptrper, i32 0, i64 %idxprom158
  store %struct.bnode* %106, %struct.bnode** %arrayidx159, align 8
  %108 = load i32, i32* %tmp, align 4
  %109 = load %struct.bnode*, %struct.bnode** %p, align 8
  %proc = getelementptr inbounds %struct.bnode, %struct.bnode* %109, i32 0, i32 3
  store i32 %108, i32* %proc, align 4
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.end.147
  %110 = load %struct.bnode*, %struct.bnode** %p, align 8
  %next161 = getelementptr inbounds %struct.bnode, %struct.bnode* %110, i32 0, i32 9
  %111 = load %struct.bnode*, %struct.bnode** %next161, align 8
  store %struct.bnode* %111, %struct.bnode** %p, align 8
  br label %for.cond.110

for.end.162:                                      ; preds = %for.cond.110
  store i32 0, i32* %tmp, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.174, %for.end.162
  %112 = load i32, i32* %tmp, align 4
  %113 = load i32, i32* @NumNodes, align 4
  %cmp164 = icmp slt i32 %112, %113
  br i1 %cmp164, label %for.body.166, label %for.end.176

for.body.166:                                     ; preds = %for.cond.163
  %114 = load i32, i32* %tmp, align 4
  %115 = load i32, i32* %tmp, align 4
  %idxprom167 = sext i32 %115 to i64
  %arrayidx168 = getelementptr inbounds [64 x i32], [64 x i32]* %bodiesper, i32 0, i64 %idxprom167
  %116 = load i32, i32* %arrayidx168, align 4
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %114, i32 %116)
  %117 = load i32, i32* %tmp, align 4
  %idxprom170 = sext i32 %117 to i64
  %arrayidx171 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %ptrper, i32 0, i64 %idxprom170
  %118 = load %struct.bnode*, %struct.bnode** %arrayidx171, align 8
  %119 = load i32, i32* %tmp, align 4
  %idxprom172 = sext i32 %119 to i64
  %120 = load %struct.tree*, %struct.tree** %t, align 8
  %bodiesperproc = getelementptr inbounds %struct.tree, %struct.tree* %120, i32 0, i32 4
  %arrayidx173 = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %bodiesperproc, i32 0, i64 %idxprom172
  store %struct.bnode* %118, %struct.bnode** %arrayidx173, align 8
  br label %for.inc.174

for.inc.174:                                      ; preds = %for.body.166
  %121 = load i32, i32* %tmp, align 4
  %inc175 = add nsw i32 %121, 1
  store i32 %inc175, i32* %tmp, align 4
  br label %for.cond.163

for.end.176:                                      ; preds = %for.cond.163
  store i32 0, i32* %tmp, align 4
  store double 0.000000e+00, double* %tnow, align 8
  store i32 0, i32* %i, align 4
  store i32 10, i32* %nsteps, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.176
  %122 = load double, double* %tnow, align 8
  %cmp177 = fcmp olt double %122, 2.001250e+00
  br i1 %cmp177, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %123 = load i32, i32* %i, align 4
  %124 = load i32, i32* %nsteps, align 4
  %cmp179 = icmp slt i32 %123, %124
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %125 = phi i1 [ false, %while.cond ], [ %cmp179, %land.rhs ]
  br i1 %125, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %126 = load %struct.tree*, %struct.tree** %t, align 8
  %127 = load i32, i32* %i, align 4
  call void @stepsystem(%struct.tree* %126, i32 %127)
  %128 = load double, double* %tnow, align 8
  %add181 = fadd double %128, 1.250000e-02
  store double %add181, double* %tnow, align 8
  %129 = load i32, i32* %i, align 4
  %inc182 = add nsw i32 %129, 1
  store i32 %inc182, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %130 = load %struct.tree*, %struct.tree** %t, align 8
  ret %struct.tree* %130
}

; Function Attrs: nounwind
declare void @srand(i32) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @uniform_testdata(%struct.datapoints* noalias sret %agg.result, i32 %proc, i32 %nbodyx, i32 %seedfactor) #0 {
entry:
  %proc.addr = alloca i32, align 4
  %nbodyx.addr = alloca i32, align 4
  %seedfactor.addr = alloca i32, align 4
  %retval = alloca %struct.datapoints, align 8
  %rsc = alloca double, align 8
  %vsc = alloca double, align 8
  %r = alloca double, align 8
  %v = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %head = alloca %struct.bnode*, align 8
  %p = alloca %struct.bnode*, align 8
  %prev = alloca %struct.bnode*, align 8
  %i = alloca i32, align 4
  %temp = alloca double, align 8
  %t1 = alloca double, align 8
  %seed = alloca double, align 8
  %k = alloca i32, align 4
  %rsq = alloca double, align 8
  %rsc1 = alloca double, align 8
  %rad = alloca double, align 8
  %coeff = alloca double, align 8
  %i1 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i41 = alloca i32, align 4
  %i88 = alloca i32, align 4
  %i110 = alloca i32, align 4
  %i125 = alloca i32, align 4
  store i32 %proc, i32* %proc.addr, align 4
  store i32 %nbodyx, i32* %nbodyx.addr, align 4
  store i32 %seedfactor, i32* %seedfactor.addr, align 4
  %0 = load i32, i32* %seedfactor.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double 1.230000e+02, %conv
  store double %mul, double* %seed, align 8
  store double 0x3FE2D97C7F3321D2, double* %rsc, align 8
  %1 = load double, double* %rsc, align 8
  %div = fdiv double 1.000000e+00, %1
  %call = call double @sqrt(double %div) #3
  store double %call, double* %vsc, align 8
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i1, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i1, align 4
  %idxprom = sext i32 %3 to i64
  %cmr = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %cmr, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i1, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i3, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %5 = load i32, i32* %i3, align 4
  %cmp5 = icmp slt i32 %5, 3
  br i1 %cmp5, label %for.body.7, label %for.end.12

for.body.7:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %i3, align 4
  %idxprom8 = sext i32 %6 to i64
  %cmv = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %cmv, i32 0, i64 %idxprom8
  store double 0.000000e+00, double* %arrayidx9, align 8
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.7
  %7 = load i32, i32* %i3, align 4
  %inc11 = add nsw i32 %7, 1
  store i32 %inc11, i32* %i3, align 4
  br label %for.cond.4

for.end.12:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %proc.addr, align 4
  %call13 = call %struct.bnode* @ubody_alloc(i32 %8)
  store %struct.bnode* %call13, %struct.bnode** %head, align 8
  %9 = load %struct.bnode*, %struct.bnode** %head, align 8
  store %struct.bnode* %9, %struct.bnode** %prev, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.143, %for.end.12
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %nbodyx.addr, align 4
  %cmp15 = icmp slt i32 %10, %11
  br i1 %cmp15, label %for.body.17, label %for.end.145

for.body.17:                                      ; preds = %for.cond.14
  %12 = load i32, i32* %proc.addr, align 4
  %call18 = call %struct.bnode* @ubody_alloc(i32 %12)
  store %struct.bnode* %call18, %struct.bnode** %p, align 8
  %13 = load %struct.bnode*, %struct.bnode** %p, align 8
  %cmp19 = icmp eq %struct.bnode* %13, null
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.17
  %call21 = call i32 (i8*, ...) bitcast (i32 (...)* @error to i32 (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.17
  %14 = load %struct.bnode*, %struct.bnode** %p, align 8
  %15 = load %struct.bnode*, %struct.bnode** %prev, align 8
  %next = getelementptr inbounds %struct.bnode, %struct.bnode* %15, i32 0, i32 9
  store %struct.bnode* %14, %struct.bnode** %next, align 8
  %16 = load %struct.bnode*, %struct.bnode** %p, align 8
  store %struct.bnode* %16, %struct.bnode** %prev, align 8
  %17 = load %struct.bnode*, %struct.bnode** %p, align 8
  %type = getelementptr inbounds %struct.bnode, %struct.bnode* %17, i32 0, i32 0
  store i16 1, i16* %type, align 2
  %18 = load i32, i32* %nbodyx.addr, align 4
  %conv22 = sitofp i32 %18 to double
  %div23 = fdiv double 1.000000e+00, %conv22
  %19 = load %struct.bnode*, %struct.bnode** %p, align 8
  %mass = getelementptr inbounds %struct.bnode, %struct.bnode* %19, i32 0, i32 1
  store double %div23, double* %mass, align 8
  %20 = load double, double* %seed, align 8
  %call24 = call double (double, ...) bitcast (double (...)* @my_rand to double (double, ...)*)(double %20)
  store double %call24, double* %seed, align 8
  %21 = load double, double* %seed, align 8
  %call25 = call double (double, double, double, ...) bitcast (double (...)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 9.990000e-01, double %21)
  store double %call25, double* %t1, align 8
  %22 = load double, double* %t1, align 8
  %call26 = call double @pow(double %22, double 0xBFE5555555555555) #3
  %sub = fsub double %call26, 1.000000e+00
  store double %sub, double* %temp, align 8
  %23 = load double, double* %temp, align 8
  %call27 = call double @sqrt(double %23) #3
  %div28 = fdiv double 1.000000e+00, %call27
  store double %div28, double* %r, align 8
  store double 4.000000e+00, double* %coeff, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.38, %if.end
  %24 = load i32, i32* %k, align 4
  %cmp30 = icmp slt i32 %24, 3
  br i1 %cmp30, label %for.body.32, label %for.end.40

for.body.32:                                      ; preds = %for.cond.29
  %25 = load double, double* %seed, align 8
  %call33 = call double (double, ...) bitcast (double (...)* @my_rand to double (double, ...)*)(double %25)
  store double %call33, double* %seed, align 8
  %26 = load double, double* %seed, align 8
  %call34 = call double (double, double, double, ...) bitcast (double (...)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 9.990000e-01, double %26)
  store double %call34, double* %r, align 8
  %27 = load double, double* %coeff, align 8
  %28 = load double, double* %r, align 8
  %mul35 = fmul double %27, %28
  %29 = load i32, i32* %k, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load %struct.bnode*, %struct.bnode** %p, align 8
  %pos = getelementptr inbounds %struct.bnode, %struct.bnode* %30, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 %idxprom36
  store double %mul35, double* %arrayidx37, align 8
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.32
  %31 = load i32, i32* %k, align 4
  %inc39 = add nsw i32 %31, 1
  store i32 %inc39, i32* %k, align 4
  br label %for.cond.29

for.end.40:                                       ; preds = %for.cond.29
  store i32 0, i32* %i41, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.55, %for.end.40
  %32 = load i32, i32* %i41, align 4
  %cmp43 = icmp slt i32 %32, 3
  br i1 %cmp43, label %for.body.45, label %for.end.57

for.body.45:                                      ; preds = %for.cond.42
  %33 = load i32, i32* %i41, align 4
  %idxprom46 = sext i32 %33 to i64
  %cmr47 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 0
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %cmr47, i32 0, i64 %idxprom46
  %34 = load double, double* %arrayidx48, align 8
  %35 = load i32, i32* %i41, align 4
  %idxprom49 = sext i32 %35 to i64
  %36 = load %struct.bnode*, %struct.bnode** %p, align 8
  %pos50 = getelementptr inbounds %struct.bnode, %struct.bnode* %36, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %pos50, i32 0, i64 %idxprom49
  %37 = load double, double* %arrayidx51, align 8
  %add = fadd double %34, %37
  %38 = load i32, i32* %i41, align 4
  %idxprom52 = sext i32 %38 to i64
  %cmr53 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 0
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %cmr53, i32 0, i64 %idxprom52
  store double %add, double* %arrayidx54, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.45
  %39 = load i32, i32* %i41, align 4
  %inc56 = add nsw i32 %39, 1
  store i32 %inc56, i32* %i41, align 4
  br label %for.cond.42

for.end.57:                                       ; preds = %for.cond.42
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.57
  %40 = load double, double* %seed, align 8
  %call58 = call double (double, ...) bitcast (double (...)* @my_rand to double (double, ...)*)(double %40)
  store double %call58, double* %seed, align 8
  %41 = load double, double* %seed, align 8
  %call59 = call double (double, double, double, ...) bitcast (double (...)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 1.000000e+00, double %41)
  store double %call59, double* %x, align 8
  %42 = load double, double* %seed, align 8
  %call60 = call double (double, ...) bitcast (double (...)* @my_rand to double (double, ...)*)(double %42)
  store double %call60, double* %seed, align 8
  %43 = load double, double* %seed, align 8
  %call61 = call double (double, double, double, ...) bitcast (double (...)* @xrand to double (double, double, double, ...)*)(double 0.000000e+00, double 1.000000e-01, double %43)
  store double %call61, double* %y, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %44 = load double, double* %y, align 8
  %45 = load double, double* %x, align 8
  %46 = load double, double* %x, align 8
  %mul62 = fmul double %45, %46
  %47 = load double, double* %x, align 8
  %48 = load double, double* %x, align 8
  %mul63 = fmul double %47, %48
  %sub64 = fsub double 1.000000e+00, %mul63
  %call65 = call double @pow(double %sub64, double 3.500000e+00) #3
  %mul66 = fmul double %mul62, %call65
  %cmp67 = fcmp ogt double %44, %mul66
  br i1 %cmp67, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %call69 = call double @sqrt(double 2.000000e+00) #3
  %49 = load double, double* %x, align 8
  %mul70 = fmul double %call69, %49
  %50 = load double, double* %r, align 8
  %51 = load double, double* %r, align 8
  %mul71 = fmul double %50, %51
  %add72 = fadd double 1.000000e+00, %mul71
  %call73 = call double @pow(double %add72, double 2.500000e-01) #3
  %div74 = fdiv double %mul70, %call73
  store double %div74, double* %v, align 8
  %52 = load double, double* %vsc, align 8
  %53 = load double, double* %v, align 8
  %mul75 = fmul double %52, %53
  store double %mul75, double* %rad, align 8
  br label %do.body.76

do.body.76:                                       ; preds = %do.cond.104, %do.end
  store i32 0, i32* %k, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.85, %do.body.76
  %54 = load i32, i32* %k, align 4
  %cmp78 = icmp slt i32 %54, 3
  br i1 %cmp78, label %for.body.80, label %for.end.87

for.body.80:                                      ; preds = %for.cond.77
  %55 = load double, double* %seed, align 8
  %call81 = call double (double, ...) bitcast (double (...)* @my_rand to double (double, ...)*)(double %55)
  store double %call81, double* %seed, align 8
  %56 = load double, double* %seed, align 8
  %call82 = call double (double, double, double, ...) bitcast (double (...)* @xrand to double (double, double, double, ...)*)(double -1.000000e+00, double 1.000000e+00, double %56)
  %57 = load i32, i32* %k, align 4
  %idxprom83 = sext i32 %57 to i64
  %58 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel = getelementptr inbounds %struct.bnode, %struct.bnode* %58, i32 0, i32 5
  %arrayidx84 = getelementptr inbounds [3 x double], [3 x double]* %vel, i32 0, i64 %idxprom83
  store double %call82, double* %arrayidx84, align 8
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.80
  %59 = load i32, i32* %k, align 4
  %inc86 = add nsw i32 %59, 1
  store i32 %inc86, i32* %k, align 4
  br label %for.cond.77

for.end.87:                                       ; preds = %for.cond.77
  store double 0.000000e+00, double* %rsq, align 8
  store i32 0, i32* %i88, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.101, %for.end.87
  %60 = load i32, i32* %i88, align 4
  %cmp90 = icmp slt i32 %60, 3
  br i1 %cmp90, label %for.body.92, label %for.end.103

for.body.92:                                      ; preds = %for.cond.89
  %61 = load i32, i32* %i88, align 4
  %idxprom93 = sext i32 %61 to i64
  %62 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel94 = getelementptr inbounds %struct.bnode, %struct.bnode* %62, i32 0, i32 5
  %arrayidx95 = getelementptr inbounds [3 x double], [3 x double]* %vel94, i32 0, i64 %idxprom93
  %63 = load double, double* %arrayidx95, align 8
  %64 = load i32, i32* %i88, align 4
  %idxprom96 = sext i32 %64 to i64
  %65 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel97 = getelementptr inbounds %struct.bnode, %struct.bnode* %65, i32 0, i32 5
  %arrayidx98 = getelementptr inbounds [3 x double], [3 x double]* %vel97, i32 0, i64 %idxprom96
  %66 = load double, double* %arrayidx98, align 8
  %mul99 = fmul double %63, %66
  %67 = load double, double* %rsq, align 8
  %add100 = fadd double %67, %mul99
  store double %add100, double* %rsq, align 8
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.92
  %68 = load i32, i32* %i88, align 4
  %inc102 = add nsw i32 %68, 1
  store i32 %inc102, i32* %i88, align 4
  br label %for.cond.89

for.end.103:                                      ; preds = %for.cond.89
  br label %do.cond.104

do.cond.104:                                      ; preds = %for.end.103
  %69 = load double, double* %rsq, align 8
  %cmp105 = fcmp ogt double %69, 1.000000e+00
  br i1 %cmp105, label %do.body.76, label %do.end.107

do.end.107:                                       ; preds = %do.cond.104
  %70 = load double, double* %rad, align 8
  %71 = load double, double* %rsq, align 8
  %call108 = call double @sqrt(double %71) #3
  %div109 = fdiv double %70, %call108
  store double %div109, double* %rsc1, align 8
  store i32 0, i32* %i110, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.122, %do.end.107
  %72 = load i32, i32* %i110, align 4
  %cmp112 = icmp slt i32 %72, 3
  br i1 %cmp112, label %for.body.114, label %for.end.124

for.body.114:                                     ; preds = %for.cond.111
  %73 = load i32, i32* %i110, align 4
  %idxprom115 = sext i32 %73 to i64
  %74 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel116 = getelementptr inbounds %struct.bnode, %struct.bnode* %74, i32 0, i32 5
  %arrayidx117 = getelementptr inbounds [3 x double], [3 x double]* %vel116, i32 0, i64 %idxprom115
  %75 = load double, double* %arrayidx117, align 8
  %76 = load double, double* %rsc1, align 8
  %mul118 = fmul double %75, %76
  %77 = load i32, i32* %i110, align 4
  %idxprom119 = sext i32 %77 to i64
  %78 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel120 = getelementptr inbounds %struct.bnode, %struct.bnode* %78, i32 0, i32 5
  %arrayidx121 = getelementptr inbounds [3 x double], [3 x double]* %vel120, i32 0, i64 %idxprom119
  store double %mul118, double* %arrayidx121, align 8
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.114
  %79 = load i32, i32* %i110, align 4
  %inc123 = add nsw i32 %79, 1
  store i32 %inc123, i32* %i110, align 4
  br label %for.cond.111

for.end.124:                                      ; preds = %for.cond.111
  store i32 0, i32* %i125, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.140, %for.end.124
  %80 = load i32, i32* %i125, align 4
  %cmp127 = icmp slt i32 %80, 3
  br i1 %cmp127, label %for.body.129, label %for.end.142

for.body.129:                                     ; preds = %for.cond.126
  %81 = load i32, i32* %i125, align 4
  %idxprom130 = sext i32 %81 to i64
  %cmv131 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [3 x double], [3 x double]* %cmv131, i32 0, i64 %idxprom130
  %82 = load double, double* %arrayidx132, align 8
  %83 = load i32, i32* %i125, align 4
  %idxprom133 = sext i32 %83 to i64
  %84 = load %struct.bnode*, %struct.bnode** %p, align 8
  %vel134 = getelementptr inbounds %struct.bnode, %struct.bnode* %84, i32 0, i32 5
  %arrayidx135 = getelementptr inbounds [3 x double], [3 x double]* %vel134, i32 0, i64 %idxprom133
  %85 = load double, double* %arrayidx135, align 8
  %add136 = fadd double %82, %85
  %86 = load i32, i32* %i125, align 4
  %idxprom137 = sext i32 %86 to i64
  %cmv138 = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [3 x double], [3 x double]* %cmv138, i32 0, i64 %idxprom137
  store double %add136, double* %arrayidx139, align 8
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.body.129
  %87 = load i32, i32* %i125, align 4
  %inc141 = add nsw i32 %87, 1
  store i32 %inc141, i32* %i125, align 4
  br label %for.cond.126

for.end.142:                                      ; preds = %for.cond.126
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.142
  %88 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %88, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.14

for.end.145:                                      ; preds = %for.cond.14
  %89 = load %struct.bnode*, %struct.bnode** %prev, align 8
  %next146 = getelementptr inbounds %struct.bnode, %struct.bnode* %89, i32 0, i32 9
  store %struct.bnode* null, %struct.bnode** %next146, align 8
  %90 = load %struct.bnode*, %struct.bnode** %head, align 8
  %next147 = getelementptr inbounds %struct.bnode, %struct.bnode* %90, i32 0, i32 9
  %91 = load %struct.bnode*, %struct.bnode** %next147, align 8
  %list = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 2
  store %struct.bnode* %91, %struct.bnode** %list, align 8
  %92 = load %struct.bnode*, %struct.bnode** %prev, align 8
  %tail = getelementptr inbounds %struct.datapoints, %struct.datapoints* %retval, i32 0, i32 3
  store %struct.bnode* %92, %struct.bnode** %tail, align 8
  %93 = bitcast %struct.datapoints* %agg.result to i8*
  %94 = bitcast %struct.datapoints* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %93, i8* %94, i64 64, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define { i64, i64 } @intcoord(%struct.bnode* %p, %struct.tree* %t) #0 {
entry:
  %retval = alloca %struct.icstruct, align 4
  %p.addr = alloca %struct.bnode*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %xsc = alloca double, align 8
  %ic = alloca %struct.icstruct, align 4
  %rsize = alloca double, align 8
  %pos = alloca [3 x double], align 16
  store %struct.bnode* %p, %struct.bnode** %p.addr, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %inb = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 1, i16* %inb, align 2
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize1 = getelementptr inbounds %struct.tree, %struct.tree* %0, i32 0, i32 1
  %1 = load double, double* %rsize1, align 8
  store double %1, double* %rsize, align 8
  %2 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos2 = getelementptr inbounds %struct.bnode, %struct.bnode* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %pos2, i32 0, i64 0
  %3 = load double, double* %arrayidx, align 8
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  store double %3, double* %arrayidx3, align 8
  %4 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos4 = getelementptr inbounds %struct.bnode, %struct.bnode* %4, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %pos4, i32 0, i64 1
  %5 = load double, double* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 1
  store double %5, double* %arrayidx6, align 8
  %6 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos7 = getelementptr inbounds %struct.bnode, %struct.bnode* %6, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %pos7, i32 0, i64 2
  %7 = load double, double* %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 2
  store double %7, double* %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  %8 = load double, double* %arrayidx10, align 8
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %rmin, i32 0, i64 0
  %10 = load double, double* %arrayidx11, align 8
  %sub = fsub double %8, %10
  %11 = load double, double* %rsize, align 8
  %div = fdiv double %sub, %11
  store double %div, double* %xsc, align 8
  %12 = load double, double* %xsc, align 8
  %cmp = fcmp ole double 0.000000e+00, %12
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %13 = load double, double* %xsc, align 8
  %cmp12 = fcmp olt double %13, 1.000000e+00
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %14 = load double, double* %xsc, align 8
  %mul = fmul double 0x41D0000000000000, %14
  %call = call double @floor(double %mul) #6
  %conv = fptosi double %call to i32
  %xp = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %xp, i32 0, i64 0
  store i32 %conv, i32* %arrayidx13, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %inb14 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 0, i16* %inb14, align 2
  %xp15 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %xp15, i32 0, i64 0
  store i32 0, i32* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 1
  %15 = load double, double* %arrayidx17, align 8
  %16 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin18 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %rmin18, i32 0, i64 1
  %17 = load double, double* %arrayidx19, align 8
  %sub20 = fsub double %15, %17
  %18 = load double, double* %rsize, align 8
  %div21 = fdiv double %sub20, %18
  store double %div21, double* %xsc, align 8
  %19 = load double, double* %xsc, align 8
  %cmp22 = fcmp ole double 0.000000e+00, %19
  br i1 %cmp22, label %land.lhs.true.24, label %if.else.33

land.lhs.true.24:                                 ; preds = %if.end
  %20 = load double, double* %xsc, align 8
  %cmp25 = fcmp olt double %20, 1.000000e+00
  br i1 %cmp25, label %if.then.27, label %if.else.33

if.then.27:                                       ; preds = %land.lhs.true.24
  %21 = load double, double* %xsc, align 8
  %mul28 = fmul double 0x41D0000000000000, %21
  %call29 = call double @floor(double %mul28) #6
  %conv30 = fptosi double %call29 to i32
  %xp31 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %xp31, i32 0, i64 1
  store i32 %conv30, i32* %arrayidx32, align 4
  br label %if.end.37

if.else.33:                                       ; preds = %land.lhs.true.24, %if.end
  %inb34 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 0, i16* %inb34, align 2
  %xp35 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx36 = getelementptr inbounds [3 x i32], [3 x i32]* %xp35, i32 0, i64 1
  store i32 0, i32* %arrayidx36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.33, %if.then.27
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 2
  %22 = load double, double* %arrayidx38, align 8
  %23 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin39 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 0
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %rmin39, i32 0, i64 2
  %24 = load double, double* %arrayidx40, align 8
  %sub41 = fsub double %22, %24
  %25 = load double, double* %rsize, align 8
  %div42 = fdiv double %sub41, %25
  store double %div42, double* %xsc, align 8
  %26 = load double, double* %xsc, align 8
  %cmp43 = fcmp ole double 0.000000e+00, %26
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.54

land.lhs.true.45:                                 ; preds = %if.end.37
  %27 = load double, double* %xsc, align 8
  %cmp46 = fcmp olt double %27, 1.000000e+00
  br i1 %cmp46, label %if.then.48, label %if.else.54

if.then.48:                                       ; preds = %land.lhs.true.45
  %28 = load double, double* %xsc, align 8
  %mul49 = fmul double 0x41D0000000000000, %28
  %call50 = call double @floor(double %mul49) #6
  %conv51 = fptosi double %call50 to i32
  %xp52 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %xp52, i32 0, i64 2
  store i32 %conv51, i32* %arrayidx53, align 4
  br label %if.end.58

if.else.54:                                       ; preds = %land.lhs.true.45, %if.end.37
  %inb55 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 0, i16* %inb55, align 2
  %xp56 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %xp56, i32 0, i64 2
  store i32 0, i32* %arrayidx57, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.54, %if.then.48
  %29 = bitcast %struct.icstruct* %retval to i8*
  %30 = bitcast %struct.icstruct* %ic to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 16, i32 4, i1 false)
  %31 = bitcast %struct.icstruct* %retval to { i64, i64 }*
  %32 = load { i64, i64 }, { i64, i64 }* %31, align 4
  ret { i64, i64 } %32
}

; Function Attrs: nounwind uwtable
define i32 @old_subindex(i64 %ic.coerce0, i64 %ic.coerce1, i32 %l) #0 {
entry:
  %ic = alloca %struct.icstruct, align 8
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = bitcast %struct.icstruct* %ic to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %ic.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %ic.coerce1, i64* %2
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %cmp = icmp slt i32 %3, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %k, align 4
  %idxprom = sext i32 %4 to i64
  %xp = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %xp, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %l.addr, align 4
  %and = and i32 %5, %6
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %k, align 4
  %add = add nsw i32 %7, 1
  %shr = ashr i32 8, %add
  %8 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %8, %shr
  store i32 %add1, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @stepsystem(%struct.tree* %t, i32 %nstep) #0 {
entry:
  %t.addr = alloca %struct.tree*, align 8
  %nstep.addr = alloca i32, align 4
  %bt = alloca %struct.bnode*, align 8
  %bt0 = alloca %struct.bnode*, align 8
  %q = alloca %struct.bnode*, align 8
  %i = alloca i32, align 4
  %root = alloca %struct.node*, align 8
  %barge = alloca i32, align 4
  %cflctdiff = alloca i32, align 4
  %misstemp = alloca i32, align 4
  %diff = alloca i32, align 4
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 %nstep, i32* %nstep.addr, align 4
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root1 = getelementptr inbounds %struct.tree, %struct.tree* %0, i32 0, i32 2
  %1 = load %struct.node*, %struct.node** %root1, align 8
  %cmp = icmp ne %struct.node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root2 = getelementptr inbounds %struct.tree, %struct.tree* %2, i32 0, i32 2
  %3 = load %struct.node*, %struct.node** %root2, align 8
  call void @freetree1(%struct.node* %3)
  %4 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root3 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 2
  store %struct.node* null, %struct.node** %root3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.bnode*, %struct.bnode** %bt, align 8
  %6 = load i32, i32* @nbody, align 4
  %7 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %8 = load i32, i32* %nstep.addr, align 4
  %call = call %struct.node* @maketree(%struct.bnode* %5, i32 %6, %struct.tree* %7, i32 %8, i32 0)
  store %struct.node* %call, %struct.node** %root, align 8
  %9 = load %struct.node*, %struct.node** %root, align 8
  %10 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root4 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 2
  store %struct.node* %9, %struct.node** %root4, align 8
  %11 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %12 = load i32, i32* %nstep.addr, align 4
  call void @computegrav(%struct.tree* %11, i32 %12)
  %13 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %bodiesperproc = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 4
  %arrayidx = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %bodiesperproc, i32 0, i64 0
  %14 = load %struct.bnode*, %struct.bnode** %arrayidx, align 8
  %15 = load i32, i32* %nstep.addr, align 4
  call void @vp(%struct.bnode* %14, i32 %15)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.bnode* @testdata() #0 {
entry:
  %retval = alloca %struct.bnode*, align 8
  %rsc = alloca double, align 8
  %vsc = alloca double, align 8
  %r = alloca double, align 8
  %v = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %cmr = alloca [3 x double], align 16
  %cmv = alloca [3 x double], align 16
  %head = alloca %struct.bnode*, align 8
  %p = alloca %struct.bnode*, align 8
  %prev = alloca %struct.bnode*, align 8
  %i = alloca i32, align 4
  %temp = alloca double, align 8
  %t1 = alloca double, align 8
  %seed = alloca double, align 8
  %k = alloca i32, align 4
  %rsq = alloca double, align 8
  %rsc1 = alloca double, align 8
  %rad = alloca double, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  store double 1.230000e+02, double* %seed, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 99)
  call void @abort() #7
  unreachable

return:                                           ; No predecessors!
  %0 = load %struct.bnode*, %struct.bnode** %retval
  ret %struct.bnode* %0
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: nounwind uwtable
define void @freetree1(%struct.node* %n) #0 {
entry:
  %n.addr = alloca %struct.node*, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %foo = alloca i32, align 4
  store %struct.node* %n, %struct.node** %n.addr, align 8
  %0 = load %struct.node*, %struct.node** %n.addr, align 8
  call void @freetree(%struct.node* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.node* @maketree(%struct.bnode* %btab, i32 %nb, %struct.tree* %t, i32 %nsteps, i32 %proc) #0 {
entry:
  %btab.addr = alloca %struct.bnode*, align 8
  %nb.addr = alloca i32, align 4
  %t.addr = alloca %struct.tree*, align 8
  %nsteps.addr = alloca i32, align 4
  %proc.addr = alloca i32, align 4
  %q = alloca %struct.bnode*, align 8
  %tmp = alloca i32, align 4
  %node1 = alloca %struct.node*, align 8
  %xqic = alloca %struct.icstruct, align 4
  %holder = alloca i32, align 4
  %coerce = alloca %struct.icstruct, align 4
  store %struct.bnode* %btab, %struct.bnode** %btab.addr, align 8
  store i32 %nb, i32* %nb.addr, align 4
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 %nsteps, i32* %nsteps.addr, align 4
  store i32 %proc, i32* %proc.addr, align 4
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root = getelementptr inbounds %struct.tree, %struct.tree* %0, i32 0, i32 2
  store %struct.node* null, %struct.node** %root, align 8
  %1 = load i32, i32* %nb.addr, align 4
  store i32 %1, i32* @nbody, align 4
  %2 = load i32, i32* @NumNodes, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %tmp, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %3 = load i32, i32* %tmp, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %tmp, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %bodiesperproc = getelementptr inbounds %struct.tree, %struct.tree* %5, i32 0, i32 4
  %arrayidx = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %bodiesperproc, i32 0, i64 %idxprom
  %6 = load %struct.bnode*, %struct.bnode** %arrayidx, align 8
  store %struct.bnode* %6, %struct.bnode** %btab.addr, align 8
  %7 = load %struct.bnode*, %struct.bnode** %btab.addr, align 8
  store %struct.bnode* %7, %struct.bnode** %q, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.bnode*, %struct.bnode** %q, align 8
  %cmp5 = icmp ne %struct.bnode* %8, null
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load %struct.bnode*, %struct.bnode** %q, align 8
  %mass = getelementptr inbounds %struct.bnode, %struct.bnode* %9, i32 0, i32 1
  %10 = load double, double* %mass, align 8
  %cmp7 = fcmp une double %10, 0.000000e+00
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %11 = load %struct.bnode*, %struct.bnode** %q, align 8
  %12 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %13 = load i32, i32* %nsteps.addr, align 4
  %14 = load i32, i32* %proc.addr, align 4
  call void @expandbox(%struct.bnode* %11, %struct.tree* %12, i32 %13, i32 %14)
  %15 = load %struct.bnode*, %struct.bnode** %q, align 8
  %16 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call = call { i64, i64 } @intcoord(%struct.bnode* %15, %struct.tree* %16)
  %17 = bitcast %struct.icstruct* %coerce to { i64, i64 }*
  %18 = getelementptr { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  %19 = extractvalue { i64, i64 } %call, 0
  store i64 %19, i64* %18, align 4
  %20 = getelementptr { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  %21 = extractvalue { i64, i64 } %call, 1
  store i64 %21, i64* %20, align 4
  %22 = bitcast %struct.icstruct* %xqic to i8*
  %23 = bitcast %struct.icstruct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 16, i32 4, i1 false)
  %24 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root8 = getelementptr inbounds %struct.tree, %struct.tree* %24, i32 0, i32 2
  %25 = load %struct.node*, %struct.node** %root8, align 8
  store %struct.node* %25, %struct.node** %node1, align 8
  %26 = load %struct.bnode*, %struct.bnode** %q, align 8
  %27 = load %struct.node*, %struct.node** %node1, align 8
  %28 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %29 = bitcast %struct.icstruct* %xqic to { i64, i64 }*
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 1
  %32 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = load i64, i64* %32, align 1
  %call9 = call %struct.node* @loadtree(%struct.bnode* %26, i64 %31, i64 %33, %struct.node* %27, i32 536870912, %struct.tree* %28)
  store %struct.node* %call9, %struct.node** %node1, align 8
  %34 = load %struct.node*, %struct.node** %node1, align 8
  %35 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root10 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 2
  store %struct.node* %34, %struct.node** %root10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load %struct.bnode*, %struct.bnode** %q, align 8
  %proc_next = getelementptr inbounds %struct.bnode, %struct.bnode* %36, i32 0, i32 10
  %37 = load %struct.bnode*, %struct.bnode** %proc_next, align 8
  store %struct.bnode* %37, %struct.bnode** %q, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %38 = load i32, i32* %tmp, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %tmp, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  %39 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root13 = getelementptr inbounds %struct.tree, %struct.tree* %39, i32 0, i32 2
  %40 = load %struct.node*, %struct.node** %root13, align 8
  %call14 = call double @hackcofm(%struct.node* %40)
  %41 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root15 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 2
  %42 = load %struct.node*, %struct.node** %root15, align 8
  ret %struct.node* %42
}

; Function Attrs: nounwind uwtable
define void @computegrav(%struct.tree* %t, i32 %nstep) #0 {
entry:
  %t.addr = alloca %struct.tree*, align 8
  %nstep.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rsize = alloca double, align 8
  %dthf = alloca double, align 8
  %root = alloca %struct.node*, align 8
  %blist = alloca %struct.bnode*, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 %nstep, i32* %nstep.addr, align 4
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize1 = getelementptr inbounds %struct.tree, %struct.tree* %0, i32 0, i32 1
  %1 = load double, double* %rsize1, align 8
  store double %1, double* %rsize, align 8
  store double 6.250000e-03, double* %dthf, align 8
  %2 = load i32, i32* @NumNodes, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root2 = getelementptr inbounds %struct.tree, %struct.tree* %4, i32 0, i32 2
  %5 = load %struct.node*, %struct.node** %root2, align 8
  store %struct.node* %5, %struct.node** %root, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %bodiesperproc = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 4
  %arrayidx = getelementptr inbounds [64 x %struct.bnode*], [64 x %struct.bnode*]* %bodiesperproc, i32 0, i64 %idxprom
  %8 = load %struct.bnode*, %struct.bnode** %arrayidx, align 8
  store %struct.bnode* %8, %struct.bnode** %blist, align 8
  %9 = load double, double* %rsize, align 8
  %10 = load %struct.node*, %struct.node** %root, align 8
  %11 = load %struct.bnode*, %struct.bnode** %blist, align 8
  %12 = load i32, i32* %nstep.addr, align 4
  %13 = load double, double* %dthf, align 8
  call void @grav(double %9, %struct.node* %10, %struct.bnode* %11, i32 %12, double %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @vp(%struct.bnode* %q, i32 %nstep) #0 {
entry:
  %q.addr = alloca %struct.bnode*, align 8
  %nstep.addr = alloca i32, align 4
  %dthf = alloca double, align 8
  %acc1 = alloca [3 x double], align 16
  %dacc = alloca [3 x double], align 16
  %dvel = alloca [3 x double], align 16
  %vel1 = alloca [3 x double], align 16
  %dpos = alloca [3 x double], align 16
  %foo = alloca %struct.bnode*, align 8
  %i = alloca i32, align 4
  %i9 = alloca i32, align 4
  %i22 = alloca i32, align 4
  %i33 = alloca i32, align 4
  %i46 = alloca i32, align 4
  %p0 = alloca double, align 8
  %p1 = alloca double, align 8
  %p2 = alloca double, align 8
  %i122 = alloca i32, align 4
  %p0135 = alloca double, align 8
  %p1136 = alloca double, align 8
  %p2137 = alloca double, align 8
  %i207 = alloca i32, align 4
  %p0221 = alloca double, align 8
  %p1222 = alloca double, align 8
  %p2223 = alloca double, align 8
  %i293 = alloca i32, align 4
  %i309 = alloca i32, align 4
  %i322 = alloca i32, align 4
  %i338 = alloca i32, align 4
  %i351 = alloca i32, align 4
  %p0367 = alloca double, align 8
  %p1368 = alloca double, align 8
  %p2369 = alloca double, align 8
  store %struct.bnode* %q, %struct.bnode** %q.addr, align 8
  store i32 %nstep, i32* %nstep.addr, align 4
  store double 6.250000e-03, double* %dthf, align 8
  %0 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %cmp = icmp ne %struct.bnode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  store %struct.bnode* %1, %struct.bnode** %foo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc.439, %if.end
  %2 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %cmp1 = icmp ne %struct.bnode* %2, null
  br i1 %cmp1, label %for.body, label %for.end.440

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %3, 3
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %new_acc = getelementptr inbounds %struct.bnode, %struct.bnode* %5, i32 0, i32 7
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %new_acc, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %acc1, i32 0, i64 %idxprom5
  store double %6, double* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %9 = load i32, i32* %nstep.addr, align 4
  %cmp7 = icmp sgt i32 %9, 0
  br i1 %cmp7, label %if.then.8, label %if.end.58

if.then.8:                                        ; preds = %for.end
  store i32 0, i32* %i9, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.19, %if.then.8
  %10 = load i32, i32* %i9, align 4
  %cmp11 = icmp slt i32 %10, 3
  br i1 %cmp11, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.10
  %11 = load i32, i32* %i9, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [3 x double], [3 x double]* %acc1, i32 0, i64 %idxprom13
  %12 = load double, double* %arrayidx14, align 8
  %13 = load i32, i32* %i9, align 4
  %idxprom15 = sext i32 %13 to i64
  %14 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %acc = getelementptr inbounds %struct.bnode, %struct.bnode* %14, i32 0, i32 6
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %acc, i32 0, i64 %idxprom15
  %15 = load double, double* %arrayidx16, align 8
  %sub = fsub double %12, %15
  %16 = load i32, i32* %i9, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %dacc, i32 0, i64 %idxprom17
  store double %sub, double* %arrayidx18, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.12
  %17 = load i32, i32* %i9, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %i9, align 4
  br label %for.cond.10

for.end.21:                                       ; preds = %for.cond.10
  store i32 0, i32* %i22, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %for.end.21
  %18 = load i32, i32* %i22, align 4
  %cmp24 = icmp slt i32 %18, 3
  br i1 %cmp24, label %for.body.25, label %for.end.32

for.body.25:                                      ; preds = %for.cond.23
  %19 = load i32, i32* %i22, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %dacc, i32 0, i64 %idxprom26
  %20 = load double, double* %arrayidx27, align 8
  %21 = load double, double* %dthf, align 8
  %mul = fmul double %20, %21
  %22 = load i32, i32* %i22, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %dvel, i32 0, i64 %idxprom28
  store double %mul, double* %arrayidx29, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.25
  %23 = load i32, i32* %i22, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, i32* %i22, align 4
  br label %for.cond.23

for.end.32:                                       ; preds = %for.cond.23
  store i32 0, i32* %i33, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.43, %for.end.32
  %24 = load i32, i32* %i33, align 4
  %cmp35 = icmp slt i32 %24, 3
  br i1 %cmp35, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.34
  %25 = load i32, i32* %i33, align 4
  %idxprom37 = sext i32 %25 to i64
  %26 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %vel = getelementptr inbounds %struct.bnode, %struct.bnode* %26, i32 0, i32 5
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %vel, i32 0, i64 %idxprom37
  %27 = load double, double* %arrayidx38, align 8
  %28 = load i32, i32* %i33, align 4
  %idxprom39 = sext i32 %28 to i64
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %dvel, i32 0, i64 %idxprom39
  %29 = load double, double* %arrayidx40, align 8
  %add = fadd double %27, %29
  %30 = load i32, i32* %i33, align 4
  %idxprom41 = sext i32 %30 to i64
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %dvel, i32 0, i64 %idxprom41
  store double %add, double* %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.36
  %31 = load i32, i32* %i33, align 4
  %inc44 = add nsw i32 %31, 1
  store i32 %inc44, i32* %i33, align 4
  br label %for.cond.34

for.end.45:                                       ; preds = %for.cond.34
  store i32 0, i32* %i46, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.55, %for.end.45
  %32 = load i32, i32* %i46, align 4
  %cmp48 = icmp slt i32 %32, 3
  br i1 %cmp48, label %for.body.49, label %for.end.57

for.body.49:                                      ; preds = %for.cond.47
  %33 = load i32, i32* %i46, align 4
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %dvel, i32 0, i64 %idxprom50
  %34 = load double, double* %arrayidx51, align 8
  %35 = load i32, i32* %i46, align 4
  %idxprom52 = sext i32 %35 to i64
  %36 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %vel53 = getelementptr inbounds %struct.bnode, %struct.bnode* %36, i32 0, i32 5
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %vel53, i32 0, i64 %idxprom52
  store double %34, double* %arrayidx54, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.49
  %37 = load i32, i32* %i46, align 4
  %inc56 = add nsw i32 %37, 1
  store i32 %inc56, i32* %i46, align 4
  br label %for.cond.47

for.end.57:                                       ; preds = %for.cond.47
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end
  %38 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos = getelementptr inbounds %struct.bnode, %struct.bnode* %38, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  %39 = load double, double* %arrayidx59, align 8
  store double %39, double* %p0, align 8
  %40 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos60 = getelementptr inbounds %struct.bnode, %struct.bnode* %40, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [3 x double], [3 x double]* %pos60, i32 0, i64 1
  %41 = load double, double* %arrayidx61, align 8
  store double %41, double* %p1, align 8
  %42 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos62 = getelementptr inbounds %struct.bnode, %struct.bnode* %42, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %pos62, i32 0, i64 2
  %43 = load double, double* %arrayidx63, align 8
  store double %43, double* %p2, align 8
  br i1 false, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.58
  %44 = load double, double* %p0, align 8
  %conv = fptrunc double %44 to float
  %call = call i32 @__isnanf(float %conv) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.71, label %if.end.73

cond.false:                                       ; preds = %if.end.58
  br i1 true, label %cond.true.64, label %cond.false.67

cond.true.64:                                     ; preds = %cond.false
  %45 = load double, double* %p0, align 8
  %call65 = call i32 @__isnan(double %45) #6
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.71, label %if.end.73

cond.false.67:                                    ; preds = %cond.false
  %46 = load double, double* %p0, align 8
  %conv68 = fpext double %46 to x86_fp80
  %call69 = call i32 @__isnanl(x86_fp80 %conv68) #6
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %cond.false.67, %cond.true.64, %cond.true
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 99)
  call void @abort() #7
  unreachable

if.end.73:                                        ; preds = %cond.false.67, %cond.true.64, %cond.true
  br i1 false, label %cond.true.74, label %cond.false.78

cond.true.74:                                     ; preds = %if.end.73
  %47 = load double, double* %p1, align 8
  %conv75 = fptrunc double %47 to float
  %call76 = call i32 @__isnanf(float %conv75) #6
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.86, label %if.end.88

cond.false.78:                                    ; preds = %if.end.73
  br i1 true, label %cond.true.79, label %cond.false.82

cond.true.79:                                     ; preds = %cond.false.78
  %48 = load double, double* %p1, align 8
  %call80 = call i32 @__isnan(double %48) #6
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.86, label %if.end.88

cond.false.82:                                    ; preds = %cond.false.78
  %49 = load double, double* %p1, align 8
  %conv83 = fpext double %49 to x86_fp80
  %call84 = call i32 @__isnanl(x86_fp80 %conv83) #6
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.88

if.then.86:                                       ; preds = %cond.false.82, %cond.true.79, %cond.true.74
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 98)
  call void @abort() #7
  unreachable

if.end.88:                                        ; preds = %cond.false.82, %cond.true.79, %cond.true.74
  br i1 false, label %cond.true.89, label %cond.false.93

cond.true.89:                                     ; preds = %if.end.88
  %50 = load double, double* %p2, align 8
  %conv90 = fptrunc double %50 to float
  %call91 = call i32 @__isnanf(float %conv90) #6
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.101, label %if.end.103

cond.false.93:                                    ; preds = %if.end.88
  br i1 true, label %cond.true.94, label %cond.false.97

cond.true.94:                                     ; preds = %cond.false.93
  %51 = load double, double* %p2, align 8
  %call95 = call i32 @__isnan(double %51) #6
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.101, label %if.end.103

cond.false.97:                                    ; preds = %cond.false.93
  %52 = load double, double* %p2, align 8
  %conv98 = fpext double %52 to x86_fp80
  %call99 = call i32 @__isnanl(x86_fp80 %conv98) #6
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %cond.false.97, %cond.true.94, %cond.true.89
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 97)
  call void @abort() #7
  unreachable

if.end.103:                                       ; preds = %cond.false.97, %cond.true.94, %cond.true.89
  %53 = load double, double* %p0, align 8
  %call104 = call double @fabs(double %53) #6
  %cmp105 = fcmp olt double %call104, 1.000000e+01
  br i1 %cmp105, label %if.end.109, label %if.then.107

if.then.107:                                      ; preds = %if.end.103
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 96)
  call void @abort() #7
  unreachable

if.end.109:                                       ; preds = %if.end.103
  %54 = load double, double* %p1, align 8
  %call110 = call double @fabs(double %54) #6
  %cmp111 = fcmp olt double %call110, 1.000000e+01
  br i1 %cmp111, label %if.end.115, label %if.then.113

if.then.113:                                      ; preds = %if.end.109
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 95)
  call void @abort() #7
  unreachable

if.end.115:                                       ; preds = %if.end.109
  %55 = load double, double* %p2, align 8
  %call116 = call double @fabs(double %55) #6
  %cmp117 = fcmp olt double %call116, 1.000000e+01
  br i1 %cmp117, label %if.end.121, label %if.then.119

if.then.119:                                      ; preds = %if.end.115
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 94)
  call void @abort() #7
  unreachable

if.end.121:                                       ; preds = %if.end.115
  store i32 0, i32* %i122, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.132, %if.end.121
  %56 = load i32, i32* %i122, align 4
  %cmp124 = icmp slt i32 %56, 3
  br i1 %cmp124, label %for.body.126, label %for.end.134

for.body.126:                                     ; preds = %for.cond.123
  %57 = load i32, i32* %i122, align 4
  %idxprom127 = sext i32 %57 to i64
  %arrayidx128 = getelementptr inbounds [3 x double], [3 x double]* %acc1, i32 0, i64 %idxprom127
  %58 = load double, double* %arrayidx128, align 8
  %59 = load i32, i32* %i122, align 4
  %idxprom129 = sext i32 %59 to i64
  %60 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %acc130 = getelementptr inbounds %struct.bnode, %struct.bnode* %60, i32 0, i32 6
  %arrayidx131 = getelementptr inbounds [3 x double], [3 x double]* %acc130, i32 0, i64 %idxprom129
  store double %58, double* %arrayidx131, align 8
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.126
  %61 = load i32, i32* %i122, align 4
  %inc133 = add nsw i32 %61, 1
  store i32 %inc133, i32* %i122, align 4
  br label %for.cond.123

for.end.134:                                      ; preds = %for.cond.123
  %62 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %acc138 = getelementptr inbounds %struct.bnode, %struct.bnode* %62, i32 0, i32 6
  %arrayidx139 = getelementptr inbounds [3 x double], [3 x double]* %acc138, i32 0, i64 0
  %63 = load double, double* %arrayidx139, align 8
  store double %63, double* %p0135, align 8
  %64 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %acc140 = getelementptr inbounds %struct.bnode, %struct.bnode* %64, i32 0, i32 6
  %arrayidx141 = getelementptr inbounds [3 x double], [3 x double]* %acc140, i32 0, i64 1
  %65 = load double, double* %arrayidx141, align 8
  store double %65, double* %p1136, align 8
  %66 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %acc142 = getelementptr inbounds %struct.bnode, %struct.bnode* %66, i32 0, i32 6
  %arrayidx143 = getelementptr inbounds [3 x double], [3 x double]* %acc142, i32 0, i64 2
  %67 = load double, double* %arrayidx143, align 8
  store double %67, double* %p2137, align 8
  br i1 false, label %cond.true.144, label %cond.false.148

cond.true.144:                                    ; preds = %for.end.134
  %68 = load double, double* %p0135, align 8
  %conv145 = fptrunc double %68 to float
  %call146 = call i32 @__isnanf(float %conv145) #6
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.156, label %if.end.158

cond.false.148:                                   ; preds = %for.end.134
  br i1 true, label %cond.true.149, label %cond.false.152

cond.true.149:                                    ; preds = %cond.false.148
  %69 = load double, double* %p0135, align 8
  %call150 = call i32 @__isnan(double %69) #6
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.then.156, label %if.end.158

cond.false.152:                                   ; preds = %cond.false.148
  %70 = load double, double* %p0135, align 8
  %conv153 = fpext double %70 to x86_fp80
  %call154 = call i32 @__isnanl(x86_fp80 %conv153) #6
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %cond.false.152, %cond.true.149, %cond.true.144
  %call157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 89)
  call void @abort() #7
  unreachable

if.end.158:                                       ; preds = %cond.false.152, %cond.true.149, %cond.true.144
  br i1 false, label %cond.true.159, label %cond.false.163

cond.true.159:                                    ; preds = %if.end.158
  %71 = load double, double* %p1136, align 8
  %conv160 = fptrunc double %71 to float
  %call161 = call i32 @__isnanf(float %conv160) #6
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.then.171, label %if.end.173

cond.false.163:                                   ; preds = %if.end.158
  br i1 true, label %cond.true.164, label %cond.false.167

cond.true.164:                                    ; preds = %cond.false.163
  %72 = load double, double* %p1136, align 8
  %call165 = call i32 @__isnan(double %72) #6
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.171, label %if.end.173

cond.false.167:                                   ; preds = %cond.false.163
  %73 = load double, double* %p1136, align 8
  %conv168 = fpext double %73 to x86_fp80
  %call169 = call i32 @__isnanl(x86_fp80 %conv168) #6
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %cond.false.167, %cond.true.164, %cond.true.159
  %call172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 88)
  call void @abort() #7
  unreachable

if.end.173:                                       ; preds = %cond.false.167, %cond.true.164, %cond.true.159
  br i1 false, label %cond.true.174, label %cond.false.178

cond.true.174:                                    ; preds = %if.end.173
  %74 = load double, double* %p2137, align 8
  %conv175 = fptrunc double %74 to float
  %call176 = call i32 @__isnanf(float %conv175) #6
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.then.186, label %if.end.188

cond.false.178:                                   ; preds = %if.end.173
  br i1 true, label %cond.true.179, label %cond.false.182

cond.true.179:                                    ; preds = %cond.false.178
  %75 = load double, double* %p2137, align 8
  %call180 = call i32 @__isnan(double %75) #6
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.then.186, label %if.end.188

cond.false.182:                                   ; preds = %cond.false.178
  %76 = load double, double* %p2137, align 8
  %conv183 = fpext double %76 to x86_fp80
  %call184 = call i32 @__isnanl(x86_fp80 %conv183) #6
  %tobool185 = icmp ne i32 %call184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %cond.false.182, %cond.true.179, %cond.true.174
  %call187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 87)
  call void @abort() #7
  unreachable

if.end.188:                                       ; preds = %cond.false.182, %cond.true.179, %cond.true.174
  %77 = load double, double* %p0135, align 8
  %call189 = call double @fabs(double %77) #6
  %cmp190 = fcmp olt double %call189, 1.000000e+04
  br i1 %cmp190, label %if.end.194, label %if.then.192

if.then.192:                                      ; preds = %if.end.188
  %call193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 86)
  call void @abort() #7
  unreachable

if.end.194:                                       ; preds = %if.end.188
  %78 = load double, double* %p1136, align 8
  %call195 = call double @fabs(double %78) #6
  %cmp196 = fcmp olt double %call195, 1.000000e+04
  br i1 %cmp196, label %if.end.200, label %if.then.198

if.then.198:                                      ; preds = %if.end.194
  %call199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 85)
  call void @abort() #7
  unreachable

if.end.200:                                       ; preds = %if.end.194
  %79 = load double, double* %p2137, align 8
  %call201 = call double @fabs(double %79) #6
  %cmp202 = fcmp olt double %call201, 1.000000e+04
  br i1 %cmp202, label %if.end.206, label %if.then.204

if.then.204:                                      ; preds = %if.end.200
  %call205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 84)
  call void @abort() #7
  unreachable

if.end.206:                                       ; preds = %if.end.200
  store i32 0, i32* %i207, align 4
  br label %for.cond.208

for.cond.208:                                     ; preds = %for.inc.218, %if.end.206
  %80 = load i32, i32* %i207, align 4
  %cmp209 = icmp slt i32 %80, 3
  br i1 %cmp209, label %for.body.211, label %for.end.220

for.body.211:                                     ; preds = %for.cond.208
  %81 = load i32, i32* %i207, align 4
  %idxprom212 = sext i32 %81 to i64
  %82 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %acc213 = getelementptr inbounds %struct.bnode, %struct.bnode* %82, i32 0, i32 6
  %arrayidx214 = getelementptr inbounds [3 x double], [3 x double]* %acc213, i32 0, i64 %idxprom212
  %83 = load double, double* %arrayidx214, align 8
  %84 = load double, double* %dthf, align 8
  %mul215 = fmul double %83, %84
  %85 = load i32, i32* %i207, align 4
  %idxprom216 = sext i32 %85 to i64
  %arrayidx217 = getelementptr inbounds [3 x double], [3 x double]* %dvel, i32 0, i64 %idxprom216
  store double %mul215, double* %arrayidx217, align 8
  br label %for.inc.218

for.inc.218:                                      ; preds = %for.body.211
  %86 = load i32, i32* %i207, align 4
  %inc219 = add nsw i32 %86, 1
  store i32 %inc219, i32* %i207, align 4
  br label %for.cond.208

for.end.220:                                      ; preds = %for.cond.208
  %87 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %vel224 = getelementptr inbounds %struct.bnode, %struct.bnode* %87, i32 0, i32 5
  %arrayidx225 = getelementptr inbounds [3 x double], [3 x double]* %vel224, i32 0, i64 0
  %88 = load double, double* %arrayidx225, align 8
  store double %88, double* %p0221, align 8
  %89 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %vel226 = getelementptr inbounds %struct.bnode, %struct.bnode* %89, i32 0, i32 5
  %arrayidx227 = getelementptr inbounds [3 x double], [3 x double]* %vel226, i32 0, i64 1
  %90 = load double, double* %arrayidx227, align 8
  store double %90, double* %p1222, align 8
  %91 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %vel228 = getelementptr inbounds %struct.bnode, %struct.bnode* %91, i32 0, i32 5
  %arrayidx229 = getelementptr inbounds [3 x double], [3 x double]* %vel228, i32 0, i64 2
  %92 = load double, double* %arrayidx229, align 8
  store double %92, double* %p2223, align 8
  br i1 false, label %cond.true.230, label %cond.false.234

cond.true.230:                                    ; preds = %for.end.220
  %93 = load double, double* %p0221, align 8
  %conv231 = fptrunc double %93 to float
  %call232 = call i32 @__isnanf(float %conv231) #6
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.then.242, label %if.end.244

cond.false.234:                                   ; preds = %for.end.220
  br i1 true, label %cond.true.235, label %cond.false.238

cond.true.235:                                    ; preds = %cond.false.234
  %94 = load double, double* %p0221, align 8
  %call236 = call i32 @__isnan(double %94) #6
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.then.242, label %if.end.244

cond.false.238:                                   ; preds = %cond.false.234
  %95 = load double, double* %p0221, align 8
  %conv239 = fpext double %95 to x86_fp80
  %call240 = call i32 @__isnanl(x86_fp80 %conv239) #6
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %if.then.242, label %if.end.244

if.then.242:                                      ; preds = %cond.false.238, %cond.true.235, %cond.true.230
  %call243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 79)
  call void @abort() #7
  unreachable

if.end.244:                                       ; preds = %cond.false.238, %cond.true.235, %cond.true.230
  br i1 false, label %cond.true.245, label %cond.false.249

cond.true.245:                                    ; preds = %if.end.244
  %96 = load double, double* %p1222, align 8
  %conv246 = fptrunc double %96 to float
  %call247 = call i32 @__isnanf(float %conv246) #6
  %tobool248 = icmp ne i32 %call247, 0
  br i1 %tobool248, label %if.then.257, label %if.end.259

cond.false.249:                                   ; preds = %if.end.244
  br i1 true, label %cond.true.250, label %cond.false.253

cond.true.250:                                    ; preds = %cond.false.249
  %97 = load double, double* %p1222, align 8
  %call251 = call i32 @__isnan(double %97) #6
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then.257, label %if.end.259

cond.false.253:                                   ; preds = %cond.false.249
  %98 = load double, double* %p1222, align 8
  %conv254 = fpext double %98 to x86_fp80
  %call255 = call i32 @__isnanl(x86_fp80 %conv254) #6
  %tobool256 = icmp ne i32 %call255, 0
  br i1 %tobool256, label %if.then.257, label %if.end.259

if.then.257:                                      ; preds = %cond.false.253, %cond.true.250, %cond.true.245
  %call258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 78)
  call void @abort() #7
  unreachable

if.end.259:                                       ; preds = %cond.false.253, %cond.true.250, %cond.true.245
  br i1 false, label %cond.true.260, label %cond.false.264

cond.true.260:                                    ; preds = %if.end.259
  %99 = load double, double* %p2223, align 8
  %conv261 = fptrunc double %99 to float
  %call262 = call i32 @__isnanf(float %conv261) #6
  %tobool263 = icmp ne i32 %call262, 0
  br i1 %tobool263, label %if.then.272, label %if.end.274

cond.false.264:                                   ; preds = %if.end.259
  br i1 true, label %cond.true.265, label %cond.false.268

cond.true.265:                                    ; preds = %cond.false.264
  %100 = load double, double* %p2223, align 8
  %call266 = call i32 @__isnan(double %100) #6
  %tobool267 = icmp ne i32 %call266, 0
  br i1 %tobool267, label %if.then.272, label %if.end.274

cond.false.268:                                   ; preds = %cond.false.264
  %101 = load double, double* %p2223, align 8
  %conv269 = fpext double %101 to x86_fp80
  %call270 = call i32 @__isnanl(x86_fp80 %conv269) #6
  %tobool271 = icmp ne i32 %call270, 0
  br i1 %tobool271, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %cond.false.268, %cond.true.265, %cond.true.260
  %call273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 77)
  call void @abort() #7
  unreachable

if.end.274:                                       ; preds = %cond.false.268, %cond.true.265, %cond.true.260
  %102 = load double, double* %p0221, align 8
  %call275 = call double @fabs(double %102) #6
  %cmp276 = fcmp olt double %call275, 1.000000e+04
  br i1 %cmp276, label %if.end.280, label %if.then.278

if.then.278:                                      ; preds = %if.end.274
  %call279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 76)
  call void @abort() #7
  unreachable

if.end.280:                                       ; preds = %if.end.274
  %103 = load double, double* %p1222, align 8
  %call281 = call double @fabs(double %103) #6
  %cmp282 = fcmp olt double %call281, 1.000000e+04
  br i1 %cmp282, label %if.end.286, label %if.then.284

if.then.284:                                      ; preds = %if.end.280
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 75)
  call void @abort() #7
  unreachable

if.end.286:                                       ; preds = %if.end.280
  %104 = load double, double* %p2223, align 8
  %call287 = call double @fabs(double %104) #6
  %cmp288 = fcmp olt double %call287, 1.000000e+04
  br i1 %cmp288, label %if.end.292, label %if.then.290

if.then.290:                                      ; preds = %if.end.286
  %call291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 74)
  call void @abort() #7
  unreachable

if.end.292:                                       ; preds = %if.end.286
  store i32 0, i32* %i293, align 4
  br label %for.cond.294

for.cond.294:                                     ; preds = %for.inc.306, %if.end.292
  %105 = load i32, i32* %i293, align 4
  %cmp295 = icmp slt i32 %105, 3
  br i1 %cmp295, label %for.body.297, label %for.end.308

for.body.297:                                     ; preds = %for.cond.294
  %106 = load i32, i32* %i293, align 4
  %idxprom298 = sext i32 %106 to i64
  %107 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %vel299 = getelementptr inbounds %struct.bnode, %struct.bnode* %107, i32 0, i32 5
  %arrayidx300 = getelementptr inbounds [3 x double], [3 x double]* %vel299, i32 0, i64 %idxprom298
  %108 = load double, double* %arrayidx300, align 8
  %109 = load i32, i32* %i293, align 4
  %idxprom301 = sext i32 %109 to i64
  %arrayidx302 = getelementptr inbounds [3 x double], [3 x double]* %dvel, i32 0, i64 %idxprom301
  %110 = load double, double* %arrayidx302, align 8
  %add303 = fadd double %108, %110
  %111 = load i32, i32* %i293, align 4
  %idxprom304 = sext i32 %111 to i64
  %arrayidx305 = getelementptr inbounds [3 x double], [3 x double]* %vel1, i32 0, i64 %idxprom304
  store double %add303, double* %arrayidx305, align 8
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.body.297
  %112 = load i32, i32* %i293, align 4
  %inc307 = add nsw i32 %112, 1
  store i32 %inc307, i32* %i293, align 4
  br label %for.cond.294

for.end.308:                                      ; preds = %for.cond.294
  store i32 0, i32* %i309, align 4
  br label %for.cond.310

for.cond.310:                                     ; preds = %for.inc.319, %for.end.308
  %113 = load i32, i32* %i309, align 4
  %cmp311 = icmp slt i32 %113, 3
  br i1 %cmp311, label %for.body.313, label %for.end.321

for.body.313:                                     ; preds = %for.cond.310
  %114 = load i32, i32* %i309, align 4
  %idxprom314 = sext i32 %114 to i64
  %arrayidx315 = getelementptr inbounds [3 x double], [3 x double]* %vel1, i32 0, i64 %idxprom314
  %115 = load double, double* %arrayidx315, align 8
  %mul316 = fmul double %115, 1.250000e-02
  %116 = load i32, i32* %i309, align 4
  %idxprom317 = sext i32 %116 to i64
  %arrayidx318 = getelementptr inbounds [3 x double], [3 x double]* %dpos, i32 0, i64 %idxprom317
  store double %mul316, double* %arrayidx318, align 8
  br label %for.inc.319

for.inc.319:                                      ; preds = %for.body.313
  %117 = load i32, i32* %i309, align 4
  %inc320 = add nsw i32 %117, 1
  store i32 %inc320, i32* %i309, align 4
  br label %for.cond.310

for.end.321:                                      ; preds = %for.cond.310
  store i32 0, i32* %i322, align 4
  br label %for.cond.323

for.cond.323:                                     ; preds = %for.inc.335, %for.end.321
  %118 = load i32, i32* %i322, align 4
  %cmp324 = icmp slt i32 %118, 3
  br i1 %cmp324, label %for.body.326, label %for.end.337

for.body.326:                                     ; preds = %for.cond.323
  %119 = load i32, i32* %i322, align 4
  %idxprom327 = sext i32 %119 to i64
  %120 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos328 = getelementptr inbounds %struct.bnode, %struct.bnode* %120, i32 0, i32 2
  %arrayidx329 = getelementptr inbounds [3 x double], [3 x double]* %pos328, i32 0, i64 %idxprom327
  %121 = load double, double* %arrayidx329, align 8
  %122 = load i32, i32* %i322, align 4
  %idxprom330 = sext i32 %122 to i64
  %arrayidx331 = getelementptr inbounds [3 x double], [3 x double]* %dpos, i32 0, i64 %idxprom330
  %123 = load double, double* %arrayidx331, align 8
  %add332 = fadd double %121, %123
  %124 = load i32, i32* %i322, align 4
  %idxprom333 = sext i32 %124 to i64
  %arrayidx334 = getelementptr inbounds [3 x double], [3 x double]* %dpos, i32 0, i64 %idxprom333
  store double %add332, double* %arrayidx334, align 8
  br label %for.inc.335

for.inc.335:                                      ; preds = %for.body.326
  %125 = load i32, i32* %i322, align 4
  %inc336 = add nsw i32 %125, 1
  store i32 %inc336, i32* %i322, align 4
  br label %for.cond.323

for.end.337:                                      ; preds = %for.cond.323
  store i32 0, i32* %i338, align 4
  br label %for.cond.339

for.cond.339:                                     ; preds = %for.inc.348, %for.end.337
  %126 = load i32, i32* %i338, align 4
  %cmp340 = icmp slt i32 %126, 3
  br i1 %cmp340, label %for.body.342, label %for.end.350

for.body.342:                                     ; preds = %for.cond.339
  %127 = load i32, i32* %i338, align 4
  %idxprom343 = sext i32 %127 to i64
  %arrayidx344 = getelementptr inbounds [3 x double], [3 x double]* %dpos, i32 0, i64 %idxprom343
  %128 = load double, double* %arrayidx344, align 8
  %129 = load i32, i32* %i338, align 4
  %idxprom345 = sext i32 %129 to i64
  %130 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos346 = getelementptr inbounds %struct.bnode, %struct.bnode* %130, i32 0, i32 2
  %arrayidx347 = getelementptr inbounds [3 x double], [3 x double]* %pos346, i32 0, i64 %idxprom345
  store double %128, double* %arrayidx347, align 8
  br label %for.inc.348

for.inc.348:                                      ; preds = %for.body.342
  %131 = load i32, i32* %i338, align 4
  %inc349 = add nsw i32 %131, 1
  store i32 %inc349, i32* %i338, align 4
  br label %for.cond.339

for.end.350:                                      ; preds = %for.cond.339
  store i32 0, i32* %i351, align 4
  br label %for.cond.352

for.cond.352:                                     ; preds = %for.inc.364, %for.end.350
  %132 = load i32, i32* %i351, align 4
  %cmp353 = icmp slt i32 %132, 3
  br i1 %cmp353, label %for.body.355, label %for.end.366

for.body.355:                                     ; preds = %for.cond.352
  %133 = load i32, i32* %i351, align 4
  %idxprom356 = sext i32 %133 to i64
  %arrayidx357 = getelementptr inbounds [3 x double], [3 x double]* %vel1, i32 0, i64 %idxprom356
  %134 = load double, double* %arrayidx357, align 8
  %135 = load i32, i32* %i351, align 4
  %idxprom358 = sext i32 %135 to i64
  %arrayidx359 = getelementptr inbounds [3 x double], [3 x double]* %dvel, i32 0, i64 %idxprom358
  %136 = load double, double* %arrayidx359, align 8
  %add360 = fadd double %134, %136
  %137 = load i32, i32* %i351, align 4
  %idxprom361 = sext i32 %137 to i64
  %138 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %vel362 = getelementptr inbounds %struct.bnode, %struct.bnode* %138, i32 0, i32 5
  %arrayidx363 = getelementptr inbounds [3 x double], [3 x double]* %vel362, i32 0, i64 %idxprom361
  store double %add360, double* %arrayidx363, align 8
  br label %for.inc.364

for.inc.364:                                      ; preds = %for.body.355
  %139 = load i32, i32* %i351, align 4
  %inc365 = add nsw i32 %139, 1
  store i32 %inc365, i32* %i351, align 4
  br label %for.cond.352

for.end.366:                                      ; preds = %for.cond.352
  %140 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos370 = getelementptr inbounds %struct.bnode, %struct.bnode* %140, i32 0, i32 2
  %arrayidx371 = getelementptr inbounds [3 x double], [3 x double]* %pos370, i32 0, i64 0
  %141 = load double, double* %arrayidx371, align 8
  store double %141, double* %p0367, align 8
  %142 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos372 = getelementptr inbounds %struct.bnode, %struct.bnode* %142, i32 0, i32 2
  %arrayidx373 = getelementptr inbounds [3 x double], [3 x double]* %pos372, i32 0, i64 1
  %143 = load double, double* %arrayidx373, align 8
  store double %143, double* %p1368, align 8
  %144 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %pos374 = getelementptr inbounds %struct.bnode, %struct.bnode* %144, i32 0, i32 2
  %arrayidx375 = getelementptr inbounds [3 x double], [3 x double]* %pos374, i32 0, i64 2
  %145 = load double, double* %arrayidx375, align 8
  store double %145, double* %p2369, align 8
  br i1 false, label %cond.true.376, label %cond.false.380

cond.true.376:                                    ; preds = %for.end.366
  %146 = load double, double* %p0367, align 8
  %conv377 = fptrunc double %146 to float
  %call378 = call i32 @__isnanf(float %conv377) #6
  %tobool379 = icmp ne i32 %call378, 0
  br i1 %tobool379, label %if.then.388, label %if.end.390

cond.false.380:                                   ; preds = %for.end.366
  br i1 true, label %cond.true.381, label %cond.false.384

cond.true.381:                                    ; preds = %cond.false.380
  %147 = load double, double* %p0367, align 8
  %call382 = call i32 @__isnan(double %147) #6
  %tobool383 = icmp ne i32 %call382, 0
  br i1 %tobool383, label %if.then.388, label %if.end.390

cond.false.384:                                   ; preds = %cond.false.380
  %148 = load double, double* %p0367, align 8
  %conv385 = fpext double %148 to x86_fp80
  %call386 = call i32 @__isnanl(x86_fp80 %conv385) #6
  %tobool387 = icmp ne i32 %call386, 0
  br i1 %tobool387, label %if.then.388, label %if.end.390

if.then.388:                                      ; preds = %cond.false.384, %cond.true.381, %cond.true.376
  %call389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 69)
  call void @abort() #7
  unreachable

if.end.390:                                       ; preds = %cond.false.384, %cond.true.381, %cond.true.376
  br i1 false, label %cond.true.391, label %cond.false.395

cond.true.391:                                    ; preds = %if.end.390
  %149 = load double, double* %p1368, align 8
  %conv392 = fptrunc double %149 to float
  %call393 = call i32 @__isnanf(float %conv392) #6
  %tobool394 = icmp ne i32 %call393, 0
  br i1 %tobool394, label %if.then.403, label %if.end.405

cond.false.395:                                   ; preds = %if.end.390
  br i1 true, label %cond.true.396, label %cond.false.399

cond.true.396:                                    ; preds = %cond.false.395
  %150 = load double, double* %p1368, align 8
  %call397 = call i32 @__isnan(double %150) #6
  %tobool398 = icmp ne i32 %call397, 0
  br i1 %tobool398, label %if.then.403, label %if.end.405

cond.false.399:                                   ; preds = %cond.false.395
  %151 = load double, double* %p1368, align 8
  %conv400 = fpext double %151 to x86_fp80
  %call401 = call i32 @__isnanl(x86_fp80 %conv400) #6
  %tobool402 = icmp ne i32 %call401, 0
  br i1 %tobool402, label %if.then.403, label %if.end.405

if.then.403:                                      ; preds = %cond.false.399, %cond.true.396, %cond.true.391
  %call404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 68)
  call void @abort() #7
  unreachable

if.end.405:                                       ; preds = %cond.false.399, %cond.true.396, %cond.true.391
  br i1 false, label %cond.true.406, label %cond.false.410

cond.true.406:                                    ; preds = %if.end.405
  %152 = load double, double* %p2369, align 8
  %conv407 = fptrunc double %152 to float
  %call408 = call i32 @__isnanf(float %conv407) #6
  %tobool409 = icmp ne i32 %call408, 0
  br i1 %tobool409, label %if.then.418, label %if.end.420

cond.false.410:                                   ; preds = %if.end.405
  br i1 true, label %cond.true.411, label %cond.false.414

cond.true.411:                                    ; preds = %cond.false.410
  %153 = load double, double* %p2369, align 8
  %call412 = call i32 @__isnan(double %153) #6
  %tobool413 = icmp ne i32 %call412, 0
  br i1 %tobool413, label %if.then.418, label %if.end.420

cond.false.414:                                   ; preds = %cond.false.410
  %154 = load double, double* %p2369, align 8
  %conv415 = fpext double %154 to x86_fp80
  %call416 = call i32 @__isnanl(x86_fp80 %conv415) #6
  %tobool417 = icmp ne i32 %call416, 0
  br i1 %tobool417, label %if.then.418, label %if.end.420

if.then.418:                                      ; preds = %cond.false.414, %cond.true.411, %cond.true.406
  %call419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 67)
  call void @abort() #7
  unreachable

if.end.420:                                       ; preds = %cond.false.414, %cond.true.411, %cond.true.406
  %155 = load double, double* %p0367, align 8
  %call421 = call double @fabs(double %155) #6
  %cmp422 = fcmp olt double %call421, 1.000000e+04
  br i1 %cmp422, label %if.end.426, label %if.then.424

if.then.424:                                      ; preds = %if.end.420
  %call425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 66)
  call void @abort() #7
  unreachable

if.end.426:                                       ; preds = %if.end.420
  %156 = load double, double* %p1368, align 8
  %call427 = call double @fabs(double %156) #6
  %cmp428 = fcmp olt double %call427, 1.000000e+04
  br i1 %cmp428, label %if.end.432, label %if.then.430

if.then.430:                                      ; preds = %if.end.426
  %call431 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 65)
  call void @abort() #7
  unreachable

if.end.432:                                       ; preds = %if.end.426
  %157 = load double, double* %p2369, align 8
  %call433 = call double @fabs(double %157) #6
  %cmp434 = fcmp olt double %call433, 1.000000e+04
  br i1 %cmp434, label %if.end.438, label %if.then.436

if.then.436:                                      ; preds = %if.end.432
  %call437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 64)
  call void @abort() #7
  unreachable

if.end.438:                                       ; preds = %if.end.432
  br label %for.inc.439

for.inc.439:                                      ; preds = %if.end.438
  %158 = load %struct.bnode*, %struct.bnode** %q.addr, align 8
  %proc_next = getelementptr inbounds %struct.bnode, %struct.bnode* %158, i32 0, i32 10
  %159 = load %struct.bnode*, %struct.bnode** %proc_next, align 8
  store %struct.bnode* %159, %struct.bnode** %q.addr, align 8
  br label %for.cond

for.end.440:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @freetree(%struct.node* %n) #0 {
entry:
  %n.addr = alloca %struct.node*, align 8
  %r = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store %struct.node* %n, %struct.node** %n.addr, align 8
  %0 = load %struct.node*, %struct.node** %n.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.node*, %struct.node** %n.addr, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.node*, %struct.node** %n.addr, align 8
  %6 = bitcast %struct.node* %5 to %struct.cnode*
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %6, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom
  %7 = load %struct.node*, %struct.node** %arrayidx, align 8
  store %struct.node* %7, %struct.node** %r, align 8
  %8 = load %struct.node*, %struct.node** %r, align 8
  %cmp5 = icmp ne %struct.node* %8, null
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body
  %9 = load %struct.node*, %struct.node** %r, align 8
  call void @freetree(%struct.node* %9)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.node*, %struct.node** %n.addr, align 8
  call void @my_free(%struct.node* %11)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @my_free(%struct.node* %n) #0 {
entry:
  %n.addr = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %n.addr, align 8
  %0 = load %struct.node*, %struct.node** %n.addr, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.bnode*, %struct.bnode** @bp_free_list, align 8
  %3 = load %struct.node*, %struct.node** %n.addr, align 8
  %4 = bitcast %struct.node* %3 to %struct.bnode*
  %next = getelementptr inbounds %struct.bnode, %struct.bnode* %4, i32 0, i32 9
  store %struct.bnode* %2, %struct.bnode** %next, align 8
  %5 = load %struct.node*, %struct.node** %n.addr, align 8
  %6 = bitcast %struct.node* %5 to %struct.bnode*
  store %struct.bnode* %6, %struct.bnode** @bp_free_list, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %8 = bitcast %struct.node* %7 to %struct.cnode*
  %9 = load %struct.node*, %struct.node** %n.addr, align 8
  %10 = bitcast %struct.node* %9 to %struct.cnode*
  %next2 = getelementptr inbounds %struct.cnode, %struct.cnode* %10, i32 0, i32 6
  store %struct.cnode* %8, %struct.cnode** %next2, align 8
  %11 = load %struct.node*, %struct.node** %n.addr, align 8
  store %struct.node* %11, %struct.node** @cp_free_list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.bnode* @ubody_alloc(i32 %p) #0 {
entry:
  %p.addr = alloca i32, align 4
  %tmp = alloca %struct.bnode*, align 8
  store i32 %p, i32* %p.addr, align 4
  %call = call noalias i8* @malloc(i64 144) #3
  %0 = bitcast i8* %call to %struct.bnode*
  store %struct.bnode* %0, %struct.bnode** %tmp, align 8
  %1 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %type = getelementptr inbounds %struct.bnode, %struct.bnode* %1, i32 0, i32 0
  store i16 1, i16* %type, align 2
  %2 = load i32, i32* %p.addr, align 4
  %3 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %proc = getelementptr inbounds %struct.bnode, %struct.bnode* %3, i32 0, i32 3
  store i32 %2, i32* %proc, align 4
  %4 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %proc_next = getelementptr inbounds %struct.bnode, %struct.bnode* %4, i32 0, i32 10
  store %struct.bnode* null, %struct.bnode** %proc_next, align 8
  %5 = load i32, i32* %p.addr, align 4
  %6 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %new_proc = getelementptr inbounds %struct.bnode, %struct.bnode* %6, i32 0, i32 4
  store i32 %5, i32* %new_proc, align 4
  %7 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  ret %struct.bnode* %7
}

; Function Attrs: nounwind uwtable
define %struct.cnode* @cell_alloc(i32 %p) #0 {
entry:
  %p.addr = alloca i32, align 4
  %tmp = alloca %struct.cnode*, align 8
  %i = alloca i32, align 4
  store i32 %p, i32* %p.addr, align 4
  %0 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %cmp = icmp ne %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %2 = bitcast %struct.node* %1 to %struct.cnode*
  store %struct.cnode* %2, %struct.cnode** %tmp, align 8
  %3 = load %struct.node*, %struct.node** @cp_free_list, align 8
  %4 = bitcast %struct.node* %3 to %struct.cnode*
  %next = getelementptr inbounds %struct.cnode, %struct.cnode* %4, i32 0, i32 6
  %5 = load %struct.cnode*, %struct.cnode** %next, align 8
  %6 = bitcast %struct.cnode* %5 to %struct.node*
  store %struct.node* %6, %struct.node** @cp_free_list, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 120) #3
  %7 = bitcast i8* %call to %struct.cnode*
  store %struct.cnode* %7, %struct.cnode** %tmp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.cnode*, %struct.cnode** %tmp, align 8
  %type = getelementptr inbounds %struct.cnode, %struct.cnode* %8, i32 0, i32 0
  store i16 2, i16* %type, align 2
  %9 = load i32, i32* %p.addr, align 4
  %10 = load %struct.cnode*, %struct.cnode** %tmp, align 8
  %proc = getelementptr inbounds %struct.cnode, %struct.cnode* %10, i32 0, i32 3
  store i32 %9, i32* %proc, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %11, 8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.cnode*, %struct.cnode** %tmp, align 8
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %13, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom
  store %struct.node* null, %struct.node** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.cnode*, %struct.cnode** %tmp, align 8
  ret %struct.cnode* %15
}

; Function Attrs: nounwind
declare double @sqrt(double) #2

declare i32 @error(...) #1

declare double @my_rand(...) #1

declare double @xrand(...) #1

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define void @grav(double %rsize, %struct.node* %rt, %struct.bnode* %bodies, i32 %nstep, double %dthf) #0 {
entry:
  %rsize.addr = alloca double, align 8
  %rt.addr = alloca %struct.node*, align 8
  %bodies.addr = alloca %struct.bnode*, align 8
  %nstep.addr = alloca i32, align 4
  %dthf.addr = alloca double, align 8
  %p = alloca %struct.bnode*, align 8
  %q = alloca %struct.bnode*, align 8
  %i = alloca i32, align 4
  %foo = alloca %struct.bnode*, align 8
  store double %rsize, double* %rsize.addr, align 8
  store %struct.node* %rt, %struct.node** %rt.addr, align 8
  store %struct.bnode* %bodies, %struct.bnode** %bodies.addr, align 8
  store i32 %nstep, i32* %nstep.addr, align 4
  store double %dthf, double* %dthf.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load %struct.bnode*, %struct.bnode** %bodies.addr, align 8
  %cmp = icmp ne %struct.bnode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.bnode*, %struct.bnode** %bodies.addr, align 8
  store %struct.bnode* %1, %struct.bnode** %foo, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.bnode*, %struct.bnode** %bodies.addr, align 8
  store %struct.bnode* %2, %struct.bnode** %q, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.bnode*, %struct.bnode** %q, align 8
  %cmp1 = icmp ne %struct.bnode* %3, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load double, double* %rsize.addr, align 8
  %5 = load %struct.node*, %struct.node** %rt.addr, align 8
  %6 = load %struct.bnode*, %struct.bnode** %q, align 8
  %7 = load i32, i32* %nstep.addr, align 4
  %8 = load double, double* %dthf.addr, align 8
  call void @gravstep(double %4, %struct.node* %5, %struct.bnode* %6, i32 %7, double %8)
  %9 = load %struct.bnode*, %struct.bnode** %q, align 8
  %proc_next = getelementptr inbounds %struct.bnode, %struct.bnode* %9, i32 0, i32 10
  %10 = load %struct.bnode*, %struct.bnode** %proc_next, align 8
  store %struct.bnode* %10, %struct.bnode** %q, align 8
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gravstep(double %rsize, %struct.node* %rt, %struct.bnode* %p, i32 %nstep, double %dthf) #0 {
entry:
  %rsize.addr = alloca double, align 8
  %rt.addr = alloca %struct.node*, align 8
  %p.addr = alloca %struct.bnode*, align 8
  %nstep.addr = alloca i32, align 4
  %dthf.addr = alloca double, align 8
  store double %rsize, double* %rsize.addr, align 8
  store %struct.node* %rt, %struct.node** %rt.addr, align 8
  store %struct.bnode* %p, %struct.bnode** %p.addr, align 8
  store i32 %nstep, i32* %nstep.addr, align 4
  store double %dthf, double* %dthf.addr, align 8
  %0 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %1 = load double, double* %rsize.addr, align 8
  %2 = load %struct.node*, %struct.node** %rt.addr, align 8
  call void @hackgrav(%struct.bnode* %0, double %1, %struct.node* %2)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @__isnanf(float) #5

; Function Attrs: nounwind readnone
declare i32 @__isnan(double) #5

; Function Attrs: nounwind readnone
declare i32 @__isnanl(x86_fp80) #5

; Function Attrs: nounwind readnone
declare double @fabs(double) #5

; Function Attrs: nounwind uwtable
define void @hackgrav(%struct.bnode* %p, double %rsize, %struct.node* %rt) #0 {
entry:
  %p.addr = alloca %struct.bnode*, align 8
  %rsize.addr = alloca double, align 8
  %rt.addr = alloca %struct.node*, align 8
  %hg = alloca %struct.hgstruct, align 8
  %szsq = alloca double, align 8
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %tmp = alloca %struct.hgstruct, align 8
  %i14 = alloca i32, align 4
  store %struct.bnode* %p, %struct.bnode** %p.addr, align 8
  store double %rsize, double* %rsize.addr, align 8
  store %struct.node* %rt, %struct.node** %rt.addr, align 8
  %0 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pskip = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 0
  store %struct.bnode* %0, %struct.bnode** %pskip, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos = getelementptr inbounds %struct.bnode, %struct.bnode* %3, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 %idxprom
  %4 = load double, double* %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %pos0 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %pos0, i32 0, i64 %idxprom1
  store double %4, double* %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %phi0 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 2
  store double 0.000000e+00, double* %phi0, align 8
  store i32 0, i32* %i3, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.9, %for.end
  %7 = load i32, i32* %i3, align 4
  %cmp5 = icmp slt i32 %7, 3
  br i1 %cmp5, label %for.body.6, label %for.end.11

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %i3, align 4
  %idxprom7 = sext i32 %8 to i64
  %acc0 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %acc0, i32 0, i64 %idxprom7
  store double 0.000000e+00, double* %arrayidx8, align 8
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.6
  %9 = load i32, i32* %i3, align 4
  %inc10 = add nsw i32 %9, 1
  store i32 %inc10, i32* %i3, align 4
  br label %for.cond.4

for.end.11:                                       ; preds = %for.cond.4
  %10 = load double, double* %rsize.addr, align 8
  %11 = load double, double* %rsize.addr, align 8
  %mul = fmul double %10, %11
  store double %mul, double* %szsq, align 8
  %12 = load %struct.node*, %struct.node** %rt.addr, align 8
  %13 = load double, double* %szsq, align 8
  call void @walksub(%struct.hgstruct* sret %tmp, %struct.node* %12, double %13, double 1.000000e+00, %struct.hgstruct* byval align 8 %hg, i32 0)
  %14 = bitcast %struct.hgstruct* %hg to i8*
  %15 = bitcast %struct.hgstruct* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %15, i64 64, i32 8, i1 false)
  %phi012 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 2
  %16 = load double, double* %phi012, align 8
  %17 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %phi = getelementptr inbounds %struct.bnode, %struct.bnode* %17, i32 0, i32 8
  store double %16, double* %phi, align 8
  store i32 0, i32* %i14, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %for.end.11
  %18 = load i32, i32* %i14, align 4
  %cmp16 = icmp slt i32 %18, 3
  br i1 %cmp16, label %for.body.17, label %for.end.25

for.body.17:                                      ; preds = %for.cond.15
  %19 = load i32, i32* %i14, align 4
  %idxprom18 = sext i32 %19 to i64
  %acc019 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %acc019, i32 0, i64 %idxprom18
  %20 = load double, double* %arrayidx20, align 8
  %21 = load i32, i32* %i14, align 4
  %idxprom21 = sext i32 %21 to i64
  %22 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %new_acc = getelementptr inbounds %struct.bnode, %struct.bnode* %22, i32 0, i32 7
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %new_acc, i32 0, i64 %idxprom21
  store double %20, double* %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.17
  %23 = load i32, i32* %i14, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i14, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  ret void
}

declare void @walksub(%struct.hgstruct* sret, %struct.node*, double, double, %struct.hgstruct* byval align 8, i32) #1

; Function Attrs: nounwind uwtable
define void @gravsub(%struct.hgstruct* noalias sret %agg.result, %struct.node* %p, %struct.hgstruct* byval align 8 %hg) #0 {
entry:
  %p.addr = alloca %struct.node*, align 8
  %drabs = alloca double, align 8
  %phii = alloca double, align 8
  %mor3 = alloca double, align 8
  %ai = alloca [3 x double], align 16
  %quaddr = alloca [3 x double], align 16
  %dr5inv = alloca double, align 8
  %phiquad = alloca double, align 8
  %drquaddr = alloca double, align 8
  %dr = alloca [3 x double], align 16
  %drsq = alloca double, align 8
  %i = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i19 = alloca i32, align 4
  %i31 = alloca i32, align 4
  store %struct.node* %p, %struct.node** %p.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.node*, %struct.node** %p.addr, align 8
  %pos = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %pos0 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %pos0, i32 0, i64 %idxprom1
  %5 = load double, double* %arrayidx2, align 8
  %sub = fsub double %3, %5
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %dr, i32 0, i64 %idxprom3
  store double %sub, double* %arrayidx4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %drsq, align 8
  store i32 0, i32* %i5, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %8 = load i32, i32* %i5, align 4
  %cmp7 = icmp slt i32 %8, 3
  br i1 %cmp7, label %for.body.8, label %for.end.15

for.body.8:                                       ; preds = %for.cond.6
  %9 = load i32, i32* %i5, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %dr, i32 0, i64 %idxprom9
  %10 = load double, double* %arrayidx10, align 8
  %11 = load i32, i32* %i5, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %dr, i32 0, i64 %idxprom11
  %12 = load double, double* %arrayidx12, align 8
  %mul = fmul double %10, %12
  %13 = load double, double* %drsq, align 8
  %add = fadd double %13, %mul
  store double %add, double* %drsq, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.8
  %14 = load i32, i32* %i5, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, i32* %i5, align 4
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  %15 = load double, double* %drsq, align 8
  %add16 = fadd double %15, 0x3F647AE147AE147C
  store double %add16, double* %drsq, align 8
  %16 = load double, double* %drsq, align 8
  %call = call double @sqrt(double %16) #3
  store double %call, double* %drabs, align 8
  %17 = load %struct.node*, %struct.node** %p.addr, align 8
  %mass = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  %18 = load double, double* %mass, align 8
  %19 = load double, double* %drabs, align 8
  %div = fdiv double %18, %19
  store double %div, double* %phii, align 8
  %20 = load double, double* %phii, align 8
  %phi0 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 2
  %21 = load double, double* %phi0, align 8
  %sub17 = fsub double %21, %20
  store double %sub17, double* %phi0, align 8
  %22 = load double, double* %phii, align 8
  %23 = load double, double* %drsq, align 8
  %div18 = fdiv double %22, %23
  store double %div18, double* %mor3, align 8
  store i32 0, i32* %i19, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.28, %for.end.15
  %24 = load i32, i32* %i19, align 4
  %cmp21 = icmp slt i32 %24, 3
  br i1 %cmp21, label %for.body.22, label %for.end.30

for.body.22:                                      ; preds = %for.cond.20
  %25 = load i32, i32* %i19, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %dr, i32 0, i64 %idxprom23
  %26 = load double, double* %arrayidx24, align 8
  %27 = load double, double* %mor3, align 8
  %mul25 = fmul double %26, %27
  %28 = load i32, i32* %i19, align 4
  %idxprom26 = sext i32 %28 to i64
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 %idxprom26
  store double %mul25, double* %arrayidx27, align 8
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.22
  %29 = load i32, i32* %i19, align 4
  %inc29 = add nsw i32 %29, 1
  store i32 %inc29, i32* %i19, align 4
  br label %for.cond.20

for.end.30:                                       ; preds = %for.cond.20
  store i32 0, i32* %i31, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.43, %for.end.30
  %30 = load i32, i32* %i31, align 4
  %cmp33 = icmp slt i32 %30, 3
  br i1 %cmp33, label %for.body.34, label %for.end.45

for.body.34:                                      ; preds = %for.cond.32
  %31 = load i32, i32* %i31, align 4
  %idxprom35 = sext i32 %31 to i64
  %acc0 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %acc0, i32 0, i64 %idxprom35
  %32 = load double, double* %arrayidx36, align 8
  %33 = load i32, i32* %i31, align 4
  %idxprom37 = sext i32 %33 to i64
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %ai, i32 0, i64 %idxprom37
  %34 = load double, double* %arrayidx38, align 8
  %add39 = fadd double %32, %34
  %35 = load i32, i32* %i31, align 4
  %idxprom40 = sext i32 %35 to i64
  %acc041 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 3
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %acc041, i32 0, i64 %idxprom40
  store double %add39, double* %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.34
  %36 = load i32, i32* %i31, align 4
  %inc44 = add nsw i32 %36, 1
  store i32 %inc44, i32* %i31, align 4
  br label %for.cond.32

for.end.45:                                       ; preds = %for.cond.32
  %37 = load %struct.node*, %struct.node** %p.addr, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 0
  %38 = load i16, i16* %type, align 2
  %conv = sext i16 %38 to i32
  %cmp46 = icmp eq i32 %conv, 2
  br i1 %cmp46, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.45
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.45
  %39 = bitcast %struct.hgstruct* %agg.result to i8*
  %40 = bitcast %struct.hgstruct* %hg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 64, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define signext i16 @subdivp(%struct.node* %p, double %dsq, double %tolsq, %struct.hgstruct* byval align 8 %hg) #0 {
entry:
  %retval = alloca i16, align 2
  %p.addr = alloca %struct.node*, align 8
  %dsq.addr = alloca double, align 8
  %tolsq.addr = alloca double, align 8
  %local_p = alloca %struct.node*, align 8
  %dr = alloca [3 x double], align 16
  %pos = alloca [3 x double], align 16
  %drsq = alloca double, align 8
  %i = alloca i32, align 4
  %i9 = alloca i32, align 4
  store %struct.node* %p, %struct.node** %p.addr, align 8
  store double %dsq, double* %dsq.addr, align 8
  store double %tolsq, double* %tolsq.addr, align 8
  %0 = load %struct.node*, %struct.node** %p.addr, align 8
  store %struct.node* %0, %struct.node** %local_p, align 8
  %1 = load %struct.node*, %struct.node** %local_p, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i16 0, i16* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.node*, %struct.node** %local_p, align 8
  %pos4 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %pos4, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %pos0 = getelementptr inbounds %struct.hgstruct, %struct.hgstruct* %hg, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %pos0, i32 0, i64 %idxprom5
  %8 = load double, double* %arrayidx6, align 8
  %sub = fsub double %6, %8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %dr, i32 0, i64 %idxprom7
  store double %sub, double* %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, double* %drsq, align 8
  store i32 0, i32* %i9, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.18, %for.end
  %11 = load i32, i32* %i9, align 4
  %cmp11 = icmp slt i32 %11, 3
  br i1 %cmp11, label %for.body.13, label %for.end.20

for.body.13:                                      ; preds = %for.cond.10
  %12 = load i32, i32* %i9, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %dr, i32 0, i64 %idxprom14
  %13 = load double, double* %arrayidx15, align 8
  %14 = load i32, i32* %i9, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %dr, i32 0, i64 %idxprom16
  %15 = load double, double* %arrayidx17, align 8
  %mul = fmul double %13, %15
  %16 = load double, double* %drsq, align 8
  %add = fadd double %16, %mul
  store double %add, double* %drsq, align 8
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.13
  %17 = load i32, i32* %i9, align 4
  %inc19 = add nsw i32 %17, 1
  store i32 %inc19, i32* %i9, align 4
  br label %for.cond.10

for.end.20:                                       ; preds = %for.cond.10
  %18 = load double, double* %tolsq.addr, align 8
  %19 = load double, double* %drsq, align 8
  %mul21 = fmul double %18, %19
  %20 = load double, double* %dsq.addr, align 8
  %cmp22 = fcmp olt double %mul21, %20
  %conv23 = zext i1 %cmp22 to i32
  %conv24 = trunc i32 %conv23 to i16
  store i16 %conv24, i16* %retval
  br label %return

return:                                           ; preds = %for.end.20, %if.then
  %21 = load i16, i16* %retval
  ret i16 %21
}

; Function Attrs: nounwind uwtable
define void @expandbox(%struct.bnode* %p, %struct.tree* %t, i32 %nsteps, i32 %proc) #0 {
entry:
  %p.addr = alloca %struct.bnode*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %nsteps.addr = alloca i32, align 4
  %proc.addr = alloca i32, align 4
  %ic = alloca %struct.icstruct, align 4
  %k = alloca i32, align 4
  %rmid = alloca [3 x double], align 16
  %newt = alloca %struct.cnode*, align 8
  %tmp = alloca %struct.tree, align 8
  %rsize = alloca double, align 8
  %inbox = alloca i32, align 4
  %i = alloca i32, align 4
  %rmin19 = alloca double, align 8
  %i36 = alloca i32, align 4
  %coerce = alloca %struct.icstruct, align 4
  store %struct.bnode* %p, %struct.bnode** %p.addr, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 %nsteps, i32* %nsteps.addr, align 4
  store i32 %proc, i32* %proc.addr, align 4
  %0 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call = call i32 @ic_test(%struct.bnode* %0, %struct.tree* %1)
  store i32 %call, i32* %inbox, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.52, %entry
  %2 = load i32, i32* %inbox, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize3 = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 1
  %4 = load double, double* %rsize3, align 8
  store double %4, double* %rsize, align 8
  %5 = load double, double* %rsize, align 8
  %cmp = fcmp olt double %5, 1.000000e+03
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 999)
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %6, 3
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin = getelementptr inbounds %struct.tree, %struct.tree* %8, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %rmin, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %10 = load double, double* %rsize, align 8
  %mul = fmul double 5.000000e-01, %10
  %add = fadd double %9, %mul
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %rmid, i32 0, i64 %idxprom7
  store double %add, double* %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.27, %for.end
  %13 = load i32, i32* %k, align 4
  %cmp10 = icmp slt i32 %13, 3
  br i1 %cmp10, label %for.body.11, label %for.end.29

for.body.11:                                      ; preds = %for.cond.9
  %14 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %14 to i64
  %15 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos = getelementptr inbounds %struct.bnode, %struct.bnode* %15, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 %idxprom12
  %16 = load double, double* %arrayidx13, align 8
  %17 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %rmid, i32 0, i64 %idxprom14
  %18 = load double, double* %arrayidx15, align 8
  %cmp16 = fcmp olt double %16, %18
  br i1 %cmp16, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %for.body.11
  %19 = load i32, i32* %k, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin21 = getelementptr inbounds %struct.tree, %struct.tree* %20, i32 0, i32 0
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %rmin21, i32 0, i64 %idxprom20
  %21 = load double, double* %arrayidx22, align 8
  store double %21, double* %rmin19, align 8
  %22 = load double, double* %rmin19, align 8
  %23 = load double, double* %rsize, align 8
  %sub = fsub double %22, %23
  %24 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin24 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %rmin24, i32 0, i64 %idxprom23
  store double %sub, double* %arrayidx25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.17, %for.body.11
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %26 = load i32, i32* %k, align 4
  %inc28 = add nsw i32 %26, 1
  store i32 %inc28, i32* %k, align 4
  br label %for.cond.9

for.end.29:                                       ; preds = %for.cond.9
  %27 = load double, double* %rsize, align 8
  %mul30 = fmul double 2.000000e+00, %27
  %28 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize31 = getelementptr inbounds %struct.tree, %struct.tree* %28, i32 0, i32 1
  store double %mul30, double* %rsize31, align 8
  %29 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize32 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 1
  %30 = load double, double* %rsize32, align 8
  store double %30, double* %rsize, align 8
  %31 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 2
  %32 = load %struct.node*, %struct.node** %root, align 8
  %cmp33 = icmp ne %struct.node* %32, null
  br i1 %cmp33, label %if.then.34, label %if.end.52

if.then.34:                                       ; preds = %for.end.29
  %call37 = call %struct.cnode* @cell_alloc(i32 0)
  store %struct.cnode* %call37, %struct.cnode** %newt, align 8
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %rmid, i32 0, i64 0
  %33 = load double, double* %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %rmid, i32 0, i64 1
  %34 = load double, double* %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %rmid, i32 0, i64 2
  %35 = load double, double* %arrayidx40, align 8
  %36 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call41 = call { i64, i64 } @intcoord1(double %33, double %34, double %35, %struct.tree* %36)
  %37 = bitcast %struct.icstruct* %coerce to { i64, i64 }*
  %38 = getelementptr { i64, i64 }, { i64, i64 }* %37, i32 0, i32 0
  %39 = extractvalue { i64, i64 } %call41, 0
  store i64 %39, i64* %38, align 4
  %40 = getelementptr { i64, i64 }, { i64, i64 }* %37, i32 0, i32 1
  %41 = extractvalue { i64, i64 } %call41, 1
  store i64 %41, i64* %40, align 4
  %42 = bitcast %struct.icstruct* %ic to i8*
  %43 = bitcast %struct.icstruct* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %42, i8* %43, i64 16, i32 4, i1 false)
  %inb = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  %44 = load i16, i16* %inb, align 2
  %tobool42 = icmp ne i16 %44, 0
  br i1 %tobool42, label %if.end.45, label %if.then.43

if.then.43:                                       ; preds = %if.then.34
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 1)
  call void @abort() #7
  unreachable

if.end.45:                                        ; preds = %if.then.34
  %45 = bitcast %struct.icstruct* %ic to { i64, i64 }*
  %46 = getelementptr { i64, i64 }, { i64, i64 }* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 1
  %48 = getelementptr { i64, i64 }, { i64, i64 }* %45, i32 0, i32 1
  %49 = load i64, i64* %48, align 1
  %call46 = call i32 @old_subindex(i64 %47, i64 %49, i32 536870912)
  store i32 %call46, i32* %k, align 4
  %50 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root47 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 2
  %51 = load %struct.node*, %struct.node** %root47, align 8
  %52 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %52 to i64
  %53 = load %struct.cnode*, %struct.cnode** %newt, align 8
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %53, i32 0, i32 5
  %arrayidx49 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom48
  store %struct.node* %51, %struct.node** %arrayidx49, align 8
  %54 = load %struct.cnode*, %struct.cnode** %newt, align 8
  %55 = bitcast %struct.cnode* %54 to %struct.node*
  %56 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %root50 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 2
  store %struct.node* %55, %struct.node** %root50, align 8
  %57 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %58 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %call51 = call i32 @ic_test(%struct.bnode* %57, %struct.tree* %58)
  store i32 %call51, i32* %inbox, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.45, %for.end.29
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.node* @loadtree(%struct.bnode* %p, i64 %xpic.coerce0, i64 %xpic.coerce1, %struct.node* %t, i32 %l, %struct.tree* %tr) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %xpic = alloca %struct.icstruct, align 8
  %p.addr = alloca %struct.bnode*, align 8
  %t.addr = alloca %struct.node*, align 8
  %l.addr = alloca i32, align 4
  %tr.addr = alloca %struct.tree*, align 8
  %si = alloca i32, align 4
  %c = alloca %struct.cnode*, align 8
  %rt = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pic = alloca %struct.icstruct, align 4
  %tic = alloca %struct.icstruct, align 4
  %0 = bitcast %struct.icstruct* %xpic to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %xpic.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %xpic.coerce1, i64* %2
  store %struct.bnode* %p, %struct.bnode** %p.addr, align 8
  store %struct.node* %t, %struct.node** %t.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store %struct.tree* %tr, %struct.tree** %tr.addr, align 8
  %3 = load %struct.node*, %struct.node** %t.addr, align 8
  %cmp = icmp eq %struct.node* %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %5 = bitcast %struct.bnode* %4 to %struct.node*
  store %struct.node* %5, %struct.node** %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %l.addr, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 2)
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %if.else
  %7 = load %struct.node*, %struct.node** %t.addr, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %8 = load i16, i16* %type, align 2
  %conv = sext i16 %8 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  %9 = load i32, i32* %i, align 4
  %call6 = call %struct.cnode* @cell_alloc(i32 %9)
  store %struct.cnode* %call6, %struct.cnode** %c, align 8
  %10 = load %struct.node*, %struct.node** %t.addr, align 8
  %11 = bitcast %struct.node* %10 to %struct.bnode*
  %12 = load %struct.tree*, %struct.tree** %tr.addr, align 8
  %13 = load i32, i32* %l.addr, align 4
  %call7 = call i32 @subindex(%struct.bnode* %11, %struct.tree* %12, i32 %13)
  store i32 %call7, i32* %si, align 4
  %14 = load %struct.node*, %struct.node** %t.addr, align 8
  %15 = load i32, i32* %si, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.cnode*, %struct.cnode** %c, align 8
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %16, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom
  store %struct.node* %14, %struct.node** %arrayidx, align 8
  %17 = load %struct.cnode*, %struct.cnode** %c, align 8
  %18 = bitcast %struct.cnode* %17 to %struct.node*
  store %struct.node* %18, %struct.node** %t.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %19 = load i32, i32* %l.addr, align 4
  %20 = bitcast %struct.icstruct* %xpic to { i64, i64 }*
  %21 = getelementptr { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 1
  %23 = getelementptr { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = load i64, i64* %23, align 1
  %call9 = call i32 @old_subindex(i64 %22, i64 %24, i32 %19)
  store i32 %call9, i32* %si, align 4
  %25 = load i32, i32* %si, align 4
  %idxprom10 = sext i32 %25 to i64
  %26 = load %struct.node*, %struct.node** %t.addr, align 8
  %27 = bitcast %struct.node* %26 to %struct.cnode*
  %subp11 = getelementptr inbounds %struct.cnode, %struct.cnode* %27, i32 0, i32 5
  %arrayidx12 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp11, i32 0, i64 %idxprom10
  %28 = load %struct.node*, %struct.node** %arrayidx12, align 8
  store %struct.node* %28, %struct.node** %rt, align 8
  %29 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %30 = load %struct.node*, %struct.node** %rt, align 8
  %31 = load i32, i32* %l.addr, align 4
  %shr = ashr i32 %31, 1
  %32 = load %struct.tree*, %struct.tree** %tr.addr, align 8
  %33 = bitcast %struct.icstruct* %xpic to { i64, i64 }*
  %34 = getelementptr { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 1
  %36 = getelementptr { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  %37 = load i64, i64* %36, align 1
  %call13 = call %struct.node* @loadtree(%struct.bnode* %29, i64 %35, i64 %37, %struct.node* %30, i32 %shr, %struct.tree* %32)
  %38 = load i32, i32* %si, align 4
  %idxprom14 = sext i32 %38 to i64
  %39 = load %struct.node*, %struct.node** %t.addr, align 8
  %40 = bitcast %struct.node* %39 to %struct.cnode*
  %subp15 = getelementptr inbounds %struct.cnode, %struct.cnode* %40, i32 0, i32 5
  %arrayidx16 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp15, i32 0, i64 %idxprom14
  store %struct.node* %call13, %struct.node** %arrayidx16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.8
  %41 = load %struct.node*, %struct.node** %t.addr, align 8
  store %struct.node* %41, %struct.node** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  %42 = load %struct.node*, %struct.node** %retval
  ret %struct.node* %42
}

; Function Attrs: nounwind uwtable
define double @hackcofm(%struct.node* %q) #0 {
entry:
  %retval = alloca double, align 8
  %q.addr = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %r = alloca %struct.node*, align 8
  %tmpv = alloca [3 x double], align 16
  %tmp_pos = alloca [3 x double], align 16
  %mq = alloca double, align 8
  %mr = alloca double, align 8
  %i2 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %i26 = alloca i32, align 4
  %i53 = alloca i32, align 4
  store %struct.node* %q, %struct.node** %q.addr, align 8
  %0 = load %struct.node*, %struct.node** %q.addr, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %1 = load i16, i16* %type, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 2
  br i1 %cmp, label %if.then, label %if.end.68

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %mq, align 8
  store i32 0, i32* %i2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i2, align 4
  %cmp3 = icmp slt i32 %2, 3
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i2, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %tmp_pos, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i2, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i2, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.41, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %5, 8
  br i1 %cmp6, label %for.body.8, label %for.end.43

for.body.8:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %6 to i64
  %7 = load %struct.node*, %struct.node** %q.addr, align 8
  %8 = bitcast %struct.node* %7 to %struct.cnode*
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %8, i32 0, i32 5
  %arrayidx10 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom9
  %9 = load %struct.node*, %struct.node** %arrayidx10, align 8
  store %struct.node* %9, %struct.node** %r, align 8
  %10 = load %struct.node*, %struct.node** %r, align 8
  %cmp11 = icmp ne %struct.node* %10, null
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body.8
  %11 = load %struct.node*, %struct.node** %r, align 8
  %call = call double @hackcofm(%struct.node* %11)
  store double %call, double* %mr, align 8
  %12 = load double, double* %mr, align 8
  %13 = load double, double* %mq, align 8
  %add = fadd double %12, %13
  store double %add, double* %mq, align 8
  store i32 0, i32* %i14, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.23, %if.then.13
  %14 = load i32, i32* %i14, align 4
  %cmp16 = icmp slt i32 %14, 3
  br i1 %cmp16, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.15
  %15 = load i32, i32* %i14, align 4
  %idxprom19 = sext i32 %15 to i64
  %16 = load %struct.node*, %struct.node** %r, align 8
  %pos = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 %idxprom19
  %17 = load double, double* %arrayidx20, align 8
  %18 = load double, double* %mr, align 8
  %mul = fmul double %17, %18
  %19 = load i32, i32* %i14, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %tmpv, i32 0, i64 %idxprom21
  store double %mul, double* %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %20 = load i32, i32* %i14, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, i32* %i14, align 4
  br label %for.cond.15

for.end.25:                                       ; preds = %for.cond.15
  store i32 0, i32* %i26, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.38, %for.end.25
  %21 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %21, 3
  br i1 %cmp28, label %for.body.30, label %for.end.40

for.body.30:                                      ; preds = %for.cond.27
  %22 = load i32, i32* %i26, align 4
  %idxprom31 = sext i32 %22 to i64
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %tmp_pos, i32 0, i64 %idxprom31
  %23 = load double, double* %arrayidx32, align 8
  %24 = load i32, i32* %i26, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %tmpv, i32 0, i64 %idxprom33
  %25 = load double, double* %arrayidx34, align 8
  %add35 = fadd double %23, %25
  %26 = load i32, i32* %i26, align 4
  %idxprom36 = sext i32 %26 to i64
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %tmp_pos, i32 0, i64 %idxprom36
  store double %add35, double* %arrayidx37, align 8
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.30
  %27 = load i32, i32* %i26, align 4
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, i32* %i26, align 4
  br label %for.cond.27

for.end.40:                                       ; preds = %for.cond.27
  br label %if.end

if.end:                                           ; preds = %for.end.40, %for.body.8
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %28, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.5

for.end.43:                                       ; preds = %for.cond.5
  %29 = load double, double* %mq, align 8
  %30 = load %struct.node*, %struct.node** %q.addr, align 8
  %mass = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 1
  store double %29, double* %mass, align 8
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %tmp_pos, i32 0, i64 0
  %31 = load double, double* %arrayidx44, align 8
  %32 = load %struct.node*, %struct.node** %q.addr, align 8
  %pos45 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %pos45, i32 0, i64 0
  store double %31, double* %arrayidx46, align 8
  %arrayidx47 = getelementptr inbounds [3 x double], [3 x double]* %tmp_pos, i32 0, i64 1
  %33 = load double, double* %arrayidx47, align 8
  %34 = load %struct.node*, %struct.node** %q.addr, align 8
  %pos48 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [3 x double], [3 x double]* %pos48, i32 0, i64 1
  store double %33, double* %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %tmp_pos, i32 0, i64 2
  %35 = load double, double* %arrayidx50, align 8
  %36 = load %struct.node*, %struct.node** %q.addr, align 8
  %pos51 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %pos51, i32 0, i64 2
  store double %35, double* %arrayidx52, align 8
  store i32 0, i32* %i53, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.65, %for.end.43
  %37 = load i32, i32* %i53, align 4
  %cmp55 = icmp slt i32 %37, 3
  br i1 %cmp55, label %for.body.57, label %for.end.67

for.body.57:                                      ; preds = %for.cond.54
  %38 = load i32, i32* %i53, align 4
  %idxprom58 = sext i32 %38 to i64
  %39 = load %struct.node*, %struct.node** %q.addr, align 8
  %pos59 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [3 x double], [3 x double]* %pos59, i32 0, i64 %idxprom58
  %40 = load double, double* %arrayidx60, align 8
  %41 = load %struct.node*, %struct.node** %q.addr, align 8
  %mass61 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 1
  %42 = load double, double* %mass61, align 8
  %div = fdiv double %40, %42
  %43 = load i32, i32* %i53, align 4
  %idxprom62 = sext i32 %43 to i64
  %44 = load %struct.node*, %struct.node** %q.addr, align 8
  %pos63 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 2
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %pos63, i32 0, i64 %idxprom62
  store double %div, double* %arrayidx64, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.57
  %45 = load i32, i32* %i53, align 4
  %inc66 = add nsw i32 %45, 1
  store i32 %inc66, i32* %i53, align 4
  br label %for.cond.54

for.end.67:                                       ; preds = %for.cond.54
  %46 = load double, double* %mq, align 8
  store double %46, double* %retval
  br label %return

if.end.68:                                        ; preds = %entry
  %47 = load %struct.node*, %struct.node** %q.addr, align 8
  %mass69 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 1
  %48 = load double, double* %mass69, align 8
  store double %48, double* %mq, align 8
  %49 = load double, double* %mq, align 8
  store double %49, double* %retval
  br label %return

return:                                           ; preds = %if.end.68, %for.end.67
  %50 = load double, double* %retval
  ret double %50
}

; Function Attrs: nounwind uwtable
define i32 @ic_test(%struct.bnode* %p, %struct.tree* %t) #0 {
entry:
  %p.addr = alloca %struct.bnode*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %xsc = alloca double, align 8
  %rsize = alloca double, align 8
  %result = alloca i32, align 4
  %pos = alloca [3 x double], align 16
  store %struct.bnode* %p, %struct.bnode** %p.addr, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 1, i32* %result, align 4
  %0 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos1 = getelementptr inbounds %struct.bnode, %struct.bnode* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %pos1, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  store double %1, double* %arrayidx2, align 8
  %2 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos3 = getelementptr inbounds %struct.bnode, %struct.bnode* %2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %pos3, i32 0, i64 1
  %3 = load double, double* %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 1
  store double %3, double* %arrayidx5, align 8
  %4 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos6 = getelementptr inbounds %struct.bnode, %struct.bnode* %4, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %pos6, i32 0, i64 2
  %5 = load double, double* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 2
  store double %5, double* %arrayidx8, align 8
  %6 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize9 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 1
  %7 = load double, double* %rsize9, align 8
  store double %7, double* %rsize, align 8
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  %8 = load double, double* %arrayidx10, align 8
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %rmin, i32 0, i64 0
  %10 = load double, double* %arrayidx11, align 8
  %sub = fsub double %8, %10
  %11 = load double, double* %rsize, align 8
  %div = fdiv double %sub, %11
  store double %div, double* %xsc, align 8
  %12 = load double, double* %xsc, align 8
  %cmp = fcmp ole double 0.000000e+00, %12
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %13 = load double, double* %xsc, align 8
  %cmp12 = fcmp olt double %13, 1.000000e+00
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 1
  %14 = load double, double* %arrayidx13, align 8
  %15 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin14 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %rmin14, i32 0, i64 1
  %16 = load double, double* %arrayidx15, align 8
  %sub16 = fsub double %14, %16
  %17 = load double, double* %rsize, align 8
  %div17 = fdiv double %sub16, %17
  store double %div17, double* %xsc, align 8
  %18 = load double, double* %xsc, align 8
  %cmp18 = fcmp ole double 0.000000e+00, %18
  br i1 %cmp18, label %land.lhs.true.19, label %if.then.21

land.lhs.true.19:                                 ; preds = %if.end
  %19 = load double, double* %xsc, align 8
  %cmp20 = fcmp olt double %19, 1.000000e+00
  br i1 %cmp20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.19, %if.end
  store i32 0, i32* %result, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.19
  %arrayidx23 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 2
  %20 = load double, double* %arrayidx23, align 8
  %21 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin24 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %rmin24, i32 0, i64 2
  %22 = load double, double* %arrayidx25, align 8
  %sub26 = fsub double %20, %22
  %23 = load double, double* %rsize, align 8
  %div27 = fdiv double %sub26, %23
  store double %div27, double* %xsc, align 8
  %24 = load double, double* %xsc, align 8
  %cmp28 = fcmp ole double 0.000000e+00, %24
  br i1 %cmp28, label %land.lhs.true.29, label %if.then.31

land.lhs.true.29:                                 ; preds = %if.end.22
  %25 = load double, double* %xsc, align 8
  %cmp30 = fcmp olt double %25, 1.000000e+00
  br i1 %cmp30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %land.lhs.true.29, %if.end.22
  store i32 0, i32* %result, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %land.lhs.true.29
  %26 = load i32, i32* %result, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @intcoord1(double %rp0, double %rp1, double %rp2, %struct.tree* %t) #0 {
entry:
  %retval = alloca %struct.icstruct, align 4
  %rp0.addr = alloca double, align 8
  %rp1.addr = alloca double, align 8
  %rp2.addr = alloca double, align 8
  %t.addr = alloca %struct.tree*, align 8
  %xsc = alloca double, align 8
  %ic = alloca %struct.icstruct, align 4
  store double %rp0, double* %rp0.addr, align 8
  store double %rp1, double* %rp1.addr, align 8
  store double %rp2, double* %rp2.addr, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %inb = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 1, i16* %inb, align 2
  %0 = load double, double* %rp0.addr, align 8
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin = getelementptr inbounds %struct.tree, %struct.tree* %1, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %rmin, i32 0, i64 0
  %2 = load double, double* %arrayidx, align 8
  %sub = fsub double %0, %2
  %3 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 1
  %4 = load double, double* %rsize, align 8
  %div = fdiv double %sub, %4
  store double %div, double* %xsc, align 8
  %5 = load double, double* %xsc, align 8
  %cmp = fcmp ole double 0.000000e+00, %5
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load double, double* %xsc, align 8
  %cmp1 = fcmp olt double %6, 1.000000e+00
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load double, double* %xsc, align 8
  %mul = fmul double 0x41D0000000000000, %7
  %call = call double @floor(double %mul) #6
  %conv = fptosi double %call to i32
  %xp = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %xp, i32 0, i64 0
  store i32 %conv, i32* %arrayidx2, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %inb3 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 0, i16* %inb3, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %rp1.addr, align 8
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin4 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %rmin4, i32 0, i64 1
  %10 = load double, double* %arrayidx5, align 8
  %sub6 = fsub double %8, %10
  %11 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize7 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  %12 = load double, double* %rsize7, align 8
  %div8 = fdiv double %sub6, %12
  store double %div8, double* %xsc, align 8
  %13 = load double, double* %xsc, align 8
  %cmp9 = fcmp ole double 0.000000e+00, %13
  br i1 %cmp9, label %land.lhs.true.11, label %if.else.20

land.lhs.true.11:                                 ; preds = %if.end
  %14 = load double, double* %xsc, align 8
  %cmp12 = fcmp olt double %14, 1.000000e+00
  br i1 %cmp12, label %if.then.14, label %if.else.20

if.then.14:                                       ; preds = %land.lhs.true.11
  %15 = load double, double* %xsc, align 8
  %mul15 = fmul double 0x41D0000000000000, %15
  %call16 = call double @floor(double %mul15) #6
  %conv17 = fptosi double %call16 to i32
  %xp18 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %xp18, i32 0, i64 1
  store i32 %conv17, i32* %arrayidx19, align 4
  br label %if.end.22

if.else.20:                                       ; preds = %land.lhs.true.11, %if.end
  %inb21 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 0, i16* %inb21, align 2
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.then.14
  %16 = load double, double* %rp2.addr, align 8
  %17 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin23 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %rmin23, i32 0, i64 2
  %18 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double %16, %18
  %19 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize26 = getelementptr inbounds %struct.tree, %struct.tree* %19, i32 0, i32 1
  %20 = load double, double* %rsize26, align 8
  %div27 = fdiv double %sub25, %20
  store double %div27, double* %xsc, align 8
  %21 = load double, double* %xsc, align 8
  %cmp28 = fcmp ole double 0.000000e+00, %21
  br i1 %cmp28, label %land.lhs.true.30, label %if.else.39

land.lhs.true.30:                                 ; preds = %if.end.22
  %22 = load double, double* %xsc, align 8
  %cmp31 = fcmp olt double %22, 1.000000e+00
  br i1 %cmp31, label %if.then.33, label %if.else.39

if.then.33:                                       ; preds = %land.lhs.true.30
  %23 = load double, double* %xsc, align 8
  %mul34 = fmul double 0x41D0000000000000, %23
  %call35 = call double @floor(double %mul34) #6
  %conv36 = fptosi double %call35 to i32
  %xp37 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 0
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %xp37, i32 0, i64 2
  store i32 %conv36, i32* %arrayidx38, align 4
  br label %if.end.41

if.else.39:                                       ; preds = %land.lhs.true.30, %if.end.22
  %inb40 = getelementptr inbounds %struct.icstruct, %struct.icstruct* %ic, i32 0, i32 1
  store i16 0, i16* %inb40, align 2
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.33
  %24 = bitcast %struct.icstruct* %retval to i8*
  %25 = bitcast %struct.icstruct* %ic to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 16, i32 4, i1 false)
  %26 = bitcast %struct.icstruct* %retval to { i64, i64 }*
  %27 = load { i64, i64 }, { i64, i64 }* %26, align 4
  ret { i64, i64 } %27
}

; Function Attrs: nounwind uwtable
define i32 @subindex(%struct.bnode* %p, %struct.tree* %t, i32 %l) #0 {
entry:
  %p.addr = alloca %struct.bnode*, align 8
  %t.addr = alloca %struct.tree*, align 8
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %rsize = alloca double, align 8
  %xsc = alloca double, align 8
  %xp = alloca [3 x i32], align 4
  %pos = alloca [3 x double], align 16
  store %struct.bnode* %p, %struct.bnode** %p.addr, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  %0 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos1 = getelementptr inbounds %struct.bnode, %struct.bnode* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %pos1, i32 0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  store double %1, double* %arrayidx2, align 8
  %2 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos3 = getelementptr inbounds %struct.bnode, %struct.bnode* %2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %pos3, i32 0, i64 1
  %3 = load double, double* %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 1
  store double %3, double* %arrayidx5, align 8
  %4 = load %struct.bnode*, %struct.bnode** %p.addr, align 8
  %pos6 = getelementptr inbounds %struct.bnode, %struct.bnode* %4, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %pos6, i32 0, i64 2
  %5 = load double, double* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 2
  store double %5, double* %arrayidx8, align 8
  %6 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rsize9 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 1
  %7 = load double, double* %rsize9, align 8
  store double %7, double* %rsize, align 8
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  %8 = load double, double* %arrayidx10, align 8
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 0
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %rmin, i32 0, i64 0
  %10 = load double, double* %arrayidx11, align 8
  %sub = fsub double %8, %10
  %11 = load double, double* %rsize, align 8
  %div = fdiv double %sub, %11
  store double %div, double* %xsc, align 8
  %12 = load double, double* %xsc, align 8
  %cmp = fcmp ole double 0.000000e+00, %12
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %13 = load double, double* %xsc, align 8
  %cmp12 = fcmp olt double %13, 1.000000e+00
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 5)
  call void @abort() #7
  unreachable

if.end:                                           ; preds = %land.lhs.true
  %14 = load double, double* %xsc, align 8
  %mul = fmul double 0x41D0000000000000, %14
  %call13 = call double @floor(double %mul) #6
  %conv = fptosi double %call13 to i32
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %xp, i32 0, i64 0
  store i32 %conv, i32* %arrayidx14, align 4
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 1
  %15 = load double, double* %arrayidx15, align 8
  %16 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin16 = getelementptr inbounds %struct.tree, %struct.tree* %16, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %rmin16, i32 0, i64 1
  %17 = load double, double* %arrayidx17, align 8
  %sub18 = fsub double %15, %17
  %18 = load double, double* %rsize, align 8
  %div19 = fdiv double %sub18, %18
  store double %div19, double* %xsc, align 8
  %19 = load double, double* %xsc, align 8
  %cmp20 = fcmp ole double 0.000000e+00, %19
  br i1 %cmp20, label %land.lhs.true.22, label %if.then.25

land.lhs.true.22:                                 ; preds = %if.end
  %20 = load double, double* %xsc, align 8
  %cmp23 = fcmp olt double %20, 1.000000e+00
  br i1 %cmp23, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.22, %if.end
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 6)
  call void @abort() #7
  unreachable

if.end.27:                                        ; preds = %land.lhs.true.22
  %21 = load double, double* %xsc, align 8
  %mul28 = fmul double 0x41D0000000000000, %21
  %call29 = call double @floor(double %mul28) #6
  %conv30 = fptosi double %call29 to i32
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %xp, i32 0, i64 1
  store i32 %conv30, i32* %arrayidx31, align 4
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 2
  %22 = load double, double* %arrayidx32, align 8
  %23 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %rmin33 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 0
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %rmin33, i32 0, i64 2
  %24 = load double, double* %arrayidx34, align 8
  %sub35 = fsub double %22, %24
  %25 = load double, double* %rsize, align 8
  %div36 = fdiv double %sub35, %25
  store double %div36, double* %xsc, align 8
  %26 = load double, double* %xsc, align 8
  %cmp37 = fcmp ole double 0.000000e+00, %26
  br i1 %cmp37, label %land.lhs.true.39, label %if.then.42

land.lhs.true.39:                                 ; preds = %if.end.27
  %27 = load double, double* %xsc, align 8
  %cmp40 = fcmp olt double %27, 1.000000e+00
  br i1 %cmp40, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.39, %if.end.27
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 7)
  call void @abort() #7
  unreachable

if.end.44:                                        ; preds = %land.lhs.true.39
  %28 = load double, double* %xsc, align 8
  %mul45 = fmul double 0x41D0000000000000, %28
  %call46 = call double @floor(double %mul45) #6
  %conv47 = fptosi double %call46 to i32
  %arrayidx48 = getelementptr inbounds [3 x i32], [3 x i32]* %xp, i32 0, i64 2
  store i32 %conv47, i32* %arrayidx48, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.44
  %29 = load i32, i32* %k, align 4
  %cmp49 = icmp slt i32 %29, 3
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %k, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %xp, i32 0, i64 %idxprom
  %31 = load i32, i32* %arrayidx51, align 4
  %32 = load i32, i32* %l.addr, align 4
  %and = and i32 %31, %32
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.52, label %if.end.54

if.then.52:                                       ; preds = %for.body
  %33 = load i32, i32* %k, align 4
  %add = add nsw i32 %33, 1
  %shr = ashr i32 8, %add
  %34 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %34, %shr
  store i32 %add53, i32* %i, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.52, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %35 = load i32, i32* %k, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load i32, i32* %i, align 4
  ret i32 %36
}

; Function Attrs: nounwind readnone
declare double @floor(double) #5

; Function Attrs: nounwind uwtable
define void @printtree(%struct.node* %n) #0 {
entry:
  %n.addr = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %n.addr, align 8
  %0 = load %struct.node*, %struct.node** %n.addr, align 8
  call void @ptree(%struct.node* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ptree(%struct.node* %n, i32 %level) #0 {
entry:
  %n.addr = alloca %struct.node*, align 8
  %level.addr = alloca i32, align 4
  %r = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  store %struct.node* %n, %struct.node** %n.addr, align 8
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct.node*, %struct.node** %n.addr, align 8
  %cmp = icmp ne %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.else.18

if.then:                                          ; preds = %entry
  %1 = load %struct.node*, %struct.node** %n.addr, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load i16, i16* %type, align 2
  %conv = sext i16 %2 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* %level.addr, align 4
  %4 = load %struct.node*, %struct.node** %n.addr, align 8
  %5 = load %struct.node*, %struct.node** %n.addr, align 8
  %pos = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %pos, i32 0, i64 0
  %6 = load double, double* %arrayidx, align 8
  %7 = load %struct.node*, %struct.node** %n.addr, align 8
  %pos4 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %pos4, i32 0, i64 1
  %8 = load double, double* %arrayidx5, align 8
  %9 = load %struct.node*, %struct.node** %n.addr, align 8
  %pos6 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %pos6, i32 0, i64 2
  %10 = load double, double* %arrayidx7, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %3, %struct.node* %4, double %6, double %8, double %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load i32, i32* %level.addr, align 4
  %12 = load %struct.node*, %struct.node** %n.addr, align 8
  %13 = load %struct.node*, %struct.node** %n.addr, align 8
  %pos8 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %pos8, i32 0, i64 0
  %14 = load double, double* %arrayidx9, align 8
  %15 = load %struct.node*, %struct.node** %n.addr, align 8
  %pos10 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %pos10, i32 0, i64 1
  %16 = load double, double* %arrayidx11, align 8
  %17 = load %struct.node*, %struct.node** %n.addr, align 8
  %pos12 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %pos12, i32 0, i64 2
  %18 = load double, double* %arrayidx13, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0), i32 %11, %struct.node* %12, double %14, double %16, double %18)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %19 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %19, 8
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.node*, %struct.node** %n.addr, align 8
  %22 = bitcast %struct.node* %21 to %struct.cnode*
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %22, i32 0, i32 5
  %arrayidx17 = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom
  %23 = load %struct.node*, %struct.node** %arrayidx17, align 8
  store %struct.node* %23, %struct.node** %r, align 8
  %24 = load %struct.node*, %struct.node** %r, align 8
  %25 = load i32, i32* %level.addr, align 4
  %add = add nsw i32 %25, 1
  call void @ptree(%struct.node* %24, i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.3
  br label %if.end.20

if.else.18:                                       ; preds = %entry
  %27 = load i32, i32* %level.addr, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @dis_number(%struct.node* %n) #0 {
entry:
  %n.addr = alloca %struct.node*, align 8
  %tnperproc = alloca i32, align 4
  store %struct.node* %n, %struct.node** %n.addr, align 8
  %0 = load i32, i32* @nbody, align 4
  %conv = sitofp i32 %0 to double
  %1 = load i32, i32* @NumNodes, align 4
  %conv1 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv1
  %call = call double @ceil(double %div) #6
  %conv2 = fptosi double %call to i32
  store i32 %conv2, i32* %tnperproc, align 4
  %2 = load %struct.node*, %struct.node** %n.addr, align 8
  %3 = load i32, i32* %tnperproc, align 4
  %call3 = call i32 @dis2_number(%struct.node* %2, i32 -1, i32 %3)
  ret void
}

; Function Attrs: nounwind readnone
declare double @ceil(double) #5

; Function Attrs: nounwind uwtable
define i32 @dis2_number(%struct.node* %n, i32 %prev_bodies, i32 %tnperproc) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca %struct.node*, align 8
  %prev_bodies.addr = alloca i32, align 4
  %tnperproc.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %n.addr, align 8
  store i32 %prev_bodies, i32* %prev_bodies.addr, align 4
  store i32 %tnperproc, i32* %tnperproc.addr, align 4
  %0 = load %struct.node*, %struct.node** %n.addr, align 8
  %cmp = icmp eq %struct.node* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %prev_bodies.addr, align 4
  store i32 %1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.node*, %struct.node** %n.addr, align 8
  %type = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load i16, i16* %type, align 2
  %conv = sext i16 %3 to i32
  %cmp1 = icmp eq i32 %conv, 1
  br i1 %cmp1, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %4 = load i32, i32* %prev_bodies.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %tnperproc.addr, align 4
  %div = sdiv i32 %add, %5
  %6 = load %struct.node*, %struct.node** %n.addr, align 8
  %new_proc = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 4
  store i32 %div, i32* %new_proc, align 4
  %7 = load i32, i32* %prev_bodies.addr, align 4
  %add4 = add nsw i32 %7, 1
  store i32 %add4, i32* %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.5
  %8 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %8, 8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.node*, %struct.node** %n.addr, align 8
  %11 = bitcast %struct.node* %10 to %struct.cnode*
  %subp = getelementptr inbounds %struct.cnode, %struct.cnode* %11, i32 0, i32 5
  %arrayidx = getelementptr inbounds [8 x %struct.node*], [8 x %struct.node*]* %subp, i32 0, i64 %idxprom
  %12 = load %struct.node*, %struct.node** %arrayidx, align 8
  store %struct.node* %12, %struct.node** %r, align 8
  %13 = load %struct.node*, %struct.node** %r, align 8
  %14 = load i32, i32* %prev_bodies.addr, align 4
  %15 = load i32, i32* %tnperproc.addr, align 4
  %call = call i32 @dis2_number(%struct.node* %13, i32 %14, i32 %15)
  store i32 %call, i32* %prev_bodies.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %prev_bodies.addr, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
