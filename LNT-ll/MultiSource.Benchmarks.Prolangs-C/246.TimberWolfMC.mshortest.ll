; ModuleID = './MultiSource.Benchmarks.Prolangs-C/246.TimberWolfMC.mshortest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.path = type { i16*, i32, i32, i32, [5 x i32] }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }

@Mpaths = external global i32, align 4
@numnodes = external global i32, align 4
@pnodeArray = external global %struct.pnode*, align 8
@targetPtr = external global i32, align 4
@targetList = external global i16*, align 8
@bareMinimum = external global i32, align 4
@finalShot = external global i32, align 4
@doCompaction = external global i32, align 4
@gnodeArray = external global %struct.gnode**, align 8
@tempArray = external global i16*, align 8
@pathArray = external global %struct.path*, align 8
@pathList = external global i32**, align 8

; Function Attrs: nounwind uwtable
define i32 @mshortest(i32 %source, i32 %soleTarget) #0 {
entry:
  %source.addr = alloca i32, align 4
  %soleTarget.addr = alloca i32, align 4
  %target = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %d = alloca i32, align 4
  %t = alloca i32, align 4
  %distance = alloca i32, align 4
  %from = alloca i32, align 4
  %index = alloca i32, align 4
  %pindex = alloca i32, align 4
  %c = alloca i32, align 4
  %numberPaths = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %eptr = alloca i32*, align 8
  %exnum = alloca i32, align 4
  %tree2size = alloca i32, align 4
  %ex = alloca [5 x i32], align 16
  %number = alloca i32, align 4
  %junk = alloca i32, align 4
  %treeSize = alloca i32, align 4
  %value = alloca i32, align 4
  %count = alloca i32, align 4
  %targetLimit = alloca i32, align 4
  %wasInactive = alloca i32, align 4
  %node1 = alloca i32, align 4
  %xindex = alloca i32, align 4
  %targetCount = alloca i32, align 4
  %foo = alloca i32, align 4
  %initialCount = alloca i32, align 4
  %initialLimit = alloca i32, align 4
  %dummy = alloca [2 x i16], align 2
  %ptr = alloca i16*, align 8
  %nptr = alloca %struct.nnode*, align 8
  %root1 = alloca %struct.tnode*, align 8
  %node = alloca %struct.tnode*, align 8
  %rsave = alloca %struct.tnode*, align 8
  %junkptr = alloca %struct.tnode*, align 8
  %indexRoot = alloca %struct.tnode*, align 8
  %targetRoot = alloca %struct.tnode*, align 8
  %initialRoot = alloca %struct.tnode*, align 8
  %gptr = alloca %struct.gnode*, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  store i32 %source, i32* %source.addr, align 4
  store i32 %soleTarget, i32* %soleTarget.addr, align 4
  store %struct.tnode* null, %struct.tnode** %rsave, align 8
  store %struct.tnode* null, %struct.tnode** %indexRoot, align 8
  store %struct.tnode* null, %struct.tnode** %targetRoot, align 8
  store %struct.tnode* null, %struct.tnode** %initialRoot, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @Mpaths, align 4
  %mul = mul nsw i32 2, %1
  %add = add nsw i32 2, %mul
  %cmp = icmp sle i32 %0, %add
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  call void @tinsert(%struct.tnode** %indexRoot, i32 %2, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %treeSize, align 4
  store i32 0, i32* %tree2size, align 4
  store i32 0, i32* %wasInactive, align 4
  %4 = load i32, i32* %source.addr, align 4
  %5 = load i32, i32* @numnodes, align 4
  %sub = sub nsw i32 %4, %5
  %idxprom = sext i32 %sub to i64
  %6 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx = getelementptr inbounds %struct.pnode, %struct.pnode* %6, i64 %idxprom
  %nodeList = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx, i32 0, i32 1
  %7 = load %struct.nnode*, %struct.nnode** %nodeList, align 8
  store %struct.nnode* %7, %struct.nnode** %nptr, align 8
  store i32 1, i32* %t, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.9, %for.end
  %8 = load i32, i32* %t, align 4
  %9 = load i32, i32* @targetPtr, align 4
  %cmp2 = icmp sle i32 %8, %9
  br i1 %cmp2, label %for.body.3, label %for.end.11

for.body.3:                                       ; preds = %for.cond.1
  %10 = load i32, i32* %t, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load i16*, i16** @targetList, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %11, i64 %idxprom4
  %12 = load i16, i16* %arrayidx5, align 2
  %conv = sext i16 %12 to i32
  store i32 %conv, i32* %target, align 4
  %13 = load i32, i32* %target, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx7 = getelementptr inbounds %struct.nnode, %struct.nnode* %14, i64 %idxprom6
  %distance8 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx7, i32 0, i32 1
  %15 = load i32, i32* %distance8, align 4
  %16 = load i32, i32* %t, align 4
  call void @tinsert(%struct.tnode** %initialRoot, i32 %15, i32 %16)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.3
  %17 = load i32, i32* %t, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %t, align 4
  br label %for.cond.1

for.end.11:                                       ; preds = %for.cond.1
  store i32 0, i32* %initialCount, align 4
  %18 = load i32, i32* @targetPtr, align 4
  %conv12 = sitofp i32 %18 to double
  %mul13 = fmul double 1.000000e-01, %conv12
  %conv14 = fptosi double %mul13 to i32
  %add15 = add nsw i32 %conv14, 1
  %19 = load i32, i32* @Mpaths, align 4
  %mul16 = mul nsw i32 2, %19
  %add17 = add nsw i32 %add15, %mul16
  store i32 %add17, i32* %initialLimit, align 4
  %20 = load i32, i32* %initialLimit, align 4
  %21 = load i32, i32* @targetPtr, align 4
  %cmp18 = icmp sgt i32 %20, %21
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.11
  %22 = load i32, i32* @targetPtr, align 4
  store i32 %22, i32* %initialLimit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.11
  %23 = load i32, i32* @bareMinimum, align 4
  %tobool = icmp ne i32 %23, 0
  br i1 %tobool, label %if.then.20, label %if.end.25

if.then.20:                                       ; preds = %if.end
  %24 = load i32, i32* @finalShot, align 4
  %25 = load i32, i32* @doCompaction, align 4
  %cmp21 = icmp eq i32 %24, %25
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.20
  store i32 2, i32* %initialLimit, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.then.20
  store i32 1, i32* %initialLimit, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.105, %if.end.25
  %26 = load i32, i32* %initialCount, align 4
  %27 = load i32, i32* %initialLimit, align 4
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @tpop(%struct.tnode** %initialRoot, %struct.tnode** %junkptr, i32* %foo, i32* %t)
  %28 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp28 = icmp eq %struct.tnode* %28, null
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.body
  br label %while.end

if.end.31:                                        ; preds = %while.body
  %29 = load i32, i32* %t, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load i16*, i16** @targetList, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %30, i64 %idxprom32
  %31 = load i16, i16* %arrayidx33, align 2
  %conv34 = sext i16 %31 to i32
  store i32 %conv34, i32* %target, align 4
  %32 = load i32, i32* %target, align 4
  %idxprom35 = sext i32 %32 to i64
  %33 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx36 = getelementptr inbounds %struct.gnode*, %struct.gnode** %33, i64 %idxprom35
  %34 = load %struct.gnode*, %struct.gnode** %arrayidx36, align 8
  store %struct.gnode* %34, %struct.gnode** %gptr, align 8
  %35 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node37 = getelementptr inbounds %struct.gnode, %struct.gnode* %35, i32 0, i32 0
  %36 = load i32, i32* %node37, align 4
  store i32 %36, i32* %node1, align 4
  %37 = load i32, i32* %node1, align 4
  %idxprom38 = sext i32 %37 to i64
  %38 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx39 = getelementptr inbounds %struct.gnode*, %struct.gnode** %38, i64 %idxprom38
  %39 = load %struct.gnode*, %struct.gnode** %arrayidx39, align 8
  store %struct.gnode* %39, %struct.gnode** %gptr1, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %if.end.69, %if.end.31
  %40 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node41 = getelementptr inbounds %struct.gnode, %struct.gnode* %40, i32 0, i32 0
  %41 = load i32, i32* %node41, align 4
  %42 = load i32, i32* %target, align 4
  %cmp42 = icmp eq i32 %41, %42
  br i1 %cmp42, label %if.then.44, label %if.end.69

if.then.44:                                       ; preds = %for.cond.40
  %43 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive = getelementptr inbounds %struct.gnode, %struct.gnode* %43, i32 0, i32 6
  %44 = load i32, i32* %einactive, align 4
  %cmp45 = icmp eq i32 %44, 1
  br i1 %cmp45, label %if.then.47, label %if.end.68

if.then.47:                                       ; preds = %if.then.44
  %45 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive48 = getelementptr inbounds %struct.gnode, %struct.gnode* %45, i32 0, i32 6
  store i32 0, i32* %einactive48, align 4
  store i32 1, i32* %wasInactive, align 4
  %46 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %46, i32 0, i32 7
  %47 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %47, %struct.gnode** %gptr, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.65, %if.then.47
  %48 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp50 = icmp ne %struct.gnode* %48, null
  br i1 %cmp50, label %for.body.52, label %for.end.67

for.body.52:                                      ; preds = %for.cond.49
  %49 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node53 = getelementptr inbounds %struct.gnode, %struct.gnode* %49, i32 0, i32 0
  %50 = load i32, i32* %node53, align 4
  store i32 %50, i32* %node1, align 4
  %51 = load i32, i32* %node1, align 4
  %idxprom54 = sext i32 %51 to i64
  %52 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx55 = getelementptr inbounds %struct.gnode*, %struct.gnode** %52, i64 %idxprom54
  %53 = load %struct.gnode*, %struct.gnode** %arrayidx55, align 8
  store %struct.gnode* %53, %struct.gnode** %gptr1, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %if.end.62, %for.body.52
  %54 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node57 = getelementptr inbounds %struct.gnode, %struct.gnode* %54, i32 0, i32 0
  %55 = load i32, i32* %node57, align 4
  %56 = load i32, i32* %target, align 4
  %cmp58 = icmp eq i32 %55, %56
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %for.cond.56
  %57 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive61 = getelementptr inbounds %struct.gnode, %struct.gnode* %57, i32 0, i32 6
  store i32 0, i32* %einactive61, align 4
  br label %for.end.64

if.end.62:                                        ; preds = %for.cond.56
  %58 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next63 = getelementptr inbounds %struct.gnode, %struct.gnode* %58, i32 0, i32 7
  %59 = load %struct.gnode*, %struct.gnode** %next63, align 8
  store %struct.gnode* %59, %struct.gnode** %gptr1, align 8
  br label %for.cond.56

for.end.64:                                       ; preds = %if.then.60
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %60 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next66 = getelementptr inbounds %struct.gnode, %struct.gnode* %60, i32 0, i32 7
  %61 = load %struct.gnode*, %struct.gnode** %next66, align 8
  store %struct.gnode* %61, %struct.gnode** %gptr, align 8
  br label %for.cond.49

for.end.67:                                       ; preds = %for.cond.49
  br label %if.end.68

if.end.68:                                        ; preds = %for.end.67, %if.then.44
  br label %for.end.71

if.end.69:                                        ; preds = %for.cond.40
  %62 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next70 = getelementptr inbounds %struct.gnode, %struct.gnode* %62, i32 0, i32 7
  %63 = load %struct.gnode*, %struct.gnode** %next70, align 8
  store %struct.gnode* %63, %struct.gnode** %gptr1, align 8
  br label %for.cond.40

for.end.71:                                       ; preds = %if.end.68
  %64 = load i32, i32* %source.addr, align 4
  %conv72 = trunc i32 %64 to i16
  %arrayidx73 = getelementptr inbounds [2 x i16], [2 x i16]* %dummy, i32 0, i64 1
  store i16 %conv72, i16* %arrayidx73, align 2
  %arraydecay = getelementptr inbounds [2 x i16], [2 x i16]* %dummy, i32 0, i32 0
  %65 = load i32, i32* %source.addr, align 4
  %66 = load i32, i32* %target, align 4
  %call = call i32 @prestrict(i16* %arraydecay, i32 1, i32 %65, i32 %66)
  store i32 %call, i32* %d, align 4
  %67 = load i32, i32* %wasInactive, align 4
  %cmp74 = icmp eq i32 %67, 1
  br i1 %cmp74, label %if.then.76, label %if.end.98

if.then.76:                                       ; preds = %for.end.71
  %68 = load i32, i32* %target, align 4
  %idxprom77 = sext i32 %68 to i64
  %69 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx78 = getelementptr inbounds %struct.gnode*, %struct.gnode** %69, i64 %idxprom77
  %70 = load %struct.gnode*, %struct.gnode** %arrayidx78, align 8
  store %struct.gnode* %70, %struct.gnode** %gptr, align 8
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.95, %if.then.76
  %71 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp80 = icmp ne %struct.gnode* %71, null
  br i1 %cmp80, label %for.body.82, label %for.end.97

for.body.82:                                      ; preds = %for.cond.79
  %72 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node83 = getelementptr inbounds %struct.gnode, %struct.gnode* %72, i32 0, i32 0
  %73 = load i32, i32* %node83, align 4
  store i32 %73, i32* %node1, align 4
  %74 = load i32, i32* %node1, align 4
  %idxprom84 = sext i32 %74 to i64
  %75 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx85 = getelementptr inbounds %struct.gnode*, %struct.gnode** %75, i64 %idxprom84
  %76 = load %struct.gnode*, %struct.gnode** %arrayidx85, align 8
  store %struct.gnode* %76, %struct.gnode** %gptr1, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %if.end.92, %for.body.82
  %77 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node87 = getelementptr inbounds %struct.gnode, %struct.gnode* %77, i32 0, i32 0
  %78 = load i32, i32* %node87, align 4
  %79 = load i32, i32* %target, align 4
  %cmp88 = icmp eq i32 %78, %79
  br i1 %cmp88, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %for.cond.86
  %80 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive91 = getelementptr inbounds %struct.gnode, %struct.gnode* %80, i32 0, i32 6
  store i32 1, i32* %einactive91, align 4
  br label %for.end.94

if.end.92:                                        ; preds = %for.cond.86
  %81 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next93 = getelementptr inbounds %struct.gnode, %struct.gnode* %81, i32 0, i32 7
  %82 = load %struct.gnode*, %struct.gnode** %next93, align 8
  store %struct.gnode* %82, %struct.gnode** %gptr1, align 8
  br label %for.cond.86

for.end.94:                                       ; preds = %if.then.90
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end.94
  %83 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next96 = getelementptr inbounds %struct.gnode, %struct.gnode* %83, i32 0, i32 7
  %84 = load %struct.gnode*, %struct.gnode** %next96, align 8
  store %struct.gnode* %84, %struct.gnode** %gptr, align 8
  br label %for.cond.79

for.end.97:                                       ; preds = %for.cond.79
  store i32 0, i32* %wasInactive, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %for.end.97, %for.end.71
  %85 = load i32, i32* %d, align 4
  %cmp99 = icmp sge i32 %85, 0
  br i1 %cmp99, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %if.end.98
  %86 = load i32, i32* %target, align 4
  %idxprom102 = sext i32 %86 to i64
  %87 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx103 = getelementptr inbounds %struct.nnode, %struct.nnode* %87, i64 %idxprom102
  %temp = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx103, i32 0, i32 0
  %88 = load i32, i32* %temp, align 4
  %89 = load i32, i32* %t, align 4
  call void @tinsert(%struct.tnode** %targetRoot, i32 %88, i32 %89)
  %90 = load i32, i32* %initialCount, align 4
  %inc104 = add nsw i32 %90, 1
  store i32 %inc104, i32* %initialCount, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %if.end.98
  br label %while.cond

while.end:                                        ; preds = %if.then.30, %while.cond
  %91 = load %struct.tnode*, %struct.tnode** %initialRoot, align 8
  %cmp106 = icmp ne %struct.tnode* %91, null
  br i1 %cmp106, label %if.then.108, label %if.end.115

if.then.108:                                      ; preds = %while.end
  br label %for.cond.109

for.cond.109:                                     ; preds = %if.end.113, %if.then.108
  call void @tpop(%struct.tnode** %initialRoot, %struct.tnode** %junkptr, i32* %foo, i32* %t)
  %92 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp110 = icmp eq %struct.tnode* %92, null
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %for.cond.109
  br label %for.end.114

if.end.113:                                       ; preds = %for.cond.109
  br label %for.cond.109

for.end.114:                                      ; preds = %if.then.112
  br label %if.end.115

if.end.115:                                       ; preds = %for.end.114, %while.end
  %93 = load i32, i32* @Mpaths, align 4
  store i32 %93, i32* %targetLimit, align 4
  store i32 0, i32* %targetCount, align 4
  br label %while.cond.116

while.cond.116:                                   ; preds = %if.end.610, %if.end.197, %if.end.115
  %94 = load i32, i32* %targetCount, align 4
  %95 = load i32, i32* %targetLimit, align 4
  %cmp117 = icmp slt i32 %94, %95
  br i1 %cmp117, label %while.body.119, label %while.end.611

while.body.119:                                   ; preds = %while.cond.116
  call void @tpop(%struct.tnode** %targetRoot, %struct.tnode** %junkptr, i32* %foo, i32* %t)
  %96 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp120 = icmp eq %struct.tnode* %96, null
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %while.body.119
  br label %while.end.611

if.end.123:                                       ; preds = %while.body.119
  store i32 0, i32* %numberPaths, align 4
  store %struct.tnode* null, %struct.tnode** %root1, align 8
  %97 = load i32, i32* %t, align 4
  %idxprom124 = sext i32 %97 to i64
  %98 = load i16*, i16** @targetList, align 8
  %arrayidx125 = getelementptr inbounds i16, i16* %98, i64 %idxprom124
  %99 = load i16, i16* %arrayidx125, align 2
  %conv126 = sext i16 %99 to i32
  store i32 %conv126, i32* %target, align 4
  %100 = load i32, i32* %target, align 4
  %idxprom127 = sext i32 %100 to i64
  %101 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx128 = getelementptr inbounds %struct.gnode*, %struct.gnode** %101, i64 %idxprom127
  %102 = load %struct.gnode*, %struct.gnode** %arrayidx128, align 8
  store %struct.gnode* %102, %struct.gnode** %gptr, align 8
  %103 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node129 = getelementptr inbounds %struct.gnode, %struct.gnode* %103, i32 0, i32 0
  %104 = load i32, i32* %node129, align 4
  store i32 %104, i32* %node1, align 4
  %105 = load i32, i32* %node1, align 4
  %idxprom130 = sext i32 %105 to i64
  %106 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx131 = getelementptr inbounds %struct.gnode*, %struct.gnode** %106, i64 %idxprom130
  %107 = load %struct.gnode*, %struct.gnode** %arrayidx131, align 8
  store %struct.gnode* %107, %struct.gnode** %gptr1, align 8
  br label %for.cond.132

for.cond.132:                                     ; preds = %if.end.163, %if.end.123
  %108 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node133 = getelementptr inbounds %struct.gnode, %struct.gnode* %108, i32 0, i32 0
  %109 = load i32, i32* %node133, align 4
  %110 = load i32, i32* %target, align 4
  %cmp134 = icmp eq i32 %109, %110
  br i1 %cmp134, label %if.then.136, label %if.end.163

if.then.136:                                      ; preds = %for.cond.132
  %111 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive137 = getelementptr inbounds %struct.gnode, %struct.gnode* %111, i32 0, i32 6
  %112 = load i32, i32* %einactive137, align 4
  %cmp138 = icmp eq i32 %112, 1
  br i1 %cmp138, label %if.then.140, label %if.end.162

if.then.140:                                      ; preds = %if.then.136
  %113 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive141 = getelementptr inbounds %struct.gnode, %struct.gnode* %113, i32 0, i32 6
  store i32 0, i32* %einactive141, align 4
  store i32 1, i32* %wasInactive, align 4
  %114 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next142 = getelementptr inbounds %struct.gnode, %struct.gnode* %114, i32 0, i32 7
  %115 = load %struct.gnode*, %struct.gnode** %next142, align 8
  store %struct.gnode* %115, %struct.gnode** %gptr, align 8
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.159, %if.then.140
  %116 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp144 = icmp ne %struct.gnode* %116, null
  br i1 %cmp144, label %for.body.146, label %for.end.161

for.body.146:                                     ; preds = %for.cond.143
  %117 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node147 = getelementptr inbounds %struct.gnode, %struct.gnode* %117, i32 0, i32 0
  %118 = load i32, i32* %node147, align 4
  store i32 %118, i32* %node1, align 4
  %119 = load i32, i32* %node1, align 4
  %idxprom148 = sext i32 %119 to i64
  %120 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx149 = getelementptr inbounds %struct.gnode*, %struct.gnode** %120, i64 %idxprom148
  %121 = load %struct.gnode*, %struct.gnode** %arrayidx149, align 8
  store %struct.gnode* %121, %struct.gnode** %gptr1, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %if.end.156, %for.body.146
  %122 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node151 = getelementptr inbounds %struct.gnode, %struct.gnode* %122, i32 0, i32 0
  %123 = load i32, i32* %node151, align 4
  %124 = load i32, i32* %target, align 4
  %cmp152 = icmp eq i32 %123, %124
  br i1 %cmp152, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %for.cond.150
  %125 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive155 = getelementptr inbounds %struct.gnode, %struct.gnode* %125, i32 0, i32 6
  store i32 0, i32* %einactive155, align 4
  br label %for.end.158

if.end.156:                                       ; preds = %for.cond.150
  %126 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next157 = getelementptr inbounds %struct.gnode, %struct.gnode* %126, i32 0, i32 7
  %127 = load %struct.gnode*, %struct.gnode** %next157, align 8
  store %struct.gnode* %127, %struct.gnode** %gptr1, align 8
  br label %for.cond.150

for.end.158:                                      ; preds = %if.then.154
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.158
  %128 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next160 = getelementptr inbounds %struct.gnode, %struct.gnode* %128, i32 0, i32 7
  %129 = load %struct.gnode*, %struct.gnode** %next160, align 8
  store %struct.gnode* %129, %struct.gnode** %gptr, align 8
  br label %for.cond.143

for.end.161:                                      ; preds = %for.cond.143
  br label %if.end.162

if.end.162:                                       ; preds = %for.end.161, %if.then.136
  br label %for.end.165

if.end.163:                                       ; preds = %for.cond.132
  %130 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next164 = getelementptr inbounds %struct.gnode, %struct.gnode* %130, i32 0, i32 7
  %131 = load %struct.gnode*, %struct.gnode** %next164, align 8
  store %struct.gnode* %131, %struct.gnode** %gptr1, align 8
  br label %for.cond.132

for.end.165:                                      ; preds = %if.end.162
  %132 = load i32, i32* %source.addr, align 4
  %conv166 = trunc i32 %132 to i16
  %arrayidx167 = getelementptr inbounds [2 x i16], [2 x i16]* %dummy, i32 0, i64 1
  store i16 %conv166, i16* %arrayidx167, align 2
  %arraydecay168 = getelementptr inbounds [2 x i16], [2 x i16]* %dummy, i32 0, i32 0
  %133 = load i32, i32* %source.addr, align 4
  %134 = load i32, i32* %target, align 4
  %call169 = call i32 @prestrict(i16* %arraydecay168, i32 1, i32 %133, i32 %134)
  store i32 %call169, i32* %d, align 4
  %135 = load i32, i32* %d, align 4
  %cmp170 = icmp slt i32 %135, 0
  br i1 %cmp170, label %if.then.172, label %if.end.198

if.then.172:                                      ; preds = %for.end.165
  %136 = load i32, i32* %wasInactive, align 4
  %cmp173 = icmp eq i32 %136, 1
  br i1 %cmp173, label %if.then.175, label %if.end.197

if.then.175:                                      ; preds = %if.then.172
  %137 = load i32, i32* %target, align 4
  %idxprom176 = sext i32 %137 to i64
  %138 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx177 = getelementptr inbounds %struct.gnode*, %struct.gnode** %138, i64 %idxprom176
  %139 = load %struct.gnode*, %struct.gnode** %arrayidx177, align 8
  store %struct.gnode* %139, %struct.gnode** %gptr, align 8
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.194, %if.then.175
  %140 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp179 = icmp ne %struct.gnode* %140, null
  br i1 %cmp179, label %for.body.181, label %for.end.196

for.body.181:                                     ; preds = %for.cond.178
  %141 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node182 = getelementptr inbounds %struct.gnode, %struct.gnode* %141, i32 0, i32 0
  %142 = load i32, i32* %node182, align 4
  store i32 %142, i32* %node1, align 4
  %143 = load i32, i32* %node1, align 4
  %idxprom183 = sext i32 %143 to i64
  %144 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx184 = getelementptr inbounds %struct.gnode*, %struct.gnode** %144, i64 %idxprom183
  %145 = load %struct.gnode*, %struct.gnode** %arrayidx184, align 8
  store %struct.gnode* %145, %struct.gnode** %gptr1, align 8
  br label %for.cond.185

for.cond.185:                                     ; preds = %if.end.191, %for.body.181
  %146 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node186 = getelementptr inbounds %struct.gnode, %struct.gnode* %146, i32 0, i32 0
  %147 = load i32, i32* %node186, align 4
  %148 = load i32, i32* %target, align 4
  %cmp187 = icmp eq i32 %147, %148
  br i1 %cmp187, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %for.cond.185
  %149 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive190 = getelementptr inbounds %struct.gnode, %struct.gnode* %149, i32 0, i32 6
  store i32 1, i32* %einactive190, align 4
  br label %for.end.193

if.end.191:                                       ; preds = %for.cond.185
  %150 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next192 = getelementptr inbounds %struct.gnode, %struct.gnode* %150, i32 0, i32 7
  %151 = load %struct.gnode*, %struct.gnode** %next192, align 8
  store %struct.gnode* %151, %struct.gnode** %gptr1, align 8
  br label %for.cond.185

for.end.193:                                      ; preds = %if.then.189
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.end.193
  %152 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next195 = getelementptr inbounds %struct.gnode, %struct.gnode* %152, i32 0, i32 7
  %153 = load %struct.gnode*, %struct.gnode** %next195, align 8
  store %struct.gnode* %153, %struct.gnode** %gptr, align 8
  br label %for.cond.178

for.end.196:                                      ; preds = %for.cond.178
  store i32 0, i32* %wasInactive, align 4
  br label %if.end.197

if.end.197:                                       ; preds = %for.end.196, %if.then.172
  br label %while.cond.116

if.end.198:                                       ; preds = %for.end.165
  %154 = load i32, i32* %target, align 4
  %idxprom199 = sext i32 %154 to i64
  %155 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx200 = getelementptr inbounds %struct.nnode, %struct.nnode* %155, i64 %idxprom199
  %temp201 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx200, i32 0, i32 0
  %156 = load i32, i32* %temp201, align 4
  store i32 %156, i32* %distance, align 4
  %157 = load i32, i32* %targetCount, align 4
  %inc202 = add nsw i32 %157, 1
  store i32 %inc202, i32* %targetCount, align 4
  %158 = load i32, i32* %target, align 4
  %idxprom203 = sext i32 %158 to i64
  %159 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx204 = getelementptr inbounds %struct.nnode, %struct.nnode* %159, i64 %idxprom203
  %from2 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx204, i32 0, i32 3
  %160 = load i16, i16* %from2, align 2
  %conv205 = sext i16 %160 to i32
  store i32 %conv205, i32* %from, align 4
  store i32 1, i32* %number, align 4
  %161 = load i32, i32* %target, align 4
  %conv206 = trunc i32 %161 to i16
  %162 = load i16*, i16** @tempArray, align 8
  %arrayidx207 = getelementptr inbounds i16, i16* %162, i64 1
  store i16 %conv206, i16* %arrayidx207, align 2
  br label %while.cond.208

while.cond.208:                                   ; preds = %while.body.211, %if.end.198
  %163 = load i32, i32* %from, align 4
  %cmp209 = icmp ne i32 %163, 0
  br i1 %cmp209, label %while.body.211, label %while.end.220

while.body.211:                                   ; preds = %while.cond.208
  %164 = load i32, i32* %from, align 4
  %conv212 = trunc i32 %164 to i16
  %165 = load i32, i32* %number, align 4
  %inc213 = add nsw i32 %165, 1
  store i32 %inc213, i32* %number, align 4
  %idxprom214 = sext i32 %inc213 to i64
  %166 = load i16*, i16** @tempArray, align 8
  %arrayidx215 = getelementptr inbounds i16, i16* %166, i64 %idxprom214
  store i16 %conv212, i16* %arrayidx215, align 2
  %167 = load i32, i32* %from, align 4
  %idxprom216 = sext i32 %167 to i64
  %168 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx217 = getelementptr inbounds %struct.nnode, %struct.nnode* %168, i64 %idxprom216
  %from2218 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx217, i32 0, i32 3
  %169 = load i16, i16* %from2218, align 2
  %conv219 = sext i16 %169 to i32
  store i32 %conv219, i32* %from, align 4
  br label %while.cond.208

while.end.220:                                    ; preds = %while.cond.208
  call void @tpop(%struct.tnode** %indexRoot, %struct.tnode** %junkptr, i32* %pindex, i32* %junk)
  %170 = load i32, i32* %pindex, align 4
  %idxprom221 = sext i32 %170 to i64
  %171 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx222 = getelementptr inbounds %struct.path, %struct.path* %171, i64 %idxprom221
  %p223 = getelementptr inbounds %struct.path, %struct.path* %arrayidx222, i32 0, i32 1
  store i32 1, i32* %p223, align 4
  %172 = load i32, i32* %number, align 4
  %sub224 = sub nsw i32 %172, 1
  %173 = load i32, i32* %pindex, align 4
  %idxprom225 = sext i32 %173 to i64
  %174 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx226 = getelementptr inbounds %struct.path, %struct.path* %174, i64 %idxprom225
  %q227 = getelementptr inbounds %struct.path, %struct.path* %arrayidx226, i32 0, i32 2
  store i32 %sub224, i32* %q227, align 4
  %175 = load i32, i32* %pindex, align 4
  %idxprom228 = sext i32 %175 to i64
  %176 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx229 = getelementptr inbounds %struct.path, %struct.path* %176, i64 %idxprom228
  %excluded = getelementptr inbounds %struct.path, %struct.path* %arrayidx229, i32 0, i32 3
  store i32 0, i32* %excluded, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.230

for.cond.230:                                     ; preds = %for.inc.242, %while.end.220
  %177 = load i32, i32* %j, align 4
  %178 = load i32, i32* %number, align 4
  %cmp231 = icmp sle i32 %177, %178
  br i1 %cmp231, label %for.body.233, label %for.end.244

for.body.233:                                     ; preds = %for.cond.230
  %179 = load i32, i32* %j, align 4
  %idxprom234 = sext i32 %179 to i64
  %180 = load i16*, i16** @tempArray, align 8
  %arrayidx235 = getelementptr inbounds i16, i16* %180, i64 %idxprom234
  %181 = load i16, i16* %arrayidx235, align 2
  %182 = load i32, i32* %number, align 4
  %183 = load i32, i32* %j, align 4
  %sub236 = sub nsw i32 %182, %183
  %add237 = add nsw i32 %sub236, 1
  %idxprom238 = sext i32 %add237 to i64
  %184 = load i32, i32* %pindex, align 4
  %idxprom239 = sext i32 %184 to i64
  %185 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx240 = getelementptr inbounds %struct.path, %struct.path* %185, i64 %idxprom239
  %nodeset = getelementptr inbounds %struct.path, %struct.path* %arrayidx240, i32 0, i32 0
  %186 = load i16*, i16** %nodeset, align 8
  %arrayidx241 = getelementptr inbounds i16, i16* %186, i64 %idxprom238
  store i16 %181, i16* %arrayidx241, align 2
  br label %for.inc.242

for.inc.242:                                      ; preds = %for.body.233
  %187 = load i32, i32* %j, align 4
  %inc243 = add nsw i32 %187, 1
  store i32 %inc243, i32* %j, align 4
  br label %for.cond.230

for.end.244:                                      ; preds = %for.cond.230
  %188 = load i32, i32* %distance, align 4
  %189 = load i32, i32* %pindex, align 4
  call void @tinsert(%struct.tnode** %root1, i32 %188, i32 %189)
  %190 = load i32, i32* %treeSize, align 4
  %inc245 = add nsw i32 %190, 1
  store i32 %inc245, i32* %treeSize, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %if.end.561, %if.then.308, %for.end.244
  call void @tpop(%struct.tnode** %root1, %struct.tnode** %node, i32* %distance, i32* %index)
  %191 = load i32, i32* %treeSize, align 4
  %dec = add nsw i32 %191, -1
  store i32 %dec, i32* %treeSize, align 4
  %192 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp247 = icmp eq %struct.tnode* %192, null
  br i1 %cmp247, label %if.then.249, label %if.end.250

if.then.249:                                      ; preds = %for.cond.246
  br label %for.end.562

if.end.250:                                       ; preds = %for.cond.246
  %193 = load i32, i32* %distance, align 4
  %194 = load i32, i32* %index, align 4
  call void @tinsert(%struct.tnode** %rsave, i32 %193, i32 %194)
  %195 = load i32, i32* %tree2size, align 4
  %inc251 = add nsw i32 %195, 1
  store i32 %inc251, i32* %tree2size, align 4
  %196 = load i32, i32* %numberPaths, align 4
  %inc252 = add nsw i32 %196, 1
  store i32 %inc252, i32* %numberPaths, align 4
  %197 = load i32, i32* @Mpaths, align 4
  %cmp253 = icmp sge i32 %inc252, %197
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %if.end.250
  br label %for.end.562

if.end.256:                                       ; preds = %if.end.250
  %198 = load i32, i32* %index, align 4
  %idxprom257 = sext i32 %198 to i64
  %199 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx258 = getelementptr inbounds %struct.path, %struct.path* %199, i64 %idxprom257
  %nodeset259 = getelementptr inbounds %struct.path, %struct.path* %arrayidx258, i32 0, i32 0
  %200 = load i16*, i16** %nodeset259, align 8
  store i16* %200, i16** %ptr, align 8
  %201 = load i32, i32* %index, align 4
  %idxprom260 = sext i32 %201 to i64
  %202 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx261 = getelementptr inbounds %struct.path, %struct.path* %202, i64 %idxprom260
  %p262 = getelementptr inbounds %struct.path, %struct.path* %arrayidx261, i32 0, i32 1
  %203 = load i32, i32* %p262, align 4
  store i32 %203, i32* %p, align 4
  %204 = load i32, i32* %index, align 4
  %idxprom263 = sext i32 %204 to i64
  %205 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx264 = getelementptr inbounds %struct.path, %struct.path* %205, i64 %idxprom263
  %q265 = getelementptr inbounds %struct.path, %struct.path* %arrayidx264, i32 0, i32 2
  %206 = load i32, i32* %q265, align 4
  store i32 %206, i32* %q, align 4
  %207 = load i32, i32* %index, align 4
  %idxprom266 = sext i32 %207 to i64
  %208 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx267 = getelementptr inbounds %struct.path, %struct.path* %208, i64 %idxprom266
  %excluded268 = getelementptr inbounds %struct.path, %struct.path* %arrayidx267, i32 0, i32 3
  %209 = load i32, i32* %excluded268, align 4
  store i32 %209, i32* %exnum, align 4
  %210 = load i32, i32* %index, align 4
  %idxprom269 = sext i32 %210 to i64
  %211 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx270 = getelementptr inbounds %struct.path, %struct.path* %211, i64 %idxprom269
  %exlist = getelementptr inbounds %struct.path, %struct.path* %arrayidx270, i32 0, i32 4
  %arraydecay271 = getelementptr inbounds [5 x i32], [5 x i32]* %exlist, i32 0, i32 0
  store i32* %arraydecay271, i32** %eptr, align 8
  %212 = load i32, i32* %p, align 4
  %213 = load i32, i32* %q, align 4
  %cmp272 = icmp eq i32 %212, %213
  br i1 %cmp272, label %if.then.274, label %if.else.403

if.then.274:                                      ; preds = %if.end.256
  %214 = load i32, i32* %exnum, align 4
  %add275 = add nsw i32 %214, 1
  %arrayidx276 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  store i32 %add275, i32* %arrayidx276, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.285, %if.then.274
  %215 = load i32, i32* %i, align 4
  %216 = load i32, i32* %exnum, align 4
  %cmp278 = icmp sle i32 %215, %216
  br i1 %cmp278, label %for.body.280, label %for.end.287

for.body.280:                                     ; preds = %for.cond.277
  %217 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %217 to i64
  %218 = load i32*, i32** %eptr, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %218, i64 %idxprom281
  %219 = load i32, i32* %arrayidx282, align 4
  %220 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %220 to i64
  %arrayidx284 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 %idxprom283
  store i32 %219, i32* %arrayidx284, align 4
  br label %for.inc.285

for.inc.285:                                      ; preds = %for.body.280
  %221 = load i32, i32* %i, align 4
  %inc286 = add nsw i32 %221, 1
  store i32 %inc286, i32* %i, align 4
  br label %for.cond.277

for.end.287:                                      ; preds = %for.cond.277
  %222 = load i32, i32* %p, align 4
  %add288 = add nsw i32 %222, 1
  %idxprom289 = sext i32 %add288 to i64
  %223 = load i16*, i16** %ptr, align 8
  %arrayidx290 = getelementptr inbounds i16, i16* %223, i64 %idxprom289
  %224 = load i16, i16* %arrayidx290, align 2
  %conv291 = sext i16 %224 to i32
  %arrayidx292 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %225 = load i32, i32* %arrayidx292, align 4
  %idxprom293 = sext i32 %225 to i64
  %arrayidx294 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 %idxprom293
  store i32 %conv291, i32* %arrayidx294, align 4
  %226 = load i16*, i16** %ptr, align 8
  %227 = load i32, i32* %p, align 4
  %arrayidx295 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %228 = load i32, i32* %arrayidx295, align 4
  %arrayidx296 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 1
  %229 = load i32, i32* %arrayidx296, align 4
  %arrayidx297 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 2
  %230 = load i32, i32* %arrayidx297, align 4
  %arrayidx298 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 3
  %231 = load i32, i32* %arrayidx298, align 4
  %arrayidx299 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 4
  %232 = load i32, i32* %arrayidx299, align 4
  call void @greduce(i16* %226, i32 %227, i32 %228, i32 %229, i32 %230, i32 %231, i32 %232)
  %233 = load i16*, i16** %ptr, align 8
  %234 = load i32, i32* %p, align 4
  %235 = load i32, i32* %source.addr, align 4
  %236 = load i32, i32* %target, align 4
  %call300 = call i32 @prestrict(i16* %233, i32 %234, i32 %235, i32 %236)
  store i32 %call300, i32* %d, align 4
  %237 = load i16*, i16** %ptr, align 8
  %238 = load i32, i32* %p, align 4
  %arrayidx301 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %239 = load i32, i32* %arrayidx301, align 4
  %arrayidx302 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 1
  %240 = load i32, i32* %arrayidx302, align 4
  %arrayidx303 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 2
  %241 = load i32, i32* %arrayidx303, align 4
  %arrayidx304 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 3
  %242 = load i32, i32* %arrayidx304, align 4
  %arrayidx305 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 4
  %243 = load i32, i32* %arrayidx305, align 4
  call void @gunreduce(i16* %237, i32 %238, i32 %239, i32 %240, i32 %241, i32 %242, i32 %243)
  %244 = load i32, i32* %d, align 4
  %cmp306 = icmp slt i32 %244, 0
  br i1 %cmp306, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %for.end.287
  br label %for.cond.246

if.end.309:                                       ; preds = %for.end.287
  %245 = load i32, i32* %target, align 4
  %idxprom310 = sext i32 %245 to i64
  %246 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx311 = getelementptr inbounds %struct.nnode, %struct.nnode* %246, i64 %idxprom310
  %temp312 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx311, i32 0, i32 0
  %247 = load i32, i32* %temp312, align 4
  %248 = load i32, i32* %d, align 4
  %add313 = add nsw i32 %247, %248
  store i32 %add313, i32* %distance, align 4
  %249 = load i32, i32* %target, align 4
  %idxprom314 = sext i32 %249 to i64
  %250 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx315 = getelementptr inbounds %struct.nnode, %struct.nnode* %250, i64 %idxprom314
  %from2316 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx315, i32 0, i32 3
  %251 = load i16, i16* %from2316, align 2
  %conv317 = sext i16 %251 to i32
  store i32 %conv317, i32* %from, align 4
  store i32 1, i32* %number, align 4
  %252 = load i32, i32* %target, align 4
  %conv318 = trunc i32 %252 to i16
  %253 = load i16*, i16** @tempArray, align 8
  %arrayidx319 = getelementptr inbounds i16, i16* %253, i64 1
  store i16 %conv318, i16* %arrayidx319, align 2
  br label %while.cond.320

while.cond.320:                                   ; preds = %while.body.323, %if.end.309
  %254 = load i32, i32* %from, align 4
  %cmp321 = icmp ne i32 %254, 0
  br i1 %cmp321, label %while.body.323, label %while.end.332

while.body.323:                                   ; preds = %while.cond.320
  %255 = load i32, i32* %from, align 4
  %conv324 = trunc i32 %255 to i16
  %256 = load i32, i32* %number, align 4
  %inc325 = add nsw i32 %256, 1
  store i32 %inc325, i32* %number, align 4
  %idxprom326 = sext i32 %inc325 to i64
  %257 = load i16*, i16** @tempArray, align 8
  %arrayidx327 = getelementptr inbounds i16, i16* %257, i64 %idxprom326
  store i16 %conv324, i16* %arrayidx327, align 2
  %258 = load i32, i32* %from, align 4
  %idxprom328 = sext i32 %258 to i64
  %259 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx329 = getelementptr inbounds %struct.nnode, %struct.nnode* %259, i64 %idxprom328
  %from2330 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx329, i32 0, i32 3
  %260 = load i16, i16* %from2330, align 2
  %conv331 = sext i16 %260 to i32
  store i32 %conv331, i32* %from, align 4
  br label %while.cond.320

while.end.332:                                    ; preds = %while.cond.320
  %261 = load i32, i32* %p, align 4
  %sub333 = sub nsw i32 %261, 1
  store i32 %sub333, i32* %i, align 4
  br label %for.cond.334

for.cond.334:                                     ; preds = %for.inc.343, %while.end.332
  %262 = load i32, i32* %i, align 4
  %cmp335 = icmp sge i32 %262, 1
  br i1 %cmp335, label %for.body.337, label %for.end.345

for.body.337:                                     ; preds = %for.cond.334
  %263 = load i32, i32* %i, align 4
  %idxprom338 = sext i32 %263 to i64
  %264 = load i16*, i16** %ptr, align 8
  %arrayidx339 = getelementptr inbounds i16, i16* %264, i64 %idxprom338
  %265 = load i16, i16* %arrayidx339, align 2
  %266 = load i32, i32* %number, align 4
  %inc340 = add nsw i32 %266, 1
  store i32 %inc340, i32* %number, align 4
  %idxprom341 = sext i32 %inc340 to i64
  %267 = load i16*, i16** @tempArray, align 8
  %arrayidx342 = getelementptr inbounds i16, i16* %267, i64 %idxprom341
  store i16 %265, i16* %arrayidx342, align 2
  br label %for.inc.343

for.inc.343:                                      ; preds = %for.body.337
  %268 = load i32, i32* %i, align 4
  %dec344 = add nsw i32 %268, -1
  store i32 %dec344, i32* %i, align 4
  br label %for.cond.334

for.end.345:                                      ; preds = %for.cond.334
  call void @tpop(%struct.tnode** %indexRoot, %struct.tnode** %junkptr, i32* %pindex, i32* %junk)
  %269 = load i32, i32* %p, align 4
  %270 = load i32, i32* %pindex, align 4
  %idxprom346 = sext i32 %270 to i64
  %271 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx347 = getelementptr inbounds %struct.path, %struct.path* %271, i64 %idxprom346
  %p348 = getelementptr inbounds %struct.path, %struct.path* %arrayidx347, i32 0, i32 1
  store i32 %269, i32* %p348, align 4
  %272 = load i32, i32* %number, align 4
  %sub349 = sub nsw i32 %272, 1
  %273 = load i32, i32* %pindex, align 4
  %idxprom350 = sext i32 %273 to i64
  %274 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx351 = getelementptr inbounds %struct.path, %struct.path* %274, i64 %idxprom350
  %q352 = getelementptr inbounds %struct.path, %struct.path* %arrayidx351, i32 0, i32 2
  store i32 %sub349, i32* %q352, align 4
  %arrayidx353 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %275 = load i32, i32* %arrayidx353, align 4
  %276 = load i32, i32* %pindex, align 4
  %idxprom354 = sext i32 %276 to i64
  %277 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx355 = getelementptr inbounds %struct.path, %struct.path* %277, i64 %idxprom354
  %excluded356 = getelementptr inbounds %struct.path, %struct.path* %arrayidx355, i32 0, i32 3
  store i32 %275, i32* %excluded356, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.357

for.cond.357:                                     ; preds = %for.inc.369, %for.end.345
  %278 = load i32, i32* %i, align 4
  %arrayidx358 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %279 = load i32, i32* %arrayidx358, align 4
  %cmp359 = icmp sle i32 %278, %279
  br i1 %cmp359, label %for.body.361, label %for.end.371

for.body.361:                                     ; preds = %for.cond.357
  %280 = load i32, i32* %i, align 4
  %idxprom362 = sext i32 %280 to i64
  %arrayidx363 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 %idxprom362
  %281 = load i32, i32* %arrayidx363, align 4
  %282 = load i32, i32* %i, align 4
  %idxprom364 = sext i32 %282 to i64
  %283 = load i32, i32* %pindex, align 4
  %idxprom365 = sext i32 %283 to i64
  %284 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx366 = getelementptr inbounds %struct.path, %struct.path* %284, i64 %idxprom365
  %exlist367 = getelementptr inbounds %struct.path, %struct.path* %arrayidx366, i32 0, i32 4
  %arrayidx368 = getelementptr inbounds [5 x i32], [5 x i32]* %exlist367, i32 0, i64 %idxprom364
  store i32 %281, i32* %arrayidx368, align 4
  br label %for.inc.369

for.inc.369:                                      ; preds = %for.body.361
  %285 = load i32, i32* %i, align 4
  %inc370 = add nsw i32 %285, 1
  store i32 %inc370, i32* %i, align 4
  br label %for.cond.357

for.end.371:                                      ; preds = %for.cond.357
  store i32 1, i32* %j, align 4
  br label %for.cond.372

for.cond.372:                                     ; preds = %for.inc.385, %for.end.371
  %286 = load i32, i32* %j, align 4
  %287 = load i32, i32* %number, align 4
  %cmp373 = icmp sle i32 %286, %287
  br i1 %cmp373, label %for.body.375, label %for.end.387

for.body.375:                                     ; preds = %for.cond.372
  %288 = load i32, i32* %j, align 4
  %idxprom376 = sext i32 %288 to i64
  %289 = load i16*, i16** @tempArray, align 8
  %arrayidx377 = getelementptr inbounds i16, i16* %289, i64 %idxprom376
  %290 = load i16, i16* %arrayidx377, align 2
  %291 = load i32, i32* %number, align 4
  %292 = load i32, i32* %j, align 4
  %sub378 = sub nsw i32 %291, %292
  %add379 = add nsw i32 %sub378, 1
  %idxprom380 = sext i32 %add379 to i64
  %293 = load i32, i32* %pindex, align 4
  %idxprom381 = sext i32 %293 to i64
  %294 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx382 = getelementptr inbounds %struct.path, %struct.path* %294, i64 %idxprom381
  %nodeset383 = getelementptr inbounds %struct.path, %struct.path* %arrayidx382, i32 0, i32 0
  %295 = load i16*, i16** %nodeset383, align 8
  %arrayidx384 = getelementptr inbounds i16, i16* %295, i64 %idxprom380
  store i16 %290, i16* %arrayidx384, align 2
  br label %for.inc.385

for.inc.385:                                      ; preds = %for.body.375
  %296 = load i32, i32* %j, align 4
  %inc386 = add nsw i32 %296, 1
  store i32 %inc386, i32* %j, align 4
  br label %for.cond.372

for.end.387:                                      ; preds = %for.cond.372
  %297 = load i32, i32* %distance, align 4
  %298 = load i32, i32* %pindex, align 4
  call void @tinsert(%struct.tnode** %root1, i32 %297, i32 %298)
  %299 = load i32, i32* %treeSize, align 4
  %inc388 = add nsw i32 %299, 1
  store i32 %inc388, i32* %treeSize, align 4
  %300 = load i32, i32* %treeSize, align 4
  %301 = load i32, i32* @Mpaths, align 4
  %302 = load i32, i32* %numberPaths, align 4
  %sub389 = sub nsw i32 %301, %302
  %sub390 = sub nsw i32 %300, %sub389
  store i32 %sub390, i32* %count, align 4
  %303 = load i32, i32* %count, align 4
  %cmp391 = icmp sgt i32 %303, 0
  br i1 %cmp391, label %if.then.393, label %if.end.402

if.then.393:                                      ; preds = %for.end.387
  store i32 1, i32* %c, align 4
  br label %for.cond.394

for.cond.394:                                     ; preds = %for.inc.398, %if.then.393
  %304 = load i32, i32* %c, align 4
  %305 = load i32, i32* %count, align 4
  %cmp395 = icmp sle i32 %304, %305
  br i1 %cmp395, label %for.body.397, label %for.end.400

for.body.397:                                     ; preds = %for.cond.394
  call void @tmax(%struct.tnode** %root1, %struct.tnode** %node, i32* %value, i32* %xindex)
  %306 = load i32, i32* %value, align 4
  %307 = load i32, i32* %xindex, align 4
  call void @tdelete(%struct.tnode** %root1, i32 %306, i32 %307)
  %308 = load i32, i32* %xindex, align 4
  call void @tinsert(%struct.tnode** %indexRoot, i32 %308, i32 0)
  br label %for.inc.398

for.inc.398:                                      ; preds = %for.body.397
  %309 = load i32, i32* %c, align 4
  %inc399 = add nsw i32 %309, 1
  store i32 %inc399, i32* %c, align 4
  br label %for.cond.394

for.end.400:                                      ; preds = %for.cond.394
  %310 = load i32, i32* %count, align 4
  %311 = load i32, i32* %treeSize, align 4
  %sub401 = sub nsw i32 %311, %310
  store i32 %sub401, i32* %treeSize, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %for.end.400, %for.end.387
  br label %if.end.561

if.else.403:                                      ; preds = %if.end.256
  store i32 1, i32* %k, align 4
  br label %for.cond.404

for.cond.404:                                     ; preds = %for.inc.558, %if.else.403
  %312 = load i32, i32* %k, align 4
  %313 = load i32, i32* %q, align 4
  %314 = load i32, i32* %p, align 4
  %sub405 = sub nsw i32 %313, %314
  %add406 = add nsw i32 %sub405, 1
  %cmp407 = icmp sle i32 %312, %add406
  br i1 %cmp407, label %for.body.409, label %for.end.560

for.body.409:                                     ; preds = %for.cond.404
  %315 = load i32, i32* %k, align 4
  %cmp410 = icmp eq i32 %315, 1
  br i1 %cmp410, label %if.then.412, label %if.else.433

if.then.412:                                      ; preds = %for.body.409
  %316 = load i32, i32* %exnum, align 4
  %add413 = add nsw i32 %316, 1
  %arrayidx414 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  store i32 %add413, i32* %arrayidx414, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.415

for.cond.415:                                     ; preds = %for.inc.423, %if.then.412
  %317 = load i32, i32* %i, align 4
  %318 = load i32, i32* %exnum, align 4
  %cmp416 = icmp sle i32 %317, %318
  br i1 %cmp416, label %for.body.418, label %for.end.425

for.body.418:                                     ; preds = %for.cond.415
  %319 = load i32, i32* %i, align 4
  %idxprom419 = sext i32 %319 to i64
  %320 = load i32*, i32** %eptr, align 8
  %arrayidx420 = getelementptr inbounds i32, i32* %320, i64 %idxprom419
  %321 = load i32, i32* %arrayidx420, align 4
  %322 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %322 to i64
  %arrayidx422 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 %idxprom421
  store i32 %321, i32* %arrayidx422, align 4
  br label %for.inc.423

for.inc.423:                                      ; preds = %for.body.418
  %323 = load i32, i32* %i, align 4
  %inc424 = add nsw i32 %323, 1
  store i32 %inc424, i32* %i, align 4
  br label %for.cond.415

for.end.425:                                      ; preds = %for.cond.415
  %324 = load i32, i32* %p, align 4
  %add426 = add nsw i32 %324, 1
  %idxprom427 = sext i32 %add426 to i64
  %325 = load i16*, i16** %ptr, align 8
  %arrayidx428 = getelementptr inbounds i16, i16* %325, i64 %idxprom427
  %326 = load i16, i16* %arrayidx428, align 2
  %conv429 = sext i16 %326 to i32
  %arrayidx430 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %327 = load i32, i32* %arrayidx430, align 4
  %idxprom431 = sext i32 %327 to i64
  %arrayidx432 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 %idxprom431
  store i32 %conv429, i32* %arrayidx432, align 4
  br label %if.end.440

if.else.433:                                      ; preds = %for.body.409
  %328 = load i32, i32* %p, align 4
  %329 = load i32, i32* %k, align 4
  %add434 = add nsw i32 %328, %329
  %idxprom435 = sext i32 %add434 to i64
  %330 = load i16*, i16** %ptr, align 8
  %arrayidx436 = getelementptr inbounds i16, i16* %330, i64 %idxprom435
  %331 = load i16, i16* %arrayidx436, align 2
  %conv437 = sext i16 %331 to i32
  %arrayidx438 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  store i32 1, i32* %arrayidx438, align 4
  %arrayidx439 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 1
  store i32 %conv437, i32* %arrayidx439, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.else.433, %for.end.425
  %332 = load i16*, i16** %ptr, align 8
  %333 = load i32, i32* %p, align 4
  %334 = load i32, i32* %k, align 4
  %add441 = add nsw i32 %333, %334
  %sub442 = sub nsw i32 %add441, 1
  %arrayidx443 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %335 = load i32, i32* %arrayidx443, align 4
  %arrayidx444 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 1
  %336 = load i32, i32* %arrayidx444, align 4
  %arrayidx445 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 2
  %337 = load i32, i32* %arrayidx445, align 4
  %arrayidx446 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 3
  %338 = load i32, i32* %arrayidx446, align 4
  %arrayidx447 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 4
  %339 = load i32, i32* %arrayidx447, align 4
  call void @greduce(i16* %332, i32 %sub442, i32 %335, i32 %336, i32 %337, i32 %338, i32 %339)
  %340 = load i16*, i16** %ptr, align 8
  %341 = load i32, i32* %p, align 4
  %342 = load i32, i32* %k, align 4
  %add448 = add nsw i32 %341, %342
  %sub449 = sub nsw i32 %add448, 1
  %343 = load i32, i32* %source.addr, align 4
  %344 = load i32, i32* %target, align 4
  %call450 = call i32 @prestrict(i16* %340, i32 %sub449, i32 %343, i32 %344)
  store i32 %call450, i32* %d, align 4
  %345 = load i16*, i16** %ptr, align 8
  %346 = load i32, i32* %p, align 4
  %347 = load i32, i32* %k, align 4
  %add451 = add nsw i32 %346, %347
  %sub452 = sub nsw i32 %add451, 1
  %arrayidx453 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %348 = load i32, i32* %arrayidx453, align 4
  %arrayidx454 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 1
  %349 = load i32, i32* %arrayidx454, align 4
  %arrayidx455 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 2
  %350 = load i32, i32* %arrayidx455, align 4
  %arrayidx456 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 3
  %351 = load i32, i32* %arrayidx456, align 4
  %arrayidx457 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 4
  %352 = load i32, i32* %arrayidx457, align 4
  call void @gunreduce(i16* %345, i32 %sub452, i32 %348, i32 %349, i32 %350, i32 %351, i32 %352)
  %353 = load i32, i32* %d, align 4
  %cmp458 = icmp slt i32 %353, 0
  br i1 %cmp458, label %if.then.460, label %if.end.461

if.then.460:                                      ; preds = %if.end.440
  br label %for.inc.558

if.end.461:                                       ; preds = %if.end.440
  %354 = load i32, i32* %target, align 4
  %idxprom462 = sext i32 %354 to i64
  %355 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx463 = getelementptr inbounds %struct.nnode, %struct.nnode* %355, i64 %idxprom462
  %temp464 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx463, i32 0, i32 0
  %356 = load i32, i32* %temp464, align 4
  %357 = load i32, i32* %d, align 4
  %add465 = add nsw i32 %356, %357
  store i32 %add465, i32* %distance, align 4
  %358 = load i32, i32* %target, align 4
  %idxprom466 = sext i32 %358 to i64
  %359 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx467 = getelementptr inbounds %struct.nnode, %struct.nnode* %359, i64 %idxprom466
  %from2468 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx467, i32 0, i32 3
  %360 = load i16, i16* %from2468, align 2
  %conv469 = sext i16 %360 to i32
  store i32 %conv469, i32* %from, align 4
  store i32 1, i32* %number, align 4
  %361 = load i32, i32* %target, align 4
  %conv470 = trunc i32 %361 to i16
  %362 = load i16*, i16** @tempArray, align 8
  %arrayidx471 = getelementptr inbounds i16, i16* %362, i64 1
  store i16 %conv470, i16* %arrayidx471, align 2
  br label %while.cond.472

while.cond.472:                                   ; preds = %while.body.475, %if.end.461
  %363 = load i32, i32* %from, align 4
  %cmp473 = icmp ne i32 %363, 0
  br i1 %cmp473, label %while.body.475, label %while.end.484

while.body.475:                                   ; preds = %while.cond.472
  %364 = load i32, i32* %from, align 4
  %conv476 = trunc i32 %364 to i16
  %365 = load i32, i32* %number, align 4
  %inc477 = add nsw i32 %365, 1
  store i32 %inc477, i32* %number, align 4
  %idxprom478 = sext i32 %inc477 to i64
  %366 = load i16*, i16** @tempArray, align 8
  %arrayidx479 = getelementptr inbounds i16, i16* %366, i64 %idxprom478
  store i16 %conv476, i16* %arrayidx479, align 2
  %367 = load i32, i32* %from, align 4
  %idxprom480 = sext i32 %367 to i64
  %368 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx481 = getelementptr inbounds %struct.nnode, %struct.nnode* %368, i64 %idxprom480
  %from2482 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx481, i32 0, i32 3
  %369 = load i16, i16* %from2482, align 2
  %conv483 = sext i16 %369 to i32
  store i32 %conv483, i32* %from, align 4
  br label %while.cond.472

while.end.484:                                    ; preds = %while.cond.472
  %370 = load i32, i32* %p, align 4
  %371 = load i32, i32* %k, align 4
  %add485 = add nsw i32 %370, %371
  %sub486 = sub nsw i32 %add485, 2
  store i32 %sub486, i32* %i, align 4
  br label %for.cond.487

for.cond.487:                                     ; preds = %for.inc.496, %while.end.484
  %372 = load i32, i32* %i, align 4
  %cmp488 = icmp sge i32 %372, 1
  br i1 %cmp488, label %for.body.490, label %for.end.498

for.body.490:                                     ; preds = %for.cond.487
  %373 = load i32, i32* %i, align 4
  %idxprom491 = sext i32 %373 to i64
  %374 = load i16*, i16** %ptr, align 8
  %arrayidx492 = getelementptr inbounds i16, i16* %374, i64 %idxprom491
  %375 = load i16, i16* %arrayidx492, align 2
  %376 = load i32, i32* %number, align 4
  %inc493 = add nsw i32 %376, 1
  store i32 %inc493, i32* %number, align 4
  %idxprom494 = sext i32 %inc493 to i64
  %377 = load i16*, i16** @tempArray, align 8
  %arrayidx495 = getelementptr inbounds i16, i16* %377, i64 %idxprom494
  store i16 %375, i16* %arrayidx495, align 2
  br label %for.inc.496

for.inc.496:                                      ; preds = %for.body.490
  %378 = load i32, i32* %i, align 4
  %dec497 = add nsw i32 %378, -1
  store i32 %dec497, i32* %i, align 4
  br label %for.cond.487

for.end.498:                                      ; preds = %for.cond.487
  call void @tpop(%struct.tnode** %indexRoot, %struct.tnode** %junkptr, i32* %pindex, i32* %junk)
  %379 = load i32, i32* %treeSize, align 4
  %inc499 = add nsw i32 %379, 1
  store i32 %inc499, i32* %treeSize, align 4
  %380 = load i32, i32* %p, align 4
  %381 = load i32, i32* %k, align 4
  %add500 = add nsw i32 %380, %381
  %sub501 = sub nsw i32 %add500, 1
  %382 = load i32, i32* %pindex, align 4
  %idxprom502 = sext i32 %382 to i64
  %383 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx503 = getelementptr inbounds %struct.path, %struct.path* %383, i64 %idxprom502
  %p504 = getelementptr inbounds %struct.path, %struct.path* %arrayidx503, i32 0, i32 1
  store i32 %sub501, i32* %p504, align 4
  %384 = load i32, i32* %number, align 4
  %sub505 = sub nsw i32 %384, 1
  %385 = load i32, i32* %pindex, align 4
  %idxprom506 = sext i32 %385 to i64
  %386 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx507 = getelementptr inbounds %struct.path, %struct.path* %386, i64 %idxprom506
  %q508 = getelementptr inbounds %struct.path, %struct.path* %arrayidx507, i32 0, i32 2
  store i32 %sub505, i32* %q508, align 4
  %arrayidx509 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %387 = load i32, i32* %arrayidx509, align 4
  %388 = load i32, i32* %pindex, align 4
  %idxprom510 = sext i32 %388 to i64
  %389 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx511 = getelementptr inbounds %struct.path, %struct.path* %389, i64 %idxprom510
  %excluded512 = getelementptr inbounds %struct.path, %struct.path* %arrayidx511, i32 0, i32 3
  store i32 %387, i32* %excluded512, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.513

for.cond.513:                                     ; preds = %for.inc.525, %for.end.498
  %390 = load i32, i32* %i, align 4
  %arrayidx514 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 0
  %391 = load i32, i32* %arrayidx514, align 4
  %cmp515 = icmp sle i32 %390, %391
  br i1 %cmp515, label %for.body.517, label %for.end.527

for.body.517:                                     ; preds = %for.cond.513
  %392 = load i32, i32* %i, align 4
  %idxprom518 = sext i32 %392 to i64
  %arrayidx519 = getelementptr inbounds [5 x i32], [5 x i32]* %ex, i32 0, i64 %idxprom518
  %393 = load i32, i32* %arrayidx519, align 4
  %394 = load i32, i32* %i, align 4
  %idxprom520 = sext i32 %394 to i64
  %395 = load i32, i32* %pindex, align 4
  %idxprom521 = sext i32 %395 to i64
  %396 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx522 = getelementptr inbounds %struct.path, %struct.path* %396, i64 %idxprom521
  %exlist523 = getelementptr inbounds %struct.path, %struct.path* %arrayidx522, i32 0, i32 4
  %arrayidx524 = getelementptr inbounds [5 x i32], [5 x i32]* %exlist523, i32 0, i64 %idxprom520
  store i32 %393, i32* %arrayidx524, align 4
  br label %for.inc.525

for.inc.525:                                      ; preds = %for.body.517
  %397 = load i32, i32* %i, align 4
  %inc526 = add nsw i32 %397, 1
  store i32 %inc526, i32* %i, align 4
  br label %for.cond.513

for.end.527:                                      ; preds = %for.cond.513
  store i32 1, i32* %j, align 4
  br label %for.cond.528

for.cond.528:                                     ; preds = %for.inc.541, %for.end.527
  %398 = load i32, i32* %j, align 4
  %399 = load i32, i32* %number, align 4
  %cmp529 = icmp sle i32 %398, %399
  br i1 %cmp529, label %for.body.531, label %for.end.543

for.body.531:                                     ; preds = %for.cond.528
  %400 = load i32, i32* %j, align 4
  %idxprom532 = sext i32 %400 to i64
  %401 = load i16*, i16** @tempArray, align 8
  %arrayidx533 = getelementptr inbounds i16, i16* %401, i64 %idxprom532
  %402 = load i16, i16* %arrayidx533, align 2
  %403 = load i32, i32* %number, align 4
  %404 = load i32, i32* %j, align 4
  %sub534 = sub nsw i32 %403, %404
  %add535 = add nsw i32 %sub534, 1
  %idxprom536 = sext i32 %add535 to i64
  %405 = load i32, i32* %pindex, align 4
  %idxprom537 = sext i32 %405 to i64
  %406 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx538 = getelementptr inbounds %struct.path, %struct.path* %406, i64 %idxprom537
  %nodeset539 = getelementptr inbounds %struct.path, %struct.path* %arrayidx538, i32 0, i32 0
  %407 = load i16*, i16** %nodeset539, align 8
  %arrayidx540 = getelementptr inbounds i16, i16* %407, i64 %idxprom536
  store i16 %402, i16* %arrayidx540, align 2
  br label %for.inc.541

for.inc.541:                                      ; preds = %for.body.531
  %408 = load i32, i32* %j, align 4
  %inc542 = add nsw i32 %408, 1
  store i32 %inc542, i32* %j, align 4
  br label %for.cond.528

for.end.543:                                      ; preds = %for.cond.528
  %409 = load i32, i32* %distance, align 4
  %410 = load i32, i32* %pindex, align 4
  call void @tinsert(%struct.tnode** %root1, i32 %409, i32 %410)
  %411 = load i32, i32* %treeSize, align 4
  %412 = load i32, i32* @Mpaths, align 4
  %413 = load i32, i32* %numberPaths, align 4
  %sub544 = sub nsw i32 %412, %413
  %sub545 = sub nsw i32 %411, %sub544
  store i32 %sub545, i32* %count, align 4
  %414 = load i32, i32* %count, align 4
  %cmp546 = icmp sgt i32 %414, 0
  br i1 %cmp546, label %if.then.548, label %if.end.557

if.then.548:                                      ; preds = %for.end.543
  store i32 1, i32* %c, align 4
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.553, %if.then.548
  %415 = load i32, i32* %c, align 4
  %416 = load i32, i32* %count, align 4
  %cmp550 = icmp sle i32 %415, %416
  br i1 %cmp550, label %for.body.552, label %for.end.555

for.body.552:                                     ; preds = %for.cond.549
  call void @tmax(%struct.tnode** %root1, %struct.tnode** %node, i32* %value, i32* %xindex)
  %417 = load i32, i32* %value, align 4
  %418 = load i32, i32* %xindex, align 4
  call void @tdelete(%struct.tnode** %root1, i32 %417, i32 %418)
  %419 = load i32, i32* %xindex, align 4
  call void @tinsert(%struct.tnode** %indexRoot, i32 %419, i32 0)
  br label %for.inc.553

for.inc.553:                                      ; preds = %for.body.552
  %420 = load i32, i32* %c, align 4
  %inc554 = add nsw i32 %420, 1
  store i32 %inc554, i32* %c, align 4
  br label %for.cond.549

for.end.555:                                      ; preds = %for.cond.549
  %421 = load i32, i32* %count, align 4
  %422 = load i32, i32* %treeSize, align 4
  %sub556 = sub nsw i32 %422, %421
  store i32 %sub556, i32* %treeSize, align 4
  br label %if.end.557

if.end.557:                                       ; preds = %for.end.555, %for.end.543
  br label %for.inc.558

for.inc.558:                                      ; preds = %if.end.557, %if.then.460
  %423 = load i32, i32* %k, align 4
  %inc559 = add nsw i32 %423, 1
  store i32 %inc559, i32* %k, align 4
  br label %for.cond.404

for.end.560:                                      ; preds = %for.cond.404
  br label %if.end.561

if.end.561:                                       ; preds = %for.end.560, %if.end.402
  br label %for.cond.246

for.end.562:                                      ; preds = %if.then.255, %if.then.249
  %424 = load i32, i32* %tree2size, align 4
  %425 = load i32, i32* @Mpaths, align 4
  %sub563 = sub nsw i32 %424, %425
  store i32 %sub563, i32* %count, align 4
  %426 = load i32, i32* %count, align 4
  %cmp564 = icmp sgt i32 %426, 0
  br i1 %cmp564, label %if.then.566, label %if.end.575

if.then.566:                                      ; preds = %for.end.562
  store i32 1, i32* %c, align 4
  br label %for.cond.567

for.cond.567:                                     ; preds = %for.inc.571, %if.then.566
  %427 = load i32, i32* %c, align 4
  %428 = load i32, i32* %count, align 4
  %cmp568 = icmp sle i32 %427, %428
  br i1 %cmp568, label %for.body.570, label %for.end.573

for.body.570:                                     ; preds = %for.cond.567
  call void @tmax(%struct.tnode** %rsave, %struct.tnode** %node, i32* %value, i32* %xindex)
  %429 = load i32, i32* %value, align 4
  %430 = load i32, i32* %xindex, align 4
  call void @tdelete(%struct.tnode** %rsave, i32 %429, i32 %430)
  %431 = load i32, i32* %xindex, align 4
  call void @tinsert(%struct.tnode** %indexRoot, i32 %431, i32 0)
  br label %for.inc.571

for.inc.571:                                      ; preds = %for.body.570
  %432 = load i32, i32* %c, align 4
  %inc572 = add nsw i32 %432, 1
  store i32 %inc572, i32* %c, align 4
  br label %for.cond.567

for.end.573:                                      ; preds = %for.cond.567
  %433 = load i32, i32* %count, align 4
  %434 = load i32, i32* %tree2size, align 4
  %sub574 = sub nsw i32 %434, %433
  store i32 %sub574, i32* %tree2size, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %for.end.573, %for.end.562
  %435 = load %struct.tnode*, %struct.tnode** %root1, align 8
  %cmp576 = icmp ne %struct.tnode* %435, null
  br i1 %cmp576, label %if.then.578, label %if.end.585

if.then.578:                                      ; preds = %if.end.575
  br label %for.cond.579

for.cond.579:                                     ; preds = %if.end.583, %if.then.578
  call void @tpop(%struct.tnode** %root1, %struct.tnode** %node, i32* %distance, i32* %index)
  %436 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp580 = icmp eq %struct.tnode* %436, null
  br i1 %cmp580, label %if.then.582, label %if.end.583

if.then.582:                                      ; preds = %for.cond.579
  br label %for.end.584

if.end.583:                                       ; preds = %for.cond.579
  br label %for.cond.579

for.end.584:                                      ; preds = %if.then.582
  br label %if.end.585

if.end.585:                                       ; preds = %for.end.584, %if.end.575
  store i32 0, i32* %treeSize, align 4
  %437 = load i32, i32* %wasInactive, align 4
  %cmp586 = icmp eq i32 %437, 1
  br i1 %cmp586, label %if.then.588, label %if.end.610

if.then.588:                                      ; preds = %if.end.585
  %438 = load i32, i32* %target, align 4
  %idxprom589 = sext i32 %438 to i64
  %439 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx590 = getelementptr inbounds %struct.gnode*, %struct.gnode** %439, i64 %idxprom589
  %440 = load %struct.gnode*, %struct.gnode** %arrayidx590, align 8
  store %struct.gnode* %440, %struct.gnode** %gptr, align 8
  br label %for.cond.591

for.cond.591:                                     ; preds = %for.inc.607, %if.then.588
  %441 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp592 = icmp ne %struct.gnode* %441, null
  br i1 %cmp592, label %for.body.594, label %for.end.609

for.body.594:                                     ; preds = %for.cond.591
  %442 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node595 = getelementptr inbounds %struct.gnode, %struct.gnode* %442, i32 0, i32 0
  %443 = load i32, i32* %node595, align 4
  store i32 %443, i32* %node1, align 4
  %444 = load i32, i32* %node1, align 4
  %idxprom596 = sext i32 %444 to i64
  %445 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx597 = getelementptr inbounds %struct.gnode*, %struct.gnode** %445, i64 %idxprom596
  %446 = load %struct.gnode*, %struct.gnode** %arrayidx597, align 8
  store %struct.gnode* %446, %struct.gnode** %gptr1, align 8
  br label %for.cond.598

for.cond.598:                                     ; preds = %if.end.604, %for.body.594
  %447 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node599 = getelementptr inbounds %struct.gnode, %struct.gnode* %447, i32 0, i32 0
  %448 = load i32, i32* %node599, align 4
  %449 = load i32, i32* %target, align 4
  %cmp600 = icmp eq i32 %448, %449
  br i1 %cmp600, label %if.then.602, label %if.end.604

if.then.602:                                      ; preds = %for.cond.598
  %450 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive603 = getelementptr inbounds %struct.gnode, %struct.gnode* %450, i32 0, i32 6
  store i32 1, i32* %einactive603, align 4
  br label %for.end.606

if.end.604:                                       ; preds = %for.cond.598
  %451 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next605 = getelementptr inbounds %struct.gnode, %struct.gnode* %451, i32 0, i32 7
  %452 = load %struct.gnode*, %struct.gnode** %next605, align 8
  store %struct.gnode* %452, %struct.gnode** %gptr1, align 8
  br label %for.cond.598

for.end.606:                                      ; preds = %if.then.602
  br label %for.inc.607

for.inc.607:                                      ; preds = %for.end.606
  %453 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next608 = getelementptr inbounds %struct.gnode, %struct.gnode* %453, i32 0, i32 7
  %454 = load %struct.gnode*, %struct.gnode** %next608, align 8
  store %struct.gnode* %454, %struct.gnode** %gptr, align 8
  br label %for.cond.591

for.end.609:                                      ; preds = %for.cond.591
  store i32 0, i32* %wasInactive, align 4
  br label %if.end.610

if.end.610:                                       ; preds = %for.end.609, %if.end.585
  br label %while.cond.116

while.end.611:                                    ; preds = %if.then.122, %while.cond.116
  store i32 0, i32* %numberPaths, align 4
  br label %for.cond.612

for.cond.612:                                     ; preds = %if.end.650, %while.end.611
  call void @tpop(%struct.tnode** %rsave, %struct.tnode** %node, i32* %distance, i32* %index)
  %455 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp613 = icmp eq %struct.tnode* %455, null
  br i1 %cmp613, label %if.then.615, label %if.end.616

if.then.615:                                      ; preds = %for.cond.612
  br label %for.end.651

if.end.616:                                       ; preds = %for.cond.612
  %456 = load i32, i32* %index, align 4
  %idxprom617 = sext i32 %456 to i64
  %457 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx618 = getelementptr inbounds %struct.path, %struct.path* %457, i64 %idxprom617
  %nodeset619 = getelementptr inbounds %struct.path, %struct.path* %arrayidx618, i32 0, i32 0
  %458 = load i16*, i16** %nodeset619, align 8
  store i16* %458, i16** %ptr, align 8
  %459 = load i32, i32* %index, align 4
  %idxprom620 = sext i32 %459 to i64
  %460 = load %struct.path*, %struct.path** @pathArray, align 8
  %arrayidx621 = getelementptr inbounds %struct.path, %struct.path* %460, i64 %idxprom620
  %q622 = getelementptr inbounds %struct.path, %struct.path* %arrayidx621, i32 0, i32 2
  %461 = load i32, i32* %q622, align 4
  %add623 = add nsw i32 %461, 1
  store i32 %add623, i32* %k, align 4
  %462 = load i32, i32* %k, align 4
  %463 = load i32, i32* %numberPaths, align 4
  %inc624 = add nsw i32 %463, 1
  store i32 %inc624, i32* %numberPaths, align 4
  %idxprom625 = sext i32 %inc624 to i64
  %464 = load i32**, i32*** @pathList, align 8
  %arrayidx626 = getelementptr inbounds i32*, i32** %464, i64 %idxprom625
  %465 = load i32*, i32** %arrayidx626, align 8
  %arrayidx627 = getelementptr inbounds i32, i32* %465, i64 0
  store i32 %462, i32* %arrayidx627, align 4
  %466 = load i32, i32* %distance, align 4
  %467 = load i32, i32* %k, align 4
  %add628 = add nsw i32 %467, 1
  %idxprom629 = sext i32 %add628 to i64
  %468 = load i32, i32* %numberPaths, align 4
  %idxprom630 = sext i32 %468 to i64
  %469 = load i32**, i32*** @pathList, align 8
  %arrayidx631 = getelementptr inbounds i32*, i32** %469, i64 %idxprom630
  %470 = load i32*, i32** %arrayidx631, align 8
  %arrayidx632 = getelementptr inbounds i32, i32* %470, i64 %idxprom629
  store i32 %466, i32* %arrayidx632, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.633

for.cond.633:                                     ; preds = %for.inc.644, %if.end.616
  %471 = load i32, i32* %i, align 4
  %472 = load i32, i32* %k, align 4
  %cmp634 = icmp sle i32 %471, %472
  br i1 %cmp634, label %for.body.636, label %for.end.646

for.body.636:                                     ; preds = %for.cond.633
  %473 = load i32, i32* %i, align 4
  %idxprom637 = sext i32 %473 to i64
  %474 = load i16*, i16** %ptr, align 8
  %arrayidx638 = getelementptr inbounds i16, i16* %474, i64 %idxprom637
  %475 = load i16, i16* %arrayidx638, align 2
  %conv639 = sext i16 %475 to i32
  %476 = load i32, i32* %i, align 4
  %idxprom640 = sext i32 %476 to i64
  %477 = load i32, i32* %numberPaths, align 4
  %idxprom641 = sext i32 %477 to i64
  %478 = load i32**, i32*** @pathList, align 8
  %arrayidx642 = getelementptr inbounds i32*, i32** %478, i64 %idxprom641
  %479 = load i32*, i32** %arrayidx642, align 8
  %arrayidx643 = getelementptr inbounds i32, i32* %479, i64 %idxprom640
  store i32 %conv639, i32* %arrayidx643, align 4
  br label %for.inc.644

for.inc.644:                                      ; preds = %for.body.636
  %480 = load i32, i32* %i, align 4
  %inc645 = add nsw i32 %480, 1
  store i32 %inc645, i32* %i, align 4
  br label %for.cond.633

for.end.646:                                      ; preds = %for.cond.633
  %481 = load i32, i32* %numberPaths, align 4
  %482 = load i32, i32* @Mpaths, align 4
  %cmp647 = icmp sge i32 %481, %482
  br i1 %cmp647, label %if.then.649, label %if.end.650

if.then.649:                                      ; preds = %for.end.646
  br label %for.end.651

if.end.650:                                       ; preds = %for.end.646
  br label %for.cond.612

for.end.651:                                      ; preds = %if.then.649, %if.then.615
  %483 = load %struct.tnode*, %struct.tnode** %indexRoot, align 8
  %cmp652 = icmp ne %struct.tnode* %483, null
  br i1 %cmp652, label %if.then.654, label %if.end.661

if.then.654:                                      ; preds = %for.end.651
  br label %for.cond.655

for.cond.655:                                     ; preds = %if.end.659, %if.then.654
  call void @tpop(%struct.tnode** %indexRoot, %struct.tnode** %node, i32* %distance, i32* %index)
  %484 = load %struct.tnode*, %struct.tnode** %node, align 8
  %cmp656 = icmp eq %struct.tnode* %484, null
  br i1 %cmp656, label %if.then.658, label %if.end.659

if.then.658:                                      ; preds = %for.cond.655
  br label %for.end.660

if.end.659:                                       ; preds = %for.cond.655
  br label %for.cond.655

for.end.660:                                      ; preds = %if.then.658
  br label %if.end.661

if.end.661:                                       ; preds = %for.end.660, %for.end.651
  %485 = load %struct.tnode*, %struct.tnode** %targetRoot, align 8
  %cmp662 = icmp ne %struct.tnode* %485, null
  br i1 %cmp662, label %if.then.664, label %if.end.671

if.then.664:                                      ; preds = %if.end.661
  br label %for.cond.665

for.cond.665:                                     ; preds = %if.end.669, %if.then.664
  call void @tpop(%struct.tnode** %targetRoot, %struct.tnode** %junkptr, i32* %foo, i32* %t)
  %486 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp666 = icmp eq %struct.tnode* %486, null
  br i1 %cmp666, label %if.then.668, label %if.end.669

if.then.668:                                      ; preds = %for.cond.665
  br label %for.end.670

if.end.669:                                       ; preds = %for.cond.665
  br label %for.cond.665

for.end.670:                                      ; preds = %if.then.668
  br label %if.end.671

if.end.671:                                       ; preds = %for.end.670, %if.end.661
  %487 = load i32, i32* %numberPaths, align 4
  ret i32 %487
}

