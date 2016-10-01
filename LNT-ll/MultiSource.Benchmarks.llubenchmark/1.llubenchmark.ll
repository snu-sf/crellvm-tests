; ModuleID = './MultiSource.Benchmarks.llubenchmark/1.llubenchmark.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { %struct.element*, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"-i <number of (I)terations>\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"[-l <initial (L)ength of list, in elements>] (default 1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"[-n <(N)umber of lists>] (default 1 list)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"[-s <(S)ize of element>] (default 32 bytes)\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"[-g <(G)rowth rate per list, in elements per iteration>] (default 0)\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"[-d] ((D)irty each element during traversal, default off)\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"[-t] (insert at (T)ail of list, default off)\0A\00", align 1
@free_list = global %struct.element* null, align 8
@next_free = global i32 127, align 4
@element_size = global i32 32, align 4
@num_allocated = global i32 0, align 4
@.str.8 = private unnamed_addr constant [64 x i8] c"This benchmark modified to not use hard coded pool allocation!\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"parse error in %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"unrecognized option: %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"output = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"num allocated %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @usage(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i32 0, i32 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.element* @allocate() #0 {
entry:
  %0 = load i32, i32* @num_allocated, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @num_allocated, align 4
  %call = call noalias i8* @malloc(i64 16) #4
  %1 = bitcast i8* %call to %struct.element*
  ret %struct.element* %1
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %max_iterations = alloca i32, align 4
  %dirty = alloca i32, align 4
  %num_lists = alloca i32, align 4
  %tail = alloca i32, align 4
  %initial_length = alloca i32, align 4
  %growth_rate = alloca float, align 4
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %accumulate = alloca i32, align 4
  %lists = alloca %struct.element**, align 8
  %growth = alloca float, align 4
  %arg = alloca i32, align 4
  %e = alloca %struct.element*, align 8
  %trav = alloca %struct.element*, align 8
  %e114 = alloca %struct.element*, align 8
  %trav120 = alloca %struct.element*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1000, i32* %max_iterations, align 4
  store i32 1, i32* %dirty, align 4
  store i32 196, i32* %num_lists, align 4
  store i32 1, i32* %tail, align 4
  store i32 1, i32* %initial_length, align 4
  store float 0x3FD54FDF40000000, float* %growth_rate, align 4
  store i8 0, i8* %c, align 1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %accumulate, align 4
  store %struct.element** null, %struct.element*** %lists, align 8
  store float 0.000000e+00, float* %growth, align 4
  store i32 1, i32* %arg, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, i32* %arg, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %arg, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %5 to i32
  %cmp2 = icmp ne i32 %conv, 45
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %6 = load i32, i32* %arg, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %7, i64 %idxprom4
  %8 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp ne i32 %conv7, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %10 = load i32, i32* %arg, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %11, i64 %idxprom10
  %12 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i8* %12)
  %13 = load i8**, i8*** %argv.addr, align 8
  %arrayidx13 = getelementptr inbounds i8*, i8** %13, i64 0
  %14 = load i8*, i8** %arrayidx13, align 8
  call void @usage(i8* %14)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i32, i32* %arg, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %16, i64 %idxprom14
  %17 = load i8*, i8** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 1
  %18 = load i8, i8* %arrayidx16, align 1
  store i8 %18, i8* %c, align 1
  %19 = load i32, i32* %arg, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %arg, align 4
  %20 = load i8, i8* %c, align 1
  %conv17 = sext i8 %20 to i32
  switch i32 %conv17, label %sw.default [
    i32 100, label %sw.bb
    i32 103, label %sw.bb.18
    i32 105, label %sw.bb.24
    i32 108, label %sw.bb.29
    i32 110, label %sw.bb.34
    i32 115, label %sw.bb.39
    i32 116, label %sw.bb.44
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %dirty, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end
  %21 = load i32, i32* %arg, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %arg, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i8**, i8*** %argv.addr, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %22, i64 %idxprom20
  %23 = load i8*, i8** %arrayidx21, align 8
  %call22 = call double @atof(i8* %23) #5
  %conv23 = fptrunc double %call22 to float
  store float %conv23, float* %growth_rate, align 4
  br label %sw.epilog

sw.bb.24:                                         ; preds = %if.end
  %24 = load i32, i32* %arg, align 4
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, i32* %arg, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load i8**, i8*** %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %25, i64 %idxprom26
  %26 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i32 @atoi(i8* %26) #5
  store i32 %call28, i32* %max_iterations, align 4
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end
  %27 = load i32, i32* %arg, align 4
  %inc30 = add nsw i32 %27, 1
  store i32 %inc30, i32* %arg, align 4
  %idxprom31 = sext i32 %27 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx32 = getelementptr inbounds i8*, i8** %28, i64 %idxprom31
  %29 = load i8*, i8** %arrayidx32, align 8
  %call33 = call i32 @atoi(i8* %29) #5
  store i32 %call33, i32* %initial_length, align 4
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end
  %30 = load i32, i32* %arg, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, i32* %arg, align 4
  %idxprom36 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %31, i64 %idxprom36
  %32 = load i8*, i8** %arrayidx37, align 8
  %call38 = call i32 @atoi(i8* %32) #5
  store i32 %call38, i32* %num_lists, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %if.end
  %33 = load i32, i32* %arg, align 4
  %inc40 = add nsw i32 %33, 1
  store i32 %inc40, i32* %arg, align 4
  %idxprom41 = sext i32 %33 to i64
  %34 = load i8**, i8*** %argv.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %34, i64 %idxprom41
  %35 = load i8*, i8** %arrayidx42, align 8
  %call43 = call i32 @atoi(i8* %35) #5
  store i32 %call43, i32* @element_size, align 4
  br label %sw.epilog

sw.bb.44:                                         ; preds = %if.end
  store i32 1, i32* %tail, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %36 = load i8, i8* %c, align 1
  %conv45 = sext i8 %36 to i32
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i32 %conv45)
  %37 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx47, align 8
  call void @usage(i8* %38)
  store i32 -1, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.44, %sw.bb.39, %sw.bb.34, %sw.bb.29, %sw.bb.24, %sw.bb.18, %sw.bb
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* %num_lists, align 4
  %conv48 = sext i32 %39 to i64
  %mul = mul i64 %conv48, 8
  %call49 = call noalias i8* @malloc(i64 %mul) #4
  %40 = bitcast i8* %call49 to %struct.element**
  store %struct.element** %40, %struct.element*** %lists, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %num_lists, align 4
  %cmp50 = icmp slt i32 %41, %42
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %43 to i64
  %44 = load %struct.element**, %struct.element*** %lists, align 8
  %arrayidx53 = getelementptr inbounds %struct.element*, %struct.element** %44, i64 %idxprom52
  store %struct.element* null, %struct.element** %arrayidx53, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %45, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.71, %for.end
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %initial_length, align 4
  %cmp56 = icmp slt i32 %46, %47
  br i1 %cmp56, label %for.body.58, label %for.end.73

