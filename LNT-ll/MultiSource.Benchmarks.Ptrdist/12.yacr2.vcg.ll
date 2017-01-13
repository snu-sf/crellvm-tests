; ModuleID = './MultiSource.Benchmarks.Ptrdist/12.yacr2.vcg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeVCGType = type { %struct._constraintVCGType*, i64, i64, i64, %struct._constraintVCGType*, i64, i64, i64 }
%struct._constraintVCGType = type { i64, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@channelNets = external global i64, align 8
@VCG = common global %struct._nodeVCGType* null, align 8
@storageRootVCG = common global %struct._constraintVCGType* null, align 8
@storageVCG = common global %struct._constraintVCGType* null, align 8
@storageLimitVCG = common global i64 0, align 8
@SCC = common global i64* null, align 8
@perSCC = common global i64* null, align 8
@removeVCG = common global %struct._constraintVCGType** null, align 8
@channelColumns = external global i64, align 8
@TOP = external global i64*, align 8
@BOT = external global i64*, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"above: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"below: \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@totalSCC = common global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"[%d]\09\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"<%d>\00", align 1
@removeTotalVCG = common global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"\0A*** Input is acyclic! ***\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"\0A*** Input is cyclic! ***\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"*** VC's removed (%d) ***\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@cardBotNotPref = external global i64, align 8
@channelTracks = external global i64, align 8
@tracksBotNotPref = external global i64*, align 8
@cardTopNotPref = external global i64, align 8
@tracksTopNotPref = external global i64*, align 8
@tracksNotPref = external global i64*, align 8
@cardNotPref = external global i64, align 8

; Function Attrs: nounwind uwtable
define void @AllocVCG() #0 {
entry:
  %0 = load i64, i64* @channelNets, align 8
  %add = add i64 %0, 1
  %mul = mul i64 %add, 64
  %call = call noalias i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to %struct._nodeVCGType*
  store %struct._nodeVCGType* %1, %struct._nodeVCGType** @VCG, align 8
  %2 = load i64, i64* @channelNets, align 8
  %add1 = add i64 %2, 1
  %3 = load i64, i64* @channelNets, align 8
  %add2 = add i64 %3, 1
  %mul3 = mul i64 %add1, %add2
  %mul4 = mul i64 %mul3, 32
  %call5 = call noalias i8* @malloc(i64 %mul4) #3
  %4 = bitcast i8* %call5 to %struct._constraintVCGType*
  store %struct._constraintVCGType* %4, %struct._constraintVCGType** @storageRootVCG, align 8
  %5 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageRootVCG, align 8
  store %struct._constraintVCGType* %5, %struct._constraintVCGType** @storageVCG, align 8
  %6 = load i64, i64* @channelNets, align 8
  %add6 = add i64 %6, 1
  %7 = load i64, i64* @channelNets, align 8
  %add7 = add i64 %7, 1
  %mul8 = mul i64 %add6, %add7
  store i64 %mul8, i64* @storageLimitVCG, align 8
  %8 = load i64, i64* @channelNets, align 8
  %add9 = add i64 %8, 1
  %mul10 = mul i64 %add9, 8
  %call11 = call noalias i8* @malloc(i64 %mul10) #3
  %9 = bitcast i8* %call11 to i64*
  store i64* %9, i64** @SCC, align 8
  %10 = load i64, i64* @channelNets, align 8
  %add12 = add i64 %10, 1
  %mul13 = mul i64 %add12, 8
  %call14 = call noalias i8* @malloc(i64 %mul13) #3
  %11 = bitcast i8* %call14 to i64*
  store i64* %11, i64** @perSCC, align 8
  %12 = load i64, i64* @channelNets, align 8
  %add15 = add i64 %12, 1
  %13 = load i64, i64* @channelNets, align 8
  %add16 = add i64 %13, 1
  %mul17 = mul i64 %add15, %add16
  %mul18 = mul i64 %mul17, 8
  %call19 = call noalias i8* @malloc(i64 %mul18) #3
  %14 = bitcast i8* %call19 to %struct._constraintVCGType**
  store %struct._constraintVCGType** %14, %struct._constraintVCGType*** @removeVCG, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @FreeVCG() #0 {
entry:
  %0 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %1 = bitcast %struct._nodeVCGType* %0 to i8*
  call void @free(i8* %1) #3
  %2 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageRootVCG, align 8
  %3 = bitcast %struct._constraintVCGType* %2 to i8*
  call void @free(i8* %3) #3
  store i64 0, i64* @storageLimitVCG, align 8
  %4 = load i64*, i64** @SCC, align 8
  %5 = bitcast i64* %4 to i8*
  call void @free(i8* %5) #3
  %6 = load i64*, i64** @perSCC, align 8
  %7 = bitcast i64* %6 to i8*
  call void @free(i8* %7) #3
  %8 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  %9 = bitcast %struct._constraintVCGType** %8 to i8*
  call void @free(i8* %9) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @BuildVCG() #0 {
entry:
  %col = alloca i64, align 8
  %net = alloca i64, align 8
  %constraint = alloca i64, align 8
  %check = alloca i64, align 8
  %add = alloca i64, align 8
  call void @AllocVCG()
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.100, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %constraint, align 8
  %2 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %3 = load i64, i64* %net, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsAboveHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 0
  store %struct._constraintVCGType* %2, %struct._constraintVCGType** %netsAboveHook, align 8
  store i64 1, i64* %col, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.40, %for.body
  %5 = load i64, i64* %col, align 8
  %6 = load i64, i64* @channelColumns, align 8
  %cmp2 = icmp ule i64 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end.42

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i64, i64* %col, align 8
  %8 = load i64*, i64** @TOP, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx4, align 8
  %10 = load i64, i64* %net, align 8
  %cmp5 = icmp eq i64 %9, %10
  br i1 %cmp5, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %for.body.3
  %11 = load i64, i64* %col, align 8
  %12 = load i64*, i64** @BOT, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx6, align 8
  %14 = load i64, i64* %net, align 8
  %cmp7 = icmp ne i64 %13, %14
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.39

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %15 = load i64, i64* %col, align 8
  %16 = load i64*, i64** @BOT, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %16, i64 %15
  %17 = load i64, i64* %arrayidx9, align 8
  %cmp10 = icmp ne i64 %17, 0
  br i1 %cmp10, label %if.then, label %if.end.39

if.then:                                          ; preds = %land.lhs.true.8
  store i64 1, i64* %add, align 8
  store i64 0, i64* %check, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then
  %18 = load i64, i64* %check, align 8
  %19 = load i64, i64* %constraint, align 8
  %cmp12 = icmp ult i64 %18, %19
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %20 = load i64, i64* %check, align 8
  %21 = load i64, i64* %net, align 8
  %22 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx14 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i64 %21
  %netsAboveHook15 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx14, i32 0, i32 0
  %23 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook15, align 8
  %arrayidx16 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %23, i64 %20
  %bot = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx16, i32 0, i32 1
  %24 = load i64, i64* %bot, align 8
  %25 = load i64, i64* %col, align 8
  %26 = load i64*, i64** @BOT, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %26, i64 %25
  %27 = load i64, i64* %arrayidx17, align 8
  %cmp18 = icmp eq i64 %24, %27
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %for.body.13
  store i64 0, i64* %add, align 8
  br label %for.end

if.end:                                           ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i64, i64* %check, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %check, align 8
  br label %for.cond.11

for.end:                                          ; preds = %if.then.19, %for.cond.11
  %29 = load i64, i64* %add, align 8
  %tobool = icmp ne i64 %29, 0
  br i1 %tobool, label %if.then.20, label %if.end.38

if.then.20:                                       ; preds = %for.end
  %30 = load i64, i64* %col, align 8
  %31 = load i64*, i64** @TOP, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %31, i64 %30
  %32 = load i64, i64* %arrayidx21, align 8
  %33 = load i64, i64* %constraint, align 8
  %34 = load i64, i64* %net, align 8
  %35 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx22 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %35, i64 %34
  %netsAboveHook23 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx22, i32 0, i32 0
  %36 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook23, align 8
  %arrayidx24 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %36, i64 %33
  %top = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx24, i32 0, i32 0
  store i64 %32, i64* %top, align 8
  %37 = load i64, i64* %col, align 8
  %38 = load i64*, i64** @BOT, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %38, i64 %37
  %39 = load i64, i64* %arrayidx25, align 8
  %40 = load i64, i64* %constraint, align 8
  %41 = load i64, i64* %net, align 8
  %42 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx26 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %42, i64 %41
  %netsAboveHook27 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx26, i32 0, i32 0
  %43 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook27, align 8
  %arrayidx28 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %43, i64 %40
  %bot29 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx28, i32 0, i32 1
  store i64 %39, i64* %bot29, align 8
  %44 = load i64, i64* %col, align 8
  %45 = load i64, i64* %constraint, align 8
  %46 = load i64, i64* %net, align 8
  %47 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx30 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i64 %46
  %netsAboveHook31 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx30, i32 0, i32 0
  %48 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook31, align 8
  %arrayidx32 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %48, i64 %45
  %col33 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx32, i32 0, i32 2
  store i64 %44, i64* %col33, align 8
  %49 = load i64, i64* %constraint, align 8
  %50 = load i64, i64* %net, align 8
  %51 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx34 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %51, i64 %50
  %netsAboveHook35 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx34, i32 0, i32 0
  %52 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook35, align 8
  %arrayidx36 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %52, i64 %49
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx36, i32 0, i32 3
  store i64 0, i64* %removed, align 8
  %53 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %incdec.ptr = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %53, i32 1
  store %struct._constraintVCGType* %incdec.ptr, %struct._constraintVCGType** @storageVCG, align 8
  %54 = load i64, i64* @storageLimitVCG, align 8
  %dec = add i64 %54, -1
  store i64 %dec, i64* @storageLimitVCG, align 8
  %55 = load i64, i64* %constraint, align 8
  %inc37 = add i64 %55, 1
  store i64 %inc37, i64* %constraint, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.20, %for.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %land.lhs.true.8, %land.lhs.true, %for.body.3
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %56 = load i64, i64* %col, align 8
  %inc41 = add i64 %56, 1
  store i64 %inc41, i64* %col, align 8
  br label %for.cond.1

for.end.42:                                       ; preds = %for.cond.1
  %57 = load i64, i64* %constraint, align 8
  %58 = load i64, i64* %net, align 8
  %59 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx43 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %59, i64 %58
  %netsAbove = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx43, i32 0, i32 1
  store i64 %57, i64* %netsAbove, align 8
  store i64 0, i64* %constraint, align 8
  %60 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %61 = load i64, i64* %net, align 8
  %62 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx44 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %62, i64 %61
  %netsBelowHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx44, i32 0, i32 4
  store %struct._constraintVCGType* %60, %struct._constraintVCGType** %netsBelowHook, align 8
  store i64 1, i64* %col, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.96, %for.end.42
  %63 = load i64, i64* %col, align 8
  %64 = load i64, i64* @channelColumns, align 8
  %cmp46 = icmp ule i64 %63, %64
  br i1 %cmp46, label %for.body.47, label %for.end.98

for.body.47:                                      ; preds = %for.cond.45
  %65 = load i64, i64* %col, align 8
  %66 = load i64*, i64** @BOT, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %66, i64 %65
  %67 = load i64, i64* %arrayidx48, align 8
  %68 = load i64, i64* %net, align 8
  %cmp49 = icmp eq i64 %67, %68
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.95

land.lhs.true.50:                                 ; preds = %for.body.47
  %69 = load i64, i64* %col, align 8
  %70 = load i64*, i64** @TOP, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %70, i64 %69
  %71 = load i64, i64* %arrayidx51, align 8
  %72 = load i64, i64* %net, align 8
  %cmp52 = icmp ne i64 %71, %72
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.95

land.lhs.true.53:                                 ; preds = %land.lhs.true.50
  %73 = load i64, i64* %col, align 8
  %74 = load i64*, i64** @TOP, align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %74, i64 %73
  %75 = load i64, i64* %arrayidx54, align 8
  %cmp55 = icmp ne i64 %75, 0
  br i1 %cmp55, label %if.then.56, label %if.end.95

if.then.56:                                       ; preds = %land.lhs.true.53
  store i64 1, i64* %add, align 8
  store i64 0, i64* %check, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.68, %if.then.56
  %76 = load i64, i64* %check, align 8
  %77 = load i64, i64* %constraint, align 8
  %cmp58 = icmp ult i64 %76, %77
  br i1 %cmp58, label %for.body.59, label %for.end.70

for.body.59:                                      ; preds = %for.cond.57
  %78 = load i64, i64* %check, align 8
  %79 = load i64, i64* %net, align 8
  %80 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx60 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %80, i64 %79
  %netsBelowHook61 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx60, i32 0, i32 4
  %81 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook61, align 8
  %arrayidx62 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %81, i64 %78
  %top63 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx62, i32 0, i32 0
  %82 = load i64, i64* %top63, align 8
  %83 = load i64, i64* %col, align 8
  %84 = load i64*, i64** @TOP, align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %84, i64 %83
  %85 = load i64, i64* %arrayidx64, align 8
  %cmp65 = icmp eq i64 %82, %85
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body.59
  store i64 0, i64* %add, align 8
  br label %for.end.70

if.end.67:                                        ; preds = %for.body.59
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %86 = load i64, i64* %check, align 8
  %inc69 = add i64 %86, 1
  store i64 %inc69, i64* %check, align 8
  br label %for.cond.57

for.end.70:                                       ; preds = %if.then.66, %for.cond.57
  %87 = load i64, i64* %add, align 8
  %tobool71 = icmp ne i64 %87, 0
  br i1 %tobool71, label %if.then.72, label %if.end.94

if.then.72:                                       ; preds = %for.end.70
  %88 = load i64, i64* %col, align 8
  %89 = load i64*, i64** @TOP, align 8
  %arrayidx73 = getelementptr inbounds i64, i64* %89, i64 %88
  %90 = load i64, i64* %arrayidx73, align 8
  %91 = load i64, i64* %constraint, align 8
  %92 = load i64, i64* %net, align 8
  %93 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx74 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %93, i64 %92
  %netsBelowHook75 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx74, i32 0, i32 4
  %94 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook75, align 8
  %arrayidx76 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %94, i64 %91
  %top77 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx76, i32 0, i32 0
  store i64 %90, i64* %top77, align 8
  %95 = load i64, i64* %col, align 8
  %96 = load i64*, i64** @BOT, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %96, i64 %95
  %97 = load i64, i64* %arrayidx78, align 8
  %98 = load i64, i64* %constraint, align 8
  %99 = load i64, i64* %net, align 8
  %100 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx79 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %100, i64 %99
  %netsBelowHook80 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx79, i32 0, i32 4
  %101 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook80, align 8
  %arrayidx81 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %101, i64 %98
  %bot82 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx81, i32 0, i32 1
  store i64 %97, i64* %bot82, align 8
  %102 = load i64, i64* %col, align 8
  %103 = load i64, i64* %constraint, align 8
  %104 = load i64, i64* %net, align 8
  %105 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx83 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %105, i64 %104
  %netsBelowHook84 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx83, i32 0, i32 4
  %106 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook84, align 8
  %arrayidx85 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %106, i64 %103
  %col86 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx85, i32 0, i32 2
  store i64 %102, i64* %col86, align 8
  %107 = load i64, i64* %constraint, align 8
  %108 = load i64, i64* %net, align 8
  %109 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx87 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %109, i64 %108
  %netsBelowHook88 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx87, i32 0, i32 4
  %110 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook88, align 8
  %arrayidx89 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %110, i64 %107
  %removed90 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx89, i32 0, i32 3
  store i64 0, i64* %removed90, align 8
  %111 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %incdec.ptr91 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %111, i32 1
  store %struct._constraintVCGType* %incdec.ptr91, %struct._constraintVCGType** @storageVCG, align 8
  %112 = load i64, i64* @storageLimitVCG, align 8
  %dec92 = add i64 %112, -1
  store i64 %dec92, i64* @storageLimitVCG, align 8
  %113 = load i64, i64* %constraint, align 8
  %inc93 = add i64 %113, 1
  store i64 %inc93, i64* %constraint, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.72, %for.end.70
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %land.lhs.true.53, %land.lhs.true.50, %for.body.47
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %114 = load i64, i64* %col, align 8
  %inc97 = add i64 %114, 1
  store i64 %inc97, i64* %col, align 8
  br label %for.cond.45

for.end.98:                                       ; preds = %for.cond.45
  %115 = load i64, i64* %constraint, align 8
  %116 = load i64, i64* %net, align 8
  %117 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx99 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %117, i64 %116
  %netsBelow = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx99, i32 0, i32 5
  store i64 %115, i64* %netsBelow, align 8
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.98
  %118 = load i64, i64* %net, align 8
  %inc101 = add i64 %118, 1
  store i64 %inc101, i64* %net, align 8
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DFSClearVCG(%struct._nodeVCGType* %VCG) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %3, i64 %2
  %netsAboveLabel = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 2
  store i64 0, i64* %netsAboveLabel, align 8
  %4 = load i64, i64* %net, align 8
  %5 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %5, i64 %4
  %netsAboveReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx1, i32 0, i32 3
  store i64 0, i64* %netsAboveReached, align 8
  %6 = load i64, i64* %net, align 8
  %7 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %7, i64 %6
  %netsBelowLabel = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx2, i32 0, i32 6
  store i64 0, i64* %netsBelowLabel, align 8
  %8 = load i64, i64* %net, align 8
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i64 %8
  %netsBelowReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx3, i32 0, i32 7
  store i64 0, i64* %netsBelowReached, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %net, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DumpVCG(%struct._nodeVCGType* %VCG) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net = alloca i64, align 8
  %which = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 %2)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0))
  store i64 0, i64* %which, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %3 = load i64, i64* %which, align 8
  %4 = load i64, i64* %net, align 8
  %5 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %5, i64 %4
  %netsAbove = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 1
  %6 = load i64, i64* %netsAbove, align 8
  %cmp3 = icmp ult i64 %3, %6
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %7 = load i64, i64* %which, align 8
  %8 = load i64, i64* %net, align 8
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i64 %8
  %netsAboveHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx5, i32 0, i32 0
  %10 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook, align 8
  %arrayidx6 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %10, i64 %7
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx6, i32 0, i32 3
  %11 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.4
  %12 = load i64, i64* %which, align 8
  %13 = load i64, i64* %net, align 8
  %14 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %14, i64 %13
  %netsAboveHook8 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 0
  %15 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook8, align 8
  %arrayidx9 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %15, i64 %12
  %bot = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx9, i32 0, i32 1
  %16 = load i64, i64* %bot, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i64, i64* %which, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %which, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  store i64 0, i64* %which, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.27, %for.end
  %18 = load i64, i64* %which, align 8
  %19 = load i64, i64* %net, align 8
  %20 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %20, i64 %19
  %netsBelow = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx14, i32 0, i32 5
  %21 = load i64, i64* %netsBelow, align 8
  %cmp15 = icmp ult i64 %18, %21
  br i1 %cmp15, label %for.body.16, label %for.end.29

