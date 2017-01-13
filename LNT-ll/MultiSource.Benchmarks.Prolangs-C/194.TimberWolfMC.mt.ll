; ModuleID = './MultiSource.Benchmarks.Prolangs-C/194.TimberWolfMC.mt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MT = type { i32, [100 x [3 x [3 x i32]]], [3 x [3 x i32]], [3 x [3 x i32]] }

@MTDecodeP.cif = internal global [81 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [18 x i8] c"MX R 0 -1 T %d %d\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"MX R 0 -1\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"MX R 0 1 T %d %d\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"MX R 0 1\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"R 0 -1 T %d %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"R 0 -1\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"R 0 1 T %d %d\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"R 0 1\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"T %d %d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"R -1 0 T %d %d\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"R -1 0\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"MX T %d %d\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"MY T %d %d\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"MY\00", align 1

; Function Attrs: nounwind uwtable
define %struct.MT* @MTBegin() #0 {
entry:
  %retval = alloca %struct.MT*, align 8
  %t = alloca %struct.MT*, align 8
  %call = call noalias i8* @malloc(i64 3676) #2
  %0 = bitcast i8* %call to %struct.MT*
  store %struct.MT* %0, %struct.MT** %t, align 8
  %cmp = icmp eq %struct.MT* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.MT* null, %struct.MT** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.MT*, %struct.MT** %t, align 8
  %sp = getelementptr inbounds %struct.MT, %struct.MT* %1, i32 0, i32 0
  store i32 0, i32* %sp, align 4
  %2 = load %struct.MT*, %struct.MT** %t, align 8
  call void @MTIdentity(%struct.MT* %2)
  %3 = load %struct.MT*, %struct.MT** %t, align 8
  store %struct.MT* %3, %struct.MT** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.MT*, %struct.MT** %retval
  ret %struct.MT* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @MTIdentity(%struct.MT* %t) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 2
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 2
  store i32 1, i32* %arrayidx2, align 4
  %1 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t3 = getelementptr inbounds %struct.MT, %struct.MT* %1, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t3, i32 0, i64 1
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 1
  store i32 1, i32* %arrayidx5, align 4
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t6 = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 0
  store i32 1, i32* %arrayidx8, align 4
  %3 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti = getelementptr inbounds %struct.MT, %struct.MT* %3, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti, i32 0, i64 2
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 2
  store i32 1, i32* %arrayidx10, align 4
  %4 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti11 = getelementptr inbounds %struct.MT, %struct.MT* %4, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti11, i32 0, i64 1
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 1
  store i32 1, i32* %arrayidx13, align 4
  %5 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti14 = getelementptr inbounds %struct.MT, %struct.MT* %5, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti14, i32 0, i64 0
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx15, i32 0, i64 0
  store i32 1, i32* %arrayidx16, align 4
  %6 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti17 = getelementptr inbounds %struct.MT, %struct.MT* %6, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 1
  store i32 0, i32* %arrayidx19, align 4
  %7 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti20 = getelementptr inbounds %struct.MT, %struct.MT* %7, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti20, i32 0, i64 2
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx21, i32 0, i64 0
  store i32 0, i32* %arrayidx22, align 4
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti23 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti23, i32 0, i64 1
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx24, i32 0, i64 2
  store i32 0, i32* %arrayidx25, align 4
  %9 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti26 = getelementptr inbounds %struct.MT, %struct.MT* %9, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti26, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 2
  store i32 0, i32* %arrayidx28, align 4
  %10 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti29 = getelementptr inbounds %struct.MT, %struct.MT* %10, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti29, i32 0, i64 1
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx30, i32 0, i64 0
  store i32 0, i32* %arrayidx31, align 4
  %11 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti32 = getelementptr inbounds %struct.MT, %struct.MT* %11, i32 0, i32 3
  %arrayidx33 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti32, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i64 1
  store i32 0, i32* %arrayidx34, align 4
  %12 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t35 = getelementptr inbounds %struct.MT, %struct.MT* %12, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t35, i32 0, i64 2
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx36, i32 0, i64 1
  store i32 0, i32* %arrayidx37, align 4
  %13 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t38 = getelementptr inbounds %struct.MT, %struct.MT* %13, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t38, i32 0, i64 2
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx39, i32 0, i64 0
  store i32 0, i32* %arrayidx40, align 4
  %14 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t41 = getelementptr inbounds %struct.MT, %struct.MT* %14, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t41, i32 0, i64 1
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx42, i32 0, i64 2
  store i32 0, i32* %arrayidx43, align 4
  %15 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t44 = getelementptr inbounds %struct.MT, %struct.MT* %15, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t44, i32 0, i64 0
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx45, i32 0, i64 2
  store i32 0, i32* %arrayidx46, align 4
  %16 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t47 = getelementptr inbounds %struct.MT, %struct.MT* %16, i32 0, i32 2
  %arrayidx48 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t47, i32 0, i64 1
  %arrayidx49 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx48, i32 0, i64 0
  store i32 0, i32* %arrayidx49, align 4
  %17 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t50 = getelementptr inbounds %struct.MT, %struct.MT* %17, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t50, i32 0, i64 0
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx51, i32 0, i64 1
  store i32 0, i32* %arrayidx52, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MTEnd(%struct.MT* %t) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %1 = bitcast %struct.MT* %0 to i8*
  call void @free(i8* %1) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @MTTranslate(%struct.MT* %t, i32 %x, i32 %y) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 2
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx2, align 4
  %2 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %1, %2
  %3 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t3 = getelementptr inbounds %struct.MT, %struct.MT* %3, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t3, i32 0, i64 2
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 0
  store i32 %add, i32* %arrayidx5, align 4
  %4 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t6 = getelementptr inbounds %struct.MT, %struct.MT* %4, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t6, i32 0, i64 2
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 1
  %5 = load i32, i32* %arrayidx8, align 4
  %6 = load i32, i32* %y.addr, align 4
  %add9 = add nsw i32 %5, %6
  %7 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t10 = getelementptr inbounds %struct.MT, %struct.MT* %7, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t10, i32 0, i64 2
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 1
  store i32 %add9, i32* %arrayidx12, align 4
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTInvert(%struct.MT* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @MTInvert(%struct.MT* %t) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx2, align 4
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3, i32 0, i64 0
  store i32 %1, i32* %arrayidx4, align 4
  %3 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t5 = getelementptr inbounds %struct.MT, %struct.MT* %3, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t5, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i32 0, i64 0
  %4 = load i32, i32* %arrayidx7, align 4
  %5 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti8 = getelementptr inbounds %struct.MT, %struct.MT* %5, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti8, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 1
  store i32 %4, i32* %arrayidx10, align 4
  %6 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t11 = getelementptr inbounds %struct.MT, %struct.MT* %6, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t11, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 1
  %7 = load i32, i32* %arrayidx13, align 4
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti14 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx15, i32 0, i64 0
  store i32 %7, i32* %arrayidx16, align 4
  %9 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t17 = getelementptr inbounds %struct.MT, %struct.MT* %9, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t17, i32 0, i64 1
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 1
  %10 = load i32, i32* %arrayidx19, align 4
  %11 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti20 = getelementptr inbounds %struct.MT, %struct.MT* %11, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti20, i32 0, i64 1
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx21, i32 0, i64 1
  store i32 %10, i32* %arrayidx22, align 4
  %12 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t23 = getelementptr inbounds %struct.MT, %struct.MT* %12, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t23, i32 0, i64 2
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx24, i32 0, i64 0
  %13 = load i32, i32* %arrayidx25, align 4
  %sub = sub nsw i32 0, %13
  %14 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t26 = getelementptr inbounds %struct.MT, %struct.MT* %14, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t26, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 0
  %15 = load i32, i32* %arrayidx28, align 4
  %mul = mul nsw i32 %sub, %15
  %16 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t29 = getelementptr inbounds %struct.MT, %struct.MT* %16, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t29, i32 0, i64 2
  %arrayidx31 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx30, i32 0, i64 1
  %17 = load i32, i32* %arrayidx31, align 4
  %18 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t32 = getelementptr inbounds %struct.MT, %struct.MT* %18, i32 0, i32 2
  %arrayidx33 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t32, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i64 1
  %19 = load i32, i32* %arrayidx34, align 4
  %mul35 = mul nsw i32 %17, %19
  %sub36 = sub nsw i32 %mul, %mul35
  %20 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti37 = getelementptr inbounds %struct.MT, %struct.MT* %20, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti37, i32 0, i64 2
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx38, i32 0, i64 0
  store i32 %sub36, i32* %arrayidx39, align 4
  %21 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t40 = getelementptr inbounds %struct.MT, %struct.MT* %21, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t40, i32 0, i64 2
  %arrayidx42 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx41, i32 0, i64 0
  %22 = load i32, i32* %arrayidx42, align 4
  %sub43 = sub nsw i32 0, %22
  %23 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t44 = getelementptr inbounds %struct.MT, %struct.MT* %23, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t44, i32 0, i64 1
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx45, i32 0, i64 0
  %24 = load i32, i32* %arrayidx46, align 4
  %mul47 = mul nsw i32 %sub43, %24
  %25 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t48 = getelementptr inbounds %struct.MT, %struct.MT* %25, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t48, i32 0, i64 2
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx49, i32 0, i64 1
  %26 = load i32, i32* %arrayidx50, align 4
  %27 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t51 = getelementptr inbounds %struct.MT, %struct.MT* %27, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t51, i32 0, i64 1
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx52, i32 0, i64 1
  %28 = load i32, i32* %arrayidx53, align 4
  %mul54 = mul nsw i32 %26, %28
  %sub55 = sub nsw i32 %mul47, %mul54
  %29 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti56 = getelementptr inbounds %struct.MT, %struct.MT* %29, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti56, i32 0, i64 2
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx57, i32 0, i64 1
  store i32 %sub55, i32* %arrayidx58, align 4
  %30 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti59 = getelementptr inbounds %struct.MT, %struct.MT* %30, i32 0, i32 3
  %arrayidx60 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti59, i32 0, i64 1
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx60, i32 0, i64 2
  store i32 0, i32* %arrayidx61, align 4
  %31 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti62 = getelementptr inbounds %struct.MT, %struct.MT* %31, i32 0, i32 3
  %arrayidx63 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti62, i32 0, i64 0
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx63, i32 0, i64 2
  store i32 0, i32* %arrayidx64, align 4
  %32 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti65 = getelementptr inbounds %struct.MT, %struct.MT* %32, i32 0, i32 3
  %arrayidx66 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti65, i32 0, i64 2
  %arrayidx67 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx66, i32 0, i64 2
  store i32 1, i32* %arrayidx67, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MTMY(%struct.MT* %t) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 1
  %1 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 0, %1
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t3 = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 1
  store i32 %sub, i32* %arrayidx5, align 4
  %3 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t6 = getelementptr inbounds %struct.MT, %struct.MT* %3, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t6, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 1
  %4 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 0, %4
  %5 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t10 = getelementptr inbounds %struct.MT, %struct.MT* %5, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 1
  store i32 %sub9, i32* %arrayidx12, align 4
  %6 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t13 = getelementptr inbounds %struct.MT, %struct.MT* %6, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t13, i32 0, i64 2
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i32 0, i64 1
  %7 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 0, %7
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t17 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 1
  store i32 %sub16, i32* %arrayidx19, align 4
  %9 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTInvert(%struct.MT* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MTMX(%struct.MT* %t) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx2, align 4
  %sub = sub nsw i32 0, %1
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t3 = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t3, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 0
  store i32 %sub, i32* %arrayidx5, align 4
  %3 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t6 = getelementptr inbounds %struct.MT, %struct.MT* %3, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t6, i32 0, i64 1
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 0
  %4 = load i32, i32* %arrayidx8, align 4
  %sub9 = sub nsw i32 0, %4
  %5 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t10 = getelementptr inbounds %struct.MT, %struct.MT* %5, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t10, i32 0, i64 1
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 0
  store i32 %sub9, i32* %arrayidx12, align 4
  %6 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t13 = getelementptr inbounds %struct.MT, %struct.MT* %6, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t13, i32 0, i64 2
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i32 0, i64 0
  %7 = load i32, i32* %arrayidx15, align 4
  %sub16 = sub nsw i32 0, %7
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t17 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t17, i32 0, i64 2
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 0
  store i32 %sub16, i32* %arrayidx19, align 4
  %9 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTInvert(%struct.MT* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MTRotate(%struct.MT* %t, i32 %x, i32 %y) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %2 = load i32, i32* %y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %3 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 0, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %sub, %cond.false ]
  %cmp2 = icmp sgt i32 %cond, 1
  br i1 %cmp2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %cond.end
  %4 = load i32, i32* %y.addr, align 4
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.3
  store i32 -1, i32* %y.addr, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.3
  store i32 1, i32* %y.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %cond.end
  br label %if.end.24

if.else.7:                                        ; preds = %entry
  %5 = load i32, i32* %y.addr, align 4
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %if.then.9, label %if.end.23

if.then.9:                                        ; preds = %if.else.7
  %6 = load i32, i32* %x.addr, align 4
  %cmp10 = icmp sge i32 %6, 0
  br i1 %cmp10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %if.then.9
  %7 = load i32, i32* %x.addr, align 4
  br label %cond.end.14

cond.false.12:                                    ; preds = %if.then.9
  %8 = load i32, i32* %x.addr, align 4
  %sub13 = sub nsw i32 0, %8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.12, %cond.true.11
  %cond15 = phi i32 [ %7, %cond.true.11 ], [ %sub13, %cond.false.12 ]
  %cmp16 = icmp sgt i32 %cond15, 1
  br i1 %cmp16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %cond.end.14
  %9 = load i32, i32* %x.addr, align 4
  %cmp18 = icmp slt i32 %9, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.then.17
  store i32 -1, i32* %x.addr, align 4
  br label %if.end.21

if.else.20:                                       ; preds = %if.then.17
  store i32 1, i32* %x.addr, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %cond.end.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.else.7
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.6
  %10 = load i32, i32* %x.addr, align 4
  %cmp25 = icmp eq i32 %10, 1
  br i1 %cmp25, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.end.24
  %11 = load i32, i32* %y.addr, align 4
  %cmp26 = icmp eq i32 %11, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true
  br label %return

if.else.28:                                       ; preds = %land.lhs.true, %if.end.24
  %12 = load i32, i32* %x.addr, align 4
  %cmp29 = icmp eq i32 %12, 0
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.71

land.lhs.true.30:                                 ; preds = %if.else.28
  %13 = load i32, i32* %y.addr, align 4
  %cmp31 = icmp eq i32 %13, -1
  br i1 %cmp31, label %if.then.32, label %if.else.71

if.then.32:                                       ; preds = %land.lhs.true.30
  %14 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t33 = getelementptr inbounds %struct.MT, %struct.MT* %14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t33, i32 0, i64 0
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %15 = load i32, i32* %arrayidx34, align 4
  store i32 %15, i32* %i1, align 4
  %16 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t35 = getelementptr inbounds %struct.MT, %struct.MT* %16, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t35, i32 0, i64 0
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx36, i32 0, i64 1
  %17 = load i32, i32* %arrayidx37, align 4
  %18 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t38 = getelementptr inbounds %struct.MT, %struct.MT* %18, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t38, i32 0, i64 0
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx39, i32 0, i64 0
  store i32 %17, i32* %arrayidx40, align 4
  %19 = load i32, i32* %i1, align 4
  %sub41 = sub nsw i32 0, %19
  %20 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t42 = getelementptr inbounds %struct.MT, %struct.MT* %20, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t42, i32 0, i64 0
  %arrayidx44 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx43, i32 0, i64 1
  store i32 %sub41, i32* %arrayidx44, align 4
  %21 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t45 = getelementptr inbounds %struct.MT, %struct.MT* %21, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t45, i32 0, i64 1
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx46, i32 0, i64 0
  %22 = load i32, i32* %arrayidx47, align 4
  store i32 %22, i32* %i1, align 4
  %23 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t48 = getelementptr inbounds %struct.MT, %struct.MT* %23, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t48, i32 0, i64 1
  %arrayidx50 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx49, i32 0, i64 1
  %24 = load i32, i32* %arrayidx50, align 4
  %25 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t51 = getelementptr inbounds %struct.MT, %struct.MT* %25, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t51, i32 0, i64 1
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx52, i32 0, i64 0
  store i32 %24, i32* %arrayidx53, align 4
  %26 = load i32, i32* %i1, align 4
  %sub54 = sub nsw i32 0, %26
  %27 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t55 = getelementptr inbounds %struct.MT, %struct.MT* %27, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t55, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx56, i32 0, i64 1
  store i32 %sub54, i32* %arrayidx57, align 4
  %28 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t58 = getelementptr inbounds %struct.MT, %struct.MT* %28, i32 0, i32 2
  %arrayidx59 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t58, i32 0, i64 2
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx59, i32 0, i64 0
  %29 = load i32, i32* %arrayidx60, align 4
  store i32 %29, i32* %i1, align 4
  %30 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t61 = getelementptr inbounds %struct.MT, %struct.MT* %30, i32 0, i32 2
  %arrayidx62 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t61, i32 0, i64 2
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx62, i32 0, i64 1
  %31 = load i32, i32* %arrayidx63, align 4
  %32 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t64 = getelementptr inbounds %struct.MT, %struct.MT* %32, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t64, i32 0, i64 2
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx65, i32 0, i64 0
  store i32 %31, i32* %arrayidx66, align 4
  %33 = load i32, i32* %i1, align 4
  %sub67 = sub nsw i32 0, %33
  %34 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t68 = getelementptr inbounds %struct.MT, %struct.MT* %34, i32 0, i32 2
  %arrayidx69 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t68, i32 0, i64 2
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx69, i32 0, i64 1
  store i32 %sub67, i32* %arrayidx70, align 4
  br label %if.end.139

if.else.71:                                       ; preds = %land.lhs.true.30, %if.else.28
  %35 = load i32, i32* %x.addr, align 4
  %cmp72 = icmp eq i32 %35, 0
  br i1 %cmp72, label %land.lhs.true.73, label %if.else.115

land.lhs.true.73:                                 ; preds = %if.else.71
  %36 = load i32, i32* %y.addr, align 4
  %cmp74 = icmp eq i32 %36, 1
  br i1 %cmp74, label %if.then.75, label %if.else.115

if.then.75:                                       ; preds = %land.lhs.true.73
  %37 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t76 = getelementptr inbounds %struct.MT, %struct.MT* %37, i32 0, i32 2
  %arrayidx77 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t76, i32 0, i64 0
  %arrayidx78 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx77, i32 0, i64 0
  %38 = load i32, i32* %arrayidx78, align 4
  store i32 %38, i32* %i1, align 4
  %39 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t79 = getelementptr inbounds %struct.MT, %struct.MT* %39, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t79, i32 0, i64 0
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx80, i32 0, i64 1
  %40 = load i32, i32* %arrayidx81, align 4
  %sub82 = sub nsw i32 0, %40
  %41 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t83 = getelementptr inbounds %struct.MT, %struct.MT* %41, i32 0, i32 2
  %arrayidx84 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t83, i32 0, i64 0
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx84, i32 0, i64 0
  store i32 %sub82, i32* %arrayidx85, align 4
  %42 = load i32, i32* %i1, align 4
  %43 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t86 = getelementptr inbounds %struct.MT, %struct.MT* %43, i32 0, i32 2
  %arrayidx87 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t86, i32 0, i64 0
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx87, i32 0, i64 1
  store i32 %42, i32* %arrayidx88, align 4
  %44 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t89 = getelementptr inbounds %struct.MT, %struct.MT* %44, i32 0, i32 2
  %arrayidx90 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t89, i32 0, i64 1
  %arrayidx91 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx90, i32 0, i64 0
  %45 = load i32, i32* %arrayidx91, align 4
  store i32 %45, i32* %i1, align 4
  %46 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t92 = getelementptr inbounds %struct.MT, %struct.MT* %46, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t92, i32 0, i64 1
  %arrayidx94 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx93, i32 0, i64 1
  %47 = load i32, i32* %arrayidx94, align 4
  %sub95 = sub nsw i32 0, %47
  %48 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t96 = getelementptr inbounds %struct.MT, %struct.MT* %48, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t96, i32 0, i64 1
  %arrayidx98 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx97, i32 0, i64 0
  store i32 %sub95, i32* %arrayidx98, align 4
  %49 = load i32, i32* %i1, align 4
  %50 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t99 = getelementptr inbounds %struct.MT, %struct.MT* %50, i32 0, i32 2
  %arrayidx100 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t99, i32 0, i64 1
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx100, i32 0, i64 1
  store i32 %49, i32* %arrayidx101, align 4
  %51 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t102 = getelementptr inbounds %struct.MT, %struct.MT* %51, i32 0, i32 2
  %arrayidx103 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t102, i32 0, i64 2
  %arrayidx104 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx103, i32 0, i64 0
  %52 = load i32, i32* %arrayidx104, align 4
  store i32 %52, i32* %i1, align 4
  %53 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t105 = getelementptr inbounds %struct.MT, %struct.MT* %53, i32 0, i32 2
  %arrayidx106 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t105, i32 0, i64 2
  %arrayidx107 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx106, i32 0, i64 1
  %54 = load i32, i32* %arrayidx107, align 4
  %sub108 = sub nsw i32 0, %54
  %55 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t109 = getelementptr inbounds %struct.MT, %struct.MT* %55, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t109, i32 0, i64 2
  %arrayidx111 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx110, i32 0, i64 0
  store i32 %sub108, i32* %arrayidx111, align 4
  %56 = load i32, i32* %i1, align 4
  %57 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t112 = getelementptr inbounds %struct.MT, %struct.MT* %57, i32 0, i32 2
  %arrayidx113 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t112, i32 0, i64 2
  %arrayidx114 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx113, i32 0, i64 1
  store i32 %56, i32* %arrayidx114, align 4
  br label %if.end.138

if.else.115:                                      ; preds = %land.lhs.true.73, %if.else.71
  %58 = load i32, i32* %x.addr, align 4
  %cmp116 = icmp eq i32 %58, -1
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.137

land.lhs.true.117:                                ; preds = %if.else.115
  %59 = load i32, i32* %y.addr, align 4
  %cmp118 = icmp eq i32 %59, 0
  br i1 %cmp118, label %if.then.119, label %if.end.137

if.then.119:                                      ; preds = %land.lhs.true.117
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.134, %if.then.119
  %60 = load i32, i32* %i, align 4
  %cmp120 = icmp slt i32 %60, 3
  br i1 %cmp120, label %for.body, label %for.end.136

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc, %for.body
  %61 = load i32, i32* %j, align 4
  %cmp122 = icmp slt i32 %61, 2
  br i1 %cmp122, label %for.body.123, label %for.end

for.body.123:                                     ; preds = %for.cond.121
  %62 = load i32, i32* %j, align 4
  %idxprom = sext i32 %62 to i64
  %63 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %63 to i64
  %64 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t125 = getelementptr inbounds %struct.MT, %struct.MT* %64, i32 0, i32 2
  %arrayidx126 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t125, i32 0, i64 %idxprom124
  %arrayidx127 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx126, i32 0, i64 %idxprom
  %65 = load i32, i32* %arrayidx127, align 4
  %sub128 = sub nsw i32 0, %65
  %66 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %66 to i64
  %67 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %67 to i64
  %68 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t131 = getelementptr inbounds %struct.MT, %struct.MT* %68, i32 0, i32 2
  %arrayidx132 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t131, i32 0, i64 %idxprom130
  %arrayidx133 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx132, i32 0, i64 %idxprom129
  store i32 %sub128, i32* %arrayidx133, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.123
  %69 = load i32, i32* %j, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.121

for.end:                                          ; preds = %for.cond.121
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end
  %70 = load i32, i32* %i, align 4
  %inc135 = add nsw i32 %70, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond

for.end.136:                                      ; preds = %for.cond
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %land.lhs.true.117, %if.else.115
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.75
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.32
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139
  %71 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTInvert(%struct.MT* %71)
  br label %return

return:                                           ; preds = %if.end.140, %if.then.27
  ret void
}

; Function Attrs: nounwind uwtable
define void @MTConcat(%struct.MT* %t, [3 x i32]* %a) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  %a.addr = alloca [3 x i32]*, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i6 = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  store [3 x i32]* %a, [3 x i32]** %a.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %1 = load i32, i32* %arrayidx2, align 4
  %2 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx4, align 4
  %mul = mul nsw i32 %1, %3
  %4 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t5 = getelementptr inbounds %struct.MT, %struct.MT* %4, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i32 0, i64 1
  %5 = load i32, i32* %arrayidx7, align 4
  %6 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 1
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx8, i32 0, i64 0
  %7 = load i32, i32* %arrayidx9, align 4
  %mul10 = mul nsw i32 %5, %7
  %add = add nsw i32 %mul, %mul10
  store i32 %add, i32* %i1, align 4
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t11 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t11, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 0
  %9 = load i32, i32* %arrayidx13, align 4
  %10 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i32 0, i64 1
  %11 = load i32, i32* %arrayidx15, align 4
  %mul16 = mul nsw i32 %9, %11
  %12 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t17 = getelementptr inbounds %struct.MT, %struct.MT* %12, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t17, i32 0, i64 0
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 1
  %13 = load i32, i32* %arrayidx19, align 4
  %14 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx20 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 1
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i32 0, i64 1
  %15 = load i32, i32* %arrayidx21, align 4
  %mul22 = mul nsw i32 %13, %15
  %add23 = add nsw i32 %mul16, %mul22
  store i32 %add23, i32* %i2, align 4
  %16 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t24 = getelementptr inbounds %struct.MT, %struct.MT* %16, i32 0, i32 2
  %arrayidx25 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t24, i32 0, i64 1
  %arrayidx26 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx25, i32 0, i64 0
  %17 = load i32, i32* %arrayidx26, align 4
  %18 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx27 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 0
  %19 = load i32, i32* %arrayidx28, align 4
  %mul29 = mul nsw i32 %17, %19
  %20 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t30 = getelementptr inbounds %struct.MT, %struct.MT* %20, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t30, i32 0, i64 1
  %arrayidx32 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx31, i32 0, i64 1
  %21 = load i32, i32* %arrayidx32, align 4
  %22 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 1
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx33, i32 0, i64 0
  %23 = load i32, i32* %arrayidx34, align 4
  %mul35 = mul nsw i32 %21, %23
  %add36 = add nsw i32 %mul29, %mul35
  store i32 %add36, i32* %i3, align 4
  %24 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t37 = getelementptr inbounds %struct.MT, %struct.MT* %24, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t37, i32 0, i64 1
  %arrayidx39 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx38, i32 0, i64 0
  %25 = load i32, i32* %arrayidx39, align 4
  %26 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx40 = getelementptr inbounds [3 x i32], [3 x i32]* %26, i64 0
  %arrayidx41 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx40, i32 0, i64 1
  %27 = load i32, i32* %arrayidx41, align 4
  %mul42 = mul nsw i32 %25, %27
  %28 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t43 = getelementptr inbounds %struct.MT, %struct.MT* %28, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t43, i32 0, i64 1
  %arrayidx45 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx44, i32 0, i64 1
  %29 = load i32, i32* %arrayidx45, align 4
  %30 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx46 = getelementptr inbounds [3 x i32], [3 x i32]* %30, i64 1
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx46, i32 0, i64 1
  %31 = load i32, i32* %arrayidx47, align 4
  %mul48 = mul nsw i32 %29, %31
  %add49 = add nsw i32 %mul42, %mul48
  store i32 %add49, i32* %i4, align 4
  %32 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t50 = getelementptr inbounds %struct.MT, %struct.MT* %32, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t50, i32 0, i64 2
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx51, i32 0, i64 0
  %33 = load i32, i32* %arrayidx52, align 4
  %34 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx53 = getelementptr inbounds [3 x i32], [3 x i32]* %34, i64 0
  %arrayidx54 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx53, i32 0, i64 0
  %35 = load i32, i32* %arrayidx54, align 4
  %mul55 = mul nsw i32 %33, %35
  %36 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t56 = getelementptr inbounds %struct.MT, %struct.MT* %36, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t56, i32 0, i64 2
  %arrayidx58 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx57, i32 0, i64 1
  %37 = load i32, i32* %arrayidx58, align 4
  %38 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %38, i64 1
  %arrayidx60 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx59, i32 0, i64 0
  %39 = load i32, i32* %arrayidx60, align 4
  %mul61 = mul nsw i32 %37, %39
  %add62 = add nsw i32 %mul55, %mul61
  %40 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx63 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 2
  %arrayidx64 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx63, i32 0, i64 0
  %41 = load i32, i32* %arrayidx64, align 4
  %add65 = add nsw i32 %add62, %41
  store i32 %add65, i32* %i5, align 4
  %42 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t66 = getelementptr inbounds %struct.MT, %struct.MT* %42, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t66, i32 0, i64 2
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx67, i32 0, i64 0
  %43 = load i32, i32* %arrayidx68, align 4
  %44 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx69 = getelementptr inbounds [3 x i32], [3 x i32]* %44, i64 0
  %arrayidx70 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx69, i32 0, i64 1
  %45 = load i32, i32* %arrayidx70, align 4
  %mul71 = mul nsw i32 %43, %45
  %46 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t72 = getelementptr inbounds %struct.MT, %struct.MT* %46, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t72, i32 0, i64 2
  %arrayidx74 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx73, i32 0, i64 1
  %47 = load i32, i32* %arrayidx74, align 4
  %48 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 1
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx75, i32 0, i64 1
  %49 = load i32, i32* %arrayidx76, align 4
  %mul77 = mul nsw i32 %47, %49
  %add78 = add nsw i32 %mul71, %mul77
  %50 = load [3 x i32]*, [3 x i32]** %a.addr, align 8
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %50, i64 2
  %arrayidx80 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx79, i32 0, i64 1
  %51 = load i32, i32* %arrayidx80, align 4
  %add81 = add nsw i32 %add78, %51
  store i32 %add81, i32* %i6, align 4
  %52 = load i32, i32* %i1, align 4
  %53 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t82 = getelementptr inbounds %struct.MT, %struct.MT* %53, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t82, i32 0, i64 0
  %arrayidx84 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx83, i32 0, i64 0
  store i32 %52, i32* %arrayidx84, align 4
  %54 = load i32, i32* %i2, align 4
  %55 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t85 = getelementptr inbounds %struct.MT, %struct.MT* %55, i32 0, i32 2
  %arrayidx86 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t85, i32 0, i64 0
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx86, i32 0, i64 1
  store i32 %54, i32* %arrayidx87, align 4
  %56 = load i32, i32* %i3, align 4
  %57 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t88 = getelementptr inbounds %struct.MT, %struct.MT* %57, i32 0, i32 2
  %arrayidx89 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t88, i32 0, i64 1
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx89, i32 0, i64 0
  store i32 %56, i32* %arrayidx90, align 4
  %58 = load i32, i32* %i4, align 4
  %59 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t91 = getelementptr inbounds %struct.MT, %struct.MT* %59, i32 0, i32 2
  %arrayidx92 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t91, i32 0, i64 1
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx92, i32 0, i64 1
  store i32 %58, i32* %arrayidx93, align 4
  %60 = load i32, i32* %i5, align 4
  %61 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t94 = getelementptr inbounds %struct.MT, %struct.MT* %61, i32 0, i32 2
  %arrayidx95 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t94, i32 0, i64 2
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx95, i32 0, i64 0
  store i32 %60, i32* %arrayidx96, align 4
  %62 = load i32, i32* %i6, align 4
  %63 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t97 = getelementptr inbounds %struct.MT, %struct.MT* %63, i32 0, i32 2
  %arrayidx98 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t97, i32 0, i64 2
  %arrayidx99 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx98, i32 0, i64 1
  store i32 %62, i32* %arrayidx99, align 4
  %64 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTInvert(%struct.MT* %64)
  ret void
}

; Function Attrs: nounwind uwtable
define void @MTPoint(%struct.MT* %t, i32* %x, i32* %y) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %i1 = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32*, i32** %x.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %3 = load i32, i32* %arrayidx2, align 4
  %mul = mul nsw i32 %1, %3
  %4 = load i32*, i32** %y.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t3 = getelementptr inbounds %struct.MT, %struct.MT* %6, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t3, i32 0, i64 1
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 0
  %7 = load i32, i32* %arrayidx5, align 4
  %mul6 = mul nsw i32 %5, %7
  %add = add nsw i32 %mul, %mul6
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t7 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t7, i32 0, i64 2
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx8, i32 0, i64 0
  %9 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %add, %9
  store i32 %add10, i32* %i1, align 4
  %10 = load i32*, i32** %x.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t11 = getelementptr inbounds %struct.MT, %struct.MT* %12, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t11, i32 0, i64 0
  %arrayidx13 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx12, i32 0, i64 1
  %13 = load i32, i32* %arrayidx13, align 4
  %mul14 = mul nsw i32 %11, %13
  %14 = load i32*, i32** %y.addr, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t15 = getelementptr inbounds %struct.MT, %struct.MT* %16, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t15, i32 0, i64 1
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx16, i32 0, i64 1
  %17 = load i32, i32* %arrayidx17, align 4
  %mul18 = mul nsw i32 %15, %17
  %add19 = add nsw i32 %mul14, %mul18
  %18 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t20 = getelementptr inbounds %struct.MT, %struct.MT* %18, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t20, i32 0, i64 2
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx21, i32 0, i64 1
  %19 = load i32, i32* %arrayidx22, align 4
  %add23 = add nsw i32 %add19, %19
  %20 = load i32*, i32** %y.addr, align 8
  store i32 %add23, i32* %20, align 4
  %21 = load i32, i32* %i1, align 4
  %22 = load i32*, i32** %x.addr, align 8
  store i32 %21, i32* %22, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @MTIPoint(%struct.MT* %t, i32* %x, i32* %y) #0 {
entry:
  %t.addr = alloca %struct.MT*, align 8
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %i1 = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32*, i32** %x.addr, align 8
  %1 = load i32, i32* %0, align 4
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %3 = load i32, i32* %arrayidx1, align 4
  %mul = mul nsw i32 %1, %3
  %4 = load i32*, i32** %y.addr, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti2 = getelementptr inbounds %struct.MT, %struct.MT* %6, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti2, i32 0, i64 1
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx3, i32 0, i64 0
  %7 = load i32, i32* %arrayidx4, align 4
  %mul5 = mul nsw i32 %5, %7
  %add = add nsw i32 %mul, %mul5
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti6 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti6, i32 0, i64 2
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 0
  %9 = load i32, i32* %arrayidx8, align 4
  %add9 = add nsw i32 %add, %9
  store i32 %add9, i32* %i1, align 4
  %10 = load i32*, i32** %x.addr, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti10 = getelementptr inbounds %struct.MT, %struct.MT* %12, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti10, i32 0, i64 0
  %arrayidx12 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx11, i32 0, i64 1
  %13 = load i32, i32* %arrayidx12, align 4
  %mul13 = mul nsw i32 %11, %13
  %14 = load i32*, i32** %y.addr, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti14 = getelementptr inbounds %struct.MT, %struct.MT* %16, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti14, i32 0, i64 1
  %arrayidx16 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx15, i32 0, i64 1
  %17 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %15, %17
  %add18 = add nsw i32 %mul13, %mul17
  %18 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %ti19 = getelementptr inbounds %struct.MT, %struct.MT* %18, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %ti19, i32 0, i64 2
  %arrayidx21 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx20, i32 0, i64 1
  %19 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %add18, %19
  %20 = load i32*, i32** %y.addr, align 8
  store i32 %add22, i32* %20, align 4
  %21 = load i32, i32* %i1, align 4
  %22 = load i32*, i32** %x.addr, align 8
  store i32 %21, i32* %22, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @MTPushP(%struct.MT* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.MT*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 0
  %1 = load i32, i32* %sp, align 4
  %cmp = icmp eq i32 %1, 100
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 3
  br i1 %cmp1, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %3, 2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t6 = getelementptr inbounds %struct.MT, %struct.MT* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t6, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx7, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %10 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp10 = getelementptr inbounds %struct.MT, %struct.MT* %10, i32 0, i32 0
  %11 = load i32, i32* %sp10, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk = getelementptr inbounds %struct.MT, %struct.MT* %12, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx12, i32 0, i64 %idxprom9
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx13, i32 0, i64 %idxprom8
  store i32 %7, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %15 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp18 = getelementptr inbounds %struct.MT, %struct.MT* %15, i32 0, i32 0
  %16 = load i32, i32* %sp18, align 4
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, i32* %sp18, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define i32 @MTPopP(%struct.MT* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.MT*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 0
  %1 = load i32, i32* %sp, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp1 = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 0
  %3 = load i32, i32* %sp1, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %sp1, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 3
  br i1 %cmp2, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %cmp4 = icmp slt i32 %5, 2
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp7 = getelementptr inbounds %struct.MT, %struct.MT* %8, i32 0, i32 0
  %9 = load i32, i32* %sp7, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk = getelementptr inbounds %struct.MT, %struct.MT* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk, i32 0, i64 %idxprom8
  %arrayidx9 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx, i32 0, i64 %idxprom6
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx10, align 4
  %12 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t13 = getelementptr inbounds %struct.MT, %struct.MT* %14, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t13, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i32 0, i64 %idxprom11
  store i32 %11, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  %17 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTInvert(%struct.MT* %17)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.18, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @MTPremultiplyP(%struct.MT* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.MT*, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %sp = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp1 = getelementptr inbounds %struct.MT, %struct.MT* %0, i32 0, i32 0
  %1 = load i32, i32* %sp1, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %sp2 = getelementptr inbounds %struct.MT, %struct.MT* %2, i32 0, i32 0
  %3 = load i32, i32* %sp2, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, i32* %sp, align 4
  %4 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t3 = getelementptr inbounds %struct.MT, %struct.MT* %4, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t3, i32 0, i64 0
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %5 = load i32, i32* %arrayidx4, align 4
  %6 = load i32, i32* %sp, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk = getelementptr inbounds %struct.MT, %struct.MT* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk, i32 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx5, i32 0, i64 0
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx6, i32 0, i64 0
  %8 = load i32, i32* %arrayidx7, align 4
  %mul = mul nsw i32 %5, %8
  %9 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t8 = getelementptr inbounds %struct.MT, %struct.MT* %9, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t8, i32 0, i64 0
  %arrayidx10 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx9, i32 0, i64 1
  %10 = load i32, i32* %arrayidx10, align 4
  %11 = load i32, i32* %sp, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk12 = getelementptr inbounds %struct.MT, %struct.MT* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk12, i32 0, i64 %idxprom11
  %arrayidx14 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx13, i32 0, i64 1
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx14, i32 0, i64 0
  %13 = load i32, i32* %arrayidx15, align 4
  %mul16 = mul nsw i32 %10, %13
  %add = add nsw i32 %mul, %mul16
  store i32 %add, i32* %i1, align 4
  %14 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t17 = getelementptr inbounds %struct.MT, %struct.MT* %14, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t17, i32 0, i64 0
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx18, i32 0, i64 0
  %15 = load i32, i32* %arrayidx19, align 4
  %16 = load i32, i32* %sp, align 4
  %idxprom20 = sext i32 %16 to i64
  %17 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk21 = getelementptr inbounds %struct.MT, %struct.MT* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk21, i32 0, i64 %idxprom20
  %arrayidx23 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx22, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx23, i32 0, i64 1
  %18 = load i32, i32* %arrayidx24, align 4
  %mul25 = mul nsw i32 %15, %18
  %19 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t26 = getelementptr inbounds %struct.MT, %struct.MT* %19, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t26, i32 0, i64 0
  %arrayidx28 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx27, i32 0, i64 1
  %20 = load i32, i32* %arrayidx28, align 4
  %21 = load i32, i32* %sp, align 4
  %idxprom29 = sext i32 %21 to i64
  %22 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk30 = getelementptr inbounds %struct.MT, %struct.MT* %22, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk30, i32 0, i64 %idxprom29
  %arrayidx32 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx31, i32 0, i64 1
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx32, i32 0, i64 1
  %23 = load i32, i32* %arrayidx33, align 4
  %mul34 = mul nsw i32 %20, %23
  %add35 = add nsw i32 %mul25, %mul34
  store i32 %add35, i32* %i2, align 4
  %24 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t36 = getelementptr inbounds %struct.MT, %struct.MT* %24, i32 0, i32 2
  %arrayidx37 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t36, i32 0, i64 1
  %arrayidx38 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx37, i32 0, i64 0
  %25 = load i32, i32* %arrayidx38, align 4
  %26 = load i32, i32* %sp, align 4
  %idxprom39 = sext i32 %26 to i64
  %27 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk40 = getelementptr inbounds %struct.MT, %struct.MT* %27, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk40, i32 0, i64 %idxprom39
  %arrayidx42 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx41, i32 0, i64 0
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx42, i32 0, i64 0
  %28 = load i32, i32* %arrayidx43, align 4
  %mul44 = mul nsw i32 %25, %28
  %29 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t45 = getelementptr inbounds %struct.MT, %struct.MT* %29, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t45, i32 0, i64 1
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx46, i32 0, i64 1
  %30 = load i32, i32* %arrayidx47, align 4
  %31 = load i32, i32* %sp, align 4
  %idxprom48 = sext i32 %31 to i64
  %32 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk49 = getelementptr inbounds %struct.MT, %struct.MT* %32, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk49, i32 0, i64 %idxprom48
  %arrayidx51 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx50, i32 0, i64 1
  %arrayidx52 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx51, i32 0, i64 0
  %33 = load i32, i32* %arrayidx52, align 4
  %mul53 = mul nsw i32 %30, %33
  %add54 = add nsw i32 %mul44, %mul53
  store i32 %add54, i32* %i3, align 4
  %34 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t55 = getelementptr inbounds %struct.MT, %struct.MT* %34, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t55, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx56, i32 0, i64 0
  %35 = load i32, i32* %arrayidx57, align 4
  %36 = load i32, i32* %sp, align 4
  %idxprom58 = sext i32 %36 to i64
  %37 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk59 = getelementptr inbounds %struct.MT, %struct.MT* %37, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk59, i32 0, i64 %idxprom58
  %arrayidx61 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx60, i32 0, i64 0
  %arrayidx62 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx61, i32 0, i64 1
  %38 = load i32, i32* %arrayidx62, align 4
  %mul63 = mul nsw i32 %35, %38
  %39 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t64 = getelementptr inbounds %struct.MT, %struct.MT* %39, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t64, i32 0, i64 1
  %arrayidx66 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx65, i32 0, i64 1
  %40 = load i32, i32* %arrayidx66, align 4
  %41 = load i32, i32* %sp, align 4
  %idxprom67 = sext i32 %41 to i64
  %42 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk68 = getelementptr inbounds %struct.MT, %struct.MT* %42, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk68, i32 0, i64 %idxprom67
  %arrayidx70 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx69, i32 0, i64 1
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx70, i32 0, i64 1
  %43 = load i32, i32* %arrayidx71, align 4
  %mul72 = mul nsw i32 %40, %43
  %add73 = add nsw i32 %mul63, %mul72
  store i32 %add73, i32* %i4, align 4
  %44 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t74 = getelementptr inbounds %struct.MT, %struct.MT* %44, i32 0, i32 2
  %arrayidx75 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t74, i32 0, i64 2
  %arrayidx76 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx75, i32 0, i64 0
  %45 = load i32, i32* %arrayidx76, align 4
  %46 = load i32, i32* %sp, align 4
  %idxprom77 = sext i32 %46 to i64
  %47 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk78 = getelementptr inbounds %struct.MT, %struct.MT* %47, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk78, i32 0, i64 %idxprom77
  %arrayidx80 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx79, i32 0, i64 0
  %arrayidx81 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx80, i32 0, i64 0
  %48 = load i32, i32* %arrayidx81, align 4
  %mul82 = mul nsw i32 %45, %48
  %49 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t83 = getelementptr inbounds %struct.MT, %struct.MT* %49, i32 0, i32 2
  %arrayidx84 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t83, i32 0, i64 2
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx84, i32 0, i64 1
  %50 = load i32, i32* %arrayidx85, align 4
  %51 = load i32, i32* %sp, align 4
  %idxprom86 = sext i32 %51 to i64
  %52 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk87 = getelementptr inbounds %struct.MT, %struct.MT* %52, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk87, i32 0, i64 %idxprom86
  %arrayidx89 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx88, i32 0, i64 1
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx89, i32 0, i64 0
  %53 = load i32, i32* %arrayidx90, align 4
  %mul91 = mul nsw i32 %50, %53
  %add92 = add nsw i32 %mul82, %mul91
  %54 = load i32, i32* %sp, align 4
  %idxprom93 = sext i32 %54 to i64
  %55 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk94 = getelementptr inbounds %struct.MT, %struct.MT* %55, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk94, i32 0, i64 %idxprom93
  %arrayidx96 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx95, i32 0, i64 2
  %arrayidx97 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx96, i32 0, i64 0
  %56 = load i32, i32* %arrayidx97, align 4
  %add98 = add nsw i32 %add92, %56
  store i32 %add98, i32* %i5, align 4
  %57 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t99 = getelementptr inbounds %struct.MT, %struct.MT* %57, i32 0, i32 2
  %arrayidx100 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t99, i32 0, i64 2
  %arrayidx101 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx100, i32 0, i64 0
  %58 = load i32, i32* %arrayidx101, align 4
  %59 = load i32, i32* %sp, align 4
  %idxprom102 = sext i32 %59 to i64
  %60 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk103 = getelementptr inbounds %struct.MT, %struct.MT* %60, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk103, i32 0, i64 %idxprom102
  %arrayidx105 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx104, i32 0, i64 0
  %arrayidx106 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx105, i32 0, i64 1
  %61 = load i32, i32* %arrayidx106, align 4
  %mul107 = mul nsw i32 %58, %61
  %62 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t108 = getelementptr inbounds %struct.MT, %struct.MT* %62, i32 0, i32 2
  %arrayidx109 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t108, i32 0, i64 2
  %arrayidx110 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx109, i32 0, i64 1
  %63 = load i32, i32* %arrayidx110, align 4
  %64 = load i32, i32* %sp, align 4
  %idxprom111 = sext i32 %64 to i64
  %65 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk112 = getelementptr inbounds %struct.MT, %struct.MT* %65, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk112, i32 0, i64 %idxprom111
  %arrayidx114 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx113, i32 0, i64 1
  %arrayidx115 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx114, i32 0, i64 1
  %66 = load i32, i32* %arrayidx115, align 4
  %mul116 = mul nsw i32 %63, %66
  %add117 = add nsw i32 %mul107, %mul116
  %67 = load i32, i32* %sp, align 4
  %idxprom118 = sext i32 %67 to i64
  %68 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %stk119 = getelementptr inbounds %struct.MT, %struct.MT* %68, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [100 x [3 x [3 x i32]]], [100 x [3 x [3 x i32]]]* %stk119, i32 0, i64 %idxprom118
  %arrayidx121 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %arrayidx120, i32 0, i64 2
  %arrayidx122 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx121, i32 0, i64 1
  %69 = load i32, i32* %arrayidx122, align 4
  %add123 = add nsw i32 %add117, %69
  store i32 %add123, i32* %i6, align 4
  %70 = load i32, i32* %i1, align 4
  %71 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t124 = getelementptr inbounds %struct.MT, %struct.MT* %71, i32 0, i32 2
  %arrayidx125 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t124, i32 0, i64 0
  %arrayidx126 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx125, i32 0, i64 0
  store i32 %70, i32* %arrayidx126, align 4
  %72 = load i32, i32* %i2, align 4
  %73 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t127 = getelementptr inbounds %struct.MT, %struct.MT* %73, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t127, i32 0, i64 0
  %arrayidx129 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx128, i32 0, i64 1
  store i32 %72, i32* %arrayidx129, align 4
  %74 = load i32, i32* %i3, align 4
  %75 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t130 = getelementptr inbounds %struct.MT, %struct.MT* %75, i32 0, i32 2
  %arrayidx131 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t130, i32 0, i64 1
  %arrayidx132 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx131, i32 0, i64 0
  store i32 %74, i32* %arrayidx132, align 4
  %76 = load i32, i32* %i4, align 4
  %77 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t133 = getelementptr inbounds %struct.MT, %struct.MT* %77, i32 0, i32 2
  %arrayidx134 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t133, i32 0, i64 1
  %arrayidx135 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx134, i32 0, i64 1
  store i32 %76, i32* %arrayidx135, align 4
  %78 = load i32, i32* %i5, align 4
  %79 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t136 = getelementptr inbounds %struct.MT, %struct.MT* %79, i32 0, i32 2
  %arrayidx137 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t136, i32 0, i64 2
  %arrayidx138 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx137, i32 0, i64 0
  store i32 %78, i32* %arrayidx138, align 4
  %80 = load i32, i32* %i6, align 4
  %81 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t139 = getelementptr inbounds %struct.MT, %struct.MT* %81, i32 0, i32 2
  %arrayidx140 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t139, i32 0, i64 2
  %arrayidx141 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx140, i32 0, i64 1
  store i32 %80, i32* %arrayidx141, align 4
  %82 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTInvert(%struct.MT* %82)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define i32 @MTDecodeP(%struct.MT* %t, i8** %s) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %struct.MT*, align 8
  %s.addr = alloca i8**, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %tx = alloca i32, align 4
  %ty = alloca i32, align 4
  store %struct.MT* %t, %struct.MT** %t.addr, align 8
  store i8** %s, i8*** %s.addr, align 8
  %0 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %call = call i32 @MTPushP(%struct.MT* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t1 = getelementptr inbounds %struct.MT, %struct.MT* %1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t1, i32 0, i64 0
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 0
  %2 = load i32, i32* %arrayidx2, align 4
  store i32 %2, i32* %a, align 4
  %3 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t3 = getelementptr inbounds %struct.MT, %struct.MT* %3, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t3, i32 0, i64 1
  %arrayidx5 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx4, i32 0, i64 0
  %4 = load i32, i32* %arrayidx5, align 4
  store i32 %4, i32* %b, align 4
  %5 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t6 = getelementptr inbounds %struct.MT, %struct.MT* %5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t6, i32 0, i64 0
  %arrayidx8 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx7, i32 0, i64 1
  %6 = load i32, i32* %arrayidx8, align 4
  store i32 %6, i32* %c, align 4
  %7 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t9 = getelementptr inbounds %struct.MT, %struct.MT* %7, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t9, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx10, i32 0, i64 1
  %8 = load i32, i32* %arrayidx11, align 4
  store i32 %8, i32* %d, align 4
  %9 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t12 = getelementptr inbounds %struct.MT, %struct.MT* %9, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t12, i32 0, i64 2
  %arrayidx14 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx13, i32 0, i64 0
  %10 = load i32, i32* %arrayidx14, align 4
  store i32 %10, i32* %tx, align 4
  %11 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t15 = getelementptr inbounds %struct.MT, %struct.MT* %11, i32 0, i32 2
  %arrayidx16 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t15, i32 0, i64 2
  %arrayidx17 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx16, i32 0, i64 1
  %12 = load i32, i32* %arrayidx17, align 4
  store i32 %12, i32* %ty, align 4
  %13 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTIdentity(%struct.MT* %13)
  %14 = load i32, i32* %a, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %if.end
  %15 = load i32, i32* %b, align 4
  %cmp18 = icmp eq i32 %15, 1
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.30

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %16, 1
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.30

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %17 = load i32, i32* %d, align 4
  %cmp22 = icmp eq i32 %17, 0
  br i1 %cmp22, label %if.then.23, label %if.else.30

if.then.23:                                       ; preds = %land.lhs.true.21
  %18 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTMX(%struct.MT* %18)
  %19 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTRotate(%struct.MT* %19, i32 0, i32 -1)
  %20 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %21 = load i32, i32* %tx, align 4
  %22 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %20, i32 %21, i32 %22)
  %23 = load i32, i32* %tx, align 4
  %cmp24 = icmp ne i32 %23, 0
  br i1 %cmp24, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.23
  %24 = load i32, i32* %ty, align 4
  %cmp25 = icmp ne i32 %24, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %lor.lhs.false, %if.then.23
  %25 = load i32, i32* %tx, align 4
  %26 = load i32, i32* %ty, align 4
  %call27 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %25, i32 %26) #2
  br label %if.end.29

if.else:                                          ; preds = %lor.lhs.false
  %call28 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)) #2
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.26
  br label %if.end.157

if.else.30:                                       ; preds = %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true, %if.end
  %27 = load i32, i32* %a, align 4
  %cmp31 = icmp eq i32 %27, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.else.47

land.lhs.true.32:                                 ; preds = %if.else.30
  %28 = load i32, i32* %b, align 4
  %cmp33 = icmp eq i32 %28, -1
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.47

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %29 = load i32, i32* %c, align 4
  %cmp35 = icmp eq i32 %29, -1
  br i1 %cmp35, label %land.lhs.true.36, label %if.else.47

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %30 = load i32, i32* %d, align 4
  %cmp37 = icmp eq i32 %30, 0
  br i1 %cmp37, label %if.then.38, label %if.else.47

if.then.38:                                       ; preds = %land.lhs.true.36
  %31 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTMX(%struct.MT* %31)
  %32 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTRotate(%struct.MT* %32, i32 0, i32 1)
  %33 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %34 = load i32, i32* %tx, align 4
  %35 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %33, i32 %34, i32 %35)
  %36 = load i32, i32* %tx, align 4
  %cmp39 = icmp ne i32 %36, 0
  br i1 %cmp39, label %if.then.42, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %if.then.38
  %37 = load i32, i32* %ty, align 4
  %cmp41 = icmp ne i32 %37, 0
  br i1 %cmp41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %lor.lhs.false.40, %if.then.38
  %38 = load i32, i32* %tx, align 4
  %39 = load i32, i32* %ty, align 4
  %call43 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i32 %38, i32 %39) #2
  br label %if.end.46

