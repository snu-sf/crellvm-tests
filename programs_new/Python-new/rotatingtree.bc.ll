; ModuleID = 'irs-onlybc/rotatingtree.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rotating_node_s = type { i8*, %struct.rotating_node_s*, %struct.rotating_node_s* }

@random_stream = internal global i32 0, align 4
@random_value = internal global i32 1, align 4

; Function Attrs: nounwind uwtable
define void @RotatingTree_Add(%struct.rotating_node_s** %root, %struct.rotating_node_s* %node) #0 {
entry:
  %root.addr = alloca %struct.rotating_node_s**, align 8
  %node.addr = alloca %struct.rotating_node_s*, align 8
  store %struct.rotating_node_s** %root, %struct.rotating_node_s*** %root.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s*** %root.addr, metadata !22, metadata !70), !dbg !71
  store %struct.rotating_node_s* %node, %struct.rotating_node_s** %node.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %node.addr, metadata !23, metadata !70), !dbg !72
  br label %while.cond, !dbg !73

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8, !dbg !74, !tbaa !66
  %1 = load %struct.rotating_node_s*, %struct.rotating_node_s** %0, align 8, !dbg !77, !tbaa !66
  %cmp = icmp ne %struct.rotating_node_s* %1, null, !dbg !78
  br i1 %cmp, label %while.body, label %while.end, !dbg !73

while.body:                                       ; preds = %while.cond
  %2 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8, !dbg !79, !tbaa !66
  %key = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %2, i32 0, i32 0, !dbg !82
  %3 = load i8*, i8** %key, align 8, !dbg !82, !tbaa !83
  %4 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8, !dbg !85, !tbaa !66
  %5 = load %struct.rotating_node_s*, %struct.rotating_node_s** %4, align 8, !dbg !86, !tbaa !66
  %key1 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %5, i32 0, i32 0, !dbg !87
  %6 = load i8*, i8** %key1, align 8, !dbg !87, !tbaa !83
  %cmp2 = icmp ult i8* %3, %6, !dbg !88
  br i1 %cmp2, label %if.then, label %if.else, !dbg !89

if.then:                                          ; preds = %while.body
  %7 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8, !dbg !90, !tbaa !66
  %8 = load %struct.rotating_node_s*, %struct.rotating_node_s** %7, align 8, !dbg !91, !tbaa !66
  %left = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %8, i32 0, i32 1, !dbg !92
  store %struct.rotating_node_s** %left, %struct.rotating_node_s*** %root.addr, align 8, !dbg !93, !tbaa !66
  br label %if.end, !dbg !94

if.else:                                          ; preds = %while.body
  %9 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8, !dbg !95, !tbaa !66
  %10 = load %struct.rotating_node_s*, %struct.rotating_node_s** %9, align 8, !dbg !96, !tbaa !66
  %right = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %10, i32 0, i32 2, !dbg !97
  store %struct.rotating_node_s** %right, %struct.rotating_node_s*** %root.addr, align 8, !dbg !98, !tbaa !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !73

while.end:                                        ; preds = %while.cond
  %11 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8, !dbg !99, !tbaa !66
  %left3 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %11, i32 0, i32 1, !dbg !100
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %left3, align 8, !dbg !101, !tbaa !102
  %12 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8, !dbg !103, !tbaa !66
  %right4 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %12, i32 0, i32 2, !dbg !104
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %right4, align 8, !dbg !105, !tbaa !106
  %13 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node.addr, align 8, !dbg !107, !tbaa !66
  %14 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8, !dbg !108, !tbaa !66
  store %struct.rotating_node_s* %13, %struct.rotating_node_s** %14, align 8, !dbg !109, !tbaa !66
  ret void, !dbg !110
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define %struct.rotating_node_s* @RotatingTree_Get(%struct.rotating_node_s** %root, i8* %key) #0 {
entry:
  %retval = alloca %struct.rotating_node_s*, align 8
  %root.addr = alloca %struct.rotating_node_s**, align 8
  %key.addr = alloca i8*, align 8
  %node = alloca %struct.rotating_node_s*, align 8
  %cleanup.dest.slot = alloca i32
  %pnode = alloca %struct.rotating_node_s**, align 8
  %node10 = alloca %struct.rotating_node_s*, align 8
  %next = alloca %struct.rotating_node_s*, align 8
  %rotate = alloca i32, align 4
  store %struct.rotating_node_s** %root, %struct.rotating_node_s*** %root.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s*** %root.addr, metadata !28, metadata !70), !dbg !111
  store i8* %key, i8** %key.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !29, metadata !70), !dbg !112
  %call = call i32 @randombits(i32 3), !dbg !113
  %cmp = icmp ne i32 %call, 4, !dbg !114
  br i1 %cmp, label %if.then, label %if.else.9, !dbg !115

if.then:                                          ; preds = %entry
  %0 = bitcast %struct.rotating_node_s** %node to i8*, !dbg !116
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !116
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %node, metadata !30, metadata !70), !dbg !117
  %1 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8, !dbg !118, !tbaa !66
  %2 = load %struct.rotating_node_s*, %struct.rotating_node_s** %1, align 8, !dbg !119, !tbaa !66
  store %struct.rotating_node_s* %2, %struct.rotating_node_s** %node, align 8, !dbg !117, !tbaa !66
  br label %while.cond, !dbg !120

while.cond:                                       ; preds = %if.end.8, %if.then
  %3 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8, !dbg !121, !tbaa !66
  %cmp1 = icmp ne %struct.rotating_node_s* %3, null, !dbg !124
  br i1 %cmp1, label %while.body, label %while.end, !dbg !120