declare void @tinsert(%struct.tnode**, i32, i32) #1

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #1

declare i32 @prestrict(i16*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @greduce(i16* %ptr, i32 %p, i32 %ex0, i32 %ex1, i32 %ex2, i32 %ex3, i32 %ex4) #0 {
entry:
  %ptr.addr = alloca i16*, align 8
  %p.addr = alloca i32, align 4
  %ex0.addr = alloca i32, align 4
  %ex1.addr = alloca i32, align 4
  %ex2.addr = alloca i32, align 4
  %ex3.addr = alloca i32, align 4
  %ex4.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %node = alloca i32, align 4
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %exl = alloca [5 x i32], align 16
  %gptr = alloca %struct.gnode*, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  %gptr2 = alloca %struct.gnode*, align 8
  store i16* %ptr, i16** %ptr.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %ex0, i32* %ex0.addr, align 4
  store i32 %ex1, i32* %ex1.addr, align 4
  store i32 %ex2, i32* %ex2.addr, align 4
  store i32 %ex3, i32* %ex3.addr, align 4
  store i32 %ex4, i32* %ex4.addr, align 4
  %0 = load i32, i32* %ex1.addr, align 4
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 1
  store i32 %0, i32* %arrayidx, align 4
  %1 = load i32, i32* %ex2.addr, align 4
  %arrayidx1 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 2
  store i32 %1, i32* %arrayidx1, align 4
  %2 = load i32, i32* %ex3.addr, align 4
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 3
  store i32 %2, i32* %arrayidx2, align 4
  %3 = load i32, i32* %ex4.addr, align 4
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 4
  store i32 %3, i32* %arrayidx3, align 4
  %4 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** %ptr.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx4, align 2
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %node1, align 4
  %7 = load i32, i32* %node1, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.gnode*, %struct.gnode** %8, i64 %idxprom5
  %9 = load %struct.gnode*, %struct.gnode** %arrayidx6, align 8
  store %struct.gnode* %9, %struct.gnode** %gptr1, align 8
  store i32 1, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %l, align 4
  %11 = load i32, i32* %ex0.addr, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %l, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 %idxprom8
  %13 = load i32, i32* %arrayidx9, align 4
  store i32 %13, i32* %node2, align 4
  %14 = load i32, i32* %node2, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.gnode*, %struct.gnode** %15, i64 %idxprom10
  %16 = load %struct.gnode*, %struct.gnode** %arrayidx11, align 8
  store %struct.gnode* %16, %struct.gnode** %gptr2, align 8
  %17 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  store %struct.gnode* %17, %struct.gnode** %gptr, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %if.end, %for.body
  %18 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node13 = getelementptr inbounds %struct.gnode, %struct.gnode* %18, i32 0, i32 0
  %19 = load i32, i32* %node13, align 4
  %20 = load i32, i32* %node2, align 4
  %cmp14 = icmp eq i32 %19, %20
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.12
  %21 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost = getelementptr inbounds %struct.gnode, %struct.gnode* %21, i32 0, i32 3
  store i32 1000000000, i32* %cost, align 4
  br label %for.end

if.end:                                           ; preds = %for.cond.12
  %22 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %22, i32 0, i32 7
  %23 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %23, %struct.gnode** %gptr, align 8
  br label %for.cond.12

for.end:                                          ; preds = %if.then
  %24 = load %struct.gnode*, %struct.gnode** %gptr2, align 8
  store %struct.gnode* %24, %struct.gnode** %gptr, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %if.end.22, %for.end
  %25 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node17 = getelementptr inbounds %struct.gnode, %struct.gnode* %25, i32 0, i32 0
  %26 = load i32, i32* %node17, align 4
  %27 = load i32, i32* %node1, align 4
  %cmp18 = icmp eq i32 %26, %27
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.cond.16
  %28 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost21 = getelementptr inbounds %struct.gnode, %struct.gnode* %28, i32 0, i32 3
  store i32 1000000000, i32* %cost21, align 4
  br label %for.end.24

if.end.22:                                        ; preds = %for.cond.16
  %29 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next23 = getelementptr inbounds %struct.gnode, %struct.gnode* %29, i32 0, i32 7
  %30 = load %struct.gnode*, %struct.gnode** %next23, align 8
  store %struct.gnode* %30, %struct.gnode** %gptr, align 8
  br label %for.cond.16

for.end.24:                                       ; preds = %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %for.end.24
  %31 = load i32, i32* %l, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  store i32 1, i32* %l, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.53, %for.end.25
  %32 = load i32, i32* %l, align 4
  %33 = load i32, i32* %p.addr, align 4
  %cmp27 = icmp slt i32 %32, %33
  br i1 %cmp27, label %for.body.29, label %for.end.55

for.body.29:                                      ; preds = %for.cond.26
  %34 = load i32, i32* %l, align 4
  %idxprom30 = sext i32 %34 to i64
  %35 = load i16*, i16** %ptr.addr, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %35, i64 %idxprom30
  %36 = load i16, i16* %arrayidx31, align 2
  %conv32 = sext i16 %36 to i32
  store i32 %conv32, i32* %node, align 4
  %37 = load i32, i32* %node, align 4
  %idxprom33 = sext i32 %37 to i64
  %38 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx34 = getelementptr inbounds %struct.gnode*, %struct.gnode** %38, i64 %idxprom33
  %39 = load %struct.gnode*, %struct.gnode** %arrayidx34, align 8
  store %struct.gnode* %39, %struct.gnode** %gptr, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.50, %for.body.29
  %40 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp36 = icmp ne %struct.gnode* %40, null
  br i1 %cmp36, label %for.body.38, label %for.end.52

for.body.38:                                      ; preds = %for.cond.35
  %41 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node39 = getelementptr inbounds %struct.gnode, %struct.gnode* %41, i32 0, i32 0
  %42 = load i32, i32* %node39, align 4
  store i32 %42, i32* %node1, align 4
  %43 = load i32, i32* %node1, align 4
  %idxprom40 = sext i32 %43 to i64
  %44 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx41 = getelementptr inbounds %struct.gnode*, %struct.gnode** %44, i64 %idxprom40
  %45 = load %struct.gnode*, %struct.gnode** %arrayidx41, align 8
  store %struct.gnode* %45, %struct.gnode** %gptr1, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %if.end.47, %for.body.38
  %46 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node43 = getelementptr inbounds %struct.gnode, %struct.gnode* %46, i32 0, i32 0
  %47 = load i32, i32* %node43, align 4
  %48 = load i32, i32* %node, align 4
  %cmp44 = icmp eq i32 %47, %48
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.cond.42
  %49 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %inactive = getelementptr inbounds %struct.gnode, %struct.gnode* %49, i32 0, i32 5
  store i32 1, i32* %inactive, align 4
  br label %for.end.49

if.end.47:                                        ; preds = %for.cond.42
  %50 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next48 = getelementptr inbounds %struct.gnode, %struct.gnode* %50, i32 0, i32 7
  %51 = load %struct.gnode*, %struct.gnode** %next48, align 8
  store %struct.gnode* %51, %struct.gnode** %gptr1, align 8
  br label %for.cond.42

for.end.49:                                       ; preds = %if.then.46
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.end.49
  %52 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next51 = getelementptr inbounds %struct.gnode, %struct.gnode* %52, i32 0, i32 7
  %53 = load %struct.gnode*, %struct.gnode** %next51, align 8
  store %struct.gnode* %53, %struct.gnode** %gptr, align 8
  br label %for.cond.35

for.end.52:                                       ; preds = %for.cond.35
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %54 = load i32, i32* %l, align 4
  %inc54 = add nsw i32 %54, 1
  store i32 %inc54, i32* %l, align 4
  br label %for.cond.26

for.end.55:                                       ; preds = %for.cond.26
  ret void
}