if.else.44:                                       ; preds = %lor.lhs.false.40
  %call45 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #2
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.42
  br label %if.end.156

if.else.47:                                       ; preds = %land.lhs.true.36, %land.lhs.true.34, %land.lhs.true.32, %if.else.30
  %40 = load i32, i32* %a, align 4
  %cmp48 = icmp eq i32 %40, 0
  br i1 %cmp48, label %land.lhs.true.49, label %if.else.64

land.lhs.true.49:                                 ; preds = %if.else.47
  %41 = load i32, i32* %b, align 4
  %cmp50 = icmp eq i32 %41, 1
  br i1 %cmp50, label %land.lhs.true.51, label %if.else.64

land.lhs.true.51:                                 ; preds = %land.lhs.true.49
  %42 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %42, -1
  br i1 %cmp52, label %land.lhs.true.53, label %if.else.64

land.lhs.true.53:                                 ; preds = %land.lhs.true.51
  %43 = load i32, i32* %d, align 4
  %cmp54 = icmp eq i32 %43, 0
  br i1 %cmp54, label %if.then.55, label %if.else.64

if.then.55:                                       ; preds = %land.lhs.true.53
  %44 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTRotate(%struct.MT* %44, i32 0, i32 -1)
  %45 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %46 = load i32, i32* %tx, align 4
  %47 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %45, i32 %46, i32 %47)
  %48 = load i32, i32* %tx, align 4
  %cmp56 = icmp ne i32 %48, 0
  br i1 %cmp56, label %if.then.59, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.then.55
  %49 = load i32, i32* %ty, align 4
  %cmp58 = icmp ne i32 %49, 0
  br i1 %cmp58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %lor.lhs.false.57, %if.then.55
  %50 = load i32, i32* %tx, align 4
  %51 = load i32, i32* %ty, align 4
  %call60 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %50, i32 %51) #2
  br label %if.end.63