while.body:                                       ; preds = %while.cond
  %4 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8, !dbg !125, !tbaa !66
  %key2 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %4, i32 0, i32 0, !dbg !128
  %5 = load i8*, i8** %key2, align 8, !dbg !128, !tbaa !83
  %6 = load i8*, i8** %key.addr, align 8, !dbg !129, !tbaa !66
  %cmp3 = icmp eq i8* %5, %6, !dbg !130
  br i1 %cmp3, label %if.then.4, label %if.end, !dbg !131

if.then.4:                                        ; preds = %while.body
  %7 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8, !dbg !132, !tbaa !66
  store %struct.rotating_node_s* %7, %struct.rotating_node_s** %retval, !dbg !133
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !133

if.end:                                           ; preds = %while.body
  %8 = load i8*, i8** %key.addr, align 8, !dbg !134, !tbaa !66
  %9 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8, !dbg !136, !tbaa !66
  %key5 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %9, i32 0, i32 0, !dbg !137
  %10 = load i8*, i8** %key5, align 8, !dbg !137, !tbaa !83
  %cmp6 = icmp ult i8* %8, %10, !dbg !138
  br i1 %cmp6, label %if.then.7, label %if.else, !dbg !139

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8, !dbg !140, !tbaa !66
  %left = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %11, i32 0, i32 1, !dbg !141
  %12 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left, align 8, !dbg !141, !tbaa !102
  store %struct.rotating_node_s* %12, %struct.rotating_node_s** %node, align 8, !dbg !142, !tbaa !66
  br label %if.end.8, !dbg !143

if.else:                                          ; preds = %if.end
  %13 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8, !dbg !144, !tbaa !66
  %right = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %13, i32 0, i32 2, !dbg !145
  %14 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right, align 8, !dbg !145, !tbaa !106
  store %struct.rotating_node_s* %14, %struct.rotating_node_s** %node, align 8, !dbg !146, !tbaa !66
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %while.cond, !dbg !120

while.end:                                        ; preds = %while.cond
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval, !dbg !147
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !147

cleanup:                                          ; preds = %while.end, %if.then.4
  %15 = bitcast %struct.rotating_node_s** %node to i8*, !dbg !148
  call void @llvm.lifetime.end(i64 8, i8* %15) #2, !dbg !148
  br label %return

if.else.9:                                        ; preds = %entry
  %16 = bitcast %struct.rotating_node_s*** %pnode to i8*, !dbg !149
  call void @llvm.lifetime.start(i64 8, i8* %16) #2, !dbg !149
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s*** %pnode, metadata !33, metadata !70), !dbg !150
  %17 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %root.addr, align 8, !dbg !151, !tbaa !66
  store %struct.rotating_node_s** %17, %struct.rotating_node_s*** %pnode, align 8, !dbg !150, !tbaa !66
  %18 = bitcast %struct.rotating_node_s** %node10 to i8*, !dbg !152
  call void @llvm.lifetime.start(i64 8, i8* %18) #2, !dbg !152
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %node10, metadata !35, metadata !70), !dbg !153
  %19 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %pnode, align 8, !dbg !154, !tbaa !66
  %20 = load %struct.rotating_node_s*, %struct.rotating_node_s** %19, align 8, !dbg !155, !tbaa !66
  store %struct.rotating_node_s* %20, %struct.rotating_node_s** %node10, align 8, !dbg !153, !tbaa !66
  %21 = bitcast %struct.rotating_node_s** %next to i8*, !dbg !156
  call void @llvm.lifetime.start(i64 8, i8* %21) #2, !dbg !156
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %next, metadata !36, metadata !70), !dbg !157
  %22 = bitcast i32* %rotate to i8*, !dbg !158
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !158
  call void @llvm.dbg.declare(metadata i32* %rotate, metadata !37, metadata !70), !dbg !159
  %23 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !160, !tbaa !66
  %cmp11 = icmp eq %struct.rotating_node_s* %23, null, !dbg !162
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !163

if.then.12:                                       ; preds = %if.else.9
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval, !dbg !164
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !164

if.end.13:                                        ; preds = %if.else.9
  br label %while.cond.14, !dbg !165

while.cond.14:                                    ; preds = %if.end.49, %if.end.13
  br label %while.body.15, !dbg !166

while.body.15:                                    ; preds = %while.cond.14
  %24 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !169, !tbaa !66
  %key16 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %24, i32 0, i32 0, !dbg !172
  %25 = load i8*, i8** %key16, align 8, !dbg !172, !tbaa !83
  %26 = load i8*, i8** %key.addr, align 8, !dbg !173, !tbaa !66
  %cmp17 = icmp eq i8* %25, %26, !dbg !174
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !175

if.then.18:                                       ; preds = %while.body.15
  %27 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !176, !tbaa !66
  store %struct.rotating_node_s* %27, %struct.rotating_node_s** %retval, !dbg !177
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !177

if.end.19:                                        ; preds = %while.body.15
  %call20 = call i32 @randombits(i32 1), !dbg !178
  %tobool = icmp ne i32 %call20, 0, !dbg !179
  %lnot = xor i1 %tobool, true, !dbg !179
  %lnot.ext = zext i1 %lnot to i32, !dbg !179
  store i32 %lnot.ext, i32* %rotate, align 4, !dbg !180, !tbaa !181
  %28 = load i8*, i8** %key.addr, align 8, !dbg !183, !tbaa !66
  %29 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !185, !tbaa !66
  %key21 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %29, i32 0, i32 0, !dbg !186
  %30 = load i8*, i8** %key21, align 8, !dbg !186, !tbaa !83
  %cmp22 = icmp ult i8* %28, %30, !dbg !187
  br i1 %cmp22, label %if.then.23, label %if.else.36, !dbg !188