for.body.58:                                      ; preds = %for.cond.55
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.68, %for.body.58
  %48 = load i32, i32* %j, align 4
  %49 = load i32, i32* %num_lists, align 4
  %cmp60 = icmp slt i32 %48, %49
  br i1 %cmp60, label %for.body.62, label %for.end.70

for.body.62:                                      ; preds = %for.cond.59
  %call63 = call %struct.element* @allocate()
  store %struct.element* %call63, %struct.element** %e, align 8
  %50 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %50 to i64
  %51 = load %struct.element**, %struct.element*** %lists, align 8
  %arrayidx65 = getelementptr inbounds %struct.element*, %struct.element** %51, i64 %idxprom64
  %52 = load %struct.element*, %struct.element** %arrayidx65, align 8
  %53 = load %struct.element*, %struct.element** %e, align 8
  %next = getelementptr inbounds %struct.element, %struct.element* %53, i32 0, i32 0
  store %struct.element* %52, %struct.element** %next, align 8
  %54 = load %struct.element*, %struct.element** %e, align 8
  %count = getelementptr inbounds %struct.element, %struct.element* %54, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %55 = load %struct.element*, %struct.element** %e, align 8
  %56 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %56 to i64
  %57 = load %struct.element**, %struct.element*** %lists, align 8
  %arrayidx67 = getelementptr inbounds %struct.element*, %struct.element** %57, i64 %idxprom66
  store %struct.element* %55, %struct.element** %arrayidx67, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.62
  %58 = load i32, i32* %j, align 4
  %inc69 = add nsw i32 %58, 1
  store i32 %inc69, i32* %j, align 4
  br label %for.cond.59

for.end.70:                                       ; preds = %for.cond.59
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end.70
  %59 = load i32, i32* %i, align 4
  %inc72 = add nsw i32 %59, 1
  store i32 %inc72, i32* %i, align 4
  br label %for.cond.55