if.else.61:                                       ; preds = %lor.lhs.false.57
  %call62 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #2
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.155

if.else.64:                                       ; preds = %land.lhs.true.53, %land.lhs.true.51, %land.lhs.true.49, %if.else.47
  %52 = load i32, i32* %a, align 4
  %cmp65 = icmp eq i32 %52, 0
  br i1 %cmp65, label %land.lhs.true.66, label %if.else.81

land.lhs.true.66:                                 ; preds = %if.else.64
  %53 = load i32, i32* %b, align 4
  %cmp67 = icmp eq i32 %53, -1
  br i1 %cmp67, label %land.lhs.true.68, label %if.else.81

land.lhs.true.68:                                 ; preds = %land.lhs.true.66
  %54 = load i32, i32* %c, align 4
  %cmp69 = icmp eq i32 %54, 1
  br i1 %cmp69, label %land.lhs.true.70, label %if.else.81

land.lhs.true.70:                                 ; preds = %land.lhs.true.68
  %55 = load i32, i32* %d, align 4
  %cmp71 = icmp eq i32 %55, 0
  br i1 %cmp71, label %if.then.72, label %if.else.81

if.then.72:                                       ; preds = %land.lhs.true.70
  %56 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTRotate(%struct.MT* %56, i32 0, i32 1)
  %57 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %58 = load i32, i32* %tx, align 4
  %59 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %57, i32 %58, i32 %59)
  %60 = load i32, i32* %tx, align 4
  %cmp73 = icmp ne i32 %60, 0
  br i1 %cmp73, label %if.then.76, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.then.72
  %61 = load i32, i32* %ty, align 4
  %cmp75 = icmp ne i32 %61, 0
  br i1 %cmp75, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %lor.lhs.false.74, %if.then.72
  %62 = load i32, i32* %tx, align 4
  %63 = load i32, i32* %ty, align 4
  %call77 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 %62, i32 %63) #2
  br label %if.end.80

