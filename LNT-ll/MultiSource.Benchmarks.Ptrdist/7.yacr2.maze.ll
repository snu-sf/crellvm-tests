; ModuleID = './MultiSource.Benchmarks.Ptrdist/7.yacr2.maze.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@channelColumns = external global i64, align 8
@channelTracks = external global i64, align 8
@horzPlane = internal global i8* null, align 8
@vertPlane = internal global i8* null, align 8
@viaPlane = internal global i8* null, align 8
@mazeRoute = internal global i8* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [42 x i8] c"unable to allocate plane allocation maps\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"           \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@TOP = external global i64*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%%%c%%\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Track %3d: \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@BOT = external global i64*, align 8
@channelNets = external global i64, align 8
@FIRST = external global i64*, align 8
@LAST = external global i64*, align 8
@netsAssign = external global i64*, align 8

; Function Attrs: nounwind uwtable
define void @InitAllocMaps() #0 {
entry:
  %0 = load i64, i64* @channelColumns, align 8
  %add = add i64 %0, 1
  %1 = load i64, i64* @channelTracks, align 8
  %add1 = add i64 %1, 3
  %mul = mul i64 %add, %add1
  %call = call noalias i8* @malloc(i64 %mul) #4
  store i8* %call, i8** @horzPlane, align 8
  %2 = load i64, i64* @channelColumns, align 8
  %add2 = add i64 %2, 1
  %3 = load i64, i64* @channelTracks, align 8
  %add3 = add i64 %3, 3
  %mul4 = mul i64 %add2, %add3
  %call5 = call noalias i8* @malloc(i64 %mul4) #4
  store i8* %call5, i8** @vertPlane, align 8
  %4 = load i64, i64* @channelColumns, align 8
  %add6 = add i64 %4, 1
  %5 = load i64, i64* @channelTracks, align 8
  %add7 = add i64 %5, 3
  %mul8 = mul i64 %add6, %add7
  %call9 = call noalias i8* @malloc(i64 %mul8) #4
  store i8* %call9, i8** @viaPlane, align 8
  %6 = load i64, i64* @channelColumns, align 8
  %add10 = add i64 %6, 1
  %call11 = call noalias i8* @malloc(i64 %add10) #4
  store i8* %call11, i8** @mazeRoute, align 8
  %7 = load i8*, i8** @horzPlane, align 8
  %cmp = icmp eq i8* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load i8*, i8** @vertPlane, align 8
  %cmp12 = icmp eq i8* %8, null
  br i1 %cmp12, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %9 = load i8*, i8** @viaPlane, align 8
  %cmp14 = icmp eq i8* %9, null
  br i1 %cmp14, label %if.then, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.13
  %10 = load i8*, i8** @mazeRoute, align 8
  %cmp16 = icmp eq i8* %10, null
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.15, %lor.lhs.false.13, %lor.lhs.false, %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false.15
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define void @FreeAllocMaps() #0 {
entry:
  %0 = load i8*, i8** @horzPlane, align 8
  call void @free(i8* %0) #4
  %1 = load i8*, i8** @vertPlane, align 8
  call void @free(i8* %1) #4
  %2 = load i8*, i8** @viaPlane, align 8
  call void @free(i8* %2) #4
  %3 = load i8*, i8** @mazeRoute, align 8
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @DrawSegment(i8* %plane, i64 %x1, i64 %y1, i64 %x2, i64 %y2) #0 {
entry:
  %plane.addr = alloca i8*, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %y2.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i8* %plane, i8** %plane.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  store i64 %x2, i64* %x2.addr, align 8
  store i64 %y2, i64* %y2.addr, align 8
  %0 = load i64, i64* %x1.addr, align 8
  %1 = load i64, i64* %x2.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %y1.addr, align 8
  %3 = load i64, i64* %y2.addr, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i64, i64* %y1.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i64, i64* %y2.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  %6 = load i64, i64* @channelColumns, align 8
  %mul = mul i64 %cond, %6
  %7 = load i64, i64* %x1.addr, align 8
  %add = add i64 %mul, %7
  %8 = load i8*, i8** %plane.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %add
  %9 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %9 to i32
  %or = or i32 %conv, 8
  %conv2 = trunc i32 %or to i8
  store i8 %conv2, i8* %arrayidx, align 1
  %10 = load i64, i64* %y1.addr, align 8
  %11 = load i64, i64* %y2.addr, align 8
  %cmp3 = icmp ult i64 %10, %11
  br i1 %cmp3, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  %12 = load i64, i64* %y1.addr, align 8
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %13 = load i64, i64* %y2.addr, align 8
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.5
  %cond8 = phi i64 [ %12, %cond.true.5 ], [ %13, %cond.false.6 ]
  %add9 = add i64 %cond8, 1
  store i64 %add9, i64* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.7
  %14 = load i64, i64* %y, align 8
  %15 = load i64, i64* %y1.addr, align 8
  %16 = load i64, i64* %y2.addr, align 8
  %cmp10 = icmp ult i64 %15, %16
  br i1 %cmp10, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %for.cond
  %17 = load i64, i64* %y2.addr, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %for.cond
  %18 = load i64, i64* %y1.addr, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i64 [ %17, %cond.true.12 ], [ %18, %cond.false.13 ]
  %cmp16 = icmp ult i64 %14, %cond15
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.14
  %19 = load i64, i64* %y, align 8
  %20 = load i64, i64* @channelColumns, align 8
  %mul18 = mul i64 %19, %20
  %21 = load i64, i64* %x1.addr, align 8
  %add19 = add i64 %mul18, %21
  %22 = load i8*, i8** %plane.addr, align 8
  %arrayidx20 = getelementptr inbounds i8, i8* %22, i64 %add19
  %23 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %23 to i32
  %or22 = or i32 %conv21, 12
  %conv23 = trunc i32 %or22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i64, i64* %y, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %y, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.14
  %25 = load i64, i64* %y1.addr, align 8
  %26 = load i64, i64* %y2.addr, align 8
  %cmp24 = icmp ult i64 %25, %26
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %for.end
  %27 = load i64, i64* %y2.addr, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %for.end
  %28 = load i64, i64* %y1.addr, align 8
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.26
  %cond29 = phi i64 [ %27, %cond.true.26 ], [ %28, %cond.false.27 ]
  %29 = load i64, i64* @channelColumns, align 8
  %mul30 = mul i64 %cond29, %29
  %30 = load i64, i64* %x1.addr, align 8
  %add31 = add i64 %mul30, %30
  %31 = load i8*, i8** %plane.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %31, i64 %add31
  %32 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %32 to i32
  %or34 = or i32 %conv33, 4
  %conv35 = trunc i32 %or34 to i8
  store i8 %conv35, i8* %arrayidx32, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %33 = load i64, i64* %y1.addr, align 8
  %34 = load i64, i64* @channelColumns, align 8
  %mul36 = mul i64 %33, %34
  %35 = load i64, i64* %x1.addr, align 8
  %36 = load i64, i64* %x2.addr, align 8
  %cmp37 = icmp ult i64 %35, %36
  br i1 %cmp37, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %if.else
  %37 = load i64, i64* %x1.addr, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.else
  %38 = load i64, i64* %x2.addr, align 8
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.39
  %cond42 = phi i64 [ %37, %cond.true.39 ], [ %38, %cond.false.40 ]
  %add43 = add i64 %mul36, %cond42
  %39 = load i8*, i8** %plane.addr, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %39, i64 %add43
  %40 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %40 to i32
  %or46 = or i32 %conv45, 2
  %conv47 = trunc i32 %or46 to i8
  store i8 %conv47, i8* %arrayidx44, align 1
  %41 = load i64, i64* %x1.addr, align 8
  %42 = load i64, i64* %x2.addr, align 8
  %cmp48 = icmp ult i64 %41, %42
  br i1 %cmp48, label %cond.true.50, label %cond.false.51

cond.true.50:                                     ; preds = %cond.end.41
  %43 = load i64, i64* %x1.addr, align 8
  br label %cond.end.52

cond.false.51:                                    ; preds = %cond.end.41
  %44 = load i64, i64* %x2.addr, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.true.50
  %cond53 = phi i64 [ %43, %cond.true.50 ], [ %44, %cond.false.51 ]
  %add54 = add i64 %cond53, 1
  store i64 %add54, i64* %x, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.68, %cond.end.52
  %45 = load i64, i64* %x, align 8
  %46 = load i64, i64* %x1.addr, align 8
  %47 = load i64, i64* %x2.addr, align 8
  %cmp56 = icmp ult i64 %46, %47
  br i1 %cmp56, label %cond.true.58, label %cond.false.59

cond.true.58:                                     ; preds = %for.cond.55
  %48 = load i64, i64* %x2.addr, align 8
  br label %cond.end.60

cond.false.59:                                    ; preds = %for.cond.55
  %49 = load i64, i64* %x1.addr, align 8
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.59, %cond.true.58
  %cond61 = phi i64 [ %48, %cond.true.58 ], [ %49, %cond.false.59 ]
  %cmp62 = icmp ult i64 %45, %cond61
  br i1 %cmp62, label %for.body.64, label %for.end.70

for.body.64:                                      ; preds = %cond.end.60
  %50 = load i64, i64* %y1.addr, align 8
  %51 = load i64, i64* @channelColumns, align 8
  %mul65 = mul i64 %50, %51
  %52 = load i64, i64* %x, align 8
  %add66 = add i64 %mul65, %52
  %53 = load i8*, i8** %plane.addr, align 8
  %arrayidx67 = getelementptr inbounds i8, i8* %53, i64 %add66
  store i8 3, i8* %arrayidx67, align 1
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.64
  %54 = load i64, i64* %x, align 8
  %inc69 = add i64 %54, 1
  store i64 %inc69, i64* %x, align 8
  br label %for.cond.55

for.end.70:                                       ; preds = %cond.end.60
  %55 = load i64, i64* %y1.addr, align 8
  %56 = load i64, i64* @channelColumns, align 8
  %mul71 = mul i64 %55, %56
  %57 = load i64, i64* %x1.addr, align 8
  %58 = load i64, i64* %x2.addr, align 8
  %cmp72 = icmp ult i64 %57, %58
  br i1 %cmp72, label %cond.true.74, label %cond.false.75

cond.true.74:                                     ; preds = %for.end.70
  %59 = load i64, i64* %x2.addr, align 8
  br label %cond.end.76

cond.false.75:                                    ; preds = %for.end.70
  %60 = load i64, i64* %x1.addr, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.75, %cond.true.74
  %cond77 = phi i64 [ %59, %cond.true.74 ], [ %60, %cond.false.75 ]
  %add78 = add i64 %mul71, %cond77
  %61 = load i8*, i8** %plane.addr, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %61, i64 %add78
  %62 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %62 to i32
  %or81 = or i32 %conv80, 1
  %conv82 = trunc i32 %or81 to i8
  store i8 %conv82, i8* %arrayidx79, align 1
  br label %if.end

if.end:                                           ; preds = %cond.end.76, %cond.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define void @DrawVia(i64 %x, i64 %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %y.addr, align 8
  %1 = load i64, i64* @channelColumns, align 8
  %mul = mul i64 %0, %1
  %2 = load i64, i64* %x.addr, align 8
  %add = add i64 %mul, %2
  %3 = load i8*, i8** @viaPlane, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %add
  store i8 1, i8* %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @HasVia(i64 %x, i64 %y) #0 {
entry:
  %x.addr = alloca i64, align 8
  %y.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  store i64 %y, i64* %y.addr, align 8
  %0 = load i64, i64* %y.addr, align 8
  %1 = load i64, i64* @channelColumns, align 8
  %mul = mul i64 %0, %1
  %2 = load i64, i64* %x.addr, align 8
  %add = add i64 %mul, %2
  %3 = load i8*, i8** @viaPlane, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %add
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @SegmentFree(i8* %plane, i64 %x1, i64 %y1, i64 %x2, i64 %y2) #0 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca i8*, align 8
  %x1.addr = alloca i64, align 8
  %y1.addr = alloca i64, align 8
  %x2.addr = alloca i64, align 8
  %y2.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %index = alloca i64, align 8
  store i8* %plane, i8** %plane.addr, align 8
  store i64 %x1, i64* %x1.addr, align 8
  store i64 %y1, i64* %y1.addr, align 8
  store i64 %x2, i64* %x2.addr, align 8
  store i64 %y2, i64* %y2.addr, align 8
  %0 = load i64, i64* %x1.addr, align 8
  %1 = load i64, i64* %x2.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %y1.addr, align 8
  %3 = load i64, i64* %y2.addr, align 8
  %cmp1 = icmp ult i64 %2, %3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i64, i64* %y1.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %5 = load i64, i64* %y2.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ]
  %6 = load i64, i64* @channelColumns, align 8
  %mul = mul i64 %cond, %6
  %7 = load i64, i64* %x1.addr, align 8
  %add = add i64 %mul, %7
  store i64 %add, i64* %index, align 8
  %8 = load i64, i64* %y1.addr, align 8
  %9 = load i64, i64* %y2.addr, align 8
  %cmp2 = icmp ult i64 %8, %9
  br i1 %cmp2, label %cond.true.3, label %cond.false.4

cond.true.3:                                      ; preds = %cond.end
  %10 = load i64, i64* %y1.addr, align 8
  br label %cond.end.5

cond.false.4:                                     ; preds = %cond.end
  %11 = load i64, i64* %y2.addr, align 8
  br label %cond.end.5

cond.end.5:                                       ; preds = %cond.false.4, %cond.true.3
  %cond6 = phi i64 [ %10, %cond.true.3 ], [ %11, %cond.false.4 ]
  store i64 %cond6, i64* %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.5
  %12 = load i64, i64* %y, align 8
  %13 = load i64, i64* %y1.addr, align 8
  %14 = load i64, i64* %y2.addr, align 8
  %cmp7 = icmp ult i64 %13, %14
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %for.cond
  %15 = load i64, i64* %y2.addr, align 8
  br label %cond.end.10

cond.false.9:                                     ; preds = %for.cond
  %16 = load i64, i64* %y1.addr, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i64 [ %15, %cond.true.8 ], [ %16, %cond.false.9 ]
  %cmp12 = icmp ule i64 %12, %cond11
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.10
  %17 = load i64, i64* %index, align 8
  %18 = load i8*, i8** %plane.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %18, i64 %17
  %19 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, i64* %y, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %y, align 8
  %21 = load i64, i64* @channelColumns, align 8
  %22 = load i64, i64* %index, align 8
  %add14 = add i64 %22, %21
  store i64 %add14, i64* %index, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.10
  br label %if.end.43

if.else:                                          ; preds = %entry
  %23 = load i64, i64* %y1.addr, align 8
  %24 = load i64, i64* @channelColumns, align 8
  %mul15 = mul i64 %23, %24
  %25 = load i64, i64* %x1.addr, align 8
  %26 = load i64, i64* %x2.addr, align 8
  %cmp16 = icmp ult i64 %25, %26
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %if.else
  %27 = load i64, i64* %x1.addr, align 8
  br label %cond.end.19

