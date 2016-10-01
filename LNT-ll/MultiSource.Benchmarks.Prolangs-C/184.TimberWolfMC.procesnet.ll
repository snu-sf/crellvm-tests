; ModuleID = './MultiSource.Benchmarks.Prolangs-C/184.TimberWolfMC.procesnet.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }

@netRoot = common global %struct.tnode* null, align 8
@savePaths = external global i16**, align 8
@netSegArray = external global i16**, align 8
@numnodes = external global i32, align 4
@netRoutes = external global %struct.nrbox*, align 8
@gnodeArray = external global %struct.gnode**, align 8
@MAXPATHS = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @procesnet(i32 %net, i32 %segments, i32 %addnodes) #0 {
entry:
  %net.addr = alloca i32, align 4
  %segments.addr = alloca i32, align 4
  %addnodes.addr = alloca i32, align 4
  %node1 = alloca i32, align 4
  %distance = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %numberRoutes = alloca i32, align 4
  %pin1 = alloca i32, align 4
  %prev = alloca i32, align 4
  %index = alloca i32, align 4
  %bound = alloca i32, align 4
  %iptr = alloca i32*, align 8
  %pincount = alloca i32, align 4
  %fnode = alloca i32, align 4
  %tnode = alloca i32, align 4
  %pin2 = alloca i32, align 4
  %firstNode = alloca i32, align 4
  %lastNode = alloca i32, align 4
  %neighbor1 = alloca i32, align 4
  %neighbor2 = alloca i32, align 4
  %foffset = alloca i32, align 4
  %toffset = alloca i32, align 4
  %isptr = alloca i16*, align 8
  %lastcptr = alloca %struct.chanbox*, align 8
  %dumnode = alloca %struct.tnode*, align 8
  store i32 %net, i32* %net.addr, align 4
  store i32 %segments, i32* %segments.addr, align 4
  store i32 %addnodes, i32* %addnodes.addr, align 4
  %0 = load i32, i32* %segments.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @grepair()
  %1 = load i32, i32* %addnodes.addr, align 4
  call void @prepair(i32 %1)
  %2 = load i32, i32* %net.addr, align 4
  %3 = load i32, i32* %addnodes.addr, align 4
  call void @loadpg(i32 %2, i32 %3)
  %4 = load i32, i32* %addnodes.addr, align 4
  call void @shortpath(i32 %4)
  %5 = load i32, i32* %segments.addr, align 4
  %6 = load i32, i32* %addnodes.addr, align 4
  call void @routenet(i32 %5, i32 %6)
  store i32 0, i32* %numberRoutes, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.527, %if.end
  call void @tpop(%struct.tnode** @netRoot, %struct.tnode** %dumnode, i32* %distance, i32* %index)
  %7 = load %struct.tnode*, %struct.tnode** %dumnode, align 8
  %cmp1 = icmp eq %struct.tnode* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.cond
  br label %for.end.528

if.end.3:                                         ; preds = %for.cond
  %8 = load i32, i32* %numberRoutes, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %numberRoutes, align 4
  %9 = load i32, i32* %index, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i16**, i16*** @savePaths, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %10, i64 %idxprom
  %11 = load i16*, i16** %arrayidx, align 8
  store i16* %11, i16** %isptr, align 8
  %12 = load i16*, i16** %isptr, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx4, align 2
  %conv = sext i16 %13 to i32
  store i32 %conv, i32* %bound, align 4
  store i32 1, i32* %i, align 4
  %14 = load i16**, i16*** @netSegArray, align 8
  %arrayidx5 = getelementptr inbounds i16*, i16** %14, i64 0
  %15 = load i16*, i16** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %15, i64 0
  store i16 1, i16* %arrayidx6, align 2
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load i16**, i16*** @netSegArray, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %17, i64 %idxprom7
  %18 = load i16*, i16** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %18, i64 0
  store i16 0, i16* %arrayidx9, align 2
  store i32 1, i32* %k, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.3
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %bound, align 4
  %cmp11 = icmp slt i32 %19, %20
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.10
  %21 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i16*, i16** %isptr, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %22, i64 %idxprom13
  %23 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %23 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %24, 1
  store i32 %inc19, i32* %i, align 4
  %25 = load i16**, i16*** @netSegArray, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %25, i64 0
  %26 = load i16*, i16** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %26, i64 0
  %27 = load i16, i16* %arrayidx21, align 2
  %inc22 = add i16 %27, 1
  store i16 %inc22, i16* %arrayidx21, align 2
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i16**, i16*** @netSegArray, align 8
  %arrayidx24 = getelementptr inbounds i16*, i16** %29, i64 %idxprom23
  %30 = load i16*, i16** %arrayidx24, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %30, i64 0
  store i16 0, i16* %arrayidx25, align 2
  br label %for.inc

if.end.26:                                        ; preds = %for.body
  %31 = load i32, i32* %k, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load i16*, i16** %isptr, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %32, i64 %idxprom27
  %33 = load i16, i16* %arrayidx28, align 2
  %34 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load i16**, i16*** @netSegArray, align 8
  %arrayidx30 = getelementptr inbounds i16*, i16** %35, i64 %idxprom29
  %36 = load i16*, i16** %arrayidx30, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %36, i64 0
  %37 = load i16, i16* %arrayidx31, align 2
  %inc32 = add i16 %37, 1
  store i16 %inc32, i16* %arrayidx31, align 2
  %idxprom33 = sext i16 %inc32 to i64
  %38 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %38 to i64
  %39 = load i16**, i16*** @netSegArray, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %39, i64 %idxprom34
  %40 = load i16*, i16** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %40, i64 %idxprom33
  store i16 %33, i16* %arrayidx36, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.18
  %41 = load i32, i32* %k, align 4
  %inc37 = add nsw i32 %41, 1
  store i32 %inc37, i32* %k, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  call void @mergeSeg()
  store i32 0, i32* %pincount, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.66, %for.end
  %42 = load i32, i32* %i, align 4
  %43 = load i16**, i16*** @netSegArray, align 8
  %arrayidx39 = getelementptr inbounds i16*, i16** %43, i64 0
  %44 = load i16*, i16** %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds i16, i16* %44, i64 0
  %45 = load i16, i16* %arrayidx40, align 2
  %conv41 = sext i16 %45 to i32
  %cmp42 = icmp sle i32 %42, %conv41
  br i1 %cmp42, label %for.body.44, label %for.end.68

for.body.44:                                      ; preds = %for.cond.38
  store i32 1, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.63, %for.body.44
  %46 = load i32, i32* %j, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %47 to i64
  %48 = load i16**, i16*** @netSegArray, align 8
  %arrayidx47 = getelementptr inbounds i16*, i16** %48, i64 %idxprom46
  %49 = load i16*, i16** %arrayidx47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %49, i64 0
  %50 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %50 to i32
  %cmp50 = icmp sle i32 %46, %conv49
  br i1 %cmp50, label %for.body.52, label %for.end.65

for.body.52:                                      ; preds = %for.cond.45
  %51 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %52 to i64
  %53 = load i16**, i16*** @netSegArray, align 8
  %arrayidx55 = getelementptr inbounds i16*, i16** %53, i64 %idxprom54
  %54 = load i16*, i16** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %54, i64 %idxprom53
  %55 = load i16, i16* %arrayidx56, align 2
  %conv57 = sext i16 %55 to i32
  %56 = load i32, i32* @numnodes, align 4
  %cmp58 = icmp sgt i32 %conv57, %56
  br i1 %cmp58, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %for.body.52
  %57 = load i32, i32* %pincount, align 4
  %inc61 = add nsw i32 %57, 1
  store i32 %inc61, i32* %pincount, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %for.body.52
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %58 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %58, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.45

for.end.65:                                       ; preds = %for.cond.45
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.end.65
  %59 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %59, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.38

for.end.68:                                       ; preds = %for.cond.38
  %60 = load i32, i32* %pincount, align 4
  %add = add nsw i32 1, %60
  %conv69 = sext i32 %add to i64
  %mul = mul i64 %conv69, 4
  %call = call noalias i8* @malloc(i64 %mul) #3
  %61 = bitcast i8* %call to i32*
  %62 = load i32, i32* %numberRoutes, align 4
  %idxprom70 = sext i32 %62 to i64
  %63 = load i32, i32* %net.addr, align 4
  %idxprom71 = sext i32 %63 to i64
  %64 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx72 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %64, i64 %idxprom71
  %alternate = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx72, i32 0, i32 0
  %65 = load %struct.altbox**, %struct.altbox*** %alternate, align 8
  %arrayidx73 = getelementptr inbounds %struct.altbox*, %struct.altbox** %65, i64 %idxprom70
  %66 = load %struct.altbox*, %struct.altbox** %arrayidx73, align 8
  %pinList = getelementptr inbounds %struct.altbox, %struct.altbox* %66, i32 0, i32 0
  store i32* %61, i32** %pinList, align 8
  %67 = load i32, i32* %numberRoutes, align 4
  %idxprom74 = sext i32 %67 to i64
  %68 = load i32, i32* %net.addr, align 4
  %idxprom75 = sext i32 %68 to i64
  %69 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx76 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %69, i64 %idxprom75
  %alternate77 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx76, i32 0, i32 0
  %70 = load %struct.altbox**, %struct.altbox*** %alternate77, align 8
  %arrayidx78 = getelementptr inbounds %struct.altbox*, %struct.altbox** %70, i64 %idxprom74
  %71 = load %struct.altbox*, %struct.altbox** %arrayidx78, align 8
  %pinList79 = getelementptr inbounds %struct.altbox, %struct.altbox* %71, i32 0, i32 0
  %72 = load i32*, i32** %pinList79, align 8
  store i32* %72, i32** %iptr, align 8
  %73 = load i32, i32* %distance, align 4
  %74 = load i32, i32* %numberRoutes, align 4
  %idxprom80 = sext i32 %74 to i64
  %75 = load i32, i32* %net.addr, align 4
  %idxprom81 = sext i32 %75 to i64
  %76 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx82 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %76, i64 %idxprom81
  %alternate83 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx82, i32 0, i32 0
  %77 = load %struct.altbox**, %struct.altbox*** %alternate83, align 8
  %arrayidx84 = getelementptr inbounds %struct.altbox*, %struct.altbox** %77, i64 %idxprom80
  %78 = load %struct.altbox*, %struct.altbox** %arrayidx84, align 8
  %distance85 = getelementptr inbounds %struct.altbox, %struct.altbox* %78, i32 0, i32 1
  store i32 %73, i32* %distance85, align 4
  %79 = load i32, i32* %pincount, align 4
  %80 = load i32*, i32** %iptr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %79, i32* %arrayidx86, align 4
  store i32 0, i32* %pincount, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.122, %for.end.68
  %81 = load i32, i32* %i, align 4
  %82 = load i16**, i16*** @netSegArray, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %82, i64 0
  %83 = load i16*, i16** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %83, i64 0
  %84 = load i16, i16* %arrayidx89, align 2
  %conv90 = sext i16 %84 to i32
  %cmp91 = icmp sle i32 %81, %conv90
  br i1 %cmp91, label %for.body.93, label %for.end.124

for.body.93:                                      ; preds = %for.cond.87
  store i32 1, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.119, %for.body.93
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %86 to i64
  %87 = load i16**, i16*** @netSegArray, align 8
  %arrayidx96 = getelementptr inbounds i16*, i16** %87, i64 %idxprom95
  %88 = load i16*, i16** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i16, i16* %88, i64 0
  %89 = load i16, i16* %arrayidx97, align 2
  %conv98 = sext i16 %89 to i32
  %cmp99 = icmp sle i32 %85, %conv98
  br i1 %cmp99, label %for.body.101, label %for.end.121