if.else.78:                                       ; preds = %lor.lhs.false.74
  %call79 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0)) #2
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.76
  br label %if.end.154

if.else.81:                                       ; preds = %land.lhs.true.70, %land.lhs.true.68, %land.lhs.true.66, %if.else.64
  %64 = load i32, i32* %a, align 4
  %cmp82 = icmp eq i32 %64, 1
  br i1 %cmp82, label %land.lhs.true.83, label %if.else.97

land.lhs.true.83:                                 ; preds = %if.else.81
  %65 = load i32, i32* %b, align 4
  %cmp84 = icmp eq i32 %65, 0
  br i1 %cmp84, label %land.lhs.true.85, label %if.else.97

land.lhs.true.85:                                 ; preds = %land.lhs.true.83
  %66 = load i32, i32* %c, align 4
  %cmp86 = icmp eq i32 %66, 0
  br i1 %cmp86, label %land.lhs.true.87, label %if.else.97

land.lhs.true.87:                                 ; preds = %land.lhs.true.85
  %67 = load i32, i32* %d, align 4
  %cmp88 = icmp eq i32 %67, 1
  br i1 %cmp88, label %if.then.89, label %if.else.97

if.then.89:                                       ; preds = %land.lhs.true.87
  %68 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %69 = load i32, i32* %tx, align 4
  %70 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %68, i32 %69, i32 %70)
  %71 = load i32, i32* %tx, align 4
  %cmp90 = icmp ne i32 %71, 0
  br i1 %cmp90, label %if.then.93, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.then.89
  %72 = load i32, i32* %ty, align 4
  %cmp92 = icmp ne i32 %72, 0
  br i1 %cmp92, label %if.then.93, label %if.else.95