cond.false.18:                                    ; preds = %if.else
  %28 = load i64, i64* %x2.addr, align 8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi i64 [ %27, %cond.true.17 ], [ %28, %cond.false.18 ]
  %add21 = add i64 %mul15, %cond20
  store i64 %add21, i64* %index, align 8
  %29 = load i64, i64* %x1.addr, align 8
  %30 = load i64, i64* %x2.addr, align 8
  %cmp22 = icmp ult i64 %29, %30
  br i1 %cmp22, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.19
  %31 = load i64, i64* %x1.addr, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.19
  %32 = load i64, i64* %x2.addr, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.23
  %cond26 = phi i64 [ %31, %cond.true.23 ], [ %32, %cond.false.24 ]
  store i64 %cond26, i64* %x, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.39, %cond.end.25
  %33 = load i64, i64* %x, align 8
  %34 = load i64, i64* %x1.addr, align 8
  %35 = load i64, i64* %x2.addr, align 8
  %cmp28 = icmp ult i64 %34, %35
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %for.cond.27
  %36 = load i64, i64* %x2.addr, align 8
  br label %cond.end.31

cond.false.30:                                    ; preds = %for.cond.27
  %37 = load i64, i64* %x1.addr, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.29
  %cond32 = phi i64 [ %36, %cond.true.29 ], [ %37, %cond.false.30 ]
  %cmp33 = icmp ule i64 %33, %cond32
  br i1 %cmp33, label %for.body.34, label %for.end.42

for.body.34:                                      ; preds = %cond.end.31
  %38 = load i64, i64* %index, align 8
  %39 = load i8*, i8** %plane.addr, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %39, i64 %38
  %40 = load i8, i8* %arrayidx35, align 1
  %tobool36 = icmp ne i8 %40, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body.34
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %for.body.34
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %41 = load i64, i64* %x, align 8
  %inc40 = add i64 %41, 1
  store i64 %inc40, i64* %x, align 8
  %42 = load i64, i64* %index, align 8
  %inc41 = add i64 %42, 1
  store i64 %inc41, i64* %index, align 8
  br label %for.cond.27

for.end.42:                                       ; preds = %cond.end.31
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.37, %if.then.13
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define void @PrintChannel() #0 {
entry:
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %x, align 8
  %1 = load i64, i64* @channelColumns, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %x, align 8
  %3 = load i64*, i64** @TOP, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %2
  %4 = load i64, i64* %arrayidx, align 8
  %div = udiv i64 %4, 100
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %div)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %x, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %for.end
  %6 = load i64, i64* %x, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %cmp5 = icmp ule i64 %6, %7
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i64, i64* %x, align 8
  %9 = load i64*, i64** @TOP, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %9, i64 %8
  %10 = load i64, i64* %arrayidx7, align 8
  %11 = load i64, i64* %x, align 8
  %12 = load i64*, i64** @TOP, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx8, align 8
  %div9 = udiv i64 %13, 100
  %mul = mul i64 %div9, 100
  %sub = sub i64 %10, %mul
  %div10 = udiv i64 %sub, 10
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %div10)
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.6
  %14 = load i64, i64* %x, align 8
  %inc13 = add i64 %14, 1
  store i64 %inc13, i64* %x, align 8
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.22, %for.end.14
  %15 = load i64, i64* %x, align 8
  %16 = load i64, i64* @channelColumns, align 8
  %cmp18 = icmp ule i64 %15, %16
  br i1 %cmp18, label %for.body.19, label %for.end.24

for.body.19:                                      ; preds = %for.cond.17
  %17 = load i64, i64* %x, align 8
  %18 = load i64*, i64** @TOP, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx20, align 8
  %rem = urem i64 %19, 10
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %rem)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.19
  %20 = load i64, i64* %x, align 8
  %inc23 = add i64 %20, 1
  store i64 %inc23, i64* %x, align 8
  br label %for.cond.17

for.end.24:                                       ; preds = %for.cond.17
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.33, %for.end.24
  %21 = load i64, i64* %x, align 8
  %22 = load i64, i64* @channelColumns, align 8
  %cmp28 = icmp ule i64 %21, %22
  br i1 %cmp28, label %for.body.29, label %for.end.35

for.body.29:                                      ; preds = %for.cond.27
  %23 = load i64, i64* @channelColumns, align 8
  %mul30 = mul i64 0, %23
  %24 = load i64, i64* %x, align 8
  %add = add i64 %mul30, %24
  %25 = load i8*, i8** @vertPlane, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %25, i64 %add
  %26 = load i8, i8* %arrayidx31, align 1
  %conv = sext i8 %26 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 124, i32 32
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %cond)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.29
  %27 = load i64, i64* %x, align 8
  %inc34 = add i64 %27, 1
  store i64 %inc34, i64* %x, align 8
  br label %for.cond.27

for.end.35:                                       ; preds = %for.cond.27
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  store i64 1, i64* %y, align 8
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.201, %for.end.35
  %28 = load i64, i64* %y, align 8
  %29 = load i64, i64* @channelTracks, align 8
  %cmp38 = icmp ule i64 %28, %29
  br i1 %cmp38, label %for.body.40, label %for.end.203

for.body.40:                                      ; preds = %for.cond.37
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.53, %for.body.40
  %30 = load i64, i64* %x, align 8
  %31 = load i64, i64* @channelColumns, align 8
  %cmp43 = icmp ule i64 %30, %31
  br i1 %cmp43, label %for.body.45, label %for.end.55

for.body.45:                                      ; preds = %for.cond.42
  %32 = load i64, i64* %y, align 8
  %33 = load i64, i64* @channelColumns, align 8
  %mul46 = mul i64 %32, %33
  %34 = load i64, i64* %x, align 8
  %add47 = add i64 %mul46, %34
  %35 = load i8*, i8** @vertPlane, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %35, i64 %add47
  %36 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %36 to i32
  %and = and i32 %conv49, 4
  %tobool50 = icmp ne i32 %and, 0
  br i1 %tobool50, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.45
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body.45
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end
  %37 = load i64, i64* %x, align 8
  %inc54 = add i64 %37, 1
  store i64 %inc54, i64* %x, align 8
  br label %for.cond.42

for.end.55:                                       ; preds = %for.cond.42
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %38 = load i64, i64* %y, align 8
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i64 %38)
  store i64 1, i64* %x, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.177, %for.end.55
  %39 = load i64, i64* %x, align 8
  %40 = load i64, i64* @channelColumns, align 8
  %cmp59 = icmp ule i64 %39, %40
  br i1 %cmp59, label %for.body.61, label %for.end.179

for.body.61:                                      ; preds = %for.cond.58
  %41 = load i64, i64* %y, align 8
  %42 = load i64, i64* @channelColumns, align 8
  %mul62 = mul i64 %41, %42
  %43 = load i64, i64* %x, align 8
  %add63 = add i64 %mul62, %43
  %44 = load i8*, i8** @horzPlane, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %44, i64 %add63
  %45 = load i8, i8* %arrayidx64, align 1
  %conv65 = sext i8 %45 to i32
  %and66 = and i32 %conv65, 1
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %land.lhs.true, label %if.else.76

land.lhs.true:                                    ; preds = %for.body.61
  %46 = load i64, i64* %y, align 8
  %47 = load i64, i64* @channelColumns, align 8
  %mul68 = mul i64 %46, %47
  %48 = load i64, i64* %x, align 8
  %add69 = add i64 %mul68, %48
  %49 = load i8*, i8** @vertPlane, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %49, i64 %add69
  %50 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %50 to i32
  %and72 = and i32 %conv71, 1
  %tobool73 = icmp ne i32 %and72, 0
  br i1 %tobool73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %land.lhs.true
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.98

if.else.76:                                       ; preds = %land.lhs.true, %for.body.61
  %51 = load i64, i64* %y, align 8
  %52 = load i64, i64* @channelColumns, align 8
  %mul77 = mul i64 %51, %52
  %53 = load i64, i64* %x, align 8
  %add78 = add i64 %mul77, %53
  %54 = load i8*, i8** @horzPlane, align 8
  %arrayidx79 = getelementptr inbounds i8, i8* %54, i64 %add78
  %55 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %55 to i32
  %and81 = and i32 %conv80, 1
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.85

if.then.83:                                       ; preds = %if.else.76
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.97

if.else.85:                                       ; preds = %if.else.76
  %56 = load i64, i64* %y, align 8
  %57 = load i64, i64* @channelColumns, align 8
  %mul86 = mul i64 %56, %57
  %58 = load i64, i64* %x, align 8
  %add87 = add i64 %mul86, %58
  %59 = load i8*, i8** @vertPlane, align 8
  %arrayidx88 = getelementptr inbounds i8, i8* %59, i64 %add87
  %60 = load i8, i8* %arrayidx88, align 1
  %conv89 = sext i8 %60 to i32
  %and90 = and i32 %conv89, 1
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.then.92, label %if.else.94

if.then.92:                                       ; preds = %if.else.85
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.96

if.else.94:                                       ; preds = %if.else.85
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.92
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.83
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.74
  %61 = load i64, i64* %y, align 8
  %62 = load i64, i64* @channelColumns, align 8
  %mul99 = mul i64 %61, %62
  %63 = load i64, i64* %x, align 8
  %add100 = add i64 %mul99, %63
  %64 = load i8*, i8** @viaPlane, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %64, i64 %add100
  %65 = load i8, i8* %arrayidx101, align 1
  %tobool102 = icmp ne i8 %65, 0
  br i1 %tobool102, label %if.then.103, label %if.else.105

if.then.103:                                      ; preds = %if.end.98
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.138

if.else.105:                                      ; preds = %if.end.98
  %66 = load i64, i64* %y, align 8
  %67 = load i64, i64* @channelColumns, align 8
  %mul106 = mul i64 %66, %67
  %68 = load i64, i64* %x, align 8
  %add107 = add i64 %mul106, %68
  %69 = load i8*, i8** @horzPlane, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %69, i64 %add107
  %70 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %70 to i32
  %tobool110 = icmp ne i32 %conv109, 0
  br i1 %tobool110, label %land.lhs.true.111, label %if.else.119

land.lhs.true.111:                                ; preds = %if.else.105
  %71 = load i64, i64* %y, align 8
  %72 = load i64, i64* @channelColumns, align 8
  %mul112 = mul i64 %71, %72
  %73 = load i64, i64* %x, align 8
  %add113 = add i64 %mul112, %73
  %74 = load i8*, i8** @vertPlane, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %74, i64 %add113
  %75 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %75 to i32
  %tobool116 = icmp ne i32 %conv115, 0
  br i1 %tobool116, label %if.then.117, label %if.else.119

if.then.117:                                      ; preds = %land.lhs.true.111
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.137

if.else.119:                                      ; preds = %land.lhs.true.111, %if.else.105
  %76 = load i64, i64* %y, align 8
  %77 = load i64, i64* @channelColumns, align 8
  %mul120 = mul i64 %76, %77
  %78 = load i64, i64* %x, align 8
  %add121 = add i64 %mul120, %78
  %79 = load i8*, i8** @horzPlane, align 8
  %arrayidx122 = getelementptr inbounds i8, i8* %79, i64 %add121
  %80 = load i8, i8* %arrayidx122, align 1
  %tobool123 = icmp ne i8 %80, 0
  br i1 %tobool123, label %if.then.124, label %if.else.126

if.then.124:                                      ; preds = %if.else.119
  %call125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.136

if.else.126:                                      ; preds = %if.else.119
  %81 = load i64, i64* %y, align 8
  %82 = load i64, i64* @channelColumns, align 8
  %mul127 = mul i64 %81, %82
  %83 = load i64, i64* %x, align 8
  %add128 = add i64 %mul127, %83
  %84 = load i8*, i8** @vertPlane, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %84, i64 %add128
  %85 = load i8, i8* %arrayidx129, align 1
  %tobool130 = icmp ne i8 %85, 0
  br i1 %tobool130, label %if.then.131, label %if.else.133

if.then.131:                                      ; preds = %if.else.126
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.135

if.else.133:                                      ; preds = %if.else.126
  %call134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.else.133, %if.then.131
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.124
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.117
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.103
  %86 = load i64, i64* %y, align 8
  %87 = load i64, i64* @channelColumns, align 8
  %mul139 = mul i64 %86, %87
  %88 = load i64, i64* %x, align 8
  %add140 = add i64 %mul139, %88
  %89 = load i8*, i8** @horzPlane, align 8
  %arrayidx141 = getelementptr inbounds i8, i8* %89, i64 %add140
  %90 = load i8, i8* %arrayidx141, align 1
  %conv142 = sext i8 %90 to i32
  %and143 = and i32 %conv142, 2
  %tobool144 = icmp ne i32 %and143, 0
  br i1 %tobool144, label %land.lhs.true.145, label %if.else.154

land.lhs.true.145:                                ; preds = %if.end.138
  %91 = load i64, i64* %y, align 8
  %92 = load i64, i64* @channelColumns, align 8
  %mul146 = mul i64 %91, %92
  %93 = load i64, i64* %x, align 8
  %add147 = add i64 %mul146, %93
  %94 = load i8*, i8** @vertPlane, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %94, i64 %add147
  %95 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %95 to i32
  %and150 = and i32 %conv149, 2
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %if.then.152, label %if.else.154

if.then.152:                                      ; preds = %land.lhs.true.145
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.176

if.else.154:                                      ; preds = %land.lhs.true.145, %if.end.138
  %96 = load i64, i64* %y, align 8
  %97 = load i64, i64* @channelColumns, align 8
  %mul155 = mul i64 %96, %97
  %98 = load i64, i64* %x, align 8
  %add156 = add i64 %mul155, %98
  %99 = load i8*, i8** @horzPlane, align 8
  %arrayidx157 = getelementptr inbounds i8, i8* %99, i64 %add156
  %100 = load i8, i8* %arrayidx157, align 1
  %conv158 = sext i8 %100 to i32
  %and159 = and i32 %conv158, 2
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.then.161, label %if.else.163

if.then.161:                                      ; preds = %if.else.154
  %call162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.175

if.else.163:                                      ; preds = %if.else.154
  %101 = load i64, i64* %y, align 8
  %102 = load i64, i64* @channelColumns, align 8
  %mul164 = mul i64 %101, %102
  %103 = load i64, i64* %x, align 8
  %add165 = add i64 %mul164, %103
  %104 = load i8*, i8** @vertPlane, align 8
  %arrayidx166 = getelementptr inbounds i8, i8* %104, i64 %add165
  %105 = load i8, i8* %arrayidx166, align 1
  %conv167 = sext i8 %105 to i32
  %and168 = and i32 %conv167, 2
  %tobool169 = icmp ne i32 %and168, 0
  br i1 %tobool169, label %if.then.170, label %if.else.172

if.then.170:                                      ; preds = %if.else.163
  %call171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.174