if.then.23:                                       ; preds = %if.end.19
  %31 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !189, !tbaa !66
  %left24 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %31, i32 0, i32 1, !dbg !191
  %32 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left24, align 8, !dbg !191, !tbaa !102
  store %struct.rotating_node_s* %32, %struct.rotating_node_s** %next, align 8, !dbg !192, !tbaa !66
  %33 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !193, !tbaa !66
  %cmp25 = icmp eq %struct.rotating_node_s* %33, null, !dbg !195
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !196

if.then.26:                                       ; preds = %if.then.23
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval, !dbg !197
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !197

if.end.27:                                        ; preds = %if.then.23
  %34 = load i32, i32* %rotate, align 4, !dbg !198, !tbaa !181
  %tobool28 = icmp ne i32 %34, 0, !dbg !198
  br i1 %tobool28, label %if.then.29, label %if.else.33, !dbg !200

if.then.29:                                       ; preds = %if.end.27
  %35 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !201, !tbaa !66
  %right30 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %35, i32 0, i32 2, !dbg !203
  %36 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right30, align 8, !dbg !203, !tbaa !106
  %37 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !204, !tbaa !66
  %left31 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %37, i32 0, i32 1, !dbg !205
  store %struct.rotating_node_s* %36, %struct.rotating_node_s** %left31, align 8, !dbg !206, !tbaa !102
  %38 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !207, !tbaa !66
  %39 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !208, !tbaa !66
  %right32 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %39, i32 0, i32 2, !dbg !209
  store %struct.rotating_node_s* %38, %struct.rotating_node_s** %right32, align 8, !dbg !210, !tbaa !106
  %40 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !211, !tbaa !66
  %41 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %pnode, align 8, !dbg !212, !tbaa !66
  store %struct.rotating_node_s* %40, %struct.rotating_node_s** %41, align 8, !dbg !213, !tbaa !66
  br label %if.end.35, !dbg !214

if.else.33:                                       ; preds = %if.end.27
  %42 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !215, !tbaa !66
  %left34 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %42, i32 0, i32 1, !dbg !216
  store %struct.rotating_node_s** %left34, %struct.rotating_node_s*** %pnode, align 8, !dbg !217, !tbaa !66
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.33, %if.then.29
  br label %if.end.49, !dbg !218

if.else.36:                                       ; preds = %if.end.19
  %43 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !219, !tbaa !66
  %right37 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %43, i32 0, i32 2, !dbg !221
  %44 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right37, align 8, !dbg !221, !tbaa !106
  store %struct.rotating_node_s* %44, %struct.rotating_node_s** %next, align 8, !dbg !222, !tbaa !66
  %45 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !223, !tbaa !66
  %cmp38 = icmp eq %struct.rotating_node_s* %45, null, !dbg !225
  br i1 %cmp38, label %if.then.39, label %if.end.40, !dbg !226

if.then.39:                                       ; preds = %if.else.36
  store %struct.rotating_node_s* null, %struct.rotating_node_s** %retval, !dbg !227
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !227

if.end.40:                                        ; preds = %if.else.36
  %46 = load i32, i32* %rotate, align 4, !dbg !228, !tbaa !181
  %tobool41 = icmp ne i32 %46, 0, !dbg !228
  br i1 %tobool41, label %if.then.42, label %if.else.46, !dbg !230

if.then.42:                                       ; preds = %if.end.40
  %47 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !231, !tbaa !66
  %left43 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %47, i32 0, i32 1, !dbg !233
  %48 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left43, align 8, !dbg !233, !tbaa !102
  %49 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !234, !tbaa !66
  %right44 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %49, i32 0, i32 2, !dbg !235
  store %struct.rotating_node_s* %48, %struct.rotating_node_s** %right44, align 8, !dbg !236, !tbaa !106
  %50 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !237, !tbaa !66
  %51 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !238, !tbaa !66
  %left45 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %51, i32 0, i32 1, !dbg !239
  store %struct.rotating_node_s* %50, %struct.rotating_node_s** %left45, align 8, !dbg !240, !tbaa !102
  %52 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !241, !tbaa !66
  %53 = load %struct.rotating_node_s**, %struct.rotating_node_s*** %pnode, align 8, !dbg !242, !tbaa !66
  store %struct.rotating_node_s* %52, %struct.rotating_node_s** %53, align 8, !dbg !243, !tbaa !66
  br label %if.end.48, !dbg !244

if.else.46:                                       ; preds = %if.end.40
  %54 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node10, align 8, !dbg !245, !tbaa !66
  %right47 = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %54, i32 0, i32 2, !dbg !246
  store %struct.rotating_node_s** %right47, %struct.rotating_node_s*** %pnode, align 8, !dbg !247, !tbaa !66
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.35
  %55 = load %struct.rotating_node_s*, %struct.rotating_node_s** %next, align 8, !dbg !248, !tbaa !66
  store %struct.rotating_node_s* %55, %struct.rotating_node_s** %node10, align 8, !dbg !249, !tbaa !66
  br label %while.cond.14, !dbg !165

cleanup.50:                                       ; preds = %if.then.39, %if.then.26, %if.then.18, %if.then.12
  %56 = bitcast i32* %rotate to i8*, !dbg !250
  call void @llvm.lifetime.end(i64 4, i8* %56) #2, !dbg !250
  %57 = bitcast %struct.rotating_node_s** %next to i8*, !dbg !250
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !250
  %58 = bitcast %struct.rotating_node_s** %node10 to i8*, !dbg !250
  call void @llvm.lifetime.end(i64 8, i8* %58) #2, !dbg !250
  %59 = bitcast %struct.rotating_node_s*** %pnode to i8*, !dbg !250
  call void @llvm.lifetime.end(i64 8, i8* %59) #2, !dbg !250
  br label %return