if.then.93:                                       ; preds = %lor.lhs.false.91, %if.then.89
  %73 = load i32, i32* %tx, align 4
  %74 = load i32, i32* %ty, align 4
  %call94 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %73, i32 %74) #2
  br label %if.end.96

if.else.95:                                       ; preds = %lor.lhs.false.91
  store i8 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i64 0), align 1
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.95, %if.then.93
  br label %if.end.153

if.else.97:                                       ; preds = %land.lhs.true.87, %land.lhs.true.85, %land.lhs.true.83, %if.else.81
  %75 = load i32, i32* %a, align 4
  %cmp98 = icmp eq i32 %75, -1
  br i1 %cmp98, label %land.lhs.true.99, label %if.else.114

land.lhs.true.99:                                 ; preds = %if.else.97
  %76 = load i32, i32* %b, align 4
  %cmp100 = icmp eq i32 %76, 0
  br i1 %cmp100, label %land.lhs.true.101, label %if.else.114

land.lhs.true.101:                                ; preds = %land.lhs.true.99
  %77 = load i32, i32* %c, align 4
  %cmp102 = icmp eq i32 %77, 0
  br i1 %cmp102, label %land.lhs.true.103, label %if.else.114

land.lhs.true.103:                                ; preds = %land.lhs.true.101
  %78 = load i32, i32* %d, align 4
  %cmp104 = icmp eq i32 %78, -1
  br i1 %cmp104, label %if.then.105, label %if.else.114

