; ModuleID = './plug-ins/maze/maze-algorithms.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MazeValues = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GRand = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }

@mvals = external global %struct.MazeValues, align 4
@.str = private unnamed_addr constant [105 x i8] c"maze: mazegen: Going in unknown direction.\0Ai: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"maze: mazegen_tileable: Going in unknown direction.\0Ai: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\0A\00", align 1
@gr = external global %struct._GRand*, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Constructing maze using Prim's Algorithm\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"maze: prim: Lack of neighbors.\0Aseed: %d, mw: %d, mh: %d, mult: %d, offset: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"maze: prim: Going in unknown direction.\0Ai: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Constructing tileable maze using Prim's Algorithm\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"maze: prim's tileable: Lack of neighbors.\0Aseed: %d, mw: %d, mh: %d, mult: %d, offset: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [113 x i8] c"maze: prim's tileable: Going in unknown direction.\0Ai: %d, d: %d, seed: %d, mw: %d, mh: %d, mult: %d, offset: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @mazegen(i32 %pos, i8* %maz, i32 %x, i32 %y, i32 %rnd) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %maz.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rnd.addr = alloca i32, align 4
  %d = alloca i8, align 1
  %i = alloca i8, align 1
  %c = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %maz, i8** %maz.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %rnd, i32* %rnd.addr, align 4
  store i32 0, i32* %c, align 4
  store i32 1, i32* %j, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %maz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %3, 2
  %cmp = icmp sle i32 %2, %mul
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %4 = load i32, i32* %pos.addr, align 4
  %5 = load i32, i32* %x.addr, align 4
  %sub = sub nsw i32 %4, %5
  %6 = load i32, i32* %x.addr, align 4
  %sub1 = sub nsw i32 %sub, %6
  %idxprom2 = sext i32 %sub1 to i64
  %7 = load i8*, i8** %maz.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %7, i64 %idxprom2
  %8 = load i8, i8* %arrayidx3, align 1
  %conv = zext i8 %8 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond = select i1 %tobool, i32 0, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond4 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ]
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* %x.addr, align 4
  %11 = load i32, i32* %y.addr, align 4
  %sub5 = sub nsw i32 %11, 2
  %mul6 = mul nsw i32 %10, %sub5
  %cmp7 = icmp sge i32 %9, %mul6
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.17

cond.false.10:                                    ; preds = %cond.end
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %x.addr, align 4
  %add = add nsw i32 %12, %13
  %14 = load i32, i32* %x.addr, align 4
  %add11 = add nsw i32 %add, %14
  %idxprom12 = sext i32 %add11 to i64
  %15 = load i8*, i8** %maz.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  %16 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %16 to i32
  %tobool15 = icmp ne i32 %conv14, 0
  %cond16 = select i1 %tobool15, i32 0, i32 2
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.10, %cond.true.9
  %cond18 = phi i32 [ 0, %cond.true.9 ], [ %cond16, %cond.false.10 ]
  %or = or i32 %cond4, %cond18
  %17 = load i32, i32* %pos.addr, align 4
  %18 = load i32, i32* %x.addr, align 4
  %rem = srem i32 %17, %18
  %19 = load i32, i32* %x.addr, align 4
  %sub19 = sub nsw i32 %19, 2
  %cmp20 = icmp eq i32 %rem, %sub19
  br i1 %cmp20, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.17
  br label %cond.end.30

cond.false.23:                                    ; preds = %cond.end.17
  %20 = load i32, i32* %pos.addr, align 4
  %add24 = add nsw i32 %20, 2
  %idxprom25 = sext i32 %add24 to i64
  %21 = load i8*, i8** %maz.addr, align 8
  %arrayidx26 = getelementptr inbounds i8, i8* %21, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %22 to i32
  %tobool28 = icmp ne i32 %conv27, 0
  %cond29 = select i1 %tobool28, i32 0, i32 4
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.23, %cond.true.22
  %cond31 = phi i32 [ 0, %cond.true.22 ], [ %cond29, %cond.false.23 ]
  %or32 = or i32 %or, %cond31
  %23 = load i32, i32* %pos.addr, align 4
  %24 = load i32, i32* %x.addr, align 4
  %rem33 = srem i32 %23, %24
  %cmp34 = icmp eq i32 %rem33, 1
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %cond.end.30
  br label %cond.end.44

cond.false.37:                                    ; preds = %cond.end.30
  %25 = load i32, i32* %pos.addr, align 4
  %sub38 = sub nsw i32 %25, 2
  %idxprom39 = sext i32 %sub38 to i64
  %26 = load i8*, i8** %maz.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %26, i64 %idxprom39
  %27 = load i8, i8* %arrayidx40, align 1
  %conv41 = zext i8 %27 to i32
  %tobool42 = icmp ne i32 %conv41, 0
  %cond43 = select i1 %tobool42, i32 0, i32 8
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.37, %cond.true.36
  %cond45 = phi i32 [ 0, %cond.true.36 ], [ %cond43, %cond.false.37 ]
  %or46 = or i32 %or32, %cond45
  %conv47 = trunc i32 %or46 to i8
  store i8 %conv47, i8* %d, align 1
  %tobool48 = icmp ne i8 %conv47, 0
  br i1 %tobool48, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.44
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %28 = load i32, i32* %rnd.addr, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %mul49 = mul nsw i32 %28, %29
  %30 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  %add50 = add nsw i32 %mul49, %30
  store i32 %add50, i32* %rnd.addr, align 4
  %31 = load i32, i32* %rnd.addr, align 4
  %32 = load i8, i8* %d, align 1
  %conv51 = sext i8 %32 to i32
  %div = sdiv i32 %31, %conv51
  %and = and i32 3, %div
  %conv52 = trunc i32 %and to i8
  store i8 %conv52, i8* %i, align 1
  %33 = load i32, i32* %c, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %c, align 4
  %cmp53 = icmp sgt i32 %inc, 100
  br i1 %cmp53, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i8 99, i8* %i, align 1
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %34 = load i8, i8* %d, align 1
  %conv55 = sext i8 %34 to i32
  %35 = load i8, i8* %i, align 1
  %conv56 = sext i8 %35 to i32
  %shl = shl i32 1, %conv56
  %and57 = and i32 %conv55, %shl
  %tobool58 = icmp ne i32 %and57, 0
  %lnot = xor i1 %tobool58, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %36 = load i8, i8* %i, align 1
  %conv59 = sext i8 %36 to i32
  switch i32 %conv59, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.61
    i32 2, label %sw.bb.62
    i32 3, label %sw.bb.63
    i32 99, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %do.end
  %37 = load i32, i32* %x.addr, align 4
  %sub60 = sub nsw i32 0, %37
  store i32 %sub60, i32* %j, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %do.end
  %38 = load i32, i32* %x.addr, align 4
  store i32 %38, i32* %j, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %do.end
  store i32 1, i32* %j, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %do.end
  store i32 -1, i32* %j, align 4
  br label %sw.epilog

sw.bb.64:                                         ; preds = %do.end
  br label %return

sw.default:                                       ; preds = %do.end
  %39 = load i8, i8* %i, align 1
  %conv65 = sext i8 %39 to i32
  %40 = load i8, i8* %d, align 1
  %conv66 = sext i8 %40 to i32
  %41 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  %42 = load i32, i32* %x.addr, align 4
  %43 = load i32, i32* %y.addr, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i32 0, i32 0), i32 %conv65, i32 %conv66, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.63, %sw.bb.62, %sw.bb.61, %sw.bb
  %46 = load i32, i32* %pos.addr, align 4
  %47 = load i32, i32* %j, align 4
  %add67 = add nsw i32 %46, %47
  %idxprom68 = sext i32 %add67 to i64
  %48 = load i8*, i8** %maz.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %48, i64 %idxprom68
  store i8 1, i8* %arrayidx69, align 1
  %49 = load i32, i32* %pos.addr, align 4
  %50 = load i32, i32* %j, align 4
  %mul70 = mul nsw i32 2, %50
  %add71 = add nsw i32 %49, %mul70
  %51 = load i8*, i8** %maz.addr, align 8
  %52 = load i32, i32* %x.addr, align 4
  %53 = load i32, i32* %y.addr, align 4
  %54 = load i32, i32* %rnd.addr, align 4
  call void @mazegen(i32 %add71, i8* %51, i32 %52, i32 %53, i32 %54)
  br label %while.cond

while.end:                                        ; preds = %cond.end.44
  br label %return

return:                                           ; preds = %while.end, %sw.bb.64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define void @mazegen_tileable(i32 %pos, i8* %maz, i32 %x, i32 %y, i32 %rnd) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %maz.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %rnd.addr = alloca i32, align 4
  %d = alloca i8, align 1
  %i = alloca i8, align 1
  %c = alloca i32, align 4
  %npos = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %maz, i8** %maz.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %rnd, i32* %rnd.addr, align 4
  store i32 0, i32* %c, align 4
  store i32 2, i32* %npos, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %maz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i32, i32* %pos.addr, align 4
  %3 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %3, 2
  %cmp = icmp slt i32 %2, %mul
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.cond
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %sub = sub nsw i32 %5, 2
  %mul1 = mul nsw i32 %4, %sub
  %6 = load i32, i32* %pos.addr, align 4
  %add = add nsw i32 %mul1, %6
  br label %cond.end