; Function Attrs: nounwind uwtable
define void @gunreduce(i16* %ptr, i32 %p, i32 %ex0, i32 %ex1, i32 %ex2, i32 %ex3, i32 %ex4) #0 {
entry:
  %ptr.addr = alloca i16*, align 8
  %p.addr = alloca i32, align 4
  %ex0.addr = alloca i32, align 4
  %ex1.addr = alloca i32, align 4
  %ex2.addr = alloca i32, align 4
  %ex3.addr = alloca i32, align 4
  %ex4.addr = alloca i32, align 4
  %l = alloca i32, align 4
  %node = alloca i32, align 4
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %exl = alloca [5 x i32], align 16
  %gptr = alloca %struct.gnode*, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  %gptr2 = alloca %struct.gnode*, align 8
  store i16* %ptr, i16** %ptr.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i32 %ex0, i32* %ex0.addr, align 4
  store i32 %ex1, i32* %ex1.addr, align 4
  store i32 %ex2, i32* %ex2.addr, align 4
  store i32 %ex3, i32* %ex3.addr, align 4
  store i32 %ex4, i32* %ex4.addr, align 4
  %0 = load i32, i32* %ex1.addr, align 4
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 1
  store i32 %0, i32* %arrayidx, align 4
  %1 = load i32, i32* %ex2.addr, align 4
  %arrayidx1 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 2
  store i32 %1, i32* %arrayidx1, align 4
  %2 = load i32, i32* %ex3.addr, align 4
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 3
  store i32 %2, i32* %arrayidx2, align 4
  %3 = load i32, i32* %ex4.addr, align 4
  %arrayidx3 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 4
  store i32 %3, i32* %arrayidx3, align 4
  %4 = load i32, i32* %p.addr, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** %ptr.addr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx4, align 2
  %conv = sext i16 %6 to i32
  store i32 %conv, i32* %node1, align 4
  %7 = load i32, i32* %node1, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx6 = getelementptr inbounds %struct.gnode*, %struct.gnode** %8, i64 %idxprom5
  %9 = load %struct.gnode*, %struct.gnode** %arrayidx6, align 8
  store %struct.gnode* %9, %struct.gnode** %gptr1, align 8
  store i32 1, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %l, align 4
  %11 = load i32, i32* %ex0.addr, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %l, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [5 x i32], [5 x i32]* %exl, i32 0, i64 %idxprom8
  %13 = load i32, i32* %arrayidx9, align 4
  store i32 %13, i32* %node2, align 4
  %14 = load i32, i32* %node2, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx11 = getelementptr inbounds %struct.gnode*, %struct.gnode** %15, i64 %idxprom10
  %16 = load %struct.gnode*, %struct.gnode** %arrayidx11, align 8
  store %struct.gnode* %16, %struct.gnode** %gptr2, align 8
  %17 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  store %struct.gnode* %17, %struct.gnode** %gptr, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %if.end, %for.body
  %18 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node13 = getelementptr inbounds %struct.gnode, %struct.gnode* %18, i32 0, i32 0
  %19 = load i32, i32* %node13, align 4
  %20 = load i32, i32* %node2, align 4
  %cmp14 = icmp eq i32 %19, %20
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond.12
  %21 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length = getelementptr inbounds %struct.gnode, %struct.gnode* %21, i32 0, i32 2
  %22 = load i32, i32* %length, align 4
  %23 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost = getelementptr inbounds %struct.gnode, %struct.gnode* %23, i32 0, i32 3
  store i32 %22, i32* %cost, align 4
  br label %for.end