if.then.105:                                      ; preds = %land.lhs.true.103
  %79 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTRotate(%struct.MT* %79, i32 -1, i32 0)
  %80 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %81 = load i32, i32* %tx, align 4
  %82 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %80, i32 %81, i32 %82)
  %83 = load i32, i32* %tx, align 4
  %cmp106 = icmp ne i32 %83, 0
  br i1 %cmp106, label %if.then.109, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.then.105
  %84 = load i32, i32* %ty, align 4
  %cmp108 = icmp ne i32 %84, 0
  br i1 %cmp108, label %if.then.109, label %if.else.111

if.then.109:                                      ; preds = %lor.lhs.false.107, %if.then.105
  %85 = load i32, i32* %tx, align 4
  %86 = load i32, i32* %ty, align 4
  %call110 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), i32 %85, i32 %86) #2
  br label %if.end.113

if.else.111:                                      ; preds = %lor.lhs.false.107
  %call112 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #2
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.111, %if.then.109
  br label %if.end.152

if.else.114:                                      ; preds = %land.lhs.true.103, %land.lhs.true.101, %land.lhs.true.99, %if.else.97
  %87 = load i32, i32* %a, align 4
  %cmp115 = icmp eq i32 %87, -1
  br i1 %cmp115, label %land.lhs.true.116, label %if.else.131