for.body.16:                                      ; preds = %for.cond.13
  %22 = load i64, i64* %which, align 8
  %23 = load i64, i64* %net, align 8
  %24 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %24, i64 %23
  %netsBelowHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx17, i32 0, i32 4
  %25 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook, align 8
  %arrayidx18 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %25, i64 %22
  %removed19 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx18, i32 0, i32 3
  %26 = load i64, i64* %removed19, align 8
  %tobool20 = icmp ne i64 %26, 0
  br i1 %tobool20, label %if.end.26, label %if.then.21

if.then.21:                                       ; preds = %for.body.16
  %27 = load i64, i64* %which, align 8
  %28 = load i64, i64* %net, align 8
  %29 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %29, i64 %28
  %netsBelowHook23 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx22, i32 0, i32 4
  %30 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook23, align 8
  %arrayidx24 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %30, i64 %27
  %top = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx24, i32 0, i32 0
  %31 = load i64, i64* %top, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %31)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %for.body.16
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %32 = load i64, i64* %which, align 8
  %inc28 = add i64 %32, 1
  store i64 %inc28, i64* %which, align 8
  br label %for.cond.13

for.end.29:                                       ; preds = %for.cond.13
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.29
  %33 = load i64, i64* %net, align 8
  %inc32 = add i64 %33, 1
  store i64 %inc32, i64* %net, align 8
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @DFSAboveVCG(%struct._nodeVCGType* %VCG, i64 %net) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %above = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %net, i64* %net.addr, align 8
  %0 = load i64, i64* %net.addr, align 8
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %1, i64 %0
  %netsAboveReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 3
  store i64 1, i64* %netsAboveReached, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %net.addr, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsAbove = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx1, i32 0, i32 1
  %5 = load i64, i64* %netsAbove, align 8
  %cmp = icmp ult i64 %2, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %s, align 8
  %7 = load i64, i64* %net.addr, align 8
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %8, i64 %7
  %netsAboveHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx2, i32 0, i32 0
  %9 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook, align 8
  %arrayidx3 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %9, i64 %6
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx3, i32 0, i32 3
  %10 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %s, align 8
  %12 = load i64, i64* %net.addr, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsAboveHook5 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 0
  %14 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook5, align 8
  %arrayidx6 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %14, i64 %11
  %bot = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx6, i32 0, i32 1
  %15 = load i64, i64* %bot, align 8
  store i64 %15, i64* %above, align 8
  %16 = load i64, i64* %above, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsAboveReached8 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 3
  %18 = load i64, i64* %netsAboveReached8, align 8
  %tobool9 = icmp ne i64 %18, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %20 = load i64, i64* %above, align 8
  call void @DFSAboveVCG(%struct._nodeVCGType* %19, i64 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load i64, i64* %s, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @DFSBelowVCG(%struct._nodeVCGType* %VCG, i64 %net) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %below = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %net, i64* %net.addr, align 8
  %0 = load i64, i64* %net.addr, align 8
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %1, i64 %0
  %netsBelowReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 7
  store i64 1, i64* %netsBelowReached, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %net.addr, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsBelow = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx1, i32 0, i32 5
  %5 = load i64, i64* %netsBelow, align 8
  %cmp = icmp ult i64 %2, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %s, align 8
  %7 = load i64, i64* %net.addr, align 8
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %8, i64 %7
  %netsBelowHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx2, i32 0, i32 4
  %9 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook, align 8
  %arrayidx3 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %9, i64 %6
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx3, i32 0, i32 3
  %10 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %s, align 8
  %12 = load i64, i64* %net.addr, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsBelowHook5 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 4
  %14 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook5, align 8
  %arrayidx6 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %14, i64 %11
  %top = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx6, i32 0, i32 0
  %15 = load i64, i64* %top, align 8
  store i64 %15, i64* %below, align 8
  %16 = load i64, i64* %below, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsBelowReached8 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 7
  %18 = load i64, i64* %netsBelowReached8, align 8
  %tobool9 = icmp ne i64 %18, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %20 = load i64, i64* %below, align 8
  call void @DFSBelowVCG(%struct._nodeVCGType* %19, i64 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load i64, i64* %s, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @SCCofVCG(%struct._nodeVCGType* %VCG, i64* %SCC, i64* %perSCC) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %SCC.addr = alloca i64*, align 8
  %perSCC.addr = alloca i64*, align 8
  %net = alloca i64, align 8
  %scc = alloca i64, align 8
  %per = alloca i64, align 8
  %label = alloca i64, align 8
  %which = alloca i64, align 8
  %choose = alloca i64, align 8
  %large = alloca i64, align 8
  %done = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64* %SCC, i64** %SCC.addr, align 8
  store i64* %perSCC, i64** %perSCC.addr, align 8
  store i64 0, i64* %label, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %3, i64 %2
  %netsAboveReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 3
  %4 = load i64, i64* %netsAboveReached, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %6 = load i64, i64* %net, align 8
  call void @SCC_DFSAboveVCG(%struct._nodeVCGType* %5, i64 %6, i64* %label)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %net, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %which, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i64 1, i64* %done, align 8
  store i64 0, i64* %choose, align 8
  store i64 0, i64* %large, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.14, %do.body
  %8 = load i64, i64* %net, align 8
  %9 = load i64, i64* @channelNets, align 8
  %cmp2 = icmp ule i64 %8, %9
  br i1 %cmp2, label %for.body.3, label %for.end.16

for.body.3:                                       ; preds = %for.cond.1
  %10 = load i64, i64* %net, align 8
  %11 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %11, i64 %10
  %netsBelowReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 7
  %12 = load i64, i64* %netsBelowReached, align 8
  %tobool5 = icmp ne i64 %12, 0
  br i1 %tobool5, label %if.end.13, label %if.then.6

if.then.6:                                        ; preds = %for.body.3
  %13 = load i64, i64* %net, align 8
  %14 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %14, i64 %13
  %netsAboveLabel = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 2
  %15 = load i64, i64* %netsAboveLabel, align 8
  %16 = load i64, i64* %large, align 8
  %cmp8 = icmp ugt i64 %15, %16
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.6
  %17 = load i64, i64* %net, align 8
  store i64 %17, i64* %choose, align 8
  %18 = load i64, i64* %net, align 8
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %19, i64 %18
  %netsAboveLabel11 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx10, i32 0, i32 2
  %20 = load i64, i64* %netsAboveLabel11, align 8
  store i64 %20, i64* %large, align 8
  store i64 0, i64* %done, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %for.body.3
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %21 = load i64, i64* %net, align 8
  %inc15 = add i64 %21, 1
  store i64 %inc15, i64* %net, align 8
  br label %for.cond.1

for.end.16:                                       ; preds = %for.cond.1
  %22 = load i64, i64* %done, align 8
  %tobool17 = icmp ne i64 %22, 0
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %for.end.16
  %23 = load i64, i64* %which, align 8
  %inc19 = add i64 %23, 1
  store i64 %inc19, i64* %which, align 8
  %24 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %25 = load i64, i64* %choose, align 8
  %26 = load i64, i64* %which, align 8
  call void @SCC_DFSBelowVCG(%struct._nodeVCGType* %24, i64 %25, i64 %26)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end.16
  br label %do.cond

do.cond:                                          ; preds = %if.end.20
  %27 = load i64, i64* %done, align 8
  %tobool21 = icmp ne i64 %27, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i64 0, i64* @totalSCC, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.32, %do.end
  %28 = load i64, i64* %net, align 8
  %29 = load i64, i64* @channelNets, align 8
  %cmp23 = icmp ule i64 %28, %29
  br i1 %cmp23, label %for.body.24, label %for.end.34

for.body.24:                                      ; preds = %for.cond.22
  %30 = load i64, i64* %net, align 8
  %31 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %31, i64 %30
  %netsBelowLabel = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx25, i32 0, i32 6
  %32 = load i64, i64* %netsBelowLabel, align 8
  %33 = load i64, i64* %net, align 8
  %34 = load i64*, i64** %SCC.addr, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %34, i64 %33
  store i64 %32, i64* %arrayidx26, align 8
  %35 = load i64, i64* %net, align 8
  %36 = load i64*, i64** %SCC.addr, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %36, i64 %35
  %37 = load i64, i64* %arrayidx27, align 8
  %38 = load i64, i64* @totalSCC, align 8
  %cmp28 = icmp ugt i64 %37, %38
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %for.body.24
  %39 = load i64, i64* %net, align 8
  %40 = load i64*, i64** %SCC.addr, align 8
  %arrayidx30 = getelementptr inbounds i64, i64* %40, i64 %39
  %41 = load i64, i64* %arrayidx30, align 8
  store i64 %41, i64* @totalSCC, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.body.24
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %42 = load i64, i64* %net, align 8
  %inc33 = add i64 %42, 1
  store i64 %inc33, i64* %net, align 8
  br label %for.cond.22

for.end.34:                                       ; preds = %for.cond.22
  store i64 1, i64* %scc, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.50, %for.end.34
  %43 = load i64, i64* %scc, align 8
  %44 = load i64, i64* @totalSCC, align 8
  %cmp36 = icmp ule i64 %43, %44
  br i1 %cmp36, label %for.body.37, label %for.end.52

for.body.37:                                      ; preds = %for.cond.35
  store i64 0, i64* %per, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.46, %for.body.37
  %45 = load i64, i64* %net, align 8
  %46 = load i64, i64* @channelNets, align 8
  %cmp39 = icmp ule i64 %45, %46
  br i1 %cmp39, label %for.body.40, label %for.end.48

for.body.40:                                      ; preds = %for.cond.38
  %47 = load i64, i64* %net, align 8
  %48 = load i64*, i64** %SCC.addr, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %48, i64 %47
  %49 = load i64, i64* %arrayidx41, align 8
  %50 = load i64, i64* %scc, align 8
  %cmp42 = icmp eq i64 %49, %50
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %for.body.40
  %51 = load i64, i64* %per, align 8
  %inc44 = add i64 %51, 1
  store i64 %inc44, i64* %per, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %for.body.40
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %52 = load i64, i64* %net, align 8
  %inc47 = add i64 %52, 1
  store i64 %inc47, i64* %net, align 8
  br label %for.cond.38

for.end.48:                                       ; preds = %for.cond.38
  %53 = load i64, i64* %per, align 8
  %54 = load i64, i64* %scc, align 8
  %55 = load i64*, i64** %perSCC.addr, align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %55, i64 %54
  store i64 %53, i64* %arrayidx49, align 8
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.48
  %56 = load i64, i64* %scc, align 8
  %inc51 = add i64 %56, 1
  store i64 %inc51, i64* %scc, align 8
  br label %for.cond.35

for.end.52:                                       ; preds = %for.cond.35
  ret void
}

; Function Attrs: nounwind uwtable
define void @SCC_DFSAboveVCG(%struct._nodeVCGType* %VCG, i64 %net, i64* %label) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net.addr = alloca i64, align 8
  %label.addr = alloca i64*, align 8
  %s = alloca i64, align 8
  %above = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %net, i64* %net.addr, align 8
  store i64* %label, i64** %label.addr, align 8
  %0 = load i64, i64* %net.addr, align 8
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %1, i64 %0
  %netsAboveReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 3
  store i64 1, i64* %netsAboveReached, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %net.addr, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsAbove = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx1, i32 0, i32 1
  %5 = load i64, i64* %netsAbove, align 8
  %cmp = icmp ult i64 %2, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %s, align 8
  %7 = load i64, i64* %net.addr, align 8
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %8, i64 %7
  %netsAboveHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx2, i32 0, i32 0
  %9 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook, align 8
  %arrayidx3 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %9, i64 %6
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx3, i32 0, i32 3
  %10 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %s, align 8
  %12 = load i64, i64* %net.addr, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsAboveHook5 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 0
  %14 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook5, align 8
  %arrayidx6 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %14, i64 %11
  %bot = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx6, i32 0, i32 1
  %15 = load i64, i64* %bot, align 8
  store i64 %15, i64* %above, align 8
  %16 = load i64, i64* %above, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsAboveReached8 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 3
  %18 = load i64, i64* %netsAboveReached8, align 8
  %tobool9 = icmp ne i64 %18, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %20 = load i64, i64* %above, align 8
  %21 = load i64*, i64** %label.addr, align 8
  call void @SCC_DFSAboveVCG(%struct._nodeVCGType* %19, i64 %20, i64* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load i64, i64* %s, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i64*, i64** %label.addr, align 8
  %24 = load i64, i64* %23, align 8
  %inc12 = add i64 %24, 1
  store i64 %inc12, i64* %23, align 8
  %25 = load i64*, i64** %label.addr, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %net.addr, align 8
  %28 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx13 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %28, i64 %27
  %netsAboveLabel = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx13, i32 0, i32 2
  store i64 %26, i64* %netsAboveLabel, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @SCC_DFSBelowVCG(%struct._nodeVCGType* %VCG, i64 %net, i64 %label) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net.addr = alloca i64, align 8
  %label.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %below = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %net, i64* %net.addr, align 8
  store i64 %label, i64* %label.addr, align 8
  %0 = load i64, i64* %net.addr, align 8
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %1, i64 %0
  %netsBelowReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 7
  store i64 1, i64* %netsBelowReached, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %net.addr, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsBelow = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx1, i32 0, i32 5
  %5 = load i64, i64* %netsBelow, align 8
  %cmp = icmp ult i64 %2, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %s, align 8
  %7 = load i64, i64* %net.addr, align 8
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %8, i64 %7
  %netsBelowHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx2, i32 0, i32 4
  %9 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook, align 8
  %arrayidx3 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %9, i64 %6
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx3, i32 0, i32 3
  %10 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %s, align 8
  %12 = load i64, i64* %net.addr, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsBelowHook5 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 4
  %14 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook5, align 8
  %arrayidx6 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %14, i64 %11
  %top = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx6, i32 0, i32 0
  %15 = load i64, i64* %top, align 8
  store i64 %15, i64* %below, align 8
  %16 = load i64, i64* %below, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsBelowReached8 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 7
  %18 = load i64, i64* %netsBelowReached8, align 8
  %tobool9 = icmp ne i64 %18, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %20 = load i64, i64* %below, align 8
  %21 = load i64, i64* %label.addr, align 8
  call void @SCC_DFSBelowVCG(%struct._nodeVCGType* %19, i64 %20, i64 %21)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load i64, i64* %s, align 8
  %inc = add i64 %22, 1
  store i64 %inc, i64* %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i64, i64* %label.addr, align 8
  %24 = load i64, i64* %net.addr, align 8
  %25 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %25, i64 %24
  %netsBelowLabel = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx12, i32 0, i32 6
  store i64 %23, i64* %netsBelowLabel, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @DumpSCC(i64* %SCC, i64* %perSCC) #0 {
entry:
  %SCC.addr = alloca i64*, align 8
  %perSCC.addr = alloca i64*, align 8
  %net = alloca i64, align 8
  %scc = alloca i64, align 8
  store i64* %SCC, i64** %SCC.addr, align 8
  store i64* %perSCC, i64** %perSCC.addr, align 8
  store i64 1, i64* %scc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i64, i64* %scc, align 8
  %1 = load i64, i64* @totalSCC, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.11

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %scc, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i64 %2)
  store i64 1, i64* %net, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i64, i64* %net, align 8
  %4 = load i64, i64* @channelNets, align 8
  %cmp2 = icmp ule i64 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i64, i64* %net, align 8
  %6 = load i64*, i64** %SCC.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx, align 8
  %8 = load i64, i64* %scc, align 8
  %cmp4 = icmp eq i64 %7, %8
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %9 = load i64, i64* %net, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i64 %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %net, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %net, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %11 = load i64, i64* %scc, align 8
  %12 = load i64*, i64** %perSCC.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx6, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i64 %13)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %14 = load i64, i64* %scc, align 8
  %inc10 = add i64 %14, 1
  store i64 %inc10, i64* %scc, align 8
  br label %for.cond

