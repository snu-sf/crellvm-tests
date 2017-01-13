; ModuleID = './MultiSource.Benchmarks.McCat/21.09-vor.vor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Knode = type { %struct.point, i32, i32, i32 }
%struct.point = type { i32, i32 }
%struct.Enode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.CHsplay_node = type { %struct.CHsplay_element, %struct.CHsplay_node*, %struct.CHsplay_node*, %struct.CHsplay_node* }
%struct.CHsplay_element = type { %struct.key, %struct.CHpoints* }
%struct.key = type { double, double, i32 }
%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.dpoint = type { double, double }

@CHno = global i32 0, align 4
@Kcount = global i32 1, align 4
@Ecount = global i32 1, align 4
@K = common global %struct.Knode* null, align 8
@E = common global %struct.Enode* null, align 8
@Splaytree = common global %struct.splay_node* null, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error: Can't intersect\0A\00", align 1
@CHSplaytree = common global %struct.CHsplay_node* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"The center is (%d,%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"The radius is %9.2f\0A\00", align 1
@S = common global %struct.CHpoints* null, align 8
@default_radius = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @clean_up() #0 {
entry:
  %0 = load %struct.Knode*, %struct.Knode** @K, align 8
  %1 = bitcast %struct.Knode* %0 to i8*
  call void @free(i8* %1) #3
  %2 = load %struct.Enode*, %struct.Enode** @E, align 8
  %3 = bitcast %struct.Enode* %2 to i8*
  call void @free(i8* %3) #3
  store i32 1, i32* @Kcount, align 4
  store i32 1, i32* @Ecount, align 4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @getpoint(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %p = alloca %struct.point, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %x1 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  store i32 %0, i32* %x1, align 4
  %1 = load i32, i32* %y.addr, align 4
  %y2 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  store i32 %1, i32* %y2, align 4
  %2 = bitcast %struct.point* %p to i64*
  %3 = load i64, i64* %2, align 4
  %call = call i8* @insert(%struct.splay_node** @Splaytree, i64 %3)
  ret void
}

declare i8* @insert(%struct.splay_node**, i64) #2

; Function Attrs: nounwind uwtable
define void @get_file() #0 {
entry:
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %no_p = alloca i32, align 4
  %call = call %struct.splay_node* @init()
  store %struct.splay_node* %call, %struct.splay_node** @Splaytree, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32* %no_p)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %no_p, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32* %x, i32* %y)
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %y, align 4
  call void @getpoint(i32 %4, i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.splay_node* @init() #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @add_point(i64 %p.coerce) #0 {
entry:
  %p = alloca %struct.point, align 8
  %0 = bitcast %struct.point* %p to i64*
  store i64 %p.coerce, i64* %0, align 8
  %1 = load i32, i32* @Kcount, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx = getelementptr inbounds %struct.Knode, %struct.Knode* %2, i64 %idxprom
  %p1 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx, i32 0, i32 0
  %3 = bitcast %struct.point* %p1 to i8*
  %4 = bitcast %struct.point* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %4, i64 8, i32 4, i1 false)
  %5 = load i32, i32* @Kcount, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx3 = getelementptr inbounds %struct.Knode, %struct.Knode* %6, i64 %idxprom2
  %e1 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx3, i32 0, i32 1
  store i32 0, i32* %e1, align 4
  %7 = load i32, i32* @Kcount, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx5 = getelementptr inbounds %struct.Knode, %struct.Knode* %8, i64 %idxprom4
  %e2 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx5, i32 0, i32 2
  store i32 0, i32* %e2, align 4
  %9 = load i32, i32* @Kcount, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx7 = getelementptr inbounds %struct.Knode, %struct.Knode* %10, i64 %idxprom6
  %e3 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx7, i32 0, i32 3
  store i32 0, i32* %e3, align 4
  %11 = load i32, i32* @Kcount, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* @Kcount, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i64 @compute_v(%struct.CHpoints* %P) #0 {
entry:
  %retval = alloca %struct.point, align 4
  %P.addr = alloca %struct.CHpoints*, align 8
  %An = alloca %struct.point, align 4
  %Bn = alloca %struct.point, align 4
  %Cn = alloca %struct.point, align 4
  %Dn = alloca %struct.point, align 4
  %n = alloca %struct.point, align 4
  %c = alloca double, align 8
  %i = alloca %struct.point, align 4
  %di = alloca %struct.dpoint, align 8
  %p = alloca %struct.point, align 4
  %np = alloca %struct.point, align 4
  %minX = alloca double, align 8
  %minY = alloca double, align 8
  %maxX = alloca double, align 8
  %maxY = alloca double, align 8
  %coerce = alloca %struct.point, align 4
  %agg.tmp = alloca %struct.dpoint, align 8
  %coerce17 = alloca %struct.dpoint, align 8
  %coerce24 = alloca %struct.dpoint, align 8
  %coerce34 = alloca %struct.dpoint, align 8
  %coerce45 = alloca %struct.dpoint, align 8
  %coerce53 = alloca %struct.dpoint, align 8
  %coerce65 = alloca %struct.dpoint, align 8
  %coerce76 = alloca %struct.dpoint, align 8
  %coerce87 = alloca %struct.dpoint, align 8
  %coerce95 = alloca %struct.dpoint, align 8
  %coerce107 = alloca %struct.dpoint, align 8
  %coerce118 = alloca %struct.dpoint, align 8
  %coerce126 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %P, %struct.CHpoints** %P.addr, align 8
  store double -1.000000e+04, double* %minX, align 8
  store double -1.000000e+04, double* %minY, align 8
  store double 1.000000e+04, double* %maxX, align 8
  store double 1.000000e+04, double* %maxY, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %An, i32 0, i32 0
  store i32 1, i32* %x, align 4
  %y = getelementptr inbounds %struct.point, %struct.point* %An, i32 0, i32 1
  store i32 0, i32* %y, align 4
  %x1 = getelementptr inbounds %struct.point, %struct.point* %Bn, i32 0, i32 0
  store i32 0, i32* %x1, align 4
  %y2 = getelementptr inbounds %struct.point, %struct.point* %Bn, i32 0, i32 1
  store i32 1, i32* %y2, align 4
  %x3 = getelementptr inbounds %struct.point, %struct.point* %Cn, i32 0, i32 0
  store i32 1, i32* %x3, align 4
  %y4 = getelementptr inbounds %struct.point, %struct.point* %Cn, i32 0, i32 1
  store i32 0, i32* %y4, align 4
  %x5 = getelementptr inbounds %struct.point, %struct.point* %Dn, i32 0, i32 0
  store i32 0, i32* %x5, align 4
  %y6 = getelementptr inbounds %struct.point, %struct.point* %Dn, i32 0, i32 1
  store i32 1, i32* %y6, align 4
  %0 = load %struct.CHpoints*, %struct.CHpoints** %P.addr, align 8
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %0, i32 0, i32 1
  %1 = bitcast %struct.point* %p to i8*
  %2 = bitcast %struct.point* %node to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* %2, i64 8, i32 4, i1 false)
  %3 = load %struct.CHpoints*, %struct.CHpoints** %P.addr, align 8
  %call = call %struct.CHpoints* @next(%struct.CHpoints* %3)
  %node7 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call, i32 0, i32 1
  %4 = bitcast %struct.point* %np to i8*
  %5 = bitcast %struct.point* %node7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 8, i32 4, i1 false)
  %6 = bitcast %struct.point* %p to i64*
  %7 = load i64, i64* %6, align 4
  %8 = bitcast %struct.point* %np to i64*
  %9 = load i64, i64* %8, align 4
  %call8 = call i64 @vector(i64 %7, i64 %9)
  %10 = bitcast %struct.point* %coerce to i64*
  store i64 %call8, i64* %10, align 4
  %11 = bitcast %struct.point* %n to i8*
  %12 = bitcast %struct.point* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 4, i1 false)
  %13 = bitcast %struct.point* %p to i64*
  %14 = load i64, i64* %13, align 4
  %15 = bitcast %struct.point* %np to i64*
  %16 = load i64, i64* %15, align 4
  %call9 = call { double, double } @midpoint(i64 %14, i64 %16)
  %17 = bitcast %struct.dpoint* %agg.tmp to { double, double }*
  %18 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 0
  %19 = extractvalue { double, double } %call9, 0
  store double %19, double* %18, align 8
  %20 = getelementptr { double, double }, { double, double }* %17, i32 0, i32 1
  %21 = extractvalue { double, double } %call9, 1
  store double %21, double* %20, align 8
  %22 = bitcast %struct.point* %n to i64*
  %23 = load i64, i64* %22, align 4
  %24 = bitcast %struct.dpoint* %agg.tmp to { double, double }*
  %25 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 0
  %26 = load double, double* %25, align 1
  %27 = getelementptr { double, double }, { double, double }* %24, i32 0, i32 1
  %28 = load double, double* %27, align 1
  %call10 = call double @calculate_c(i64 %23, double %26, double %28)
  store double %call10, double* %c, align 8
  %x11 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %29 = load i32, i32* %x11, align 4
  %x12 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %30 = load i32, i32* %x12, align 4
  %cmp = icmp slt i32 %29, %30
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %y13 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %31 = load i32, i32* %y13, align 4
  %y14 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %32 = load i32, i32* %y14, align 4
  %cmp15 = icmp slt i32 %31, %32
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %33 = load double, double* %c, align 8
  %34 = load double, double* %maxY, align 8
  %35 = bitcast %struct.point* %n to i64*
  %36 = load i64, i64* %35, align 4
  %37 = bitcast %struct.point* %Dn to i64*
  %38 = load i64, i64* %37, align 4
  %call16 = call { double, double } @intersect(i64 %36, i64 %38, double %33, double %34)
  %39 = bitcast %struct.dpoint* %coerce17 to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %call16, 0
  store double %41, double* %40, align 8
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %call16, 1
  store double %43, double* %42, align 8
  %44 = bitcast %struct.dpoint* %di to i8*
  %45 = bitcast %struct.dpoint* %coerce17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false)
  %46 = load double, double* %minX, align 8
  %x18 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %47 = load double, double* %x18, align 8
  %cmp19 = fcmp ogt double %46, %47
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %x20 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %48 = load double, double* %x20, align 8
  %49 = load double, double* %maxX, align 8
  %cmp21 = fcmp ogt double %48, %49
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %lor.lhs.false, %if.then
  %50 = load double, double* %c, align 8
  %51 = load double, double* %minX, align 8
  %52 = bitcast %struct.point* %n to i64*
  %53 = load i64, i64* %52, align 4
  %54 = bitcast %struct.point* %An to i64*
  %55 = load i64, i64* %54, align 4
  %call23 = call { double, double } @intersect(i64 %53, i64 %55, double %50, double %51)
  %56 = bitcast %struct.dpoint* %coerce24 to { double, double }*
  %57 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 0
  %58 = extractvalue { double, double } %call23, 0
  store double %58, double* %57, align 8
  %59 = getelementptr { double, double }, { double, double }* %56, i32 0, i32 1
  %60 = extractvalue { double, double } %call23, 1
  store double %60, double* %59, align 8
  %61 = bitcast %struct.dpoint* %di to i8*
  %62 = bitcast %struct.dpoint* %coerce24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %lor.lhs.false
  br label %if.end.137