cond.false:                                       ; preds = %while.cond
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %sub2 = sub nsw i32 %7, %8
  %9 = load i32, i32* %x.addr, align 4
  %sub3 = sub nsw i32 %sub2, %9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %sub3, %cond.false ]
  %idxprom4 = sext i32 %cond to i64
  %10 = load i8*, i8** %maz.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  %11 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %11 to i32
  %tobool = icmp ne i32 %conv, 0
  %cond6 = select i1 %tobool, i32 0, i32 1
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %sub7 = sub nsw i32 %14, 2
  %mul8 = mul nsw i32 %13, %sub7
  %cmp9 = icmp sge i32 %12, %mul8
  br i1 %cmp9, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.end
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %x.addr, align 4
  %17 = load i32, i32* %y.addr, align 4
  %sub12 = sub nsw i32 %17, 2
  %mul13 = mul nsw i32 %16, %sub12
  %sub14 = sub nsw i32 %15, %mul13
  br label %cond.end.18

cond.false.15:                                    ; preds = %cond.end
  %18 = load i32, i32* %pos.addr, align 4
  %19 = load i32, i32* %x.addr, align 4
  %add16 = add nsw i32 %18, %19
  %20 = load i32, i32* %x.addr, align 4
  %add17 = add nsw i32 %add16, %20
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.15, %cond.true.11
  %cond19 = phi i32 [ %sub14, %cond.true.11 ], [ %add17, %cond.false.15 ]
  %idxprom20 = sext i32 %cond19 to i64
  %21 = load i8*, i8** %maz.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %21, i64 %idxprom20
  %22 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %22 to i32
  %tobool23 = icmp ne i32 %conv22, 0
  %cond24 = select i1 %tobool23, i32 0, i32 2
  %or = or i32 %cond6, %cond24
  %23 = load i32, i32* %pos.addr, align 4
  %24 = load i32, i32* %x.addr, align 4
  %rem = srem i32 %23, %24
  %25 = load i32, i32* %x.addr, align 4
  %sub25 = sub nsw i32 %25, 2
  %cmp26 = icmp sge i32 %rem, %sub25
  br i1 %cmp26, label %cond.true.28, label %cond.false.31

cond.true.28:                                     ; preds = %cond.end.18
  %26 = load i32, i32* %pos.addr, align 4
  %add29 = add nsw i32 %26, 2
  %27 = load i32, i32* %x.addr, align 4
  %sub30 = sub nsw i32 %add29, %27
  br label %cond.end.33

cond.false.31:                                    ; preds = %cond.end.18
  %28 = load i32, i32* %pos.addr, align 4
  %add32 = add nsw i32 %28, 2
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.28
  %cond34 = phi i32 [ %sub30, %cond.true.28 ], [ %add32, %cond.false.31 ]
  %idxprom35 = sext i32 %cond34 to i64
  %29 = load i8*, i8** %maz.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %29, i64 %idxprom35
  %30 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %30 to i32
  %tobool38 = icmp ne i32 %conv37, 0
  %cond39 = select i1 %tobool38, i32 0, i32 4
  %or40 = or i32 %or, %cond39
  %31 = load i32, i32* %pos.addr, align 4
  %32 = load i32, i32* %x.addr, align 4
  %rem41 = srem i32 %31, %32
  %cmp42 = icmp sle i32 %rem41, 1
  br i1 %cmp42, label %cond.true.44, label %cond.false.47

cond.true.44:                                     ; preds = %cond.end.33
  %33 = load i32, i32* %pos.addr, align 4
  %34 = load i32, i32* %x.addr, align 4
  %add45 = add nsw i32 %33, %34
  %sub46 = sub nsw i32 %add45, 2
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.end.33
  %35 = load i32, i32* %pos.addr, align 4
  %sub48 = sub nsw i32 %35, 2
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.44
  %cond50 = phi i32 [ %sub46, %cond.true.44 ], [ %sub48, %cond.false.47 ]
  %idxprom51 = sext i32 %cond50 to i64
  %36 = load i8*, i8** %maz.addr, align 8
  %arrayidx52 = getelementptr inbounds i8, i8* %36, i64 %idxprom51
  %37 = load i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %37 to i32
  %tobool54 = icmp ne i32 %conv53, 0
  %cond55 = select i1 %tobool54, i32 0, i32 8
  %or56 = or i32 %or40, %cond55
  %conv57 = trunc i32 %or56 to i8
  store i8 %conv57, i8* %d, align 1
  %tobool58 = icmp ne i8 %conv57, 0
  br i1 %tobool58, label %while.body, label %while.end

while.body:                                       ; preds = %cond.end.49
  br label %do.body

do.body:                                          ; preds = %do.cond, %while.body
  %38 = load i32, i32* %rnd.addr, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %mul59 = mul nsw i32 %38, %39
  %40 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  %add60 = add nsw i32 %mul59, %40
  store i32 %add60, i32* %rnd.addr, align 4
  %41 = load i32, i32* %rnd.addr, align 4
  %42 = load i8, i8* %d, align 1
  %conv61 = sext i8 %42 to i32
  %div = sdiv i32 %41, %conv61
  %and = and i32 3, %div
  %conv62 = trunc i32 %and to i8
  store i8 %conv62, i8* %i, align 1
  %43 = load i32, i32* %c, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %c, align 4
  %cmp63 = icmp sgt i32 %inc, 100
  br i1 %cmp63, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i8 99, i8* %i, align 1
  br label %do.end

if.end:                                           ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %44 = load i8, i8* %d, align 1
  %conv65 = sext i8 %44 to i32
  %45 = load i8, i8* %i, align 1
  %conv66 = sext i8 %45 to i32
  %shl = shl i32 1, %conv66
  %and67 = and i32 %conv65, %shl
  %tobool68 = icmp ne i32 %and67, 0
  %lnot = xor i1 %tobool68, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then
  %46 = load i8, i8* %i, align 1
  %conv69 = sext i8 %46 to i32
  switch i32 %conv69, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.94
    i32 2, label %sw.bb.111
    i32 3, label %sw.bb.126
    i32 99, label %sw.bb.149
  ]

sw.bb:                                            ; preds = %do.end
  %47 = load i32, i32* %pos.addr, align 4
  %48 = load i32, i32* %x.addr, align 4
  %cmp70 = icmp slt i32 %47, %48
  br i1 %cmp70, label %cond.true.72, label %cond.false.76

cond.true.72:                                     ; preds = %sw.bb
  %49 = load i32, i32* %x.addr, align 4
  %50 = load i32, i32* %y.addr, align 4
  %sub73 = sub nsw i32 %50, 1
  %mul74 = mul nsw i32 %49, %sub73
  %51 = load i32, i32* %pos.addr, align 4
  %add75 = add nsw i32 %mul74, %51
  br label %cond.end.78

cond.false.76:                                    ; preds = %sw.bb
  %52 = load i32, i32* %pos.addr, align 4
  %53 = load i32, i32* %x.addr, align 4
  %sub77 = sub nsw i32 %52, %53
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.76, %cond.true.72
  %cond79 = phi i32 [ %add75, %cond.true.72 ], [ %sub77, %cond.false.76 ]
  %idxprom80 = sext i32 %cond79 to i64
  %54 = load i8*, i8** %maz.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %54, i64 %idxprom80
  store i8 1, i8* %arrayidx81, align 1
  %55 = load i32, i32* %pos.addr, align 4
  %56 = load i32, i32* %x.addr, align 4
  %mul82 = mul nsw i32 %56, 2
  %cmp83 = icmp slt i32 %55, %mul82
  br i1 %cmp83, label %cond.true.85, label %cond.false.89

cond.true.85:                                     ; preds = %cond.end.78
  %57 = load i32, i32* %x.addr, align 4
  %58 = load i32, i32* %y.addr, align 4
  %sub86 = sub nsw i32 %58, 2
  %mul87 = mul nsw i32 %57, %sub86
  %59 = load i32, i32* %pos.addr, align 4
  %add88 = add nsw i32 %mul87, %59
  br label %cond.end.92

cond.false.89:                                    ; preds = %cond.end.78
  %60 = load i32, i32* %pos.addr, align 4
  %61 = load i32, i32* %x.addr, align 4
  %sub90 = sub nsw i32 %60, %61
  %62 = load i32, i32* %x.addr, align 4
  %sub91 = sub nsw i32 %sub90, %62
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.false.89, %cond.true.85
  %cond93 = phi i32 [ %add88, %cond.true.85 ], [ %sub91, %cond.false.89 ]
  store i32 %cond93, i32* %npos, align 4
  br label %sw.epilog

sw.bb.94:                                         ; preds = %do.end
  %63 = load i32, i32* %pos.addr, align 4
  %64 = load i32, i32* %x.addr, align 4
  %add95 = add nsw i32 %63, %64
  %idxprom96 = sext i32 %add95 to i64
  %65 = load i8*, i8** %maz.addr, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %65, i64 %idxprom96
  store i8 1, i8* %arrayidx97, align 1
  %66 = load i32, i32* %pos.addr, align 4
  %67 = load i32, i32* %x.addr, align 4
  %68 = load i32, i32* %y.addr, align 4
  %sub98 = sub nsw i32 %68, 2
  %mul99 = mul nsw i32 %67, %sub98
  %cmp100 = icmp sge i32 %66, %mul99
  br i1 %cmp100, label %cond.true.102, label %cond.false.106

cond.true.102:                                    ; preds = %sw.bb.94
  %69 = load i32, i32* %pos.addr, align 4
  %70 = load i32, i32* %x.addr, align 4
  %71 = load i32, i32* %y.addr, align 4
  %sub103 = sub nsw i32 %71, 2
  %mul104 = mul nsw i32 %70, %sub103
  %sub105 = sub nsw i32 %69, %mul104
  br label %cond.end.109