for.end.11:                                       ; preds = %for.cond
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @AcyclicVCG() #0 {
entry:
  %done = alloca i64, align 8
  %scc = alloca i64, align 8
  %net = alloca i64, align 8
  %top = alloca i64, align 8
  %bot = alloca i64, align 8
  %rep = alloca i64, align 8
  %which = alloca i64, align 8
  %total = alloca i64, align 8
  %cycle = alloca i64, align 8
  %acyclic = alloca i64, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i64 0, i64* %which, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i64, i64* %which, align 8
  %3 = load i64, i64* %net, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsAbove = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 1
  %5 = load i64, i64* %netsAbove, align 8
  %cmp2 = icmp ult i64 %2, %5
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %6 = load i64, i64* %which, align 8
  %7 = load i64, i64* %net, align 8
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %8, i64 %7
  %netsAboveHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 0
  %9 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook, align 8
  %arrayidx5 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %9, i64 %6
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx5, i32 0, i32 3
  store i64 0, i64* %removed, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load i64, i64* %which, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %which, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i64 0, i64* %which, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %11 = load i64, i64* %which, align 8
  %12 = load i64, i64* %net, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsBelow = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 5
  %14 = load i64, i64* %netsBelow, align 8
  %cmp8 = icmp ult i64 %11, %14
  br i1 %cmp8, label %for.body.9, label %for.end.15