if.else.172:                                      ; preds = %if.else.163
  %call173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.172, %if.then.170
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.then.161
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %if.then.152
  br label %for.inc.177

for.inc.177:                                      ; preds = %if.end.176
  %106 = load i64, i64* %x, align 8
  %inc178 = add i64 %106, 1
  store i64 %inc178, i64* %x, align 8
  br label %for.cond.58

for.end.179:                                      ; preds = %for.cond.58
  %call180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.197, %for.end.179
  %107 = load i64, i64* %x, align 8
  %108 = load i64, i64* @channelColumns, align 8
  %cmp183 = icmp ule i64 %107, %108
  br i1 %cmp183, label %for.body.185, label %for.end.199

for.body.185:                                     ; preds = %for.cond.182
  %109 = load i64, i64* %y, align 8
  %110 = load i64, i64* @channelColumns, align 8
  %mul186 = mul i64 %109, %110
  %111 = load i64, i64* %x, align 8
  %add187 = add i64 %mul186, %111
  %112 = load i8*, i8** @vertPlane, align 8
  %arrayidx188 = getelementptr inbounds i8, i8* %112, i64 %add187
  %113 = load i8, i8* %arrayidx188, align 1
  %conv189 = sext i8 %113 to i32
  %and190 = and i32 %conv189, 8
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %if.then.192, label %if.else.194

if.then.192:                                      ; preds = %for.body.185
  %call193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.196

if.else.194:                                      ; preds = %for.body.185
  %call195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.194, %if.then.192
  br label %for.inc.197

for.inc.197:                                      ; preds = %if.end.196
  %114 = load i64, i64* %x, align 8
  %inc198 = add i64 %114, 1
  store i64 %inc198, i64* %x, align 8
  br label %for.cond.182

for.end.199:                                      ; preds = %for.cond.182
  %call200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %for.inc.201

for.inc.201:                                      ; preds = %for.end.199
  %115 = load i64, i64* %y, align 8
  %inc202 = add i64 %115, 1
  store i64 %inc202, i64* %y, align 8
  br label %for.cond.37

for.end.203:                                      ; preds = %for.cond.37
  %call204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.217, %for.end.203
  %116 = load i64, i64* %x, align 8
  %117 = load i64, i64* @channelColumns, align 8
  %cmp206 = icmp ule i64 %116, %117
  br i1 %cmp206, label %for.body.208, label %for.end.219

for.body.208:                                     ; preds = %for.cond.205
  %118 = load i64, i64* @channelTracks, align 8
  %add209 = add i64 %118, 1
  %119 = load i64, i64* @channelColumns, align 8
  %mul210 = mul i64 %add209, %119
  %120 = load i64, i64* %x, align 8
  %add211 = add i64 %mul210, %120
  %121 = load i8*, i8** @vertPlane, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %121, i64 %add211
  %122 = load i8, i8* %arrayidx212, align 1
  %conv213 = sext i8 %122 to i32
  %tobool214 = icmp ne i32 %conv213, 0
  %cond215 = select i1 %tobool214, i32 124, i32 32
  %call216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %cond215)
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body.208
  %123 = load i64, i64* %x, align 8
  %inc218 = add i64 %123, 1
  store i64 %inc218, i64* %x, align 8
  br label %for.cond.205

for.end.219:                                      ; preds = %for.cond.205
  %call220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.222

for.cond.222:                                     ; preds = %for.inc.229, %for.end.219
  %124 = load i64, i64* %x, align 8
  %125 = load i64, i64* @channelColumns, align 8
  %cmp223 = icmp ule i64 %124, %125
  br i1 %cmp223, label %for.body.225, label %for.end.231

for.body.225:                                     ; preds = %for.cond.222
  %126 = load i64, i64* %x, align 8
  %127 = load i64*, i64** @BOT, align 8
  %arrayidx226 = getelementptr inbounds i64, i64* %127, i64 %126
  %128 = load i64, i64* %arrayidx226, align 8
  %div227 = udiv i64 %128, 100
  %call228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %div227)
  br label %for.inc.229

for.inc.229:                                      ; preds = %for.body.225
  %129 = load i64, i64* %x, align 8
  %inc230 = add i64 %129, 1
  store i64 %inc230, i64* %x, align 8
  br label %for.cond.222

for.end.231:                                      ; preds = %for.cond.222
  %call232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.234

for.cond.234:                                     ; preds = %for.inc.245, %for.end.231
  %130 = load i64, i64* %x, align 8
  %131 = load i64, i64* @channelColumns, align 8
  %cmp235 = icmp ule i64 %130, %131
  br i1 %cmp235, label %for.body.237, label %for.end.247

for.body.237:                                     ; preds = %for.cond.234
  %132 = load i64, i64* %x, align 8
  %133 = load i64*, i64** @BOT, align 8
  %arrayidx238 = getelementptr inbounds i64, i64* %133, i64 %132
  %134 = load i64, i64* %arrayidx238, align 8
  %135 = load i64, i64* %x, align 8
  %136 = load i64*, i64** @BOT, align 8
  %arrayidx239 = getelementptr inbounds i64, i64* %136, i64 %135
  %137 = load i64, i64* %arrayidx239, align 8
  %div240 = udiv i64 %137, 100
  %mul241 = mul i64 %div240, 100
  %sub242 = sub i64 %134, %mul241
  %div243 = udiv i64 %sub242, 10
  %call244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %div243)
  br label %for.inc.245

for.inc.245:                                      ; preds = %for.body.237
  %138 = load i64, i64* %x, align 8
  %inc246 = add i64 %138, 1
  store i64 %inc246, i64* %x, align 8
  br label %for.cond.234

for.end.247:                                      ; preds = %for.cond.234
  %call248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %call249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i64 1, i64* %x, align 8
  br label %for.cond.250

for.cond.250:                                     ; preds = %for.inc.257, %for.end.247
  %139 = load i64, i64* %x, align 8
  %140 = load i64, i64* @channelColumns, align 8
  %cmp251 = icmp ule i64 %139, %140
  br i1 %cmp251, label %for.body.253, label %for.end.259

for.body.253:                                     ; preds = %for.cond.250
  %141 = load i64, i64* %x, align 8
  %142 = load i64*, i64** @BOT, align 8
  %arrayidx254 = getelementptr inbounds i64, i64* %142, i64 %141
  %143 = load i64, i64* %arrayidx254, align 8
  %rem255 = urem i64 %143, 10
  %call256 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 %rem255)
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.body.253
  %144 = load i64, i64* %x, align 8
  %inc258 = add i64 %144, 1
  store i64 %inc258, i64* %x, align 8
  br label %for.cond.250

for.end.259:                                      ; preds = %for.cond.250
  %call260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i32 @DrawNets() #0 {
entry:
  %i = alloca i64, align 8
  %numLeft = alloca i32, align 4
  store i32 0, i32* %numLeft, align 4
  %0 = load i8*, i8** @horzPlane, align 8
  %1 = load i64, i64* @channelColumns, align 8
  %add = add i64 %1, 1
  %2 = load i64, i64* @channelTracks, align 8
  %add1 = add i64 %2, 2
  %mul = mul i64 %add, %add1
  %conv = trunc i64 %mul to i32
  %conv2 = sext i32 %conv to i64
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %conv2, i32 1, i1 false)
  %3 = load i8*, i8** @vertPlane, align 8
  %4 = load i64, i64* @channelColumns, align 8
  %add3 = add i64 %4, 1
  %5 = load i64, i64* @channelTracks, align 8
  %add4 = add i64 %5, 2
  %mul5 = mul i64 %add3, %add4
  %conv6 = trunc i64 %mul5 to i32
  %conv7 = sext i32 %conv6 to i64
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 %conv7, i32 1, i1 false)
  %6 = load i8*, i8** @viaPlane, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %add8 = add i64 %7, 1
  %8 = load i64, i64* @channelTracks, align 8
  %add9 = add i64 %8, 2
  %mul10 = mul i64 %add8, %add9
  %conv11 = trunc i64 %mul10 to i32
  %conv12 = sext i32 %conv11 to i64
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 %conv12, i32 1, i1 false)
  %9 = load i8*, i8** @mazeRoute, align 8
  %10 = load i64, i64* @channelColumns, align 8
  %add13 = add i64 %10, 1
  %conv14 = trunc i64 %add13 to i32
  %conv15 = sext i32 %conv14 to i64
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %conv15, i32 1, i1 false)
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* @channelNets, align 8
  %cmp = icmp ule i64 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load i64*, i64** @FIRST, align 8
  %arrayidx = getelementptr inbounds i64, i64* %14, i64 %13
  %15 = load i64, i64* %arrayidx, align 8
  %16 = load i64, i64* %i, align 8
  %17 = load i64*, i64** @LAST, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %17, i64 %16
  %18 = load i64, i64* %arrayidx17, align 8
  %cmp18 = icmp ne i64 %15, %18
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i8*, i8** @horzPlane, align 8
  %20 = load i64, i64* %i, align 8
  %21 = load i64*, i64** @FIRST, align 8
  %arrayidx20 = getelementptr inbounds i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx20, align 8
  %23 = load i64, i64* %i, align 8
  %24 = load i64*, i64** @netsAssign, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %24, i64 %23
  %25 = load i64, i64* %arrayidx21, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load i64*, i64** @LAST, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %27, i64 %26
  %28 = load i64, i64* %arrayidx22, align 8
  %29 = load i64, i64* %i, align 8
  %30 = load i64*, i64** @netsAssign, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %30, i64 %29
  %31 = load i64, i64* %arrayidx23, align 8
  call void @DrawSegment(i8* %19, i64 %22, i64 %25, i64 %28, i64 %31)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i64, i64* %i, align 8
  %inc = add i64 %32, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 1, i64* %i, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.110, %for.end
  %33 = load i64, i64* %i, align 8
  %34 = load i64, i64* @channelColumns, align 8
  %cmp25 = icmp ule i64 %33, %34
  br i1 %cmp25, label %for.body.27, label %for.end.112

for.body.27:                                      ; preds = %for.cond.24
  %35 = load i64, i64* %i, align 8
  %36 = load i64*, i64** @BOT, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %36, i64 %35
  %37 = load i64, i64* %arrayidx28, align 8
  %cmp29 = icmp eq i64 %37, 0
  br i1 %cmp29, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.27
  %38 = load i64, i64* %i, align 8
  %39 = load i64*, i64** @TOP, align 8
  %arrayidx31 = getelementptr inbounds i64, i64* %39, i64 %38
  %40 = load i64, i64* %arrayidx31, align 8
  %cmp32 = icmp eq i64 %40, 0
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %land.lhs.true
  br label %if.end.109

if.else:                                          ; preds = %land.lhs.true, %for.body.27
  %41 = load i64, i64* %i, align 8
  %42 = load i64*, i64** @BOT, align 8
  %arrayidx35 = getelementptr inbounds i64, i64* %42, i64 %41
  %43 = load i64, i64* %arrayidx35, align 8
  %cmp36 = icmp eq i64 %43, 0
  br i1 %cmp36, label %land.lhs.true.38, label %if.else.47

land.lhs.true.38:                                 ; preds = %if.else
  %44 = load i64, i64* %i, align 8
  %45 = load i64*, i64** @TOP, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %45, i64 %44
  %46 = load i64, i64* %arrayidx39, align 8
  %cmp40 = icmp ne i64 %46, 0
  br i1 %cmp40, label %if.then.42, label %if.else.47

if.then.42:                                       ; preds = %land.lhs.true.38
  %47 = load i8*, i8** @vertPlane, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %i, align 8
  %51 = load i64*, i64** @TOP, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %51, i64 %50
  %52 = load i64, i64* %arrayidx43, align 8
  %53 = load i64*, i64** @netsAssign, align 8
  %arrayidx44 = getelementptr inbounds i64, i64* %53, i64 %52
  %54 = load i64, i64* %arrayidx44, align 8
  call void @DrawSegment(i8* %47, i64 %48, i64 0, i64 %49, i64 %54)
  %55 = load i64, i64* %i, align 8
  %56 = load i64, i64* %i, align 8
  %57 = load i64*, i64** @TOP, align 8
  %arrayidx45 = getelementptr inbounds i64, i64* %57, i64 %56
  %58 = load i64, i64* %arrayidx45, align 8
  %59 = load i64*, i64** @netsAssign, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %59, i64 %58
  %60 = load i64, i64* %arrayidx46, align 8
  call void @DrawVia(i64 %55, i64 %60)
  br label %if.end.108

if.else.47:                                       ; preds = %land.lhs.true.38, %if.else
  %61 = load i64, i64* %i, align 8
  %62 = load i64*, i64** @TOP, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %62, i64 %61
  %63 = load i64, i64* %arrayidx48, align 8
  %cmp49 = icmp eq i64 %63, 0
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.61

land.lhs.true.51:                                 ; preds = %if.else.47
  %64 = load i64, i64* %i, align 8
  %65 = load i64*, i64** @BOT, align 8
  %arrayidx52 = getelementptr inbounds i64, i64* %65, i64 %64
  %66 = load i64, i64* %arrayidx52, align 8
  %cmp53 = icmp ne i64 %66, 0
  br i1 %cmp53, label %if.then.55, label %if.else.61

if.then.55:                                       ; preds = %land.lhs.true.51
  %67 = load i8*, i8** @vertPlane, align 8
  %68 = load i64, i64* %i, align 8
  %69 = load i64, i64* %i, align 8
  %70 = load i64*, i64** @BOT, align 8
  %arrayidx56 = getelementptr inbounds i64, i64* %70, i64 %69
  %71 = load i64, i64* %arrayidx56, align 8
  %72 = load i64*, i64** @netsAssign, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %72, i64 %71
  %73 = load i64, i64* %arrayidx57, align 8
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* @channelTracks, align 8
  %add58 = add i64 %75, 1
  call void @DrawSegment(i8* %67, i64 %68, i64 %73, i64 %74, i64 %add58)
  %76 = load i64, i64* %i, align 8
  %77 = load i64, i64* %i, align 8
  %78 = load i64*, i64** @BOT, align 8
  %arrayidx59 = getelementptr inbounds i64, i64* %78, i64 %77
  %79 = load i64, i64* %arrayidx59, align 8
  %80 = load i64*, i64** @netsAssign, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %80, i64 %79
  %81 = load i64, i64* %arrayidx60, align 8
  call void @DrawVia(i64 %76, i64 %81)
  br label %if.end.107

if.else.61:                                       ; preds = %land.lhs.true.51, %if.else.47
  %82 = load i64, i64* %i, align 8
  %83 = load i64*, i64** @TOP, align 8
  %arrayidx62 = getelementptr inbounds i64, i64* %83, i64 %82
  %84 = load i64, i64* %arrayidx62, align 8
  %85 = load i64, i64* %i, align 8
  %86 = load i64*, i64** @BOT, align 8
  %arrayidx63 = getelementptr inbounds i64, i64* %86, i64 %85
  %87 = load i64, i64* %arrayidx63, align 8
  %cmp64 = icmp eq i64 %84, %87
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.75