land.lhs.true.116:                                ; preds = %if.else.114
  %88 = load i32, i32* %b, align 4
  %cmp117 = icmp eq i32 %88, 0
  br i1 %cmp117, label %land.lhs.true.118, label %if.else.131

land.lhs.true.118:                                ; preds = %land.lhs.true.116
  %89 = load i32, i32* %c, align 4
  %cmp119 = icmp eq i32 %89, 0
  br i1 %cmp119, label %land.lhs.true.120, label %if.else.131

land.lhs.true.120:                                ; preds = %land.lhs.true.118
  %90 = load i32, i32* %d, align 4
  %cmp121 = icmp eq i32 %90, 1
  br i1 %cmp121, label %if.then.122, label %if.else.131

if.then.122:                                      ; preds = %land.lhs.true.120
  %91 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTMX(%struct.MT* %91)
  %92 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %93 = load i32, i32* %tx, align 4
  %94 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %92, i32 %93, i32 %94)
  %95 = load i32, i32* %tx, align 4
  %cmp123 = icmp ne i32 %95, 0
  br i1 %cmp123, label %if.then.126, label %lor.lhs.false.124

lor.lhs.false.124:                                ; preds = %if.then.122
  %96 = load i32, i32* %ty, align 4
  %cmp125 = icmp ne i32 %96, 0
  br i1 %cmp125, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %lor.lhs.false.124, %if.then.122
  %97 = load i32, i32* %tx, align 4
  %98 = load i32, i32* %ty, align 4
  %call127 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %97, i32 %98) #2
  br label %if.end.130

