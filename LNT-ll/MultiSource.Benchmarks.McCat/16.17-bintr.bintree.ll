; ModuleID = './MultiSource.Benchmarks.McCat/16.17-bintr.bintree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binaryTree = type { i32, %struct.binaryTree*, %struct.binaryTree* }

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(%d <L \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" L> <R \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" R>)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nounwind uwtable
define %struct.binaryTree* @createBinaryTree(i32 %newValue) #0 {
entry:
  %newValue.addr = alloca i32, align 4
  %newTree = alloca %struct.binaryTree*, align 8
  store i32 %newValue, i32* %newValue.addr, align 4
  store %struct.binaryTree* null, %struct.binaryTree** %newTree, align 8
  %call = call noalias i8* @malloc(i64 24) #3
  %0 = bitcast i8* %call to %struct.binaryTree*
  store %struct.binaryTree* %0, %struct.binaryTree** %newTree, align 8
  %1 = load i32, i32* %newValue.addr, align 4
  %2 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %2, i32 0, i32 0
  store i32 %1, i32* %value, align 4
  %3 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i32 0, i32 2
  store %struct.binaryTree* null, %struct.binaryTree** %right, align 8
  %4 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %4, i32 0, i32 1
  store %struct.binaryTree* null, %struct.binaryTree** %left, align 8
  %5 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  ret %struct.binaryTree* %5
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @printBinaryTree(%struct.binaryTree* %tree) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %cmp = icmp eq %struct.binaryTree* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %1, i32 0, i32 0
  %2 = load i32, i32* %value, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  %3 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i32 0, i32 1
  %4 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  call void @printBinaryTree(%struct.binaryTree* %4)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %5, i32 0, i32 2
  %6 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  call void @printBinaryTree(%struct.binaryTree* %6)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @printSortedBinaryTree(%struct.binaryTree* %tree) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %tobool = icmp ne %struct.binaryTree* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %1, i32 0, i32 1
  %2 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* %2)
  %3 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i32 0, i32 0
  %4 = load i32, i32* %value, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %4)
  %5 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %5, i32 0, i32 2
  %6 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.binaryTree* @insertSortedBinaryTree(i32 %newValue, %struct.binaryTree** %sortedTree) #0 {
entry:
  %newValue.addr = alloca i32, align 4
  %sortedTree.addr = alloca %struct.binaryTree**, align 8
  %newTree = alloca %struct.binaryTree*, align 8
  %temp = alloca %struct.binaryTree*, align 8
  %done = alloca i32, align 4
  store i32 %newValue, i32* %newValue.addr, align 4
  store %struct.binaryTree** %sortedTree, %struct.binaryTree*** %sortedTree.addr, align 8
  %0 = load i32, i32* %newValue.addr, align 4
  %call = call %struct.binaryTree* @createBinaryTree(i32 %0)
  store %struct.binaryTree* %call, %struct.binaryTree** %newTree, align 8
  store %struct.binaryTree* null, %struct.binaryTree** %temp, align 8
  store i32 0, i32* %done, align 4
  %1 = load %struct.binaryTree**, %struct.binaryTree*** %sortedTree.addr, align 8
  %2 = load %struct.binaryTree*, %struct.binaryTree** %1, align 8
  %cmp = icmp eq %struct.binaryTree* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  %4 = load %struct.binaryTree**, %struct.binaryTree*** %sortedTree.addr, align 8
  store %struct.binaryTree* %3, %struct.binaryTree** %4, align 8
  br label %if.end.21

if.else:                                          ; preds = %entry
  %5 = load %struct.binaryTree**, %struct.binaryTree*** %sortedTree.addr, align 8
  %6 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  store %struct.binaryTree* %6, %struct.binaryTree** %temp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %7 = load i32, i32* %newValue.addr, align 4
  %8 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %8, i32 0, i32 0
  %9 = load i32, i32* %value, align 4
  %cmp1 = icmp slt i32 %7, %9
  br i1 %cmp1, label %if.then.2, label %if.else.8

if.then.2:                                        ; preds = %do.body
  %10 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %10, i32 0, i32 1
  %11 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  %cmp3 = icmp eq %struct.binaryTree* %11, null
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.then.2
  %12 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  %13 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %left5 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %13, i32 0, i32 1
  store %struct.binaryTree* %12, %struct.binaryTree** %left5, align 8
  store i32 1, i32* %done, align 4
  br label %if.end