for.body.101:                                     ; preds = %for.cond.94
  %90 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %90 to i64
  %91 = load i32, i32* %i, align 4
  %idxprom103 = sext i32 %91 to i64
  %92 = load i16**, i16*** @netSegArray, align 8
  %arrayidx104 = getelementptr inbounds i16*, i16** %92, i64 %idxprom103
  %93 = load i16*, i16** %arrayidx104, align 8
  %arrayidx105 = getelementptr inbounds i16, i16* %93, i64 %idxprom102
  %94 = load i16, i16* %arrayidx105, align 2
  %conv106 = sext i16 %94 to i32
  %95 = load i32, i32* @numnodes, align 4
  %cmp107 = icmp sgt i32 %conv106, %95
  br i1 %cmp107, label %if.then.109, label %if.end.118

if.then.109:                                      ; preds = %for.body.101
  %96 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %96 to i64
  %97 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %97 to i64
  %98 = load i16**, i16*** @netSegArray, align 8
  %arrayidx112 = getelementptr inbounds i16*, i16** %98, i64 %idxprom111
  %99 = load i16*, i16** %arrayidx112, align 8
  %arrayidx113 = getelementptr inbounds i16, i16* %99, i64 %idxprom110
  %100 = load i16, i16* %arrayidx113, align 2
  %conv114 = sext i16 %100 to i32
  %101 = load i32, i32* @numnodes, align 4
  %sub = sub nsw i32 %conv114, %101
  %102 = load i32, i32* %pincount, align 4
  %inc115 = add nsw i32 %102, 1
  store i32 %inc115, i32* %pincount, align 4
  %idxprom116 = sext i32 %inc115 to i64
  %103 = load i32*, i32** %iptr, align 8
  %arrayidx117 = getelementptr inbounds i32, i32* %103, i64 %idxprom116
  store i32 %sub, i32* %arrayidx117, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.109, %for.body.101
  br label %for.inc.119

for.inc.119:                                      ; preds = %if.end.118
  %104 = load i32, i32* %j, align 4
  %inc120 = add nsw i32 %104, 1
  store i32 %inc120, i32* %j, align 4
  br label %for.cond.94

for.end.121:                                      ; preds = %for.cond.94
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.end.121
  %105 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %105, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.87

for.end.124:                                      ; preds = %for.cond.87
  store %struct.chanbox* null, %struct.chanbox** %lastcptr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.521, %for.end.124
  %106 = load i32, i32* %i, align 4
  %107 = load i16**, i16*** @netSegArray, align 8
  %arrayidx126 = getelementptr inbounds i16*, i16** %107, i64 0
  %108 = load i16*, i16** %arrayidx126, align 8
  %arrayidx127 = getelementptr inbounds i16, i16* %108, i64 0
  %109 = load i16, i16* %arrayidx127, align 2
  %conv128 = sext i16 %109 to i32
  %cmp129 = icmp sle i32 %106, %conv128
  br i1 %cmp129, label %for.body.131, label %for.end.523

for.body.131:                                     ; preds = %for.cond.125
  store i32 0, i32* %firstNode, align 4
  store i32 1, i32* %j, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.153, %for.body.131
  %110 = load i32, i32* %j, align 4
  %111 = load i32, i32* %i, align 4
  %idxprom133 = sext i32 %111 to i64
  %112 = load i16**, i16*** @netSegArray, align 8
  %arrayidx134 = getelementptr inbounds i16*, i16** %112, i64 %idxprom133
  %113 = load i16*, i16** %arrayidx134, align 8
  %arrayidx135 = getelementptr inbounds i16, i16* %113, i64 0
  %114 = load i16, i16* %arrayidx135, align 2
  %conv136 = sext i16 %114 to i32
  %cmp137 = icmp sle i32 %110, %conv136
  br i1 %cmp137, label %for.body.139, label %for.end.155

for.body.139:                                     ; preds = %for.cond.132
  %115 = load i32, i32* %j, align 4
  %idxprom140 = sext i32 %115 to i64
  %116 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %116 to i64
  %117 = load i16**, i16*** @netSegArray, align 8
  %arrayidx142 = getelementptr inbounds i16*, i16** %117, i64 %idxprom141
  %118 = load i16*, i16** %arrayidx142, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %118, i64 %idxprom140
  %119 = load i16, i16* %arrayidx143, align 2
  %conv144 = sext i16 %119 to i32
  %120 = load i32, i32* @numnodes, align 4
  %cmp145 = icmp sle i32 %conv144, %120
  br i1 %cmp145, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %for.body.139
  %121 = load i32, i32* %firstNode, align 4
  %cmp148 = icmp eq i32 %121, 0
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.147
  %122 = load i32, i32* %j, align 4
  store i32 %122, i32* %firstNode, align 4
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.then.147
  %123 = load i32, i32* %j, align 4
  store i32 %123, i32* %lastNode, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %for.body.139
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %124 = load i32, i32* %j, align 4
  %inc154 = add nsw i32 %124, 1
  store i32 %inc154, i32* %j, align 4
  br label %for.cond.132

for.end.155:                                      ; preds = %for.cond.132
  %125 = load i32, i32* %firstNode, align 4
  %cmp156 = icmp eq i32 %125, 0
  br i1 %cmp156, label %if.then.158, label %if.else.290

if.then.158:                                      ; preds = %for.end.155
  %126 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %126 to i64
  %127 = load i16**, i16*** @netSegArray, align 8
  %arrayidx160 = getelementptr inbounds i16*, i16** %127, i64 %idxprom159
  %128 = load i16*, i16** %arrayidx160, align 8
  %arrayidx161 = getelementptr inbounds i16, i16* %128, i64 1
  %129 = load i16, i16* %arrayidx161, align 2
  %conv162 = sext i16 %129 to i32
  store i32 %conv162, i32* %pin1, align 4
  %130 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %130 to i64
  %131 = load i16**, i16*** @netSegArray, align 8
  %arrayidx164 = getelementptr inbounds i16*, i16** %131, i64 %idxprom163
  %132 = load i16*, i16** %arrayidx164, align 8
  %arrayidx165 = getelementptr inbounds i16, i16* %132, i64 2
  %133 = load i16, i16* %arrayidx165, align 2
  %conv166 = sext i16 %133 to i32
  store i32 %conv166, i32* %pin2, align 4
  %134 = load i32, i32* %pin1, align 4
  %idxprom167 = sext i32 %134 to i64
  %135 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx168 = getelementptr inbounds %struct.gnode*, %struct.gnode** %135, i64 %idxprom167
  %136 = load %struct.gnode*, %struct.gnode** %arrayidx168, align 8
  %node = getelementptr inbounds %struct.gnode, %struct.gnode* %136, i32 0, i32 0
  %137 = load i32, i32* %node, align 4
  store i32 %137, i32* %neighbor1, align 4
  %138 = load i32, i32* %pin1, align 4
  %idxprom169 = sext i32 %138 to i64
  %139 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx170 = getelementptr inbounds %struct.gnode*, %struct.gnode** %139, i64 %idxprom169
  %140 = load %struct.gnode*, %struct.gnode** %arrayidx170, align 8
  %next = getelementptr inbounds %struct.gnode, %struct.gnode* %140, i32 0, i32 7
  %141 = load %struct.gnode*, %struct.gnode** %next, align 8
  %node171 = getelementptr inbounds %struct.gnode, %struct.gnode* %141, i32 0, i32 0
  %142 = load i32, i32* %node171, align 4
  store i32 %142, i32* %neighbor2, align 4
  %143 = load i32, i32* %neighbor2, align 4
  %144 = load i32, i32* %pin2, align 4
  %cmp172 = icmp eq i32 %143, %144
  br i1 %cmp172, label %if.then.174, label %if.else

if.then.174:                                      ; preds = %if.then.158
  %145 = load i32, i32* %pin1, align 4
  %idxprom175 = sext i32 %145 to i64
  %146 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx176 = getelementptr inbounds %struct.gnode*, %struct.gnode** %146, i64 %idxprom175
  %147 = load %struct.gnode*, %struct.gnode** %arrayidx176, align 8
  %length = getelementptr inbounds %struct.gnode, %struct.gnode* %147, i32 0, i32 2
  %148 = load i32, i32* %length, align 4
  store i32 %148, i32* %foffset, align 4
  %149 = load i32, i32* %neighbor1, align 4
  store i32 %149, i32* %fnode, align 4
  br label %if.end.181

if.else:                                          ; preds = %if.then.158
  %150 = load i32, i32* %pin1, align 4
  %idxprom177 = sext i32 %150 to i64
  %151 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx178 = getelementptr inbounds %struct.gnode*, %struct.gnode** %151, i64 %idxprom177
  %152 = load %struct.gnode*, %struct.gnode** %arrayidx178, align 8
  %next179 = getelementptr inbounds %struct.gnode, %struct.gnode* %152, i32 0, i32 7
  %153 = load %struct.gnode*, %struct.gnode** %next179, align 8
  %length180 = getelementptr inbounds %struct.gnode, %struct.gnode* %153, i32 0, i32 2
  %154 = load i32, i32* %length180, align 4
  store i32 %154, i32* %foffset, align 4
  %155 = load i32, i32* %neighbor2, align 4
  store i32 %155, i32* %fnode, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else, %if.then.174
  %156 = load i32, i32* %pin1, align 4
  store i32 %156, i32* %prev, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.204, %if.end.181
  %157 = load i32, i32* %fnode, align 4
  %158 = load i32, i32* @numnodes, align 4
  %cmp182 = icmp sgt i32 %157, %158
  br i1 %cmp182, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %159 = load i32, i32* %fnode, align 4
  %idxprom184 = sext i32 %159 to i64
  %160 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx185 = getelementptr inbounds %struct.gnode*, %struct.gnode** %160, i64 %idxprom184
  %161 = load %struct.gnode*, %struct.gnode** %arrayidx185, align 8
  %node186 = getelementptr inbounds %struct.gnode, %struct.gnode* %161, i32 0, i32 0
  %162 = load i32, i32* %node186, align 4
  store i32 %162, i32* %neighbor1, align 4
  %163 = load i32, i32* %fnode, align 4
  %idxprom187 = sext i32 %163 to i64
  %164 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx188 = getelementptr inbounds %struct.gnode*, %struct.gnode** %164, i64 %idxprom187
  %165 = load %struct.gnode*, %struct.gnode** %arrayidx188, align 8
  %next189 = getelementptr inbounds %struct.gnode, %struct.gnode* %165, i32 0, i32 7
  %166 = load %struct.gnode*, %struct.gnode** %next189, align 8
  %node190 = getelementptr inbounds %struct.gnode, %struct.gnode* %166, i32 0, i32 0
  %167 = load i32, i32* %node190, align 4
  store i32 %167, i32* %neighbor2, align 4
  %168 = load i32, i32* %neighbor2, align 4
  %169 = load i32, i32* %prev, align 4
  %cmp191 = icmp eq i32 %168, %169
  br i1 %cmp191, label %if.then.193, label %if.else.198

if.then.193:                                      ; preds = %while.body
  %170 = load i32, i32* %fnode, align 4
  %idxprom194 = sext i32 %170 to i64
  %171 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx195 = getelementptr inbounds %struct.gnode*, %struct.gnode** %171, i64 %idxprom194
  %172 = load %struct.gnode*, %struct.gnode** %arrayidx195, align 8
  %length196 = getelementptr inbounds %struct.gnode, %struct.gnode* %172, i32 0, i32 2
  %173 = load i32, i32* %length196, align 4
  %174 = load i32, i32* %foffset, align 4
  %add197 = add nsw i32 %174, %173
  store i32 %add197, i32* %foffset, align 4
  %175 = load i32, i32* %fnode, align 4
  store i32 %175, i32* %prev, align 4
  %176 = load i32, i32* %neighbor1, align 4
  store i32 %176, i32* %fnode, align 4
  br label %if.end.204