return:                                           ; preds = %cleanup.50, %cleanup
  %60 = load %struct.rotating_node_s*, %struct.rotating_node_s** %retval, !dbg !251
  ret %struct.rotating_node_s* %60, !dbg !251
}

; Function Attrs: nounwind uwtable
define internal i32 @randombits(i32 %bits) #0 {
entry:
  %bits.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %bits, i32* %bits.addr, align 4, !tbaa !181
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !56, metadata !70), !dbg !252
  %0 = bitcast i32* %result to i8*, !dbg !253
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !253
  call void @llvm.dbg.declare(metadata i32* %result, metadata !57, metadata !70), !dbg !254
  %1 = load i32, i32* @random_stream, align 4, !dbg !255, !tbaa !181
  %2 = load i32, i32* %bits.addr, align 4, !dbg !257, !tbaa !181
  %shl = shl i32 1, %2, !dbg !258
  %cmp = icmp ult i32 %1, %shl, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @random_value, align 4, !dbg !261, !tbaa !181
  %mul = mul i32 %3, 1082527, !dbg !261
  store i32 %mul, i32* @random_value, align 4, !dbg !261, !tbaa !181
  %4 = load i32, i32* @random_value, align 4, !dbg !263, !tbaa !181
  store i32 %4, i32* @random_stream, align 4, !dbg !264, !tbaa !181
  br label %if.end, !dbg !265

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* @random_stream, align 4, !dbg !266, !tbaa !181
  %6 = load i32, i32* %bits.addr, align 4, !dbg !267, !tbaa !181
  %shl1 = shl i32 1, %6, !dbg !268
  %sub = sub i32 %shl1, 1, !dbg !269
  %and = and i32 %5, %sub, !dbg !270
  store i32 %and, i32* %result, align 4, !dbg !271, !tbaa !181
  %7 = load i32, i32* %bits.addr, align 4, !dbg !272, !tbaa !181
  %8 = load i32, i32* @random_stream, align 4, !dbg !273, !tbaa !181
  %shr = lshr i32 %8, %7, !dbg !273
  store i32 %shr, i32* @random_stream, align 4, !dbg !273, !tbaa !181
  %9 = load i32, i32* %result, align 4, !dbg !274, !tbaa !181
  %10 = bitcast i32* %result to i8*, !dbg !275
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !275
  ret i32 %9, !dbg !276
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @RotatingTree_Enum(%struct.rotating_node_s* %root, i32 (%struct.rotating_node_s*, i8*)* %enumfn, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %root.addr = alloca %struct.rotating_node_s*, align 8
  %enumfn.addr = alloca i32 (%struct.rotating_node_s*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %node = alloca %struct.rotating_node_s*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.rotating_node_s* %root, %struct.rotating_node_s** %root.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %root.addr, metadata !47, metadata !70), !dbg !277
  store i32 (%struct.rotating_node_s*, i8*)* %enumfn, i32 (%struct.rotating_node_s*, i8*)** %enumfn.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i32 (%struct.rotating_node_s*, i8*)** %enumfn.addr, metadata !48, metadata !70), !dbg !278
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !66
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !49, metadata !70), !dbg !279
  %0 = bitcast i32* %result to i8*, !dbg !280
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !280
  call void @llvm.dbg.declare(metadata i32* %result, metadata !50, metadata !70), !dbg !281
  %1 = bitcast %struct.rotating_node_s** %node to i8*, !dbg !282
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !282
  call void @llvm.dbg.declare(metadata %struct.rotating_node_s** %node, metadata !51, metadata !70), !dbg !283
  br label %while.cond, !dbg !284

while.cond:                                       ; preds = %if.end.5, %entry
  %2 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8, !dbg !285, !tbaa !66
  %cmp = icmp ne %struct.rotating_node_s* %2, null, !dbg !288
  br i1 %cmp, label %while.body, label %while.end, !dbg !284

while.body:                                       ; preds = %while.cond
  %3 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8, !dbg !289, !tbaa !66
  %left = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %3, i32 0, i32 1, !dbg !291
  %4 = load %struct.rotating_node_s*, %struct.rotating_node_s** %left, align 8, !dbg !291, !tbaa !102
  %5 = load i32 (%struct.rotating_node_s*, i8*)*, i32 (%struct.rotating_node_s*, i8*)** %enumfn.addr, align 8, !dbg !292, !tbaa !66
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !293, !tbaa !66
  %call = call i32 @RotatingTree_Enum(%struct.rotating_node_s* %4, i32 (%struct.rotating_node_s*, i8*)* %5, i8* %6), !dbg !294
  store i32 %call, i32* %result, align 4, !dbg !295, !tbaa !181
  %7 = load i32, i32* %result, align 4, !dbg !296, !tbaa !181
  %cmp1 = icmp ne i32 %7, 0, !dbg !298
  br i1 %cmp1, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %while.body
  %8 = load i32, i32* %result, align 4, !dbg !300, !tbaa !181
  store i32 %8, i32* %retval, !dbg !302
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !302