cond.false.106:                                   ; preds = %sw.bb.94
  %72 = load i32, i32* %pos.addr, align 4
  %73 = load i32, i32* %x.addr, align 4
  %add107 = add nsw i32 %72, %73
  %74 = load i32, i32* %x.addr, align 4
  %add108 = add nsw i32 %add107, %74
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.106, %cond.true.102
  %cond110 = phi i32 [ %sub105, %cond.true.102 ], [ %add108, %cond.false.106 ]
  store i32 %cond110, i32* %npos, align 4
  br label %sw.epilog

sw.bb.111:                                        ; preds = %do.end
  %75 = load i32, i32* %pos.addr, align 4
  %add112 = add nsw i32 %75, 1
  %idxprom113 = sext i32 %add112 to i64
  %76 = load i8*, i8** %maz.addr, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %76, i64 %idxprom113
  store i8 1, i8* %arrayidx114, align 1
  %77 = load i32, i32* %pos.addr, align 4
  %78 = load i32, i32* %x.addr, align 4
  %rem115 = srem i32 %77, %78
  %79 = load i32, i32* %x.addr, align 4
  %sub116 = sub nsw i32 %79, 2
  %cmp117 = icmp sge i32 %rem115, %sub116
  br i1 %cmp117, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %sw.bb.111
  %80 = load i32, i32* %pos.addr, align 4
  %add120 = add nsw i32 %80, 2
  %81 = load i32, i32* %x.addr, align 4
  %sub121 = sub nsw i32 %add120, %81
  br label %cond.end.124

cond.false.122:                                   ; preds = %sw.bb.111
  %82 = load i32, i32* %pos.addr, align 4
  %add123 = add nsw i32 %82, 2
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.119
  %cond125 = phi i32 [ %sub121, %cond.true.119 ], [ %add123, %cond.false.122 ]
  store i32 %cond125, i32* %npos, align 4
  br label %sw.epilog

sw.bb.126:                                        ; preds = %do.end
  %83 = load i32, i32* %pos.addr, align 4
  %84 = load i32, i32* %x.addr, align 4
  %rem127 = srem i32 %83, %84
  %cmp128 = icmp eq i32 %rem127, 0
  br i1 %cmp128, label %cond.true.130, label %cond.false.133

cond.true.130:                                    ; preds = %sw.bb.126
  %85 = load i32, i32* %pos.addr, align 4
  %86 = load i32, i32* %x.addr, align 4
  %add131 = add nsw i32 %85, %86
  %sub132 = sub nsw i32 %add131, 1
  br label %cond.end.135

cond.false.133:                                   ; preds = %sw.bb.126
  %87 = load i32, i32* %pos.addr, align 4
  %sub134 = sub nsw i32 %87, 1
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.133, %cond.true.130
  %cond136 = phi i32 [ %sub132, %cond.true.130 ], [ %sub134, %cond.false.133 ]
  %idxprom137 = sext i32 %cond136 to i64
  %88 = load i8*, i8** %maz.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %88, i64 %idxprom137
  store i8 1, i8* %arrayidx138, align 1
  %89 = load i32, i32* %pos.addr, align 4
  %90 = load i32, i32* %x.addr, align 4
  %rem139 = srem i32 %89, %90
  %cmp140 = icmp sle i32 %rem139, 1
  br i1 %cmp140, label %cond.true.142, label %cond.false.145

cond.true.142:                                    ; preds = %cond.end.135
  %91 = load i32, i32* %pos.addr, align 4
  %92 = load i32, i32* %x.addr, align 4
  %add143 = add nsw i32 %91, %92
  %sub144 = sub nsw i32 %add143, 2
  br label %cond.end.147

cond.false.145:                                   ; preds = %cond.end.135
  %93 = load i32, i32* %pos.addr, align 4
  %sub146 = sub nsw i32 %93, 2
  br label %cond.end.147

cond.end.147:                                     ; preds = %cond.false.145, %cond.true.142
  %cond148 = phi i32 [ %sub144, %cond.true.142 ], [ %sub146, %cond.false.145 ]
  store i32 %cond148, i32* %npos, align 4
  br label %sw.epilog

sw.bb.149:                                        ; preds = %do.end
  br label %return

sw.default:                                       ; preds = %do.end
  %94 = load i8, i8* %i, align 1
  %conv150 = sext i8 %94 to i32
  %95 = load i8, i8* %d, align 1
  %conv151 = sext i8 %95 to i32
  %96 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  %97 = load i32, i32* %x.addr, align 4
  %98 = load i32, i32* %y.addr, align 4
  %99 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i32 0, i32 0), i32 %conv150, i32 %conv151, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cond.end.147, %cond.end.124, %cond.end.109, %cond.end.92
  %101 = load i32, i32* %npos, align 4
  %102 = load i8*, i8** %maz.addr, align 8
  %103 = load i32, i32* %x.addr, align 4
  %104 = load i32, i32* %y.addr, align 4
  %105 = load i32, i32* %rnd.addr, align 4
  call void @mazegen_tileable(i32 %101, i8* %102, i32 %103, i32 %104, i32 %105)
  br label %while.cond

while.end:                                        ; preds = %cond.end.49
  br label %return

return:                                           ; preds = %while.end, %sw.bb.149
  ret void
}

; Function Attrs: nounwind uwtable
define void @prim(i32 %pos, i8* %maz, i32 %x, i32 %y) #0 {
entry:
  %pos.addr = alloca i32, align 4
  %maz.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %front_cells = alloca %struct._GSList*, align 8
  %current = alloca i32, align 4
  %up = alloca i32, align 4
  %down = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %d = alloca i8, align 1
  %i = alloca i8, align 1
  %c = alloca i32, align 4
  %rnd = alloca i32, align 4
  store i32 %pos, i32* %pos.addr, align 4
  store i8* %maz, i8** %maz.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GSList* null, %struct._GSList** %front_cells, align 8
  store i32 0, i32* %progress, align 4
  store i32 0, i32* %c, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  store i32 %0, i32* %rnd, align 4
  %1 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %2 = load i32, i32* %rnd, align 4
  call void @g_rand_set_seed(%struct._GRand* %1, i32 %2)
  %call = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0)) #3
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %mul = mul i32 %3, %4
  %div = udiv i32 %mul, 4
  store i32 %div, i32* %max_progress, align 4
  %5 = load i32, i32* %pos.addr, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %maz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  %7 = load i32, i32* %pos.addr, align 4
  %8 = load i32, i32* %x.addr, align 4
  %mul2 = mul i32 %8, 2
  %cmp = icmp ult i32 %7, %mul2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %pos.addr, align 4
  %10 = load i32, i32* %x.addr, align 4
  %sub = sub i32 %9, %10
  %11 = load i32, i32* %x.addr, align 4
  %sub3 = sub i32 %sub, %11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %sub3, %cond.false ]
  store i32 %cond, i32* %up, align 4
  %12 = load i32, i32* %pos.addr, align 4
  %13 = load i32, i32* %x.addr, align 4
  %14 = load i32, i32* %y.addr, align 4
  %sub4 = sub i32 %14, 2
  %mul5 = mul i32 %13, %sub4
  %cmp6 = icmp uge i32 %12, %mul5
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end
  br label %cond.end.10

cond.false.8:                                     ; preds = %cond.end
  %15 = load i32, i32* %pos.addr, align 4
  %16 = load i32, i32* %x.addr, align 4
  %add = add i32 %15, %16
  %17 = load i32, i32* %x.addr, align 4
  %add9 = add i32 %add, %17
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.8, %cond.true.7
  %cond11 = phi i32 [ -1, %cond.true.7 ], [ %add9, %cond.false.8 ]
  store i32 %cond11, i32* %down, align 4
  %18 = load i32, i32* %pos.addr, align 4
  %19 = load i32, i32* %x.addr, align 4
  %rem = urem i32 %18, %19
  %cmp12 = icmp ule i32 %rem, 1
  br i1 %cmp12, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.10
  br label %cond.end.16

cond.false.14:                                    ; preds = %cond.end.10
  %20 = load i32, i32* %pos.addr, align 4
  %sub15 = sub nsw i32 %20, 2
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.13
  %cond17 = phi i32 [ -1, %cond.true.13 ], [ %sub15, %cond.false.14 ]
  store i32 %cond17, i32* %left, align 4
  %21 = load i32, i32* %pos.addr, align 4
  %22 = load i32, i32* %x.addr, align 4
  %rem18 = urem i32 %21, %22
  %23 = load i32, i32* %x.addr, align 4
  %sub19 = sub i32 %23, 2
  %cmp20 = icmp uge i32 %rem18, %sub19
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.16
  br label %cond.end.24

cond.false.22:                                    ; preds = %cond.end.16
  %24 = load i32, i32* %pos.addr, align 4
  %add23 = add nsw i32 %24, 2
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.true.21
  %cond25 = phi i32 [ -1, %cond.true.21 ], [ %add23, %cond.false.22 ]
  store i32 %cond25, i32* %right, align 4
  %25 = load i32, i32* %up, align 4
  %cmp26 = icmp sge i32 %25, 0
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.24
  %26 = load i32, i32* %up, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i8*, i8** %maz.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %27, i64 %idxprom27
  store i8 2, i8* %arrayidx28, align 1
  %28 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %29 = load i32, i32* %up, align 4
  %conv = sext i32 %29 to i64
  %30 = inttoptr i64 %conv to i8*
  %call29 = call %struct._GSList* @g_slist_append(%struct._GSList* %28, i8* %30)
  store %struct._GSList* %call29, %struct._GSList** %front_cells, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.24
  %31 = load i32, i32* %down, align 4
  %cmp30 = icmp sge i32 %31, 0
  br i1 %cmp30, label %if.then.32, label %if.end.37

