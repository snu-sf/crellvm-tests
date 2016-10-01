; ModuleID = './MultiSource.Benchmarks.Olden/31.tsp.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, double, double, %struct.tree*, %struct.tree*, %struct.tree*, %struct.tree* }

@.str = private unnamed_addr constant [11 x i8] c"x=%f,y=%f\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Building tree of size %d\0A\00", align 1
@NumNodes = external global i32, align 4
@flag = external global i32, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Past build\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"newgraph\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"newcurve pts\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Call tsp(t, %d, %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"linetype solid\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @print_tree(%struct.tree* %t) #0 {
entry:
  %t.addr = alloca %struct.tree*, align 8
  %left = alloca %struct.tree*, align 8
  %right = alloca %struct.tree*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %tobool = icmp ne %struct.tree* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %x1 = getelementptr inbounds %struct.tree, %struct.tree* %1, i32 0, i32 1
  %2 = load double, double* %x1, align 8
  store double %2, double* %x, align 8
  %3 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %y2 = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 2
  %4 = load double, double* %y2, align 8
  store double %4, double* %y, align 8
  %5 = load double, double* %x, align 8
  %6 = load double, double* %y, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), double %5, double %6)
  %7 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %left3 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 3
  %8 = load %struct.tree*, %struct.tree** %left3, align 8
  store %struct.tree* %8, %struct.tree** %left, align 8
  %9 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %right4 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 4
  %10 = load %struct.tree*, %struct.tree** %right4, align 8
  store %struct.tree* %10, %struct.tree** %right, align 8
  %11 = load %struct.tree*, %struct.tree** %left, align 8
  call void @print_tree(%struct.tree* %11)
  %12 = load %struct.tree*, %struct.tree** %right, align 8
  call void @print_tree(%struct.tree* %12)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @print_list(%struct.tree* %t) #0 {
entry:
  %t.addr = alloca %struct.tree*, align 8
  %tmp = alloca %struct.tree*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  store %struct.tree* %t, %struct.tree** %t.addr, align 8
  %0 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %tobool = icmp ne %struct.tree* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %x3 = getelementptr inbounds %struct.tree, %struct.tree* %1, i32 0, i32 1
  %2 = load double, double* %x3, align 8
  store double %2, double* %x, align 8
  %3 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %y4 = getelementptr inbounds %struct.tree, %struct.tree* %3, i32 0, i32 2
  %4 = load double, double* %y4, align 8
  store double %4, double* %y, align 8
  %5 = load double, double* %x, align 8
  %6 = load double, double* %y, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), double %5, double %6)
  %7 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %next = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 5
  %8 = load %struct.tree*, %struct.tree** %next, align 8
  store %struct.tree* %8, %struct.tree** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %struct.tree*, %struct.tree** %tmp, align 8
  %10 = load %struct.tree*, %struct.tree** %t.addr, align 8
  %cmp = icmp ne %struct.tree* %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.tree*, %struct.tree** %tmp, align 8
  %x5 = getelementptr inbounds %struct.tree, %struct.tree* %11, i32 0, i32 1
  %12 = load double, double* %x5, align 8
  store double %12, double* %x, align 8
  %13 = load %struct.tree*, %struct.tree** %tmp, align 8
  %y6 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 2
  %14 = load double, double* %y6, align 8
  store double %14, double* %y, align 8
  %15 = load double, double* %x, align 8
  %16 = load double, double* %y, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), double %15, double %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.tree*, %struct.tree** %tmp, align 8
  %next8 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 5
  %18 = load %struct.tree*, %struct.tree** %next8, align 8
  store %struct.tree* %18, %struct.tree** %tmp, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %t = alloca %struct.tree*, align 8
  %num = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %call = call i32 @dealwithargs(i32 %0, i8** %1)
  store i32 %call, i32* %num, align 4
  %2 = load i32, i32* %num, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %2)
  %3 = load i32, i32* %num, align 4
  %4 = load i32, i32* @NumNodes, align 4
  %call2 = call %struct.tree* @build_tree(i32 %3, i32 0, i32 0, i32 %4, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 1.000000e+00)
  store %struct.tree* %call2, %struct.tree** %t, align 8
  %5 = load i32, i32* @flag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* @flag, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %7 = load i32, i32* @flag, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.7
  %8 = load i32, i32* @NumNodes, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 150, i32 %8)
  %9 = load %struct.tree*, %struct.tree** %t, align 8
  %10 = load i32, i32* @NumNodes, align 4
  %call13 = call %struct.tree* @tsp(%struct.tree* %9, i32 150, i32 %10)
  %11 = load i32, i32* @flag, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %12 = load %struct.tree*, %struct.tree** %t, align 8
  call void @print_list(%struct.tree* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.11
  %13 = load i32, i32* @flag, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  ret i32 0
}

declare i32 @dealwithargs(i32, i8**) #1

declare %struct.tree* @build_tree(i32, i32, i32, i32, double, double, double, double) #1

declare %struct.tree* @tsp(%struct.tree*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