if.else.198:                                      ; preds = %while.body
  %177 = load i32, i32* %fnode, align 4
  %idxprom199 = sext i32 %177 to i64
  %178 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx200 = getelementptr inbounds %struct.gnode*, %struct.gnode** %178, i64 %idxprom199
  %179 = load %struct.gnode*, %struct.gnode** %arrayidx200, align 8
  %next201 = getelementptr inbounds %struct.gnode, %struct.gnode* %179, i32 0, i32 7
  %180 = load %struct.gnode*, %struct.gnode** %next201, align 8
  %length202 = getelementptr inbounds %struct.gnode, %struct.gnode* %180, i32 0, i32 2
  %181 = load i32, i32* %length202, align 4
  %182 = load i32, i32* %foffset, align 4
  %add203 = add nsw i32 %182, %181
  store i32 %add203, i32* %foffset, align 4
  %183 = load i32, i32* %fnode, align 4
  store i32 %183, i32* %prev, align 4
  %184 = load i32, i32* %neighbor2, align 4
  store i32 %184, i32* %fnode, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.198, %if.then.193
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %185 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %185 to i64
  %186 = load i16**, i16*** @netSegArray, align 8
  %arrayidx206 = getelementptr inbounds i16*, i16** %186, i64 %idxprom205
  %187 = load i16*, i16** %arrayidx206, align 8
  %arrayidx207 = getelementptr inbounds i16, i16* %187, i64 0
  %188 = load i16, i16* %arrayidx207, align 2
  %idxprom208 = sext i16 %188 to i64
  %189 = load i32, i32* %i, align 4
  %idxprom209 = sext i32 %189 to i64
  %190 = load i16**, i16*** @netSegArray, align 8
  %arrayidx210 = getelementptr inbounds i16*, i16** %190, i64 %idxprom209
  %191 = load i16*, i16** %arrayidx210, align 8
  %arrayidx211 = getelementptr inbounds i16, i16* %191, i64 %idxprom208
  %192 = load i16, i16* %arrayidx211, align 2
  %conv212 = sext i16 %192 to i32
  store i32 %conv212, i32* %pin1, align 4
  %193 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %193 to i64
  %194 = load i16**, i16*** @netSegArray, align 8
  %arrayidx214 = getelementptr inbounds i16*, i16** %194, i64 %idxprom213
  %195 = load i16*, i16** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds i16, i16* %195, i64 0
  %196 = load i16, i16* %arrayidx215, align 2
  %conv216 = sext i16 %196 to i32
  %sub217 = sub nsw i32 %conv216, 1
  %idxprom218 = sext i32 %sub217 to i64
  %197 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %197 to i64
  %198 = load i16**, i16*** @netSegArray, align 8
  %arrayidx220 = getelementptr inbounds i16*, i16** %198, i64 %idxprom219
  %199 = load i16*, i16** %arrayidx220, align 8
  %arrayidx221 = getelementptr inbounds i16, i16* %199, i64 %idxprom218
  %200 = load i16, i16* %arrayidx221, align 2
  %conv222 = sext i16 %200 to i32
  store i32 %conv222, i32* %pin2, align 4
  %201 = load i32, i32* %pin1, align 4
  %idxprom223 = sext i32 %201 to i64
  %202 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx224 = getelementptr inbounds %struct.gnode*, %struct.gnode** %202, i64 %idxprom223
  %203 = load %struct.gnode*, %struct.gnode** %arrayidx224, align 8
  %node225 = getelementptr inbounds %struct.gnode, %struct.gnode* %203, i32 0, i32 0
  %204 = load i32, i32* %node225, align 4
  store i32 %204, i32* %neighbor1, align 4
  %205 = load i32, i32* %pin1, align 4
  %idxprom226 = sext i32 %205 to i64
  %206 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx227 = getelementptr inbounds %struct.gnode*, %struct.gnode** %206, i64 %idxprom226
  %207 = load %struct.gnode*, %struct.gnode** %arrayidx227, align 8
  %next228 = getelementptr inbounds %struct.gnode, %struct.gnode* %207, i32 0, i32 7
  %208 = load %struct.gnode*, %struct.gnode** %next228, align 8
  %node229 = getelementptr inbounds %struct.gnode, %struct.gnode* %208, i32 0, i32 0
  %209 = load i32, i32* %node229, align 4
  store i32 %209, i32* %neighbor2, align 4
  %210 = load i32, i32* %neighbor2, align 4
  %211 = load i32, i32* %pin2, align 4
  %cmp230 = icmp eq i32 %210, %211
  br i1 %cmp230, label %if.then.232, label %if.else.236

if.then.232:                                      ; preds = %while.end
  %212 = load i32, i32* %pin1, align 4
  %idxprom233 = sext i32 %212 to i64
  %213 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx234 = getelementptr inbounds %struct.gnode*, %struct.gnode** %213, i64 %idxprom233
  %214 = load %struct.gnode*, %struct.gnode** %arrayidx234, align 8
  %length235 = getelementptr inbounds %struct.gnode, %struct.gnode* %214, i32 0, i32 2
  %215 = load i32, i32* %length235, align 4
  store i32 %215, i32* %toffset, align 4
  %216 = load i32, i32* %neighbor1, align 4
  store i32 %216, i32* %tnode, align 4
  br label %if.end.241

if.else.236:                                      ; preds = %while.end
  %217 = load i32, i32* %pin1, align 4
  %idxprom237 = sext i32 %217 to i64
  %218 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx238 = getelementptr inbounds %struct.gnode*, %struct.gnode** %218, i64 %idxprom237
  %219 = load %struct.gnode*, %struct.gnode** %arrayidx238, align 8
  %next239 = getelementptr inbounds %struct.gnode, %struct.gnode* %219, i32 0, i32 7
  %220 = load %struct.gnode*, %struct.gnode** %next239, align 8
  %length240 = getelementptr inbounds %struct.gnode, %struct.gnode* %220, i32 0, i32 2
  %221 = load i32, i32* %length240, align 4
  store i32 %221, i32* %toffset, align 4
  %222 = load i32, i32* %neighbor2, align 4
  store i32 %222, i32* %tnode, align 4
  br label %if.end.241

if.end.241:                                       ; preds = %if.else.236, %if.then.232
  %223 = load i32, i32* %pin1, align 4
  store i32 %223, i32* %prev, align 4
  br label %while.cond.242

while.cond.242:                                   ; preds = %if.end.266, %if.end.241
  %224 = load i32, i32* %tnode, align 4
  %225 = load i32, i32* @numnodes, align 4
  %cmp243 = icmp sgt i32 %224, %225
  br i1 %cmp243, label %while.body.245, label %while.end.267

while.body.245:                                   ; preds = %while.cond.242
  %226 = load i32, i32* %tnode, align 4
  %idxprom246 = sext i32 %226 to i64
  %227 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx247 = getelementptr inbounds %struct.gnode*, %struct.gnode** %227, i64 %idxprom246
  %228 = load %struct.gnode*, %struct.gnode** %arrayidx247, align 8
  %node248 = getelementptr inbounds %struct.gnode, %struct.gnode* %228, i32 0, i32 0
  %229 = load i32, i32* %node248, align 4
  store i32 %229, i32* %neighbor1, align 4
  %230 = load i32, i32* %tnode, align 4
  %idxprom249 = sext i32 %230 to i64
  %231 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx250 = getelementptr inbounds %struct.gnode*, %struct.gnode** %231, i64 %idxprom249
  %232 = load %struct.gnode*, %struct.gnode** %arrayidx250, align 8
  %next251 = getelementptr inbounds %struct.gnode, %struct.gnode* %232, i32 0, i32 7
  %233 = load %struct.gnode*, %struct.gnode** %next251, align 8
  %node252 = getelementptr inbounds %struct.gnode, %struct.gnode* %233, i32 0, i32 0
  %234 = load i32, i32* %node252, align 4
  store i32 %234, i32* %neighbor2, align 4
  %235 = load i32, i32* %neighbor2, align 4
  %236 = load i32, i32* %prev, align 4
  %cmp253 = icmp eq i32 %235, %236
  br i1 %cmp253, label %if.then.255, label %if.else.260

if.then.255:                                      ; preds = %while.body.245
  %237 = load i32, i32* %tnode, align 4
  %idxprom256 = sext i32 %237 to i64
  %238 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx257 = getelementptr inbounds %struct.gnode*, %struct.gnode** %238, i64 %idxprom256
  %239 = load %struct.gnode*, %struct.gnode** %arrayidx257, align 8
  %length258 = getelementptr inbounds %struct.gnode, %struct.gnode* %239, i32 0, i32 2
  %240 = load i32, i32* %length258, align 4
  %241 = load i32, i32* %toffset, align 4
  %add259 = add nsw i32 %241, %240
  store i32 %add259, i32* %toffset, align 4
  %242 = load i32, i32* %tnode, align 4
  store i32 %242, i32* %prev, align 4
  %243 = load i32, i32* %neighbor1, align 4
  store i32 %243, i32* %tnode, align 4
  br label %if.end.266

if.else.260:                                      ; preds = %while.body.245
  %244 = load i32, i32* %tnode, align 4
  %idxprom261 = sext i32 %244 to i64
  %245 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx262 = getelementptr inbounds %struct.gnode*, %struct.gnode** %245, i64 %idxprom261
  %246 = load %struct.gnode*, %struct.gnode** %arrayidx262, align 8
  %next263 = getelementptr inbounds %struct.gnode, %struct.gnode* %246, i32 0, i32 7
  %247 = load %struct.gnode*, %struct.gnode** %next263, align 8
  %length264 = getelementptr inbounds %struct.gnode, %struct.gnode* %247, i32 0, i32 2
  %248 = load i32, i32* %length264, align 4
  %249 = load i32, i32* %toffset, align 4
  %add265 = add nsw i32 %249, %248
  store i32 %add265, i32* %toffset, align 4
  %250 = load i32, i32* %tnode, align 4
  store i32 %250, i32* %prev, align 4
  %251 = load i32, i32* %neighbor2, align 4
  store i32 %251, i32* %tnode, align 4
  br label %if.end.266

if.end.266:                                       ; preds = %if.else.260, %if.then.255
  br label %while.cond.242

while.end.267:                                    ; preds = %while.cond.242
  %252 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %cmp268 = icmp eq %struct.chanbox* %252, null
  br i1 %cmp268, label %if.then.270, label %if.else.283

if.then.270:                                      ; preds = %while.end.267
  %call271 = call noalias i8* @malloc(i64 24) #3
  %253 = bitcast i8* %call271 to %struct.chanbox*
  %254 = load i32, i32* %numberRoutes, align 4
  %idxprom272 = sext i32 %254 to i64
  %255 = load i32, i32* %net.addr, align 4
  %idxprom273 = sext i32 %255 to i64
  %256 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx274 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %256, i64 %idxprom273
  %alternate275 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx274, i32 0, i32 0
  %257 = load %struct.altbox**, %struct.altbox*** %alternate275, align 8
  %arrayidx276 = getelementptr inbounds %struct.altbox*, %struct.altbox** %257, i64 %idxprom272
  %258 = load %struct.altbox*, %struct.altbox** %arrayidx276, align 8
  %chanList = getelementptr inbounds %struct.altbox, %struct.altbox* %258, i32 0, i32 2
  store %struct.chanbox* %253, %struct.chanbox** %chanList, align 8
  %259 = load i32, i32* %numberRoutes, align 4
  %idxprom277 = sext i32 %259 to i64
  %260 = load i32, i32* %net.addr, align 4
  %idxprom278 = sext i32 %260 to i64
  %261 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx279 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %261, i64 %idxprom278
  %alternate280 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx279, i32 0, i32 0
  %262 = load %struct.altbox**, %struct.altbox*** %alternate280, align 8
  %arrayidx281 = getelementptr inbounds %struct.altbox*, %struct.altbox** %262, i64 %idxprom277
  %263 = load %struct.altbox*, %struct.altbox** %arrayidx281, align 8
  %chanList282 = getelementptr inbounds %struct.altbox, %struct.altbox* %263, i32 0, i32 2
  %264 = load %struct.chanbox*, %struct.chanbox** %chanList282, align 8
  store %struct.chanbox* %264, %struct.chanbox** %lastcptr, align 8
  br label %if.end.286