if.else.6:                                        ; preds = %if.then.2
  %14 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %left7 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %14, i32 0, i32 1
  %15 = load %struct.binaryTree*, %struct.binaryTree** %left7, align 8
  store %struct.binaryTree* %15, %struct.binaryTree** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6, %if.then.4
  br label %if.end.20

if.else.8:                                        ; preds = %do.body
  %16 = load i32, i32* %newValue.addr, align 4
  %17 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %value9 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %17, i32 0, i32 0
  %18 = load i32, i32* %value9, align 4
  %cmp10 = icmp sgt i32 %16, %18
  br i1 %cmp10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.else.8
  %19 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %19, i32 0, i32 2
  %20 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  %cmp12 = icmp eq %struct.binaryTree* %20, null
  br i1 %cmp12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.then.11
  %21 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  %22 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %right14 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %22, i32 0, i32 2
  store %struct.binaryTree* %21, %struct.binaryTree** %right14, align 8
  store i32 1, i32* %done, align 4
  br label %if.end.17

if.else.15:                                       ; preds = %if.then.11
  %23 = load %struct.binaryTree*, %struct.binaryTree** %temp, align 8
  %right16 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %23, i32 0, i32 2
  %24 = load %struct.binaryTree*, %struct.binaryTree** %right16, align 8
  store %struct.binaryTree* %24, %struct.binaryTree** %temp, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  br label %if.end.19

if.else.18:                                       ; preds = %if.else.8
  store i32 1, i32* %done, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.end.17
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  %25 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %25, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %if.then
  %26 = load %struct.binaryTree*, %struct.binaryTree** %newTree, align 8
  ret %struct.binaryTree* %26
}

; Function Attrs: nounwind uwtable
define double @getArithmeticMeanBinaryTree(%struct.binaryTree* %tree) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %call = call double @getSumBinaryTree(%struct.binaryTree* %0)
  %1 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %call1 = call i32 @getSizeBinaryTree(%struct.binaryTree* %1)
  %conv = sitofp i32 %call1 to double
  %div = fdiv double %call, %conv
  ret double %div
}

; Function Attrs: nounwind uwtable
define double @getSumBinaryTree(%struct.binaryTree* %tree) #0 {
entry:
  %retval = alloca double, align 8
  %tree.addr = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %tobool = icmp ne %struct.binaryTree* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %1, i32 0, i32 0
  %2 = load i32, i32* %value, align 4
  %conv = sitofp i32 %2 to double
  %3 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i32 0, i32 1
  %4 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  %call = call double @getSumBinaryTree(%struct.binaryTree* %4)
  %add = fadd double %conv, %call
  %5 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %5, i32 0, i32 2
  %6 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  %call1 = call double @getSumBinaryTree(%struct.binaryTree* %6)
  %add2 = fadd double %add, %call1
  store double %add2, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load double, double* %retval
  ret double %7
}

; Function Attrs: nounwind uwtable
define i32 @getSizeBinaryTree(%struct.binaryTree* %tree) #0 {
entry:
  %retval = alloca i32, align 4
  %tree.addr = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %tobool = icmp ne %struct.binaryTree* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %1, i32 0, i32 1
  %2 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  %call = call i32 @getSizeBinaryTree(%struct.binaryTree* %2)
  %add = add nsw i32 1, %call
  %3 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i32 0, i32 2
  %4 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  %call1 = call i32 @getSizeBinaryTree(%struct.binaryTree* %4)
  %add2 = add nsw i32 %add, %call1
  store i32 %add2, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define double @getArithmeticMeanOptimized(%struct.binaryTree* %tree) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  %sum = alloca double, align 8
  %count = alloca double, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  store double 0.000000e+00, double* %sum, align 8
  store double 0.000000e+00, double* %count, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %0, double* %sum, double* %count)
  %1 = load double, double* %sum, align 8
  %2 = load double, double* %count, align 8
  %div = fdiv double %1, %2
  ret double %div
}