if.else:                                          ; preds = %land.lhs.true, %entry
  %x25 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %63 = load i32, i32* %x25, align 4
  %x26 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %64 = load i32, i32* %x26, align 4
  %cmp27 = icmp slt i32 %63, %64
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.35

land.lhs.true.28:                                 ; preds = %if.else
  %y29 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %65 = load i32, i32* %y29, align 4
  %y30 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %66 = load i32, i32* %y30, align 4
  %cmp31 = icmp eq i32 %65, %66
  br i1 %cmp31, label %if.then.32, label %if.else.35

if.then.32:                                       ; preds = %land.lhs.true.28
  %67 = load double, double* %c, align 8
  %68 = load double, double* %maxY, align 8
  %69 = bitcast %struct.point* %n to i64*
  %70 = load i64, i64* %69, align 4
  %71 = bitcast %struct.point* %Dn to i64*
  %72 = load i64, i64* %71, align 4
  %call33 = call { double, double } @intersect(i64 %70, i64 %72, double %67, double %68)
  %73 = bitcast %struct.dpoint* %coerce34 to { double, double }*
  %74 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 0
  %75 = extractvalue { double, double } %call33, 0
  store double %75, double* %74, align 8
  %76 = getelementptr { double, double }, { double, double }* %73, i32 0, i32 1
  %77 = extractvalue { double, double } %call33, 1
  store double %77, double* %76, align 8
  %78 = bitcast %struct.dpoint* %di to i8*
  %79 = bitcast %struct.dpoint* %coerce34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %78, i8* %79, i64 16, i32 8, i1 false)
  br label %if.end.136

if.else.35:                                       ; preds = %land.lhs.true.28, %if.else
  %x36 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %80 = load i32, i32* %x36, align 4
  %x37 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %81 = load i32, i32* %x37, align 4
  %cmp38 = icmp slt i32 %80, %81
  br i1 %cmp38, label %land.lhs.true.39, label %if.else.55

land.lhs.true.39:                                 ; preds = %if.else.35
  %y40 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %82 = load i32, i32* %y40, align 4
  %y41 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %83 = load i32, i32* %y41, align 4
  %cmp42 = icmp sgt i32 %82, %83
  br i1 %cmp42, label %if.then.43, label %if.else.55

if.then.43:                                       ; preds = %land.lhs.true.39
  %84 = load double, double* %c, align 8
  %85 = load double, double* %maxY, align 8
  %86 = bitcast %struct.point* %n to i64*
  %87 = load i64, i64* %86, align 4
  %88 = bitcast %struct.point* %Dn to i64*
  %89 = load i64, i64* %88, align 4
  %call44 = call { double, double } @intersect(i64 %87, i64 %89, double %84, double %85)
  %90 = bitcast %struct.dpoint* %coerce45 to { double, double }*
  %91 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 0
  %92 = extractvalue { double, double } %call44, 0
  store double %92, double* %91, align 8
  %93 = getelementptr { double, double }, { double, double }* %90, i32 0, i32 1
  %94 = extractvalue { double, double } %call44, 1
  store double %94, double* %93, align 8
  %95 = bitcast %struct.dpoint* %di to i8*
  %96 = bitcast %struct.dpoint* %coerce45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %95, i8* %96, i64 16, i32 8, i1 false)
  %97 = load double, double* %minX, align 8
  %x46 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %98 = load double, double* %x46, align 8
  %cmp47 = fcmp ogt double %97, %98
  br i1 %cmp47, label %if.then.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %if.then.43
  %x49 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %99 = load double, double* %x49, align 8
  %100 = load double, double* %maxX, align 8
  %cmp50 = fcmp ogt double %99, %100
  br i1 %cmp50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %lor.lhs.false.48, %if.then.43
  %101 = load double, double* %c, align 8
  %102 = load double, double* %maxX, align 8
  %103 = bitcast %struct.point* %n to i64*
  %104 = load i64, i64* %103, align 4
  %105 = bitcast %struct.point* %Cn to i64*
  %106 = load i64, i64* %105, align 4
  %call52 = call { double, double } @intersect(i64 %104, i64 %106, double %101, double %102)
  %107 = bitcast %struct.dpoint* %coerce53 to { double, double }*
  %108 = getelementptr { double, double }, { double, double }* %107, i32 0, i32 0
  %109 = extractvalue { double, double } %call52, 0
  store double %109, double* %108, align 8
  %110 = getelementptr { double, double }, { double, double }* %107, i32 0, i32 1
  %111 = extractvalue { double, double } %call52, 1
  store double %111, double* %110, align 8
  %112 = bitcast %struct.dpoint* %di to i8*
  %113 = bitcast %struct.dpoint* %coerce53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %112, i8* %113, i64 16, i32 8, i1 false)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %lor.lhs.false.48
  br label %if.end.135

if.else.55:                                       ; preds = %land.lhs.true.39, %if.else.35
  %x56 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %114 = load i32, i32* %x56, align 4
  %x57 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %115 = load i32, i32* %x57, align 4
  %cmp58 = icmp eq i32 %114, %115
  br i1 %cmp58, label %land.lhs.true.59, label %if.else.66

land.lhs.true.59:                                 ; preds = %if.else.55
  %y60 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %116 = load i32, i32* %y60, align 4
  %y61 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %117 = load i32, i32* %y61, align 4
  %cmp62 = icmp slt i32 %116, %117
  br i1 %cmp62, label %if.then.63, label %if.else.66

if.then.63:                                       ; preds = %land.lhs.true.59
  %118 = load double, double* %c, align 8
  %119 = load double, double* %minX, align 8
  %120 = bitcast %struct.point* %n to i64*
  %121 = load i64, i64* %120, align 4
  %122 = bitcast %struct.point* %An to i64*
  %123 = load i64, i64* %122, align 4
  %call64 = call { double, double } @intersect(i64 %121, i64 %123, double %118, double %119)
  %124 = bitcast %struct.dpoint* %coerce65 to { double, double }*
  %125 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 0
  %126 = extractvalue { double, double } %call64, 0
  store double %126, double* %125, align 8
  %127 = getelementptr { double, double }, { double, double }* %124, i32 0, i32 1
  %128 = extractvalue { double, double } %call64, 1
  store double %128, double* %127, align 8
  %129 = bitcast %struct.dpoint* %di to i8*
  %130 = bitcast %struct.dpoint* %coerce65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 16, i32 8, i1 false)
  br label %if.end.134

if.else.66:                                       ; preds = %land.lhs.true.59, %if.else.55
  %x67 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %131 = load i32, i32* %x67, align 4
  %x68 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %132 = load i32, i32* %x68, align 4
  %cmp69 = icmp eq i32 %131, %132
  br i1 %cmp69, label %land.lhs.true.70, label %if.else.77