for.body.9:                                       ; preds = %for.cond.6
  %15 = load i64, i64* %which, align 8
  %16 = load i64, i64* %net, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx10 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsBelowHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx10, i32 0, i32 4
  %18 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook, align 8
  %arrayidx11 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %18, i64 %15
  %removed12 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx11, i32 0, i32 3
  store i64 0, i64* %removed12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %19 = load i64, i64* %which, align 8
  %inc14 = add i64 %19, 1
  store i64 %inc14, i64* %which, align 8
  br label %for.cond.6

for.end.15:                                       ; preds = %for.cond.6
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end.15
  %20 = load i64, i64* %net, align 8
  %inc17 = add i64 %20, 1
  store i64 %inc17, i64* %net, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  store i64 1, i64* %acyclic, align 8
  store i64 0, i64* @removeTotalVCG, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.18
  store i64 1, i64* %done, align 8
  %21 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %21)
  %22 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %23 = load i64*, i64** @SCC, align 8
  %24 = load i64*, i64** @perSCC, align 8
  call void @SCCofVCG(%struct._nodeVCGType* %22, i64* %23, i64* %24)
  store i64 1, i64* %scc, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.24, %do.body
  %25 = load i64, i64* %scc, align 8
  %26 = load i64, i64* @totalSCC, align 8
  %cmp20 = icmp ule i64 %25, %26
  br i1 %cmp20, label %for.body.21, label %for.end.26

for.body.21:                                      ; preds = %for.cond.19
  %27 = load i64, i64* %scc, align 8
  %28 = load i64*, i64** @perSCC, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %28, i64 %27
  %29 = load i64, i64* %arrayidx22, align 8
  %cmp23 = icmp ugt i64 %29, 1
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.21
  store i64 0, i64* %acyclic, align 8
  store i64 0, i64* %done, align 8
  br label %for.end.26

if.end:                                           ; preds = %for.body.21
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %30 = load i64, i64* %scc, align 8
  %inc25 = add i64 %30, 1
  store i64 %inc25, i64* %scc, align 8
  br label %for.cond.19

for.end.26:                                       ; preds = %if.then, %for.cond.19
  %31 = load i64, i64* %done, align 8
  %tobool = icmp ne i64 %31, 0
  br i1 %tobool, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %for.end.26
  %32 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %33 = load i64*, i64** @SCC, align 8
  %34 = load i64*, i64** @perSCC, align 8
  %35 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  call void @RemoveConstraintVCG(%struct._nodeVCGType* %32, i64* %33, i64* %34, %struct._constraintVCGType** %35)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.end.26
  br label %do.cond

do.cond:                                          ; preds = %if.end.28
  %36 = load i64, i64* %done, align 8
  %tobool29 = icmp ne i64 %36, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %37 = load i64, i64* @removeTotalVCG, align 8
  store i64 %37, i64* %total, align 8
  store i64 0, i64* %rep, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.126, %do.end
  %38 = load i64, i64* %rep, align 8
  %39 = load i64, i64* @removeTotalVCG, align 8
  %cmp31 = icmp ult i64 %38, %39
  br i1 %cmp31, label %for.body.32, label %for.end.128

for.body.32:                                      ; preds = %for.cond.30
  %40 = load i64, i64* %rep, align 8
  %41 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  %arrayidx33 = getelementptr inbounds %struct._constraintVCGType*, %struct._constraintVCGType** %41, i64 %40
  %42 = load %struct._constraintVCGType*, %struct._constraintVCGType** %arrayidx33, align 8
  %top34 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %42, i32 0, i32 0
  %43 = load i64, i64* %top34, align 8
  store i64 %43, i64* %top, align 8
  %44 = load i64, i64* %rep, align 8
  %45 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  %arrayidx35 = getelementptr inbounds %struct._constraintVCGType*, %struct._constraintVCGType** %45, i64 %44
  %46 = load %struct._constraintVCGType*, %struct._constraintVCGType** %arrayidx35, align 8
  %bot36 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %46, i32 0, i32 1
  %47 = load i64, i64* %bot36, align 8
  store i64 %47, i64* %bot, align 8
  store i64 0, i64* %which, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.53, %for.body.32
  %48 = load i64, i64* %which, align 8
  %49 = load i64, i64* %top, align 8
  %50 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx38 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %50, i64 %49
  %netsAbove39 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx38, i32 0, i32 1
  %51 = load i64, i64* %netsAbove39, align 8
  %cmp40 = icmp ult i64 %48, %51
  br i1 %cmp40, label %for.body.41, label %for.end.55