if.end:                                           ; preds = %for.cond.12
  %24 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %24, i32 0, i32 7
  %25 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %25, %struct.gnode** %gptr, align 8
  br label %for.cond.12

for.end:                                          ; preds = %if.then
  %26 = load %struct.gnode*, %struct.gnode** %gptr2, align 8
  store %struct.gnode* %26, %struct.gnode** %gptr, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %if.end.23, %for.end
  %27 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node17 = getelementptr inbounds %struct.gnode, %struct.gnode* %27, i32 0, i32 0
  %28 = load i32, i32* %node17, align 4
  %29 = load i32, i32* %node1, align 4
  %cmp18 = icmp eq i32 %28, %29
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %for.cond.16
  %30 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length21 = getelementptr inbounds %struct.gnode, %struct.gnode* %30, i32 0, i32 2
  %31 = load i32, i32* %length21, align 4
  %32 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost22 = getelementptr inbounds %struct.gnode, %struct.gnode* %32, i32 0, i32 3
  store i32 %31, i32* %cost22, align 4
  br label %for.end.25

if.end.23:                                        ; preds = %for.cond.16
  %33 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next24 = getelementptr inbounds %struct.gnode, %struct.gnode* %33, i32 0, i32 7
  %34 = load %struct.gnode*, %struct.gnode** %next24, align 8
  store %struct.gnode* %34, %struct.gnode** %gptr, align 8
  br label %for.cond.16