land.lhs.true.70:                                 ; preds = %if.else.66
  %y71 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %133 = load i32, i32* %y71, align 4
  %y72 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %134 = load i32, i32* %y72, align 4
  %cmp73 = icmp sgt i32 %133, %134
  br i1 %cmp73, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %land.lhs.true.70
  %135 = load double, double* %c, align 8
  %136 = load double, double* %maxX, align 8
  %137 = bitcast %struct.point* %n to i64*
  %138 = load i64, i64* %137, align 4
  %139 = bitcast %struct.point* %Cn to i64*
  %140 = load i64, i64* %139, align 4
  %call75 = call { double, double } @intersect(i64 %138, i64 %140, double %135, double %136)
  %141 = bitcast %struct.dpoint* %coerce76 to { double, double }*
  %142 = getelementptr { double, double }, { double, double }* %141, i32 0, i32 0
  %143 = extractvalue { double, double } %call75, 0
  store double %143, double* %142, align 8
  %144 = getelementptr { double, double }, { double, double }* %141, i32 0, i32 1
  %145 = extractvalue { double, double } %call75, 1
  store double %145, double* %144, align 8
  %146 = bitcast %struct.dpoint* %di to i8*
  %147 = bitcast %struct.dpoint* %coerce76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %146, i8* %147, i64 16, i32 8, i1 false)
  br label %if.end.133

if.else.77:                                       ; preds = %land.lhs.true.70, %if.else.66
  %x78 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %148 = load i32, i32* %x78, align 4
  %x79 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %149 = load i32, i32* %x79, align 4
  %cmp80 = icmp sgt i32 %148, %149
  br i1 %cmp80, label %land.lhs.true.81, label %if.else.97

land.lhs.true.81:                                 ; preds = %if.else.77
  %y82 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %150 = load i32, i32* %y82, align 4
  %y83 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %151 = load i32, i32* %y83, align 4
  %cmp84 = icmp slt i32 %150, %151
  br i1 %cmp84, label %if.then.85, label %if.else.97

if.then.85:                                       ; preds = %land.lhs.true.81
  %152 = load double, double* %c, align 8
  %153 = load double, double* %minY, align 8
  %154 = bitcast %struct.point* %n to i64*
  %155 = load i64, i64* %154, align 4
  %156 = bitcast %struct.point* %Bn to i64*
  %157 = load i64, i64* %156, align 4
  %call86 = call { double, double } @intersect(i64 %155, i64 %157, double %152, double %153)
  %158 = bitcast %struct.dpoint* %coerce87 to { double, double }*
  %159 = getelementptr { double, double }, { double, double }* %158, i32 0, i32 0
  %160 = extractvalue { double, double } %call86, 0
  store double %160, double* %159, align 8
  %161 = getelementptr { double, double }, { double, double }* %158, i32 0, i32 1
  %162 = extractvalue { double, double } %call86, 1
  store double %162, double* %161, align 8
  %163 = bitcast %struct.dpoint* %di to i8*
  %164 = bitcast %struct.dpoint* %coerce87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %163, i8* %164, i64 16, i32 8, i1 false)
  %165 = load double, double* %minX, align 8
  %x88 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %166 = load double, double* %x88, align 8
  %cmp89 = fcmp ogt double %165, %166
  br i1 %cmp89, label %if.then.93, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %if.then.85
  %x91 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %167 = load double, double* %x91, align 8
  %168 = load double, double* %maxX, align 8
  %cmp92 = fcmp ogt double %167, %168
  br i1 %cmp92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %lor.lhs.false.90, %if.then.85
  %169 = load double, double* %c, align 8
  %170 = load double, double* %minX, align 8
  %171 = bitcast %struct.point* %n to i64*
  %172 = load i64, i64* %171, align 4
  %173 = bitcast %struct.point* %An to i64*
  %174 = load i64, i64* %173, align 4
  %call94 = call { double, double } @intersect(i64 %172, i64 %174, double %169, double %170)
  %175 = bitcast %struct.dpoint* %coerce95 to { double, double }*
  %176 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 0
  %177 = extractvalue { double, double } %call94, 0
  store double %177, double* %176, align 8
  %178 = getelementptr { double, double }, { double, double }* %175, i32 0, i32 1
  %179 = extractvalue { double, double } %call94, 1
  store double %179, double* %178, align 8
  %180 = bitcast %struct.dpoint* %di to i8*
  %181 = bitcast %struct.dpoint* %coerce95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %180, i8* %181, i64 16, i32 8, i1 false)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %lor.lhs.false.90
  br label %if.end.132

if.else.97:                                       ; preds = %land.lhs.true.81, %if.else.77
  %x98 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %182 = load i32, i32* %x98, align 4
  %x99 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %183 = load i32, i32* %x99, align 4
  %cmp100 = icmp sgt i32 %182, %183
  br i1 %cmp100, label %land.lhs.true.101, label %if.else.108

land.lhs.true.101:                                ; preds = %if.else.97
  %y102 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %184 = load i32, i32* %y102, align 4
  %y103 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %185 = load i32, i32* %y103, align 4
  %cmp104 = icmp eq i32 %184, %185
  br i1 %cmp104, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %land.lhs.true.101
  %186 = load double, double* %c, align 8
  %187 = load double, double* %minY, align 8
  %188 = bitcast %struct.point* %n to i64*
  %189 = load i64, i64* %188, align 4
  %190 = bitcast %struct.point* %Bn to i64*
  %191 = load i64, i64* %190, align 4
  %call106 = call { double, double } @intersect(i64 %189, i64 %191, double %186, double %187)
  %192 = bitcast %struct.dpoint* %coerce107 to { double, double }*
  %193 = getelementptr { double, double }, { double, double }* %192, i32 0, i32 0
  %194 = extractvalue { double, double } %call106, 0
  store double %194, double* %193, align 8
  %195 = getelementptr { double, double }, { double, double }* %192, i32 0, i32 1
  %196 = extractvalue { double, double } %call106, 1
  store double %196, double* %195, align 8
  %197 = bitcast %struct.dpoint* %di to i8*
  %198 = bitcast %struct.dpoint* %coerce107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %197, i8* %198, i64 16, i32 8, i1 false)
  br label %if.end.131

if.else.108:                                      ; preds = %land.lhs.true.101, %if.else.97
  %x109 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 0
  %199 = load i32, i32* %x109, align 4
  %x110 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 0
  %200 = load i32, i32* %x110, align 4
  %cmp111 = icmp sgt i32 %199, %200
  br i1 %cmp111, label %land.lhs.true.112, label %if.else.128

land.lhs.true.112:                                ; preds = %if.else.108
  %y113 = getelementptr inbounds %struct.point, %struct.point* %p, i32 0, i32 1
  %201 = load i32, i32* %y113, align 4
  %y114 = getelementptr inbounds %struct.point, %struct.point* %np, i32 0, i32 1
  %202 = load i32, i32* %y114, align 4
  %cmp115 = icmp sgt i32 %201, %202
  br i1 %cmp115, label %if.then.116, label %if.else.128

if.then.116:                                      ; preds = %land.lhs.true.112
  %203 = load double, double* %c, align 8
  %204 = load double, double* %minY, align 8
  %205 = bitcast %struct.point* %n to i64*
  %206 = load i64, i64* %205, align 4
  %207 = bitcast %struct.point* %Bn to i64*
  %208 = load i64, i64* %207, align 4
  %call117 = call { double, double } @intersect(i64 %206, i64 %208, double %203, double %204)
  %209 = bitcast %struct.dpoint* %coerce118 to { double, double }*
  %210 = getelementptr { double, double }, { double, double }* %209, i32 0, i32 0
  %211 = extractvalue { double, double } %call117, 0
  store double %211, double* %210, align 8
  %212 = getelementptr { double, double }, { double, double }* %209, i32 0, i32 1
  %213 = extractvalue { double, double } %call117, 1
  store double %213, double* %212, align 8
  %214 = bitcast %struct.dpoint* %di to i8*
  %215 = bitcast %struct.dpoint* %coerce118 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %214, i8* %215, i64 16, i32 8, i1 false)
  %216 = load double, double* %minX, align 8
  %x119 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %217 = load double, double* %x119, align 8
  %cmp120 = fcmp ogt double %216, %217
  br i1 %cmp120, label %if.then.124, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %if.then.116
  %x122 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %218 = load double, double* %x122, align 8
  %219 = load double, double* %maxX, align 8
  %cmp123 = fcmp ogt double %218, %219
  br i1 %cmp123, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %lor.lhs.false.121, %if.then.116
  %220 = load double, double* %c, align 8
  %221 = load double, double* %maxX, align 8
  %222 = bitcast %struct.point* %n to i64*
  %223 = load i64, i64* %222, align 4
  %224 = bitcast %struct.point* %Cn to i64*
  %225 = load i64, i64* %224, align 4
  %call125 = call { double, double } @intersect(i64 %223, i64 %225, double %220, double %221)
  %226 = bitcast %struct.dpoint* %coerce126 to { double, double }*
  %227 = getelementptr { double, double }, { double, double }* %226, i32 0, i32 0
  %228 = extractvalue { double, double } %call125, 0
  store double %228, double* %227, align 8
  %229 = getelementptr { double, double }, { double, double }* %226, i32 0, i32 1
  %230 = extractvalue { double, double } %call125, 1
  store double %230, double* %229, align 8
  %231 = bitcast %struct.dpoint* %di to i8*
  %232 = bitcast %struct.dpoint* %coerce126 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %231, i8* %232, i64 16, i32 8, i1 false)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %lor.lhs.false.121
  br label %if.end.130