if.then.32:                                       ; preds = %if.end
  %32 = load i32, i32* %down, align 4
  %idxprom33 = sext i32 %32 to i64
  %33 = load i8*, i8** %maz.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %33, i64 %idxprom33
  store i8 2, i8* %arrayidx34, align 1
  %34 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %35 = load i32, i32* %down, align 4
  %conv35 = sext i32 %35 to i64
  %36 = inttoptr i64 %conv35 to i8*
  %call36 = call %struct._GSList* @g_slist_append(%struct._GSList* %34, i8* %36)
  store %struct._GSList* %call36, %struct._GSList** %front_cells, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.end
  %37 = load i32, i32* %left, align 4
  %cmp38 = icmp sge i32 %37, 0
  br i1 %cmp38, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.37
  %38 = load i32, i32* %left, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load i8*, i8** %maz.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %39, i64 %idxprom41
  store i8 2, i8* %arrayidx42, align 1
  %40 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %41 = load i32, i32* %left, align 4
  %conv43 = sext i32 %41 to i64
  %42 = inttoptr i64 %conv43 to i8*
  %call44 = call %struct._GSList* @g_slist_append(%struct._GSList* %40, i8* %42)
  store %struct._GSList* %call44, %struct._GSList** %front_cells, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %if.end.37
  %43 = load i32, i32* %right, align 4
  %cmp46 = icmp sge i32 %43, 0
  br i1 %cmp46, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %if.end.45
  %44 = load i32, i32* %right, align 4
  %idxprom49 = sext i32 %44 to i64
  %45 = load i8*, i8** %maz.addr, align 8
  %arrayidx50 = getelementptr inbounds i8, i8* %45, i64 %idxprom49
  store i8 2, i8* %arrayidx50, align 1
  %46 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %47 = load i32, i32* %right, align 4
  %conv51 = sext i32 %47 to i64
  %48 = inttoptr i64 %conv51 to i8*
  %call52 = call %struct._GSList* @g_slist_append(%struct._GSList* %46, i8* %48)
  store %struct._GSList* %call52, %struct._GSList** %front_cells, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %if.end.45
  br label %while.cond

while.cond:                                       ; preds = %if.end.211, %if.end.53
  %49 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %call54 = call i32 @g_slist_length(%struct._GSList* %49)
  %cmp55 = icmp ugt i32 %call54, 0
  br i1 %cmp55, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %50 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %51 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %call57 = call i32 @g_slist_length(%struct._GSList* %51)
  %call58 = call i32 @g_rand_int_range(%struct._GRand* %50, i32 0, i32 %call57)
  store i32 %call58, i32* %current, align 4
  %52 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %53 = load i32, i32* %current, align 4
  %call59 = call %struct._GSList* @g_slist_nth(%struct._GSList* %52, i32 %53)
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %call59, i32 0, i32 0
  %54 = load i8*, i8** %data, align 8
  %55 = ptrtoint i8* %54 to i64
  %conv60 = trunc i64 %55 to i32
  store i32 %conv60, i32* %pos.addr, align 4
  %56 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %57 = load i32, i32* %pos.addr, align 4
  %conv61 = sext i32 %57 to i64
  %58 = inttoptr i64 %conv61 to i8*
  %call62 = call %struct._GSList* @g_slist_remove(%struct._GSList* %56, i8* %58)
  store %struct._GSList* %call62, %struct._GSList** %front_cells, align 8
  %59 = load i32, i32* %pos.addr, align 4
  %idxprom63 = sext i32 %59 to i64
  %60 = load i8*, i8** %maz.addr, align 8
  %arrayidx64 = getelementptr inbounds i8, i8* %60, i64 %idxprom63
  store i8 1, i8* %arrayidx64, align 1
  %61 = load i32, i32* %pos.addr, align 4
  %62 = load i32, i32* %x.addr, align 4
  %mul65 = mul i32 %62, 2
  %cmp66 = icmp ult i32 %61, %mul65
  br i1 %cmp66, label %cond.true.68, label %cond.false.69

cond.true.68:                                     ; preds = %while.body
  br label %cond.end.72

cond.false.69:                                    ; preds = %while.body
  %63 = load i32, i32* %pos.addr, align 4
  %64 = load i32, i32* %x.addr, align 4
  %sub70 = sub i32 %63, %64
  %65 = load i32, i32* %x.addr, align 4
  %sub71 = sub i32 %sub70, %65
  br label %cond.end.72

cond.end.72:                                      ; preds = %cond.false.69, %cond.true.68
  %cond73 = phi i32 [ -1, %cond.true.68 ], [ %sub71, %cond.false.69 ]
  store i32 %cond73, i32* %up, align 4
  %66 = load i32, i32* %pos.addr, align 4
  %67 = load i32, i32* %x.addr, align 4
  %68 = load i32, i32* %y.addr, align 4
  %sub74 = sub i32 %68, 2
  %mul75 = mul i32 %67, %sub74
  %cmp76 = icmp uge i32 %66, %mul75
  br i1 %cmp76, label %cond.true.78, label %cond.false.79

cond.true.78:                                     ; preds = %cond.end.72
  br label %cond.end.82

cond.false.79:                                    ; preds = %cond.end.72
  %69 = load i32, i32* %pos.addr, align 4
  %70 = load i32, i32* %x.addr, align 4
  %add80 = add i32 %69, %70
  %71 = load i32, i32* %x.addr, align 4
  %add81 = add i32 %add80, %71
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.79, %cond.true.78
  %cond83 = phi i32 [ -1, %cond.true.78 ], [ %add81, %cond.false.79 ]
  store i32 %cond83, i32* %down, align 4
  %72 = load i32, i32* %pos.addr, align 4
  %73 = load i32, i32* %x.addr, align 4
  %rem84 = urem i32 %72, %73
  %cmp85 = icmp ule i32 %rem84, 1
  br i1 %cmp85, label %cond.true.87, label %cond.false.88

cond.true.87:                                     ; preds = %cond.end.82
  br label %cond.end.90

cond.false.88:                                    ; preds = %cond.end.82
  %74 = load i32, i32* %pos.addr, align 4
  %sub89 = sub nsw i32 %74, 2
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.88, %cond.true.87
  %cond91 = phi i32 [ -1, %cond.true.87 ], [ %sub89, %cond.false.88 ]
  store i32 %cond91, i32* %left, align 4
  %75 = load i32, i32* %pos.addr, align 4
  %76 = load i32, i32* %x.addr, align 4
  %rem92 = urem i32 %75, %76
  %77 = load i32, i32* %x.addr, align 4
  %sub93 = sub i32 %77, 2
  %cmp94 = icmp uge i32 %rem92, %sub93
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %cond.end.90
  br label %cond.end.99

cond.false.97:                                    ; preds = %cond.end.90
  %78 = load i32, i32* %pos.addr, align 4
  %add98 = add nsw i32 %78, 2
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.true.96
  %cond100 = phi i32 [ -1, %cond.true.96 ], [ %add98, %cond.false.97 ]
  store i32 %cond100, i32* %right, align 4
  store i8 0, i8* %d, align 1
  %79 = load i32, i32* %up, align 4
  %cmp101 = icmp sge i32 %79, 0
  br i1 %cmp101, label %if.then.103, label %if.end.112

if.then.103:                                      ; preds = %cond.end.99
  %80 = load i32, i32* %up, align 4
  %idxprom104 = sext i32 %80 to i64
  %81 = load i8*, i8** %maz.addr, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %81, i64 %idxprom104
  %82 = load i8, i8* %arrayidx105, align 1
  %conv106 = zext i8 %82 to i32
  switch i32 %conv106, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.111
  ]

sw.bb:                                            ; preds = %if.then.103
  %83 = load i32, i32* %up, align 4
  %idxprom107 = sext i32 %83 to i64
  %84 = load i8*, i8** %maz.addr, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %84, i64 %idxprom107
  store i8 2, i8* %arrayidx108, align 1
  %85 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %86 = load i32, i32* %up, align 4
  %conv109 = sext i32 %86 to i64
  %87 = inttoptr i64 %conv109 to i8*
  %call110 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %85, i8* %87)
  store %struct._GSList* %call110, %struct._GSList** %front_cells, align 8
  br label %sw.epilog

sw.bb.111:                                        ; preds = %if.then.103
  store i8 1, i8* %d, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.103
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.111, %sw.bb
  br label %if.end.112

if.end.112:                                       ; preds = %sw.epilog, %cond.end.99
  %88 = load i32, i32* %down, align 4
  %cmp113 = icmp sge i32 %88, 0
  br i1 %cmp113, label %if.then.115, label %if.end.129

if.then.115:                                      ; preds = %if.end.112
  %89 = load i32, i32* %down, align 4
  %idxprom116 = sext i32 %89 to i64
  %90 = load i8*, i8** %maz.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %90, i64 %idxprom116
  %91 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %91 to i32
  switch i32 %conv118, label %sw.default.127 [
    i32 0, label %sw.bb.119
    i32 1, label %sw.bb.124
  ]