land.lhs.true.66:                                 ; preds = %if.else.61
  %88 = load i64, i64* %i, align 8
  %89 = load i64*, i64** @TOP, align 8
  %arrayidx67 = getelementptr inbounds i64, i64* %89, i64 %88
  %90 = load i64, i64* %arrayidx67, align 8
  %91 = load i64*, i64** @FIRST, align 8
  %arrayidx68 = getelementptr inbounds i64, i64* %91, i64 %90
  %92 = load i64, i64* %arrayidx68, align 8
  %93 = load i64, i64* %i, align 8
  %94 = load i64*, i64** @TOP, align 8
  %arrayidx69 = getelementptr inbounds i64, i64* %94, i64 %93
  %95 = load i64, i64* %arrayidx69, align 8
  %96 = load i64*, i64** @LAST, align 8
  %arrayidx70 = getelementptr inbounds i64, i64* %96, i64 %95
  %97 = load i64, i64* %arrayidx70, align 8
  %cmp71 = icmp eq i64 %92, %97
  br i1 %cmp71, label %if.then.73, label %if.else.75

if.then.73:                                       ; preds = %land.lhs.true.66
  %98 = load i8*, i8** @vertPlane, align 8
  %99 = load i64, i64* %i, align 8
  %100 = load i64, i64* %i, align 8
  %101 = load i64, i64* @channelTracks, align 8
  %add74 = add i64 %101, 1
  call void @DrawSegment(i8* %98, i64 %99, i64 0, i64 %100, i64 %add74)
  br label %if.end.106

if.else.75:                                       ; preds = %land.lhs.true.66, %if.else.61
  %102 = load i64, i64* %i, align 8
  %103 = load i64*, i64** @TOP, align 8
  %arrayidx76 = getelementptr inbounds i64, i64* %103, i64 %102
  %104 = load i64, i64* %arrayidx76, align 8
  %105 = load i64, i64* %i, align 8
  %106 = load i64*, i64** @BOT, align 8
  %arrayidx77 = getelementptr inbounds i64, i64* %106, i64 %105
  %107 = load i64, i64* %arrayidx77, align 8
  %cmp78 = icmp eq i64 %104, %107
  br i1 %cmp78, label %if.then.80, label %if.else.84

if.then.80:                                       ; preds = %if.else.75
  %108 = load i8*, i8** @vertPlane, align 8
  %109 = load i64, i64* %i, align 8
  %110 = load i64, i64* %i, align 8
  %111 = load i64, i64* @channelTracks, align 8
  %add81 = add i64 %111, 1
  call void @DrawSegment(i8* %108, i64 %109, i64 0, i64 %110, i64 %add81)
  %112 = load i64, i64* %i, align 8
  %113 = load i64, i64* %i, align 8
  %114 = load i64*, i64** @BOT, align 8
  %arrayidx82 = getelementptr inbounds i64, i64* %114, i64 %113
  %115 = load i64, i64* %arrayidx82, align 8
  %116 = load i64*, i64** @netsAssign, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %116, i64 %115
  %117 = load i64, i64* %arrayidx83, align 8
  call void @DrawVia(i64 %112, i64 %117)
  br label %if.end.105

if.else.84:                                       ; preds = %if.else.75
  %118 = load i64, i64* %i, align 8
  %119 = load i64*, i64** @TOP, align 8
  %arrayidx85 = getelementptr inbounds i64, i64* %119, i64 %118
  %120 = load i64, i64* %arrayidx85, align 8
  %121 = load i64*, i64** @netsAssign, align 8
  %arrayidx86 = getelementptr inbounds i64, i64* %121, i64 %120
  %122 = load i64, i64* %arrayidx86, align 8
  %123 = load i64, i64* %i, align 8
  %124 = load i64*, i64** @BOT, align 8
  %arrayidx87 = getelementptr inbounds i64, i64* %124, i64 %123
  %125 = load i64, i64* %arrayidx87, align 8
  %126 = load i64*, i64** @netsAssign, align 8
  %arrayidx88 = getelementptr inbounds i64, i64* %126, i64 %125
  %127 = load i64, i64* %arrayidx88, align 8
  %cmp89 = icmp ult i64 %122, %127
  br i1 %cmp89, label %if.then.91, label %if.else.101

if.then.91:                                       ; preds = %if.else.84
  %128 = load i8*, i8** @vertPlane, align 8
  %129 = load i64, i64* %i, align 8
  %130 = load i64, i64* %i, align 8
  %131 = load i64, i64* %i, align 8
  %132 = load i64*, i64** @TOP, align 8
  %arrayidx92 = getelementptr inbounds i64, i64* %132, i64 %131
  %133 = load i64, i64* %arrayidx92, align 8
  %134 = load i64*, i64** @netsAssign, align 8
  %arrayidx93 = getelementptr inbounds i64, i64* %134, i64 %133
  %135 = load i64, i64* %arrayidx93, align 8
  call void @DrawSegment(i8* %128, i64 %129, i64 0, i64 %130, i64 %135)
  %136 = load i64, i64* %i, align 8
  %137 = load i64, i64* %i, align 8
  %138 = load i64*, i64** @TOP, align 8
  %arrayidx94 = getelementptr inbounds i64, i64* %138, i64 %137
  %139 = load i64, i64* %arrayidx94, align 8
  %140 = load i64*, i64** @netsAssign, align 8
  %arrayidx95 = getelementptr inbounds i64, i64* %140, i64 %139
  %141 = load i64, i64* %arrayidx95, align 8
  call void @DrawVia(i64 %136, i64 %141)
  %142 = load i8*, i8** @vertPlane, align 8
  %143 = load i64, i64* %i, align 8
  %144 = load i64, i64* %i, align 8
  %145 = load i64*, i64** @BOT, align 8
  %arrayidx96 = getelementptr inbounds i64, i64* %145, i64 %144
  %146 = load i64, i64* %arrayidx96, align 8
  %147 = load i64*, i64** @netsAssign, align 8
  %arrayidx97 = getelementptr inbounds i64, i64* %147, i64 %146
  %148 = load i64, i64* %arrayidx97, align 8
  %149 = load i64, i64* %i, align 8
  %150 = load i64, i64* @channelTracks, align 8
  %add98 = add i64 %150, 1
  call void @DrawSegment(i8* %142, i64 %143, i64 %148, i64 %149, i64 %add98)
  %151 = load i64, i64* %i, align 8
  %152 = load i64, i64* %i, align 8
  %153 = load i64*, i64** @BOT, align 8
  %arrayidx99 = getelementptr inbounds i64, i64* %153, i64 %152
  %154 = load i64, i64* %arrayidx99, align 8
  %155 = load i64*, i64** @netsAssign, align 8
  %arrayidx100 = getelementptr inbounds i64, i64* %155, i64 %154
  %156 = load i64, i64* %arrayidx100, align 8
  call void @DrawVia(i64 %151, i64 %156)
  br label %if.end.104

if.else.101:                                      ; preds = %if.else.84
  %157 = load i64, i64* %i, align 8
  %158 = load i8*, i8** @mazeRoute, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %158, i64 %157
  store i8 1, i8* %arrayidx102, align 1
  %159 = load i32, i32* %numLeft, align 4
  %inc103 = add nsw i32 %159, 1
  store i32 %inc103, i32* %numLeft, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.91
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.80
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then.73
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.55
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.42
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.34
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %160 = load i64, i64* %i, align 8
  %inc111 = add i64 %160, 1
  store i64 %inc111, i64* %i, align 8
  br label %for.cond.24

for.end.112:                                      ; preds = %for.cond.24
  %161 = load i32, i32* %numLeft, align 4
  ret i32 %161
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i32 @Maze1() #0 {
entry:
  %numLeft = alloca i32, align 4
  %p = alloca i64, align 8
  %s = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 0, i32* %numLeft, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* @channelColumns, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** @mazeRoute, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end.52

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** @TOP, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64*, i64** @netsAssign, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx2, align 8
  store i64 %9, i64* %s, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** @BOT, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx3, align 8
  %13 = load i64*, i64** @netsAssign, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx4, align 8
  store i64 %14, i64* %p, align 8
  %15 = load i64, i64* %i, align 8
  %cmp5 = icmp ugt i64 %15, 1
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load i64, i64* %p, align 8
  %cmp6 = icmp ugt i64 %16, 1
  br i1 %cmp6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %17 = load i64, i64* %i, align 8
  %18 = load i64, i64* @channelTracks, align 8
  %add = add i64 %18, 1
  %19 = load i64, i64* %p, align 8
  %20 = load i64, i64* %s, align 8
  %call = call i32 @Maze1Mech(i64 %17, i64 %add, i64 %19, i64 0, i64 %20, i32 -1, i32 -1)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true.7
  %21 = load i64, i64* %i, align 8
  %22 = load i8*, i8** @mazeRoute, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %22, i64 %21
  store i8 0, i8* %arrayidx10, align 1
  %23 = load i64, i64* %i, align 8
  %24 = load i64*, i64** @TOP, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %24, i64 %23
  %25 = load i64, i64* %arrayidx11, align 8
  call void @CleanNet(i64 %25)
  %26 = load i64, i64* %i, align 8
  %27 = load i64*, i64** @BOT, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %27, i64 %26
  %28 = load i64, i64* %arrayidx12, align 8
  call void @CleanNet(i64 %28)
  br label %if.end.51

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %if.then
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* @channelColumns, align 8
  %cmp13 = icmp ult i64 %29, %30
  br i1 %cmp13, label %land.lhs.true.14, label %if.else.24