for.body.41:                                      ; preds = %for.cond.37
  %52 = load i64, i64* %which, align 8
  %53 = load i64, i64* %top, align 8
  %54 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx42 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %54, i64 %53
  %netsAboveHook43 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx42, i32 0, i32 0
  %55 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook43, align 8
  %arrayidx44 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %55, i64 %52
  %bot45 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx44, i32 0, i32 1
  %56 = load i64, i64* %bot45, align 8
  %57 = load i64, i64* %bot, align 8
  %cmp46 = icmp eq i64 %56, %57
  br i1 %cmp46, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %for.body.41
  %58 = load i64, i64* %which, align 8
  %59 = load i64, i64* %top, align 8
  %60 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx48 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %60, i64 %59
  %netsAboveHook49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx48, i32 0, i32 0
  %61 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook49, align 8
  %arrayidx50 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %61, i64 %58
  %removed51 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx50, i32 0, i32 3
  store i64 0, i64* %removed51, align 8
  br label %for.end.55

if.end.52:                                        ; preds = %for.body.41
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %62 = load i64, i64* %which, align 8
  %inc54 = add i64 %62, 1
  store i64 %inc54, i64* %which, align 8
  br label %for.cond.37

for.end.55:                                       ; preds = %if.then.47, %for.cond.37
  store i64 0, i64* %which, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.72, %for.end.55
  %63 = load i64, i64* %which, align 8
  %64 = load i64, i64* %bot, align 8
  %65 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx57 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %65, i64 %64
  %netsBelow58 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx57, i32 0, i32 5
  %66 = load i64, i64* %netsBelow58, align 8
  %cmp59 = icmp ult i64 %63, %66
  br i1 %cmp59, label %for.body.60, label %for.end.74

for.body.60:                                      ; preds = %for.cond.56
  %67 = load i64, i64* %which, align 8
  %68 = load i64, i64* %bot, align 8
  %69 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx61 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %69, i64 %68
  %netsBelowHook62 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx61, i32 0, i32 4
  %70 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook62, align 8
  %arrayidx63 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %70, i64 %67
  %top64 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx63, i32 0, i32 0
  %71 = load i64, i64* %top64, align 8
  %72 = load i64, i64* %top, align 8
  %cmp65 = icmp eq i64 %71, %72
  br i1 %cmp65, label %if.then.66, label %if.end.71

if.then.66:                                       ; preds = %for.body.60
  %73 = load i64, i64* %which, align 8
  %74 = load i64, i64* %bot, align 8
  %75 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx67 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %75, i64 %74
  %netsBelowHook68 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx67, i32 0, i32 4
  %76 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook68, align 8
  %arrayidx69 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %76, i64 %73
  %removed70 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx69, i32 0, i32 3
  store i64 0, i64* %removed70, align 8
  br label %for.end.74

if.end.71:                                        ; preds = %for.body.60
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %77 = load i64, i64* %which, align 8
  %inc73 = add i64 %77, 1
  store i64 %inc73, i64* %which, align 8
  br label %for.cond.56

for.end.74:                                       ; preds = %if.then.66, %for.cond.56
  store i64 0, i64* %cycle, align 8
  %78 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %78)
  %79 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %80 = load i64*, i64** @SCC, align 8
  %81 = load i64*, i64** @perSCC, align 8
  call void @SCCofVCG(%struct._nodeVCGType* %79, i64* %80, i64* %81)
  store i64 1, i64* %scc, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.82, %for.end.74
  %82 = load i64, i64* %scc, align 8
  %83 = load i64, i64* @totalSCC, align 8
  %cmp76 = icmp ule i64 %82, %83
  br i1 %cmp76, label %for.body.77, label %for.end.84

for.body.77:                                      ; preds = %for.cond.75
  %84 = load i64, i64* %scc, align 8
  %85 = load i64*, i64** @perSCC, align 8
  %arrayidx78 = getelementptr inbounds i64, i64* %85, i64 %84
  %86 = load i64, i64* %arrayidx78, align 8
  %cmp79 = icmp ugt i64 %86, 1
  br i1 %cmp79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body.77
  store i64 1, i64* %cycle, align 8
  br label %for.end.84

if.end.81:                                        ; preds = %for.body.77
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %87 = load i64, i64* %scc, align 8
  %inc83 = add i64 %87, 1
  store i64 %inc83, i64* %scc, align 8
  br label %for.cond.75

for.end.84:                                       ; preds = %if.then.80, %for.cond.75
  %88 = load i64, i64* %cycle, align 8
  %tobool85 = icmp ne i64 %88, 0
  br i1 %tobool85, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %for.end.84
  store i64 0, i64* %which, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.103, %if.then.86
  %89 = load i64, i64* %which, align 8
  %90 = load i64, i64* %top, align 8
  %91 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx88 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %91, i64 %90
  %netsAbove89 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx88, i32 0, i32 1
  %92 = load i64, i64* %netsAbove89, align 8
  %cmp90 = icmp ult i64 %89, %92
  br i1 %cmp90, label %for.body.91, label %for.end.105

for.body.91:                                      ; preds = %for.cond.87
  %93 = load i64, i64* %which, align 8
  %94 = load i64, i64* %top, align 8
  %95 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx92 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %95, i64 %94
  %netsAboveHook93 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx92, i32 0, i32 0
  %96 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook93, align 8
  %arrayidx94 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %96, i64 %93
  %bot95 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx94, i32 0, i32 1
  %97 = load i64, i64* %bot95, align 8
  %98 = load i64, i64* %bot, align 8
  %cmp96 = icmp eq i64 %97, %98
  br i1 %cmp96, label %if.then.97, label %if.end.102

if.then.97:                                       ; preds = %for.body.91
  %99 = load i64, i64* %which, align 8
  %100 = load i64, i64* %top, align 8
  %101 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx98 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %101, i64 %100
  %netsAboveHook99 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx98, i32 0, i32 0
  %102 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook99, align 8
  %arrayidx100 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %102, i64 %99
  %removed101 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx100, i32 0, i32 3
  store i64 1, i64* %removed101, align 8
  br label %for.end.105

if.end.102:                                       ; preds = %for.body.91
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %103 = load i64, i64* %which, align 8
  %inc104 = add i64 %103, 1
  store i64 %inc104, i64* %which, align 8
  br label %for.cond.87

for.end.105:                                      ; preds = %if.then.97, %for.cond.87
  store i64 0, i64* %which, align 8
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.122, %for.end.105
  %104 = load i64, i64* %which, align 8
  %105 = load i64, i64* %bot, align 8
  %106 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx107 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %106, i64 %105
  %netsBelow108 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx107, i32 0, i32 5
  %107 = load i64, i64* %netsBelow108, align 8
  %cmp109 = icmp ult i64 %104, %107
  br i1 %cmp109, label %for.body.110, label %for.end.124

for.body.110:                                     ; preds = %for.cond.106
  %108 = load i64, i64* %which, align 8
  %109 = load i64, i64* %bot, align 8
  %110 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx111 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %110, i64 %109
  %netsBelowHook112 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx111, i32 0, i32 4
  %111 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook112, align 8
  %arrayidx113 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %111, i64 %108
  %top114 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx113, i32 0, i32 0
  %112 = load i64, i64* %top114, align 8
  %113 = load i64, i64* %top, align 8
  %cmp115 = icmp eq i64 %112, %113
  br i1 %cmp115, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %for.body.110
  %114 = load i64, i64* %which, align 8
  %115 = load i64, i64* %bot, align 8
  %116 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %arrayidx117 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %116, i64 %115
  %netsBelowHook118 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx117, i32 0, i32 4
  %117 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook118, align 8
  %arrayidx119 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %117, i64 %114
  %removed120 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx119, i32 0, i32 3
  store i64 1, i64* %removed120, align 8
  br label %for.end.124

if.end.121:                                       ; preds = %for.body.110
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %118 = load i64, i64* %which, align 8
  %inc123 = add i64 %118, 1
  store i64 %inc123, i64* %which, align 8
  br label %for.cond.106

for.end.124:                                      ; preds = %if.then.116, %for.cond.106
  br label %if.end.125

if.else:                                          ; preds = %for.end.84
  %119 = load i64, i64* %total, align 8
  %dec = add i64 %119, -1
  store i64 %dec, i64* %total, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.else, %for.end.124
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %120 = load i64, i64* %rep, align 8
  %inc127 = add i64 %120, 1
  store i64 %inc127, i64* %rep, align 8
  br label %for.cond.30

for.end.128:                                      ; preds = %for.cond.30
  %121 = load i64, i64* %acyclic, align 8
  %tobool129 = icmp ne i64 %121, 0
  br i1 %tobool129, label %if.then.130, label %if.else.131

if.then.130:                                      ; preds = %for.end.128
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.134

if.else.131:                                      ; preds = %for.end.128
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i32 0, i32 0))
  %122 = load i64, i64* %total, align 8
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i64 %122)
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.131, %if.then.130
  ret void
}

; Function Attrs: nounwind uwtable
define void @RemoveConstraintVCG(%struct._nodeVCGType* %VCG, i64* %SCC, i64* %perSCC, %struct._constraintVCGType** %removeVCG) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %SCC.addr = alloca i64*, align 8
  %perSCC.addr = alloca i64*, align 8
  %removeVCG.addr = alloca %struct._constraintVCGType**, align 8
  %scc = alloca i64, align 8
  %net = alloca i64, align 8
  %which = alloca i64, align 8
  %best = alloca i64, align 8
  %weight = alloca i64, align 8
  %top = alloca i64, align 8
  %bot = alloca i64, align 8
  %col = alloca i64, align 8
  %remove = alloca %struct._constraintVCGType*, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64* %SCC, i64** %SCC.addr, align 8
  store i64* %perSCC, i64** %perSCC.addr, align 8
  store %struct._constraintVCGType** %removeVCG, %struct._constraintVCGType*** %removeVCG.addr, align 8
  store i64 1, i64* %scc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.152, %entry
  %0 = load i64, i64* %scc, align 8
  %1 = load i64, i64* @totalSCC, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end.154

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %scc, align 8
  %3 = load i64*, i64** %perSCC.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %cmp1 = icmp ugt i64 %4, 1
  br i1 %cmp1, label %if.then, label %if.end.151