for.end.25:                                       ; preds = %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %for.end.25
  %35 = load i32, i32* %l, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  store i32 1, i32* %l, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.54, %for.end.26
  %36 = load i32, i32* %l, align 4
  %37 = load i32, i32* %p.addr, align 4
  %cmp28 = icmp slt i32 %36, %37
  br i1 %cmp28, label %for.body.30, label %for.end.56

for.body.30:                                      ; preds = %for.cond.27
  %38 = load i32, i32* %l, align 4
  %idxprom31 = sext i32 %38 to i64
  %39 = load i16*, i16** %ptr.addr, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %39, i64 %idxprom31
  %40 = load i16, i16* %arrayidx32, align 2
  %conv33 = sext i16 %40 to i32
  store i32 %conv33, i32* %node, align 4
  %41 = load i32, i32* %node, align 4
  %idxprom34 = sext i32 %41 to i64
  %42 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx35 = getelementptr inbounds %struct.gnode*, %struct.gnode** %42, i64 %idxprom34
  %43 = load %struct.gnode*, %struct.gnode** %arrayidx35, align 8
  store %struct.gnode* %43, %struct.gnode** %gptr, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.51, %for.body.30
  %44 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp37 = icmp ne %struct.gnode* %44, null
  br i1 %cmp37, label %for.body.39, label %for.end.53