if.else.128:                                      ; preds = %lor.lhs.false.124
  %call129 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0)) #2
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.128, %if.then.126
  br label %if.end.151

if.else.131:                                      ; preds = %land.lhs.true.120, %land.lhs.true.118, %land.lhs.true.116, %if.else.114
  %99 = load i32, i32* %a, align 4
  %cmp132 = icmp eq i32 %99, 1
  br i1 %cmp132, label %land.lhs.true.133, label %if.else.148

land.lhs.true.133:                                ; preds = %if.else.131
  %100 = load i32, i32* %b, align 4
  %cmp134 = icmp eq i32 %100, 0
  br i1 %cmp134, label %land.lhs.true.135, label %if.else.148

land.lhs.true.135:                                ; preds = %land.lhs.true.133
  %101 = load i32, i32* %c, align 4
  %cmp136 = icmp eq i32 %101, 0
  br i1 %cmp136, label %land.lhs.true.137, label %if.else.148

land.lhs.true.137:                                ; preds = %land.lhs.true.135
  %102 = load i32, i32* %d, align 4
  %cmp138 = icmp eq i32 %102, -1
  br i1 %cmp138, label %if.then.139, label %if.else.148

if.then.139:                                      ; preds = %land.lhs.true.137
  %103 = load %struct.MT*, %struct.MT** %t.addr, align 8
  call void @MTMY(%struct.MT* %103)
  %104 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %105 = load i32, i32* %tx, align 4
  %106 = load i32, i32* %ty, align 4
  call void @MTTranslate(%struct.MT* %104, i32 %105, i32 %106)
  %107 = load i32, i32* %tx, align 4
  %cmp140 = icmp ne i32 %107, 0
  br i1 %cmp140, label %if.then.143, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %if.then.139
  %108 = load i32, i32* %ty, align 4
  %cmp142 = icmp ne i32 %108, 0
  br i1 %cmp142, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %lor.lhs.false.141, %if.then.139
  %109 = load i32, i32* %tx, align 4
  %110 = load i32, i32* %ty, align 4
  %call144 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 %109, i32 %110) #2
  br label %if.end.147

if.else.145:                                      ; preds = %lor.lhs.false.141
  %call146 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0)) #2
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.145, %if.then.143
  br label %if.end.150

if.else.148:                                      ; preds = %land.lhs.true.137, %land.lhs.true.135, %land.lhs.true.133, %if.else.131
  %111 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %call149 = call i32 @MTPopP(%struct.MT* %111)
  store i32 0, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.end.147
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %if.end.130
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %if.end.113
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.96
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %if.end.80
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.154, %if.end.63
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.155, %if.end.46
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %if.end.29
  %112 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t158 = getelementptr inbounds %struct.MT, %struct.MT* %112, i32 0, i32 2
  %arrayidx159 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t158, i32 0, i64 0
  %arrayidx160 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx159, i32 0, i64 0
  %113 = load i32, i32* %arrayidx160, align 4
  %114 = load i32, i32* %a, align 4
  %cmp161 = icmp eq i32 %113, %114
  br i1 %cmp161, label %land.lhs.true.162, label %if.else.179

land.lhs.true.162:                                ; preds = %if.end.157
  %115 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t163 = getelementptr inbounds %struct.MT, %struct.MT* %115, i32 0, i32 2
  %arrayidx164 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t163, i32 0, i64 0
  %arrayidx165 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx164, i32 0, i64 1
  %116 = load i32, i32* %arrayidx165, align 4
  %117 = load i32, i32* %c, align 4
  %cmp166 = icmp eq i32 %116, %117
  br i1 %cmp166, label %land.lhs.true.167, label %if.else.179

land.lhs.true.167:                                ; preds = %land.lhs.true.162
  %118 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t168 = getelementptr inbounds %struct.MT, %struct.MT* %118, i32 0, i32 2
  %arrayidx169 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t168, i32 0, i64 1
  %arrayidx170 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx169, i32 0, i64 0
  %119 = load i32, i32* %arrayidx170, align 4
  %120 = load i32, i32* %b, align 4
  %cmp171 = icmp eq i32 %119, %120
  br i1 %cmp171, label %land.lhs.true.172, label %if.else.179

land.lhs.true.172:                                ; preds = %land.lhs.true.167
  %121 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %t173 = getelementptr inbounds %struct.MT, %struct.MT* %121, i32 0, i32 2
  %arrayidx174 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* %t173, i32 0, i64 1
  %arrayidx175 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx174, i32 0, i64 1
  %122 = load i32, i32* %arrayidx175, align 4
  %123 = load i32, i32* %d, align 4
  %cmp176 = icmp eq i32 %122, %123
  br i1 %cmp176, label %if.then.177, label %if.else.179

if.then.177:                                      ; preds = %land.lhs.true.172
  %124 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %call178 = call i32 @MTPopP(%struct.MT* %124)
  %125 = load i8**, i8*** %s.addr, align 8
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @MTDecodeP.cif, i32 0, i32 0), i8** %125, align 8
  store i32 1, i32* %retval
  br label %return

if.else.179:                                      ; preds = %land.lhs.true.172, %land.lhs.true.167, %land.lhs.true.162, %if.end.157
  %126 = load %struct.MT*, %struct.MT** %t.addr, align 8
  %call180 = call i32 @MTPopP(%struct.MT* %126)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.179, %if.then.177, %if.else.148, %if.then
  %127 = load i32, i32* %retval
  ret i32 %127
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