if.end:                                           ; preds = %while.body
  %9 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8, !dbg !303, !tbaa !66
  %right = getelementptr inbounds %struct.rotating_node_s, %struct.rotating_node_s* %9, i32 0, i32 2, !dbg !304
  %10 = load %struct.rotating_node_s*, %struct.rotating_node_s** %right, align 8, !dbg !304, !tbaa !106
  store %struct.rotating_node_s* %10, %struct.rotating_node_s** %node, align 8, !dbg !305, !tbaa !66
  %11 = load i32 (%struct.rotating_node_s*, i8*)*, i32 (%struct.rotating_node_s*, i8*)** %enumfn.addr, align 8, !dbg !306, !tbaa !66
  %12 = load %struct.rotating_node_s*, %struct.rotating_node_s** %root.addr, align 8, !dbg !307, !tbaa !66
  %13 = load i8*, i8** %arg.addr, align 8, !dbg !308, !tbaa !66
  %call2 = call i32 %11(%struct.rotating_node_s* %12, i8* %13), !dbg !306
  store i32 %call2, i32* %result, align 4, !dbg !309, !tbaa !181
  %14 = load i32, i32* %result, align 4, !dbg !310, !tbaa !181
  %cmp3 = icmp ne i32 %14, 0, !dbg !312
  br i1 %cmp3, label %if.then.4, label %if.end.5, !dbg !313

if.then.4:                                        ; preds = %if.end
  %15 = load i32, i32* %result, align 4, !dbg !314, !tbaa !181
  store i32 %15, i32* %retval, !dbg !316
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !316

if.end.5:                                         ; preds = %if.end
  %16 = load %struct.rotating_node_s*, %struct.rotating_node_s** %node, align 8, !dbg !317, !tbaa !66
  store %struct.rotating_node_s* %16, %struct.rotating_node_s** %root.addr, align 8, !dbg !318, !tbaa !66
  br label %while.cond, !dbg !284

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, !dbg !319
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !319