if.else.128:                                      ; preds = %land.lhs.true.112, %if.else.108
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end.130:                                       ; preds = %if.end.127
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.105
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.96
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %if.then.74
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.63
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.54
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.32
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end
  %x138 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 0
  %233 = load double, double* %x138, align 8
  %conv = fptosi double %233 to i32
  %x139 = getelementptr inbounds %struct.point, %struct.point* %i, i32 0, i32 0
  store i32 %conv, i32* %x139, align 4
  %y140 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %di, i32 0, i32 1
  %234 = load double, double* %y140, align 8
  %conv141 = fptosi double %234 to i32
  %y142 = getelementptr inbounds %struct.point, %struct.point* %i, i32 0, i32 1
  store i32 %conv141, i32* %y142, align 4
  %235 = bitcast %struct.point* %retval to i8*
  %236 = bitcast %struct.point* %i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %235, i8* %236, i64 8, i32 4, i1 false)
  %237 = bitcast %struct.point* %retval to i64*
  %238 = load i64, i64* %237, align 4
  ret i64 %238
}

declare %struct.CHpoints* @next(%struct.CHpoints*) #2

declare i64 @vector(i64, i64) #2

declare double @calculate_c(i64, double, double) #2

declare { double, double } @midpoint(i64, i64) #2

declare { double, double } @intersect(i64, i64, double, double) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @add_infinit_points_to_K(%struct.CHpoints* %S) #0 {
entry:
  %S.addr = alloca %struct.CHpoints*, align 8
  %temp = alloca %struct.CHpoints*, align 8
  %key = alloca %struct.key, align 8
  %agg.tmp = alloca %struct.point, align 4
  %agg.tmp10 = alloca %struct.point, align 4
  store %struct.CHpoints* %S, %struct.CHpoints** %S.addr, align 8
  %0 = load i32, i32* @CHno, align 4
  %mul = mul nsw i32 2, %0
  %sub = sub nsw i32 %mul, 1
  %conv = sext i32 %sub to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 20) #3
  %1 = bitcast i8* %call to %struct.Knode*
  store %struct.Knode* %1, %struct.Knode** @K, align 8
  %2 = load i32, i32* @CHno, align 4
  %mul1 = mul nsw i32 2, %2
  %sub2 = sub nsw i32 %mul1, 2
  %conv3 = sext i32 %sub2 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 32) #3
  %3 = bitcast i8* %call4 to %struct.Enode*
  store %struct.Enode* %3, %struct.Enode** @E, align 8
  %call5 = call %struct.CHsplay_node* @CHinit()
  store %struct.CHsplay_node* %call5, %struct.CHsplay_node** @CHSplaytree, align 8
  %4 = load %struct.CHpoints*, %struct.CHpoints** %S.addr, align 8
  %next = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i32 0, i32 3
  %5 = load %struct.CHpoints*, %struct.CHpoints** %next, align 8
  store %struct.CHpoints* %5, %struct.CHpoints** %temp, align 8
  %6 = load %struct.CHpoints*, %struct.CHpoints** %S.addr, align 8
  %call6 = call i64 @compute_v(%struct.CHpoints* %6)
  %7 = bitcast %struct.point* %agg.tmp to i64*
  store i64 %call6, i64* %7, align 4
  %8 = bitcast %struct.point* %agg.tmp to i64*
  %9 = load i64, i64* %8, align 4
  call void @add_point(i64 %9)
  %10 = load i32, i32* @Kcount, align 4
  %sub7 = sub nsw i32 %10, 1
  %11 = load %struct.CHpoints*, %struct.CHpoints** %S.addr, align 8
  %v = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %11, i32 0, i32 2
  store i32 %sub7, i32* %v, align 4
  %12 = load %struct.CHpoints*, %struct.CHpoints** %S.addr, align 8
  %call8 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %12)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %13 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %14 = load %struct.CHpoints*, %struct.CHpoints** %S.addr, align 8
  %cmp = icmp ne %struct.CHpoints* %13, %14
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %call11 = call i64 @compute_v(%struct.CHpoints* %15)
  %16 = bitcast %struct.point* %agg.tmp10 to i64*
  store i64 %call11, i64* %16, align 4
  %17 = bitcast %struct.point* %agg.tmp10 to i64*
  %18 = load i64, i64* %17, align 4
  call void @add_point(i64 %18)
  %19 = load i32, i32* @Kcount, align 4
  %sub12 = sub nsw i32 %19, 1
  %20 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %v13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %20, i32 0, i32 2
  store i32 %sub12, i32* %v13, align 4
  %21 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %call14 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %21)
  %22 = load %struct.CHpoints*, %struct.CHpoints** %temp, align 8
  %next15 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %22, i32 0, i32 3
  %23 = load %struct.CHpoints*, %struct.CHpoints** %next15, align 8
  store %struct.CHpoints* %23, %struct.CHpoints** %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare %struct.CHsplay_node* @CHinit() #2

declare i8* @CHinsert(%struct.CHsplay_node**, %struct.CHpoints*) #2

; Function Attrs: nounwind uwtable
define void @add_edge(i32 %v1, i32 %v2) #0 {
entry:
  %v1.addr = alloca i32, align 4
  %v2.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %v1, i32* %v1.addr, align 4
  store i32 %v2, i32* %v2.addr, align 4
  %0 = load i32, i32* %v1.addr, align 4
  %1 = load i32, i32* @Ecount, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx = getelementptr inbounds %struct.Enode, %struct.Enode* %2, i64 %idxprom
  %v11 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx, i32 0, i32 0
  store i32 %0, i32* %v11, align 4
  %3 = load i32, i32* %v2.addr, align 4
  %4 = load i32, i32* @Ecount, align 4
  %idxprom2 = sext i32 %4 to i64
  %5 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx3 = getelementptr inbounds %struct.Enode, %struct.Enode* %5, i64 %idxprom2
  %v24 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx3, i32 0, i32 1
  store i32 %3, i32* %v24, align 4
  %6 = load i32, i32* %v1.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %7 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx6 = getelementptr inbounds %struct.Knode, %struct.Knode* %7, i64 %idxprom5
  %e1 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx6, i32 0, i32 1
  %8 = load i32, i32* %e1, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load i32, i32* @Ecount, align 4
  %10 = load i32, i32* %v1.addr, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx8 = getelementptr inbounds %struct.Knode, %struct.Knode* %11, i64 %idxprom7
  %e19 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx8, i32 0, i32 1
  store i32 %9, i32* %e19, align 4
  %12 = load i32, i32* @Ecount, align 4
  %13 = load i32, i32* @Ecount, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx11 = getelementptr inbounds %struct.Enode, %struct.Enode* %14, i64 %idxprom10
  %p1 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx11, i32 0, i32 2
  store i32 %12, i32* %p1, align 4
  %15 = load i32, i32* @Ecount, align 4
  %16 = load i32, i32* @Ecount, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx13 = getelementptr inbounds %struct.Enode, %struct.Enode* %17, i64 %idxprom12
  %q1 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx13, i32 0, i32 4
  store i32 %15, i32* %q1, align 4
  br label %if.end.68

if.else:                                          ; preds = %entry
  %18 = load i32, i32* %v1.addr, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx15 = getelementptr inbounds %struct.Knode, %struct.Knode* %19, i64 %idxprom14
  %e2 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx15, i32 0, i32 2
  %20 = load i32, i32* %e2, align 4
  %cmp16 = icmp eq i32 %20, 0
  br i1 %cmp16, label %if.then.17, label %if.else.64

if.then.17:                                       ; preds = %if.else
  %21 = load i32, i32* @Ecount, align 4
  %22 = load i32, i32* %v1.addr, align 4
  %idxprom18 = sext i32 %22 to i64
  %23 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx19 = getelementptr inbounds %struct.Knode, %struct.Knode* %23, i64 %idxprom18
  %e220 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx19, i32 0, i32 2
  store i32 %21, i32* %e220, align 4
  %24 = load i32, i32* %v1.addr, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx22 = getelementptr inbounds %struct.Knode, %struct.Knode* %25, i64 %idxprom21
  %e123 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx22, i32 0, i32 1
  %26 = load i32, i32* %e123, align 4
  %27 = load i32, i32* @Ecount, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx25 = getelementptr inbounds %struct.Enode, %struct.Enode* %28, i64 %idxprom24
  %p126 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx25, i32 0, i32 2
  store i32 %26, i32* %p126, align 4
  %29 = load i32, i32* %v1.addr, align 4
  %idxprom27 = sext i32 %29 to i64
  %30 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx28 = getelementptr inbounds %struct.Knode, %struct.Knode* %30, i64 %idxprom27
  %e129 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx28, i32 0, i32 1
  %31 = load i32, i32* %e129, align 4
  %32 = load i32, i32* @Ecount, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx31 = getelementptr inbounds %struct.Enode, %struct.Enode* %33, i64 %idxprom30
  %q132 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx31, i32 0, i32 4
  store i32 %31, i32* %q132, align 4
  %34 = load i32, i32* %v1.addr, align 4
  %35 = load i32, i32* %v1.addr, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx34 = getelementptr inbounds %struct.Knode, %struct.Knode* %36, i64 %idxprom33
  %e135 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx34, i32 0, i32 1
  %37 = load i32, i32* %e135, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx37 = getelementptr inbounds %struct.Enode, %struct.Enode* %38, i64 %idxprom36
  %v138 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx37, i32 0, i32 0
  %39 = load i32, i32* %v138, align 4
  %cmp39 = icmp eq i32 %34, %39
  br i1 %cmp39, label %if.then.40, label %if.else.53

