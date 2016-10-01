; ModuleID = './MultiSource.Benchmarks.McCat/17.17-bintr.bnchmrk.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binaryTree = type { i32, %struct.binaryTree*, %struct.binaryTree* }

@.str = private unnamed_addr constant [21 x i8] c"Constructing tree\0A\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"\0A\0ATree constructed\0A\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Constructing array of values\0A\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\0A\0AArray of values constructed\0A\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Beginning of program\0A\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Summary of sorted binary tree\0A=============================\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Size                   : %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Sum                    : %f\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Arithmetic Mean        : %f\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%d is in the tree.\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%d is NOT in the tree.\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\0A\0AEnd of program\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fillTree(%struct.binaryTree** %treeToFill) #0 {
entry:
  %treeToFill.addr = alloca %struct.binaryTree**, align 8
  %number = alloca i32, align 4
  store %struct.binaryTree** %treeToFill, %struct.binaryTree*** %treeToFill.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %number)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %number, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %number, align 4
  %2 = load %struct.binaryTree**, %struct.binaryTree*** %treeToFill.addr, align 8
  %call2 = call %struct.binaryTree* @insertSortedBinaryTree(i32 %1, %struct.binaryTree** %2)
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %number)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @__isoc99_scanf(i8*, ...) #1

declare %struct.binaryTree* @insertSortedBinaryTree(i32, %struct.binaryTree**) #1

; Function Attrs: nounwind uwtable
define void @fillSearchedValues(i32* %arrayOfValues) #0 {
entry:
  %arrayOfValues.addr = alloca i32*, align 8
  %number = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arrayOfValues, i32** %arrayOfValues.addr, align 8
  store i32 0, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %number)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load i32, i32* %number, align 4
  %cmp2 = icmp ne i32 %1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %3 = load i32, i32* %number, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %arrayOfValues.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %number)
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tree = alloca %struct.binaryTree*, align 8
  %searchedValues = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store %struct.binaryTree* null, %struct.binaryTree** %tree, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %searchedValues, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @fillTree(%struct.binaryTree** %tree)
  %arraydecay = getelementptr inbounds [100 x i32], [100 x i32]* %searchedValues, i32 0, i32 0
  call void @fillSearchedValues(i32* %arraydecay)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0))
  %3 = load %struct.binaryTree*, %struct.binaryTree** %tree, align 8
  %call2 = call i32 @getSizeBinaryTree(%struct.binaryTree* %3)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i32 0, i32 0), i32 %call2)
  %4 = load %struct.binaryTree*, %struct.binaryTree** %tree, align 8
  %call4 = call double @getSumBinaryTree(%struct.binaryTree* %4)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), double %call4)
  %5 = load %struct.binaryTree*, %struct.binaryTree** %tree, align 8
  %call6 = call double @getArithmeticMeanBinaryTree(%struct.binaryTree* %5)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), double %call6)
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %6, 100
  br i1 %cmp9, label %for.body.10, label %for.end.22

for.body.10:                                      ; preds = %for.cond.8
  %7 = load %struct.binaryTree*, %struct.binaryTree** %tree, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %searchedValues, i32 0, i64 %idxprom11
  %9 = load i32, i32* %arrayidx12, align 4
  %call13 = call i32 @memberOfBinaryTree(%struct.binaryTree* %7, i32 %9)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.10
  %10 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %searchedValues, i32 0, i64 %idxprom14
  %11 = load i32, i32* %arrayidx15, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), i32 %11)
  br label %if.end

if.else:                                          ; preds = %for.body.10
  %12 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], [100 x i32]* %searchedValues, i32 0, i64 %idxprom17
  %13 = load i32, i32* %arrayidx18, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0), i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.8

for.end.22:                                       ; preds = %for.cond.8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0))
  ret i32 0
}

declare i32 @getSizeBinaryTree(%struct.binaryTree*) #1

declare double @getSumBinaryTree(%struct.binaryTree*) #1

declare double @getArithmeticMeanBinaryTree(%struct.binaryTree*) #1

declare i32 @memberOfBinaryTree(%struct.binaryTree*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