if.else.283:                                      ; preds = %while.end.267
  %call284 = call noalias i8* @malloc(i64 24) #3
  %265 = bitcast i8* %call284 to %struct.chanbox*
  %266 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next285 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %266, i32 0, i32 4
  store %struct.chanbox* %265, %struct.chanbox** %next285, align 8
  store %struct.chanbox* %265, %struct.chanbox** %lastcptr, align 8
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.283, %if.then.270
  %267 = load i32, i32* %fnode, align 4
  %268 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %from = getelementptr inbounds %struct.chanbox, %struct.chanbox* %268, i32 0, i32 0
  store i32 %267, i32* %from, align 4
  %269 = load i32, i32* %tnode, align 4
  %270 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %to = getelementptr inbounds %struct.chanbox, %struct.chanbox* %270, i32 0, i32 1
  store i32 %269, i32* %to, align 4
  %271 = load i32, i32* %foffset, align 4
  %272 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %foffset287 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %272, i32 0, i32 2
  store i32 %271, i32* %foffset287, align 4
  %273 = load i32, i32* %toffset, align 4
  %274 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %toffset288 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %274, i32 0, i32 3
  store i32 %273, i32* %toffset288, align 4
  %275 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next289 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %275, i32 0, i32 4
  store %struct.chanbox* null, %struct.chanbox** %next289, align 8
  br label %if.end.520

if.else.290:                                      ; preds = %for.end.155
  %276 = load i32, i32* %firstNode, align 4
  %cmp291 = icmp sgt i32 %276, 1
  br i1 %cmp291, label %if.then.293, label %if.end.377

if.then.293:                                      ; preds = %if.else.290
  %277 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %277 to i64
  %278 = load i16**, i16*** @netSegArray, align 8
  %arrayidx295 = getelementptr inbounds i16*, i16** %278, i64 %idxprom294
  %279 = load i16*, i16** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds i16, i16* %279, i64 1
  %280 = load i16, i16* %arrayidx296, align 2
  %conv297 = sext i16 %280 to i32
  store i32 %conv297, i32* %pin1, align 4
  %281 = load i32, i32* %i, align 4
  %idxprom298 = sext i32 %281 to i64
  %282 = load i16**, i16*** @netSegArray, align 8
  %arrayidx299 = getelementptr inbounds i16*, i16** %282, i64 %idxprom298
  %283 = load i16*, i16** %arrayidx299, align 8
  %arrayidx300 = getelementptr inbounds i16, i16* %283, i64 2
  %284 = load i16, i16* %arrayidx300, align 2
  %conv301 = sext i16 %284 to i32
  store i32 %conv301, i32* %pin2, align 4
  %285 = load i32, i32* %pin1, align 4
  %idxprom302 = sext i32 %285 to i64
  %286 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx303 = getelementptr inbounds %struct.gnode*, %struct.gnode** %286, i64 %idxprom302
  %287 = load %struct.gnode*, %struct.gnode** %arrayidx303, align 8
  %node304 = getelementptr inbounds %struct.gnode, %struct.gnode* %287, i32 0, i32 0
  %288 = load i32, i32* %node304, align 4
  store i32 %288, i32* %neighbor1, align 4
  %289 = load i32, i32* %pin1, align 4
  %idxprom305 = sext i32 %289 to i64
  %290 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx306 = getelementptr inbounds %struct.gnode*, %struct.gnode** %290, i64 %idxprom305
  %291 = load %struct.gnode*, %struct.gnode** %arrayidx306, align 8
  %next307 = getelementptr inbounds %struct.gnode, %struct.gnode* %291, i32 0, i32 7
  %292 = load %struct.gnode*, %struct.gnode** %next307, align 8
  %node308 = getelementptr inbounds %struct.gnode, %struct.gnode* %292, i32 0, i32 0
  %293 = load i32, i32* %node308, align 4
  store i32 %293, i32* %neighbor2, align 4
  %294 = load i32, i32* %neighbor2, align 4
  %295 = load i32, i32* %pin2, align 4
  %cmp309 = icmp eq i32 %294, %295
  br i1 %cmp309, label %if.then.311, label %if.else.315

if.then.311:                                      ; preds = %if.then.293
  %296 = load i32, i32* %pin1, align 4
  %idxprom312 = sext i32 %296 to i64
  %297 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx313 = getelementptr inbounds %struct.gnode*, %struct.gnode** %297, i64 %idxprom312
  %298 = load %struct.gnode*, %struct.gnode** %arrayidx313, align 8
  %length314 = getelementptr inbounds %struct.gnode, %struct.gnode* %298, i32 0, i32 2
  %299 = load i32, i32* %length314, align 4
  store i32 %299, i32* %foffset, align 4
  %300 = load i32, i32* %neighbor1, align 4
  store i32 %300, i32* %fnode, align 4
  br label %if.end.320

if.else.315:                                      ; preds = %if.then.293
  %301 = load i32, i32* %pin1, align 4
  %idxprom316 = sext i32 %301 to i64
  %302 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx317 = getelementptr inbounds %struct.gnode*, %struct.gnode** %302, i64 %idxprom316
  %303 = load %struct.gnode*, %struct.gnode** %arrayidx317, align 8
  %next318 = getelementptr inbounds %struct.gnode, %struct.gnode* %303, i32 0, i32 7
  %304 = load %struct.gnode*, %struct.gnode** %next318, align 8
  %length319 = getelementptr inbounds %struct.gnode, %struct.gnode* %304, i32 0, i32 2
  %305 = load i32, i32* %length319, align 4
  store i32 %305, i32* %foffset, align 4
  %306 = load i32, i32* %neighbor2, align 4
  store i32 %306, i32* %fnode, align 4
  br label %if.end.320

if.end.320:                                       ; preds = %if.else.315, %if.then.311
  %307 = load i32, i32* %pin1, align 4
  store i32 %307, i32* %prev, align 4
  br label %while.cond.321

while.cond.321:                                   ; preds = %if.end.345, %if.end.320
  %308 = load i32, i32* %fnode, align 4
  %309 = load i32, i32* @numnodes, align 4
  %cmp322 = icmp sgt i32 %308, %309
  br i1 %cmp322, label %while.body.324, label %while.end.346

while.body.324:                                   ; preds = %while.cond.321
  %310 = load i32, i32* %fnode, align 4
  %idxprom325 = sext i32 %310 to i64
  %311 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx326 = getelementptr inbounds %struct.gnode*, %struct.gnode** %311, i64 %idxprom325
  %312 = load %struct.gnode*, %struct.gnode** %arrayidx326, align 8
  %node327 = getelementptr inbounds %struct.gnode, %struct.gnode* %312, i32 0, i32 0
  %313 = load i32, i32* %node327, align 4
  store i32 %313, i32* %neighbor1, align 4
  %314 = load i32, i32* %fnode, align 4
  %idxprom328 = sext i32 %314 to i64
  %315 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx329 = getelementptr inbounds %struct.gnode*, %struct.gnode** %315, i64 %idxprom328
  %316 = load %struct.gnode*, %struct.gnode** %arrayidx329, align 8
  %next330 = getelementptr inbounds %struct.gnode, %struct.gnode* %316, i32 0, i32 7
  %317 = load %struct.gnode*, %struct.gnode** %next330, align 8
  %node331 = getelementptr inbounds %struct.gnode, %struct.gnode* %317, i32 0, i32 0
  %318 = load i32, i32* %node331, align 4
  store i32 %318, i32* %neighbor2, align 4
  %319 = load i32, i32* %neighbor2, align 4
  %320 = load i32, i32* %prev, align 4
  %cmp332 = icmp eq i32 %319, %320
  br i1 %cmp332, label %if.then.334, label %if.else.339

if.then.334:                                      ; preds = %while.body.324
  %321 = load i32, i32* %fnode, align 4
  %idxprom335 = sext i32 %321 to i64
  %322 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx336 = getelementptr inbounds %struct.gnode*, %struct.gnode** %322, i64 %idxprom335
  %323 = load %struct.gnode*, %struct.gnode** %arrayidx336, align 8
  %length337 = getelementptr inbounds %struct.gnode, %struct.gnode* %323, i32 0, i32 2
  %324 = load i32, i32* %length337, align 4
  %325 = load i32, i32* %foffset, align 4
  %add338 = add nsw i32 %325, %324
  store i32 %add338, i32* %foffset, align 4
  %326 = load i32, i32* %fnode, align 4
  store i32 %326, i32* %prev, align 4
  %327 = load i32, i32* %neighbor1, align 4
  store i32 %327, i32* %fnode, align 4
  br label %if.end.345

if.else.339:                                      ; preds = %while.body.324
  %328 = load i32, i32* %fnode, align 4
  %idxprom340 = sext i32 %328 to i64
  %329 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx341 = getelementptr inbounds %struct.gnode*, %struct.gnode** %329, i64 %idxprom340
  %330 = load %struct.gnode*, %struct.gnode** %arrayidx341, align 8
  %next342 = getelementptr inbounds %struct.gnode, %struct.gnode* %330, i32 0, i32 7
  %331 = load %struct.gnode*, %struct.gnode** %next342, align 8
  %length343 = getelementptr inbounds %struct.gnode, %struct.gnode* %331, i32 0, i32 2
  %332 = load i32, i32* %length343, align 4
  %333 = load i32, i32* %foffset, align 4
  %add344 = add nsw i32 %333, %332
  store i32 %add344, i32* %foffset, align 4
  %334 = load i32, i32* %fnode, align 4
  store i32 %334, i32* %prev, align 4
  %335 = load i32, i32* %neighbor2, align 4
  store i32 %335, i32* %fnode, align 4
  br label %if.end.345

if.end.345:                                       ; preds = %if.else.339, %if.then.334
  br label %while.cond.321

while.end.346:                                    ; preds = %while.cond.321
  %336 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %cmp347 = icmp eq %struct.chanbox* %336, null
  br i1 %cmp347, label %if.then.349, label %if.else.363

if.then.349:                                      ; preds = %while.end.346
  %call350 = call noalias i8* @malloc(i64 24) #3
  %337 = bitcast i8* %call350 to %struct.chanbox*
  %338 = load i32, i32* %numberRoutes, align 4
  %idxprom351 = sext i32 %338 to i64
  %339 = load i32, i32* %net.addr, align 4
  %idxprom352 = sext i32 %339 to i64
  %340 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx353 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %340, i64 %idxprom352
  %alternate354 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx353, i32 0, i32 0
  %341 = load %struct.altbox**, %struct.altbox*** %alternate354, align 8
  %arrayidx355 = getelementptr inbounds %struct.altbox*, %struct.altbox** %341, i64 %idxprom351
  %342 = load %struct.altbox*, %struct.altbox** %arrayidx355, align 8
  %chanList356 = getelementptr inbounds %struct.altbox, %struct.altbox* %342, i32 0, i32 2
  store %struct.chanbox* %337, %struct.chanbox** %chanList356, align 8
  %343 = load i32, i32* %numberRoutes, align 4
  %idxprom357 = sext i32 %343 to i64
  %344 = load i32, i32* %net.addr, align 4
  %idxprom358 = sext i32 %344 to i64
  %345 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx359 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %345, i64 %idxprom358
  %alternate360 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx359, i32 0, i32 0
  %346 = load %struct.altbox**, %struct.altbox*** %alternate360, align 8
  %arrayidx361 = getelementptr inbounds %struct.altbox*, %struct.altbox** %346, i64 %idxprom357
  %347 = load %struct.altbox*, %struct.altbox** %arrayidx361, align 8
  %chanList362 = getelementptr inbounds %struct.altbox, %struct.altbox* %347, i32 0, i32 2
  %348 = load %struct.chanbox*, %struct.chanbox** %chanList362, align 8
  store %struct.chanbox* %348, %struct.chanbox** %lastcptr, align 8
  br label %if.end.366