if.then.40:                                       ; preds = %if.then.17
  %40 = load i32, i32* @Ecount, align 4
  %41 = load i32, i32* %v1.addr, align 4
  %idxprom41 = sext i32 %41 to i64
  %42 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx42 = getelementptr inbounds %struct.Knode, %struct.Knode* %42, i64 %idxprom41
  %e143 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx42, i32 0, i32 1
  %43 = load i32, i32* %e143, align 4
  %idxprom44 = sext i32 %43 to i64
  %44 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx45 = getelementptr inbounds %struct.Enode, %struct.Enode* %44, i64 %idxprom44
  %p146 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx45, i32 0, i32 2
  store i32 %40, i32* %p146, align 4
  %45 = load i32, i32* @Ecount, align 4
  %46 = load i32, i32* %v1.addr, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx48 = getelementptr inbounds %struct.Knode, %struct.Knode* %47, i64 %idxprom47
  %e149 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx48, i32 0, i32 1
  %48 = load i32, i32* %e149, align 4
  %idxprom50 = sext i32 %48 to i64
  %49 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx51 = getelementptr inbounds %struct.Enode, %struct.Enode* %49, i64 %idxprom50
  %q152 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx51, i32 0, i32 4
  store i32 %45, i32* %q152, align 4
  br label %if.end

if.else.53:                                       ; preds = %if.then.17
  %50 = load i32, i32* @Ecount, align 4
  %51 = load i32, i32* %v1.addr, align 4
  %idxprom54 = sext i32 %51 to i64
  %52 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx55 = getelementptr inbounds %struct.Knode, %struct.Knode* %52, i64 %idxprom54
  %e156 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx55, i32 0, i32 1
  %53 = load i32, i32* %e156, align 4
  %idxprom57 = sext i32 %53 to i64
  %54 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx58 = getelementptr inbounds %struct.Enode, %struct.Enode* %54, i64 %idxprom57
  %p2 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx58, i32 0, i32 3
  store i32 %50, i32* %p2, align 4
  %55 = load i32, i32* @Ecount, align 4
  %56 = load i32, i32* %v1.addr, align 4
  %idxprom59 = sext i32 %56 to i64
  %57 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx60 = getelementptr inbounds %struct.Knode, %struct.Knode* %57, i64 %idxprom59
  %e161 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx60, i32 0, i32 1
  %58 = load i32, i32* %e161, align 4
  %idxprom62 = sext i32 %58 to i64
  %59 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx63 = getelementptr inbounds %struct.Enode, %struct.Enode* %59, i64 %idxprom62
  %q2 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx63, i32 0, i32 5
  store i32 %55, i32* %q2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.53, %if.then.40
  br label %if.end.67

if.else.64:                                       ; preds = %if.else
  %60 = load i32, i32* @Ecount, align 4
  %61 = load i32, i32* %v1.addr, align 4
  %idxprom65 = sext i32 %61 to i64
  %62 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx66 = getelementptr inbounds %struct.Knode, %struct.Knode* %62, i64 %idxprom65
  %e3 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx66, i32 0, i32 3
  store i32 %60, i32* %e3, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.end
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then
  %63 = load i32, i32* %v2.addr, align 4
  %idxprom69 = sext i32 %63 to i64
  %64 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx70 = getelementptr inbounds %struct.Knode, %struct.Knode* %64, i64 %idxprom69
  %e171 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx70, i32 0, i32 1
  %65 = load i32, i32* %e171, align 4
  %cmp72 = icmp eq i32 %65, 0
  br i1 %cmp72, label %if.then.73, label %if.else.83

if.then.73:                                       ; preds = %if.end.68
  %66 = load i32, i32* @Ecount, align 4
  %67 = load i32, i32* %v2.addr, align 4
  %idxprom74 = sext i32 %67 to i64
  %68 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx75 = getelementptr inbounds %struct.Knode, %struct.Knode* %68, i64 %idxprom74
  %e176 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx75, i32 0, i32 1
  store i32 %66, i32* %e176, align 4
  %69 = load i32, i32* @Ecount, align 4
  %70 = load i32, i32* @Ecount, align 4
  %idxprom77 = sext i32 %70 to i64
  %71 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx78 = getelementptr inbounds %struct.Enode, %struct.Enode* %71, i64 %idxprom77
  %p179 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx78, i32 0, i32 2
  store i32 %69, i32* %p179, align 4
  %72 = load i32, i32* @Ecount, align 4
  %73 = load i32, i32* @Ecount, align 4
  %idxprom80 = sext i32 %73 to i64
  %74 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx81 = getelementptr inbounds %struct.Enode, %struct.Enode* %74, i64 %idxprom80
  %q182 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx81, i32 0, i32 4
  store i32 %72, i32* %q182, align 4
  br label %if.end.143

if.else.83:                                       ; preds = %if.end.68
  %75 = load i32, i32* %v2.addr, align 4
  %idxprom84 = sext i32 %75 to i64
  %76 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx85 = getelementptr inbounds %struct.Knode, %struct.Knode* %76, i64 %idxprom84
  %e286 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx85, i32 0, i32 2
  %77 = load i32, i32* %e286, align 4
  %cmp87 = icmp eq i32 %77, 0
  br i1 %cmp87, label %if.then.88, label %if.else.138

if.then.88:                                       ; preds = %if.else.83
  %78 = load i32, i32* @Ecount, align 4
  %79 = load i32, i32* %v2.addr, align 4
  %idxprom89 = sext i32 %79 to i64
  %80 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx90 = getelementptr inbounds %struct.Knode, %struct.Knode* %80, i64 %idxprom89
  %e291 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx90, i32 0, i32 2
  store i32 %78, i32* %e291, align 4
  %81 = load i32, i32* %v2.addr, align 4
  %idxprom92 = sext i32 %81 to i64
  %82 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx93 = getelementptr inbounds %struct.Knode, %struct.Knode* %82, i64 %idxprom92
  %e194 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx93, i32 0, i32 1
  %83 = load i32, i32* %e194, align 4
  %84 = load i32, i32* @Ecount, align 4
  %idxprom95 = sext i32 %84 to i64
  %85 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx96 = getelementptr inbounds %struct.Enode, %struct.Enode* %85, i64 %idxprom95
  %p197 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx96, i32 0, i32 2
  store i32 %83, i32* %p197, align 4
  %86 = load i32, i32* %v2.addr, align 4
  %idxprom98 = sext i32 %86 to i64
  %87 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx99 = getelementptr inbounds %struct.Knode, %struct.Knode* %87, i64 %idxprom98
  %e1100 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx99, i32 0, i32 1
  %88 = load i32, i32* %e1100, align 4
  %89 = load i32, i32* @Ecount, align 4
  %idxprom101 = sext i32 %89 to i64
  %90 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx102 = getelementptr inbounds %struct.Enode, %struct.Enode* %90, i64 %idxprom101
  %q1103 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx102, i32 0, i32 4
  store i32 %88, i32* %q1103, align 4
  %91 = load i32, i32* %v2.addr, align 4
  %92 = load i32, i32* %v2.addr, align 4
  %idxprom104 = sext i32 %92 to i64
  %93 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx105 = getelementptr inbounds %struct.Knode, %struct.Knode* %93, i64 %idxprom104
  %e1106 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx105, i32 0, i32 1
  %94 = load i32, i32* %e1106, align 4
  %idxprom107 = sext i32 %94 to i64
  %95 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx108 = getelementptr inbounds %struct.Enode, %struct.Enode* %95, i64 %idxprom107
  %v1109 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx108, i32 0, i32 0
  %96 = load i32, i32* %v1109, align 4
  %cmp110 = icmp eq i32 %91, %96
  br i1 %cmp110, label %if.then.111, label %if.else.124