sw.bb.119:                                        ; preds = %if.then.115
  %92 = load i32, i32* %down, align 4
  %idxprom120 = sext i32 %92 to i64
  %93 = load i8*, i8** %maz.addr, align 8
  %arrayidx121 = getelementptr inbounds i8, i8* %93, i64 %idxprom120
  store i8 2, i8* %arrayidx121, align 1
  %94 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %95 = load i32, i32* %down, align 4
  %conv122 = sext i32 %95 to i64
  %96 = inttoptr i64 %conv122 to i8*
  %call123 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %94, i8* %96)
  store %struct._GSList* %call123, %struct._GSList** %front_cells, align 8
  br label %sw.epilog.128

sw.bb.124:                                        ; preds = %if.then.115
  %97 = load i8, i8* %d, align 1
  %conv125 = sext i8 %97 to i32
  %or = or i32 %conv125, 2
  %conv126 = trunc i32 %or to i8
  store i8 %conv126, i8* %d, align 1
  br label %sw.epilog.128

sw.default.127:                                   ; preds = %if.then.115
  br label %sw.epilog.128

sw.epilog.128:                                    ; preds = %sw.default.127, %sw.bb.124, %sw.bb.119
  br label %if.end.129

if.end.129:                                       ; preds = %sw.epilog.128, %if.end.112
  %98 = load i32, i32* %left, align 4
  %cmp130 = icmp sge i32 %98, 0
  br i1 %cmp130, label %if.then.132, label %if.end.147

if.then.132:                                      ; preds = %if.end.129
  %99 = load i32, i32* %left, align 4
  %idxprom133 = sext i32 %99 to i64
  %100 = load i8*, i8** %maz.addr, align 8
  %arrayidx134 = getelementptr inbounds i8, i8* %100, i64 %idxprom133
  %101 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %101 to i32
  switch i32 %conv135, label %sw.default.145 [
    i32 0, label %sw.bb.136
    i32 1, label %sw.bb.141
  ]

sw.bb.136:                                        ; preds = %if.then.132
  %102 = load i32, i32* %left, align 4
  %idxprom137 = sext i32 %102 to i64
  %103 = load i8*, i8** %maz.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %103, i64 %idxprom137
  store i8 2, i8* %arrayidx138, align 1
  %104 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %105 = load i32, i32* %left, align 4
  %conv139 = sext i32 %105 to i64
  %106 = inttoptr i64 %conv139 to i8*
  %call140 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %104, i8* %106)
  store %struct._GSList* %call140, %struct._GSList** %front_cells, align 8
  br label %sw.epilog.146

sw.bb.141:                                        ; preds = %if.then.132
  %107 = load i8, i8* %d, align 1
  %conv142 = sext i8 %107 to i32
  %or143 = or i32 %conv142, 4
  %conv144 = trunc i32 %or143 to i8
  store i8 %conv144, i8* %d, align 1
  br label %sw.epilog.146

sw.default.145:                                   ; preds = %if.then.132
  br label %sw.epilog.146

sw.epilog.146:                                    ; preds = %sw.default.145, %sw.bb.141, %sw.bb.136
  br label %if.end.147

if.end.147:                                       ; preds = %sw.epilog.146, %if.end.129
  %108 = load i32, i32* %right, align 4
  %cmp148 = icmp sge i32 %108, 0
  br i1 %cmp148, label %if.then.150, label %if.end.165

if.then.150:                                      ; preds = %if.end.147
  %109 = load i32, i32* %right, align 4
  %idxprom151 = sext i32 %109 to i64
  %110 = load i8*, i8** %maz.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %110, i64 %idxprom151
  %111 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %111 to i32
  switch i32 %conv153, label %sw.default.163 [
    i32 0, label %sw.bb.154
    i32 1, label %sw.bb.159
  ]

sw.bb.154:                                        ; preds = %if.then.150
  %112 = load i32, i32* %right, align 4
  %idxprom155 = sext i32 %112 to i64
  %113 = load i8*, i8** %maz.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %113, i64 %idxprom155
  store i8 2, i8* %arrayidx156, align 1
  %114 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %115 = load i32, i32* %right, align 4
  %conv157 = sext i32 %115 to i64
  %116 = inttoptr i64 %conv157 to i8*
  %call158 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %114, i8* %116)
  store %struct._GSList* %call158, %struct._GSList** %front_cells, align 8
  br label %sw.epilog.164

sw.bb.159:                                        ; preds = %if.then.150
  %117 = load i8, i8* %d, align 1
  %conv160 = sext i8 %117 to i32
  %or161 = or i32 %conv160, 8
  %conv162 = trunc i32 %or161 to i8
  store i8 %conv162, i8* %d, align 1
  br label %sw.epilog.164

sw.default.163:                                   ; preds = %if.then.150
  br label %sw.epilog.164

sw.epilog.164:                                    ; preds = %sw.default.163, %sw.bb.159, %sw.bb.154
  br label %if.end.165

if.end.165:                                       ; preds = %sw.epilog.164, %if.end.147
  %118 = load i8, i8* %d, align 1
  %tobool = icmp ne i8 %118, 0
  br i1 %tobool, label %if.end.167, label %if.then.166

if.then.166:                                      ; preds = %if.end.165
  %119 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  %120 = load i32, i32* %x.addr, align 4
  %121 = load i32, i32* %y.addr, align 4
  %122 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %123 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i32 0, i32 0), i32 %119, i32 %120, i32 %121, i32 %122, i32 %123)
  br label %while.end

if.end.167:                                       ; preds = %if.end.165
  store i32 0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.167
  %124 = load i32, i32* %rnd, align 4
  %125 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %mul168 = mul nsw i32 %124, %125
  %126 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  %add169 = add nsw i32 %mul168, %126
  store i32 %add169, i32* %rnd, align 4
  %127 = load i32, i32* %rnd, align 4
  %128 = load i8, i8* %d, align 1
  %conv170 = sext i8 %128 to i32
  %div171 = sdiv i32 %127, %conv170
  %and = and i32 3, %div171
  %conv172 = trunc i32 %and to i8
  store i8 %conv172, i8* %i, align 1
  %129 = load i32, i32* %c, align 4
  %inc = add i32 %129, 1
  store i32 %inc, i32* %c, align 4
  %cmp173 = icmp ugt i32 %inc, 100
  br i1 %cmp173, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %do.body
  store i8 99, i8* %i, align 1
  br label %do.end

if.end.176:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.176
  %130 = load i8, i8* %d, align 1
  %conv177 = sext i8 %130 to i32
  %131 = load i8, i8* %i, align 1
  %conv178 = sext i8 %131 to i32
  %shl = shl i32 1, %conv178
  %and179 = and i32 %conv177, %shl
  %tobool180 = icmp ne i32 %and179, 0
  %lnot = xor i1 %tobool180, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.175
  %132 = load i8, i8* %i, align 1
  %conv181 = sext i8 %132 to i32
  switch i32 %conv181, label %sw.default.199 [
    i32 0, label %sw.bb.182
    i32 1, label %sw.bb.186
    i32 2, label %sw.bb.190
    i32 3, label %sw.bb.194
    i32 99, label %sw.bb.198
  ]

sw.bb.182:                                        ; preds = %do.end
  %133 = load i32, i32* %pos.addr, align 4
  %134 = load i32, i32* %x.addr, align 4
  %sub183 = sub i32 %133, %134
  %idxprom184 = zext i32 %sub183 to i64
  %135 = load i8*, i8** %maz.addr, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %135, i64 %idxprom184
  store i8 1, i8* %arrayidx185, align 1
  br label %sw.epilog.202

sw.bb.186:                                        ; preds = %do.end
  %136 = load i32, i32* %pos.addr, align 4
  %137 = load i32, i32* %x.addr, align 4
  %add187 = add i32 %136, %137
  %idxprom188 = zext i32 %add187 to i64
  %138 = load i8*, i8** %maz.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %138, i64 %idxprom188
  store i8 1, i8* %arrayidx189, align 1
  br label %sw.epilog.202

sw.bb.190:                                        ; preds = %do.end
  %139 = load i32, i32* %pos.addr, align 4
  %sub191 = sub nsw i32 %139, 1
  %idxprom192 = sext i32 %sub191 to i64
  %140 = load i8*, i8** %maz.addr, align 8
  %arrayidx193 = getelementptr inbounds i8, i8* %140, i64 %idxprom192
  store i8 1, i8* %arrayidx193, align 1
  br label %sw.epilog.202

sw.bb.194:                                        ; preds = %do.end
  %141 = load i32, i32* %pos.addr, align 4
  %add195 = add nsw i32 %141, 1
  %idxprom196 = sext i32 %add195 to i64
  %142 = load i8*, i8** %maz.addr, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %142, i64 %idxprom196
  store i8 1, i8* %arrayidx197, align 1
  br label %sw.epilog.202

sw.bb.198:                                        ; preds = %do.end
  br label %sw.epilog.202

sw.default.199:                                   ; preds = %do.end
  %143 = load i8, i8* %i, align 1
  %conv200 = sext i8 %143 to i32
  %144 = load i8, i8* %d, align 1
  %conv201 = sext i8 %144 to i32
  %145 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  %146 = load i32, i32* %x.addr, align 4
  %147 = load i32, i32* %y.addr, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i32 0, i32 0), i32 %conv200, i32 %conv201, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149)
  br label %sw.epilog.202

sw.epilog.202:                                    ; preds = %sw.default.199, %sw.bb.198, %sw.bb.194, %sw.bb.190, %sw.bb.186, %sw.bb.182
  %150 = load i32, i32* %progress, align 4
  %inc203 = add i32 %150, 1
  store i32 %inc203, i32* %progress, align 4
  %rem204 = urem i32 %150, 256
  %tobool205 = icmp ne i32 %rem204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.211