for.body.39:                                      ; preds = %for.cond.36
  %45 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node40 = getelementptr inbounds %struct.gnode, %struct.gnode* %45, i32 0, i32 0
  %46 = load i32, i32* %node40, align 4
  store i32 %46, i32* %node1, align 4
  %47 = load i32, i32* %node1, align 4
  %idxprom41 = sext i32 %47 to i64
  %48 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx42 = getelementptr inbounds %struct.gnode*, %struct.gnode** %48, i64 %idxprom41
  %49 = load %struct.gnode*, %struct.gnode** %arrayidx42, align 8
  store %struct.gnode* %49, %struct.gnode** %gptr1, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %if.end.48, %for.body.39
  %50 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node44 = getelementptr inbounds %struct.gnode, %struct.gnode* %50, i32 0, i32 0
  %51 = load i32, i32* %node44, align 4
  %52 = load i32, i32* %node, align 4
  %cmp45 = icmp eq i32 %51, %52
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.cond.43
  %53 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %inactive = getelementptr inbounds %struct.gnode, %struct.gnode* %53, i32 0, i32 5
  store i32 0, i32* %inactive, align 4
  br label %for.end.50

if.end.48:                                        ; preds = %for.cond.43
  %54 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next49 = getelementptr inbounds %struct.gnode, %struct.gnode* %54, i32 0, i32 7
  %55 = load %struct.gnode*, %struct.gnode** %next49, align 8
  store %struct.gnode* %55, %struct.gnode** %gptr1, align 8
  br label %for.cond.43

for.end.50:                                       ; preds = %if.then.47
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end.50
  %56 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next52 = getelementptr inbounds %struct.gnode, %struct.gnode* %56, i32 0, i32 7
  %57 = load %struct.gnode*, %struct.gnode** %next52, align 8
  store %struct.gnode* %57, %struct.gnode** %gptr, align 8
  br label %for.cond.36

for.end.53:                                       ; preds = %for.cond.36
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %58 = load i32, i32* %l, align 4
  %inc55 = add nsw i32 %58, 1
  store i32 %inc55, i32* %l, align 4
  br label %for.cond.27

for.end.56:                                       ; preds = %for.cond.27
  ret void
}

declare void @tmax(%struct.tnode**, %struct.tnode**, i32*, i32*) #1

declare void @tdelete(%struct.tnode**, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