if.then.111:                                      ; preds = %if.then.88
  %97 = load i32, i32* @Ecount, align 4
  %98 = load i32, i32* %v2.addr, align 4
  %idxprom112 = sext i32 %98 to i64
  %99 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx113 = getelementptr inbounds %struct.Knode, %struct.Knode* %99, i64 %idxprom112
  %e1114 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx113, i32 0, i32 1
  %100 = load i32, i32* %e1114, align 4
  %idxprom115 = sext i32 %100 to i64
  %101 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx116 = getelementptr inbounds %struct.Enode, %struct.Enode* %101, i64 %idxprom115
  %p1117 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx116, i32 0, i32 2
  store i32 %97, i32* %p1117, align 4
  %102 = load i32, i32* @Ecount, align 4
  %103 = load i32, i32* %v2.addr, align 4
  %idxprom118 = sext i32 %103 to i64
  %104 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx119 = getelementptr inbounds %struct.Knode, %struct.Knode* %104, i64 %idxprom118
  %e1120 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx119, i32 0, i32 1
  %105 = load i32, i32* %e1120, align 4
  %idxprom121 = sext i32 %105 to i64
  %106 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx122 = getelementptr inbounds %struct.Enode, %struct.Enode* %106, i64 %idxprom121
  %q1123 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx122, i32 0, i32 4
  store i32 %102, i32* %q1123, align 4
  br label %if.end.137

if.else.124:                                      ; preds = %if.then.88
  %107 = load i32, i32* @Ecount, align 4
  %108 = load i32, i32* %v2.addr, align 4
  %idxprom125 = sext i32 %108 to i64
  %109 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx126 = getelementptr inbounds %struct.Knode, %struct.Knode* %109, i64 %idxprom125
  %e1127 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx126, i32 0, i32 1
  %110 = load i32, i32* %e1127, align 4
  %idxprom128 = sext i32 %110 to i64
  %111 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx129 = getelementptr inbounds %struct.Enode, %struct.Enode* %111, i64 %idxprom128
  %p2130 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx129, i32 0, i32 3
  store i32 %107, i32* %p2130, align 4
  %112 = load i32, i32* @Ecount, align 4
  %113 = load i32, i32* %v2.addr, align 4
  %idxprom131 = sext i32 %113 to i64
  %114 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx132 = getelementptr inbounds %struct.Knode, %struct.Knode* %114, i64 %idxprom131
  %e1133 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx132, i32 0, i32 1
  %115 = load i32, i32* %e1133, align 4
  %idxprom134 = sext i32 %115 to i64
  %116 = load %struct.Enode*, %struct.Enode** @E, align 8
  %arrayidx135 = getelementptr inbounds %struct.Enode, %struct.Enode* %116, i64 %idxprom134
  %q2136 = getelementptr inbounds %struct.Enode, %struct.Enode* %arrayidx135, i32 0, i32 5
  store i32 %112, i32* %q2136, align 4
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.124, %if.then.111
  br label %if.end.142

if.else.138:                                      ; preds = %if.else.83
  %117 = load i32, i32* @Ecount, align 4
  %118 = load i32, i32* %v2.addr, align 4
  %idxprom139 = sext i32 %118 to i64
  %119 = load %struct.Knode*, %struct.Knode** @K, align 8
  %arrayidx140 = getelementptr inbounds %struct.Knode, %struct.Knode* %119, i64 %idxprom139
  %e3141 = getelementptr inbounds %struct.Knode, %struct.Knode* %arrayidx140, i32 0, i32 3
  store i32 %117, i32* %e3141, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.else.138, %if.end.137
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.73
  %120 = load i32, i32* @Ecount, align 4
  %inc = add nsw i32 %120, 1
  store i32 %inc, i32* @Ecount, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* %S) #0 {
entry:
  %S.addr = alloca %struct.CHpoints*, align 8
  %p1 = alloca %struct.CHpoints*, align 8
  %p2 = alloca %struct.CHpoints*, align 8
  %p3 = alloca %struct.CHpoints*, align 8
  %key1 = alloca %struct.key, align 8
  %key2 = alloca %struct.key, align 8
  %agg.tmp = alloca %struct.dpoint, align 8
  %agg.tmp13 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %S, %struct.CHpoints** %S.addr, align 8
  %call = call %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node** @CHSplaytree)
  store %struct.CHpoints* %call, %struct.CHpoints** %p2, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %call1 = call %struct.CHpoints* @before(%struct.CHpoints* %0)
  store %struct.CHpoints* %call1, %struct.CHpoints** %p1, align 8
  %1 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %call2 = call %struct.CHpoints* @next(%struct.CHpoints* %1)
  store %struct.CHpoints* %call2, %struct.CHpoints** %p3, align 8
  %2 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %2, i32 0, i32 1
  %3 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %call3 = call %struct.CHpoints* @before(%struct.CHpoints* %3)
  %node4 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call3, i32 0, i32 1
  %4 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %node5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %4, i32 0, i32 1
  %5 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %node6 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %5, i32 0, i32 1
  %6 = bitcast %struct.point* %node4 to i64*
  %7 = load i64, i64* %6, align 4
  %8 = bitcast %struct.point* %node5 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = bitcast %struct.point* %node6 to i64*
  %11 = load i64, i64* %10, align 4
  %call7 = call { double, double } @centre(i64 %7, i64 %9, i64 %11)
  %12 = bitcast %struct.dpoint* %agg.tmp to { double, double }*
  %13 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 0
  %14 = extractvalue { double, double } %call7, 0
  store double %14, double* %13, align 8
  %15 = getelementptr { double, double }, { double, double }* %12, i32 0, i32 1
  %16 = extractvalue { double, double } %call7, 1
  store double %16, double* %15, align 8
  %17 = bitcast %struct.point* %node to i64*
  %18 = load i64, i64* %17, align 4
  %19 = bitcast %struct.dpoint* %agg.tmp to { double, double }*
  %20 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 0
  %21 = load double, double* %20, align 1
  %22 = getelementptr { double, double }, { double, double }* %19, i32 0, i32 1
  %23 = load double, double* %22, align 1
  %call8 = call double @radius2(i64 %18, double %21, double %23)
  %radius = getelementptr inbounds %struct.key, %struct.key* %key1, i32 0, i32 0
  store double %call8, double* %radius, align 8
  %24 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %call9 = call %struct.CHpoints* @before(%struct.CHpoints* %24)
  %25 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %26 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %call10 = call double @angle(%struct.CHpoints* %call9, %struct.CHpoints* %25, %struct.CHpoints* %26)
  %angle = getelementptr inbounds %struct.key, %struct.key* %key1, i32 0, i32 1
  store double %call10, double* %angle, align 8
  %27 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %number = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %27, i32 0, i32 0
  %28 = load i32, i32* %number, align 4
  %number11 = getelementptr inbounds %struct.key, %struct.key* %key1, i32 0, i32 2
  store i32 %28, i32* %number11, align 4
  call void @CHdelete(%struct.CHsplay_node** @CHSplaytree, %struct.key* byval align 8 %key1)
  %29 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %node12 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %29, i32 0, i32 1
  %30 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %node14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %30, i32 0, i32 1
  %31 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %node15 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %31, i32 0, i32 1
  %32 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %call16 = call %struct.CHpoints* @next(%struct.CHpoints* %32)
  %node17 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call16, i32 0, i32 1
  %33 = bitcast %struct.point* %node14 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = bitcast %struct.point* %node15 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = bitcast %struct.point* %node17 to i64*
  %38 = load i64, i64* %37, align 4
  %call18 = call { double, double } @centre(i64 %34, i64 %36, i64 %38)
  %39 = bitcast %struct.dpoint* %agg.tmp13 to { double, double }*
  %40 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 0
  %41 = extractvalue { double, double } %call18, 0
  store double %41, double* %40, align 8
  %42 = getelementptr { double, double }, { double, double }* %39, i32 0, i32 1
  %43 = extractvalue { double, double } %call18, 1
  store double %43, double* %42, align 8
  %44 = bitcast %struct.point* %node12 to i64*
  %45 = load i64, i64* %44, align 4
  %46 = bitcast %struct.dpoint* %agg.tmp13 to { double, double }*
  %47 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 0
  %48 = load double, double* %47, align 1
  %49 = getelementptr { double, double }, { double, double }* %46, i32 0, i32 1
  %50 = load double, double* %49, align 1
  %call19 = call double @radius2(i64 %45, double %48, double %50)
  %radius20 = getelementptr inbounds %struct.key, %struct.key* %key2, i32 0, i32 0
  store double %call19, double* %radius20, align 8
  %51 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %52 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %53 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %call21 = call %struct.CHpoints* @next(%struct.CHpoints* %53)
  %call22 = call double @angle(%struct.CHpoints* %51, %struct.CHpoints* %52, %struct.CHpoints* %call21)
  %angle23 = getelementptr inbounds %struct.key, %struct.key* %key2, i32 0, i32 1
  store double %call22, double* %angle23, align 8
  %54 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %number24 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %54, i32 0, i32 0
  %55 = load i32, i32* %number24, align 4
  %number25 = getelementptr inbounds %struct.key, %struct.key* %key2, i32 0, i32 2
  store i32 %55, i32* %number25, align 4
  call void @CHdelete(%struct.CHsplay_node** @CHSplaytree, %struct.key* byval align 8 %key2)
  %56 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  ret %struct.CHpoints* %56
}

declare %struct.CHpoints* @CHdelete_max(%struct.CHsplay_node**) #2

declare %struct.CHpoints* @before(%struct.CHpoints*) #2

declare double @radius2(i64, double, double) #2

declare { double, double } @centre(i64, i64, i64) #2

declare double @angle(%struct.CHpoints*, %struct.CHpoints*, %struct.CHpoints*) #2