if.then.206:                                      ; preds = %sw.epilog.202
  %151 = load i32, i32* %progress, align 4
  %conv207 = uitofp i32 %151 to double
  %152 = load i32, i32* %max_progress, align 4
  %conv208 = uitofp i32 %152 to double
  %div209 = fdiv double %conv207, %conv208
  %call210 = call i32 @gimp_progress_update(double %div209)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.206, %sw.epilog.202
  br label %while.cond

while.end:                                        ; preds = %if.then.166, %while.cond
  %call212 = call i32 @gimp_progress_update(double 1.000000e+00)
  %153 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  call void @g_slist_free(%struct._GSList* %153)
  ret void
}

declare void @g_rand_set_seed(%struct._GRand*, i32) #1

declare i32 @gimp_progress_init(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i32 @g_slist_length(%struct._GSList*) #1

declare i32 @g_rand_int_range(%struct._GRand*, i32, i32) #1

declare %struct._GSList* @g_slist_nth(%struct._GSList*, i32) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #1

declare i32 @gimp_progress_update(double) #1

declare void @g_slist_free(%struct._GSList*) #1

; Function Attrs: nounwind uwtable
define void @prim_tileable(i8* %maz, i32 %x, i32 %y) #0 {
entry:
  %maz.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %front_cells = alloca %struct._GSList*, align 8
  %current = alloca i32, align 4
  %pos = alloca i32, align 4
  %up = alloca i32, align 4
  %down = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %progress = alloca i32, align 4
  %max_progress = alloca i32, align 4
  %d = alloca i8, align 1
  %i = alloca i8, align 1
  %c = alloca i32, align 4
  %rnd = alloca i32, align 4
  store i8* %maz, i8** %maz.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GSList* null, %struct._GSList** %front_cells, align 8
  store i32 0, i32* %progress, align 4
  store i32 0, i32* %c, align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  store i32 %0, i32* %rnd, align 4
  %1 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %2 = load i32, i32* %rnd, align 4
  call void @g_rand_set_seed(%struct._GRand* %1, i32 %2)
  %call = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0)) #3
  %call1 = call i32 @gimp_progress_init(i8* %call)
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %y.addr, align 4
  %mul = mul i32 %3, %4
  %div = udiv i32 %mul, 4
  store i32 %div, i32* %max_progress, align 4
  %5 = load i32, i32* %x.addr, align 4
  %mul2 = mul i32 %5, 2
  %6 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %7 = load i32, i32* %y.addr, align 4
  %div3 = udiv i32 %7, 2
  %call4 = call i32 @g_rand_int_range(%struct._GRand* %6, i32 0, i32 %div3)
  %mul5 = mul i32 %mul2, %call4
  %8 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %9 = load i32, i32* %x.addr, align 4
  %div6 = udiv i32 %9, 2
  %call7 = call i32 @g_rand_int_range(%struct._GRand* %8, i32 0, i32 %div6)
  %mul8 = mul nsw i32 2, %call7
  %add = add i32 %mul5, %mul8
  store i32 %add, i32* %pos, align 4
  %10 = load i32, i32* %pos, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load i8*, i8** %maz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %idxprom
  store i8 1, i8* %arrayidx, align 1
  %12 = load i32, i32* %pos, align 4
  %13 = load i32, i32* %x.addr, align 4
  %mul9 = mul i32 %13, 2
  %cmp = icmp ult i32 %12, %mul9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %14 = load i32, i32* %x.addr, align 4
  %15 = load i32, i32* %y.addr, align 4
  %sub = sub i32 %15, 2
  %mul10 = mul i32 %14, %sub
  %16 = load i32, i32* %pos, align 4
  %add11 = add i32 %mul10, %16
  br label %cond.end

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %pos, align 4
  %18 = load i32, i32* %x.addr, align 4
  %sub12 = sub i32 %17, %18
  %19 = load i32, i32* %x.addr, align 4
  %sub13 = sub i32 %sub12, %19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add11, %cond.true ], [ %sub13, %cond.false ]
  store i32 %cond, i32* %up, align 4
  %20 = load i32, i32* %pos, align 4
  %21 = load i32, i32* %x.addr, align 4
  %22 = load i32, i32* %y.addr, align 4
  %sub14 = sub i32 %22, 2
  %mul15 = mul i32 %21, %sub14
  %cmp16 = icmp uge i32 %20, %mul15
  br i1 %cmp16, label %cond.true.17, label %cond.false.21

cond.true.17:                                     ; preds = %cond.end
  %23 = load i32, i32* %pos, align 4
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %y.addr, align 4
  %sub18 = sub i32 %25, 2
  %mul19 = mul i32 %24, %sub18
  %sub20 = sub i32 %23, %mul19
  br label %cond.end.24

cond.false.21:                                    ; preds = %cond.end
  %26 = load i32, i32* %pos, align 4
  %27 = load i32, i32* %x.addr, align 4
  %add22 = add i32 %26, %27
  %28 = load i32, i32* %x.addr, align 4
  %add23 = add i32 %add22, %28
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.17
  %cond25 = phi i32 [ %sub20, %cond.true.17 ], [ %add23, %cond.false.21 ]
  store i32 %cond25, i32* %down, align 4
  %29 = load i32, i32* %pos, align 4
  %30 = load i32, i32* %x.addr, align 4
  %rem = urem i32 %29, %30
  %cmp26 = icmp ule i32 %rem, 1
  br i1 %cmp26, label %cond.true.27, label %cond.false.30

cond.true.27:                                     ; preds = %cond.end.24
  %31 = load i32, i32* %pos, align 4
  %32 = load i32, i32* %x.addr, align 4
  %add28 = add i32 %31, %32
  %sub29 = sub i32 %add28, 2
  br label %cond.end.32

cond.false.30:                                    ; preds = %cond.end.24
  %33 = load i32, i32* %pos, align 4
  %sub31 = sub i32 %33, 2
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.30, %cond.true.27
  %cond33 = phi i32 [ %sub29, %cond.true.27 ], [ %sub31, %cond.false.30 ]
  store i32 %cond33, i32* %left, align 4
  %34 = load i32, i32* %pos, align 4
  %35 = load i32, i32* %x.addr, align 4
  %rem34 = urem i32 %34, %35
  %36 = load i32, i32* %x.addr, align 4
  %sub35 = sub i32 %36, 2
  %cmp36 = icmp uge i32 %rem34, %sub35
  br i1 %cmp36, label %cond.true.37, label %cond.false.40

cond.true.37:                                     ; preds = %cond.end.32
  %37 = load i32, i32* %pos, align 4
  %add38 = add i32 %37, 2
  %38 = load i32, i32* %x.addr, align 4
  %sub39 = sub i32 %add38, %38
  br label %cond.end.42

cond.false.40:                                    ; preds = %cond.end.32
  %39 = load i32, i32* %pos, align 4
  %add41 = add i32 %39, 2
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.37
  %cond43 = phi i32 [ %sub39, %cond.true.37 ], [ %add41, %cond.false.40 ]
  store i32 %cond43, i32* %right, align 4
  %40 = load i32, i32* %right, align 4
  %idxprom44 = zext i32 %40 to i64
  %41 = load i8*, i8** %maz.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %41, i64 %idxprom44
  store i8 2, i8* %arrayidx45, align 1
  %42 = load i32, i32* %left, align 4
  %idxprom46 = zext i32 %42 to i64
  %43 = load i8*, i8** %maz.addr, align 8
  %arrayidx47 = getelementptr inbounds i8, i8* %43, i64 %idxprom46
  store i8 2, i8* %arrayidx47, align 1
  %44 = load i32, i32* %down, align 4
  %idxprom48 = zext i32 %44 to i64
  %45 = load i8*, i8** %maz.addr, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %45, i64 %idxprom48
  store i8 2, i8* %arrayidx49, align 1
  %46 = load i32, i32* %up, align 4
  %idxprom50 = zext i32 %46 to i64
  %47 = load i8*, i8** %maz.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %47, i64 %idxprom50
  store i8 2, i8* %arrayidx51, align 1
  %48 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %49 = load i32, i32* %up, align 4
  %conv = zext i32 %49 to i64
  %50 = inttoptr i64 %conv to i8*
  %call52 = call %struct._GSList* @g_slist_append(%struct._GSList* %48, i8* %50)
  store %struct._GSList* %call52, %struct._GSList** %front_cells, align 8
  %51 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %52 = load i32, i32* %down, align 4
  %conv53 = zext i32 %52 to i64
  %53 = inttoptr i64 %conv53 to i8*
  %call54 = call %struct._GSList* @g_slist_append(%struct._GSList* %51, i8* %53)
  store %struct._GSList* %call54, %struct._GSList** %front_cells, align 8
  %54 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %55 = load i32, i32* %left, align 4
  %conv55 = zext i32 %55 to i64
  %56 = inttoptr i64 %conv55 to i8*
  %call56 = call %struct._GSList* @g_slist_append(%struct._GSList* %54, i8* %56)
  store %struct._GSList* %call56, %struct._GSList** %front_cells, align 8
  %57 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %58 = load i32, i32* %right, align 4
  %conv57 = zext i32 %58 to i64
  %59 = inttoptr i64 %conv57 to i8*
  %call58 = call %struct._GSList* @g_slist_append(%struct._GSList* %57, i8* %59)
  store %struct._GSList* %call58, %struct._GSList** %front_cells, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.226, %cond.end.42
  %60 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %call59 = call i32 @g_slist_length(%struct._GSList* %60)
  %cmp60 = icmp ugt i32 %call59, 0
  br i1 %cmp60, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %61 = load %struct._GRand*, %struct._GRand** @gr, align 8
  %62 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %call62 = call i32 @g_slist_length(%struct._GSList* %62)
  %call63 = call i32 @g_rand_int_range(%struct._GRand* %61, i32 0, i32 %call62)
  store i32 %call63, i32* %current, align 4
  %63 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %64 = load i32, i32* %current, align 4
  %call64 = call %struct._GSList* @g_slist_nth(%struct._GSList* %63, i32 %64)
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %call64, i32 0, i32 0
  %65 = load i8*, i8** %data, align 8
  %66 = ptrtoint i8* %65 to i64
  %conv65 = trunc i64 %66 to i32
  store i32 %conv65, i32* %pos, align 4
  %67 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %68 = load i32, i32* %pos, align 4
  %conv66 = zext i32 %68 to i64
  %69 = inttoptr i64 %conv66 to i8*
  %call67 = call %struct._GSList* @g_slist_remove(%struct._GSList* %67, i8* %69)
  store %struct._GSList* %call67, %struct._GSList** %front_cells, align 8
  %70 = load i32, i32* %pos, align 4
  %idxprom68 = zext i32 %70 to i64
  %71 = load i8*, i8** %maz.addr, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %71, i64 %idxprom68
  store i8 1, i8* %arrayidx69, align 1
  %72 = load i32, i32* %pos, align 4
  %73 = load i32, i32* %x.addr, align 4
  %mul70 = mul i32 %73, 2
  %cmp71 = icmp ult i32 %72, %mul70
  br i1 %cmp71, label %cond.true.73, label %cond.false.77