if.else.363:                                      ; preds = %while.end.346
  %call364 = call noalias i8* @malloc(i64 24) #3
  %349 = bitcast i8* %call364 to %struct.chanbox*
  %350 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next365 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %350, i32 0, i32 4
  store %struct.chanbox* %349, %struct.chanbox** %next365, align 8
  store %struct.chanbox* %349, %struct.chanbox** %lastcptr, align 8
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.363, %if.then.349
  %351 = load i32, i32* %fnode, align 4
  %352 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %from367 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %352, i32 0, i32 0
  store i32 %351, i32* %from367, align 4
  %353 = load i32, i32* %foffset, align 4
  %354 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %foffset368 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %354, i32 0, i32 2
  store i32 %353, i32* %foffset368, align 4
  %355 = load i32, i32* %firstNode, align 4
  %idxprom369 = sext i32 %355 to i64
  %356 = load i32, i32* %i, align 4
  %idxprom370 = sext i32 %356 to i64
  %357 = load i16**, i16*** @netSegArray, align 8
  %arrayidx371 = getelementptr inbounds i16*, i16** %357, i64 %idxprom370
  %358 = load i16*, i16** %arrayidx371, align 8
  %arrayidx372 = getelementptr inbounds i16, i16* %358, i64 %idxprom369
  %359 = load i16, i16* %arrayidx372, align 2
  %conv373 = sext i16 %359 to i32
  %360 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %to374 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %360, i32 0, i32 1
  store i32 %conv373, i32* %to374, align 4
  %361 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %toffset375 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %361, i32 0, i32 3
  store i32 0, i32* %toffset375, align 4
  %362 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next376 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %362, i32 0, i32 4
  store %struct.chanbox* null, %struct.chanbox** %next376, align 8
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.366, %if.else.290
  %363 = load i32, i32* %firstNode, align 4
  store i32 %363, i32* %node1, align 4
  br label %for.cond.378

for.cond.378:                                     ; preds = %if.end.435, %if.end.377
  %364 = load i32, i32* %node1, align 4
  %add379 = add nsw i32 %364, 1
  store i32 %add379, i32* %j, align 4
  br label %for.cond.380

for.cond.380:                                     ; preds = %for.inc.393, %for.cond.378
  %365 = load i32, i32* %j, align 4
  %366 = load i32, i32* %lastNode, align 4
  %cmp381 = icmp sle i32 %365, %366
  br i1 %cmp381, label %for.body.383, label %for.end.395

for.body.383:                                     ; preds = %for.cond.380
  %367 = load i32, i32* %j, align 4
  %idxprom384 = sext i32 %367 to i64
  %368 = load i32, i32* %i, align 4
  %idxprom385 = sext i32 %368 to i64
  %369 = load i16**, i16*** @netSegArray, align 8
  %arrayidx386 = getelementptr inbounds i16*, i16** %369, i64 %idxprom385
  %370 = load i16*, i16** %arrayidx386, align 8
  %arrayidx387 = getelementptr inbounds i16, i16* %370, i64 %idxprom384
  %371 = load i16, i16* %arrayidx387, align 2
  %conv388 = sext i16 %371 to i32
  %372 = load i32, i32* @numnodes, align 4
  %cmp389 = icmp sle i32 %conv388, %372
  br i1 %cmp389, label %if.then.391, label %if.end.392

if.then.391:                                      ; preds = %for.body.383
  br label %for.end.395

if.end.392:                                       ; preds = %for.body.383
  br label %for.inc.393

for.inc.393:                                      ; preds = %if.end.392
  %373 = load i32, i32* %j, align 4
  %inc394 = add nsw i32 %373, 1
  store i32 %inc394, i32* %j, align 4
  br label %for.cond.380

for.end.395:                                      ; preds = %if.then.391, %for.cond.380
  %374 = load i32, i32* %j, align 4
  %375 = load i32, i32* %lastNode, align 4
  %cmp396 = icmp sgt i32 %374, %375
  br i1 %cmp396, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %for.end.395
  br label %for.end.436

if.else.399:                                      ; preds = %for.end.395
  %376 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %cmp400 = icmp eq %struct.chanbox* %376, null
  br i1 %cmp400, label %if.then.402, label %if.else.416

if.then.402:                                      ; preds = %if.else.399
  %call403 = call noalias i8* @malloc(i64 24) #3
  %377 = bitcast i8* %call403 to %struct.chanbox*
  %378 = load i32, i32* %numberRoutes, align 4
  %idxprom404 = sext i32 %378 to i64
  %379 = load i32, i32* %net.addr, align 4
  %idxprom405 = sext i32 %379 to i64
  %380 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx406 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %380, i64 %idxprom405
  %alternate407 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx406, i32 0, i32 0
  %381 = load %struct.altbox**, %struct.altbox*** %alternate407, align 8
  %arrayidx408 = getelementptr inbounds %struct.altbox*, %struct.altbox** %381, i64 %idxprom404
  %382 = load %struct.altbox*, %struct.altbox** %arrayidx408, align 8
  %chanList409 = getelementptr inbounds %struct.altbox, %struct.altbox* %382, i32 0, i32 2
  store %struct.chanbox* %377, %struct.chanbox** %chanList409, align 8
  %383 = load i32, i32* %numberRoutes, align 4
  %idxprom410 = sext i32 %383 to i64
  %384 = load i32, i32* %net.addr, align 4
  %idxprom411 = sext i32 %384 to i64
  %385 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx412 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %385, i64 %idxprom411
  %alternate413 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx412, i32 0, i32 0
  %386 = load %struct.altbox**, %struct.altbox*** %alternate413, align 8
  %arrayidx414 = getelementptr inbounds %struct.altbox*, %struct.altbox** %386, i64 %idxprom410
  %387 = load %struct.altbox*, %struct.altbox** %arrayidx414, align 8
  %chanList415 = getelementptr inbounds %struct.altbox, %struct.altbox* %387, i32 0, i32 2
  %388 = load %struct.chanbox*, %struct.chanbox** %chanList415, align 8
  store %struct.chanbox* %388, %struct.chanbox** %lastcptr, align 8
  br label %if.end.419

if.else.416:                                      ; preds = %if.else.399
  %call417 = call noalias i8* @malloc(i64 24) #3
  %389 = bitcast i8* %call417 to %struct.chanbox*
  %390 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next418 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %390, i32 0, i32 4
  store %struct.chanbox* %389, %struct.chanbox** %next418, align 8
  store %struct.chanbox* %389, %struct.chanbox** %lastcptr, align 8
  br label %if.end.419

if.end.419:                                       ; preds = %if.else.416, %if.then.402
  %391 = load i32, i32* %node1, align 4
  %idxprom420 = sext i32 %391 to i64
  %392 = load i32, i32* %i, align 4
  %idxprom421 = sext i32 %392 to i64
  %393 = load i16**, i16*** @netSegArray, align 8
  %arrayidx422 = getelementptr inbounds i16*, i16** %393, i64 %idxprom421
  %394 = load i16*, i16** %arrayidx422, align 8
  %arrayidx423 = getelementptr inbounds i16, i16* %394, i64 %idxprom420
  %395 = load i16, i16* %arrayidx423, align 2
  %conv424 = sext i16 %395 to i32
  %396 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %from425 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %396, i32 0, i32 0
  store i32 %conv424, i32* %from425, align 4
  %397 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %foffset426 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %397, i32 0, i32 2
  store i32 0, i32* %foffset426, align 4
  %398 = load i32, i32* %j, align 4
  %idxprom427 = sext i32 %398 to i64
  %399 = load i32, i32* %i, align 4
  %idxprom428 = sext i32 %399 to i64
  %400 = load i16**, i16*** @netSegArray, align 8
  %arrayidx429 = getelementptr inbounds i16*, i16** %400, i64 %idxprom428
  %401 = load i16*, i16** %arrayidx429, align 8
  %arrayidx430 = getelementptr inbounds i16, i16* %401, i64 %idxprom427
  %402 = load i16, i16* %arrayidx430, align 2
  %conv431 = sext i16 %402 to i32
  %403 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %to432 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %403, i32 0, i32 1
  store i32 %conv431, i32* %to432, align 4
  %404 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %toffset433 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %404, i32 0, i32 3
  store i32 0, i32* %toffset433, align 4
  %405 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next434 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %405, i32 0, i32 4
  store %struct.chanbox* null, %struct.chanbox** %next434, align 8
  %406 = load i32, i32* %j, align 4
  store i32 %406, i32* %node1, align 4
  br label %if.end.435

if.end.435:                                       ; preds = %if.end.419
  br label %for.cond.378

for.end.436:                                      ; preds = %if.then.398
  %407 = load i32, i32* %lastNode, align 4
  %408 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %408 to i64
  %409 = load i16**, i16*** @netSegArray, align 8
  %arrayidx438 = getelementptr inbounds i16*, i16** %409, i64 %idxprom437
  %410 = load i16*, i16** %arrayidx438, align 8
  %arrayidx439 = getelementptr inbounds i16, i16* %410, i64 0
  %411 = load i16, i16* %arrayidx439, align 2
  %conv440 = sext i16 %411 to i32
  %cmp441 = icmp slt i32 %407, %conv440
  br i1 %cmp441, label %if.then.443, label %if.end.519