declare void @CHdelete(%struct.CHsplay_node**, %struct.key* byval align 8) #2

; Function Attrs: nounwind uwtable
define void @draw_sec(%struct.CHpoints* %p) #0 {
entry:
  %p.addr = alloca %struct.CHpoints*, align 8
  %c = alloca %struct.dpoint, align 8
  %p1 = alloca %struct.CHpoints*, align 8
  %p2 = alloca %struct.CHpoints*, align 8
  %p3 = alloca %struct.CHpoints*, align 8
  %radius = alloca double, align 8
  %coerce = alloca %struct.dpoint, align 8
  %coerce54 = alloca %struct.dpoint, align 8
  %coerce65 = alloca %struct.dpoint, align 8
  store %struct.CHpoints* %p, %struct.CHpoints** %p.addr, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call = call %struct.CHpoints* @before(%struct.CHpoints* %0)
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call, i32 0, i32 1
  %1 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node1 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %1, i32 0, i32 1
  %2 = bitcast %struct.point* %node to i64*
  %3 = load i64, i64* %2, align 4
  %4 = bitcast %struct.point* %node1 to i64*
  %5 = load i64, i64* %4, align 4
  %call2 = call i32 @length2(i64 %3, i64 %5)
  %6 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node3 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %6, i32 0, i32 1
  %7 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call4 = call %struct.CHpoints* @next(%struct.CHpoints* %7)
  %node5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call4, i32 0, i32 1
  %8 = bitcast %struct.point* %node3 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = bitcast %struct.point* %node5 to i64*
  %11 = load i64, i64* %10, align 4
  %call6 = call i32 @length2(i64 %9, i64 %11)
  %cmp = icmp sgt i32 %call2, %call6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call7 = call %struct.CHpoints* @before(%struct.CHpoints* %12)
  %node8 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call7, i32 0, i32 1
  %13 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node9 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %13, i32 0, i32 1
  %14 = bitcast %struct.point* %node8 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = bitcast %struct.point* %node9 to i64*
  %17 = load i64, i64* %16, align 4
  %call10 = call i32 @length2(i64 %15, i64 %17)
  %18 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call11 = call %struct.CHpoints* @before(%struct.CHpoints* %18)
  %node12 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call11, i32 0, i32 1
  %19 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call13 = call %struct.CHpoints* @next(%struct.CHpoints* %19)
  %node14 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call13, i32 0, i32 1
  %20 = bitcast %struct.point* %node12 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = bitcast %struct.point* %node14 to i64*
  %23 = load i64, i64* %22, align 4
  %call15 = call i32 @length2(i64 %21, i64 %23)
  %cmp16 = icmp sgt i32 %call10, %call15
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %24 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call17 = call %struct.CHpoints* @next(%struct.CHpoints* %24)
  store %struct.CHpoints* %call17, %struct.CHpoints** %p2, align 8
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %entry
  %25 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node18 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %25, i32 0, i32 1
  %26 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call19 = call %struct.CHpoints* @next(%struct.CHpoints* %26)
  %node20 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call19, i32 0, i32 1
  %27 = bitcast %struct.point* %node18 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = bitcast %struct.point* %node20 to i64*
  %30 = load i64, i64* %29, align 4
  %call21 = call i32 @length2(i64 %28, i64 %30)
  %31 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call22 = call %struct.CHpoints* @before(%struct.CHpoints* %31)
  %node23 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call22, i32 0, i32 1
  %32 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call24 = call %struct.CHpoints* @next(%struct.CHpoints* %32)
  %node25 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call24, i32 0, i32 1
  %33 = bitcast %struct.point* %node23 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = bitcast %struct.point* %node25 to i64*
  %36 = load i64, i64* %35, align 4
  %call26 = call i32 @length2(i64 %34, i64 %36)
  %cmp27 = icmp sgt i32 %call21, %call26
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.40

land.lhs.true.28:                                 ; preds = %if.else
  %37 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node29 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %37, i32 0, i32 1
  %38 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call30 = call %struct.CHpoints* @next(%struct.CHpoints* %38)
  %node31 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call30, i32 0, i32 1
  %39 = bitcast %struct.point* %node29 to i64*
  %40 = load i64, i64* %39, align 4
  %41 = bitcast %struct.point* %node31 to i64*
  %42 = load i64, i64* %41, align 4
  %call32 = call i32 @length2(i64 %40, i64 %42)
  %43 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node33 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %43, i32 0, i32 1
  %44 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call34 = call %struct.CHpoints* @before(%struct.CHpoints* %44)
  %node35 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call34, i32 0, i32 1
  %45 = bitcast %struct.point* %node33 to i64*
  %46 = load i64, i64* %45, align 4
  %47 = bitcast %struct.point* %node35 to i64*
  %48 = load i64, i64* %47, align 4
  %call36 = call i32 @length2(i64 %46, i64 %48)
  %cmp37 = icmp sgt i32 %call32, %call36
  br i1 %cmp37, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %land.lhs.true.28
  %49 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %call39 = call %struct.CHpoints* @before(%struct.CHpoints* %49)
  store %struct.CHpoints* %call39, %struct.CHpoints** %p2, align 8
  br label %if.end

if.else.40:                                       ; preds = %land.lhs.true.28, %if.else
  %50 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  store %struct.CHpoints* %50, %struct.CHpoints** %p2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.40, %if.then.38
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %if.then
  %51 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %call42 = call %struct.CHpoints* @before(%struct.CHpoints* %51)
  store %struct.CHpoints* %call42, %struct.CHpoints** %p1, align 8
  %52 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %call43 = call %struct.CHpoints* @next(%struct.CHpoints* %52)
  store %struct.CHpoints* %call43, %struct.CHpoints** %p3, align 8
  %53 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %54 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %55 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %call44 = call double @angle(%struct.CHpoints* %53, %struct.CHpoints* %54, %struct.CHpoints* %55)
  %cmp45 = fcmp olt double %call44, 0.000000e+00
  br i1 %cmp45, label %if.then.46, label %if.else.60

if.then.46:                                       ; preds = %if.end.41
  %56 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %node47 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %56, i32 0, i32 1
  %57 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %node48 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %57, i32 0, i32 1
  %58 = bitcast %struct.point* %node47 to i64*
  %59 = load i64, i64* %58, align 4
  %60 = bitcast %struct.point* %node48 to i64*
  %61 = load i64, i64* %60, align 4
  %call49 = call { double, double } @midpoint(i64 %59, i64 %61)
  %62 = bitcast %struct.dpoint* %coerce to { double, double }*
  %63 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 0
  %64 = extractvalue { double, double } %call49, 0
  store double %64, double* %63, align 8
  %65 = getelementptr { double, double }, { double, double }* %62, i32 0, i32 1
  %66 = extractvalue { double, double } %call49, 1
  store double %66, double* %65, align 8
  %x = getelementptr inbounds %struct.dpoint, %struct.dpoint* %coerce, i32 0, i32 0
  %67 = load double, double* %x, align 8
  %x50 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %c, i32 0, i32 0
  store double %67, double* %x50, align 8
  %68 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %node51 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %68, i32 0, i32 1
  %69 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %node52 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %69, i32 0, i32 1
  %70 = bitcast %struct.point* %node51 to i64*
  %71 = load i64, i64* %70, align 4
  %72 = bitcast %struct.point* %node52 to i64*
  %73 = load i64, i64* %72, align 4
  %call53 = call { double, double } @midpoint(i64 %71, i64 %73)
  %74 = bitcast %struct.dpoint* %coerce54 to { double, double }*
  %75 = getelementptr { double, double }, { double, double }* %74, i32 0, i32 0
  %76 = extractvalue { double, double } %call53, 0
  store double %76, double* %75, align 8
  %77 = getelementptr { double, double }, { double, double }* %74, i32 0, i32 1
  %78 = extractvalue { double, double } %call53, 1
  store double %78, double* %77, align 8
  %y = getelementptr inbounds %struct.dpoint, %struct.dpoint* %coerce54, i32 0, i32 1
  %79 = load double, double* %y, align 8
  %y55 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %c, i32 0, i32 1
  store double %79, double* %y55, align 8
  %80 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %node56 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %80, i32 0, i32 1
  %81 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %node57 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %81, i32 0, i32 1
  %82 = bitcast %struct.point* %node56 to i64*
  %83 = load i64, i64* %82, align 4
  %84 = bitcast %struct.point* %node57 to i64*
  %85 = load i64, i64* %84, align 4
  %call58 = call i32 @length2(i64 %83, i64 %85)
  %conv = sitofp i32 %call58 to double
  %call59 = call double @sqrt(double %conv) #3
  %div = fdiv double %call59, 2.000000e+00
  store double %div, double* %radius, align 8
  br label %if.end.69