; Function Attrs: nounwind uwtable
define void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %tree, double* %sum, double* %count) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  %sum.addr = alloca double*, align 8
  %count.addr = alloca double*, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  store double* %sum, double** %sum.addr, align 8
  store double* %count, double** %count.addr, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %tobool = icmp ne %struct.binaryTree* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double*, double** %sum.addr, align 8
  %2 = load double, double* %1, align 8
  %3 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %3, i32 0, i32 0
  %4 = load i32, i32* %value, align 4
  %conv = sitofp i32 %4 to double
  %add = fadd double %2, %conv
  %5 = load double*, double** %sum.addr, align 8
  store double %add, double* %5, align 8
  %6 = load double*, double** %count.addr, align 8
  %7 = load double, double* %6, align 8
  %add1 = fadd double %7, 1.000000e+00
  %8 = load double*, double** %count.addr, align 8
  store double %add1, double* %8, align 8
  %9 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %9, i32 0, i32 1
  %10 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  %11 = load double*, double** %sum.addr, align 8
  %12 = load double*, double** %count.addr, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %10, double* %11, double* %12)
  %13 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %13, i32 0, i32 2
  %14 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  %15 = load double*, double** %sum.addr, align 8
  %16 = load double*, double** %count.addr, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %14, double* %15, double* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @memberOfBinaryTree(%struct.binaryTree* %tree, i32 %searchedValue) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  %searchedValue.addr = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  store i32 %searchedValue, i32* %searchedValue.addr, align 4
  store i32 0, i32* %found, align 4
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %1 = load i32, i32* %searchedValue.addr, align 4
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* %0, i32 %1, i32* %found)
  %2 = load i32, i32* %found, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @memberOfBinaryTreeRecurs(%struct.binaryTree* %tree, i32 %searchedValue, i32* %found) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  %searchedValue.addr = alloca i32, align 4
  %found.addr = alloca i32*, align 8
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  store i32 %searchedValue, i32* %searchedValue.addr, align 4
  store i32* %found, i32** %found.addr, align 8
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %tobool = icmp ne %struct.binaryTree* %0, null
  br i1 %tobool, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %1 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %1, i32 0, i32 0
  %2 = load i32, i32* %value, align 4
  %3 = load i32, i32* %searchedValue.addr, align 4
  %cmp = icmp eq i32 %2, %3
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %4 = load i32*, i32** %found.addr, align 8
  store i32 1, i32* %4, align 4
  br label %if.end.4

if.else:                                          ; preds = %if.then
  %5 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %5, i32 0, i32 1
  %6 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  %7 = load i32, i32* %searchedValue.addr, align 4
  %8 = load i32*, i32** %found.addr, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* %6, i32 %7, i32* %8)
  %9 = load i32*, i32** %found.addr, align 8
  %10 = load i32, i32* %9, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %11 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %11, i32 0, i32 2
  %12 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  %13 = load i32, i32* %searchedValue.addr, align 4
  %14 = load i32*, i32** %found.addr, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* %12, i32 %13, i32* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.then.1
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @memberOfSortedBinaryTree(%struct.binaryTree* %tree, i32 %searchedValue) #0 {
entry:
  %tree.addr = alloca %struct.binaryTree*, align 8
  %searchedValue.addr = alloca i32, align 4
  %seeker = alloca %struct.binaryTree*, align 8
  %found = alloca i32, align 4
  store %struct.binaryTree* %tree, %struct.binaryTree** %tree.addr, align 8
  store i32 %searchedValue, i32* %searchedValue.addr, align 4
  %0 = load %struct.binaryTree*, %struct.binaryTree** %tree.addr, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %seeker, align 8
  store i32 0, i32* %found, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %2 = load %struct.binaryTree*, %struct.binaryTree** %seeker, align 8
  %tobool1 = icmp ne %struct.binaryTree* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load i32, i32* %searchedValue.addr, align 4
  %5 = load %struct.binaryTree*, %struct.binaryTree** %seeker, align 8
  %value = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %5, i32 0, i32 0
  %6 = load i32, i32* %value, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load %struct.binaryTree*, %struct.binaryTree** %seeker, align 8
  %left = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %7, i32 0, i32 1
  %8 = load %struct.binaryTree*, %struct.binaryTree** %left, align 8
  store %struct.binaryTree* %8, %struct.binaryTree** %seeker, align 8
  br label %if.end.6

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %searchedValue.addr, align 4
  %10 = load %struct.binaryTree*, %struct.binaryTree** %seeker, align 8
  %value2 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %10, i32 0, i32 0
  %11 = load i32, i32* %value2, align 4
  %cmp3 = icmp sgt i32 %9, %11
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %12 = load %struct.binaryTree*, %struct.binaryTree** %seeker, align 8
  %right = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %12, i32 0, i32 2
  %13 = load %struct.binaryTree*, %struct.binaryTree** %right, align 8
  store %struct.binaryTree* %13, %struct.binaryTree** %seeker, align 8
  br label %if.end

if.else.5:                                        ; preds = %if.else
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %found, align 4
  ret i32 %14
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