if.then.443:                                      ; preds = %for.end.436
  %412 = load i32, i32* %i, align 4
  %idxprom444 = sext i32 %412 to i64
  %413 = load i16**, i16*** @netSegArray, align 8
  %arrayidx445 = getelementptr inbounds i16*, i16** %413, i64 %idxprom444
  %414 = load i16*, i16** %arrayidx445, align 8
  %arrayidx446 = getelementptr inbounds i16, i16* %414, i64 0
  %415 = load i16, i16* %arrayidx446, align 2
  %idxprom447 = sext i16 %415 to i64
  %416 = load i32, i32* %i, align 4
  %idxprom448 = sext i32 %416 to i64
  %417 = load i16**, i16*** @netSegArray, align 8
  %arrayidx449 = getelementptr inbounds i16*, i16** %417, i64 %idxprom448
  %418 = load i16*, i16** %arrayidx449, align 8
  %arrayidx450 = getelementptr inbounds i16, i16* %418, i64 %idxprom447
  %419 = load i16, i16* %arrayidx450, align 2
  %conv451 = sext i16 %419 to i32
  store i32 %conv451, i32* %pin1, align 4
  %420 = load i32, i32* %i, align 4
  %idxprom452 = sext i32 %420 to i64
  %421 = load i16**, i16*** @netSegArray, align 8
  %arrayidx453 = getelementptr inbounds i16*, i16** %421, i64 %idxprom452
  %422 = load i16*, i16** %arrayidx453, align 8
  %arrayidx454 = getelementptr inbounds i16, i16* %422, i64 0
  %423 = load i16, i16* %arrayidx454, align 2
  %conv455 = sext i16 %423 to i32
  %sub456 = sub nsw i32 %conv455, 1
  %idxprom457 = sext i32 %sub456 to i64
  %424 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %424 to i64
  %425 = load i16**, i16*** @netSegArray, align 8
  %arrayidx459 = getelementptr inbounds i16*, i16** %425, i64 %idxprom458
  %426 = load i16*, i16** %arrayidx459, align 8
  %arrayidx460 = getelementptr inbounds i16, i16* %426, i64 %idxprom457
  %427 = load i16, i16* %arrayidx460, align 2
  %conv461 = sext i16 %427 to i32
  store i32 %conv461, i32* %pin2, align 4
  %428 = load i32, i32* %pin1, align 4
  %idxprom462 = sext i32 %428 to i64
  %429 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx463 = getelementptr inbounds %struct.gnode*, %struct.gnode** %429, i64 %idxprom462
  %430 = load %struct.gnode*, %struct.gnode** %arrayidx463, align 8
  %node464 = getelementptr inbounds %struct.gnode, %struct.gnode* %430, i32 0, i32 0
  %431 = load i32, i32* %node464, align 4
  store i32 %431, i32* %neighbor1, align 4
  %432 = load i32, i32* %pin1, align 4
  %idxprom465 = sext i32 %432 to i64
  %433 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx466 = getelementptr inbounds %struct.gnode*, %struct.gnode** %433, i64 %idxprom465
  %434 = load %struct.gnode*, %struct.gnode** %arrayidx466, align 8
  %next467 = getelementptr inbounds %struct.gnode, %struct.gnode* %434, i32 0, i32 7
  %435 = load %struct.gnode*, %struct.gnode** %next467, align 8
  %node468 = getelementptr inbounds %struct.gnode, %struct.gnode* %435, i32 0, i32 0
  %436 = load i32, i32* %node468, align 4
  store i32 %436, i32* %neighbor2, align 4
  %437 = load i32, i32* %neighbor2, align 4
  %438 = load i32, i32* %pin2, align 4
  %cmp469 = icmp eq i32 %437, %438
  br i1 %cmp469, label %if.then.471, label %if.else.475

if.then.471:                                      ; preds = %if.then.443
  %439 = load i32, i32* %pin1, align 4
  %idxprom472 = sext i32 %439 to i64
  %440 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx473 = getelementptr inbounds %struct.gnode*, %struct.gnode** %440, i64 %idxprom472
  %441 = load %struct.gnode*, %struct.gnode** %arrayidx473, align 8
  %length474 = getelementptr inbounds %struct.gnode, %struct.gnode* %441, i32 0, i32 2
  %442 = load i32, i32* %length474, align 4
  store i32 %442, i32* %toffset, align 4
  %443 = load i32, i32* %neighbor1, align 4
  store i32 %443, i32* %tnode, align 4
  br label %if.end.480

if.else.475:                                      ; preds = %if.then.443
  %444 = load i32, i32* %pin1, align 4
  %idxprom476 = sext i32 %444 to i64
  %445 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx477 = getelementptr inbounds %struct.gnode*, %struct.gnode** %445, i64 %idxprom476
  %446 = load %struct.gnode*, %struct.gnode** %arrayidx477, align 8
  %next478 = getelementptr inbounds %struct.gnode, %struct.gnode* %446, i32 0, i32 7
  %447 = load %struct.gnode*, %struct.gnode** %next478, align 8
  %length479 = getelementptr inbounds %struct.gnode, %struct.gnode* %447, i32 0, i32 2
  %448 = load i32, i32* %length479, align 4
  store i32 %448, i32* %toffset, align 4
  %449 = load i32, i32* %neighbor2, align 4
  store i32 %449, i32* %tnode, align 4
  br label %if.end.480

if.end.480:                                       ; preds = %if.else.475, %if.then.471
  %450 = load i32, i32* %pin1, align 4
  store i32 %450, i32* %prev, align 4
  br label %while.cond.481

while.cond.481:                                   ; preds = %if.end.505, %if.end.480
  %451 = load i32, i32* %tnode, align 4
  %452 = load i32, i32* @numnodes, align 4
  %cmp482 = icmp sgt i32 %451, %452
  br i1 %cmp482, label %while.body.484, label %while.end.506

while.body.484:                                   ; preds = %while.cond.481
  %453 = load i32, i32* %tnode, align 4
  %idxprom485 = sext i32 %453 to i64
  %454 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx486 = getelementptr inbounds %struct.gnode*, %struct.gnode** %454, i64 %idxprom485
  %455 = load %struct.gnode*, %struct.gnode** %arrayidx486, align 8
  %node487 = getelementptr inbounds %struct.gnode, %struct.gnode* %455, i32 0, i32 0
  %456 = load i32, i32* %node487, align 4
  store i32 %456, i32* %neighbor1, align 4
  %457 = load i32, i32* %tnode, align 4
  %idxprom488 = sext i32 %457 to i64
  %458 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx489 = getelementptr inbounds %struct.gnode*, %struct.gnode** %458, i64 %idxprom488
  %459 = load %struct.gnode*, %struct.gnode** %arrayidx489, align 8
  %next490 = getelementptr inbounds %struct.gnode, %struct.gnode* %459, i32 0, i32 7
  %460 = load %struct.gnode*, %struct.gnode** %next490, align 8
  %node491 = getelementptr inbounds %struct.gnode, %struct.gnode* %460, i32 0, i32 0
  %461 = load i32, i32* %node491, align 4
  store i32 %461, i32* %neighbor2, align 4
  %462 = load i32, i32* %neighbor2, align 4
  %463 = load i32, i32* %prev, align 4
  %cmp492 = icmp eq i32 %462, %463
  br i1 %cmp492, label %if.then.494, label %if.else.499

if.then.494:                                      ; preds = %while.body.484
  %464 = load i32, i32* %tnode, align 4
  %idxprom495 = sext i32 %464 to i64
  %465 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx496 = getelementptr inbounds %struct.gnode*, %struct.gnode** %465, i64 %idxprom495
  %466 = load %struct.gnode*, %struct.gnode** %arrayidx496, align 8
  %length497 = getelementptr inbounds %struct.gnode, %struct.gnode* %466, i32 0, i32 2
  %467 = load i32, i32* %length497, align 4
  %468 = load i32, i32* %toffset, align 4
  %add498 = add nsw i32 %468, %467
  store i32 %add498, i32* %toffset, align 4
  %469 = load i32, i32* %tnode, align 4
  store i32 %469, i32* %prev, align 4
  %470 = load i32, i32* %neighbor1, align 4
  store i32 %470, i32* %tnode, align 4
  br label %if.end.505

if.else.499:                                      ; preds = %while.body.484
  %471 = load i32, i32* %tnode, align 4
  %idxprom500 = sext i32 %471 to i64
  %472 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %arrayidx501 = getelementptr inbounds %struct.gnode*, %struct.gnode** %472, i64 %idxprom500
  %473 = load %struct.gnode*, %struct.gnode** %arrayidx501, align 8
  %next502 = getelementptr inbounds %struct.gnode, %struct.gnode* %473, i32 0, i32 7
  %474 = load %struct.gnode*, %struct.gnode** %next502, align 8
  %length503 = getelementptr inbounds %struct.gnode, %struct.gnode* %474, i32 0, i32 2
  %475 = load i32, i32* %length503, align 4
  %476 = load i32, i32* %toffset, align 4
  %add504 = add nsw i32 %476, %475
  store i32 %add504, i32* %toffset, align 4
  %477 = load i32, i32* %tnode, align 4
  store i32 %477, i32* %prev, align 4
  %478 = load i32, i32* %neighbor2, align 4
  store i32 %478, i32* %tnode, align 4
  br label %if.end.505

if.end.505:                                       ; preds = %if.else.499, %if.then.494
  br label %while.cond.481

while.end.506:                                    ; preds = %while.cond.481
  %call507 = call noalias i8* @malloc(i64 24) #3
  %479 = bitcast i8* %call507 to %struct.chanbox*
  %480 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next508 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %480, i32 0, i32 4
  store %struct.chanbox* %479, %struct.chanbox** %next508, align 8
  store %struct.chanbox* %479, %struct.chanbox** %lastcptr, align 8
  %481 = load i32, i32* %lastNode, align 4
  %idxprom509 = sext i32 %481 to i64
  %482 = load i32, i32* %i, align 4
  %idxprom510 = sext i32 %482 to i64
  %483 = load i16**, i16*** @netSegArray, align 8
  %arrayidx511 = getelementptr inbounds i16*, i16** %483, i64 %idxprom510
  %484 = load i16*, i16** %arrayidx511, align 8
  %arrayidx512 = getelementptr inbounds i16, i16* %484, i64 %idxprom509
  %485 = load i16, i16* %arrayidx512, align 2
  %conv513 = sext i16 %485 to i32
  %486 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %from514 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %486, i32 0, i32 0
  store i32 %conv513, i32* %from514, align 4
  %487 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %foffset515 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %487, i32 0, i32 2
  store i32 0, i32* %foffset515, align 4
  %488 = load i32, i32* %tnode, align 4
  %489 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %to516 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %489, i32 0, i32 1
  store i32 %488, i32* %to516, align 4
  %490 = load i32, i32* %toffset, align 4
  %491 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %toffset517 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %491, i32 0, i32 3
  store i32 %490, i32* %toffset517, align 4
  %492 = load %struct.chanbox*, %struct.chanbox** %lastcptr, align 8
  %next518 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %492, i32 0, i32 4
  store %struct.chanbox* null, %struct.chanbox** %next518, align 8
  br label %if.end.519

if.end.519:                                       ; preds = %while.end.506, %for.end.436
  br label %if.end.520

if.end.520:                                       ; preds = %if.end.519, %if.end.286
  br label %for.inc.521

for.inc.521:                                      ; preds = %if.end.520
  %493 = load i32, i32* %i, align 4
  %inc522 = add nsw i32 %493, 1
  store i32 %inc522, i32* %i, align 4
  br label %for.cond.125

for.end.523:                                      ; preds = %for.cond.125
  %494 = load i32, i32* %numberRoutes, align 4
  %495 = load i32, i32* @MAXPATHS, align 4
  %cmp524 = icmp sge i32 %494, %495
  br i1 %cmp524, label %if.then.526, label %if.end.527

if.then.526:                                      ; preds = %for.end.523
  br label %for.end.528

if.end.527:                                       ; preds = %for.end.523
  br label %for.cond

for.end.528:                                      ; preds = %if.then.526, %if.then.2
  %496 = load i32, i32* %numberRoutes, align 4
  %497 = load i32, i32* %net.addr, align 4
  %idxprom529 = sext i32 %497 to i64
  %498 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %arrayidx530 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %498, i64 %idxprom529
  %numRoutes = getelementptr inbounds %struct.nrbox, %struct.nrbox* %arrayidx530, i32 0, i32 1
  store i32 %496, i32* %numRoutes, align 4
  br label %return

return:                                           ; preds = %for.end.528, %if.then
  ret void
}

declare void @grepair() #1

declare void @prepair(i32) #1

declare void @loadpg(i32, i32) #1

declare void @shortpath(i32) #1

declare void @routenet(i32, i32) #1