if.else.60:                                       ; preds = %if.end.41
  %86 = load %struct.CHpoints*, %struct.CHpoints** %p1, align 8
  %node61 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %86, i32 0, i32 1
  %87 = load %struct.CHpoints*, %struct.CHpoints** %p2, align 8
  %node62 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %87, i32 0, i32 1
  %88 = load %struct.CHpoints*, %struct.CHpoints** %p3, align 8
  %node63 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %88, i32 0, i32 1
  %89 = bitcast %struct.point* %node61 to i64*
  %90 = load i64, i64* %89, align 4
  %91 = bitcast %struct.point* %node62 to i64*
  %92 = load i64, i64* %91, align 4
  %93 = bitcast %struct.point* %node63 to i64*
  %94 = load i64, i64* %93, align 4
  %call64 = call { double, double } @centre(i64 %90, i64 %92, i64 %94)
  %95 = bitcast %struct.dpoint* %coerce65 to { double, double }*
  %96 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 0
  %97 = extractvalue { double, double } %call64, 0
  store double %97, double* %96, align 8
  %98 = getelementptr { double, double }, { double, double }* %95, i32 0, i32 1
  %99 = extractvalue { double, double } %call64, 1
  store double %99, double* %98, align 8
  %100 = bitcast %struct.dpoint* %c to i8*
  %101 = bitcast %struct.dpoint* %coerce65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %100, i8* %101, i64 16, i32 8, i1 false)
  %102 = load %struct.CHpoints*, %struct.CHpoints** %p.addr, align 8
  %node66 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %102, i32 0, i32 1
  %103 = bitcast %struct.point* %node66 to i64*
  %104 = load i64, i64* %103, align 4
  %105 = bitcast %struct.dpoint* %c to { double, double }*
  %106 = getelementptr { double, double }, { double, double }* %105, i32 0, i32 0
  %107 = load double, double* %106, align 1
  %108 = getelementptr { double, double }, { double, double }* %105, i32 0, i32 1
  %109 = load double, double* %108, align 1
  %call67 = call double @radius2(i64 %104, double %107, double %109)
  %call68 = call double @sqrt(double %call67) #3
  store double %call68, double* %radius, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.60, %if.then.46
  %x70 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %c, i32 0, i32 0
  %110 = load double, double* %x70, align 8
  %conv71 = fptosi double %110 to i32
  %y72 = getelementptr inbounds %struct.dpoint, %struct.dpoint* %c, i32 0, i32 1
  %111 = load double, double* %y72, align 8
  %conv73 = fptosi double %111 to i32
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0), i32 %conv71, i32 %conv73)
  %112 = load double, double* %radius, align 8
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), double %112)
  ret void
}

declare i32 @length2(i64, i64) #2

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind uwtable
define void @alg2() #0 {
entry:
  %c = alloca %struct.point, align 4
  %dc = alloca %struct.dpoint, align 8
  %p = alloca %struct.CHpoints*, align 8
  %q = alloca %struct.CHpoints*, align 8
  %coerce = alloca %struct.dpoint, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  call void @add_infinit_points_to_K(%struct.CHpoints* %0)
  %1 = load i32, i32* @CHno, align 4
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load i32, i32* @CHno, align 4
  %cmp1 = icmp sgt i32 %2, 2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %call = call %struct.CHpoints* @maximize_radius_and_angle(%struct.CHpoints* %3)
  store %struct.CHpoints* %call, %struct.CHpoints** %p, align 8
  %4 = load i32, i32* @CHno, align 4
  %cmp2 = icmp eq i32 %4, 3
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %while.body
  %5 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  call void @draw_sec(%struct.CHpoints* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %while.body
  %6 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  %call4 = call %struct.CHpoints* @before(%struct.CHpoints* %6)
  store %struct.CHpoints* %call4, %struct.CHpoints** %q, align 8
  %7 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %node = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %7, i32 0, i32 1
  %8 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  %node5 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %8, i32 0, i32 1
  %9 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  %call6 = call %struct.CHpoints* @next(%struct.CHpoints* %9)
  %node7 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call6, i32 0, i32 1
  %10 = bitcast %struct.point* %node to i64*
  %11 = load i64, i64* %10, align 4
  %12 = bitcast %struct.point* %node5 to i64*
  %13 = load i64, i64* %12, align 4
  %14 = bitcast %struct.point* %node7 to i64*
  %15 = load i64, i64* %14, align 4
  %call8 = call { double, double } @centre(i64 %11, i64 %13, i64 %15)
  %16 = bitcast %struct.dpoint* %coerce to { double, double }*
  %17 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 0
  %18 = extractvalue { double, double } %call8, 0
  store double %18, double* %17, align 8
  %19 = getelementptr { double, double }, { double, double }* %16, i32 0, i32 1
  %20 = extractvalue { double, double } %call8, 1
  store double %20, double* %19, align 8
  %21 = bitcast %struct.dpoint* %dc to i8*
  %22 = bitcast %struct.dpoint* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 16, i32 8, i1 false)
  %x = getelementptr inbounds %struct.dpoint, %struct.dpoint* %dc, i32 0, i32 0
  %23 = load double, double* %x, align 8
  %conv = fptosi double %23 to i32
  %x9 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 0
  store i32 %conv, i32* %x9, align 4
  %y = getelementptr inbounds %struct.dpoint, %struct.dpoint* %dc, i32 0, i32 1
  %24 = load double, double* %y, align 8
  %conv10 = fptosi double %24 to i32
  %y11 = getelementptr inbounds %struct.point, %struct.point* %c, i32 0, i32 1
  store i32 %conv10, i32* %y11, align 4
  %25 = bitcast %struct.point* %c to i64*
  %26 = load i64, i64* %25, align 4
  call void @add_point(i64 %26)
  %27 = load i32, i32* @Kcount, align 4
  %sub = sub nsw i32 %27, 1
  %28 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  %v = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %28, i32 0, i32 2
  %29 = load i32, i32* %v, align 4
  call void @add_edge(i32 %sub, i32 %29)
  %30 = load i32, i32* @Kcount, align 4
  %sub12 = sub nsw i32 %30, 1
  %31 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %v13 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %31, i32 0, i32 2
  %32 = load i32, i32* %v13, align 4
  call void @add_edge(i32 %sub12, i32 %32)
  %33 = load i32, i32* @Kcount, align 4
  %sub14 = sub nsw i32 %33, 1
  %34 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %v15 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %34, i32 0, i32 2
  store i32 %sub14, i32* %v15, align 4
  %35 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  %call16 = call %struct.CHpoints* @next(%struct.CHpoints* %35)
  %36 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %next = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %36, i32 0, i32 3
  store %struct.CHpoints* %call16, %struct.CHpoints** %next, align 8
  %37 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %38 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %call17 = call %struct.CHpoints* @next(%struct.CHpoints* %38)
  %prev = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call17, i32 0, i32 4
  store %struct.CHpoints* %37, %struct.CHpoints** %prev, align 8
  %39 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  store %struct.CHpoints* %39, %struct.CHpoints** @S, align 8
  %40 = load i32, i32* @CHno, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* @CHno, align 4
  %41 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  %call18 = call %struct.CHpoints* @next(%struct.CHpoints* %41)
  %call19 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %call18)
  %42 = load %struct.CHpoints*, %struct.CHpoints** %p, align 8
  %call20 = call %struct.CHpoints* @before(%struct.CHpoints* %42)
  %call21 = call i8* @CHinsert(%struct.CHsplay_node** @CHSplaytree, %struct.CHpoints* %call20)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %v22 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %43, i32 0, i32 2
  %44 = load i32, i32* %v22, align 4
  %45 = load %struct.CHpoints*, %struct.CHpoints** %q, align 8
  %call23 = call %struct.CHpoints* @next(%struct.CHpoints* %45)
  %v24 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call23, i32 0, i32 2
  %46 = load i32, i32* %v24, align 4
  call void @add_edge(i32 %44, i32 %46)
  br label %if.end.30

if.else:                                          ; preds = %entry
  store i32 2, i32* @CHno, align 4
  br i1 true, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.else
  %47 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %v26 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %47, i32 0, i32 2
  %48 = load i32, i32* %v26, align 4
  %49 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %call27 = call %struct.CHpoints* @next(%struct.CHpoints* %49)
  %v28 = getelementptr inbounds %struct.CHpoints, %struct.CHpoints* %call27, i32 0, i32 2
  %50 = load i32, i32* %v28, align 4
  call void @add_edge(i32 %48, i32 %50)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %while.end
  %51 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  %52 = bitcast %struct.CHpoints* %51 to i8*
  call void @free(i8* %52) #3
  %53 = load %struct.CHsplay_node*, %struct.CHsplay_node** @CHSplaytree, align 8
  call void @CHfree_tree(%struct.CHsplay_node* %53)
  ret void
}

declare void @CHfree_tree(%struct.CHsplay_node*) #2

; Function Attrs: nounwind uwtable
define void @construct_vor() #0 {
entry:
  %call = call %struct.CHpoints* (...) @construct_ch()
  store %struct.CHpoints* %call, %struct.CHpoints** @S, align 8
  %0 = load %struct.CHpoints*, %struct.CHpoints** @S, align 8
  call void @number_points(%struct.CHpoints* %0)
  call void @alg2()
  call void @clean_up()
  ret void
}

declare %struct.CHpoints* @construct_ch(...) #2

declare void @number_points(%struct.CHpoints*) #2

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @get_file()
  call void @construct_vor()
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