if.then:                                          ; preds = %for.body
  store %struct._constraintVCGType* null, %struct._constraintVCGType** %remove, align 8
  store i64 7, i64* %best, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.126, %if.then
  %5 = load i64, i64* %net, align 8
  %6 = load i64, i64* @channelNets, align 8
  %cmp3 = icmp ule i64 %5, %6
  br i1 %cmp3, label %for.body.4, label %for.end.128

for.body.4:                                       ; preds = %for.cond.2
  %7 = load i64, i64* %net, align 8
  %8 = load i64*, i64** %SCC.addr, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx5, align 8
  %10 = load i64, i64* %scc, align 8
  %cmp6 = icmp eq i64 %9, %10
  br i1 %cmp6, label %if.then.7, label %if.end.125

if.then.7:                                        ; preds = %for.body.4
  store i64 0, i64* %which, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then.7
  %11 = load i64, i64* %which, align 8
  %12 = load i64, i64* %net, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsAbove = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx9, i32 0, i32 1
  %14 = load i64, i64* %netsAbove, align 8
  %cmp10 = icmp ult i64 %11, %14
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.8
  %15 = load i64, i64* %which, align 8
  %16 = load i64, i64* %net, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsAboveHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx12, i32 0, i32 0
  %18 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook, align 8
  %arrayidx13 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %18, i64 %15
  %bot14 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx13, i32 0, i32 1
  %19 = load i64, i64* %bot14, align 8
  store i64 %19, i64* %bot, align 8
  %20 = load i64, i64* %bot, align 8
  %21 = load i64*, i64** %SCC.addr, align 8
  %arrayidx15 = getelementptr inbounds i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx15, align 8
  %23 = load i64, i64* %scc, align 8
  %cmp16 = icmp eq i64 %22, %23
  br i1 %cmp16, label %land.lhs.true, label %if.end.124

land.lhs.true:                                    ; preds = %for.body.11
  %24 = load i64, i64* %which, align 8
  %25 = load i64, i64* %net, align 8
  %26 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %26, i64 %25
  %netsAboveHook18 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx17, i32 0, i32 0
  %27 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook18, align 8
  %arrayidx19 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %27, i64 %24
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx19, i32 0, i32 3
  %28 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %28, 0
  br i1 %tobool, label %if.end.124, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true
  %29 = load i64, i64* %which, align 8
  %30 = load i64, i64* %net, align 8
  %31 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %31, i64 %30
  %netsAboveHook22 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx21, i32 0, i32 0
  %32 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook22, align 8
  %arrayidx23 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %32, i64 %29
  %col24 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx23, i32 0, i32 2
  %33 = load i64, i64* %col24, align 8
  store i64 %33, i64* %col, align 8
  store i64 0, i64* %weight, align 8
  %34 = load i64, i64* %col, align 8
  %cmp25 = icmp eq i64 %34, 1
  br i1 %cmp25, label %if.then.26, label %if.else.46

if.then.26:                                       ; preds = %if.then.20
  %35 = load i64, i64* %weight, align 8
  %add = add i64 %35, 3
  store i64 %add, i64* %weight, align 8
  %36 = load i64, i64* %col, align 8
  %add27 = add i64 %36, 1
  %37 = load i64*, i64** @TOP, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %37, i64 %add27
  %38 = load i64, i64* %arrayidx28, align 8
  %tobool29 = icmp ne i64 %38, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.else

land.lhs.true.30:                                 ; preds = %if.then.26
  %39 = load i64, i64* %col, align 8
  %add31 = add i64 %39, 1
  %40 = load i64*, i64** @BOT, align 8
  %arrayidx32 = getelementptr inbounds i64, i64* %40, i64 %add31
  %41 = load i64, i64* %arrayidx32, align 8
  %tobool33 = icmp ne i64 %41, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true.30
  %42 = load i64, i64* %weight, align 8
  %add35 = add i64 %42, 3
  store i64 %add35, i64* %weight, align 8
  br label %if.end.45

if.else:                                          ; preds = %land.lhs.true.30, %if.then.26
  %43 = load i64, i64* %col, align 8
  %add36 = add i64 %43, 1
  %44 = load i64*, i64** @TOP, align 8
  %arrayidx37 = getelementptr inbounds i64, i64* %44, i64 %add36
  %45 = load i64, i64* %arrayidx37, align 8
  %tobool38 = icmp ne i64 %45, 0
  br i1 %tobool38, label %if.else.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %46 = load i64, i64* %col, align 8
  %add39 = add i64 %46, 1
  %47 = load i64*, i64** @BOT, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %47, i64 %add39
  %48 = load i64, i64* %arrayidx40, align 8
  %tobool41 = icmp ne i64 %48, 0
  br i1 %tobool41, label %if.else.43, label %if.then.42

if.then.42:                                       ; preds = %lor.lhs.false
  br label %if.end

if.else.43:                                       ; preds = %lor.lhs.false, %if.else
  %49 = load i64, i64* %weight, align 8
  %add44 = add i64 %49, 2
  store i64 %add44, i64* %weight, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.43, %if.then.42
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %if.then.34
  br label %if.end.117

if.else.46:                                       ; preds = %if.then.20
  %50 = load i64, i64* %col, align 8
  %51 = load i64, i64* @channelColumns, align 8
  %cmp47 = icmp eq i64 %50, %51
  br i1 %cmp47, label %if.then.48, label %if.else.71

if.then.48:                                       ; preds = %if.else.46
  %52 = load i64, i64* %weight, align 8
  %add49 = add i64 %52, 3
  store i64 %add49, i64* %weight, align 8
  %53 = load i64, i64* %col, align 8
  %sub = sub i64 %53, 1
  %54 = load i64*, i64** @TOP, align 8
  %arrayidx50 = getelementptr inbounds i64, i64* %54, i64 %sub
  %55 = load i64, i64* %arrayidx50, align 8
  %tobool51 = icmp ne i64 %55, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.else.58

land.lhs.true.52:                                 ; preds = %if.then.48
  %56 = load i64, i64* %col, align 8
  %sub53 = sub i64 %56, 1
  %57 = load i64*, i64** @BOT, align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %57, i64 %sub53
  %58 = load i64, i64* %arrayidx54, align 8
  %tobool55 = icmp ne i64 %58, 0
  br i1 %tobool55, label %if.then.56, label %if.else.58

if.then.56:                                       ; preds = %land.lhs.true.52
  %59 = load i64, i64* %weight, align 8
  %add57 = add i64 %59, 3
  store i64 %add57, i64* %weight, align 8
  br label %if.end.70

if.else.58:                                       ; preds = %land.lhs.true.52, %if.then.48
  %60 = load i64, i64* %col, align 8
  %sub59 = sub i64 %60, 1
  %61 = load i64*, i64** @TOP, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %61, i64 %sub59
  %62 = load i64, i64* %arrayidx60, align 8
  %tobool61 = icmp ne i64 %62, 0
  br i1 %tobool61, label %if.else.67, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.else.58
  %63 = load i64, i64* %col, align 8
  %sub63 = sub i64 %63, 1
  %64 = load i64*, i64** @BOT, align 8
  %arrayidx64 = getelementptr inbounds i64, i64* %64, i64 %sub63
  %65 = load i64, i64* %arrayidx64, align 8
  %tobool65 = icmp ne i64 %65, 0
  br i1 %tobool65, label %if.else.67, label %if.then.66

if.then.66:                                       ; preds = %lor.lhs.false.62
  br label %if.end.69

if.else.67:                                       ; preds = %lor.lhs.false.62, %if.else.58
  %66 = load i64, i64* %weight, align 8
  %add68 = add i64 %66, 2
  store i64 %add68, i64* %weight, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.67, %if.then.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.56
  br label %if.end.116

if.else.71:                                       ; preds = %if.else.46
  %67 = load i64, i64* %col, align 8
  %sub72 = sub i64 %67, 1
  %68 = load i64*, i64** @TOP, align 8
  %arrayidx73 = getelementptr inbounds i64, i64* %68, i64 %sub72
  %69 = load i64, i64* %arrayidx73, align 8
  %tobool74 = icmp ne i64 %69, 0
  br i1 %tobool74, label %land.lhs.true.75, label %if.else.81

land.lhs.true.75:                                 ; preds = %if.else.71
  %70 = load i64, i64* %col, align 8
  %sub76 = sub i64 %70, 1
  %71 = load i64*, i64** @BOT, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %71, i64 %sub76
  %72 = load i64, i64* %arrayidx77, align 8
  %tobool78 = icmp ne i64 %72, 0
  br i1 %tobool78, label %if.then.79, label %if.else.81

if.then.79:                                       ; preds = %land.lhs.true.75
  %73 = load i64, i64* %weight, align 8
  %add80 = add i64 %73, 3
  store i64 %add80, i64* %weight, align 8
  br label %if.end.93

if.else.81:                                       ; preds = %land.lhs.true.75, %if.else.71
  %74 = load i64, i64* %col, align 8
  %sub82 = sub i64 %74, 1
  %75 = load i64*, i64** @TOP, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %75, i64 %sub82
  %76 = load i64, i64* %arrayidx83, align 8
  %tobool84 = icmp ne i64 %76, 0
  br i1 %tobool84, label %if.else.90, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %if.else.81
  %77 = load i64, i64* %col, align 8
  %sub86 = sub i64 %77, 1
  %78 = load i64*, i64** @BOT, align 8
  %arrayidx87 = getelementptr inbounds i64, i64* %78, i64 %sub86
  %79 = load i64, i64* %arrayidx87, align 8
  %tobool88 = icmp ne i64 %79, 0
  br i1 %tobool88, label %if.else.90, label %if.then.89

if.then.89:                                       ; preds = %lor.lhs.false.85
  br label %if.end.92