for.end.73:                                       ; preds = %for.cond.55
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.143, %for.end.73
  %60 = load i32, i32* %i, align 4
  %61 = load i32, i32* %max_iterations, align 4
  %cmp75 = icmp slt i32 %60, %61
  br i1 %cmp75, label %for.body.77, label %for.end.145

for.body.77:                                      ; preds = %for.cond.74
  %62 = load i32, i32* %i, align 4
  %rem = srem i32 %62, 1000
  %cmp78 = icmp eq i32 %rem, 0
  br i1 %cmp78, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %for.body.77
  %63 = load i32, i32* %i, align 4
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 %63)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.80, %for.body.77
  store i32 0, i32* %j, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.100, %if.end.82
  %64 = load i32, i32* %j, align 4
  %65 = load i32, i32* %num_lists, align 4
  %cmp84 = icmp slt i32 %64, %65
  br i1 %cmp84, label %for.body.86, label %for.end.102

for.body.86:                                      ; preds = %for.cond.83
  %66 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %66 to i64
  %67 = load %struct.element**, %struct.element*** %lists, align 8
  %arrayidx88 = getelementptr inbounds %struct.element*, %struct.element** %67, i64 %idxprom87
  %68 = load %struct.element*, %struct.element** %arrayidx88, align 8
  store %struct.element* %68, %struct.element** %trav, align 8
  br label %while.cond.89

while.cond.89:                                    ; preds = %if.end.97, %for.body.86
  %69 = load %struct.element*, %struct.element** %trav, align 8
  %cmp90 = icmp ne %struct.element* %69, null
  br i1 %cmp90, label %while.body.92, label %while.end.99

while.body.92:                                    ; preds = %while.cond.89
  %70 = load %struct.element*, %struct.element** %trav, align 8
  %count93 = getelementptr inbounds %struct.element, %struct.element* %70, i32 0, i32 1
  %71 = load i32, i32* %count93, align 4
  %72 = load i32, i32* %accumulate, align 4
  %add = add nsw i32 %72, %71
  store i32 %add, i32* %accumulate, align 4
  %73 = load i32, i32* %dirty, align 4
  %tobool = icmp ne i32 %73, 0
  br i1 %tobool, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %while.body.92
  %74 = load %struct.element*, %struct.element** %trav, align 8
  %count95 = getelementptr inbounds %struct.element, %struct.element* %74, i32 0, i32 1
  %75 = load i32, i32* %count95, align 4
  %inc96 = add nsw i32 %75, 1
  store i32 %inc96, i32* %count95, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %while.body.92
  %76 = load %struct.element*, %struct.element** %trav, align 8
  %next98 = getelementptr inbounds %struct.element, %struct.element* %76, i32 0, i32 0
  %77 = load %struct.element*, %struct.element** %next98, align 8
  store %struct.element* %77, %struct.element** %trav, align 8
  br label %while.cond.89

while.end.99:                                     ; preds = %while.cond.89
  br label %for.inc.100

for.inc.100:                                      ; preds = %while.end.99
  %78 = load i32, i32* %j, align 4
  %inc101 = add nsw i32 %78, 1
  store i32 %inc101, i32* %j, align 4
  br label %for.cond.83

for.end.102:                                      ; preds = %for.cond.83
  %79 = load float, float* %growth_rate, align 4
  %80 = load float, float* %growth, align 4
  %add103 = fadd float %80, %79
  store float %add103, float* %growth, align 4
  %81 = load float, float* %growth, align 4
  %conv104 = fptosi float %81 to i32
  store i32 %conv104, i32* %j, align 4
  %82 = load i32, i32* %j, align 4
  %conv105 = sitofp i32 %82 to float
  %83 = load float, float* %growth, align 4
  %sub = fsub float %83, %conv105
  store float %sub, float* %growth, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.141, %for.end.102
  %84 = load i32, i32* %j, align 4
  %cmp107 = icmp sgt i32 %84, 0
  br i1 %cmp107, label %for.body.109, label %for.end.142

for.body.109:                                     ; preds = %for.cond.106
  store i32 0, i32* %k, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.138, %for.body.109
  %85 = load i32, i32* %k, align 4
  %86 = load i32, i32* %num_lists, align 4
  %cmp111 = icmp slt i32 %85, %86
  br i1 %cmp111, label %for.body.113, label %for.end.140

