; ModuleID = './MultiSource.Benchmarks.Prolangs-C/214.TimberWolfMC.routenet.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }

@MAXPATHS = external global i32, align 4
@Mpaths = external global i32, align 4
@bareMinimum = external global i32, align 4
@indexRoot = common global %struct.tnode* null, align 8
@treeSize = common global i32 0, align 4
@numnodes = external global i32, align 4
@sourceList = external global i16*, align 8
@delSourceList = external global i16*, align 8
@sourcePtr = external global i32, align 4
@targetList = external global i16*, align 8
@addTargetList = external global i16*, align 8
@targetPtr = external global i32, align 4
@segPtr = external global i32, align 4
@pnodeArray = external global %struct.pnode*, align 8
@pathLength = external global i32, align 4
@pathIndex = common global i32 0, align 4
@gnodeArray = external global %struct.gnode**, align 8
@savePaths = external global i16**, align 8
@segList = external global i16*, align 8
@netRoot = external global %struct.tnode*, align 8
@EXTRASOURCES = external global i32, align 4
@pathList = external global i32**, align 8

; Function Attrs: nounwind uwtable
define void @routenet(i32 %segments, i32 %numpnodes) #0 {
entry:
  %segments.addr = alloca i32, align 4
  %numpnodes.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %savei = alloca i32, align 4
  %min = alloca i32, align 4
  %count = alloca i32, align 4
  %node = alloca i32, align 4
  %node1 = alloca i32, align 4
  %bareflag = alloca i32, align 4
  %gptr = alloca %struct.gnode*, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  %nptr = alloca %struct.nnode*, align 8
  %lptr = alloca %struct.list2*, align 8
  %tptr = alloca %struct.tnode*, align 8
  store i32 %segments, i32* %segments.addr, align 4
  store i32 %numpnodes, i32* %numpnodes.addr, align 4
  %0 = load i32, i32* %segments.addr, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @MAXPATHS, align 4
  %2 = load i32, i32* %segments.addr, align 4
  %sub = sub nsw i32 %2, 1
  %div = sdiv i32 %1, %sub
  store i32 %div, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %3, 1
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %4 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, i32* @Mpaths, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %5 = load i32, i32* @Mpaths, align 4
  %conv = sitofp i32 %5 to double
  %6 = load i32, i32* %segments.addr, align 4
  %sub2 = sub nsw i32 %6, 1
  %conv3 = sitofp i32 %sub2 to double
  %call = call double @pow(double %conv, double %conv3) #3
  %7 = load i32, i32* @MAXPATHS, align 4
  %conv4 = sitofp i32 %7 to double
  %mul = fmul double 8.000000e+01, %conv4
  %cmp5 = fcmp ogt double %call, %mul
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* @Mpaths, align 4
  %cmp7 = icmp sgt i32 %8, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* @Mpaths, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* @Mpaths, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* @Mpaths, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  store i32 0, i32* %bareflag, align 4
  %11 = load i32, i32* @Mpaths, align 4
  %cmp9 = icmp eq i32 %11, 1
  br i1 %cmp9, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %segments.addr, align 4
  %cmp11 = icmp sgt i32 %12, 19
  br i1 %cmp11, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %land.lhs.true
  %13 = load i32, i32* @bareMinimum, align 4
  %cmp14 = icmp eq i32 %13, 0
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  store i32 1, i32* @bareMinimum, align 4
  store i32 1, i32* %bareflag, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %if.end
  store %struct.tnode* null, %struct.tnode** @indexRoot, align 8
  store i32 0, i32* @treeSize, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @MAXPATHS, align 4
  %mul19 = mul nsw i32 2, %15
  %cmp20 = icmp sle i32 %14, %mul19
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  call void @tinsert(%struct.tnode** @indexRoot, i32 %16, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.29, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %numpnodes.addr, align 4
  %cmp23 = icmp sle i32 %18, %19
  br i1 %cmp23, label %for.body.25, label %for.end.31

for.body.25:                                      ; preds = %for.cond.22
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @numnodes, align 4
  %add = add nsw i32 %20, %21
  %conv26 = trunc i32 %add to i16
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i16*, i16** @sourceList, align 8
  %arrayidx = getelementptr inbounds i16, i16* %23, i64 %idxprom
  store i16 %conv26, i16* %arrayidx, align 2
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load i16*, i16** @delSourceList, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %25, i64 %idxprom27
  store i16 0, i16* %arrayidx28, align 2
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.25
  %26 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.22

for.end.31:                                       ; preds = %for.cond.22
  %27 = load i32, i32* %numpnodes.addr, align 4
  store i32 %27, i32* @sourcePtr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.41, %for.end.31
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* @numnodes, align 4
  %30 = load i32, i32* %numpnodes.addr, align 4
  %add33 = add nsw i32 %29, %30
  %cmp34 = icmp sle i32 %28, %add33
  br i1 %cmp34, label %for.body.36, label %for.end.43

for.body.36:                                      ; preds = %for.cond.32
  %31 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %31 to i64
  %32 = load i16*, i16** @targetList, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %32, i64 %idxprom37
  store i16 0, i16* %arrayidx38, align 2
  %33 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load i16*, i16** @addTargetList, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %34, i64 %idxprom39
  store i16 0, i16* %arrayidx40, align 2
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.36
  %35 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %35, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.32

for.end.43:                                       ; preds = %for.cond.32
  store i32 0, i32* @targetPtr, align 4
  store i32 0, i32* @segPtr, align 4
  store i32 1000000000, i32* %min, align 4
  %36 = load i32, i32* @numnodes, align 4
  %add44 = add nsw i32 1, %36
  store i32 %add44, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.145, %for.end.43
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %numpnodes.addr, align 4
  %39 = load i32, i32* @numnodes, align 4
  %add46 = add nsw i32 %38, %39
  %cmp47 = icmp sle i32 %37, %add46
  br i1 %cmp47, label %for.body.49, label %for.end.147

for.body.49:                                      ; preds = %for.cond.45
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* @numnodes, align 4
  %sub50 = sub nsw i32 %40, %41
  %idxprom51 = sext i32 %sub50 to i64
  %42 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx52 = getelementptr inbounds %struct.pnode, %struct.pnode* %42, i64 %idxprom51
  %nodeList = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx52, i32 0, i32 1
  %43 = load %struct.nnode*, %struct.nnode** %nodeList, align 8
  store %struct.nnode* %43, %struct.nnode** %nptr, align 8
  %44 = load i32, i32* @numnodes, align 4
  %add53 = add nsw i32 1, %44
  store i32 %add53, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.142, %for.body.49
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %numpnodes.addr, align 4
  %47 = load i32, i32* @numnodes, align 4
  %add55 = add nsw i32 %46, %47
  %cmp56 = icmp sle i32 %45, %add55
  br i1 %cmp56, label %for.body.58, label %for.end.144

for.body.58:                                      ; preds = %for.cond.54
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %j, align 4
  %cmp59 = icmp eq i32 %48, %49
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.body.58
  br label %for.inc.142

if.end.62:                                        ; preds = %for.body.58
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* @numnodes, align 4
  %sub63 = sub nsw i32 %50, %51
  %idxprom64 = sext i32 %sub63 to i64
  %52 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx65 = getelementptr inbounds %struct.pnode, %struct.pnode* %52, i64 %idxprom64
  %eptr = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx65, i32 0, i32 0
  %53 = load i32, i32* %eptr, align 4
  %cmp66 = icmp ne i32 %53, 0
  br i1 %cmp66, label %land.lhs.true.68, label %if.else.88

land.lhs.true.68:                                 ; preds = %if.end.62
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* @numnodes, align 4
  %sub69 = sub nsw i32 %54, %55
  %idxprom70 = sext i32 %sub69 to i64
  %56 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx71 = getelementptr inbounds %struct.pnode, %struct.pnode* %56, i64 %idxprom70
  %eptr72 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx71, i32 0, i32 0
  %57 = load i32, i32* %eptr72, align 4
  %cmp73 = icmp ne i32 %57, 0
  br i1 %cmp73, label %if.then.75, label %if.else.88

if.then.75:                                       ; preds = %land.lhs.true.68
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* @numnodes, align 4
  %sub76 = sub nsw i32 %58, %59
  %idxprom77 = sext i32 %sub76 to i64
  %60 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx78 = getelementptr inbounds %struct.pnode, %struct.pnode* %60, i64 %idxprom77
  %eptr79 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx78, i32 0, i32 0
  %61 = load i32, i32* %eptr79, align 4
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* @numnodes, align 4
  %sub80 = sub nsw i32 %62, %63
  %idxprom81 = sext i32 %sub80 to i64
  %64 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx82 = getelementptr inbounds %struct.pnode, %struct.pnode* %64, i64 %idxprom81
  %eptr83 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx82, i32 0, i32 0
  %65 = load i32, i32* %eptr83, align 4
  %cmp84 = icmp eq i32 %61, %65
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.75
  br label %for.inc.142

if.end.87:                                        ; preds = %if.then.75
  br label %if.end.132

if.else.88:                                       ; preds = %land.lhs.true.68, %if.end.62
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* @numnodes, align 4
  %sub89 = sub nsw i32 %66, %67
  %idxprom90 = sext i32 %sub89 to i64
  %68 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx91 = getelementptr inbounds %struct.pnode, %struct.pnode* %68, i64 %idxprom90
  %eptr92 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx91, i32 0, i32 0
  %69 = load i32, i32* %eptr92, align 4
  %cmp93 = icmp eq i32 %69, 0
  br i1 %cmp93, label %land.lhs.true.95, label %if.else.103

land.lhs.true.95:                                 ; preds = %if.else.88
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* @numnodes, align 4
  %sub96 = sub nsw i32 %70, %71
  %idxprom97 = sext i32 %sub96 to i64
  %72 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx98 = getelementptr inbounds %struct.pnode, %struct.pnode* %72, i64 %idxprom97
  %eptr99 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx98, i32 0, i32 0
  %73 = load i32, i32* %eptr99, align 4
  %cmp100 = icmp eq i32 %73, 0
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %land.lhs.true.95
  br label %if.end.131

if.else.103:                                      ; preds = %land.lhs.true.95, %if.else.88
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* @numnodes, align 4
  %sub104 = sub nsw i32 %74, %75
  %idxprom105 = sext i32 %sub104 to i64
  %76 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx106 = getelementptr inbounds %struct.pnode, %struct.pnode* %76, i64 %idxprom105
  %eptr107 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx106, i32 0, i32 0
  %77 = load i32, i32* %eptr107, align 4
  %cmp108 = icmp ne i32 %77, 0
  br i1 %cmp108, label %if.then.110, label %if.else.120

if.then.110:                                      ; preds = %if.else.103
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* @numnodes, align 4
  %sub111 = sub nsw i32 %78, %79
  %idxprom112 = sext i32 %sub111 to i64
  %80 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx113 = getelementptr inbounds %struct.pnode, %struct.pnode* %80, i64 %idxprom112
  %eptr114 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx113, i32 0, i32 0
  %81 = load i32, i32* %eptr114, align 4
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* @numnodes, align 4
  %sub115 = sub nsw i32 %82, %83
  %cmp116 = icmp eq i32 %81, %sub115
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.110
  br label %for.inc.142

if.end.119:                                       ; preds = %if.then.110
  br label %if.end.130

if.else.120:                                      ; preds = %if.else.103
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* @numnodes, align 4
  %sub121 = sub nsw i32 %84, %85
  %idxprom122 = sext i32 %sub121 to i64
  %86 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx123 = getelementptr inbounds %struct.pnode, %struct.pnode* %86, i64 %idxprom122
  %eptr124 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx123, i32 0, i32 0
  %87 = load i32, i32* %eptr124, align 4
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* @numnodes, align 4
  %sub125 = sub nsw i32 %88, %89
  %cmp126 = icmp eq i32 %87, %sub125
  br i1 %cmp126, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.else.120
  br label %for.inc.142

if.end.129:                                       ; preds = %if.else.120
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.end.119
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.102
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.87
  %90 = load i32, i32* %j, align 4
  %idxprom133 = sext i32 %90 to i64
  %91 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx134 = getelementptr inbounds %struct.nnode, %struct.nnode* %91, i64 %idxprom133
  %distance = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx134, i32 0, i32 1
  %92 = load i32, i32* %distance, align 4
  %93 = load i32, i32* %min, align 4
  %cmp135 = icmp slt i32 %92, %93
  br i1 %cmp135, label %if.then.137, label %if.end.141

if.then.137:                                      ; preds = %if.end.132
  %94 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %94 to i64
  %95 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx139 = getelementptr inbounds %struct.nnode, %struct.nnode* %95, i64 %idxprom138
  %distance140 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx139, i32 0, i32 1
  %96 = load i32, i32* %distance140, align 4
  store i32 %96, i32* %min, align 4
  %97 = load i32, i32* %i, align 4
  store i32 %97, i32* %savei, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.137, %if.end.132
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141, %if.then.128, %if.then.118, %if.then.86, %if.then.61
  %98 = load i32, i32* %j, align 4
  %inc143 = add nsw i32 %98, 1
  store i32 %inc143, i32* %j, align 4
  br label %for.cond.54

for.end.144:                                      ; preds = %for.cond.54
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.end.144
  %99 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %99, 1
  store i32 %inc146, i32* %i, align 4
  br label %for.cond.45

for.end.147:                                      ; preds = %for.cond.45
  store i32 0, i32* @pathLength, align 4
  store i32 0, i32* @pathIndex, align 4
  %100 = load i32, i32* %savei, align 4
  %conv148 = trunc i32 %100 to i16
  %101 = load i16*, i16** @delSourceList, align 8
  %arrayidx149 = getelementptr inbounds i16, i16* %101, i64 1
  store i16 %conv148, i16* %arrayidx149, align 2
  %102 = load i32, i32* %savei, align 4
  %conv150 = trunc i32 %102 to i16
  %103 = load i16*, i16** @addTargetList, align 8
  %arrayidx151 = getelementptr inbounds i16, i16* %103, i64 1
  store i16 %conv150, i16* %arrayidx151, align 2
  store i32 0, i32* %count, align 4
  %104 = load i32, i32* %savei, align 4
  %105 = load i32, i32* @numnodes, align 4
  %sub152 = sub nsw i32 %104, %105
  %idxprom153 = sext i32 %sub152 to i64
  %106 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx154 = getelementptr inbounds %struct.pnode, %struct.pnode* %106, i64 %idxprom153
  %eptr155 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx154, i32 0, i32 0
  %107 = load i32, i32* %eptr155, align 4
  %cmp156 = icmp ne i32 %107, 0
  br i1 %cmp156, label %if.then.158, label %if.else.195

if.then.158:                                      ; preds = %for.end.147
  store i32 1, i32* %count, align 4
  %108 = load i32, i32* %savei, align 4
  %109 = load i32, i32* @numnodes, align 4
  %sub159 = sub nsw i32 %108, %109
  %idxprom160 = sext i32 %sub159 to i64
  %110 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx161 = getelementptr inbounds %struct.pnode, %struct.pnode* %110, i64 %idxprom160
  %eptr162 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx161, i32 0, i32 0
  %111 = load i32, i32* %eptr162, align 4
  %112 = load i32, i32* @numnodes, align 4
  %add163 = add nsw i32 %111, %112
  store i32 %add163, i32* %node, align 4
  %113 = load i32, i32* %node, align 4
  %conv164 = trunc i32 %113 to i16
  %114 = load i16*, i16** @delSourceList, align 8
  %arrayidx165 = getelementptr inbounds i16, i16* %114, i64 2
  store i16 %conv164, i16* %arrayidx165, align 2
  %115 = load i32, i32* %node, align 4
  %conv166 = trunc i32 %115 to i16
  %116 = load i16*, i16** @addTargetList, align 8
  %arrayidx167 = getelementptr inbounds i16, i16* %116, i64 2
  store i16 %conv166, i16* %arrayidx167, align 2
  %117 = load i32, i32* %savei, align 4
  %118 = load i32, i32* @numnodes, align 4
  %sub168 = sub nsw i32 %117, %118
  %idxprom169 = sext i32 %sub168 to i64
  %119 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx170 = getelementptr inbounds %struct.pnode, %struct.pnode* %119, i64 %idxprom169
  %eptr171 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx170, i32 0, i32 0
  %120 = load i32, i32* %eptr171, align 4
  %idxprom172 = sext i32 %120 to i64
  %121 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx173 = getelementptr inbounds %struct.pnode, %struct.pnode* %121, i64 %idxprom172
  %equiv = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx173, i32 0, i32 2
  %122 = load %struct.list2*, %struct.list2** %equiv, align 8
  store %struct.list2* %122, %struct.list2** %lptr, align 8
  br label %while.cond.174

while.cond.174:                                   ; preds = %if.end.183, %if.then.182, %if.then.158
  %123 = load %struct.list2*, %struct.list2** %lptr, align 8
  %cmp175 = icmp ne %struct.list2* %123, null
  br i1 %cmp175, label %while.body.177, label %while.end.194

while.body.177:                                   ; preds = %while.cond.174
  %124 = load %struct.list2*, %struct.list2** %lptr, align 8
  %node178 = getelementptr inbounds %struct.list2, %struct.list2* %124, i32 0, i32 0
  %125 = load i32, i32* %node178, align 4
  %126 = load i32, i32* @numnodes, align 4
  %add179 = add nsw i32 %125, %126
  store i32 %add179, i32* %node, align 4
  %127 = load i32, i32* %node, align 4
  %128 = load i32, i32* %savei, align 4
  %cmp180 = icmp eq i32 %127, %128
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %while.body.177
  %129 = load %struct.list2*, %struct.list2** %lptr, align 8
  %next = getelementptr inbounds %struct.list2, %struct.list2* %129, i32 0, i32 1
  %130 = load %struct.list2*, %struct.list2** %next, align 8
  store %struct.list2* %130, %struct.list2** %lptr, align 8
  br label %while.cond.174

if.end.183:                                       ; preds = %while.body.177
  %131 = load i32, i32* %node, align 4
  %conv184 = trunc i32 %131 to i16
  %132 = load i32, i32* %count, align 4
  %inc185 = add nsw i32 %132, 1
  store i32 %inc185, i32* %count, align 4
  %add186 = add nsw i32 %inc185, 1
  %idxprom187 = sext i32 %add186 to i64
  %133 = load i16*, i16** @delSourceList, align 8
  %arrayidx188 = getelementptr inbounds i16, i16* %133, i64 %idxprom187
  store i16 %conv184, i16* %arrayidx188, align 2
  %134 = load i32, i32* %node, align 4
  %conv189 = trunc i32 %134 to i16
  %135 = load i32, i32* %count, align 4
  %add190 = add nsw i32 %135, 1
  %idxprom191 = sext i32 %add190 to i64
  %136 = load i16*, i16** @addTargetList, align 8
  %arrayidx192 = getelementptr inbounds i16, i16* %136, i64 %idxprom191
  store i16 %conv189, i16* %arrayidx192, align 2
  %137 = load %struct.list2*, %struct.list2** %lptr, align 8
  %next193 = getelementptr inbounds %struct.list2, %struct.list2* %137, i32 0, i32 1
  %138 = load %struct.list2*, %struct.list2** %next193, align 8
  store %struct.list2* %138, %struct.list2** %lptr, align 8
  br label %while.cond.174

while.end.194:                                    ; preds = %while.cond.174
  br label %if.end.217

if.else.195:                                      ; preds = %for.end.147
  %139 = load i32, i32* %savei, align 4
  %140 = load i32, i32* @numnodes, align 4
  %sub196 = sub nsw i32 %139, %140
  %idxprom197 = sext i32 %sub196 to i64
  %141 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx198 = getelementptr inbounds %struct.pnode, %struct.pnode* %141, i64 %idxprom197
  %equiv199 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx198, i32 0, i32 2
  %142 = load %struct.list2*, %struct.list2** %equiv199, align 8
  store %struct.list2* %142, %struct.list2** %lptr, align 8
  br label %while.cond.200

while.cond.200:                                   ; preds = %while.body.203, %if.else.195
  %143 = load %struct.list2*, %struct.list2** %lptr, align 8
  %cmp201 = icmp ne %struct.list2* %143, null
  br i1 %cmp201, label %while.body.203, label %while.end.216

while.body.203:                                   ; preds = %while.cond.200
  %144 = load %struct.list2*, %struct.list2** %lptr, align 8
  %node204 = getelementptr inbounds %struct.list2, %struct.list2* %144, i32 0, i32 0
  %145 = load i32, i32* %node204, align 4
  %146 = load i32, i32* @numnodes, align 4
  %add205 = add nsw i32 %145, %146
  store i32 %add205, i32* %node, align 4
  %147 = load i32, i32* %node, align 4
  %conv206 = trunc i32 %147 to i16
  %148 = load i32, i32* %count, align 4
  %inc207 = add nsw i32 %148, 1
  store i32 %inc207, i32* %count, align 4
  %add208 = add nsw i32 %inc207, 1
  %idxprom209 = sext i32 %add208 to i64
  %149 = load i16*, i16** @delSourceList, align 8
  %arrayidx210 = getelementptr inbounds i16, i16* %149, i64 %idxprom209
  store i16 %conv206, i16* %arrayidx210, align 2
  %150 = load i32, i32* %node, align 4
  %conv211 = trunc i32 %150 to i16
  %151 = load i32, i32* %count, align 4
  %add212 = add nsw i32 %151, 1
  %idxprom213 = sext i32 %add212 to i64
  %152 = load i16*, i16** @addTargetList, align 8
  %arrayidx214 = getelementptr inbounds i16, i16* %152, i64 %idxprom213
  store i16 %conv211, i16* %arrayidx214, align 2
  %153 = load %struct.list2*, %struct.list2** %lptr, align 8
  %next215 = getelementptr inbounds %struct.list2, %struct.list2* %153, i32 0, i32 1
  %154 = load %struct.list2*, %struct.list2** %next215, align 8
  store %struct.list2* %154, %struct.list2** %lptr, align 8
  br label %while.cond.200

while.end.216:                                    ; preds = %while.cond.200
  br label %if.end.217

if.end.217:                                       ; preds = %while.end.216, %while.end.194
  store i32 1, i32* %i, align 4
  br label %for.cond.218

for.cond.218:                                     ; preds = %for.inc.246, %if.end.217
  %155 = load i32, i32* %i, align 4
  %156 = load i32, i32* %count, align 4
  %add219 = add nsw i32 %156, 1
  %cmp220 = icmp sle i32 %155, %add219
  br i1 %cmp220, label %for.body.222, label %for.end.248

for.body.222:                                     ; preds = %for.cond.218
  %157 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %157 to i64
  %158 = load i16*, i16** @addTargetList, align 8
  %arrayidx224 = getelementptr inbounds i16, i16* %158, i64 %idxprom223
  %159 = load i16, i16* %arrayidx224, align 2
  %conv225 = sext i16 %159 to i32
  store i32 %conv225, i32* %node, align 4
  %160 = load i32, i32* %node, align 4
  %idxprom226 = sext i32 %160 to i64
  %161 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx227 = getelementptr inbounds %struct.gnode*, %struct.gnode** %161, i64 %idxprom226
  %162 = load %struct.gnode*, %struct.gnode** %arrayidx227, align 8
  store %struct.gnode* %162, %struct.gnode** %gptr, align 8
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.243, %for.body.222
  %163 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp229 = icmp ne %struct.gnode* %163, null
  br i1 %cmp229, label %for.body.231, label %for.end.245

for.body.231:                                     ; preds = %for.cond.228
  %164 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node232 = getelementptr inbounds %struct.gnode, %struct.gnode* %164, i32 0, i32 0
  %165 = load i32, i32* %node232, align 4
  store i32 %165, i32* %node1, align 4
  %166 = load i32, i32* %node1, align 4
  %idxprom233 = sext i32 %166 to i64
  %167 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx234 = getelementptr inbounds %struct.gnode*, %struct.gnode** %167, i64 %idxprom233
  %168 = load %struct.gnode*, %struct.gnode** %arrayidx234, align 8
  store %struct.gnode* %168, %struct.gnode** %gptr1, align 8
  br label %for.cond.235

for.cond.235:                                     ; preds = %if.end.240, %for.body.231
  %169 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node236 = getelementptr inbounds %struct.gnode, %struct.gnode* %169, i32 0, i32 0
  %170 = load i32, i32* %node236, align 4
  %171 = load i32, i32* %node, align 4
  %cmp237 = icmp eq i32 %170, %171
  br i1 %cmp237, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %for.cond.235
  %172 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive = getelementptr inbounds %struct.gnode, %struct.gnode* %172, i32 0, i32 6
  store i32 1, i32* %einactive, align 4
  br label %for.end.242

if.end.240:                                       ; preds = %for.cond.235
  %173 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next241 = getelementptr inbounds %struct.gnode, %struct.gnode* %173, i32 0, i32 7
  %174 = load %struct.gnode*, %struct.gnode** %next241, align 8
  store %struct.gnode* %174, %struct.gnode** %gptr1, align 8
  br label %for.cond.235

for.end.242:                                      ; preds = %if.then.239
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.end.242
  %175 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next244 = getelementptr inbounds %struct.gnode, %struct.gnode* %175, i32 0, i32 7
  %176 = load %struct.gnode*, %struct.gnode** %next244, align 8
  store %struct.gnode* %176, %struct.gnode** %gptr, align 8
  br label %for.cond.228

for.end.245:                                      ; preds = %for.cond.228
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.end.245
  %177 = load i32, i32* %i, align 4
  %inc247 = add nsw i32 %177, 1
  store i32 %inc247, i32* %i, align 4
  br label %for.cond.218

for.end.248:                                      ; preds = %for.cond.218
  %178 = load i32, i32* %count, align 4
  %add249 = add nsw i32 %178, 1
  %179 = load i32, i32* %count, align 4
  %add250 = add nsw i32 %179, 1
  call void @recursePath(i32 %add249, i32 0, i32 0, i32 %add250)
  store i32 1, i32* %i, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.280, %for.end.248
  %180 = load i32, i32* %i, align 4
  %181 = load i32, i32* %count, align 4
  %add252 = add nsw i32 %181, 1
  %cmp253 = icmp sle i32 %180, %add252
  br i1 %cmp253, label %for.body.255, label %for.end.282

for.body.255:                                     ; preds = %for.cond.251
  %182 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %182 to i64
  %183 = load i16*, i16** @addTargetList, align 8
  %arrayidx257 = getelementptr inbounds i16, i16* %183, i64 %idxprom256
  %184 = load i16, i16* %arrayidx257, align 2
  %conv258 = sext i16 %184 to i32
  store i32 %conv258, i32* %node, align 4
  %185 = load i32, i32* %node, align 4
  %idxprom259 = sext i32 %185 to i64
  %186 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx260 = getelementptr inbounds %struct.gnode*, %struct.gnode** %186, i64 %idxprom259
  %187 = load %struct.gnode*, %struct.gnode** %arrayidx260, align 8
  store %struct.gnode* %187, %struct.gnode** %gptr, align 8
  br label %for.cond.261

for.cond.261:                                     ; preds = %for.inc.277, %for.body.255
  %188 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp262 = icmp ne %struct.gnode* %188, null
  br i1 %cmp262, label %for.body.264, label %for.end.279

for.body.264:                                     ; preds = %for.cond.261
  %189 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node265 = getelementptr inbounds %struct.gnode, %struct.gnode* %189, i32 0, i32 0
  %190 = load i32, i32* %node265, align 4
  store i32 %190, i32* %node1, align 4
  %191 = load i32, i32* %node1, align 4
  %idxprom266 = sext i32 %191 to i64
  %192 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx267 = getelementptr inbounds %struct.gnode*, %struct.gnode** %192, i64 %idxprom266
  %193 = load %struct.gnode*, %struct.gnode** %arrayidx267, align 8
  store %struct.gnode* %193, %struct.gnode** %gptr1, align 8
  br label %for.cond.268

for.cond.268:                                     ; preds = %if.end.274, %for.body.264
  %194 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node269 = getelementptr inbounds %struct.gnode, %struct.gnode* %194, i32 0, i32 0
  %195 = load i32, i32* %node269, align 4
  %196 = load i32, i32* %node, align 4
  %cmp270 = icmp eq i32 %195, %196
  br i1 %cmp270, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %for.cond.268
  %197 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive273 = getelementptr inbounds %struct.gnode, %struct.gnode* %197, i32 0, i32 6
  store i32 0, i32* %einactive273, align 4
  br label %for.end.276

if.end.274:                                       ; preds = %for.cond.268
  %198 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next275 = getelementptr inbounds %struct.gnode, %struct.gnode* %198, i32 0, i32 7
  %199 = load %struct.gnode*, %struct.gnode** %next275, align 8
  store %struct.gnode* %199, %struct.gnode** %gptr1, align 8
  br label %for.cond.268

for.end.276:                                      ; preds = %if.then.272
  br label %for.inc.277

for.inc.277:                                      ; preds = %for.end.276
  %200 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next278 = getelementptr inbounds %struct.gnode, %struct.gnode* %200, i32 0, i32 7
  %201 = load %struct.gnode*, %struct.gnode** %next278, align 8
  store %struct.gnode* %201, %struct.gnode** %gptr, align 8
  br label %for.cond.261

for.end.279:                                      ; preds = %for.cond.261
  br label %for.inc.280

for.inc.280:                                      ; preds = %for.end.279
  %202 = load i32, i32* %i, align 4
  %inc281 = add nsw i32 %202, 1
  store i32 %inc281, i32* %i, align 4
  br label %for.cond.251

for.end.282:                                      ; preds = %for.cond.251
  %203 = load %struct.tnode*, %struct.tnode** @indexRoot, align 8
  %cmp283 = icmp ne %struct.tnode* %203, null
  br i1 %cmp283, label %if.then.285, label %if.end.292

if.then.285:                                      ; preds = %for.end.282
  br label %for.cond.286

for.cond.286:                                     ; preds = %if.end.290, %if.then.285
  call void @tpop(%struct.tnode** @indexRoot, %struct.tnode** %tptr, i32* %i, i32* %j)
  %204 = load %struct.tnode*, %struct.tnode** %tptr, align 8
  %cmp287 = icmp eq %struct.tnode* %204, null
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %for.cond.286
  br label %for.end.291

if.end.290:                                       ; preds = %for.cond.286
  br label %for.cond.286

for.end.291:                                      ; preds = %if.then.289
  br label %if.end.292

if.end.292:                                       ; preds = %for.end.291, %for.end.282
  %205 = load i32, i32* %bareflag, align 4
  %cmp293 = icmp eq i32 %205, 1
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.end.292
  store i32 0, i32* @bareMinimum, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %if.end.292
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

declare void @tinsert(%struct.tnode**, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @recursePath(i32 %dsptr, i32 %atptr, i32 %attachPt, i32 %addEquivs) #0 {
entry:
  %dsptr.addr = alloca i32, align 4
  %atptr.addr = alloca i32, align 4
  %attachPt.addr = alloca i32, align 4
  %addEquivs.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %min = alloca i32, align 4
  %dnode = alloca i32, align 4
  %savei = alloca i32, align 4
  %node = alloca i32, align 4
  %node1 = alloca i32, align 4
  %node2 = alloca i32, align 4
  %t = alloca i32, align 4
  %numberPaths = alloca i32, align 4
  %count = alloca i32, align 4
  %numadd = alloca i32, align 4
  %numdelete = alloca i32, align 4
  %junk = alloca i32, align 4
  %c = alloca i32, align 4
  %value = alloca i32, align 4
  %index = alloca i32, align 4
  %found = alloca i32, align 4
  %savej = alloca i32, align 4
  %extraS = alloca i32, align 4
  %numExtra = alloca i32, align 4
  %s = alloca i32, align 4
  %extraSlist = alloca i32*, align 8
  %x = alloca i32, align 4
  %dslist = alloca i16*, align 8
  %atlist = alloca i16*, align 8
  %tempPL = alloca i32**, align 8
  %pathExists = alloca i32, align 4
  %targ = alloca i32, align 4
  %from = alloca i32, align 4
  %nptr = alloca %struct.nnode*, align 8
  %junkptr = alloca %struct.tnode*, align 8
  %extraRoot = alloca %struct.tnode*, align 8
  %gptr = alloca %struct.gnode*, align 8
  %g1ptr = alloca %struct.gnode*, align 8
  %gptr1 = alloca %struct.gnode*, align 8
  %gptr2 = alloca %struct.gnode*, align 8
  %lptr = alloca %struct.list2*, align 8
  store i32 %dsptr, i32* %dsptr.addr, align 4
  store i32 %atptr, i32* %atptr.addr, align 4
  store i32 %attachPt, i32* %attachPt.addr, align 4
  store i32 %addEquivs, i32* %addEquivs.addr, align 4
  %0 = load i32, i32* @sourcePtr, align 4
  %1 = load i32, i32* %dsptr.addr, align 4
  %sub = sub nsw i32 %0, %1
  %cmp = icmp eq i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @tpop(%struct.tnode** @indexRoot, %struct.tnode** %junkptr, i32* @pathIndex, i32* %junk)
  %2 = load i32, i32* @segPtr, align 4
  %conv = trunc i32 %2 to i16
  %3 = load i32, i32* @pathIndex, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i16**, i16*** @savePaths, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %4, i64 %idxprom
  %5 = load i16*, i16** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %5, i64 0
  store i16 %conv, i16* %arrayidx1, align 2
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @segPtr, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i16*, i16** @segList, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 %idxprom4
  %10 = load i16, i16* %arrayidx5, align 2
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load i32, i32* @pathIndex, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i16**, i16*** @savePaths, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %13, i64 %idxprom7
  %14 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %14, i64 %idxprom6
  store i16 %10, i16* %arrayidx9, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* @pathLength, align 4
  %17 = load i32, i32* @pathIndex, align 4
  call void @tinsert(%struct.tnode** @netRoot, i32 %16, i32 %17)
  %18 = load i32, i32* @treeSize, align 4
  %inc10 = add nsw i32 %18, 1
  store i32 %inc10, i32* @treeSize, align 4
  br label %return

if.end:                                           ; preds = %entry
  store %struct.tnode* null, %struct.tnode** %extraRoot, align 8
  %19 = load i32, i32* @EXTRASOURCES, align 4
  %add = add nsw i32 1, %19
  %conv11 = sext i32 %add to i64
  %mul = mul i64 %conv11, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %20 = bitcast i8* %call to i32*
  store i32* %20, i32** %extraSlist, align 8
  %21 = load i32, i32* @EXTRASOURCES, align 4
  %22 = load i32, i32* @MAXPATHS, align 4
  %mul12 = mul nsw i32 %21, %22
  %add13 = add nsw i32 1, %mul12
  %conv14 = sext i32 %add13 to i64
  %mul15 = mul i64 %conv14, 8
  %call16 = call noalias i8* @malloc(i64 %mul15) #3
  %23 = bitcast i8* %call16 to i32**
  store i32** %23, i32*** %tempPL, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.36, %if.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* @EXTRASOURCES, align 4
  %26 = load i32, i32* @MAXPATHS, align 4
  %mul18 = mul nsw i32 %25, %26
  %cmp19 = icmp sle i32 %24, %mul18
  br i1 %cmp19, label %for.body.21, label %for.end.38

for.body.21:                                      ; preds = %for.cond.17
  %call22 = call noalias i8* @malloc(i64 84) #3
  %27 = bitcast i8* %call22 to i32*
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i32**, i32*** %tempPL, align 8
  %arrayidx24 = getelementptr inbounds i32*, i32** %29, i64 %idxprom23
  store i32* %27, i32** %arrayidx24, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.body.21
  %30 = load i32, i32* %j, align 4
  %cmp26 = icmp sle i32 %30, 20
  br i1 %cmp26, label %for.body.28, label %for.end.35

for.body.28:                                      ; preds = %for.cond.25
  %31 = load i32, i32* %j, align 4
  %idxprom29 = sext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %33 = load i32**, i32*** %tempPL, align 8
  %arrayidx31 = getelementptr inbounds i32*, i32** %33, i64 %idxprom30
  %34 = load i32*, i32** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %34, i64 %idxprom29
  store i32 0, i32* %arrayidx32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.28
  %35 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %36 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %36, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.17

for.end.38:                                       ; preds = %for.cond.17
  %37 = load i32, i32* %dsptr.addr, align 4
  %add39 = add nsw i32 1, %37
  %conv40 = sext i32 %add39 to i64
  %mul41 = mul i64 %conv40, 2
  %call42 = call noalias i8* @malloc(i64 %mul41) #3
  %38 = bitcast i8* %call42 to i16*
  store i16* %38, i16** %dslist, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.51, %for.end.38
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %dsptr.addr, align 4
  %cmp44 = icmp sle i32 %39, %40
  br i1 %cmp44, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %for.cond.43
  %41 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load i16*, i16** @delSourceList, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %42, i64 %idxprom47
  %43 = load i16, i16* %arrayidx48, align 2
  %44 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %44 to i64
  %45 = load i16*, i16** %dslist, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %45, i64 %idxprom49
  store i16 %43, i16* %arrayidx50, align 2
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.46
  %46 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.43

for.end.53:                                       ; preds = %for.cond.43
  %47 = load i32, i32* %atptr.addr, align 4
  %add54 = add nsw i32 1, %47
  %48 = load i32, i32* %addEquivs.addr, align 4
  %add55 = add nsw i32 %add54, %48
  %conv56 = sext i32 %add55 to i64
  %mul57 = mul i64 %conv56, 2
  %call58 = call noalias i8* @malloc(i64 %mul57) #3
  %49 = bitcast i8* %call58 to i16*
  store i16* %49, i16** %atlist, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.68, %for.end.53
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* %atptr.addr, align 4
  %52 = load i32, i32* %addEquivs.addr, align 4
  %add60 = add nsw i32 %51, %52
  %cmp61 = icmp sle i32 %50, %add60
  br i1 %cmp61, label %for.body.63, label %for.end.70

for.body.63:                                      ; preds = %for.cond.59
  %53 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %53 to i64
  %54 = load i16*, i16** @addTargetList, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %54, i64 %idxprom64
  %55 = load i16, i16* %arrayidx65, align 2
  %56 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %56 to i64
  %57 = load i16*, i16** %atlist, align 8
  %arrayidx67 = getelementptr inbounds i16, i16* %57, i64 %idxprom66
  store i16 %55, i16* %arrayidx67, align 2
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.63
  %58 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %58, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.59

for.end.70:                                       ; preds = %for.cond.59
  store i32 1, i32* %j, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.96, %for.end.70
  %59 = load i32, i32* %j, align 4
  %60 = load i32, i32* %dsptr.addr, align 4
  %cmp72 = icmp sle i32 %59, %60
  br i1 %cmp72, label %for.body.74, label %for.end.98

for.body.74:                                      ; preds = %for.cond.71
  %61 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %61 to i64
  %62 = load i16*, i16** %dslist, align 8
  %arrayidx76 = getelementptr inbounds i16, i16* %62, i64 %idxprom75
  %63 = load i16, i16* %arrayidx76, align 2
  %conv77 = sext i16 %63 to i32
  store i32 %conv77, i32* %dnode, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.93, %for.body.74
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* @sourcePtr, align 4
  %cmp79 = icmp sle i32 %64, %65
  br i1 %cmp79, label %for.body.81, label %for.end.95

for.body.81:                                      ; preds = %for.cond.78
  %66 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %66 to i64
  %67 = load i16*, i16** @sourceList, align 8
  %arrayidx83 = getelementptr inbounds i16, i16* %67, i64 %idxprom82
  %68 = load i16, i16* %arrayidx83, align 2
  %conv84 = sext i16 %68 to i32
  %69 = load i32, i32* %dnode, align 4
  %cmp85 = icmp eq i32 %conv84, %69
  br i1 %cmp85, label %if.then.87, label %if.end.92

if.then.87:                                       ; preds = %for.body.81
  %70 = load i32, i32* @sourcePtr, align 4
  %dec = add nsw i32 %70, -1
  store i32 %dec, i32* @sourcePtr, align 4
  %idxprom88 = sext i32 %70 to i64
  %71 = load i16*, i16** @sourceList, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %71, i64 %idxprom88
  %72 = load i16, i16* %arrayidx89, align 2
  %73 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %73 to i64
  %74 = load i16*, i16** @sourceList, align 8
  %arrayidx91 = getelementptr inbounds i16, i16* %74, i64 %idxprom90
  store i16 %72, i16* %arrayidx91, align 2
  br label %for.end.95

if.end.92:                                        ; preds = %for.body.81
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %75 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %75, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.78

for.end.95:                                       ; preds = %if.then.87, %for.cond.78
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.end.95
  %76 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %76, 1
  store i32 %inc97, i32* %j, align 4
  br label %for.cond.71

for.end.98:                                       ; preds = %for.cond.71
  store i32 1, i32* %j, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.109, %for.end.98
  %77 = load i32, i32* %j, align 4
  %78 = load i32, i32* %atptr.addr, align 4
  %79 = load i32, i32* %addEquivs.addr, align 4
  %add100 = add nsw i32 %78, %79
  %cmp101 = icmp sle i32 %77, %add100
  br i1 %cmp101, label %for.body.103, label %for.end.111

for.body.103:                                     ; preds = %for.cond.99
  %80 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %80 to i64
  %81 = load i16*, i16** %atlist, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %81, i64 %idxprom104
  %82 = load i16, i16* %arrayidx105, align 2
  %83 = load i32, i32* @targetPtr, align 4
  %inc106 = add nsw i32 %83, 1
  store i32 %inc106, i32* @targetPtr, align 4
  %idxprom107 = sext i32 %inc106 to i64
  %84 = load i16*, i16** @targetList, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %84, i64 %idxprom107
  store i16 %82, i16* %arrayidx108, align 2
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.103
  %85 = load i32, i32* %j, align 4
  %inc110 = add nsw i32 %85, 1
  store i32 %inc110, i32* %j, align 4
  br label %for.cond.99

for.end.111:                                      ; preds = %for.cond.99
  %86 = load i32, i32* %attachPt.addr, align 4
  %cmp112 = icmp sgt i32 %86, 0
  br i1 %cmp112, label %if.then.114, label %if.end.156

if.then.114:                                      ; preds = %for.end.111
  store i32 1, i32* %j, align 4
  br label %for.cond.115

for.cond.115:                                     ; preds = %for.inc.153, %if.then.114
  %87 = load i32, i32* %j, align 4
  %88 = load i32, i32* %atptr.addr, align 4
  %cmp116 = icmp sle i32 %87, %88
  br i1 %cmp116, label %for.body.118, label %for.end.155

for.body.118:                                     ; preds = %for.cond.115
  %89 = load i32, i32* %j, align 4
  %idxprom119 = sext i32 %89 to i64
  %90 = load i16*, i16** %atlist, align 8
  %arrayidx120 = getelementptr inbounds i16, i16* %90, i64 %idxprom119
  %91 = load i16, i16* %arrayidx120, align 2
  %conv121 = sext i16 %91 to i32
  store i32 %conv121, i32* %node1, align 4
  %92 = load i32, i32* %j, align 4
  %93 = load i32, i32* %atptr.addr, align 4
  %cmp122 = icmp eq i32 %92, %93
  br i1 %cmp122, label %if.then.124, label %if.else

if.then.124:                                      ; preds = %for.body.118
  %94 = load i32, i32* %attachPt.addr, align 4
  store i32 %94, i32* %node2, align 4
  br label %if.end.129

if.else:                                          ; preds = %for.body.118
  %95 = load i32, i32* %j, align 4
  %add125 = add nsw i32 %95, 1
  %idxprom126 = sext i32 %add125 to i64
  %96 = load i16*, i16** %atlist, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %96, i64 %idxprom126
  %97 = load i16, i16* %arrayidx127, align 2
  %conv128 = sext i16 %97 to i32
  store i32 %conv128, i32* %node2, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.else, %if.then.124
  %98 = load i32, i32* %node1, align 4
  %idxprom130 = sext i32 %98 to i64
  %99 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx131 = getelementptr inbounds %struct.gnode*, %struct.gnode** %99, i64 %idxprom130
  %100 = load %struct.gnode*, %struct.gnode** %arrayidx131, align 8
  store %struct.gnode* %100, %struct.gnode** %gptr1, align 8
  %101 = load i32, i32* %node2, align 4
  %idxprom132 = sext i32 %101 to i64
  %102 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx133 = getelementptr inbounds %struct.gnode*, %struct.gnode** %102, i64 %idxprom132
  %103 = load %struct.gnode*, %struct.gnode** %arrayidx133, align 8
  store %struct.gnode* %103, %struct.gnode** %gptr2, align 8
  %104 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  store %struct.gnode* %104, %struct.gnode** %gptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.140, %if.end.129
  %105 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp134 = icmp ne %struct.gnode* %105, null
  br i1 %cmp134, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %106 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node136 = getelementptr inbounds %struct.gnode, %struct.gnode* %106, i32 0, i32 0
  %107 = load i32, i32* %node136, align 4
  %108 = load i32, i32* %node2, align 4
  %cmp137 = icmp eq i32 %107, %108
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %while.body
  %109 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost = getelementptr inbounds %struct.gnode, %struct.gnode* %109, i32 0, i32 3
  store i32 1000000000, i32* %cost, align 4
  br label %while.end

if.end.140:                                       ; preds = %while.body
  %110 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %110, i32 0, i32 7
  %111 = load %struct.gnode*, %struct.gnode** %next, align 8
  store %struct.gnode* %111, %struct.gnode** %gptr, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.139, %while.cond
  %112 = load %struct.gnode*, %struct.gnode** %gptr2, align 8
  store %struct.gnode* %112, %struct.gnode** %gptr, align 8
  br label %while.cond.141

while.cond.141:                                   ; preds = %if.end.150, %while.end
  %113 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp142 = icmp ne %struct.gnode* %113, null
  br i1 %cmp142, label %while.body.144, label %while.end.152

while.body.144:                                   ; preds = %while.cond.141
  %114 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node145 = getelementptr inbounds %struct.gnode, %struct.gnode* %114, i32 0, i32 0
  %115 = load i32, i32* %node145, align 4
  %116 = load i32, i32* %node1, align 4
  %cmp146 = icmp eq i32 %115, %116
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %while.body.144
  %117 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost149 = getelementptr inbounds %struct.gnode, %struct.gnode* %117, i32 0, i32 3
  store i32 1000000000, i32* %cost149, align 4
  br label %while.end.152

if.end.150:                                       ; preds = %while.body.144
  %118 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next151 = getelementptr inbounds %struct.gnode, %struct.gnode* %118, i32 0, i32 7
  %119 = load %struct.gnode*, %struct.gnode** %next151, align 8
  store %struct.gnode* %119, %struct.gnode** %gptr, align 8
  br label %while.cond.141

while.end.152:                                    ; preds = %if.then.148, %while.cond.141
  br label %for.inc.153

for.inc.153:                                      ; preds = %while.end.152
  %120 = load i32, i32* %j, align 4
  %inc154 = add nsw i32 %120, 1
  store i32 %inc154, i32* %j, align 4
  br label %for.cond.115

for.end.155:                                      ; preds = %for.cond.115
  br label %if.end.156

if.end.156:                                       ; preds = %for.end.155, %for.end.111
  store i32 0, i32* %numExtra, align 4
  store i32 0, i32* %numberPaths, align 4
  store i32 1, i32* %extraS, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.319, %if.end.156
  %121 = load i32, i32* %extraS, align 4
  %122 = load i32, i32* @EXTRASOURCES, align 4
  %cmp158 = icmp sle i32 %121, %122
  br i1 %cmp158, label %for.body.160, label %for.end.321

for.body.160:                                     ; preds = %for.cond.157
  %123 = load i32, i32* %extraS, align 4
  %cmp161 = icmp sgt i32 %123, 1
  br i1 %cmp161, label %land.lhs.true, label %if.end.164

land.lhs.true:                                    ; preds = %for.body.160
  %124 = load i32, i32* @bareMinimum, align 4
  %tobool = icmp ne i32 %124, 0
  br i1 %tobool, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %land.lhs.true
  br label %for.end.321

if.end.164:                                       ; preds = %land.lhs.true, %for.body.160
  store i32 1000000000, i32* %min, align 4
  store i32 0, i32* %found, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.165

for.cond.165:                                     ; preds = %for.inc.255, %if.end.164
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* @sourcePtr, align 4
  %cmp166 = icmp sle i32 %125, %126
  br i1 %cmp166, label %for.body.168, label %for.end.257

for.body.168:                                     ; preds = %for.cond.165
  store i32 1, i32* %s, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.182, %for.body.168
  %127 = load i32, i32* %s, align 4
  %128 = load i32, i32* %numExtra, align 4
  %cmp170 = icmp sle i32 %127, %128
  br i1 %cmp170, label %for.body.172, label %for.end.184

for.body.172:                                     ; preds = %for.cond.169
  %129 = load i32, i32* %s, align 4
  %idxprom173 = sext i32 %129 to i64
  %130 = load i32*, i32** %extraSlist, align 8
  %arrayidx174 = getelementptr inbounds i32, i32* %130, i64 %idxprom173
  %131 = load i32, i32* %arrayidx174, align 4
  %132 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %132 to i64
  %133 = load i16*, i16** @sourceList, align 8
  %arrayidx176 = getelementptr inbounds i16, i16* %133, i64 %idxprom175
  %134 = load i16, i16* %arrayidx176, align 2
  %conv177 = sext i16 %134 to i32
  %cmp178 = icmp eq i32 %131, %conv177
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.body.172
  br label %for.end.184

if.end.181:                                       ; preds = %for.body.172
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %135 = load i32, i32* %s, align 4
  %inc183 = add nsw i32 %135, 1
  store i32 %inc183, i32* %s, align 4
  br label %for.cond.169

for.end.184:                                      ; preds = %if.then.180, %for.cond.169
  %136 = load i32, i32* %s, align 4
  %137 = load i32, i32* %numExtra, align 4
  %cmp185 = icmp sle i32 %136, %137
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %for.end.184
  br label %for.inc.255

if.end.188:                                       ; preds = %for.end.184
  store i32 1, i32* %found, align 4
  %138 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %138 to i64
  %139 = load i16*, i16** @sourceList, align 8
  %arrayidx190 = getelementptr inbounds i16, i16* %139, i64 %idxprom189
  %140 = load i16, i16* %arrayidx190, align 2
  %conv191 = sext i16 %140 to i32
  %141 = load i32, i32* @numnodes, align 4
  %sub192 = sub nsw i32 %conv191, %141
  store i32 %sub192, i32* %node, align 4
  %142 = load i32, i32* %node, align 4
  %idxprom193 = sext i32 %142 to i64
  %143 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx194 = getelementptr inbounds %struct.pnode, %struct.pnode* %143, i64 %idxprom193
  %nodeList = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx194, i32 0, i32 1
  %144 = load %struct.nnode*, %struct.nnode** %nodeList, align 8
  store %struct.nnode* %144, %struct.nnode** %nptr, align 8
  store i32 1, i32* %j, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.252, %if.end.188
  %145 = load i32, i32* %j, align 4
  %146 = load i32, i32* @targetPtr, align 4
  %cmp196 = icmp sle i32 %145, %146
  br i1 %cmp196, label %for.body.198, label %for.end.254

for.body.198:                                     ; preds = %for.cond.195
  %147 = load i32, i32* %j, align 4
  %idxprom199 = sext i32 %147 to i64
  %148 = load i16*, i16** @targetList, align 8
  %arrayidx200 = getelementptr inbounds i16, i16* %148, i64 %idxprom199
  %149 = load i16, i16* %arrayidx200, align 2
  %conv201 = sext i16 %149 to i32
  store i32 %conv201, i32* %targ, align 4
  %150 = load i32, i32* %targ, align 4
  %idxprom202 = sext i32 %150 to i64
  %151 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx203 = getelementptr inbounds %struct.nnode, %struct.nnode* %151, i64 %idxprom202
  %distance = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx203, i32 0, i32 1
  %152 = load i32, i32* %distance, align 4
  %153 = load i32, i32* %min, align 4
  %cmp204 = icmp slt i32 %152, %153
  br i1 %cmp204, label %if.then.206, label %if.end.251

if.then.206:                                      ; preds = %for.body.198
  %154 = load i32, i32* %targ, align 4
  %idxprom207 = sext i32 %154 to i64
  %155 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx208 = getelementptr inbounds %struct.nnode, %struct.nnode* %155, i64 %idxprom207
  %from209 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx208, i32 0, i32 2
  %156 = load i16, i16* %from209, align 2
  %conv210 = sext i16 %156 to i32
  store i32 %conv210, i32* %from, align 4
  store i32 0, i32* %pathExists, align 4
  %157 = load i32, i32* %targ, align 4
  %idxprom211 = sext i32 %157 to i64
  %158 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx212 = getelementptr inbounds %struct.gnode*, %struct.gnode** %158, i64 %idxprom211
  %159 = load %struct.gnode*, %struct.gnode** %arrayidx212, align 8
  store %struct.gnode* %159, %struct.gnode** %g1ptr, align 8
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.239, %if.then.206
  %160 = load i32, i32* %pathExists, align 4
  %cmp214 = icmp eq i32 %160, 0
  br i1 %cmp214, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.213
  %161 = load %struct.gnode*, %struct.gnode** %g1ptr, align 8
  %cmp216 = icmp ne %struct.gnode* %161, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.213
  %162 = phi i1 [ false, %for.cond.213 ], [ %cmp216, %land.rhs ]
  br i1 %162, label %for.body.218, label %for.end.241

for.body.218:                                     ; preds = %land.end
  %163 = load %struct.gnode*, %struct.gnode** %g1ptr, align 8
  %node219 = getelementptr inbounds %struct.gnode, %struct.gnode* %163, i32 0, i32 0
  %164 = load i32, i32* %node219, align 4
  store i32 %164, i32* %node, align 4
  %165 = load i32, i32* %node, align 4
  %166 = load i32, i32* %from, align 4
  %cmp220 = icmp ne i32 %165, %166
  br i1 %cmp220, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %for.body.218
  br label %for.inc.239

if.end.223:                                       ; preds = %for.body.218
  %167 = load i32, i32* %node, align 4
  %idxprom224 = sext i32 %167 to i64
  %168 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx225 = getelementptr inbounds %struct.gnode*, %struct.gnode** %168, i64 %idxprom224
  %169 = load %struct.gnode*, %struct.gnode** %arrayidx225, align 8
  store %struct.gnode* %169, %struct.gnode** %gptr, align 8
  br label %for.cond.226

for.cond.226:                                     ; preds = %if.end.236, %if.end.223
  %170 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node227 = getelementptr inbounds %struct.gnode, %struct.gnode* %170, i32 0, i32 0
  %171 = load i32, i32* %node227, align 4
  %172 = load i32, i32* %targ, align 4
  %cmp228 = icmp eq i32 %171, %172
  br i1 %cmp228, label %if.then.230, label %if.end.236

if.then.230:                                      ; preds = %for.cond.226
  %173 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost231 = getelementptr inbounds %struct.gnode, %struct.gnode* %173, i32 0, i32 3
  %174 = load i32, i32* %cost231, align 4
  %cmp232 = icmp slt i32 %174, 1000000000
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %if.then.230
  store i32 1, i32* %pathExists, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.then.234, %if.then.230
  br label %for.end.238

if.end.236:                                       ; preds = %for.cond.226
  %175 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next237 = getelementptr inbounds %struct.gnode, %struct.gnode* %175, i32 0, i32 7
  %176 = load %struct.gnode*, %struct.gnode** %next237, align 8
  store %struct.gnode* %176, %struct.gnode** %gptr, align 8
  br label %for.cond.226

for.end.238:                                      ; preds = %if.end.235
  br label %for.inc.239

for.inc.239:                                      ; preds = %for.end.238, %if.then.222
  %177 = load %struct.gnode*, %struct.gnode** %g1ptr, align 8
  %next240 = getelementptr inbounds %struct.gnode, %struct.gnode* %177, i32 0, i32 7
  %178 = load %struct.gnode*, %struct.gnode** %next240, align 8
  store %struct.gnode* %178, %struct.gnode** %g1ptr, align 8
  br label %for.cond.213

for.end.241:                                      ; preds = %land.end
  %179 = load i32, i32* %pathExists, align 4
  %tobool242 = icmp ne i32 %179, 0
  br i1 %tobool242, label %if.then.243, label %if.end.250

if.then.243:                                      ; preds = %for.end.241
  %180 = load i32, i32* %targ, align 4
  %idxprom244 = sext i32 %180 to i64
  %181 = load %struct.nnode*, %struct.nnode** %nptr, align 8
  %arrayidx245 = getelementptr inbounds %struct.nnode, %struct.nnode* %181, i64 %idxprom244
  %distance246 = getelementptr inbounds %struct.nnode, %struct.nnode* %arrayidx245, i32 0, i32 1
  %182 = load i32, i32* %distance246, align 4
  store i32 %182, i32* %min, align 4
  %183 = load i32, i32* %i, align 4
  %idxprom247 = sext i32 %183 to i64
  %184 = load i16*, i16** @sourceList, align 8
  %arrayidx248 = getelementptr inbounds i16, i16* %184, i64 %idxprom247
  %185 = load i16, i16* %arrayidx248, align 2
  %conv249 = sext i16 %185 to i32
  store i32 %conv249, i32* %savei, align 4
  %186 = load i32, i32* %j, align 4
  store i32 %186, i32* %savej, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.243, %for.end.241
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250, %for.body.198
  br label %for.inc.252

for.inc.252:                                      ; preds = %if.end.251
  %187 = load i32, i32* %j, align 4
  %inc253 = add nsw i32 %187, 1
  store i32 %inc253, i32* %j, align 4
  br label %for.cond.195

for.end.254:                                      ; preds = %for.cond.195
  br label %for.inc.255

for.inc.255:                                      ; preds = %for.end.254, %if.then.187
  %188 = load i32, i32* %i, align 4
  %inc256 = add nsw i32 %188, 1
  store i32 %inc256, i32* %i, align 4
  br label %for.cond.165

for.end.257:                                      ; preds = %for.cond.165
  %189 = load i32, i32* %found, align 4
  %cmp258 = icmp eq i32 %189, 1
  br i1 %cmp258, label %if.then.260, label %if.end.318

if.then.260:                                      ; preds = %for.end.257
  %190 = load i32, i32* %savei, align 4
  %191 = load i32, i32* %numExtra, align 4
  %inc261 = add nsw i32 %191, 1
  store i32 %inc261, i32* %numExtra, align 4
  %idxprom262 = sext i32 %inc261 to i64
  %192 = load i32*, i32** %extraSlist, align 8
  %arrayidx263 = getelementptr inbounds i32, i32* %192, i64 %idxprom262
  store i32 %190, i32* %arrayidx263, align 4
  %193 = load i32, i32* %numberPaths, align 4
  store i32 %193, i32* %i, align 4
  %194 = load i32, i32* %savei, align 4
  %195 = load i32, i32* %savej, align 4
  %call264 = call i32 @mshortest(i32 %194, i32 %195)
  %196 = load i32, i32* %numberPaths, align 4
  %add265 = add nsw i32 %196, %call264
  store i32 %add265, i32* %numberPaths, align 4
  %197 = load i32, i32* %i, align 4
  %inc266 = add nsw i32 %197, 1
  store i32 %inc266, i32* %i, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond.267

for.cond.267:                                     ; preds = %for.inc.314, %if.then.260
  %198 = load i32, i32* %i, align 4
  %199 = load i32, i32* %numberPaths, align 4
  %cmp268 = icmp sle i32 %198, %199
  br i1 %cmp268, label %for.body.270, label %for.end.317

for.body.270:                                     ; preds = %for.cond.267
  %200 = load i32, i32* %l, align 4
  %idxprom271 = sext i32 %200 to i64
  %201 = load i32**, i32*** @pathList, align 8
  %arrayidx272 = getelementptr inbounds i32*, i32** %201, i64 %idxprom271
  %202 = load i32*, i32** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds i32, i32* %202, i64 0
  %203 = load i32, i32* %arrayidx273, align 4
  %add274 = add nsw i32 %203, 1
  %cmp275 = icmp sgt i32 %add274, 20
  br i1 %cmp275, label %if.then.277, label %if.end.289

if.then.277:                                      ; preds = %for.body.270
  %204 = load i32, i32* %i, align 4
  %idxprom278 = sext i32 %204 to i64
  %205 = load i32**, i32*** %tempPL, align 8
  %arrayidx279 = getelementptr inbounds i32*, i32** %205, i64 %idxprom278
  %206 = load i32*, i32** %arrayidx279, align 8
  %207 = bitcast i32* %206 to i8*
  call void @free(i8* %207) #3
  %208 = load i32, i32* %l, align 4
  %idxprom280 = sext i32 %208 to i64
  %209 = load i32**, i32*** @pathList, align 8
  %arrayidx281 = getelementptr inbounds i32*, i32** %209, i64 %idxprom280
  %210 = load i32*, i32** %arrayidx281, align 8
  %arrayidx282 = getelementptr inbounds i32, i32* %210, i64 0
  %211 = load i32, i32* %arrayidx282, align 4
  %add283 = add nsw i32 %211, 2
  %conv284 = sext i32 %add283 to i64
  %mul285 = mul i64 %conv284, 4
  %call286 = call noalias i8* @malloc(i64 %mul285) #3
  %212 = bitcast i8* %call286 to i32*
  %213 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %213 to i64
  %214 = load i32**, i32*** %tempPL, align 8
  %arrayidx288 = getelementptr inbounds i32*, i32** %214, i64 %idxprom287
  store i32* %212, i32** %arrayidx288, align 8
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.277, %for.body.270
  store i32 0, i32* %j, align 4
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.306, %if.end.289
  %215 = load i32, i32* %j, align 4
  %216 = load i32, i32* %l, align 4
  %idxprom291 = sext i32 %216 to i64
  %217 = load i32**, i32*** @pathList, align 8
  %arrayidx292 = getelementptr inbounds i32*, i32** %217, i64 %idxprom291
  %218 = load i32*, i32** %arrayidx292, align 8
  %arrayidx293 = getelementptr inbounds i32, i32* %218, i64 0
  %219 = load i32, i32* %arrayidx293, align 4
  %add294 = add nsw i32 %219, 1
  %cmp295 = icmp sle i32 %215, %add294
  br i1 %cmp295, label %for.body.297, label %for.end.308

for.body.297:                                     ; preds = %for.cond.290
  %220 = load i32, i32* %j, align 4
  %idxprom298 = sext i32 %220 to i64
  %221 = load i32, i32* %l, align 4
  %idxprom299 = sext i32 %221 to i64
  %222 = load i32**, i32*** @pathList, align 8
  %arrayidx300 = getelementptr inbounds i32*, i32** %222, i64 %idxprom299
  %223 = load i32*, i32** %arrayidx300, align 8
  %arrayidx301 = getelementptr inbounds i32, i32* %223, i64 %idxprom298
  %224 = load i32, i32* %arrayidx301, align 4
  %225 = load i32, i32* %j, align 4
  %idxprom302 = sext i32 %225 to i64
  %226 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %226 to i64
  %227 = load i32**, i32*** %tempPL, align 8
  %arrayidx304 = getelementptr inbounds i32*, i32** %227, i64 %idxprom303
  %228 = load i32*, i32** %arrayidx304, align 8
  %arrayidx305 = getelementptr inbounds i32, i32* %228, i64 %idxprom302
  store i32 %224, i32* %arrayidx305, align 4
  br label %for.inc.306

for.inc.306:                                      ; preds = %for.body.297
  %229 = load i32, i32* %j, align 4
  %inc307 = add nsw i32 %229, 1
  store i32 %inc307, i32* %j, align 4
  br label %for.cond.290

for.end.308:                                      ; preds = %for.cond.290
  %230 = load i32, i32* %j, align 4
  %sub309 = sub nsw i32 %230, 1
  %idxprom310 = sext i32 %sub309 to i64
  %231 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %231 to i64
  %232 = load i32**, i32*** %tempPL, align 8
  %arrayidx312 = getelementptr inbounds i32*, i32** %232, i64 %idxprom311
  %233 = load i32*, i32** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds i32, i32* %233, i64 %idxprom310
  %234 = load i32, i32* %arrayidx313, align 4
  %235 = load i32, i32* %i, align 4
  call void @tinsert(%struct.tnode** %extraRoot, i32 %234, i32 %235)
  br label %for.inc.314

for.inc.314:                                      ; preds = %for.end.308
  %236 = load i32, i32* %i, align 4
  %inc315 = add nsw i32 %236, 1
  store i32 %inc315, i32* %i, align 4
  %237 = load i32, i32* %l, align 4
  %inc316 = add nsw i32 %237, 1
  store i32 %inc316, i32* %l, align 4
  br label %for.cond.267

for.end.317:                                      ; preds = %for.cond.267
  br label %if.end.318

if.end.318:                                       ; preds = %for.end.317, %for.end.257
  br label %for.inc.319

for.inc.319:                                      ; preds = %if.end.318
  %238 = load i32, i32* %extraS, align 4
  %inc320 = add nsw i32 %238, 1
  store i32 %inc320, i32* %extraS, align 4
  br label %for.cond.157

for.end.321:                                      ; preds = %if.then.163, %for.cond.157
  %239 = load i32, i32* %numberPaths, align 4
  %240 = load i32, i32* @Mpaths, align 4
  %cmp322 = icmp sge i32 %239, %240
  br i1 %cmp322, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.321
  %241 = load i32, i32* @Mpaths, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.321
  %242 = load i32, i32* %numberPaths, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %241, %cond.true ], [ %242, %cond.false ]
  store i32 %cond, i32* %s, align 4
  store i32 1, i32* %l, align 4
  br label %for.cond.324

for.cond.324:                                     ; preds = %for.inc.570, %cond.end
  %243 = load i32, i32* %l, align 4
  %244 = load i32, i32* %s, align 4
  %cmp325 = icmp sle i32 %243, %244
  br i1 %cmp325, label %for.body.327, label %for.end.572

for.body.327:                                     ; preds = %for.cond.324
  call void @tpop(%struct.tnode** %extraRoot, %struct.tnode** %junkptr, i32* %junk, i32* %j)
  %245 = load i32, i32* %j, align 4
  %idxprom328 = sext i32 %245 to i64
  %246 = load i32**, i32*** %tempPL, align 8
  %arrayidx329 = getelementptr inbounds i32*, i32** %246, i64 %idxprom328
  %247 = load i32*, i32** %arrayidx329, align 8
  %arrayidx330 = getelementptr inbounds i32, i32* %247, i64 0
  %248 = load i32, i32* %arrayidx330, align 4
  store i32 %248, i32* %k, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.331

for.cond.331:                                     ; preds = %for.inc.342, %for.body.327
  %249 = load i32, i32* %i, align 4
  %250 = load i32, i32* %k, align 4
  %cmp332 = icmp slt i32 %249, %250
  br i1 %cmp332, label %for.body.334, label %for.end.344

for.body.334:                                     ; preds = %for.cond.331
  %251 = load i32, i32* %i, align 4
  %idxprom335 = sext i32 %251 to i64
  %252 = load i32, i32* %j, align 4
  %idxprom336 = sext i32 %252 to i64
  %253 = load i32**, i32*** %tempPL, align 8
  %arrayidx337 = getelementptr inbounds i32*, i32** %253, i64 %idxprom336
  %254 = load i32*, i32** %arrayidx337, align 8
  %arrayidx338 = getelementptr inbounds i32, i32* %254, i64 %idxprom335
  %255 = load i32, i32* %arrayidx338, align 4
  %conv339 = trunc i32 %255 to i16
  %256 = load i32, i32* %i, align 4
  %idxprom340 = sext i32 %256 to i64
  %257 = load i16*, i16** @addTargetList, align 8
  %arrayidx341 = getelementptr inbounds i16, i16* %257, i64 %idxprom340
  store i16 %conv339, i16* %arrayidx341, align 2
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.body.334
  %258 = load i32, i32* %i, align 4
  %inc343 = add nsw i32 %258, 1
  store i32 %inc343, i32* %i, align 4
  br label %for.cond.331

for.end.344:                                      ; preds = %for.cond.331
  store i32 0, i32* %numdelete, align 4
  %259 = load i32, i32* %k, align 4
  %sub345 = sub nsw i32 %259, 1
  store i32 %sub345, i32* %numadd, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.346

for.cond.346:                                     ; preds = %for.inc.362, %for.end.344
  %260 = load i32, i32* %i, align 4
  %261 = load i32, i32* %k, align 4
  %cmp347 = icmp slt i32 %260, %261
  br i1 %cmp347, label %for.body.349, label %for.end.364

for.body.349:                                     ; preds = %for.cond.346
  %262 = load i32, i32* %i, align 4
  %idxprom350 = sext i32 %262 to i64
  %263 = load i16*, i16** @addTargetList, align 8
  %arrayidx351 = getelementptr inbounds i16, i16* %263, i64 %idxprom350
  %264 = load i16, i16* %arrayidx351, align 2
  %conv352 = sext i16 %264 to i32
  %265 = load i32, i32* @numnodes, align 4
  %cmp353 = icmp sgt i32 %conv352, %265
  br i1 %cmp353, label %if.then.355, label %if.end.361

if.then.355:                                      ; preds = %for.body.349
  %266 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %266 to i64
  %267 = load i16*, i16** @addTargetList, align 8
  %arrayidx357 = getelementptr inbounds i16, i16* %267, i64 %idxprom356
  %268 = load i16, i16* %arrayidx357, align 2
  %269 = load i32, i32* %numdelete, align 4
  %inc358 = add nsw i32 %269, 1
  store i32 %inc358, i32* %numdelete, align 4
  %idxprom359 = sext i32 %inc358 to i64
  %270 = load i16*, i16** @delSourceList, align 8
  %arrayidx360 = getelementptr inbounds i16, i16* %270, i64 %idxprom359
  store i16 %268, i16* %arrayidx360, align 2
  br label %if.end.361

if.end.361:                                       ; preds = %if.then.355, %for.body.349
  br label %for.inc.362

for.inc.362:                                      ; preds = %if.end.361
  %271 = load i32, i32* %i, align 4
  %inc363 = add nsw i32 %271, 1
  store i32 %inc363, i32* %i, align 4
  br label %for.cond.346

for.end.364:                                      ; preds = %for.cond.346
  store i32 0, i32* %count, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.461, %for.end.364
  %272 = load i32, i32* %i, align 4
  %273 = load i32, i32* %numdelete, align 4
  %cmp366 = icmp sle i32 %272, %273
  br i1 %cmp366, label %for.body.368, label %for.end.463

for.body.368:                                     ; preds = %for.cond.365
  %274 = load i32, i32* %i, align 4
  %idxprom369 = sext i32 %274 to i64
  %275 = load i16*, i16** @delSourceList, align 8
  %arrayidx370 = getelementptr inbounds i16, i16* %275, i64 %idxprom369
  %276 = load i16, i16* %arrayidx370, align 2
  %conv371 = sext i16 %276 to i32
  store i32 %conv371, i32* %savei, align 4
  %277 = load i32, i32* %savei, align 4
  %278 = load i32, i32* @numnodes, align 4
  %sub372 = sub nsw i32 %277, %278
  %idxprom373 = sext i32 %sub372 to i64
  %279 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx374 = getelementptr inbounds %struct.pnode, %struct.pnode* %279, i64 %idxprom373
  %eptr = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx374, i32 0, i32 0
  %280 = load i32, i32* %eptr, align 4
  %cmp375 = icmp ne i32 %280, 0
  br i1 %cmp375, label %if.then.377, label %if.else.418

if.then.377:                                      ; preds = %for.body.368
  %281 = load i32, i32* %savei, align 4
  %282 = load i32, i32* @numnodes, align 4
  %sub378 = sub nsw i32 %281, %282
  %idxprom379 = sext i32 %sub378 to i64
  %283 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx380 = getelementptr inbounds %struct.pnode, %struct.pnode* %283, i64 %idxprom379
  %eptr381 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx380, i32 0, i32 0
  %284 = load i32, i32* %eptr381, align 4
  %285 = load i32, i32* @numnodes, align 4
  %add382 = add nsw i32 %284, %285
  store i32 %add382, i32* %node, align 4
  store i32 1, i32* %t, align 4
  br label %for.cond.383

for.cond.383:                                     ; preds = %for.inc.395, %if.then.377
  %286 = load i32, i32* %t, align 4
  %287 = load i32, i32* %numdelete, align 4
  %288 = load i32, i32* %count, align 4
  %add384 = add nsw i32 %287, %288
  %cmp385 = icmp sle i32 %286, %add384
  br i1 %cmp385, label %for.body.387, label %for.end.397

for.body.387:                                     ; preds = %for.cond.383
  %289 = load i32, i32* %node, align 4
  %290 = load i32, i32* %t, align 4
  %idxprom388 = sext i32 %290 to i64
  %291 = load i16*, i16** @delSourceList, align 8
  %arrayidx389 = getelementptr inbounds i16, i16* %291, i64 %idxprom388
  %292 = load i16, i16* %arrayidx389, align 2
  %conv390 = sext i16 %292 to i32
  %cmp391 = icmp eq i32 %289, %conv390
  br i1 %cmp391, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %for.body.387
  br label %for.end.397

if.end.394:                                       ; preds = %for.body.387
  br label %for.inc.395

for.inc.395:                                      ; preds = %if.end.394
  %293 = load i32, i32* %t, align 4
  %inc396 = add nsw i32 %293, 1
  store i32 %inc396, i32* %t, align 4
  br label %for.cond.383

for.end.397:                                      ; preds = %if.then.393, %for.cond.383
  %294 = load i32, i32* %t, align 4
  %295 = load i32, i32* %numdelete, align 4
  %296 = load i32, i32* %count, align 4
  %add398 = add nsw i32 %295, %296
  %cmp399 = icmp sgt i32 %294, %add398
  br i1 %cmp399, label %if.then.401, label %if.end.411

if.then.401:                                      ; preds = %for.end.397
  %297 = load i32, i32* %node, align 4
  %conv402 = trunc i32 %297 to i16
  %298 = load i32, i32* %numdelete, align 4
  %299 = load i32, i32* %count, align 4
  %inc403 = add nsw i32 %299, 1
  store i32 %inc403, i32* %count, align 4
  %add404 = add nsw i32 %298, %inc403
  %idxprom405 = sext i32 %add404 to i64
  %300 = load i16*, i16** @delSourceList, align 8
  %arrayidx406 = getelementptr inbounds i16, i16* %300, i64 %idxprom405
  store i16 %conv402, i16* %arrayidx406, align 2
  %301 = load i32, i32* %node, align 4
  %conv407 = trunc i32 %301 to i16
  %302 = load i32, i32* %numadd, align 4
  %303 = load i32, i32* %count, align 4
  %add408 = add nsw i32 %302, %303
  %idxprom409 = sext i32 %add408 to i64
  %304 = load i16*, i16** @addTargetList, align 8
  %arrayidx410 = getelementptr inbounds i16, i16* %304, i64 %idxprom409
  store i16 %conv407, i16* %arrayidx410, align 2
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.401, %for.end.397
  %305 = load i32, i32* %savei, align 4
  %306 = load i32, i32* @numnodes, align 4
  %sub412 = sub nsw i32 %305, %306
  %idxprom413 = sext i32 %sub412 to i64
  %307 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx414 = getelementptr inbounds %struct.pnode, %struct.pnode* %307, i64 %idxprom413
  %eptr415 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx414, i32 0, i32 0
  %308 = load i32, i32* %eptr415, align 4
  %idxprom416 = sext i32 %308 to i64
  %309 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx417 = getelementptr inbounds %struct.pnode, %struct.pnode* %309, i64 %idxprom416
  %equiv = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx417, i32 0, i32 2
  %310 = load %struct.list2*, %struct.list2** %equiv, align 8
  store %struct.list2* %310, %struct.list2** %lptr, align 8
  br label %if.end.423

if.else.418:                                      ; preds = %for.body.368
  %311 = load i32, i32* %savei, align 4
  %312 = load i32, i32* @numnodes, align 4
  %sub419 = sub nsw i32 %311, %312
  %idxprom420 = sext i32 %sub419 to i64
  %313 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %arrayidx421 = getelementptr inbounds %struct.pnode, %struct.pnode* %313, i64 %idxprom420
  %equiv422 = getelementptr inbounds %struct.pnode, %struct.pnode* %arrayidx421, i32 0, i32 2
  %314 = load %struct.list2*, %struct.list2** %equiv422, align 8
  store %struct.list2* %314, %struct.list2** %lptr, align 8
  br label %if.end.423

if.end.423:                                       ; preds = %if.else.418, %if.end.411
  br label %while.cond.424

while.cond.424:                                   ; preds = %if.end.458, %if.end.423
  %315 = load %struct.list2*, %struct.list2** %lptr, align 8
  %cmp425 = icmp ne %struct.list2* %315, null
  br i1 %cmp425, label %while.body.427, label %while.end.460

while.body.427:                                   ; preds = %while.cond.424
  %316 = load %struct.list2*, %struct.list2** %lptr, align 8
  %node428 = getelementptr inbounds %struct.list2, %struct.list2* %316, i32 0, i32 0
  %317 = load i32, i32* %node428, align 4
  %318 = load i32, i32* @numnodes, align 4
  %add429 = add nsw i32 %317, %318
  store i32 %add429, i32* %node, align 4
  store i32 1, i32* %t, align 4
  br label %for.cond.430

for.cond.430:                                     ; preds = %for.inc.442, %while.body.427
  %319 = load i32, i32* %t, align 4
  %320 = load i32, i32* %numdelete, align 4
  %321 = load i32, i32* %count, align 4
  %add431 = add nsw i32 %320, %321
  %cmp432 = icmp sle i32 %319, %add431
  br i1 %cmp432, label %for.body.434, label %for.end.444

for.body.434:                                     ; preds = %for.cond.430
  %322 = load i32, i32* %node, align 4
  %323 = load i32, i32* %t, align 4
  %idxprom435 = sext i32 %323 to i64
  %324 = load i16*, i16** @delSourceList, align 8
  %arrayidx436 = getelementptr inbounds i16, i16* %324, i64 %idxprom435
  %325 = load i16, i16* %arrayidx436, align 2
  %conv437 = sext i16 %325 to i32
  %cmp438 = icmp eq i32 %322, %conv437
  br i1 %cmp438, label %if.then.440, label %if.end.441

if.then.440:                                      ; preds = %for.body.434
  br label %for.end.444

if.end.441:                                       ; preds = %for.body.434
  br label %for.inc.442

for.inc.442:                                      ; preds = %if.end.441
  %326 = load i32, i32* %t, align 4
  %inc443 = add nsw i32 %326, 1
  store i32 %inc443, i32* %t, align 4
  br label %for.cond.430

for.end.444:                                      ; preds = %if.then.440, %for.cond.430
  %327 = load i32, i32* %t, align 4
  %328 = load i32, i32* %numdelete, align 4
  %329 = load i32, i32* %count, align 4
  %add445 = add nsw i32 %328, %329
  %cmp446 = icmp sgt i32 %327, %add445
  br i1 %cmp446, label %if.then.448, label %if.end.458

if.then.448:                                      ; preds = %for.end.444
  %330 = load i32, i32* %node, align 4
  %conv449 = trunc i32 %330 to i16
  %331 = load i32, i32* %numdelete, align 4
  %332 = load i32, i32* %count, align 4
  %inc450 = add nsw i32 %332, 1
  store i32 %inc450, i32* %count, align 4
  %add451 = add nsw i32 %331, %inc450
  %idxprom452 = sext i32 %add451 to i64
  %333 = load i16*, i16** @delSourceList, align 8
  %arrayidx453 = getelementptr inbounds i16, i16* %333, i64 %idxprom452
  store i16 %conv449, i16* %arrayidx453, align 2
  %334 = load i32, i32* %node, align 4
  %conv454 = trunc i32 %334 to i16
  %335 = load i32, i32* %numadd, align 4
  %336 = load i32, i32* %count, align 4
  %add455 = add nsw i32 %335, %336
  %idxprom456 = sext i32 %add455 to i64
  %337 = load i16*, i16** @addTargetList, align 8
  %arrayidx457 = getelementptr inbounds i16, i16* %337, i64 %idxprom456
  store i16 %conv454, i16* %arrayidx457, align 2
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.448, %for.end.444
  %338 = load %struct.list2*, %struct.list2** %lptr, align 8
  %next459 = getelementptr inbounds %struct.list2, %struct.list2* %338, i32 0, i32 1
  %339 = load %struct.list2*, %struct.list2** %next459, align 8
  store %struct.list2* %339, %struct.list2** %lptr, align 8
  br label %while.cond.424

while.end.460:                                    ; preds = %while.cond.424
  br label %for.inc.461

for.inc.461:                                      ; preds = %while.end.460
  %340 = load i32, i32* %i, align 4
  %inc462 = add nsw i32 %340, 1
  store i32 %inc462, i32* %i, align 4
  br label %for.cond.365

for.end.463:                                      ; preds = %for.cond.365
  %341 = load i32, i32* %k, align 4
  %add464 = add nsw i32 %341, 1
  %idxprom465 = sext i32 %add464 to i64
  %342 = load i32, i32* %j, align 4
  %idxprom466 = sext i32 %342 to i64
  %343 = load i32**, i32*** %tempPL, align 8
  %arrayidx467 = getelementptr inbounds i32*, i32** %343, i64 %idxprom466
  %344 = load i32*, i32** %arrayidx467, align 8
  %arrayidx468 = getelementptr inbounds i32, i32* %344, i64 %idxprom465
  %345 = load i32, i32* %arrayidx468, align 4
  %346 = load i32, i32* @pathLength, align 4
  %add469 = add nsw i32 %346, %345
  store i32 %add469, i32* @pathLength, align 4
  %347 = load i32, i32* %count, align 4
  %348 = load i32, i32* %numdelete, align 4
  %add470 = add nsw i32 %348, %347
  store i32 %add470, i32* %numdelete, align 4
  %349 = load i32, i32* %count, align 4
  %350 = load i32, i32* %numadd, align 4
  %add471 = add nsw i32 %350, %349
  store i32 %add471, i32* %numadd, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.472

for.cond.472:                                     ; preds = %for.inc.484, %for.end.463
  %351 = load i32, i32* %i, align 4
  %352 = load i32, i32* %k, align 4
  %cmp473 = icmp sle i32 %351, %352
  br i1 %cmp473, label %for.body.475, label %for.end.486

for.body.475:                                     ; preds = %for.cond.472
  %353 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %353 to i64
  %354 = load i32, i32* %j, align 4
  %idxprom477 = sext i32 %354 to i64
  %355 = load i32**, i32*** %tempPL, align 8
  %arrayidx478 = getelementptr inbounds i32*, i32** %355, i64 %idxprom477
  %356 = load i32*, i32** %arrayidx478, align 8
  %arrayidx479 = getelementptr inbounds i32, i32* %356, i64 %idxprom476
  %357 = load i32, i32* %arrayidx479, align 4
  %conv480 = trunc i32 %357 to i16
  %358 = load i32, i32* %i, align 4
  %359 = load i32, i32* @segPtr, align 4
  %add481 = add nsw i32 %358, %359
  %idxprom482 = sext i32 %add481 to i64
  %360 = load i16*, i16** @segList, align 8
  %arrayidx483 = getelementptr inbounds i16, i16* %360, i64 %idxprom482
  store i16 %conv480, i16* %arrayidx483, align 2
  br label %for.inc.484

for.inc.484:                                      ; preds = %for.body.475
  %361 = load i32, i32* %i, align 4
  %inc485 = add nsw i32 %361, 1
  store i32 %inc485, i32* %i, align 4
  br label %for.cond.472

for.end.486:                                      ; preds = %for.cond.472
  %362 = load i32, i32* %i, align 4
  %363 = load i32, i32* @segPtr, align 4
  %add487 = add nsw i32 %362, %363
  %idxprom488 = sext i32 %add487 to i64
  %364 = load i16*, i16** @segList, align 8
  %arrayidx489 = getelementptr inbounds i16, i16* %364, i64 %idxprom488
  store i16 0, i16* %arrayidx489, align 2
  %365 = load i32, i32* %k, align 4
  %add490 = add nsw i32 %365, 1
  %366 = load i32, i32* @segPtr, align 4
  %add491 = add nsw i32 %366, %add490
  store i32 %add491, i32* @segPtr, align 4
  %367 = load i32, i32* %numadd, align 4
  %368 = load i32, i32* %count, align 4
  %sub492 = sub nsw i32 %367, %368
  %add493 = add nsw i32 %sub492, 1
  store i32 %add493, i32* %x, align 4
  br label %for.cond.494

for.cond.494:                                     ; preds = %for.inc.521, %for.end.486
  %369 = load i32, i32* %x, align 4
  %370 = load i32, i32* %numadd, align 4
  %cmp495 = icmp sle i32 %369, %370
  br i1 %cmp495, label %for.body.497, label %for.end.523

for.body.497:                                     ; preds = %for.cond.494
  %371 = load i32, i32* %x, align 4
  %idxprom498 = sext i32 %371 to i64
  %372 = load i16*, i16** @addTargetList, align 8
  %arrayidx499 = getelementptr inbounds i16, i16* %372, i64 %idxprom498
  %373 = load i16, i16* %arrayidx499, align 2
  %conv500 = sext i16 %373 to i32
  store i32 %conv500, i32* %node, align 4
  %374 = load i32, i32* %node, align 4
  %idxprom501 = sext i32 %374 to i64
  %375 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx502 = getelementptr inbounds %struct.gnode*, %struct.gnode** %375, i64 %idxprom501
  %376 = load %struct.gnode*, %struct.gnode** %arrayidx502, align 8
  store %struct.gnode* %376, %struct.gnode** %gptr, align 8
  br label %for.cond.503

for.cond.503:                                     ; preds = %for.inc.518, %for.body.497
  %377 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp504 = icmp ne %struct.gnode* %377, null
  br i1 %cmp504, label %for.body.506, label %for.end.520

for.body.506:                                     ; preds = %for.cond.503
  %378 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node507 = getelementptr inbounds %struct.gnode, %struct.gnode* %378, i32 0, i32 0
  %379 = load i32, i32* %node507, align 4
  store i32 %379, i32* %node1, align 4
  %380 = load i32, i32* %node1, align 4
  %idxprom508 = sext i32 %380 to i64
  %381 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx509 = getelementptr inbounds %struct.gnode*, %struct.gnode** %381, i64 %idxprom508
  %382 = load %struct.gnode*, %struct.gnode** %arrayidx509, align 8
  store %struct.gnode* %382, %struct.gnode** %gptr1, align 8
  br label %for.cond.510

for.cond.510:                                     ; preds = %if.end.515, %for.body.506
  %383 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node511 = getelementptr inbounds %struct.gnode, %struct.gnode* %383, i32 0, i32 0
  %384 = load i32, i32* %node511, align 4
  %385 = load i32, i32* %node, align 4
  %cmp512 = icmp eq i32 %384, %385
  br i1 %cmp512, label %if.then.514, label %if.end.515

if.then.514:                                      ; preds = %for.cond.510
  %386 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive = getelementptr inbounds %struct.gnode, %struct.gnode* %386, i32 0, i32 6
  store i32 1, i32* %einactive, align 4
  br label %for.end.517

if.end.515:                                       ; preds = %for.cond.510
  %387 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next516 = getelementptr inbounds %struct.gnode, %struct.gnode* %387, i32 0, i32 7
  %388 = load %struct.gnode*, %struct.gnode** %next516, align 8
  store %struct.gnode* %388, %struct.gnode** %gptr1, align 8
  br label %for.cond.510

for.end.517:                                      ; preds = %if.then.514
  br label %for.inc.518

for.inc.518:                                      ; preds = %for.end.517
  %389 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next519 = getelementptr inbounds %struct.gnode, %struct.gnode* %389, i32 0, i32 7
  %390 = load %struct.gnode*, %struct.gnode** %next519, align 8
  store %struct.gnode* %390, %struct.gnode** %gptr, align 8
  br label %for.cond.503

for.end.520:                                      ; preds = %for.cond.503
  br label %for.inc.521

for.inc.521:                                      ; preds = %for.end.520
  %391 = load i32, i32* %x, align 4
  %inc522 = add nsw i32 %391, 1
  store i32 %inc522, i32* %x, align 4
  br label %for.cond.494

for.end.523:                                      ; preds = %for.cond.494
  %392 = load i32, i32* %numdelete, align 4
  %393 = load i32, i32* %numadd, align 4
  %394 = load i32, i32* %count, align 4
  %sub524 = sub nsw i32 %393, %394
  %395 = load i32, i32* %k, align 4
  %idxprom525 = sext i32 %395 to i64
  %396 = load i32, i32* %j, align 4
  %idxprom526 = sext i32 %396 to i64
  %397 = load i32**, i32*** %tempPL, align 8
  %arrayidx527 = getelementptr inbounds i32*, i32** %397, i64 %idxprom526
  %398 = load i32*, i32** %arrayidx527, align 8
  %arrayidx528 = getelementptr inbounds i32, i32* %398, i64 %idxprom525
  %399 = load i32, i32* %arrayidx528, align 4
  %400 = load i32, i32* %count, align 4
  call void @recursePath(i32 %392, i32 %sub524, i32 %399, i32 %400)
  %401 = load i32, i32* %k, align 4
  %add529 = add nsw i32 %401, 1
  %402 = load i32, i32* @segPtr, align 4
  %sub530 = sub nsw i32 %402, %add529
  store i32 %sub530, i32* @segPtr, align 4
  %403 = load i32, i32* %k, align 4
  %add531 = add nsw i32 %403, 1
  %idxprom532 = sext i32 %add531 to i64
  %404 = load i32, i32* %j, align 4
  %idxprom533 = sext i32 %404 to i64
  %405 = load i32**, i32*** %tempPL, align 8
  %arrayidx534 = getelementptr inbounds i32*, i32** %405, i64 %idxprom533
  %406 = load i32*, i32** %arrayidx534, align 8
  %arrayidx535 = getelementptr inbounds i32, i32* %406, i64 %idxprom532
  %407 = load i32, i32* %arrayidx535, align 4
  %408 = load i32, i32* @pathLength, align 4
  %sub536 = sub nsw i32 %408, %407
  store i32 %sub536, i32* @pathLength, align 4
  %409 = load i32, i32* %numadd, align 4
  %410 = load i32, i32* %count, align 4
  %sub537 = sub nsw i32 %409, %410
  %add538 = add nsw i32 %sub537, 1
  store i32 %add538, i32* %x, align 4
  br label %for.cond.539

for.cond.539:                                     ; preds = %for.inc.567, %for.end.523
  %411 = load i32, i32* %x, align 4
  %412 = load i32, i32* %numadd, align 4
  %cmp540 = icmp sle i32 %411, %412
  br i1 %cmp540, label %for.body.542, label %for.end.569

for.body.542:                                     ; preds = %for.cond.539
  %413 = load i32, i32* %x, align 4
  %idxprom543 = sext i32 %413 to i64
  %414 = load i16*, i16** @addTargetList, align 8
  %arrayidx544 = getelementptr inbounds i16, i16* %414, i64 %idxprom543
  %415 = load i16, i16* %arrayidx544, align 2
  %conv545 = sext i16 %415 to i32
  store i32 %conv545, i32* %node, align 4
  %416 = load i32, i32* %node, align 4
  %idxprom546 = sext i32 %416 to i64
  %417 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx547 = getelementptr inbounds %struct.gnode*, %struct.gnode** %417, i64 %idxprom546
  %418 = load %struct.gnode*, %struct.gnode** %arrayidx547, align 8
  store %struct.gnode* %418, %struct.gnode** %gptr, align 8
  br label %for.cond.548

for.cond.548:                                     ; preds = %for.inc.564, %for.body.542
  %419 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cmp549 = icmp ne %struct.gnode* %419, null
  br i1 %cmp549, label %for.body.551, label %for.end.566

for.body.551:                                     ; preds = %for.cond.548
  %420 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node552 = getelementptr inbounds %struct.gnode, %struct.gnode* %420, i32 0, i32 0
  %421 = load i32, i32* %node552, align 4
  store i32 %421, i32* %node1, align 4
  %422 = load i32, i32* %node1, align 4
  %idxprom553 = sext i32 %422 to i64
  %423 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx554 = getelementptr inbounds %struct.gnode*, %struct.gnode** %423, i64 %idxprom553
  %424 = load %struct.gnode*, %struct.gnode** %arrayidx554, align 8
  store %struct.gnode* %424, %struct.gnode** %gptr1, align 8
  br label %for.cond.555

for.cond.555:                                     ; preds = %if.end.561, %for.body.551
  %425 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %node556 = getelementptr inbounds %struct.gnode, %struct.gnode* %425, i32 0, i32 0
  %426 = load i32, i32* %node556, align 4
  %427 = load i32, i32* %node, align 4
  %cmp557 = icmp eq i32 %426, %427
  br i1 %cmp557, label %if.then.559, label %if.end.561

if.then.559:                                      ; preds = %for.cond.555
  %428 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %einactive560 = getelementptr inbounds %struct.gnode, %struct.gnode* %428, i32 0, i32 6
  store i32 0, i32* %einactive560, align 4
  br label %for.end.563

if.end.561:                                       ; preds = %for.cond.555
  %429 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  %next562 = getelementptr inbounds %struct.gnode, %struct.gnode* %429, i32 0, i32 7
  %430 = load %struct.gnode*, %struct.gnode** %next562, align 8
  store %struct.gnode* %430, %struct.gnode** %gptr1, align 8
  br label %for.cond.555

for.end.563:                                      ; preds = %if.then.559
  br label %for.inc.564

for.inc.564:                                      ; preds = %for.end.563
  %431 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next565 = getelementptr inbounds %struct.gnode, %struct.gnode* %431, i32 0, i32 7
  %432 = load %struct.gnode*, %struct.gnode** %next565, align 8
  store %struct.gnode* %432, %struct.gnode** %gptr, align 8
  br label %for.cond.548

for.end.566:                                      ; preds = %for.cond.548
  br label %for.inc.567

for.inc.567:                                      ; preds = %for.end.566
  %433 = load i32, i32* %x, align 4
  %inc568 = add nsw i32 %433, 1
  store i32 %inc568, i32* %x, align 4
  br label %for.cond.539

for.end.569:                                      ; preds = %for.cond.539
  br label %for.inc.570

for.inc.570:                                      ; preds = %for.end.569
  %434 = load i32, i32* %l, align 4
  %inc571 = add nsw i32 %434, 1
  store i32 %inc571, i32* %l, align 4
  br label %for.cond.324

for.end.572:                                      ; preds = %for.cond.324
  %435 = load i32, i32* @treeSize, align 4
  %436 = load i32, i32* @MAXPATHS, align 4
  %sub573 = sub nsw i32 %435, %436
  store i32 %sub573, i32* %count, align 4
  %437 = load i32, i32* %count, align 4
  %cmp574 = icmp sgt i32 %437, 0
  br i1 %cmp574, label %if.then.576, label %if.end.585

if.then.576:                                      ; preds = %for.end.572
  store i32 1, i32* %c, align 4
  br label %for.cond.577

for.cond.577:                                     ; preds = %for.inc.581, %if.then.576
  %438 = load i32, i32* %c, align 4
  %439 = load i32, i32* %count, align 4
  %cmp578 = icmp sle i32 %438, %439
  br i1 %cmp578, label %for.body.580, label %for.end.583

for.body.580:                                     ; preds = %for.cond.577
  call void @tmax(%struct.tnode** @netRoot, %struct.tnode** %junkptr, i32* %value, i32* %index)
  %440 = load i32, i32* %value, align 4
  %441 = load i32, i32* %index, align 4
  call void @tdelete(%struct.tnode** @netRoot, i32 %440, i32 %441)
  %442 = load i32, i32* %index, align 4
  call void @tinsert(%struct.tnode** @indexRoot, i32 %442, i32 0)
  br label %for.inc.581

for.inc.581:                                      ; preds = %for.body.580
  %443 = load i32, i32* %c, align 4
  %inc582 = add nsw i32 %443, 1
  store i32 %inc582, i32* %c, align 4
  br label %for.cond.577

for.end.583:                                      ; preds = %for.cond.577
  %444 = load i32, i32* %count, align 4
  %445 = load i32, i32* @treeSize, align 4
  %sub584 = sub nsw i32 %445, %444
  store i32 %sub584, i32* @treeSize, align 4
  br label %if.end.585

if.end.585:                                       ; preds = %for.end.583, %for.end.572
  %446 = load %struct.tnode*, %struct.tnode** %extraRoot, align 8
  %cmp586 = icmp ne %struct.tnode* %446, null
  br i1 %cmp586, label %if.then.588, label %if.end.595

if.then.588:                                      ; preds = %if.end.585
  br label %for.cond.589

for.cond.589:                                     ; preds = %if.end.593, %if.then.588
  call void @tpop(%struct.tnode** %extraRoot, %struct.tnode** %junkptr, i32* %junk, i32* %j)
  %447 = load %struct.tnode*, %struct.tnode** %junkptr, align 8
  %cmp590 = icmp eq %struct.tnode* %447, null
  br i1 %cmp590, label %if.then.592, label %if.end.593

if.then.592:                                      ; preds = %for.cond.589
  br label %for.end.594

if.end.593:                                       ; preds = %for.cond.589
  br label %for.cond.589

for.end.594:                                      ; preds = %if.then.592
  br label %if.end.595

if.end.595:                                       ; preds = %for.end.594, %if.end.585
  store i32 1, i32* %j, align 4
  br label %for.cond.596

for.cond.596:                                     ; preds = %for.inc.605, %if.end.595
  %448 = load i32, i32* %j, align 4
  %449 = load i32, i32* %dsptr.addr, align 4
  %cmp597 = icmp sle i32 %448, %449
  br i1 %cmp597, label %for.body.599, label %for.end.607

for.body.599:                                     ; preds = %for.cond.596
  %450 = load i32, i32* %j, align 4
  %idxprom600 = sext i32 %450 to i64
  %451 = load i16*, i16** %dslist, align 8
  %arrayidx601 = getelementptr inbounds i16, i16* %451, i64 %idxprom600
  %452 = load i16, i16* %arrayidx601, align 2
  %453 = load i32, i32* @sourcePtr, align 4
  %inc602 = add nsw i32 %453, 1
  store i32 %inc602, i32* @sourcePtr, align 4
  %idxprom603 = sext i32 %inc602 to i64
  %454 = load i16*, i16** @sourceList, align 8
  %arrayidx604 = getelementptr inbounds i16, i16* %454, i64 %idxprom603
  store i16 %452, i16* %arrayidx604, align 2
  br label %for.inc.605

for.inc.605:                                      ; preds = %for.body.599
  %455 = load i32, i32* %j, align 4
  %inc606 = add nsw i32 %455, 1
  store i32 %inc606, i32* %j, align 4
  br label %for.cond.596

for.end.607:                                      ; preds = %for.cond.596
  %456 = load i32, i32* %atptr.addr, align 4
  %457 = load i32, i32* %addEquivs.addr, align 4
  %add608 = add nsw i32 %456, %457
  %458 = load i32, i32* @targetPtr, align 4
  %sub609 = sub nsw i32 %458, %add608
  store i32 %sub609, i32* @targetPtr, align 4
  %459 = load i32, i32* %attachPt.addr, align 4
  %cmp610 = icmp sgt i32 %459, 0
  br i1 %cmp610, label %if.then.612, label %if.end.655

if.then.612:                                      ; preds = %for.end.607
  store i32 1, i32* %j, align 4
  br label %for.cond.613

for.cond.613:                                     ; preds = %for.inc.652, %if.then.612
  %460 = load i32, i32* %j, align 4
  %461 = load i32, i32* %atptr.addr, align 4
  %cmp614 = icmp sle i32 %460, %461
  br i1 %cmp614, label %for.body.616, label %for.end.654

for.body.616:                                     ; preds = %for.cond.613
  %462 = load i32, i32* %j, align 4
  %idxprom617 = sext i32 %462 to i64
  %463 = load i16*, i16** %atlist, align 8
  %arrayidx618 = getelementptr inbounds i16, i16* %463, i64 %idxprom617
  %464 = load i16, i16* %arrayidx618, align 2
  %conv619 = sext i16 %464 to i32
  store i32 %conv619, i32* %node1, align 4
  %465 = load i32, i32* %j, align 4
  %466 = load i32, i32* %atptr.addr, align 4
  %cmp620 = icmp eq i32 %465, %466
  br i1 %cmp620, label %if.then.622, label %if.else.623

if.then.622:                                      ; preds = %for.body.616
  %467 = load i32, i32* %attachPt.addr, align 4
  store i32 %467, i32* %node2, align 4
  br label %if.end.628

if.else.623:                                      ; preds = %for.body.616
  %468 = load i32, i32* %j, align 4
  %add624 = add nsw i32 %468, 1
  %idxprom625 = sext i32 %add624 to i64
  %469 = load i16*, i16** %atlist, align 8
  %arrayidx626 = getelementptr inbounds i16, i16* %469, i64 %idxprom625
  %470 = load i16, i16* %arrayidx626, align 2
  %conv627 = sext i16 %470 to i32
  store i32 %conv627, i32* %node2, align 4
  br label %if.end.628

if.end.628:                                       ; preds = %if.else.623, %if.then.622
  %471 = load i32, i32* %node1, align 4
  %idxprom629 = sext i32 %471 to i64
  %472 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx630 = getelementptr inbounds %struct.gnode*, %struct.gnode** %472, i64 %idxprom629
  %473 = load %struct.gnode*, %struct.gnode** %arrayidx630, align 8
  store %struct.gnode* %473, %struct.gnode** %gptr1, align 8
  %474 = load i32, i32* %node2, align 4
  %idxprom631 = sext i32 %474 to i64
  %475 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx632 = getelementptr inbounds %struct.gnode*, %struct.gnode** %475, i64 %idxprom631
  %476 = load %struct.gnode*, %struct.gnode** %arrayidx632, align 8
  store %struct.gnode* %476, %struct.gnode** %gptr2, align 8
  %477 = load %struct.gnode*, %struct.gnode** %gptr1, align 8
  store %struct.gnode* %477, %struct.gnode** %gptr, align 8
  br label %for.cond.633

for.cond.633:                                     ; preds = %if.end.639, %if.end.628
  %478 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node634 = getelementptr inbounds %struct.gnode, %struct.gnode* %478, i32 0, i32 0
  %479 = load i32, i32* %node634, align 4
  %480 = load i32, i32* %node2, align 4
  %cmp635 = icmp eq i32 %479, %480
  br i1 %cmp635, label %if.then.637, label %if.end.639

if.then.637:                                      ; preds = %for.cond.633
  %481 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length = getelementptr inbounds %struct.gnode, %struct.gnode* %481, i32 0, i32 2
  %482 = load i32, i32* %length, align 4
  %483 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost638 = getelementptr inbounds %struct.gnode, %struct.gnode* %483, i32 0, i32 3
  store i32 %482, i32* %cost638, align 4
  br label %for.end.641

if.end.639:                                       ; preds = %for.cond.633
  %484 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next640 = getelementptr inbounds %struct.gnode, %struct.gnode* %484, i32 0, i32 7
  %485 = load %struct.gnode*, %struct.gnode** %next640, align 8
  store %struct.gnode* %485, %struct.gnode** %gptr, align 8
  br label %for.cond.633

for.end.641:                                      ; preds = %if.then.637
  %486 = load %struct.gnode*, %struct.gnode** %gptr2, align 8
  store %struct.gnode* %486, %struct.gnode** %gptr, align 8
  br label %for.cond.642

for.cond.642:                                     ; preds = %if.end.649, %for.end.641
  %487 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %node643 = getelementptr inbounds %struct.gnode, %struct.gnode* %487, i32 0, i32 0
  %488 = load i32, i32* %node643, align 4
  %489 = load i32, i32* %node1, align 4
  %cmp644 = icmp eq i32 %488, %489
  br i1 %cmp644, label %if.then.646, label %if.end.649

if.then.646:                                      ; preds = %for.cond.642
  %490 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %length647 = getelementptr inbounds %struct.gnode, %struct.gnode* %490, i32 0, i32 2
  %491 = load i32, i32* %length647, align 4
  %492 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %cost648 = getelementptr inbounds %struct.gnode, %struct.gnode* %492, i32 0, i32 3
  store i32 %491, i32* %cost648, align 4
  br label %for.end.651

if.end.649:                                       ; preds = %for.cond.642
  %493 = load %struct.gnode*, %struct.gnode** %gptr, align 8
  %next650 = getelementptr inbounds %struct.gnode, %struct.gnode* %493, i32 0, i32 7
  %494 = load %struct.gnode*, %struct.gnode** %next650, align 8
  store %struct.gnode* %494, %struct.gnode** %gptr, align 8
  br label %for.cond.642

for.end.651:                                      ; preds = %if.then.646
  br label %for.inc.652

for.inc.652:                                      ; preds = %for.end.651
  %495 = load i32, i32* %j, align 4
  %inc653 = add nsw i32 %495, 1
  store i32 %inc653, i32* %j, align 4
  br label %for.cond.613

for.end.654:                                      ; preds = %for.cond.613
  br label %if.end.655

if.end.655:                                       ; preds = %for.end.654, %for.end.607
  %496 = load i16*, i16** %atlist, align 8
  %497 = bitcast i16* %496 to i8*
  call void @free(i8* %497) #3
  %498 = load i16*, i16** %dslist, align 8
  %499 = bitcast i16* %498 to i8*
  call void @free(i8* %499) #3
  %500 = load i32*, i32** %extraSlist, align 8
  %501 = bitcast i32* %500 to i8*
  call void @free(i8* %501) #3
  store i32 1, i32* %i, align 4
  br label %for.cond.656

for.cond.656:                                     ; preds = %for.inc.663, %if.end.655
  %502 = load i32, i32* %i, align 4
  %503 = load i32, i32* @EXTRASOURCES, align 4
  %504 = load i32, i32* @MAXPATHS, align 4
  %mul657 = mul nsw i32 %503, %504
  %cmp658 = icmp sle i32 %502, %mul657
  br i1 %cmp658, label %for.body.660, label %for.end.665

for.body.660:                                     ; preds = %for.cond.656
  %505 = load i32, i32* %i, align 4
  %idxprom661 = sext i32 %505 to i64
  %506 = load i32**, i32*** %tempPL, align 8
  %arrayidx662 = getelementptr inbounds i32*, i32** %506, i64 %idxprom661
  %507 = load i32*, i32** %arrayidx662, align 8
  %508 = bitcast i32* %507 to i8*
  call void @free(i8* %508) #3
  br label %for.inc.663

for.inc.663:                                      ; preds = %for.body.660
  %509 = load i32, i32* %i, align 4
  %inc664 = add nsw i32 %509, 1
  store i32 %inc664, i32* %i, align 4
  br label %for.cond.656

for.end.665:                                      ; preds = %for.cond.656
  %510 = load i32**, i32*** %tempPL, align 8
  %511 = bitcast i32** %510 to i8*
  call void @free(i8* %511) #3
  br label %return

return:                                           ; preds = %for.end.665, %for.end
  ret void
}

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @mshortest(i32, i32) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare void @tmax(%struct.tnode**, %struct.tnode**, i32*, i32*) #2

declare void @tdelete(%struct.tnode**, i32, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