if.else.90:                                       ; preds = %lor.lhs.false.85, %if.else.81
  %80 = load i64, i64* %weight, align 8
  %add91 = add i64 %80, 2
  store i64 %add91, i64* %weight, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.90, %if.then.89
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then.79
  %81 = load i64, i64* %col, align 8
  %add94 = add i64 %81, 1
  %82 = load i64*, i64** @TOP, align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %82, i64 %add94
  %83 = load i64, i64* %arrayidx95, align 8
  %tobool96 = icmp ne i64 %83, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.103

land.lhs.true.97:                                 ; preds = %if.end.93
  %84 = load i64, i64* %col, align 8
  %add98 = add i64 %84, 1
  %85 = load i64*, i64** @BOT, align 8
  %arrayidx99 = getelementptr inbounds i64, i64* %85, i64 %add98
  %86 = load i64, i64* %arrayidx99, align 8
  %tobool100 = icmp ne i64 %86, 0
  br i1 %tobool100, label %if.then.101, label %if.else.103

if.then.101:                                      ; preds = %land.lhs.true.97
  %87 = load i64, i64* %weight, align 8
  %add102 = add i64 %87, 3
  store i64 %add102, i64* %weight, align 8
  br label %if.end.115

if.else.103:                                      ; preds = %land.lhs.true.97, %if.end.93
  %88 = load i64, i64* %col, align 8
  %add104 = add i64 %88, 1
  %89 = load i64*, i64** @TOP, align 8
  %arrayidx105 = getelementptr inbounds i64, i64* %89, i64 %add104
  %90 = load i64, i64* %arrayidx105, align 8
  %tobool106 = icmp ne i64 %90, 0
  br i1 %tobool106, label %if.else.112, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %if.else.103
  %91 = load i64, i64* %col, align 8
  %add108 = add i64 %91, 1
  %92 = load i64*, i64** @BOT, align 8
  %arrayidx109 = getelementptr inbounds i64, i64* %92, i64 %add108
  %93 = load i64, i64* %arrayidx109, align 8
  %tobool110 = icmp ne i64 %93, 0
  br i1 %tobool110, label %if.else.112, label %if.then.111

if.then.111:                                      ; preds = %lor.lhs.false.107
  br label %if.end.114

if.else.112:                                      ; preds = %lor.lhs.false.107, %if.else.103
  %94 = load i64, i64* %weight, align 8
  %add113 = add i64 %94, 2
  store i64 %add113, i64* %weight, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.112, %if.then.111
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.101
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.70
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.45
  %95 = load i64, i64* %weight, align 8
  %96 = load i64, i64* %best, align 8
  %cmp118 = icmp ult i64 %95, %96
  br i1 %cmp118, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %if.end.117
  %97 = load i64, i64* %weight, align 8
  store i64 %97, i64* %best, align 8
  %98 = load i64, i64* %which, align 8
  %99 = load i64, i64* %net, align 8
  %100 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx120 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %100, i64 %99
  %netsAboveHook121 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx120, i32 0, i32 0
  %101 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook121, align 8
  %arrayidx122 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %101, i64 %98
  store %struct._constraintVCGType* %arrayidx122, %struct._constraintVCGType** %remove, align 8
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.119, %if.end.117
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %land.lhs.true, %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.124
  %102 = load i64, i64* %which, align 8
  %inc = add i64 %102, 1
  store i64 %inc, i64* %which, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %if.end.125

if.end.125:                                       ; preds = %for.end, %for.body.4
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.125
  %103 = load i64, i64* %net, align 8
  %inc127 = add i64 %103, 1
  store i64 %inc127, i64* %net, align 8
  br label %for.cond.2

for.end.128:                                      ; preds = %for.cond.2
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %104)
  %105 = load %struct._constraintVCGType*, %struct._constraintVCGType** %remove, align 8
  %106 = load i64, i64* @removeTotalVCG, align 8
  %107 = load %struct._constraintVCGType**, %struct._constraintVCGType*** %removeVCG.addr, align 8
  %arrayidx129 = getelementptr inbounds %struct._constraintVCGType*, %struct._constraintVCGType** %107, i64 %106
  store %struct._constraintVCGType* %105, %struct._constraintVCGType** %arrayidx129, align 8
  %108 = load i64, i64* @removeTotalVCG, align 8
  %inc130 = add i64 %108, 1
  store i64 %inc130, i64* @removeTotalVCG, align 8
  %109 = load %struct._constraintVCGType*, %struct._constraintVCGType** %remove, align 8
  %top131 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %109, i32 0, i32 0
  %110 = load i64, i64* %top131, align 8
  store i64 %110, i64* %top, align 8
  %111 = load %struct._constraintVCGType*, %struct._constraintVCGType** %remove, align 8
  %bot132 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %111, i32 0, i32 1
  %112 = load i64, i64* %bot132, align 8
  store i64 %112, i64* %bot, align 8
  %113 = load %struct._constraintVCGType*, %struct._constraintVCGType** %remove, align 8
  %removed133 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %113, i32 0, i32 3
  store i64 1, i64* %removed133, align 8
  store i64 0, i64* %which, align 8
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.148, %for.end.128
  %114 = load i64, i64* %which, align 8
  %115 = load i64, i64* %bot, align 8
  %116 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx135 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %116, i64 %115
  %netsBelow = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx135, i32 0, i32 5
  %117 = load i64, i64* %netsBelow, align 8
  %cmp136 = icmp ult i64 %114, %117
  br i1 %cmp136, label %for.body.137, label %for.end.150

for.body.137:                                     ; preds = %for.cond.134
  %118 = load i64, i64* %which, align 8
  %119 = load i64, i64* %bot, align 8
  %120 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx138 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %120, i64 %119
  %netsBelowHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx138, i32 0, i32 4
  %121 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook, align 8
  %arrayidx139 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %121, i64 %118
  %top140 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx139, i32 0, i32 0
  %122 = load i64, i64* %top140, align 8
  %123 = load i64, i64* %top, align 8
  %cmp141 = icmp eq i64 %122, %123
  br i1 %cmp141, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %for.body.137
  %124 = load i64, i64* %which, align 8
  %125 = load i64, i64* %bot, align 8
  %126 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx143 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %126, i64 %125
  %netsBelowHook144 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx143, i32 0, i32 4
  %127 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook144, align 8
  %arrayidx145 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %127, i64 %124
  %removed146 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx145, i32 0, i32 3
  store i64 1, i64* %removed146, align 8
  br label %for.end.150

if.end.147:                                       ; preds = %for.body.137
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %128 = load i64, i64* %which, align 8
  %inc149 = add i64 %128, 1
  store i64 %inc149, i64* %which, align 8
  br label %for.cond.134

for.end.150:                                      ; preds = %if.then.142, %for.cond.134
  br label %if.end.151

if.end.151:                                       ; preds = %for.end.150, %for.body
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %129 = load i64, i64* %scc, align 8
  %inc153 = add i64 %129, 1
  store i64 %inc153, i64* %scc, align 8
  br label %for.cond

for.end.154:                                      ; preds = %for.cond
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i64 @ExistPathAboveVCG(%struct._nodeVCGType* %VCG, i64 %above, i64 %below) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %above.addr = alloca i64, align 8
  %below.addr = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %above, i64* %above.addr, align 8
  store i64 %below, i64* %below.addr, align 8
  %0 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %0)
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %2 = load i64, i64* %above.addr, align 8
  call void @DFSAboveVCG(%struct._nodeVCGType* %1, i64 %2)
  %3 = load i64, i64* %below.addr, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsAboveReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 3
  %5 = load i64, i64* %netsAboveReached, align 8
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define void @LongestPathVCG(%struct._nodeVCGType* %VCG, i64 %net) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net.addr = alloca i64, align 8
  %track = alloca i64, align 8
  %bot = alloca i64, align 8
  %top = alloca i64, align 8
  %not = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %net, i64* %net.addr, align 8
  %0 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %0)
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %2 = load i64, i64* %net.addr, align 8
  %call = call i64 @DFSAboveLongestPathVCG(%struct._nodeVCGType* %1, i64 %2)
  %sub = sub i64 %call, 1
  store i64 %sub, i64* @cardBotNotPref, align 8
  %3 = load i64, i64* @cardBotNotPref, align 8
  store i64 %3, i64* %bot, align 8
  %4 = load i64, i64* @channelTracks, align 8
  store i64 %4, i64* %track, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %track, align 8
  %cmp = icmp uge i64 %5, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %bot, align 8
  %cmp1 = icmp ugt i64 %6, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i64, i64* %track, align 8
  %8 = load i64*, i64** @tracksBotNotPref, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %7
  store i64 1, i64* %arrayidx, align 8
  %9 = load i64, i64* %bot, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %bot, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i64, i64* %track, align 8
  %11 = load i64*, i64** @tracksBotNotPref, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %11, i64 %10
  store i64 0, i64* %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, i64* %track, align 8
  %dec3 = add i64 %12, -1
  store i64 %dec3, i64* %track, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %13)
  %14 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %15 = load i64, i64* %net.addr, align 8
  %call4 = call i64 @DFSBelowLongestPathVCG(%struct._nodeVCGType* %14, i64 %15)
  %sub5 = sub i64 %call4, 1
  store i64 %sub5, i64* @cardTopNotPref, align 8
  %16 = load i64, i64* @cardTopNotPref, align 8
  store i64 %16, i64* %top, align 8
  store i64 1, i64* %track, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %for.end
  %17 = load i64, i64* %track, align 8
  %18 = load i64, i64* @channelTracks, align 8
  %cmp7 = icmp ule i64 %17, %18
  br i1 %cmp7, label %for.body.8, label %for.end.17

for.body.8:                                       ; preds = %for.cond.6
  %19 = load i64, i64* %top, align 8
  %cmp9 = icmp ugt i64 %19, 0
  br i1 %cmp9, label %if.then.10, label %if.else.13

if.then.10:                                       ; preds = %for.body.8
  %20 = load i64, i64* %track, align 8
  %21 = load i64*, i64** @tracksTopNotPref, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %21, i64 %20
  store i64 1, i64* %arrayidx11, align 8
  %22 = load i64, i64* %top, align 8
  %dec12 = add i64 %22, -1
  store i64 %dec12, i64* %top, align 8
  br label %if.end.15