cond.true.73:                                     ; preds = %while.body
  %74 = load i32, i32* %x.addr, align 4
  %75 = load i32, i32* %y.addr, align 4
  %sub74 = sub i32 %75, 2
  %mul75 = mul i32 %74, %sub74
  %76 = load i32, i32* %pos, align 4
  %add76 = add i32 %mul75, %76
  br label %cond.end.80

cond.false.77:                                    ; preds = %while.body
  %77 = load i32, i32* %pos, align 4
  %78 = load i32, i32* %x.addr, align 4
  %sub78 = sub i32 %77, %78
  %79 = load i32, i32* %x.addr, align 4
  %sub79 = sub i32 %sub78, %79
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.77, %cond.true.73
  %cond81 = phi i32 [ %add76, %cond.true.73 ], [ %sub79, %cond.false.77 ]
  store i32 %cond81, i32* %up, align 4
  %80 = load i32, i32* %pos, align 4
  %81 = load i32, i32* %x.addr, align 4
  %82 = load i32, i32* %y.addr, align 4
  %sub82 = sub i32 %82, 2
  %mul83 = mul i32 %81, %sub82
  %cmp84 = icmp uge i32 %80, %mul83
  br i1 %cmp84, label %cond.true.86, label %cond.false.90

cond.true.86:                                     ; preds = %cond.end.80
  %83 = load i32, i32* %pos, align 4
  %84 = load i32, i32* %x.addr, align 4
  %85 = load i32, i32* %y.addr, align 4
  %sub87 = sub i32 %85, 2
  %mul88 = mul i32 %84, %sub87
  %sub89 = sub i32 %83, %mul88
  br label %cond.end.93

cond.false.90:                                    ; preds = %cond.end.80
  %86 = load i32, i32* %pos, align 4
  %87 = load i32, i32* %x.addr, align 4
  %add91 = add i32 %86, %87
  %88 = load i32, i32* %x.addr, align 4
  %add92 = add i32 %add91, %88
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.90, %cond.true.86
  %cond94 = phi i32 [ %sub89, %cond.true.86 ], [ %add92, %cond.false.90 ]
  store i32 %cond94, i32* %down, align 4
  %89 = load i32, i32* %pos, align 4
  %90 = load i32, i32* %x.addr, align 4
  %rem95 = urem i32 %89, %90
  %cmp96 = icmp ule i32 %rem95, 1
  br i1 %cmp96, label %cond.true.98, label %cond.false.101

cond.true.98:                                     ; preds = %cond.end.93
  %91 = load i32, i32* %pos, align 4
  %92 = load i32, i32* %x.addr, align 4
  %add99 = add i32 %91, %92
  %sub100 = sub i32 %add99, 2
  br label %cond.end.103

cond.false.101:                                   ; preds = %cond.end.93
  %93 = load i32, i32* %pos, align 4
  %sub102 = sub i32 %93, 2
  br label %cond.end.103

cond.end.103:                                     ; preds = %cond.false.101, %cond.true.98
  %cond104 = phi i32 [ %sub100, %cond.true.98 ], [ %sub102, %cond.false.101 ]
  store i32 %cond104, i32* %left, align 4
  %94 = load i32, i32* %pos, align 4
  %95 = load i32, i32* %x.addr, align 4
  %rem105 = urem i32 %94, %95
  %96 = load i32, i32* %x.addr, align 4
  %sub106 = sub i32 %96, 2
  %cmp107 = icmp uge i32 %rem105, %sub106
  br i1 %cmp107, label %cond.true.109, label %cond.false.112

cond.true.109:                                    ; preds = %cond.end.103
  %97 = load i32, i32* %pos, align 4
  %add110 = add i32 %97, 2
  %98 = load i32, i32* %x.addr, align 4
  %sub111 = sub i32 %add110, %98
  br label %cond.end.114

cond.false.112:                                   ; preds = %cond.end.103
  %99 = load i32, i32* %pos, align 4
  %add113 = add i32 %99, 2
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.112, %cond.true.109
  %cond115 = phi i32 [ %sub111, %cond.true.109 ], [ %add113, %cond.false.112 ]
  store i32 %cond115, i32* %right, align 4
  store i8 0, i8* %d, align 1
  %100 = load i32, i32* %up, align 4
  %idxprom116 = zext i32 %100 to i64
  %101 = load i8*, i8** %maz.addr, align 8
  %arrayidx117 = getelementptr inbounds i8, i8* %101, i64 %idxprom116
  %102 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %102 to i32
  switch i32 %conv118, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.123
  ]

sw.bb:                                            ; preds = %cond.end.114
  %103 = load i32, i32* %up, align 4
  %idxprom119 = zext i32 %103 to i64
  %104 = load i8*, i8** %maz.addr, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %104, i64 %idxprom119
  store i8 2, i8* %arrayidx120, align 1
  %105 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %106 = load i32, i32* %up, align 4
  %conv121 = zext i32 %106 to i64
  %107 = inttoptr i64 %conv121 to i8*
  %call122 = call %struct._GSList* @g_slist_append(%struct._GSList* %105, i8* %107)
  store %struct._GSList* %call122, %struct._GSList** %front_cells, align 8
  br label %sw.epilog

sw.bb.123:                                        ; preds = %cond.end.114
  store i8 1, i8* %d, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.114
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.123, %sw.bb
  %108 = load i32, i32* %down, align 4
  %idxprom124 = zext i32 %108 to i64
  %109 = load i8*, i8** %maz.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %109, i64 %idxprom124
  %110 = load i8, i8* %arrayidx125, align 1
  %conv126 = zext i8 %110 to i32
  switch i32 %conv126, label %sw.default.135 [
    i32 0, label %sw.bb.127
    i32 1, label %sw.bb.132
  ]

sw.bb.127:                                        ; preds = %sw.epilog
  %111 = load i32, i32* %down, align 4
  %idxprom128 = zext i32 %111 to i64
  %112 = load i8*, i8** %maz.addr, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %112, i64 %idxprom128
  store i8 2, i8* %arrayidx129, align 1
  %113 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %114 = load i32, i32* %down, align 4
  %conv130 = zext i32 %114 to i64
  %115 = inttoptr i64 %conv130 to i8*
  %call131 = call %struct._GSList* @g_slist_append(%struct._GSList* %113, i8* %115)
  store %struct._GSList* %call131, %struct._GSList** %front_cells, align 8
  br label %sw.epilog.136

sw.bb.132:                                        ; preds = %sw.epilog
  %116 = load i8, i8* %d, align 1
  %conv133 = sext i8 %116 to i32
  %or = or i32 %conv133, 2
  %conv134 = trunc i32 %or to i8
  store i8 %conv134, i8* %d, align 1
  br label %sw.epilog.136

sw.default.135:                                   ; preds = %sw.epilog
  br label %sw.epilog.136

sw.epilog.136:                                    ; preds = %sw.default.135, %sw.bb.132, %sw.bb.127
  %117 = load i32, i32* %left, align 4
  %idxprom137 = zext i32 %117 to i64
  %118 = load i8*, i8** %maz.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %118, i64 %idxprom137
  %119 = load i8, i8* %arrayidx138, align 1
  %conv139 = zext i8 %119 to i32
  switch i32 %conv139, label %sw.default.149 [
    i32 0, label %sw.bb.140
    i32 1, label %sw.bb.145
  ]

sw.bb.140:                                        ; preds = %sw.epilog.136
  %120 = load i32, i32* %left, align 4
  %idxprom141 = zext i32 %120 to i64
  %121 = load i8*, i8** %maz.addr, align 8
  %arrayidx142 = getelementptr inbounds i8, i8* %121, i64 %idxprom141
  store i8 2, i8* %arrayidx142, align 1
  %122 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %123 = load i32, i32* %left, align 4
  %conv143 = zext i32 %123 to i64
  %124 = inttoptr i64 %conv143 to i8*
  %call144 = call %struct._GSList* @g_slist_append(%struct._GSList* %122, i8* %124)
  store %struct._GSList* %call144, %struct._GSList** %front_cells, align 8
  br label %sw.epilog.150