declare void @tpop(%struct.tnode**, %struct.tnode**, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define void @mergeSeg() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, i32* %flag, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.109, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i16**, i16*** @netSegArray, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %1, i64 0
  %2 = load i16*, i16** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 0
  %3 = load i16, i16* %arrayidx1, align 2
  %conv = sext i16 %3 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end.111

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16**, i16*** @netSegArray, align 8
  %arrayidx3 = getelementptr inbounds i16*, i16** %5, i64 %idxprom
  %6 = load i16*, i16** %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds i16, i16* %6, i64 1
  %7 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %7 to i32
  %8 = load i32, i32* @numnodes, align 4
  %cmp6 = icmp sgt i32 %conv5, %8
  br i1 %cmp6, label %if.then, label %if.end.46

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then
  %10 = load i32, i32* %j, align 4
  %11 = load i16**, i16*** @netSegArray, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %11, i64 0
  %12 = load i16*, i16** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %12, i64 0
  %13 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %13 to i32
  %cmp12 = icmp sle i32 %10, %conv11
  br i1 %cmp12, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.8
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load i16**, i16*** @netSegArray, align 8
  %arrayidx16 = getelementptr inbounds i16*, i16** %15, i64 %idxprom15
  %16 = load i16*, i16** %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %16, i64 1
  %17 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %17 to i32
  %18 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %18 to i64
  %19 = load i16**, i16*** @netSegArray, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %19, i64 %idxprom19
  %20 = load i16*, i16** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %20, i64 1
  %21 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %21 to i32
  %cmp23 = icmp eq i32 %conv18, %conv22
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %for.body.14
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  call void @joinSeg(i32 %22, i32 -1, i32 %23, i32 -1)
  store i32 1, i32* %flag, align 4
  br label %for.end

if.else:                                          ; preds = %for.body.14
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load i16**, i16*** @netSegArray, align 8
  %arrayidx27 = getelementptr inbounds i16*, i16** %25, i64 %idxprom26
  %26 = load i16*, i16** %arrayidx27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %26, i64 1
  %27 = load i16, i16* %arrayidx28, align 2
  %conv29 = sext i16 %27 to i32
  %28 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load i16**, i16*** @netSegArray, align 8
  %arrayidx31 = getelementptr inbounds i16*, i16** %29, i64 %idxprom30
  %30 = load i16*, i16** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %30, i64 0
  %31 = load i16, i16* %arrayidx32, align 2
  %idxprom33 = sext i16 %31 to i64
  %32 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %32 to i64
  %33 = load i16**, i16*** @netSegArray, align 8
  %arrayidx35 = getelementptr inbounds i16*, i16** %33, i64 %idxprom34
  %34 = load i16*, i16** %arrayidx35, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %34, i64 %idxprom33
  %35 = load i16, i16* %arrayidx36, align 2
  %conv37 = sext i16 %35 to i32
  %cmp38 = icmp eq i32 %conv29, %conv37
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.else
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %j, align 4
  call void @joinSeg(i32 %36, i32 -1, i32 %37, i32 1)
  store i32 1, i32* %flag, align 4
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %if.then.40, %if.then.25, %for.cond.8
  %39 = load i32, i32* %flag, align 4
  %cmp42 = icmp eq i32 %39, 1
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %for.end
  store i32 0, i32* %flag, align 4
  %40 = load i32, i32* %i, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %i, align 4
  br label %for.inc.109

if.end.45:                                        ; preds = %for.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.body
  %41 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load i16**, i16*** @netSegArray, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %42, i64 %idxprom47
  %43 = load i16*, i16** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %43, i64 0
  %44 = load i16, i16* %arrayidx49, align 2
  %idxprom50 = sext i16 %44 to i64
  %45 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %45 to i64
  %46 = load i16**, i16*** @netSegArray, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %46, i64 %idxprom51
  %47 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %47, i64 %idxprom50
  %48 = load i16, i16* %arrayidx53, align 2
  %conv54 = sext i16 %48 to i32
  %49 = load i32, i32* @numnodes, align 4
  %cmp55 = icmp sgt i32 %conv54, %49
  br i1 %cmp55, label %if.then.57, label %if.end.108

if.then.57:                                       ; preds = %if.end.46
  %50 = load i32, i32* %i, align 4
  %add58 = add nsw i32 %50, 1
  store i32 %add58, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.105, %if.then.57
  %51 = load i32, i32* %j, align 4
  %52 = load i16**, i16*** @netSegArray, align 8
  %arrayidx60 = getelementptr inbounds i16*, i16** %52, i64 0
  %53 = load i16*, i16** %arrayidx60, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %53, i64 0
  %54 = load i16, i16* %arrayidx61, align 2
  %conv62 = sext i16 %54 to i32
  %cmp63 = icmp sle i32 %51, %conv62
  br i1 %cmp63, label %for.body.65, label %for.end.107

for.body.65:                                      ; preds = %for.cond.59
  %55 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %55 to i64
  %56 = load i16**, i16*** @netSegArray, align 8
  %arrayidx67 = getelementptr inbounds i16*, i16** %56, i64 %idxprom66
  %57 = load i16*, i16** %arrayidx67, align 8
  %arrayidx68 = getelementptr inbounds i16, i16* %57, i64 0
  %58 = load i16, i16* %arrayidx68, align 2
  %idxprom69 = sext i16 %58 to i64
  %59 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %59 to i64
  %60 = load i16**, i16*** @netSegArray, align 8
  %arrayidx71 = getelementptr inbounds i16*, i16** %60, i64 %idxprom70
  %61 = load i16*, i16** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %61, i64 %idxprom69
  %62 = load i16, i16* %arrayidx72, align 2
  %conv73 = sext i16 %62 to i32
  %63 = load i32, i32* %j, align 4
  %idxprom74 = sext i32 %63 to i64
  %64 = load i16**, i16*** @netSegArray, align 8
  %arrayidx75 = getelementptr inbounds i16*, i16** %64, i64 %idxprom74
  %65 = load i16*, i16** %arrayidx75, align 8
  %arrayidx76 = getelementptr inbounds i16, i16* %65, i64 0
  %66 = load i16, i16* %arrayidx76, align 2
  %idxprom77 = sext i16 %66 to i64
  %67 = load i32, i32* %j, align 4
  %idxprom78 = sext i32 %67 to i64
  %68 = load i16**, i16*** @netSegArray, align 8
  %arrayidx79 = getelementptr inbounds i16*, i16** %68, i64 %idxprom78
  %69 = load i16*, i16** %arrayidx79, align 8
  %arrayidx80 = getelementptr inbounds i16, i16* %69, i64 %idxprom77
  %70 = load i16, i16* %arrayidx80, align 2
  %conv81 = sext i16 %70 to i32
  %cmp82 = icmp eq i32 %conv73, %conv81
  br i1 %cmp82, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %for.body.65
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %j, align 4
  call void @joinSeg(i32 %71, i32 1, i32 %72, i32 1)
  %73 = load i32, i32* %i, align 4
  %dec85 = add nsw i32 %73, -1
  store i32 %dec85, i32* %i, align 4
  br label %for.end.107

if.else.86:                                       ; preds = %for.body.65
  %74 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %74 to i64
  %75 = load i16**, i16*** @netSegArray, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %75, i64 %idxprom87
  %76 = load i16*, i16** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %76, i64 0
  %77 = load i16, i16* %arrayidx89, align 2
  %idxprom90 = sext i16 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %78 to i64
  %79 = load i16**, i16*** @netSegArray, align 8
  %arrayidx92 = getelementptr inbounds i16*, i16** %79, i64 %idxprom91
  %80 = load i16*, i16** %arrayidx92, align 8
  %arrayidx93 = getelementptr inbounds i16, i16* %80, i64 %idxprom90
  %81 = load i16, i16* %arrayidx93, align 2
  %conv94 = sext i16 %81 to i32
  %82 = load i32, i32* %j, align 4
  %idxprom95 = sext i32 %82 to i64
  %83 = load i16**, i16*** @netSegArray, align 8
  %arrayidx96 = getelementptr inbounds i16*, i16** %83, i64 %idxprom95
  %84 = load i16*, i16** %arrayidx96, align 8
  %arrayidx97 = getelementptr inbounds i16, i16* %84, i64 1
  %85 = load i16, i16* %arrayidx97, align 2
  %conv98 = sext i16 %85 to i32
  %cmp99 = icmp eq i32 %conv94, %conv98
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.else.86
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %j, align 4
  call void @joinSeg(i32 %86, i32 1, i32 %87, i32 -1)
  %88 = load i32, i32* %i, align 4
  %dec102 = add nsw i32 %88, -1
  store i32 %dec102, i32* %i, align 4
  br label %for.end.107

if.end.103:                                       ; preds = %if.else.86
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %89 = load i32, i32* %j, align 4
  %inc106 = add nsw i32 %89, 1
  store i32 %inc106, i32* %j, align 4
  br label %for.cond.59

for.end.107:                                      ; preds = %if.then.101, %if.then.84, %for.cond.59
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.107, %if.end.46
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108, %if.then.44
  %90 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %90, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond

for.end.111:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define void @joinSeg(i32 %a, i32 %aend, i32 %b, i32 %bend) #0 {
entry:
  %a.addr = alloca i32, align 4
  %aend.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %bend.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %aend, i32* %aend.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %bend, i32* %bend.addr, align 4
  %0 = load i32, i32* %aend.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.57

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %a.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i16**, i16*** @netSegArray, align 8
  %arrayidx = getelementptr inbounds i16*, i16** %2, i64 %idxprom
  %3 = load i16*, i16** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx1, align 2
  %conv = sext i16 %4 to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %5, 1
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load i32, i32* %a.addr, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i16**, i16*** @netSegArray, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %8, i64 %idxprom5
  %9 = load i16*, i16** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %9, i64 %idxprom4
  %10 = load i16, i16* %arrayidx7, align 2
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %b.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load i16**, i16*** @netSegArray, align 8
  %arrayidx9 = getelementptr inbounds i16*, i16** %13, i64 %idxprom8
  %14 = load i16*, i16** %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %15 to i32
  %add = add nsw i32 %11, %conv11
  %sub = sub nsw i32 %add, 1
  %idxprom12 = sext i32 %sub to i64
  %16 = load i32, i32* %a.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i16**, i16*** @netSegArray, align 8
  %arrayidx14 = getelementptr inbounds i16*, i16** %17, i64 %idxprom13
  %18 = load i16*, i16** %arrayidx14, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %18, i64 %idxprom12
  store i16 %10, i16* %arrayidx15, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load i32, i32* %bend.addr, align 4
  %cmp16 = icmp slt i32 %20, 0
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.end
  store i32 1, i32* %i, align 4
  %21 = load i32, i32* %b.addr, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i16**, i16*** @netSegArray, align 8
  %arrayidx20 = getelementptr inbounds i16*, i16** %22, i64 %idxprom19
  %23 = load i16*, i16** %arrayidx20, align 8
  %arrayidx21 = getelementptr inbounds i16, i16* %23, i64 0
  %24 = load i16, i16* %arrayidx21, align 2
  %conv22 = sext i16 %24 to i32
  store i32 %conv22, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.35, %if.then.18
  %25 = load i32, i32* %j, align 4
  %cmp24 = icmp sge i32 %25, 2
  br i1 %cmp24, label %for.body.26, label %for.end.37

for.body.26:                                      ; preds = %for.cond.23
  %26 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %26 to i64
  %27 = load i32, i32* %b.addr, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load i16**, i16*** @netSegArray, align 8
  %arrayidx29 = getelementptr inbounds i16*, i16** %28, i64 %idxprom28
  %29 = load i16*, i16** %arrayidx29, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %29, i64 %idxprom27
  %30 = load i16, i16* %arrayidx30, align 2
  %31 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %31 to i64
  %32 = load i32, i32* %a.addr, align 4
  %idxprom32 = sext i32 %32 to i64
  %33 = load i16**, i16*** @netSegArray, align 8
  %arrayidx33 = getelementptr inbounds i16*, i16** %33, i64 %idxprom32
  %34 = load i16*, i16** %arrayidx33, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %34, i64 %idxprom31
  store i16 %30, i16* %arrayidx34, align 2
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.26
  %35 = load i32, i32* %j, align 4
  %dec36 = add nsw i32 %35, -1
  store i32 %dec36, i32* %j, align 4
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end.37:                                       ; preds = %for.cond.23
  br label %if.end

if.else:                                          ; preds = %for.end
  store i32 1, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.54, %if.else
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %b.addr, align 4
  %idxprom39 = sext i32 %38 to i64
  %39 = load i16**, i16*** @netSegArray, align 8
  %arrayidx40 = getelementptr inbounds i16*, i16** %39, i64 %idxprom39
  %40 = load i16*, i16** %arrayidx40, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %40, i64 0
  %41 = load i16, i16* %arrayidx41, align 2
  %conv42 = sext i16 %41 to i32
  %cmp43 = icmp slt i32 %37, %conv42
  br i1 %cmp43, label %for.body.45, label %for.end.56

for.body.45:                                      ; preds = %for.cond.38
  %42 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %42 to i64
  %43 = load i32, i32* %b.addr, align 4
  %idxprom47 = sext i32 %43 to i64
  %44 = load i16**, i16*** @netSegArray, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %44, i64 %idxprom47
  %45 = load i16*, i16** %arrayidx48, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %45, i64 %idxprom46
  %46 = load i16, i16* %arrayidx49, align 2
  %47 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %47 to i64
  %48 = load i32, i32* %a.addr, align 4
  %idxprom51 = sext i32 %48 to i64
  %49 = load i16**, i16*** @netSegArray, align 8
  %arrayidx52 = getelementptr inbounds i16*, i16** %49, i64 %idxprom51
  %50 = load i16*, i16** %arrayidx52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %50, i64 %idxprom50
  store i16 %46, i16* %arrayidx53, align 2
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.45
  %51 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %51, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.38

for.end.56:                                       ; preds = %for.cond.38
  br label %if.end

if.end:                                           ; preds = %for.end.56, %for.end.37
  br label %if.end.114

if.else.57:                                       ; preds = %entry
  %52 = load i32, i32* %bend.addr, align 4
  %cmp58 = icmp slt i32 %52, 0
  br i1 %cmp58, label %if.then.60, label %if.else.86

if.then.60:                                       ; preds = %if.else.57
  store i32 2, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.83, %if.then.60
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %b.addr, align 4
  %idxprom62 = sext i32 %54 to i64
  %55 = load i16**, i16*** @netSegArray, align 8
  %arrayidx63 = getelementptr inbounds i16*, i16** %55, i64 %idxprom62
  %56 = load i16*, i16** %arrayidx63, align 8
  %arrayidx64 = getelementptr inbounds i16, i16* %56, i64 0
  %57 = load i16, i16* %arrayidx64, align 2
  %conv65 = sext i16 %57 to i32
  %cmp66 = icmp sle i32 %53, %conv65
  br i1 %cmp66, label %for.body.68, label %for.end.85

for.body.68:                                      ; preds = %for.cond.61
  %58 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %58 to i64
  %59 = load i32, i32* %b.addr, align 4
  %idxprom70 = sext i32 %59 to i64
  %60 = load i16**, i16*** @netSegArray, align 8
  %arrayidx71 = getelementptr inbounds i16*, i16** %60, i64 %idxprom70
  %61 = load i16*, i16** %arrayidx71, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %61, i64 %idxprom69
  %62 = load i16, i16* %arrayidx72, align 2
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %a.addr, align 4
  %idxprom73 = sext i32 %64 to i64
  %65 = load i16**, i16*** @netSegArray, align 8
  %arrayidx74 = getelementptr inbounds i16*, i16** %65, i64 %idxprom73
  %66 = load i16*, i16** %arrayidx74, align 8
  %arrayidx75 = getelementptr inbounds i16, i16* %66, i64 0
  %67 = load i16, i16* %arrayidx75, align 2
  %conv76 = sext i16 %67 to i32
  %add77 = add nsw i32 %63, %conv76
  %sub78 = sub nsw i32 %add77, 1
  %idxprom79 = sext i32 %sub78 to i64
  %68 = load i32, i32* %a.addr, align 4
  %idxprom80 = sext i32 %68 to i64
  %69 = load i16**, i16*** @netSegArray, align 8
  %arrayidx81 = getelementptr inbounds i16*, i16** %69, i64 %idxprom80
  %70 = load i16*, i16** %arrayidx81, align 8
  %arrayidx82 = getelementptr inbounds i16, i16* %70, i64 %idxprom79
  store i16 %62, i16* %arrayidx82, align 2
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.68
  %71 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %71, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.61

for.end.85:                                       ; preds = %for.cond.61
  br label %if.end.113

if.else.86:                                       ; preds = %if.else.57
  %72 = load i32, i32* %a.addr, align 4
  %idxprom87 = sext i32 %72 to i64
  %73 = load i16**, i16*** @netSegArray, align 8
  %arrayidx88 = getelementptr inbounds i16*, i16** %73, i64 %idxprom87
  %74 = load i16*, i16** %arrayidx88, align 8
  %arrayidx89 = getelementptr inbounds i16, i16* %74, i64 0
  %75 = load i16, i16* %arrayidx89, align 2
  %conv90 = sext i16 %75 to i32
  %add91 = add nsw i32 %conv90, 1
  store i32 %add91, i32* %i, align 4
  %76 = load i32, i32* %b.addr, align 4
  %idxprom92 = sext i32 %76 to i64
  %77 = load i16**, i16*** @netSegArray, align 8
  %arrayidx93 = getelementptr inbounds i16*, i16** %77, i64 %idxprom92
  %78 = load i16*, i16** %arrayidx93, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %78, i64 0
  %79 = load i16, i16* %arrayidx94, align 2
  %conv95 = sext i16 %79 to i32
  %sub96 = sub nsw i32 %conv95, 1
  store i32 %sub96, i32* %j, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.109, %if.else.86
  %80 = load i32, i32* %j, align 4
  %cmp98 = icmp sge i32 %80, 1
  br i1 %cmp98, label %for.body.100, label %for.end.112

for.body.100:                                     ; preds = %for.cond.97
  %81 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %81 to i64
  %82 = load i32, i32* %b.addr, align 4
  %idxprom102 = sext i32 %82 to i64
  %83 = load i16**, i16*** @netSegArray, align 8
  %arrayidx103 = getelementptr inbounds i16*, i16** %83, i64 %idxprom102
  %84 = load i16*, i16** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds i16, i16* %84, i64 %idxprom101
  %85 = load i16, i16* %arrayidx104, align 2
  %86 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %86 to i64
  %87 = load i32, i32* %a.addr, align 4
  %idxprom106 = sext i32 %87 to i64
  %88 = load i16**, i16*** @netSegArray, align 8
  %arrayidx107 = getelementptr inbounds i16*, i16** %88, i64 %idxprom106
  %89 = load i16*, i16** %arrayidx107, align 8
  %arrayidx108 = getelementptr inbounds i16, i16* %89, i64 %idxprom105
  store i16 %85, i16* %arrayidx108, align 2
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.100
  %90 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %90, 1
  store i32 %inc110, i32* %i, align 4
  %91 = load i32, i32* %j, align 4
  %dec111 = add nsw i32 %91, -1
  store i32 %dec111, i32* %j, align 4
  br label %for.cond.97

for.end.112:                                      ; preds = %for.cond.97
  br label %if.end.113

if.end.113:                                       ; preds = %for.end.112, %for.end.85
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end
  %92 = load i32, i32* %b.addr, align 4
  %idxprom115 = sext i32 %92 to i64
  %93 = load i16**, i16*** @netSegArray, align 8
  %arrayidx116 = getelementptr inbounds i16*, i16** %93, i64 %idxprom115
  %94 = load i16*, i16** %arrayidx116, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %94, i64 0
  %95 = load i16, i16* %arrayidx117, align 2
  %conv118 = sext i16 %95 to i32
  %sub119 = sub nsw i32 %conv118, 1
  %96 = load i32, i32* %a.addr, align 4
  %idxprom120 = sext i32 %96 to i64
  %97 = load i16**, i16*** @netSegArray, align 8
  %arrayidx121 = getelementptr inbounds i16*, i16** %97, i64 %idxprom120
  %98 = load i16*, i16** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds i16, i16* %98, i64 0
  %99 = load i16, i16* %arrayidx122, align 2
  %conv123 = sext i16 %99 to i32
  %add124 = add nsw i32 %conv123, %sub119
  %conv125 = trunc i32 %add124 to i16
  store i16 %conv125, i16* %arrayidx122, align 2
  %100 = load i32, i32* %b.addr, align 4
  %add126 = add nsw i32 %100, 1
  store i32 %add126, i32* %i, align 4
  br label %for.cond.127

for.cond.127:                                     ; preds = %for.inc.154, %if.end.114
  %101 = load i32, i32* %i, align 4
  %102 = load i16**, i16*** @netSegArray, align 8
  %arrayidx128 = getelementptr inbounds i16*, i16** %102, i64 0
  %103 = load i16*, i16** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds i16, i16* %103, i64 0
  %104 = load i16, i16* %arrayidx129, align 2
  %conv130 = sext i16 %104 to i32
  %cmp131 = icmp sle i32 %101, %conv130
  br i1 %cmp131, label %for.body.133, label %for.end.156

for.body.133:                                     ; preds = %for.cond.127
  store i32 0, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.151, %for.body.133
  %105 = load i32, i32* %j, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %106 to i64
  %107 = load i16**, i16*** @netSegArray, align 8
  %arrayidx136 = getelementptr inbounds i16*, i16** %107, i64 %idxprom135
  %108 = load i16*, i16** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds i16, i16* %108, i64 0
  %109 = load i16, i16* %arrayidx137, align 2
  %conv138 = sext i16 %109 to i32
  %cmp139 = icmp sle i32 %105, %conv138
  br i1 %cmp139, label %for.body.141, label %for.end.153

for.body.141:                                     ; preds = %for.cond.134
  %110 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %110 to i64
  %111 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %111 to i64
  %112 = load i16**, i16*** @netSegArray, align 8
  %arrayidx144 = getelementptr inbounds i16*, i16** %112, i64 %idxprom143
  %113 = load i16*, i16** %arrayidx144, align 8
  %arrayidx145 = getelementptr inbounds i16, i16* %113, i64 %idxprom142
  %114 = load i16, i16* %arrayidx145, align 2
  %115 = load i32, i32* %j, align 4
  %idxprom146 = sext i32 %115 to i64
  %116 = load i32, i32* %i, align 4
  %sub147 = sub nsw i32 %116, 1
  %idxprom148 = sext i32 %sub147 to i64
  %117 = load i16**, i16*** @netSegArray, align 8
  %arrayidx149 = getelementptr inbounds i16*, i16** %117, i64 %idxprom148
  %118 = load i16*, i16** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds i16, i16* %118, i64 %idxprom146
  store i16 %114, i16* %arrayidx150, align 2
  br label %for.inc.151

for.inc.151:                                      ; preds = %for.body.141
  %119 = load i32, i32* %j, align 4
  %inc152 = add nsw i32 %119, 1
  store i32 %inc152, i32* %j, align 4
  br label %for.cond.134

for.end.153:                                      ; preds = %for.cond.134
  br label %for.inc.154

for.inc.154:                                      ; preds = %for.end.153
  %120 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %120, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.127

for.end.156:                                      ; preds = %for.cond.127
  %121 = load i16**, i16*** @netSegArray, align 8
  %arrayidx157 = getelementptr inbounds i16*, i16** %121, i64 0
  %122 = load i16*, i16** %arrayidx157, align 8
  %arrayidx158 = getelementptr inbounds i16, i16* %122, i64 0
  %123 = load i16, i16* %arrayidx158, align 2
  %dec159 = add i16 %123, -1
  store i16 %dec159, i16* %arrayidx158, align 2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