for.body.113:                                     ; preds = %for.cond.110
  %call115 = call %struct.element* @allocate()
  store %struct.element* %call115, %struct.element** %e114, align 8
  %87 = load i32, i32* %k, align 4
  %88 = load i32, i32* %j, align 4
  %add116 = add nsw i32 %87, %88
  %89 = load %struct.element*, %struct.element** %e114, align 8
  %count117 = getelementptr inbounds %struct.element, %struct.element* %89, i32 0, i32 1
  store i32 %add116, i32* %count117, align 4
  %90 = load i32, i32* %tail, align 4
  %tobool118 = icmp ne i32 %90, 0
  br i1 %tobool118, label %if.then.119, label %if.else

if.then.119:                                      ; preds = %for.body.113
  %91 = load i32, i32* %k, align 4
  %idxprom121 = sext i32 %91 to i64
  %92 = load %struct.element**, %struct.element*** %lists, align 8
  %arrayidx122 = getelementptr inbounds %struct.element*, %struct.element** %92, i64 %idxprom121
  %93 = load %struct.element*, %struct.element** %arrayidx122, align 8
  store %struct.element* %93, %struct.element** %trav120, align 8
  br label %while.cond.123

while.cond.123:                                   ; preds = %while.body.127, %if.then.119
  %94 = load %struct.element*, %struct.element** %trav120, align 8
  %next124 = getelementptr inbounds %struct.element, %struct.element* %94, i32 0, i32 0
  %95 = load %struct.element*, %struct.element** %next124, align 8
  %cmp125 = icmp ne %struct.element* %95, null
  br i1 %cmp125, label %while.body.127, label %while.end.129

while.body.127:                                   ; preds = %while.cond.123
  %96 = load %struct.element*, %struct.element** %trav120, align 8
  %next128 = getelementptr inbounds %struct.element, %struct.element* %96, i32 0, i32 0
  %97 = load %struct.element*, %struct.element** %next128, align 8
  store %struct.element* %97, %struct.element** %trav120, align 8
  br label %while.cond.123

while.end.129:                                    ; preds = %while.cond.123
  %98 = load %struct.element*, %struct.element** %e114, align 8
  %99 = load %struct.element*, %struct.element** %trav120, align 8
  %next130 = getelementptr inbounds %struct.element, %struct.element* %99, i32 0, i32 0
  store %struct.element* %98, %struct.element** %next130, align 8
  %100 = load %struct.element*, %struct.element** %e114, align 8
  %next131 = getelementptr inbounds %struct.element, %struct.element* %100, i32 0, i32 0
  store %struct.element* null, %struct.element** %next131, align 8
  br label %if.end.137

if.else:                                          ; preds = %for.body.113
  %101 = load i32, i32* %k, align 4
  %idxprom132 = sext i32 %101 to i64
  %102 = load %struct.element**, %struct.element*** %lists, align 8
  %arrayidx133 = getelementptr inbounds %struct.element*, %struct.element** %102, i64 %idxprom132
  %103 = load %struct.element*, %struct.element** %arrayidx133, align 8
  %104 = load %struct.element*, %struct.element** %e114, align 8
  %next134 = getelementptr inbounds %struct.element, %struct.element* %104, i32 0, i32 0
  store %struct.element* %103, %struct.element** %next134, align 8
  %105 = load %struct.element*, %struct.element** %e114, align 8
  %106 = load i32, i32* %k, align 4
  %idxprom135 = sext i32 %106 to i64
  %107 = load %struct.element**, %struct.element*** %lists, align 8
  %arrayidx136 = getelementptr inbounds %struct.element*, %struct.element** %107, i64 %idxprom135
  store %struct.element* %105, %struct.element** %arrayidx136, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.else, %while.end.129
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %108 = load i32, i32* %k, align 4
  %inc139 = add nsw i32 %108, 1
  store i32 %inc139, i32* %k, align 4
  br label %for.cond.110

for.end.140:                                      ; preds = %for.cond.110
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.end.140
  %109 = load i32, i32* %j, align 4
  %dec = add nsw i32 %109, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.106

for.end.142:                                      ; preds = %for.cond.106
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.end.142
  %110 = load i32, i32* %i, align 4
  %inc144 = add nsw i32 %110, 1
  store i32 %inc144, i32* %i, align 4
  br label %for.cond.74

for.end.145:                                      ; preds = %for.cond.74
  %111 = load i32, i32* %accumulate, align 4
  %call146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i32 %111)
  %112 = load i32, i32* @num_allocated, align 4
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 %112)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.145, %sw.default, %if.then
  %113 = load i32, i32* %retval
  ret i32 %113
}

; Function Attrs: nounwind readonly
declare double @atof(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