land.lhs.true.14:                                 ; preds = %if.else
  %31 = load i64, i64* %p, align 8
  %cmp15 = icmp ugt i64 %31, 1
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.24

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* @channelTracks, align 8
  %add17 = add i64 %33, 1
  %34 = load i64, i64* %p, align 8
  %35 = load i64, i64* %s, align 8
  %call18 = call i32 @Maze1Mech(i64 %32, i64 %add17, i64 %34, i64 0, i64 %35, i32 1, i32 -1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.24

if.then.20:                                       ; preds = %land.lhs.true.16
  %36 = load i64, i64* %i, align 8
  %37 = load i8*, i8** @mazeRoute, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %37, i64 %36
  store i8 0, i8* %arrayidx21, align 1
  %38 = load i64, i64* %i, align 8
  %39 = load i64*, i64** @TOP, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %39, i64 %38
  %40 = load i64, i64* %arrayidx22, align 8
  call void @CleanNet(i64 %40)
  %41 = load i64, i64* %i, align 8
  %42 = load i64*, i64** @BOT, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %42, i64 %41
  %43 = load i64, i64* %arrayidx23, align 8
  call void @CleanNet(i64 %43)
  br label %if.end.50

if.else.24:                                       ; preds = %land.lhs.true.16, %land.lhs.true.14, %if.else
  %44 = load i64, i64* %i, align 8
  %cmp25 = icmp ugt i64 %44, 1
  br i1 %cmp25, label %land.lhs.true.26, label %if.else.36

land.lhs.true.26:                                 ; preds = %if.else.24
  %45 = load i64, i64* %s, align 8
  %46 = load i64, i64* @channelTracks, align 8
  %cmp27 = icmp ult i64 %45, %46
  br i1 %cmp27, label %land.lhs.true.28, label %if.else.36

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %47 = load i64, i64* %i, align 8
  %48 = load i64, i64* %s, align 8
  %49 = load i64, i64* @channelTracks, align 8
  %add29 = add i64 %49, 1
  %50 = load i64, i64* %p, align 8
  %call30 = call i32 @Maze1Mech(i64 %47, i64 0, i64 %48, i64 %add29, i64 %50, i32 -1, i32 1)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.else.36

if.then.32:                                       ; preds = %land.lhs.true.28
  %51 = load i64, i64* %i, align 8
  %52 = load i8*, i8** @mazeRoute, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8 0, i8* %arrayidx33, align 1
  %53 = load i64, i64* %i, align 8
  %54 = load i64*, i64** @TOP, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %54, i64 %53
  %55 = load i64, i64* %arrayidx34, align 8
  call void @CleanNet(i64 %55)
  %56 = load i64, i64* %i, align 8
  %57 = load i64*, i64** @BOT, align 8
  %arrayidx35 = getelementptr inbounds i64, i64* %57, i64 %56
  %58 = load i64, i64* %arrayidx35, align 8
  call void @CleanNet(i64 %58)
  br label %if.end.49

if.else.36:                                       ; preds = %land.lhs.true.28, %land.lhs.true.26, %if.else.24
  %59 = load i64, i64* %i, align 8
  %60 = load i64, i64* @channelColumns, align 8
  %cmp37 = icmp ult i64 %59, %60
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.48

land.lhs.true.38:                                 ; preds = %if.else.36
  %61 = load i64, i64* %s, align 8
  %62 = load i64, i64* @channelTracks, align 8
  %cmp39 = icmp ult i64 %61, %62
  br i1 %cmp39, label %land.lhs.true.40, label %if.else.48

land.lhs.true.40:                                 ; preds = %land.lhs.true.38
  %63 = load i64, i64* %i, align 8
  %64 = load i64, i64* %s, align 8
  %65 = load i64, i64* @channelTracks, align 8
  %add41 = add i64 %65, 1
  %66 = load i64, i64* %p, align 8
  %call42 = call i32 @Maze1Mech(i64 %63, i64 0, i64 %64, i64 %add41, i64 %66, i32 1, i32 1)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.else.48

if.then.44:                                       ; preds = %land.lhs.true.40
  %67 = load i64, i64* %i, align 8
  %68 = load i8*, i8** @mazeRoute, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %68, i64 %67
  store i8 0, i8* %arrayidx45, align 1
  %69 = load i64, i64* %i, align 8
  %70 = load i64*, i64** @TOP, align 8
  %arrayidx46 = getelementptr inbounds i64, i64* %70, i64 %69
  %71 = load i64, i64* %arrayidx46, align 8
  call void @CleanNet(i64 %71)
  %72 = load i64, i64* %i, align 8
  %73 = load i64*, i64** @BOT, align 8
  %arrayidx47 = getelementptr inbounds i64, i64* %73, i64 %72
  %74 = load i64, i64* %arrayidx47, align 8
  call void @CleanNet(i64 %74)
  br label %if.end

if.else.48:                                       ; preds = %land.lhs.true.40, %land.lhs.true.38, %if.else.36
  %75 = load i32, i32* %numLeft, align 4
  %inc = add nsw i32 %75, 1
  store i32 %inc, i32* %numLeft, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.48, %if.then.44
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %if.then.32
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.20
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.9
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %76 = load i64, i64* %i, align 8
  %inc53 = add i64 %76, 1
  store i64 %inc53, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load i32, i32* %numLeft, align 4
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal i32 @Maze1Mech(i64 %i, i64 %s1, i64 %s2, i64 %b1, i64 %b2, i32 %bXdelta, i32 %bYdelta) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i64, align 8
  %s1.addr = alloca i64, align 8
  %s2.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %bXdelta.addr = alloca i32, align 4
  %bYdelta.addr = alloca i32, align 4
  store i64 %i, i64* %i.addr, align 8
  store i64 %s1, i64* %s1.addr, align 8
  store i64 %s2, i64* %s2.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i32 %bXdelta, i32* %bXdelta.addr, align 4
  store i32 %bYdelta, i32* %bYdelta.addr, align 4
  %0 = load i8*, i8** @vertPlane, align 8
  %1 = load i64, i64* %i.addr, align 8
  %2 = load i64, i64* %s1.addr, align 8
  %3 = load i64, i64* %i.addr, align 8
  %4 = load i64, i64* %s2.addr, align 8
  %call = call i32 @SegmentFree(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** @vertPlane, align 8
  %6 = load i64, i64* %i.addr, align 8
  %7 = load i64, i64* %b1.addr, align 8
  %8 = load i64, i64* %i.addr, align 8
  %9 = load i64, i64* %s2.addr, align 8
  %10 = load i32, i32* %bYdelta.addr, align 4
  %conv = sext i32 %10 to i64
  %add = add i64 %9, %conv
  %call1 = call i32 @SegmentFree(i8* %5, i64 %6, i64 %7, i64 %8, i64 %add)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %11 = load i8*, i8** @vertPlane, align 8
  %12 = load i64, i64* %i.addr, align 8
  %13 = load i64, i64* %s2.addr, align 8
  %14 = load i32, i32* %bYdelta.addr, align 4
  %conv4 = sext i32 %14 to i64
  %add5 = add i64 %13, %conv4
  %15 = load i64, i64* %i.addr, align 8
  %16 = load i32, i32* %bXdelta.addr, align 4
  %conv6 = sext i32 %16 to i64
  %add7 = add i64 %15, %conv6
  %17 = load i64, i64* %s2.addr, align 8
  %18 = load i32, i32* %bYdelta.addr, align 4
  %conv8 = sext i32 %18 to i64
  %add9 = add i64 %17, %conv8
  %call10 = call i32 @SegmentFree(i8* %11, i64 %12, i64 %add5, i64 %add7, i64 %add9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.3
  %19 = load i8*, i8** @vertPlane, align 8
  %20 = load i64, i64* %i.addr, align 8
  %21 = load i32, i32* %bXdelta.addr, align 4
  %conv13 = sext i32 %21 to i64
  %add14 = add i64 %20, %conv13
  %22 = load i64, i64* %s2.addr, align 8
  %23 = load i32, i32* %bYdelta.addr, align 4
  %conv15 = sext i32 %23 to i64
  %add16 = add i64 %22, %conv15
  %24 = load i64, i64* %i.addr, align 8
  %25 = load i32, i32* %bXdelta.addr, align 4
  %conv17 = sext i32 %25 to i64
  %add18 = add i64 %24, %conv17
  %26 = load i64, i64* %b2.addr, align 8
  %call19 = call i32 @SegmentFree(i8* %19, i64 %add14, i64 %add16, i64 %add18, i64 %26)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true.12
  %27 = load i64, i64* %i.addr, align 8
  %28 = load i32, i32* %bXdelta.addr, align 4
  %conv22 = sext i32 %28 to i64
  %add23 = add i64 %27, %conv22
  %call24 = call i32 @HasVCV(i64 %add23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.21
  %29 = load i8*, i8** @vertPlane, align 8
  %30 = load i64, i64* %i.addr, align 8
  %31 = load i64, i64* %s1.addr, align 8
  %32 = load i64, i64* %i.addr, align 8
  %33 = load i64, i64* %s2.addr, align 8
  call void @DrawSegment(i8* %29, i64 %30, i64 %31, i64 %32, i64 %33)
  %34 = load i64, i64* %i.addr, align 8
  %35 = load i64, i64* %s2.addr, align 8
  call void @DrawVia(i64 %34, i64 %35)
  %36 = load i8*, i8** @vertPlane, align 8
  %37 = load i64, i64* %i.addr, align 8
  %38 = load i64, i64* %b1.addr, align 8
  %39 = load i64, i64* %i.addr, align 8
  %40 = load i64, i64* %s2.addr, align 8
  %41 = load i32, i32* %bYdelta.addr, align 4
  %conv26 = sext i32 %41 to i64
  %add27 = add i64 %40, %conv26
  call void @DrawSegment(i8* %36, i64 %37, i64 %38, i64 %39, i64 %add27)
  %42 = load i8*, i8** @vertPlane, align 8
  %43 = load i64, i64* %i.addr, align 8
  %44 = load i64, i64* %s2.addr, align 8
  %45 = load i32, i32* %bYdelta.addr, align 4
  %conv28 = sext i32 %45 to i64
  %add29 = add i64 %44, %conv28
  %46 = load i64, i64* %i.addr, align 8
  %47 = load i32, i32* %bXdelta.addr, align 4
  %conv30 = sext i32 %47 to i64
  %add31 = add i64 %46, %conv30
  %48 = load i64, i64* %s2.addr, align 8
  %49 = load i32, i32* %bYdelta.addr, align 4
  %conv32 = sext i32 %49 to i64
  %add33 = add i64 %48, %conv32
  call void @DrawSegment(i8* %42, i64 %43, i64 %add29, i64 %add31, i64 %add33)
  %50 = load i8*, i8** @vertPlane, align 8
  %51 = load i64, i64* %i.addr, align 8
  %52 = load i32, i32* %bXdelta.addr, align 4
  %conv34 = sext i32 %52 to i64
  %add35 = add i64 %51, %conv34
  %53 = load i64, i64* %s2.addr, align 8
  %54 = load i32, i32* %bYdelta.addr, align 4
  %conv36 = sext i32 %54 to i64
  %add37 = add i64 %53, %conv36
  %55 = load i64, i64* %i.addr, align 8
  %56 = load i32, i32* %bXdelta.addr, align 4
  %conv38 = sext i32 %56 to i64
  %add39 = add i64 %55, %conv38
  %57 = load i64, i64* %b2.addr, align 8
  call void @DrawSegment(i8* %50, i64 %add35, i64 %add37, i64 %add39, i64 %57)
  %58 = load i64, i64* %i.addr, align 8
  %59 = load i32, i32* %bXdelta.addr, align 4
  %conv40 = sext i32 %59 to i64
  %add41 = add i64 %58, %conv40
  %60 = load i64, i64* %b2.addr, align 8
  call void @DrawVia(i64 %add41, i64 %60)
  %61 = load i8*, i8** @horzPlane, align 8
  %62 = load i64, i64* %i.addr, align 8
  %63 = load i32, i32* %bXdelta.addr, align 4
  %conv42 = sext i32 %63 to i64
  %add43 = add i64 %62, %conv42
  %64 = load i64, i64* %b2.addr, align 8
  %65 = load i64, i64* %i.addr, align 8
  %66 = load i64, i64* %b2.addr, align 8
  call void @DrawSegment(i8* %61, i64 %add43, i64 %64, i64 %65, i64 %66)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.21, %land.lhs.true.12, %land.lhs.true.3, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal void @CleanNet(i64 %net) #0 {
entry:
  %net.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %firstVia = alloca i64, align 8
  %lastVia = alloca i64, align 8
  %effFIRST = alloca i64, align 8
  %effLAST = alloca i64, align 8
  %track = alloca i64, align 8
  store i64 %net, i64* %net.addr, align 8
  %0 = load i64, i64* %net.addr, align 8
  %1 = load i64*, i64** @FIRST, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %0
  %2 = load i64, i64* %arrayidx, align 8
  store i64 %2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %net.addr, align 8
  %5 = load i64*, i64** @LAST, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %5, i64 %4
  %6 = load i64, i64* %arrayidx1, align 8
  %cmp = icmp ule i64 %3, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load i64*, i64** @TOP, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx2, align 8
  %10 = load i64, i64* %net.addr, align 8
  %cmp3 = icmp eq i64 %9, %10
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load i64*, i64** @BOT, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %12, i64 %11
  %13 = load i64, i64* %arrayidx4, align 8
  %14 = load i64, i64* %net.addr, align 8
  %cmp5 = icmp eq i64 %13, %14
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %15 = load i64, i64* %i, align 8
  %16 = load i8*, i8** @mazeRoute, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %16, i64 %15
  %17 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %17 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %if.end.81

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %net.addr, align 8
  %20 = load i64*, i64** @netsAssign, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %20, i64 %19
  %21 = load i64, i64* %arrayidx7, align 8
  store i64 %21, i64* %track, align 8
  %22 = load i64, i64* %net.addr, align 8
  %23 = load i64*, i64** @FIRST, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %23, i64 %22
  %24 = load i64, i64* %arrayidx8, align 8
  store i64 %24, i64* %effFIRST, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %25 = load i64, i64* %track, align 8
  %26 = load i64, i64* @channelColumns, align 8
  %mul = mul i64 %25, %26
  %27 = load i64, i64* %effFIRST, align 8
  %add = add i64 %mul, %27
  %28 = load i8*, i8** @horzPlane, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %28, i64 %add
  %29 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %29 to i32
  %and = and i32 %conv10, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load i64, i64* %effFIRST, align 8
  %dec = add i64 %30, -1
  store i64 %dec, i64* %effFIRST, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %31 = load i64, i64* %net.addr, align 8
  %32 = load i64*, i64** @LAST, align 8
  %arrayidx12 = getelementptr inbounds i64, i64* %32, i64 %31
  %33 = load i64, i64* %arrayidx12, align 8
  store i64 %33, i64* %effLAST, align 8
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.body.20, %while.end
  %34 = load i64, i64* %track, align 8
  %35 = load i64, i64* @channelColumns, align 8
  %mul14 = mul i64 %34, %35
  %36 = load i64, i64* %effLAST, align 8
  %add15 = add i64 %mul14, %36
  %37 = load i8*, i8** @horzPlane, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %37, i64 %add15
  %38 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %38 to i32
  %and18 = and i32 %conv17, 2
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %while.body.20, label %while.end.22

while.body.20:                                    ; preds = %while.cond.13
  %39 = load i64, i64* %effLAST, align 8
  %inc21 = add i64 %39, 1
  store i64 %inc21, i64* %effLAST, align 8
  br label %while.cond.13

while.end.22:                                     ; preds = %while.cond.13
  store i64 9999999, i64* %firstVia, align 8
  store i64 0, i64* %lastVia, align 8
  %40 = load i64, i64* %effFIRST, align 8
  store i64 %40, i64* %i, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.38, %while.end.22
  %41 = load i64, i64* %i, align 8
  %42 = load i64, i64* %effLAST, align 8
  %cmp24 = icmp ule i64 %41, %42
  br i1 %cmp24, label %for.body.26, label %for.end.40

for.body.26:                                      ; preds = %for.cond.23
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %track, align 8
  %call = call i32 @HasVia(i64 %43, i64 %44)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %if.then.28, label %if.end.37

if.then.28:                                       ; preds = %for.body.26
  %45 = load i64, i64* %i, align 8
  %46 = load i64, i64* %firstVia, align 8
  %cmp29 = icmp ult i64 %45, %46
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.then.28
  %47 = load i64, i64* %i, align 8
  store i64 %47, i64* %firstVia, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %if.then.28
  %48 = load i64, i64* %i, align 8
  %49 = load i64, i64* %lastVia, align 8
  %cmp33 = icmp ugt i64 %48, %49
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.32
  %50 = load i64, i64* %i, align 8
  store i64 %50, i64* %lastVia, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.body.26
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %51 = load i64, i64* %i, align 8
  %inc39 = add i64 %51, 1
  store i64 %inc39, i64* %i, align 8
  br label %for.cond.23

for.end.40:                                       ; preds = %for.cond.23
  %52 = load i64, i64* %effFIRST, align 8
  %53 = load i64, i64* %firstVia, align 8
  %cmp41 = icmp ult i64 %52, %53
  br i1 %cmp41, label %if.then.43, label %if.end.60

if.then.43:                                       ; preds = %for.end.40
  %54 = load i64, i64* %effFIRST, align 8
  store i64 %54, i64* %i, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.51, %if.then.43
  %55 = load i64, i64* %i, align 8
  %56 = load i64, i64* %firstVia, align 8
  %cmp45 = icmp ult i64 %55, %56
  br i1 %cmp45, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.44
  %57 = load i64, i64* %track, align 8
  %58 = load i64, i64* @channelColumns, align 8
  %mul48 = mul i64 %57, %58
  %59 = load i64, i64* %i, align 8
  %add49 = add i64 %mul48, %59
  %60 = load i8*, i8** @horzPlane, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %60, i64 %add49
  store i8 0, i8* %arrayidx50, align 1
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.47
  %61 = load i64, i64* %i, align 8
  %inc52 = add i64 %61, 1
  store i64 %inc52, i64* %i, align 8
  br label %for.cond.44

for.end.53:                                       ; preds = %for.cond.44
  %62 = load i64, i64* %track, align 8
  %63 = load i64, i64* @channelColumns, align 8
  %mul54 = mul i64 %62, %63
  %64 = load i64, i64* %firstVia, align 8
  %add55 = add i64 %mul54, %64
  %65 = load i8*, i8** @horzPlane, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %65, i64 %add55
  %66 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %66 to i32
  %and58 = and i32 %conv57, -2
  %conv59 = trunc i32 %and58 to i8
  store i8 %conv59, i8* %arrayidx56, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.53, %for.end.40
  %67 = load i64, i64* %lastVia, align 8
  %68 = load i64, i64* %effLAST, align 8
  %cmp61 = icmp ult i64 %67, %68
  br i1 %cmp61, label %if.then.63, label %if.end.81

if.then.63:                                       ; preds = %if.end.60
  %69 = load i64, i64* %track, align 8
  %70 = load i64, i64* @channelColumns, align 8
  %mul64 = mul i64 %69, %70
  %71 = load i64, i64* %lastVia, align 8
  %add65 = add i64 %mul64, %71
  %72 = load i8*, i8** @horzPlane, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %72, i64 %add65
  %73 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %73 to i32
  %and68 = and i32 %conv67, -3
  %conv69 = trunc i32 %and68 to i8
  store i8 %conv69, i8* %arrayidx66, align 1
  %74 = load i64, i64* %lastVia, align 8
  %add70 = add i64 %74, 1
  store i64 %add70, i64* %i, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.78, %if.then.63
  %75 = load i64, i64* %i, align 8
  %76 = load i64, i64* %effLAST, align 8
  %cmp72 = icmp ule i64 %75, %76
  br i1 %cmp72, label %for.body.74, label %for.end.80

for.body.74:                                      ; preds = %for.cond.71
  %77 = load i64, i64* %track, align 8
  %78 = load i64, i64* @channelColumns, align 8
  %mul75 = mul i64 %77, %78
  %79 = load i64, i64* %i, align 8
  %add76 = add i64 %mul75, %79
  %80 = load i8*, i8** @horzPlane, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %80, i64 %add76
  store i8 0, i8* %arrayidx77, align 1
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.74
  %81 = load i64, i64* %i, align 8
  %inc79 = add i64 %81, 1
  store i64 %inc79, i64* %i, align 8
  br label %for.cond.71

for.end.80:                                       ; preds = %for.cond.71
  br label %if.end.81

if.end.81:                                        ; preds = %if.then, %for.end.80, %if.end.60
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ExtendOK(i64 %net, i8* %plane, i64 %_x1, i64 %_y1, i64 %_x2, i64 %_y2) #0 {
entry:
  %retval = alloca i32, align 4
  %net.addr = alloca i64, align 8
  %plane.addr = alloca i8*, align 8
  %_x1.addr = alloca i64, align 8
  %_y1.addr = alloca i64, align 8
  %_x2.addr = alloca i64, align 8
  %_y2.addr = alloca i64, align 8
  %x1 = alloca i64, align 8
  %y1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %y2 = alloca i64, align 8
  store i64 %net, i64* %net.addr, align 8
  store i8* %plane, i8** %plane.addr, align 8
  store i64 %_x1, i64* %_x1.addr, align 8
  store i64 %_y1, i64* %_y1.addr, align 8
  store i64 %_x2, i64* %_x2.addr, align 8
  store i64 %_y2, i64* %_y2.addr, align 8
  %0 = load i64, i64* %_x1.addr, align 8
  %1 = load i64, i64* %_x2.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %_x1.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %_x2.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ]
  store i64 %cond, i64* %x1, align 8
  %4 = load i64, i64* %_y1.addr, align 8
  %5 = load i64, i64* %_y2.addr, align 8
  %cmp1 = icmp ult i64 %4, %5
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %6 = load i64, i64* %_y1.addr, align 8
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %7 = load i64, i64* %_y2.addr, align 8
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i64 [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  store i64 %cond5, i64* %y1, align 8
  %8 = load i64, i64* %_x1.addr, align 8
  %9 = load i64, i64* %_x2.addr, align 8
  %cmp6 = icmp ult i64 %8, %9
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end.4
  %10 = load i64, i64* %_x2.addr, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end.4
  %11 = load i64, i64* %_x1.addr, align 8
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.7
  %cond10 = phi i64 [ %10, %cond.true.7 ], [ %11, %cond.false.8 ]
  store i64 %cond10, i64* %x2, align 8
  %12 = load i64, i64* %_y1.addr, align 8
  %13 = load i64, i64* %_y2.addr, align 8
  %cmp11 = icmp ult i64 %12, %13
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  %14 = load i64, i64* %_y2.addr, align 8
  br label %cond.end.14

cond.false.13:                                    ; preds = %cond.end.9
  %15 = load i64, i64* %_y1.addr, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %cond15 = phi i64 [ %14, %cond.true.12 ], [ %15, %cond.false.13 ]
  store i64 %cond15, i64* %y2, align 8
  %16 = load i64, i64* %x1, align 8
  %17 = load i64, i64* %net.addr, align 8
  %18 = load i64*, i64** @FIRST, align 8
  %arrayidx = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx, align 8
  %cmp16 = icmp uge i64 %16, %19
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.14
  %20 = load i64, i64* %x2, align 8
  %21 = load i64, i64* %net.addr, align 8
  %22 = load i64*, i64** @LAST, align 8
  %arrayidx17 = getelementptr inbounds i64, i64* %22, i64 %21
  %23 = load i64, i64* %arrayidx17, align 8
  %cmp18 = icmp ule i64 %20, %23
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %cond.end.14
  %24 = load i64, i64* %x1, align 8
  %25 = load i64, i64* %net.addr, align 8
  %26 = load i64*, i64** @FIRST, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %26, i64 %25
  %27 = load i64, i64* %arrayidx19, align 8
  %cmp20 = icmp ult i64 %24, %27
  br i1 %cmp20, label %land.lhs.true.21, label %if.else

land.lhs.true.21:                                 ; preds = %if.end
  %28 = load i64, i64* %x2, align 8
  %29 = load i64, i64* %net.addr, align 8
  %30 = load i64*, i64** @LAST, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %30, i64 %29
  %31 = load i64, i64* %arrayidx22, align 8
  %cmp23 = icmp ugt i64 %28, %31
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true.21
  %32 = load i8*, i8** %plane.addr, align 8
  %33 = load i64, i64* %x1, align 8
  %34 = load i64, i64* %y1, align 8
  %35 = load i64, i64* %net.addr, align 8
  %36 = load i64*, i64** @FIRST, align 8
  %arrayidx25 = getelementptr inbounds i64, i64* %36, i64 %35
  %37 = load i64, i64* %arrayidx25, align 8
  %sub = sub i64 %37, 1
  %38 = load i64, i64* %y1, align 8
  %call = call i32 @SegmentFree(i8* %32, i64 %33, i64 %34, i64 %sub, i64 %38)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.24
  %39 = load i8*, i8** %plane.addr, align 8
  %40 = load i64, i64* %net.addr, align 8
  %41 = load i64*, i64** @LAST, align 8
  %arrayidx26 = getelementptr inbounds i64, i64* %41, i64 %40
  %42 = load i64, i64* %arrayidx26, align 8
  %add = add i64 %42, 1
  %43 = load i64, i64* %y1, align 8
  %44 = load i64, i64* %x2, align 8
  %45 = load i64, i64* %y1, align 8
  %call27 = call i32 @SegmentFree(i8* %39, i64 %add, i64 %43, i64 %44, i64 %45)
  %tobool28 = icmp ne i32 %call27, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.24
  %46 = phi i1 [ false, %if.then.24 ], [ %tobool28, %land.rhs ]
  %land.ext = zext i1 %46 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.21, %if.end
  %47 = load i64, i64* %x1, align 8
  %48 = load i64, i64* %net.addr, align 8
  %49 = load i64*, i64** @FIRST, align 8
  %arrayidx29 = getelementptr inbounds i64, i64* %49, i64 %48
  %50 = load i64, i64* %arrayidx29, align 8
  %cmp30 = icmp ult i64 %47, %50
  br i1 %cmp30, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %if.else
  %51 = load i8*, i8** %plane.addr, align 8
  %52 = load i64, i64* %x1, align 8
  %53 = load i64, i64* %y1, align 8
  %54 = load i64, i64* %net.addr, align 8
  %55 = load i64*, i64** @FIRST, align 8
  %arrayidx32 = getelementptr inbounds i64, i64* %55, i64 %54
  %56 = load i64, i64* %arrayidx32, align 8
  %sub33 = sub i64 %56, 1
  %57 = load i64, i64* %y1, align 8
  %call34 = call i32 @SegmentFree(i8* %51, i64 %52, i64 %53, i64 %sub33, i64 %57)
  store i32 %call34, i32* %retval
  br label %return

if.else.35:                                       ; preds = %if.else
  %58 = load i64, i64* %x2, align 8
  %59 = load i64, i64* %net.addr, align 8
  %60 = load i64*, i64** @LAST, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %60, i64 %59
  %61 = load i64, i64* %arrayidx36, align 8
  %cmp37 = icmp ugt i64 %58, %61
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.else.35
  %62 = load i8*, i8** %plane.addr, align 8
  %63 = load i64, i64* %net.addr, align 8
  %64 = load i64*, i64** @LAST, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %64, i64 %63
  %65 = load i64, i64* %arrayidx39, align 8
  %add40 = add i64 %65, 1
  %66 = load i64, i64* %y1, align 8
  %67 = load i64, i64* %x2, align 8
  %68 = load i64, i64* %y1, align 8
  %call41 = call i32 @SegmentFree(i8* %62, i64 %add40, i64 %66, i64 %67, i64 %68)
  store i32 %call41, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.else.35
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  call void @abort() #5
  unreachable

return:                                           ; preds = %if.then.38, %if.then.31, %land.end, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind uwtable
define i32 @Maze2() #0 {
entry:
  %numLeft = alloca i32, align 4
  %p = alloca i64, align 8
  %s = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 0, i32* %numLeft, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* @channelColumns, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** @mazeRoute, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end.63

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** @TOP, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64*, i64** @netsAssign, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx2, align 8
  store i64 %9, i64* %s, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** @BOT, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx3, align 8
  %13 = load i64*, i64** @netsAssign, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx4, align 8
  store i64 %14, i64* %p, align 8
  %15 = load i64, i64* %i, align 8
  %cmp5 = icmp ugt i64 %15, 1
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load i64, i64* %p, align 8
  %cmp6 = icmp ugt i64 %16, 1
  br i1 %cmp6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %17 = load i64, i64* %i, align 8
  %18 = load i64*, i64** @TOP, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx8, align 8
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* @channelTracks, align 8
  %add = add i64 %21, 1
  %22 = load i64, i64* %p, align 8
  %23 = load i64, i64* %s, align 8
  %24 = load i64, i64* %i, align 8
  %sub = sub i64 %24, 1
  %25 = load i64, i64* %p, align 8
  %sub9 = sub i64 %25, 1
  %call = call i32 @Maze2Mech(i64 %19, i64 %20, i64 %add, i64 %22, i64 0, i64 %23, i64 %sub, i64 1, i32 -1, i64 1, i64 %sub9, i32 1)
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %land.lhs.true.7
  %26 = load i64, i64* %i, align 8
  %27 = load i8*, i8** @mazeRoute, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %27, i64 %26
  store i8 0, i8* %arrayidx12, align 1
  %28 = load i64, i64* %i, align 8
  %29 = load i64*, i64** @TOP, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %29, i64 %28
  %30 = load i64, i64* %arrayidx13, align 8
  call void @CleanNet(i64 %30)
  %31 = load i64, i64* %i, align 8
  %32 = load i64*, i64** @BOT, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %32, i64 %31
  %33 = load i64, i64* %arrayidx14, align 8
  call void @CleanNet(i64 %33)
  br label %if.end.62

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %if.then
  %34 = load i64, i64* %i, align 8
  %35 = load i64, i64* @channelColumns, align 8
  %cmp15 = icmp ult i64 %34, %35
  br i1 %cmp15, label %land.lhs.true.16, label %if.else.29

land.lhs.true.16:                                 ; preds = %if.else
  %36 = load i64, i64* %p, align 8
  %cmp17 = icmp ugt i64 %36, 1
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.29

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %37 = load i64, i64* %i, align 8
  %38 = load i64*, i64** @TOP, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %38, i64 %37
  %39 = load i64, i64* %arrayidx19, align 8
  %40 = load i64, i64* %i, align 8
  %41 = load i64, i64* @channelTracks, align 8
  %add20 = add i64 %41, 1
  %42 = load i64, i64* %p, align 8
  %43 = load i64, i64* %s, align 8
  %44 = load i64, i64* %i, align 8
  %add21 = add i64 %44, 1
  %45 = load i64, i64* @channelColumns, align 8
  %46 = load i64, i64* %p, align 8
  %sub22 = sub i64 %46, 1
  %call23 = call i32 @Maze2Mech(i64 %39, i64 %40, i64 %add20, i64 %42, i64 0, i64 %43, i64 %add21, i64 %45, i32 1, i64 1, i64 %sub22, i32 1)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.29

if.then.25:                                       ; preds = %land.lhs.true.18
  %47 = load i64, i64* %i, align 8
  %48 = load i8*, i8** @mazeRoute, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %48, i64 %47
  store i8 0, i8* %arrayidx26, align 1
  %49 = load i64, i64* %i, align 8
  %50 = load i64*, i64** @TOP, align 8
  %arrayidx27 = getelementptr inbounds i64, i64* %50, i64 %49
  %51 = load i64, i64* %arrayidx27, align 8
  call void @CleanNet(i64 %51)
  %52 = load i64, i64* %i, align 8
  %53 = load i64*, i64** @BOT, align 8
  %arrayidx28 = getelementptr inbounds i64, i64* %53, i64 %52
  %54 = load i64, i64* %arrayidx28, align 8
  call void @CleanNet(i64 %54)
  br label %if.end.61

if.else.29:                                       ; preds = %land.lhs.true.18, %land.lhs.true.16, %if.else
  %55 = load i64, i64* %i, align 8
  %cmp30 = icmp ugt i64 %55, 1
  br i1 %cmp30, label %land.lhs.true.31, label %if.else.44

land.lhs.true.31:                                 ; preds = %if.else.29
  %56 = load i64, i64* %s, align 8
  %57 = load i64, i64* @channelTracks, align 8
  %cmp32 = icmp ult i64 %56, %57
  br i1 %cmp32, label %land.lhs.true.33, label %if.else.44

land.lhs.true.33:                                 ; preds = %land.lhs.true.31
  %58 = load i64, i64* %i, align 8
  %59 = load i64*, i64** @BOT, align 8
  %arrayidx34 = getelementptr inbounds i64, i64* %59, i64 %58
  %60 = load i64, i64* %arrayidx34, align 8
  %61 = load i64, i64* %i, align 8
  %62 = load i64, i64* %s, align 8
  %63 = load i64, i64* @channelTracks, align 8
  %add35 = add i64 %63, 1
  %64 = load i64, i64* %p, align 8
  %65 = load i64, i64* %i, align 8
  %sub36 = sub i64 %65, 1
  %66 = load i64, i64* %s, align 8
  %add37 = add i64 %66, 1
  %67 = load i64, i64* @channelTracks, align 8
  %call38 = call i32 @Maze2Mech(i64 %60, i64 %61, i64 0, i64 %62, i64 %add35, i64 %64, i64 %sub36, i64 1, i32 -1, i64 %add37, i64 %67, i32 1)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %land.lhs.true.33
  %68 = load i64, i64* %i, align 8
  %69 = load i8*, i8** @mazeRoute, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8 0, i8* %arrayidx41, align 1
  %70 = load i64, i64* %i, align 8
  %71 = load i64*, i64** @TOP, align 8
  %arrayidx42 = getelementptr inbounds i64, i64* %71, i64 %70
  %72 = load i64, i64* %arrayidx42, align 8
  call void @CleanNet(i64 %72)
  %73 = load i64, i64* %i, align 8
  %74 = load i64*, i64** @BOT, align 8
  %arrayidx43 = getelementptr inbounds i64, i64* %74, i64 %73
  %75 = load i64, i64* %arrayidx43, align 8
  call void @CleanNet(i64 %75)
  br label %if.end.60

if.else.44:                                       ; preds = %land.lhs.true.33, %land.lhs.true.31, %if.else.29
  %76 = load i64, i64* %i, align 8
  %77 = load i64, i64* @channelColumns, align 8
  %cmp45 = icmp ult i64 %76, %77
  br i1 %cmp45, label %land.lhs.true.46, label %if.else.59

land.lhs.true.46:                                 ; preds = %if.else.44
  %78 = load i64, i64* %s, align 8
  %79 = load i64, i64* @channelTracks, align 8
  %cmp47 = icmp ult i64 %78, %79
  br i1 %cmp47, label %land.lhs.true.48, label %if.else.59

land.lhs.true.48:                                 ; preds = %land.lhs.true.46
  %80 = load i64, i64* %i, align 8
  %81 = load i64*, i64** @BOT, align 8
  %arrayidx49 = getelementptr inbounds i64, i64* %81, i64 %80
  %82 = load i64, i64* %arrayidx49, align 8
  %83 = load i64, i64* %i, align 8
  %84 = load i64, i64* %s, align 8
  %85 = load i64, i64* @channelTracks, align 8
  %add50 = add i64 %85, 1
  %86 = load i64, i64* %p, align 8
  %87 = load i64, i64* %i, align 8
  %add51 = add i64 %87, 1
  %88 = load i64, i64* @channelColumns, align 8
  %89 = load i64, i64* %s, align 8
  %add52 = add i64 %89, 1
  %90 = load i64, i64* @channelTracks, align 8
  %call53 = call i32 @Maze2Mech(i64 %82, i64 %83, i64 0, i64 %84, i64 %add50, i64 %86, i64 %add51, i64 %88, i32 1, i64 %add52, i64 %90, i32 1)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.59

if.then.55:                                       ; preds = %land.lhs.true.48
  %91 = load i64, i64* %i, align 8
  %92 = load i8*, i8** @mazeRoute, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8 0, i8* %arrayidx56, align 1
  %93 = load i64, i64* %i, align 8
  %94 = load i64*, i64** @TOP, align 8
  %arrayidx57 = getelementptr inbounds i64, i64* %94, i64 %93
  %95 = load i64, i64* %arrayidx57, align 8
  call void @CleanNet(i64 %95)
  %96 = load i64, i64* %i, align 8
  %97 = load i64*, i64** @BOT, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %97, i64 %96
  %98 = load i64, i64* %arrayidx58, align 8
  call void @CleanNet(i64 %98)
  br label %if.end

if.else.59:                                       ; preds = %land.lhs.true.48, %land.lhs.true.46, %if.else.44
  %99 = load i32, i32* %numLeft, align 4
  %inc = add nsw i32 %99, 1
  store i32 %inc, i32* %numLeft, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.59, %if.then.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end, %if.then.40
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.25
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.11
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %100 = load i64, i64* %i, align 8
  %inc64 = add i64 %100, 1
  store i64 %inc64, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %101 = load i32, i32* %numLeft, align 4
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define internal i32 @Maze2Mech(i64 %bentNet, i64 %i, i64 %s1, i64 %s2, i64 %b1, i64 %b2, i64 %xStart, i64 %xEnd, i32 %bXdelta, i64 %yStart, i64 %yEnd, i32 %bYdelta) #0 {
entry:
  %retval = alloca i32, align 4
  %bentNet.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  %s1.addr = alloca i64, align 8
  %s2.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %xStart.addr = alloca i64, align 8
  %xEnd.addr = alloca i64, align 8
  %bXdelta.addr = alloca i32, align 4
  %yStart.addr = alloca i64, align 8
  %yEnd.addr = alloca i64, align 8
  %bYdelta.addr = alloca i32, align 4
  %row = alloca i64, align 8
  %col = alloca i64, align 8
  %colFree = alloca i32, align 4
  store i64 %bentNet, i64* %bentNet.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %s1, i64* %s1.addr, align 8
  store i64 %s2, i64* %s2.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  store i64 %xStart, i64* %xStart.addr, align 8
  store i64 %xEnd, i64* %xEnd.addr, align 8
  store i32 %bXdelta, i32* %bXdelta.addr, align 4
  store i64 %yStart, i64* %yStart.addr, align 8
  store i64 %yEnd, i64* %yEnd.addr, align 8
  store i32 %bYdelta, i32* %bYdelta.addr, align 4
  %0 = load i32, i32* %bXdelta.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %xEnd.addr, align 8
  %add = add i64 %1, %conv
  store i64 %add, i64* %xEnd.addr, align 8
  %2 = load i32, i32* %bYdelta.addr, align 4
  %conv1 = sext i32 %2 to i64
  %3 = load i64, i64* %yEnd.addr, align 8
  %add2 = add i64 %3, %conv1
  store i64 %add2, i64* %yEnd.addr, align 8
  %4 = load i64, i64* %yStart.addr, align 8
  store i64 %4, i64* %row, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %5 = load i64, i64* %row, align 8
  %6 = load i64, i64* %yEnd.addr, align 8
  %cmp = icmp ne i64 %5, %6
  br i1 %cmp, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %colFree, align 4
  %7 = load i64, i64* %xStart.addr, align 8
  store i64 %7, i64* %col, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %colFree, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.4
  %9 = load i64, i64* %col, align 8
  %10 = load i64, i64* %xEnd.addr, align 8
  %cmp5 = icmp ne i64 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.4
  %11 = phi i1 [ false, %for.cond.4 ], [ %cmp5, %land.rhs ]
  br i1 %11, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %land.end
  %12 = load i8*, i8** @horzPlane, align 8
  %13 = load i64, i64* %i.addr, align 8
  %14 = load i64, i64* %row, align 8
  %15 = load i64, i64* %col, align 8
  %16 = load i64, i64* %row, align 8
  %call = call i32 @SegmentFree(i8* %12, i64 %13, i64 %14, i64 %15, i64 %16)
  store i32 %call, i32* %colFree, align 4
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.7
  %17 = load i8*, i8** @vertPlane, align 8
  %18 = load i64, i64* %i.addr, align 8
  %19 = load i64, i64* %s1.addr, align 8
  %20 = load i64, i64* %i.addr, align 8
  %21 = load i64, i64* %s2.addr, align 8
  %call9 = call i32 @SegmentFree(i8* %17, i64 %18, i64 %19, i64 %20, i64 %21)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %22 = load i8*, i8** @vertPlane, align 8
  %23 = load i64, i64* %i.addr, align 8
  %24 = load i64, i64* %b1.addr, align 8
  %25 = load i64, i64* %i.addr, align 8
  %26 = load i64, i64* %row, align 8
  %call12 = call i32 @SegmentFree(i8* %22, i64 %23, i64 %24, i64 %25, i64 %26)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %27 = load i8*, i8** @vertPlane, align 8
  %28 = load i64, i64* %col, align 8
  %29 = load i64, i64* %row, align 8
  %30 = load i64, i64* %col, align 8
  %31 = load i64, i64* %b2.addr, align 8
  %sub = sub i64 %31, 1
  %call15 = call i32 @SegmentFree(i8* %27, i64 %28, i64 %29, i64 %30, i64 %sub)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %32 = load i64, i64* %col, align 8
  %call18 = call i32 @HasVCV(i64 %32)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %33 = load i64, i64* %bentNet.addr, align 8
  %34 = load i8*, i8** @horzPlane, align 8
  %35 = load i64, i64* %col, align 8
  %36 = load i64, i64* %b2.addr, align 8
  %37 = load i64, i64* %i.addr, align 8
  %38 = load i64, i64* %b2.addr, align 8
  %call21 = call i32 @ExtendOK(i64 %33, i8* %34, i64 %35, i64 %36, i64 %37, i64 %38)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.20
  %39 = load i8*, i8** @vertPlane, align 8
  %40 = load i64, i64* %i.addr, align 8
  %41 = load i64, i64* %s1.addr, align 8
  %42 = load i64, i64* %i.addr, align 8
  %43 = load i64, i64* %s2.addr, align 8
  call void @DrawSegment(i8* %39, i64 %40, i64 %41, i64 %42, i64 %43)
  %44 = load i64, i64* %i.addr, align 8
  %45 = load i64, i64* %s2.addr, align 8
  call void @DrawVia(i64 %44, i64 %45)
  %46 = load i8*, i8** @vertPlane, align 8
  %47 = load i64, i64* %i.addr, align 8
  %48 = load i64, i64* %b1.addr, align 8
  %49 = load i64, i64* %i.addr, align 8
  %50 = load i64, i64* %row, align 8
  call void @DrawSegment(i8* %46, i64 %47, i64 %48, i64 %49, i64 %50)
  %51 = load i64, i64* %i.addr, align 8
  %52 = load i64, i64* %row, align 8
  call void @DrawVia(i64 %51, i64 %52)
  %53 = load i8*, i8** @horzPlane, align 8
  %54 = load i64, i64* %i.addr, align 8
  %55 = load i64, i64* %row, align 8
  %56 = load i64, i64* %col, align 8
  %57 = load i64, i64* %row, align 8
  call void @DrawSegment(i8* %53, i64 %54, i64 %55, i64 %56, i64 %57)
  %58 = load i64, i64* %col, align 8
  %59 = load i64, i64* %row, align 8
  call void @DrawVia(i64 %58, i64 %59)
  %60 = load i8*, i8** @vertPlane, align 8
  %61 = load i64, i64* %col, align 8
  %62 = load i64, i64* %row, align 8
  %63 = load i64, i64* %col, align 8
  %64 = load i64, i64* %b2.addr, align 8
  call void @DrawSegment(i8* %60, i64 %61, i64 %62, i64 %63, i64 %64)
  %65 = load i64, i64* %col, align 8
  %66 = load i64, i64* %b2.addr, align 8
  call void @DrawVia(i64 %65, i64 %66)
  %67 = load i8*, i8** @horzPlane, align 8
  %68 = load i64, i64* %col, align 8
  %69 = load i64, i64* %b2.addr, align 8
  %70 = load i64, i64* %i.addr, align 8
  %71 = load i64, i64* %b2.addr, align 8
  call void @DrawSegment(i8* %67, i64 %68, i64 %69, i64 %70, i64 %71)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.20, %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %72 = load i32, i32* %bXdelta.addr, align 4
  %conv23 = sext i32 %72 to i64
  %73 = load i64, i64* %col, align 8
  %add24 = add i64 %73, %conv23
  store i64 %add24, i64* %col, align 8
  br label %for.cond.4

for.end:                                          ; preds = %land.end
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %74 = load i32, i32* %bYdelta.addr, align 4
  %conv26 = sext i32 %74 to i64
  %75 = load i64, i64* %row, align 8
  %add27 = add i64 %75, %conv26
  store i64 %add27, i64* %row, align 8
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.28, %if.then
  %76 = load i32, i32* %retval
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define void @FindFreeHorzSeg(i64 %startCol, i64 %row, i64* %rowStart, i64* %rowEnd) #0 {
entry:
  %startCol.addr = alloca i64, align 8
  %row.addr = alloca i64, align 8
  %rowStart.addr = alloca i64*, align 8
  %rowEnd.addr = alloca i64*, align 8
  %i = alloca i64, align 8
  store i64 %startCol, i64* %startCol.addr, align 8
  store i64 %row, i64* %row.addr, align 8
  store i64* %rowStart, i64** %rowStart.addr, align 8
  store i64* %rowEnd, i64** %rowEnd.addr, align 8
  %0 = load i64, i64* %startCol.addr, align 8
  store i64 %0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp uge i64 %1, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %row.addr, align 8
  %3 = load i64, i64* @channelColumns, align 8
  %mul = mul i64 %2, %3
  %4 = load i64, i64* %i, align 8
  %add = add i64 %mul, %4
  %5 = load i8*, i8** @horzPlane, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %add
  %6 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i64, i64* %i, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i64, i64* %i, align 8
  %add1 = add i64 %8, 1
  %9 = load i64*, i64** %rowStart.addr, align 8
  store i64 %add1, i64* %9, align 8
  %10 = load i64, i64* %startCol.addr, align 8
  store i64 %10, i64* %i, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.11, %for.end
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* @channelColumns, align 8
  %cmp3 = icmp ule i64 %11, %12
  br i1 %cmp3, label %for.body.4, label %for.end.12

for.body.4:                                       ; preds = %for.cond.2
  %13 = load i64, i64* %row.addr, align 8
  %14 = load i64, i64* @channelColumns, align 8
  %mul5 = mul i64 %13, %14
  %15 = load i64, i64* %i, align 8
  %add6 = add i64 %mul5, %15
  %16 = load i8*, i8** @horzPlane, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %16, i64 %add6
  %17 = load i8, i8* %arrayidx7, align 1
  %tobool8 = icmp ne i8 %17, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body.4
  br label %for.end.12

if.end.10:                                        ; preds = %for.body.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.2

for.end.12:                                       ; preds = %if.then.9, %for.cond.2
  %19 = load i64, i64* %i, align 8
  %sub = sub i64 %19, 1
  %20 = load i64*, i64** %rowEnd.addr, align 8
  store i64 %sub, i64* %20, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Maze3() #0 {
entry:
  %numLeft = alloca i32, align 4
  %p = alloca i64, align 8
  %s = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 0, i32* %numLeft, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i64, i64* @channelColumns, align 8
  %cmp = icmp ule i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** @mazeRoute, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8
  %6 = load i64*, i64** @TOP, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %6, i64 %5
  %7 = load i64, i64* %arrayidx1, align 8
  %8 = load i64*, i64** @netsAssign, align 8
  %arrayidx2 = getelementptr inbounds i64, i64* %8, i64 %7
  %9 = load i64, i64* %arrayidx2, align 8
  store i64 %9, i64* %s, align 8
  %10 = load i64, i64* %i, align 8
  %11 = load i64*, i64** @BOT, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %11, i64 %10
  %12 = load i64, i64* %arrayidx3, align 8
  %13 = load i64*, i64** @netsAssign, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx4, align 8
  store i64 %14, i64* %p, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load i64*, i64** @TOP, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %16, i64 %15
  %17 = load i64, i64* %arrayidx5, align 8
  %18 = load i64, i64* %i, align 8
  %19 = load i64*, i64** @BOT, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %19, i64 %18
  %20 = load i64, i64* %arrayidx6, align 8
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %s, align 8
  %23 = load i64, i64* @channelTracks, align 8
  %add = add i64 %23, 1
  %24 = load i64, i64* %p, align 8
  %call = call i32 @Maze3Mech(i64 %17, i64 %20, i64 %21, i64 0, i64 %22, i64 %add, i64 %24)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %25 = load i64, i64* %i, align 8
  %26 = load i8*, i8** @mazeRoute, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8 0, i8* %arrayidx9, align 1
  %27 = load i64, i64* %i, align 8
  %28 = load i64*, i64** @TOP, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %28, i64 %27
  %29 = load i64, i64* %arrayidx10, align 8
  call void @CleanNet(i64 %29)
  %30 = load i64, i64* %i, align 8
  %31 = load i64*, i64** @BOT, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %31, i64 %30
  %32 = load i64, i64* %arrayidx11, align 8
  call void @CleanNet(i64 %32)
  br label %if.end

if.else:                                          ; preds = %if.then
  %33 = load i32, i32* %numLeft, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %numLeft, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %34 = load i64, i64* %i, align 8
  %inc13 = add i64 %34, 1
  store i64 %inc13, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %numLeft, align 4
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @Maze3Mech(i64 %topNet, i64 %botNet, i64 %i, i64 %s1, i64 %s2, i64 %b1, i64 %b2) #0 {
entry:
  %retval = alloca i32, align 4
  %topNet.addr = alloca i64, align 8
  %botNet.addr = alloca i64, align 8
  %i.addr = alloca i64, align 8
  %s1.addr = alloca i64, align 8
  %s2.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %topRow = alloca i64, align 8
  %topCol = alloca i64, align 8
  %botRow = alloca i64, align 8
  %botCol = alloca i64, align 8
  %topStart = alloca i64, align 8
  %topEnd = alloca i64, align 8
  %botStart = alloca i64, align 8
  %botEnd = alloca i64, align 8
  store i64 %topNet, i64* %topNet.addr, align 8
  store i64 %botNet, i64* %botNet.addr, align 8
  store i64 %i, i64* %i.addr, align 8
  store i64 %s1, i64* %s1.addr, align 8
  store i64 %s2, i64* %s2.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  %0 = load i64, i64* %b2.addr, align 8
  %add = add i64 %0, 1
  store i64 %add, i64* %topRow, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %entry
  %1 = load i64, i64* %topRow, align 8
  %2 = load i64, i64* %s2.addr, align 8
  %sub = sub i64 %2, 1
  %cmp = icmp ult i64 %1, %sub
  br i1 %cmp, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i.addr, align 8
  %4 = load i64, i64* %topRow, align 8
  call void @FindFreeHorzSeg(i64 %3, i64 %4, i64* %topStart, i64* %topEnd)
  %5 = load i64, i64* %topEnd, align 8
  %6 = load i64, i64* %topStart, align 8
  %cmp1 = icmp ule i64 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.59

if.end:                                           ; preds = %for.body
  %7 = load i64, i64* %topRow, align 8
  %add2 = add i64 %7, 1
  store i64 %add2, i64* %botRow, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.56, %if.end
  %8 = load i64, i64* %botRow, align 8
  %9 = load i64, i64* %s2.addr, align 8
  %cmp4 = icmp ult i64 %8, %9
  br i1 %cmp4, label %for.body.5, label %for.end.58

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i64, i64* %i.addr, align 8
  %11 = load i64, i64* %botRow, align 8
  call void @FindFreeHorzSeg(i64 %10, i64 %11, i64* %botStart, i64* %botEnd)
  %12 = load i64, i64* %botEnd, align 8
  %13 = load i64, i64* %botStart, align 8
  %cmp6 = icmp ule i64 %12, %13
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.body.5
  br label %for.inc.56

if.end.8:                                         ; preds = %for.body.5
  %14 = load i64, i64* %topStart, align 8
  store i64 %14, i64* %topCol, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.53, %if.end.8
  %15 = load i64, i64* %topCol, align 8
  %16 = load i64, i64* %topEnd, align 8
  %cmp10 = icmp ule i64 %15, %16
  br i1 %cmp10, label %for.body.11, label %for.end.55

for.body.11:                                      ; preds = %for.cond.9
  %17 = load i64, i64* %botStart, align 8
  store i64 %17, i64* %botCol, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %for.body.11
  %18 = load i64, i64* %botCol, align 8
  %19 = load i64, i64* %botEnd, align 8
  %cmp13 = icmp ule i64 %18, %19
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %20 = load i64, i64* %topCol, align 8
  %21 = load i64, i64* %i.addr, align 8
  %cmp15 = icmp ne i64 %20, %21
  br i1 %cmp15, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %for.body.14
  %22 = load i64, i64* %botCol, align 8
  %23 = load i64, i64* %i.addr, align 8
  %cmp16 = icmp ne i64 %22, %23
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.52

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %24 = load i64, i64* %topRow, align 8
  %25 = load i64, i64* %botRow, align 8
  %cmp18 = icmp ne i64 %24, %25
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.52

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %26 = load i64, i64* %topCol, align 8
  %27 = load i64, i64* %botCol, align 8
  %cmp20 = icmp ne i64 %26, %27
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.52

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %28 = load i8*, i8** @vertPlane, align 8
  %29 = load i64, i64* %i.addr, align 8
  %30 = load i64, i64* %s1.addr, align 8
  %31 = load i64, i64* %i.addr, align 8
  %32 = load i64, i64* %topRow, align 8
  %call = call i32 @SegmentFree(i8* %28, i64 %29, i64 %30, i64 %31, i64 %32)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.22, label %if.end.52

land.lhs.true.22:                                 ; preds = %land.lhs.true.21
  %33 = load i8*, i8** @horzPlane, align 8
  %34 = load i64, i64* %i.addr, align 8
  %35 = load i64, i64* %topRow, align 8
  %36 = load i64, i64* %topCol, align 8
  %37 = load i64, i64* %topRow, align 8
  %call23 = call i32 @SegmentFree(i8* %33, i64 %34, i64 %35, i64 %36, i64 %37)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.52

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %38 = load i8*, i8** @vertPlane, align 8
  %39 = load i64, i64* %topCol, align 8
  %40 = load i64, i64* %topRow, align 8
  %41 = load i64, i64* %topCol, align 8
  %42 = load i64, i64* %s2.addr, align 8
  %add26 = add i64 %42, 1
  %call27 = call i32 @SegmentFree(i8* %38, i64 %39, i64 %40, i64 %41, i64 %add26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.52

land.lhs.true.29:                                 ; preds = %land.lhs.true.25
  %43 = load i64, i64* %topCol, align 8
  %call30 = call i32 @HasVCV(i64 %43)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.52, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %land.lhs.true.29
  %44 = load i64, i64* %topNet.addr, align 8
  %45 = load i8*, i8** @horzPlane, align 8
  %46 = load i64, i64* %topCol, align 8
  %47 = load i64, i64* %s2.addr, align 8
  %48 = load i64, i64* %i.addr, align 8
  %49 = load i64, i64* %s2.addr, align 8
  %call33 = call i32 @ExtendOK(i64 %44, i8* %45, i64 %46, i64 %47, i64 %48, i64 %49)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.52

land.lhs.true.35:                                 ; preds = %land.lhs.true.32
  %50 = load i8*, i8** @vertPlane, align 8
  %51 = load i64, i64* %i.addr, align 8
  %52 = load i64, i64* %b1.addr, align 8
  %53 = load i64, i64* %i.addr, align 8
  %54 = load i64, i64* %botRow, align 8
  %call36 = call i32 @SegmentFree(i8* %50, i64 %51, i64 %52, i64 %53, i64 %54)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.52

land.lhs.true.38:                                 ; preds = %land.lhs.true.35
  %55 = load i8*, i8** @horzPlane, align 8
  %56 = load i64, i64* %i.addr, align 8
  %57 = load i64, i64* %botRow, align 8
  %58 = load i64, i64* %botCol, align 8
  %59 = load i64, i64* %botRow, align 8
  %call39 = call i32 @SegmentFree(i8* %55, i64 %56, i64 %57, i64 %58, i64 %59)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.52

land.lhs.true.41:                                 ; preds = %land.lhs.true.38
  %60 = load i8*, i8** @vertPlane, align 8
  %61 = load i64, i64* %botCol, align 8
  %62 = load i64, i64* %botRow, align 8
  %63 = load i64, i64* %botCol, align 8
  %64 = load i64, i64* %b2.addr, align 8
  %sub42 = sub i64 %64, 1
  %call43 = call i32 @SegmentFree(i8* %60, i64 %61, i64 %62, i64 %63, i64 %sub42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.52

land.lhs.true.45:                                 ; preds = %land.lhs.true.41
  %65 = load i64, i64* %botCol, align 8
  %call46 = call i32 @HasVCV(i64 %65)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.52, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %66 = load i64, i64* %botNet.addr, align 8
  %67 = load i8*, i8** @horzPlane, align 8
  %68 = load i64, i64* %botCol, align 8
  %69 = load i64, i64* %b2.addr, align 8
  %70 = load i64, i64* %i.addr, align 8
  %71 = load i64, i64* %b2.addr, align 8
  %call49 = call i32 @ExtendOK(i64 %66, i8* %67, i64 %68, i64 %69, i64 %70, i64 %71)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.48
  %72 = load i8*, i8** @vertPlane, align 8
  %73 = load i64, i64* %i.addr, align 8
  %74 = load i64, i64* %s1.addr, align 8
  %75 = load i64, i64* %i.addr, align 8
  %76 = load i64, i64* %topRow, align 8
  call void @DrawSegment(i8* %72, i64 %73, i64 %74, i64 %75, i64 %76)
  %77 = load i64, i64* %i.addr, align 8
  %78 = load i64, i64* %topRow, align 8
  call void @DrawVia(i64 %77, i64 %78)
  %79 = load i8*, i8** @horzPlane, align 8
  %80 = load i64, i64* %i.addr, align 8
  %81 = load i64, i64* %topRow, align 8
  %82 = load i64, i64* %topCol, align 8
  %83 = load i64, i64* %topRow, align 8
  call void @DrawSegment(i8* %79, i64 %80, i64 %81, i64 %82, i64 %83)
  %84 = load i64, i64* %topCol, align 8
  %85 = load i64, i64* %topRow, align 8
  call void @DrawVia(i64 %84, i64 %85)
  %86 = load i8*, i8** @vertPlane, align 8
  %87 = load i64, i64* %topCol, align 8
  %88 = load i64, i64* %topRow, align 8
  %89 = load i64, i64* %topCol, align 8
  %90 = load i64, i64* %s2.addr, align 8
  call void @DrawSegment(i8* %86, i64 %87, i64 %88, i64 %89, i64 %90)
  %91 = load i64, i64* %topCol, align 8
  %92 = load i64, i64* %s2.addr, align 8
  call void @DrawVia(i64 %91, i64 %92)
  %93 = load i8*, i8** @horzPlane, align 8
  %94 = load i64, i64* %topCol, align 8
  %95 = load i64, i64* %s2.addr, align 8
  %96 = load i64, i64* %i.addr, align 8
  %97 = load i64, i64* %s2.addr, align 8
  call void @DrawSegment(i8* %93, i64 %94, i64 %95, i64 %96, i64 %97)
  %98 = load i8*, i8** @vertPlane, align 8
  %99 = load i64, i64* %i.addr, align 8
  %100 = load i64, i64* %b1.addr, align 8
  %101 = load i64, i64* %i.addr, align 8
  %102 = load i64, i64* %botRow, align 8
  call void @DrawSegment(i8* %98, i64 %99, i64 %100, i64 %101, i64 %102)
  %103 = load i64, i64* %i.addr, align 8
  %104 = load i64, i64* %botRow, align 8
  call void @DrawVia(i64 %103, i64 %104)
  %105 = load i8*, i8** @horzPlane, align 8
  %106 = load i64, i64* %i.addr, align 8
  %107 = load i64, i64* %botRow, align 8
  %108 = load i64, i64* %botCol, align 8
  %109 = load i64, i64* %botRow, align 8
  call void @DrawSegment(i8* %105, i64 %106, i64 %107, i64 %108, i64 %109)
  %110 = load i64, i64* %botCol, align 8
  %111 = load i64, i64* %botRow, align 8
  call void @DrawVia(i64 %110, i64 %111)
  %112 = load i8*, i8** @vertPlane, align 8
  %113 = load i64, i64* %botCol, align 8
  %114 = load i64, i64* %botRow, align 8
  %115 = load i64, i64* %botCol, align 8
  %116 = load i64, i64* %b2.addr, align 8
  call void @DrawSegment(i8* %112, i64 %113, i64 %114, i64 %115, i64 %116)
  %117 = load i64, i64* %botCol, align 8
  %118 = load i64, i64* %b2.addr, align 8
  call void @DrawVia(i64 %117, i64 %118)
  %119 = load i8*, i8** @horzPlane, align 8
  %120 = load i64, i64* %botCol, align 8
  %121 = load i64, i64* %b2.addr, align 8
  %122 = load i64, i64* %i.addr, align 8
  %123 = load i64, i64* %b2.addr, align 8
  call void @DrawSegment(i8* %119, i64 %120, i64 %121, i64 %122, i64 %123)
  store i32 1, i32* %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true.48, %land.lhs.true.45, %land.lhs.true.41, %land.lhs.true.38, %land.lhs.true.35, %land.lhs.true.32, %land.lhs.true.29, %land.lhs.true.25, %land.lhs.true.22, %land.lhs.true.21, %land.lhs.true.19, %land.lhs.true.17, %land.lhs.true, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %124 = load i64, i64* %botCol, align 8
  %inc = add i64 %124, 1
  store i64 %inc, i64* %botCol, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end
  %125 = load i64, i64* %topCol, align 8
  %inc54 = add i64 %125, 1
  store i64 %inc54, i64* %topCol, align 8
  br label %for.cond.9

for.end.55:                                       ; preds = %for.cond.9
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end.55, %if.then.7
  %126 = load i64, i64* %botRow, align 8
  %inc57 = add i64 %126, 1
  store i64 %inc57, i64* %botRow, align 8
  br label %for.cond.3

for.end.58:                                       ; preds = %for.cond.3
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.end.58, %if.then
  %127 = load i64, i64* %topRow, align 8
  %inc60 = add i64 %127, 1
  store i64 %inc60, i64* %topRow, align 8
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.61, %if.then.51
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal i32 @HasVCV(i64 %i) #0 {
entry:
  %i.addr = alloca i64, align 8
  store i64 %i, i64* %i.addr, align 8
  %0 = load i64, i64* %i.addr, align 8
  %1 = load i64*, i64** @TOP, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 %0
  %2 = load i64, i64* %arrayidx, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i64, i64* %i.addr, align 8
  %4 = load i64*, i64** @BOT, align 8
  %arrayidx1 = getelementptr inbounds i64, i64* %4, i64 %3
  %5 = load i64, i64* %arrayidx1, align 8
  %cmp2 = icmp ne i64 %5, 0
  br i1 %cmp2, label %land.lhs.true.3, label %land.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load i64, i64* %i.addr, align 8
  %7 = load i64*, i64** @TOP, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %7, i64 %6
  %8 = load i64, i64* %arrayidx4, align 8
  %9 = load i64, i64* %i.addr, align 8
  %10 = load i64*, i64** @BOT, align 8
  %arrayidx5 = getelementptr inbounds i64, i64* %10, i64 %9
  %11 = load i64, i64* %arrayidx5, align 8
  %cmp6 = icmp ne i64 %8, %11
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.3
  %12 = load i64, i64* %i.addr, align 8
  %13 = load i64*, i64** @TOP, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %13, i64 %12
  %14 = load i64, i64* %arrayidx7, align 8
  %15 = load i64*, i64** @netsAssign, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %15, i64 %14
  %16 = load i64, i64* %arrayidx8, align 8
  %17 = load i64, i64* %i.addr, align 8
  %18 = load i64*, i64** @BOT, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %18, i64 %17
  %19 = load i64, i64* %arrayidx9, align 8
  %20 = load i64*, i64** @netsAssign, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %20, i64 %19
  %21 = load i64, i64* %arrayidx10, align 8
  %cmp11 = icmp ugt i64 %16, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.3, %land.lhs.true, %entry
  %22 = phi i1 [ false, %land.lhs.true.3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  ret i32 %land.ext
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