sw.bb.145:                                        ; preds = %sw.epilog.136
  %125 = load i8, i8* %d, align 1
  %conv146 = sext i8 %125 to i32
  %or147 = or i32 %conv146, 4
  %conv148 = trunc i32 %or147 to i8
  store i8 %conv148, i8* %d, align 1
  br label %sw.epilog.150

sw.default.149:                                   ; preds = %sw.epilog.136
  br label %sw.epilog.150

sw.epilog.150:                                    ; preds = %sw.default.149, %sw.bb.145, %sw.bb.140
  %126 = load i32, i32* %right, align 4
  %idxprom151 = zext i32 %126 to i64
  %127 = load i8*, i8** %maz.addr, align 8
  %arrayidx152 = getelementptr inbounds i8, i8* %127, i64 %idxprom151
  %128 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %128 to i32
  switch i32 %conv153, label %sw.default.163 [
    i32 0, label %sw.bb.154
    i32 1, label %sw.bb.159
  ]

sw.bb.154:                                        ; preds = %sw.epilog.150
  %129 = load i32, i32* %right, align 4
  %idxprom155 = zext i32 %129 to i64
  %130 = load i8*, i8** %maz.addr, align 8
  %arrayidx156 = getelementptr inbounds i8, i8* %130, i64 %idxprom155
  store i8 2, i8* %arrayidx156, align 1
  %131 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  %132 = load i32, i32* %right, align 4
  %conv157 = zext i32 %132 to i64
  %133 = inttoptr i64 %conv157 to i8*
  %call158 = call %struct._GSList* @g_slist_append(%struct._GSList* %131, i8* %133)
  store %struct._GSList* %call158, %struct._GSList** %front_cells, align 8
  br label %sw.epilog.164

sw.bb.159:                                        ; preds = %sw.epilog.150
  %134 = load i8, i8* %d, align 1
  %conv160 = sext i8 %134 to i32
  %or161 = or i32 %conv160, 8
  %conv162 = trunc i32 %or161 to i8
  store i8 %conv162, i8* %d, align 1
  br label %sw.epilog.164

sw.default.163:                                   ; preds = %sw.epilog.150
  br label %sw.epilog.164

sw.epilog.164:                                    ; preds = %sw.default.163, %sw.bb.159, %sw.bb.154
  %135 = load i8, i8* %d, align 1
  %tobool = icmp ne i8 %135, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.epilog.164
  %136 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  %137 = load i32, i32* %x.addr, align 4
  %138 = load i32, i32* %y.addr, align 4
  %139 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i32 0, i32 0), i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  br label %while.end

if.end:                                           ; preds = %sw.epilog.164
  store i32 0, i32* %c, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %141 = load i32, i32* %rnd, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %mul165 = mul nsw i32 %141, %142
  %143 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  %add166 = add nsw i32 %mul165, %143
  store i32 %add166, i32* %rnd, align 4
  %144 = load i32, i32* %rnd, align 4
  %145 = load i8, i8* %d, align 1
  %conv167 = sext i8 %145 to i32
  %div168 = sdiv i32 %144, %conv167
  %and = and i32 3, %div168
  %conv169 = trunc i32 %and to i8
  store i8 %conv169, i8* %i, align 1
  %146 = load i32, i32* %c, align 4
  %inc = add i32 %146, 1
  store i32 %inc, i32* %c, align 4
  %cmp170 = icmp ugt i32 %inc, 100
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %do.body
  store i8 99, i8* %i, align 1
  br label %do.end

if.end.173:                                       ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.173
  %147 = load i8, i8* %d, align 1
  %conv174 = sext i8 %147 to i32
  %148 = load i8, i8* %i, align 1
  %conv175 = sext i8 %148 to i32
  %shl = shl i32 1, %conv175
  %and176 = and i32 %conv174, %shl
  %tobool177 = icmp ne i32 %and176, 0
  %lnot = xor i1 %tobool177, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.172
  %149 = load i8, i8* %i, align 1
  %conv178 = sext i8 %149 to i32
  switch i32 %conv178, label %sw.default.214 [
    i32 0, label %sw.bb.179
    i32 1, label %sw.bb.192
    i32 2, label %sw.bb.196
    i32 3, label %sw.bb.209
    i32 99, label %sw.bb.213
  ]

sw.bb.179:                                        ; preds = %do.end
  %150 = load i32, i32* %pos, align 4
  %151 = load i32, i32* %x.addr, align 4
  %cmp180 = icmp ult i32 %150, %151
  br i1 %cmp180, label %cond.true.182, label %cond.false.186

cond.true.182:                                    ; preds = %sw.bb.179
  %152 = load i32, i32* %x.addr, align 4
  %153 = load i32, i32* %y.addr, align 4
  %sub183 = sub i32 %153, 1
  %mul184 = mul i32 %152, %sub183
  %154 = load i32, i32* %pos, align 4
  %add185 = add i32 %mul184, %154
  br label %cond.end.188

cond.false.186:                                   ; preds = %sw.bb.179
  %155 = load i32, i32* %pos, align 4
  %156 = load i32, i32* %x.addr, align 4
  %sub187 = sub i32 %155, %156
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.false.186, %cond.true.182
  %cond189 = phi i32 [ %add185, %cond.true.182 ], [ %sub187, %cond.false.186 ]
  %idxprom190 = zext i32 %cond189 to i64
  %157 = load i8*, i8** %maz.addr, align 8
  %arrayidx191 = getelementptr inbounds i8, i8* %157, i64 %idxprom190
  store i8 1, i8* %arrayidx191, align 1
  br label %sw.epilog.217

sw.bb.192:                                        ; preds = %do.end
  %158 = load i32, i32* %pos, align 4
  %159 = load i32, i32* %x.addr, align 4
  %add193 = add i32 %158, %159
  %idxprom194 = zext i32 %add193 to i64
  %160 = load i8*, i8** %maz.addr, align 8
  %arrayidx195 = getelementptr inbounds i8, i8* %160, i64 %idxprom194
  store i8 1, i8* %arrayidx195, align 1
  br label %sw.epilog.217

sw.bb.196:                                        ; preds = %do.end
  %161 = load i32, i32* %pos, align 4
  %162 = load i32, i32* %x.addr, align 4
  %rem197 = urem i32 %161, %162
  %cmp198 = icmp eq i32 %rem197, 0
  br i1 %cmp198, label %cond.true.200, label %cond.false.203

cond.true.200:                                    ; preds = %sw.bb.196
  %163 = load i32, i32* %pos, align 4
  %164 = load i32, i32* %x.addr, align 4
  %add201 = add i32 %163, %164
  %sub202 = sub i32 %add201, 1
  br label %cond.end.205

cond.false.203:                                   ; preds = %sw.bb.196
  %165 = load i32, i32* %pos, align 4
  %sub204 = sub i32 %165, 1
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.203, %cond.true.200
  %cond206 = phi i32 [ %sub202, %cond.true.200 ], [ %sub204, %cond.false.203 ]
  %idxprom207 = zext i32 %cond206 to i64
  %166 = load i8*, i8** %maz.addr, align 8
  %arrayidx208 = getelementptr inbounds i8, i8* %166, i64 %idxprom207
  store i8 1, i8* %arrayidx208, align 1
  br label %sw.epilog.217

sw.bb.209:                                        ; preds = %do.end
  %167 = load i32, i32* %pos, align 4
  %add210 = add i32 %167, 1
  %idxprom211 = zext i32 %add210 to i64
  %168 = load i8*, i8** %maz.addr, align 8
  %arrayidx212 = getelementptr inbounds i8, i8* %168, i64 %idxprom211
  store i8 1, i8* %arrayidx212, align 1
  br label %sw.epilog.217

sw.bb.213:                                        ; preds = %do.end
  br label %sw.epilog.217

sw.default.214:                                   ; preds = %do.end
  %169 = load i8, i8* %i, align 1
  %conv215 = sext i8 %169 to i32
  %170 = load i8, i8* %d, align 1
  %conv216 = sext i8 %170 to i32
  %171 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 2), align 4
  %172 = load i32, i32* %x.addr, align 4
  %173 = load i32, i32* %y.addr, align 4
  %174 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 4), align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.MazeValues, %struct.MazeValues* @mvals, i32 0, i32 5), align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.7, i32 0, i32 0), i32 %conv215, i32 %conv216, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  br label %sw.epilog.217

sw.epilog.217:                                    ; preds = %sw.default.214, %sw.bb.213, %sw.bb.209, %cond.end.205, %sw.bb.192, %cond.end.188
  %176 = load i32, i32* %progress, align 4
  %inc218 = add i32 %176, 1
  store i32 %inc218, i32* %progress, align 4
  %rem219 = urem i32 %176, 256
  %tobool220 = icmp ne i32 %rem219, 0
  br i1 %tobool220, label %if.then.221, label %if.end.226

if.then.221:                                      ; preds = %sw.epilog.217
  %177 = load i32, i32* %progress, align 4
  %conv222 = uitofp i32 %177 to double
  %178 = load i32, i32* %max_progress, align 4
  %conv223 = uitofp i32 %178 to double
  %div224 = fdiv double %conv222, %conv223
  %call225 = call i32 @gimp_progress_update(double %div224)
  br label %if.end.226

if.end.226:                                       ; preds = %if.then.221, %sw.epilog.217
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %call227 = call i32 @gimp_progress_update(double 1.000000e+00)
  %179 = load %struct._GSList*, %struct._GSList** %front_cells, align 8
  call void @g_slist_free(%struct._GSList* %179)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