cleanup:                                          ; preds = %while.end, %if.then.4, %if.then
  %17 = bitcast %struct.rotating_node_s** %node to i8*, !dbg !320
  call void @llvm.lifetime.end(i64 8, i8* %17) #2, !dbg !320
  %18 = bitcast i32* %result to i8*, !dbg !320
  call void @llvm.lifetime.end(i64 4, i8* %18) #2, !dbg !320
  %19 = load i32, i32* %retval, !dbg !320
  ret i32 %19, !dbg !320
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !58)
!1 = !DIFile(filename: "rotatingtree.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !{!8, !24, !39, !52}
!8 = !DISubprogram(name: "RotatingTree_Add", scope: !9, file: !9, line: 31, type: !10, isLocal: false, isDefinition: true, scopeLine: 32, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.rotating_node_s**, %struct.rotating_node_s*)* @RotatingTree_Add, variables: !21)
!9 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/rotatingtree.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "rotating_node_t", file: !15, line: 15, baseType: !16)
!15 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/rotatingtree.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "rotating_node_s", file: !15, line: 18, size: 192, align: 64, elements: !17)
!17 = !{!18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !16, file: !15, line: 19, baseType: !4, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !16, file: !15, line: 20, baseType: !13, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !16, file: !15, line: 21, baseType: !13, size: 64, align: 64, offset: 128)
!21 = !{!22, !23}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !8, file: !9, line: 31, type: !12)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 2, scope: !8, file: !9, line: 31, type: !13)
!24 = !DISubprogram(name: "RotatingTree_Get", scope: !9, file: !9, line: 48, type: !25, isLocal: false, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: true, function: %struct.rotating_node_s* (%struct.rotating_node_s**, i8*)* @RotatingTree_Get, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!13, !12, !4}
!27 = !{!28, !29, !30, !33, !35, !36, !37}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !24, file: !9, line: 48, type: !12)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !24, file: !9, line: 48, type: !4)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !31, file: !9, line: 52, type: !13)
!31 = distinct !DILexicalBlock(scope: !32, file: !9, line: 50, column: 29)
!32 = distinct !DILexicalBlock(scope: !24, file: !9, line: 50, column: 9)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pnode", scope: !34, file: !9, line: 64, type: !12)
!34 = distinct !DILexicalBlock(scope: !32, file: !9, line: 63, column: 10)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !34, file: !9, line: 65, type: !13)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !34, file: !9, line: 66, type: !13)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rotate", scope: !34, file: !9, line: 67, type: !38)
!38 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!39 = !DISubprogram(name: "RotatingTree_Enum", scope: !9, file: !9, line: 107, type: !40, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.rotating_node_s*, i32 (%struct.rotating_node_s*, i8*)*, i8*)* @RotatingTree_Enum, variables: !46)
!40 = !DISubroutineType(types: !41)
!41 = !{!38, !13, !42, !4}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "rotating_tree_enum_fn", file: !15, line: 16, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!38, !13, !4}
!46 = !{!47, !48, !49, !50, !51}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "root", arg: 1, scope: !39, file: !9, line: 107, type: !13)
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "enumfn", arg: 2, scope: !39, file: !9, line: 107, type: !42)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !39, file: !9, line: 108, type: !4)
!50 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !39, file: !9, line: 110, type: !38)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "node", scope: !39, file: !9, line: 111, type: !13)
!52 = !DISubprogram(name: "randombits", scope: !9, file: !9, line: 15, type: !53, isLocal: true, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @randombits, variables: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{!38, !38}
!55 = !{!56, !57}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bits", arg: 1, scope: !52, file: !9, line: 15, type: !38)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !52, file: !9, line: 17, type: !38)
!58 = !{!59, !61}
!59 = !DIGlobalVariable(name: "random_stream", scope: !0, file: !9, line: 12, type: !60, isLocal: true, isDefinition: true, variable: i32* @random_stream)
!60 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!61 = !DIGlobalVariable(name: "random_value", scope: !0, file: !9, line: 11, type: !60, isLocal: true, isDefinition: true, variable: i32* @random_value)
!62 = !{i32 2, !"Dwarf Version", i32 4}
!63 = !{i32 2, !"Debug Info Version", i32 3}
!64 = !{i32 1, !"PIC Level", i32 2}
!65 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !69, i64 0}
!69 = !{!"Simple C/C++ TBAA"}
!70 = !DIExpression()
!71 = !DILocation(line: 31, column: 36, scope: !8)
!72 = !DILocation(line: 31, column: 59, scope: !8)
!73 = !DILocation(line: 33, column: 5, scope: !8)
!74 = !DILocation(line: 33, column: 13, scope: !75)
!75 = !DILexicalBlockFile(scope: !76, file: !9, discriminator: 2)
!76 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 1)
!77 = !DILocation(line: 33, column: 12, scope: !8)
!78 = !DILocation(line: 33, column: 18, scope: !8)
!79 = !DILocation(line: 34, column: 22, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !9, line: 34, column: 13)
!81 = distinct !DILexicalBlock(scope: !8, file: !9, line: 33, column: 33)
!82 = !DILocation(line: 34, column: 28, scope: !80)
!83 = !{!84, !67, i64 0}
!84 = !{!"rotating_node_s", !67, i64 0, !67, i64 8, !67, i64 16}
!85 = !DILocation(line: 34, column: 45, scope: !80)
!86 = !DILocation(line: 34, column: 44, scope: !80)
!87 = !DILocation(line: 34, column: 52, scope: !80)
!88 = !DILocation(line: 34, column: 33, scope: !80)
!89 = !DILocation(line: 34, column: 13, scope: !81)
!90 = !DILocation(line: 35, column: 24, scope: !80)
!91 = !DILocation(line: 35, column: 23, scope: !80)
!92 = !DILocation(line: 35, column: 31, scope: !80)
!93 = !DILocation(line: 35, column: 18, scope: !80)
!94 = !DILocation(line: 35, column: 13, scope: !80)
!95 = !DILocation(line: 37, column: 24, scope: !80)
!96 = !DILocation(line: 37, column: 23, scope: !80)
!97 = !DILocation(line: 37, column: 31, scope: !80)
!98 = !DILocation(line: 37, column: 18, scope: !80)
!99 = !DILocation(line: 39, column: 5, scope: !8)
!100 = !DILocation(line: 39, column: 11, scope: !8)
!101 = !DILocation(line: 39, column: 16, scope: !8)
!102 = !{!84, !67, i64 8}
!103 = !DILocation(line: 40, column: 5, scope: !8)
!104 = !DILocation(line: 40, column: 11, scope: !8)
!105 = !DILocation(line: 40, column: 17, scope: !8)
!106 = !{!84, !67, i64 16}
!107 = !DILocation(line: 41, column: 13, scope: !8)
!108 = !DILocation(line: 41, column: 6, scope: !8)
!109 = !DILocation(line: 41, column: 11, scope: !8)
!110 = !DILocation(line: 42, column: 1, scope: !8)
!111 = !DILocation(line: 48, column: 36, scope: !24)
!112 = !DILocation(line: 48, column: 48, scope: !24)
!113 = !DILocation(line: 50, column: 9, scope: !32)
!114 = !DILocation(line: 50, column: 23, scope: !32)
!115 = !DILocation(line: 50, column: 9, scope: !24)
!116 = !DILocation(line: 52, column: 9, scope: !31)
!117 = !DILocation(line: 52, column: 26, scope: !31)
!118 = !DILocation(line: 52, column: 34, scope: !31)
!119 = !DILocation(line: 52, column: 33, scope: !31)
!120 = !DILocation(line: 53, column: 9, scope: !31)
!121 = !DILocation(line: 53, column: 16, scope: !122)
!122 = !DILexicalBlockFile(scope: !123, file: !9, discriminator: 2)
!123 = !DILexicalBlockFile(scope: !31, file: !9, discriminator: 1)
!124 = !DILocation(line: 53, column: 21, scope: !31)
!125 = !DILocation(line: 54, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !9, line: 54, column: 17)
!127 = distinct !DILexicalBlock(scope: !31, file: !9, line: 53, column: 36)
!128 = !DILocation(line: 54, column: 23, scope: !126)
!129 = !DILocation(line: 54, column: 30, scope: !126)
!130 = !DILocation(line: 54, column: 27, scope: !126)
!131 = !DILocation(line: 54, column: 17, scope: !127)
!132 = !DILocation(line: 55, column: 24, scope: !126)
!133 = !DILocation(line: 55, column: 17, scope: !126)
!134 = !DILocation(line: 56, column: 26, scope: !135)
!135 = distinct !DILexicalBlock(scope: !127, file: !9, line: 56, column: 17)
!136 = !DILocation(line: 56, column: 41, scope: !135)
!137 = !DILocation(line: 56, column: 47, scope: !135)
!138 = !DILocation(line: 56, column: 31, scope: !135)
!139 = !DILocation(line: 56, column: 17, scope: !127)
!140 = !DILocation(line: 57, column: 24, scope: !135)
!141 = !DILocation(line: 57, column: 30, scope: !135)
!142 = !DILocation(line: 57, column: 22, scope: !135)
!143 = !DILocation(line: 57, column: 17, scope: !135)
!144 = !DILocation(line: 59, column: 24, scope: !135)
!145 = !DILocation(line: 59, column: 30, scope: !135)
!146 = !DILocation(line: 59, column: 22, scope: !135)
!147 = !DILocation(line: 61, column: 9, scope: !31)
!148 = !DILocation(line: 62, column: 5, scope: !32)
!149 = !DILocation(line: 64, column: 9, scope: !34)
!150 = !DILocation(line: 64, column: 27, scope: !34)
!151 = !DILocation(line: 64, column: 35, scope: !34)
!152 = !DILocation(line: 65, column: 9, scope: !34)
!153 = !DILocation(line: 65, column: 26, scope: !34)
!154 = !DILocation(line: 65, column: 34, scope: !34)
!155 = !DILocation(line: 65, column: 33, scope: !34)
!156 = !DILocation(line: 66, column: 9, scope: !34)
!157 = !DILocation(line: 66, column: 26, scope: !34)
!158 = !DILocation(line: 67, column: 9, scope: !34)
!159 = !DILocation(line: 67, column: 13, scope: !34)
!160 = !DILocation(line: 68, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !34, file: !9, line: 68, column: 13)
!162 = !DILocation(line: 68, column: 18, scope: !161)
!163 = !DILocation(line: 68, column: 13, scope: !34)
!164 = !DILocation(line: 69, column: 13, scope: !161)
!165 = !DILocation(line: 70, column: 9, scope: !34)
!166 = !DILocation(line: 70, column: 9, scope: !167)
!167 = !DILexicalBlockFile(scope: !168, file: !9, discriminator: 2)
!168 = !DILexicalBlockFile(scope: !34, file: !9, discriminator: 1)
!169 = !DILocation(line: 71, column: 17, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !9, line: 71, column: 17)
!171 = distinct !DILexicalBlock(scope: !34, file: !9, line: 70, column: 19)
!172 = !DILocation(line: 71, column: 23, scope: !170)
!173 = !DILocation(line: 71, column: 30, scope: !170)
!174 = !DILocation(line: 71, column: 27, scope: !170)
!175 = !DILocation(line: 71, column: 17, scope: !171)
!176 = !DILocation(line: 72, column: 24, scope: !170)
!177 = !DILocation(line: 72, column: 17, scope: !170)
!178 = !DILocation(line: 73, column: 23, scope: !171)
!179 = !DILocation(line: 73, column: 22, scope: !171)
!180 = !DILocation(line: 73, column: 20, scope: !171)
!181 = !{!182, !182, i64 0}
!182 = !{!"int", !68, i64 0}
!183 = !DILocation(line: 74, column: 26, scope: !184)
!184 = distinct !DILexicalBlock(scope: !171, file: !9, line: 74, column: 17)
!185 = !DILocation(line: 74, column: 41, scope: !184)
!186 = !DILocation(line: 74, column: 47, scope: !184)
!187 = !DILocation(line: 74, column: 31, scope: !184)
!188 = !DILocation(line: 74, column: 17, scope: !171)
!189 = !DILocation(line: 75, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !184, file: !9, line: 74, column: 54)
!191 = !DILocation(line: 75, column: 30, scope: !190)
!192 = !DILocation(line: 75, column: 22, scope: !190)
!193 = !DILocation(line: 76, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !190, file: !9, line: 76, column: 21)
!195 = !DILocation(line: 76, column: 26, scope: !194)
!196 = !DILocation(line: 76, column: 21, scope: !190)
!197 = !DILocation(line: 77, column: 21, scope: !194)
!198 = !DILocation(line: 78, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !190, file: !9, line: 78, column: 21)
!200 = !DILocation(line: 78, column: 21, scope: !190)
!201 = !DILocation(line: 79, column: 34, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !9, line: 78, column: 29)
!203 = !DILocation(line: 79, column: 40, scope: !202)
!204 = !DILocation(line: 79, column: 21, scope: !202)
!205 = !DILocation(line: 79, column: 27, scope: !202)
!206 = !DILocation(line: 79, column: 32, scope: !202)
!207 = !DILocation(line: 80, column: 35, scope: !202)
!208 = !DILocation(line: 80, column: 21, scope: !202)
!209 = !DILocation(line: 80, column: 27, scope: !202)
!210 = !DILocation(line: 80, column: 33, scope: !202)
!211 = !DILocation(line: 81, column: 30, scope: !202)
!212 = !DILocation(line: 81, column: 22, scope: !202)
!213 = !DILocation(line: 81, column: 28, scope: !202)
!214 = !DILocation(line: 82, column: 17, scope: !202)
!215 = !DILocation(line: 84, column: 31, scope: !199)
!216 = !DILocation(line: 84, column: 37, scope: !199)
!217 = !DILocation(line: 84, column: 27, scope: !199)
!218 = !DILocation(line: 85, column: 13, scope: !190)
!219 = !DILocation(line: 87, column: 24, scope: !220)
!220 = distinct !DILexicalBlock(scope: !184, file: !9, line: 86, column: 18)
!221 = !DILocation(line: 87, column: 30, scope: !220)
!222 = !DILocation(line: 87, column: 22, scope: !220)
!223 = !DILocation(line: 88, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !220, file: !9, line: 88, column: 21)
!225 = !DILocation(line: 88, column: 26, scope: !224)
!226 = !DILocation(line: 88, column: 21, scope: !220)
!227 = !DILocation(line: 89, column: 21, scope: !224)
!228 = !DILocation(line: 90, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !9, line: 90, column: 21)
!230 = !DILocation(line: 90, column: 21, scope: !220)
!231 = !DILocation(line: 91, column: 35, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !9, line: 90, column: 29)
!233 = !DILocation(line: 91, column: 41, scope: !232)
!234 = !DILocation(line: 91, column: 21, scope: !232)
!235 = !DILocation(line: 91, column: 27, scope: !232)
!236 = !DILocation(line: 91, column: 33, scope: !232)
!237 = !DILocation(line: 92, column: 34, scope: !232)
!238 = !DILocation(line: 92, column: 21, scope: !232)
!239 = !DILocation(line: 92, column: 27, scope: !232)
!240 = !DILocation(line: 92, column: 32, scope: !232)
!241 = !DILocation(line: 93, column: 30, scope: !232)
!242 = !DILocation(line: 93, column: 22, scope: !232)
!243 = !DILocation(line: 93, column: 28, scope: !232)
!244 = !DILocation(line: 94, column: 17, scope: !232)
!245 = !DILocation(line: 96, column: 31, scope: !229)
!246 = !DILocation(line: 96, column: 37, scope: !229)
!247 = !DILocation(line: 96, column: 27, scope: !229)
!248 = !DILocation(line: 98, column: 20, scope: !171)
!249 = !DILocation(line: 98, column: 18, scope: !171)
!250 = !DILocation(line: 100, column: 5, scope: !32)
!251 = !DILocation(line: 101, column: 1, scope: !24)
!252 = !DILocation(line: 15, column: 16, scope: !52)
!253 = !DILocation(line: 17, column: 5, scope: !52)
!254 = !DILocation(line: 17, column: 9, scope: !52)
!255 = !DILocation(line: 18, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !52, file: !9, line: 18, column: 9)
!257 = !DILocation(line: 18, column: 32, scope: !256)
!258 = !DILocation(line: 18, column: 29, scope: !256)
!259 = !DILocation(line: 18, column: 23, scope: !256)
!260 = !DILocation(line: 18, column: 9, scope: !52)
!261 = !DILocation(line: 19, column: 22, scope: !262)
!262 = distinct !DILexicalBlock(scope: !256, file: !9, line: 18, column: 39)
!263 = !DILocation(line: 20, column: 25, scope: !262)
!264 = !DILocation(line: 20, column: 23, scope: !262)
!265 = !DILocation(line: 21, column: 5, scope: !262)
!266 = !DILocation(line: 22, column: 14, scope: !52)
!267 = !DILocation(line: 22, column: 35, scope: !52)
!268 = !DILocation(line: 22, column: 33, scope: !52)
!269 = !DILocation(line: 22, column: 40, scope: !52)
!270 = !DILocation(line: 22, column: 28, scope: !52)
!271 = !DILocation(line: 22, column: 12, scope: !52)
!272 = !DILocation(line: 23, column: 23, scope: !52)
!273 = !DILocation(line: 23, column: 19, scope: !52)
!274 = !DILocation(line: 24, column: 12, scope: !52)
!275 = !DILocation(line: 25, column: 1, scope: !52)
!276 = !DILocation(line: 24, column: 5, scope: !52)
!277 = !DILocation(line: 107, column: 36, scope: !39)
!278 = !DILocation(line: 107, column: 64, scope: !39)
!279 = !DILocation(line: 108, column: 25, scope: !39)
!280 = !DILocation(line: 110, column: 5, scope: !39)
!281 = !DILocation(line: 110, column: 9, scope: !39)
!282 = !DILocation(line: 111, column: 5, scope: !39)
!283 = !DILocation(line: 111, column: 22, scope: !39)
!284 = !DILocation(line: 112, column: 5, scope: !39)
!285 = !DILocation(line: 112, column: 12, scope: !286)
!286 = !DILexicalBlockFile(scope: !287, file: !9, discriminator: 2)
!287 = !DILexicalBlockFile(scope: !39, file: !9, discriminator: 1)
!288 = !DILocation(line: 112, column: 17, scope: !39)
!289 = !DILocation(line: 113, column: 36, scope: !290)
!290 = distinct !DILexicalBlock(scope: !39, file: !9, line: 112, column: 32)
!291 = !DILocation(line: 113, column: 42, scope: !290)
!292 = !DILocation(line: 113, column: 48, scope: !290)
!293 = !DILocation(line: 113, column: 56, scope: !290)
!294 = !DILocation(line: 113, column: 18, scope: !290)
!295 = !DILocation(line: 113, column: 16, scope: !290)
!296 = !DILocation(line: 114, column: 13, scope: !297)
!297 = distinct !DILexicalBlock(scope: !290, file: !9, line: 114, column: 13)
!298 = !DILocation(line: 114, column: 20, scope: !297)
!299 = !DILocation(line: 114, column: 13, scope: !290)
!300 = !DILocation(line: 114, column: 33, scope: !301)
!301 = !DILexicalBlockFile(scope: !297, file: !9, discriminator: 1)
!302 = !DILocation(line: 114, column: 26, scope: !297)
!303 = !DILocation(line: 115, column: 16, scope: !290)
!304 = !DILocation(line: 115, column: 22, scope: !290)
!305 = !DILocation(line: 115, column: 14, scope: !290)
!306 = !DILocation(line: 116, column: 18, scope: !290)
!307 = !DILocation(line: 116, column: 25, scope: !290)
!308 = !DILocation(line: 116, column: 31, scope: !290)
!309 = !DILocation(line: 116, column: 16, scope: !290)
!310 = !DILocation(line: 117, column: 13, scope: !311)
!311 = distinct !DILexicalBlock(scope: !290, file: !9, line: 117, column: 13)
!312 = !DILocation(line: 117, column: 20, scope: !311)
!313 = !DILocation(line: 117, column: 13, scope: !290)
!314 = !DILocation(line: 117, column: 33, scope: !315)
!315 = !DILexicalBlockFile(scope: !311, file: !9, discriminator: 1)
!316 = !DILocation(line: 117, column: 26, scope: !311)
!317 = !DILocation(line: 118, column: 16, scope: !290)
!318 = !DILocation(line: 118, column: 14, scope: !290)
!319 = !DILocation(line: 120, column: 5, scope: !39)
!320 = !DILocation(line: 121, column: 1, scope: !39)