if.else.13:                                       ; preds = %for.body.8
  %23 = load i64, i64* %track, align 8
  %24 = load i64*, i64** @tracksTopNotPref, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %24, i64 %23
  store i64 0, i64* %arrayidx14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.10
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %25 = load i64, i64* %track, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %track, align 8
  br label %for.cond.6

for.end.17:                                       ; preds = %for.cond.6
  store i64 0, i64* %not, align 8
  store i64 1, i64* %track, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.30, %for.end.17
  %26 = load i64, i64* %track, align 8
  %27 = load i64, i64* @channelTracks, align 8
  %cmp19 = icmp ule i64 %26, %27
  br i1 %cmp19, label %for.body.20, label %for.end.32

for.body.20:                                      ; preds = %for.cond.18
  %28 = load i64, i64* %track, align 8
  %29 = load i64*, i64** @tracksTopNotPref, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %29, i64 %28
  %30 = load i64, i64* %arrayidx21, align 8
  %tobool = icmp ne i64 %30, 0
  br i1 %tobool, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.20
  %31 = load i64, i64* %track, align 8
  %32 = load i64*, i64** @tracksBotNotPref, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %32, i64 %31
  %33 = load i64, i64* %arrayidx22, align 8
  %tobool23 = icmp ne i64 %33, 0
  br i1 %tobool23, label %if.then.24, label %if.else.27

if.then.24:                                       ; preds = %lor.lhs.false, %for.body.20
  %34 = load i64, i64* %track, align 8
  %35 = load i64*, i64** @tracksNotPref, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %35, i64 %34
  store i64 1, i64* %arrayidx25, align 8
  %36 = load i64, i64* %not, align 8
  %inc26 = add i64 %36, 1
  store i64 %inc26, i64* %not, align 8
  br label %if.end.29

if.else.27:                                       ; preds = %lor.lhs.false
  %37 = load i64, i64* %track, align 8
  %38 = load i64*, i64** @tracksNotPref, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %38, i64 %37
  store i64 0, i64* %arrayidx28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.27, %if.then.24
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %39 = load i64, i64* %track, align 8
  %inc31 = add i64 %39, 1
  store i64 %inc31, i64* %track, align 8
  br label %for.cond.18

for.end.32:                                       ; preds = %for.cond.18
  %40 = load i64, i64* %not, align 8
  store i64 %40, i64* @cardNotPref, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @DFSAboveLongestPathVCG(%struct._nodeVCGType* %VCG, i64 %net) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %above = alloca i64, align 8
  %path = alloca i64, align 8
  %longest = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %net, i64* %net.addr, align 8
  store i64 0, i64* %longest, align 8
  %0 = load i64, i64* %net.addr, align 8
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %1, i64 %0
  %netsAboveReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 3
  store i64 1, i64* %netsAboveReached, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %net.addr, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsAbove = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx1, i32 0, i32 1
  %5 = load i64, i64* %netsAbove, align 8
  %cmp = icmp ult i64 %2, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %s, align 8
  %7 = load i64, i64* %net.addr, align 8
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %8, i64 %7
  %netsAboveHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx2, i32 0, i32 0
  %9 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook, align 8
  %arrayidx3 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %9, i64 %6
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx3, i32 0, i32 3
  %10 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %s, align 8
  %12 = load i64, i64* %net.addr, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsAboveHook5 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 0
  %14 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsAboveHook5, align 8
  %arrayidx6 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %14, i64 %11
  %bot = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx6, i32 0, i32 1
  %15 = load i64, i64* %bot, align 8
  store i64 %15, i64* %above, align 8
  %16 = load i64, i64* %above, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsAboveReached8 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 3
  %18 = load i64, i64* %netsAboveReached8, align 8
  %tobool9 = icmp ne i64 %18, 0
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %20 = load i64, i64* %above, align 8
  %call = call i64 @DFSAboveLongestPathVCG(%struct._nodeVCGType* %19, i64 %20)
  store i64 %call, i64* %path, align 8
  %21 = load i64, i64* %path, align 8
  %22 = load i64, i64* %longest, align 8
  %cmp11 = icmp ugt i64 %21, %22
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.10
  %23 = load i64, i64* %path, align 8
  store i64 %23, i64* %longest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %24 = load i64, i64* %s, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i64, i64* %longest, align 8
  %add = add i64 %25, 1
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @DFSBelowLongestPathVCG(%struct._nodeVCGType* %VCG, i64 %net) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %net.addr = alloca i64, align 8
  %s = alloca i64, align 8
  %below = alloca i64, align 8
  %path = alloca i64, align 8
  %longest = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %net, i64* %net.addr, align 8
  store i64 0, i64* %longest, align 8
  %0 = load i64, i64* %net.addr, align 8
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %1, i64 %0
  %netsBelowReached = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx, i32 0, i32 7
  store i64 1, i64* %netsBelowReached, align 8
  store i64 0, i64* %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %s, align 8
  %3 = load i64, i64* %net.addr, align 8
  %4 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %4, i64 %3
  %netsBelow = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx1, i32 0, i32 5
  %5 = load i64, i64* %netsBelow, align 8
  %cmp = icmp ult i64 %2, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %s, align 8
  %7 = load i64, i64* %net.addr, align 8
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %8, i64 %7
  %netsBelowHook = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx2, i32 0, i32 4
  %9 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook, align 8
  %arrayidx3 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %9, i64 %6
  %removed = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx3, i32 0, i32 3
  %10 = load i64, i64* %removed, align 8
  %tobool = icmp ne i64 %10, 0
  br i1 %tobool, label %if.end.14, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i64, i64* %s, align 8
  %12 = load i64, i64* %net.addr, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %12
  %netsBelowHook5 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx4, i32 0, i32 4
  %14 = load %struct._constraintVCGType*, %struct._constraintVCGType** %netsBelowHook5, align 8
  %arrayidx6 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %14, i64 %11
  %top = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %arrayidx6, i32 0, i32 0
  %15 = load i64, i64* %top, align 8
  store i64 %15, i64* %below, align 8
  %16 = load i64, i64* %below, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %16
  %netsBelowReached8 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %arrayidx7, i32 0, i32 7
  %18 = load i64, i64* %netsBelowReached8, align 8
  %tobool9 = icmp ne i64 %18, 0
  br i1 %tobool9, label %if.end.13, label %if.then.10

if.then.10:                                       ; preds = %if.then
  %19 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %20 = load i64, i64* %below, align 8
  %call = call i64 @DFSBelowLongestPathVCG(%struct._nodeVCGType* %19, i64 %20)
  store i64 %call, i64* %path, align 8
  %21 = load i64, i64* %path, align 8
  %22 = load i64, i64* %longest, align 8
  %cmp11 = icmp ugt i64 %21, %22
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.10
  %23 = load i64, i64* %path, align 8
  store i64 %23, i64* %longest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.10
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %24 = load i64, i64* %s, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load i64, i64* %longest, align 8
  %add = add i64 %25, 1
  ret i64 %add
}

; Function Attrs: nounwind uwtable
define i64 @VCV(%struct._nodeVCGType* %VCG, i64 %check, i64 %track, i64* %assign) #0 {
entry:
  %VCG.addr = alloca %struct._nodeVCGType*, align 8
  %check.addr = alloca i64, align 8
  %track.addr = alloca i64, align 8
  %assign.addr = alloca i64*, align 8
  %net = alloca i64, align 8
  %vcv = alloca i64, align 8
  store %struct._nodeVCGType* %VCG, %struct._nodeVCGType** %VCG.addr, align 8
  store i64 %check, i64* %check.addr, align 8
  store i64 %track, i64* %track.addr, align 8
  store i64* %assign, i64** %assign.addr, align 8
  store i64 0, i64* %vcv, align 8
  store i64 1, i64* %net, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %net, align 8
  %1 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %net, align 8
  %3 = load i64*, i64** %assign.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.then, label %if.end.24

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %net, align 8
  %6 = load i64*, i64** %assign.addr, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64, i64* %track.addr, align 8
  %cmp2 = icmp ult i64 %7, %8
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %10 = load i64, i64* %net, align 8
  %11 = load i64, i64* %check.addr, align 8
  %call = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %9, i64 %10, i64 %11)
  %tobool4 = icmp ne i64 %call, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.3
  %12 = load i64, i64* %vcv, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %vcv, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.3
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %13 = load i64, i64* %net, align 8
  %14 = load i64*, i64** %assign.addr, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %14, i64 %13
  %15 = load i64, i64* %arrayidx6, align 8
  %16 = load i64, i64* %track.addr, align 8
  %cmp7 = icmp ugt i64 %15, %16
  br i1 %cmp7, label %if.then.8, label %if.else.14

if.then.8:                                        ; preds = %if.else
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %18 = load i64, i64* %check.addr, align 8
  %19 = load i64, i64* %net, align 8
  %call9 = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %17, i64 %18, i64 %19)
  %tobool10 = icmp ne i64 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.then.8
  %20 = load i64, i64* %vcv, align 8
  %inc12 = add i64 %20, 1
  store i64 %inc12, i64* %vcv, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.8
  br label %if.end.22

if.else.14:                                       ; preds = %if.else
  %21 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %22 = load i64, i64* %net, align 8
  %23 = load i64, i64* %check.addr, align 8
  %call15 = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %21, i64 %22, i64 %23)
  %tobool16 = icmp ne i64 %call15, 0
  br i1 %tobool16, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.14
  %24 = load %struct._nodeVCGType*, %struct._nodeVCGType** %VCG.addr, align 8
  %25 = load i64, i64* %check.addr, align 8
  %26 = load i64, i64* %net, align 8
  %call17 = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %24, i64 %25, i64 %26)
  %tobool18 = icmp ne i64 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %lor.lhs.false, %if.else.14
  %27 = load i64, i64* %vcv, align 8
  %inc20 = add i64 %27, 1
  store i64 %inc20, i64* %vcv, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %lor.lhs.false
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %28 = load i64, i64* %net, align 8
  %inc25 = add i64 %28, 1
  store i64 %inc25, i64* %net, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i64, i64* %vcv, align 8
  ret i64 %29
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
