; ModuleID = 'programs_new/Python-new/node.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }

; Function Attrs: nounwind uwtable
define %struct._node* @PyNode_New(i32 %type) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %type.addr = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 %type, i32* %type.addr, align 4, !tbaa !82
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !30, metadata !86), !dbg !87
  %0 = bitcast %struct._node** %n to i8*, !dbg !88
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !88
  call void @llvm.dbg.declare(metadata %struct._node** %n, metadata !31, metadata !86), !dbg !89
  %call = call i8* @PyObject_Malloc(i64 40), !dbg !90
  %1 = bitcast i8* %call to %struct._node*, !dbg !91
  store %struct._node* %1, %struct._node** %n, align 8, !dbg !89, !tbaa !92
  %2 = load %struct._node*, %struct._node** %n, align 8, !dbg !94, !tbaa !92
  %cmp = icmp eq %struct._node* %2, null, !dbg !96
  br i1 %cmp, label %if.then, label %if.end, !dbg !97

if.then:                                          ; preds = %entry
  store %struct._node* null, %struct._node** %retval, !dbg !98
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !98

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %type.addr, align 4, !dbg !99, !tbaa !82
  %conv = trunc i32 %3 to i16, !dbg !99
  %4 = load %struct._node*, %struct._node** %n, align 8, !dbg !100, !tbaa !92
  %n_type = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 0, !dbg !101
  store i16 %conv, i16* %n_type, align 2, !dbg !102, !tbaa !103
  %5 = load %struct._node*, %struct._node** %n, align 8, !dbg !106, !tbaa !92
  %n_str = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 1, !dbg !107
  store i8* null, i8** %n_str, align 8, !dbg !108, !tbaa !109
  %6 = load %struct._node*, %struct._node** %n, align 8, !dbg !110, !tbaa !92
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 2, !dbg !111
  store i32 0, i32* %n_lineno, align 4, !dbg !112, !tbaa !113
  %7 = load %struct._node*, %struct._node** %n, align 8, !dbg !114, !tbaa !92
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 4, !dbg !115
  store i32 0, i32* %n_nchildren, align 4, !dbg !116, !tbaa !117
  %8 = load %struct._node*, %struct._node** %n, align 8, !dbg !118, !tbaa !92
  %n_child = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5, !dbg !119
  store %struct._node* null, %struct._node** %n_child, align 8, !dbg !120, !tbaa !121
  %9 = load %struct._node*, %struct._node** %n, align 8, !dbg !122, !tbaa !92
  store %struct._node* %9, %struct._node** %retval, !dbg !123
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !123

cleanup:                                          ; preds = %if.end, %if.then
  %10 = bitcast %struct._node** %n to i8*, !dbg !124
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !124
  %11 = load %struct._node*, %struct._node** %retval, !dbg !124
  ret %struct._node* %11, !dbg !124
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i8* @PyObject_Malloc(i64) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @PyNode_AddChild(%struct._node* %n1, i32 %type, i8* %str, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %n1.addr = alloca %struct._node*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %nch = alloca i32, align 4
  %current_capacity = alloca i32, align 4
  %required_capacity = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._node* %n1, %struct._node** %n1.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct._node** %n1.addr, metadata !36, metadata !86), !dbg !125
  store i32 %type, i32* %type.addr, align 4, !tbaa !82
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !37, metadata !86), !dbg !126
  store i8* %str, i8** %str.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !38, metadata !86), !dbg !127
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !82
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !39, metadata !86), !dbg !128
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !82
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !40, metadata !86), !dbg !129
  %0 = bitcast i32* %nch to i8*, !dbg !130
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %nch, metadata !41, metadata !86), !dbg !131
  %1 = load %struct._node*, %struct._node** %n1.addr, align 8, !dbg !132, !tbaa !92
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 4, !dbg !133
  %2 = load i32, i32* %n_nchildren, align 4, !dbg !133, !tbaa !117
  store i32 %2, i32* %nch, align 4, !dbg !131, !tbaa !82
  %3 = bitcast i32* %current_capacity to i8*, !dbg !134
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %current_capacity, metadata !43, metadata !86), !dbg !135
  %4 = bitcast i32* %required_capacity to i8*, !dbg !136
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %required_capacity, metadata !44, metadata !86), !dbg !137
  %5 = bitcast %struct._node** %n to i8*, !dbg !138
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !138
  call void @llvm.dbg.declare(metadata %struct._node** %n, metadata !45, metadata !86), !dbg !139
  %6 = load i32, i32* %nch, align 4, !dbg !140, !tbaa !82
  %cmp = icmp eq i32 %6, 2147483647, !dbg !142
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !143

lor.lhs.false:                                    ; preds = %entry
  %7 = load i32, i32* %nch, align 4, !dbg !144, !tbaa !82
  %cmp1 = icmp slt i32 %7, 0, !dbg !146
  br i1 %cmp1, label %if.then, label %if.end, !dbg !147

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 19, i32* %retval, !dbg !148
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !148

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %nch, align 4, !dbg !149, !tbaa !82
  %cmp2 = icmp sle i32 %8, 1, !dbg !150
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !151

cond.true:                                        ; preds = %if.end
  %9 = load i32, i32* %nch, align 4, !dbg !152, !tbaa !82
  %conv = sext i32 %9 to i64, !dbg !154
  br label %cond.end.9, !dbg !151

cond.false:                                       ; preds = %if.end
  %10 = load i32, i32* %nch, align 4, !dbg !155, !tbaa !82
  %cmp3 = icmp sle i32 %10, 128, !dbg !157
  br i1 %cmp3, label %cond.true.5, label %cond.false.7, !dbg !158

cond.true.5:                                      ; preds = %cond.false
  %11 = load i32, i32* %nch, align 4, !dbg !159, !tbaa !82
  %conv6 = sext i32 %11 to i64, !dbg !161
  %add = add i64 %conv6, 3, !dbg !162
  %and = and i64 %add, -4, !dbg !163
  br label %cond.end, !dbg !158

cond.false.7:                                     ; preds = %cond.false
  %12 = load i32, i32* %nch, align 4, !dbg !164, !tbaa !82
  %call = call i32 @fancy_roundup(i32 %12), !dbg !166
  %conv8 = sext i32 %call to i64, !dbg !166
  br label %cond.end, !dbg !158

cond.end:                                         ; preds = %cond.false.7, %cond.true.5
  %cond = phi i64 [ %and, %cond.true.5 ], [ %conv8, %cond.false.7 ], !dbg !158
  br label %cond.end.9, !dbg !167

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i64 [ %conv, %cond.true ], [ %cond, %cond.end ], !dbg !151
  %conv11 = trunc i64 %cond10 to i32, !dbg !170
  store i32 %conv11, i32* %current_capacity, align 4, !dbg !173, !tbaa !82
  %13 = load i32, i32* %nch, align 4, !dbg !174, !tbaa !82
  %add12 = add i32 %13, 1, !dbg !175
  %cmp13 = icmp sle i32 %add12, 1, !dbg !176
  br i1 %cmp13, label %cond.true.15, label %cond.false.18, !dbg !177

cond.true.15:                                     ; preds = %cond.end.9
  %14 = load i32, i32* %nch, align 4, !dbg !178, !tbaa !82
  %add16 = add i32 %14, 1, !dbg !179
  %conv17 = sext i32 %add16 to i64, !dbg !180
  br label %cond.end.33, !dbg !177

cond.false.18:                                    ; preds = %cond.end.9
  %15 = load i32, i32* %nch, align 4, !dbg !181, !tbaa !82
  %add19 = add i32 %15, 1, !dbg !182
  %cmp20 = icmp sle i32 %add19, 128, !dbg !183
  br i1 %cmp20, label %cond.true.22, label %cond.false.27, !dbg !184

cond.true.22:                                     ; preds = %cond.false.18
  %16 = load i32, i32* %nch, align 4, !dbg !185, !tbaa !82
  %add23 = add i32 %16, 1, !dbg !186
  %conv24 = sext i32 %add23 to i64, !dbg !187
  %add25 = add i64 %conv24, 3, !dbg !188
  %and26 = and i64 %add25, -4, !dbg !189
  br label %cond.end.31, !dbg !184

cond.false.27:                                    ; preds = %cond.false.18
  %17 = load i32, i32* %nch, align 4, !dbg !190, !tbaa !82
  %add28 = add i32 %17, 1, !dbg !191
  %call29 = call i32 @fancy_roundup(i32 %add28), !dbg !192
  %conv30 = sext i32 %call29 to i64, !dbg !192
  br label %cond.end.31, !dbg !184

cond.end.31:                                      ; preds = %cond.false.27, %cond.true.22
  %cond32 = phi i64 [ %and26, %cond.true.22 ], [ %conv30, %cond.false.27 ], !dbg !184
  br label %cond.end.33, !dbg !193

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.15
  %cond34 = phi i64 [ %conv17, %cond.true.15 ], [ %cond32, %cond.end.31 ], !dbg !177
  %conv35 = trunc i64 %cond34 to i32, !dbg !194
  store i32 %conv35, i32* %required_capacity, align 4, !dbg !195, !tbaa !82
  %18 = load i32, i32* %current_capacity, align 4, !dbg !196, !tbaa !82
  %cmp36 = icmp slt i32 %18, 0, !dbg !198
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false.38, !dbg !199

lor.lhs.false.38:                                 ; preds = %cond.end.33
  %19 = load i32, i32* %required_capacity, align 4, !dbg !200, !tbaa !82
  %cmp39 = icmp slt i32 %19, 0, !dbg !202
  br i1 %cmp39, label %if.then.41, label %if.end.42, !dbg !203

if.then.41:                                       ; preds = %lor.lhs.false.38, %cond.end.33
  store i32 19, i32* %retval, !dbg !204
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !204

if.end.42:                                        ; preds = %lor.lhs.false.38
  %20 = load i32, i32* %current_capacity, align 4, !dbg !205, !tbaa !82
  %21 = load i32, i32* %required_capacity, align 4, !dbg !207, !tbaa !82
  %cmp43 = icmp slt i32 %20, %21, !dbg !208
  br i1 %cmp43, label %if.then.45, label %if.end.58, !dbg !209

if.then.45:                                       ; preds = %if.end.42
  %22 = load i32, i32* %required_capacity, align 4, !dbg !210, !tbaa !82
  %conv46 = sext i32 %22 to i64, !dbg !213
  %cmp47 = icmp ugt i64 %conv46, 461168601842738790, !dbg !214
  br i1 %cmp47, label %if.then.49, label %if.end.50, !dbg !215

if.then.49:                                       ; preds = %if.then.45
  store i32 15, i32* %retval, !dbg !216
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !216

if.end.50:                                        ; preds = %if.then.45
  %23 = load %struct._node*, %struct._node** %n1.addr, align 8, !dbg !218, !tbaa !92
  %n_child = getelementptr inbounds %struct._node, %struct._node* %23, i32 0, i32 5, !dbg !219
  %24 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !219, !tbaa !121
  store %struct._node* %24, %struct._node** %n, align 8, !dbg !220, !tbaa !92
  %25 = load %struct._node*, %struct._node** %n, align 8, !dbg !221, !tbaa !92
  %26 = bitcast %struct._node* %25 to i8*, !dbg !221
  %27 = load i32, i32* %required_capacity, align 4, !dbg !222, !tbaa !82
  %conv51 = sext i32 %27 to i64, !dbg !222
  %mul = mul i64 %conv51, 40, !dbg !223
  %call52 = call i8* @PyObject_Realloc(i8* %26, i64 %mul), !dbg !224
  %28 = bitcast i8* %call52 to %struct._node*, !dbg !225
  store %struct._node* %28, %struct._node** %n, align 8, !dbg !226, !tbaa !92
  %29 = load %struct._node*, %struct._node** %n, align 8, !dbg !227, !tbaa !92
  %cmp53 = icmp eq %struct._node* %29, null, !dbg !229
  br i1 %cmp53, label %if.then.55, label %if.end.56, !dbg !230

if.then.55:                                       ; preds = %if.end.50
  store i32 15, i32* %retval, !dbg !231
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !231

if.end.56:                                        ; preds = %if.end.50
  %30 = load %struct._node*, %struct._node** %n, align 8, !dbg !232, !tbaa !92
  %31 = load %struct._node*, %struct._node** %n1.addr, align 8, !dbg !233, !tbaa !92
  %n_child57 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 5, !dbg !234
  store %struct._node* %30, %struct._node** %n_child57, align 8, !dbg !235, !tbaa !121
  br label %if.end.58, !dbg !236

if.end.58:                                        ; preds = %if.end.56, %if.end.42
  %32 = load %struct._node*, %struct._node** %n1.addr, align 8, !dbg !237, !tbaa !92
  %n_nchildren59 = getelementptr inbounds %struct._node, %struct._node* %32, i32 0, i32 4, !dbg !238
  %33 = load i32, i32* %n_nchildren59, align 4, !dbg !239, !tbaa !117
  %inc = add i32 %33, 1, !dbg !239
  store i32 %inc, i32* %n_nchildren59, align 4, !dbg !239, !tbaa !117
  %idxprom = sext i32 %33 to i64, !dbg !240
  %34 = load %struct._node*, %struct._node** %n1.addr, align 8, !dbg !240, !tbaa !92
  %n_child60 = getelementptr inbounds %struct._node, %struct._node* %34, i32 0, i32 5, !dbg !241
  %35 = load %struct._node*, %struct._node** %n_child60, align 8, !dbg !241, !tbaa !121
  %arrayidx = getelementptr %struct._node, %struct._node* %35, i64 %idxprom, !dbg !240
  store %struct._node* %arrayidx, %struct._node** %n, align 8, !dbg !242, !tbaa !92
  %36 = load i32, i32* %type.addr, align 4, !dbg !243, !tbaa !82
  %conv61 = trunc i32 %36 to i16, !dbg !243
  %37 = load %struct._node*, %struct._node** %n, align 8, !dbg !244, !tbaa !92
  %n_type = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 0, !dbg !245
  store i16 %conv61, i16* %n_type, align 2, !dbg !246, !tbaa !103
  %38 = load i8*, i8** %str.addr, align 8, !dbg !247, !tbaa !92
  %39 = load %struct._node*, %struct._node** %n, align 8, !dbg !248, !tbaa !92
  %n_str = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 1, !dbg !249
  store i8* %38, i8** %n_str, align 8, !dbg !250, !tbaa !109
  %40 = load i32, i32* %lineno.addr, align 4, !dbg !251, !tbaa !82
  %41 = load %struct._node*, %struct._node** %n, align 8, !dbg !252, !tbaa !92
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 2, !dbg !253
  store i32 %40, i32* %n_lineno, align 4, !dbg !254, !tbaa !113
  %42 = load i32, i32* %col_offset.addr, align 4, !dbg !255, !tbaa !82
  %43 = load %struct._node*, %struct._node** %n, align 8, !dbg !256, !tbaa !92
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %43, i32 0, i32 3, !dbg !257
  store i32 %42, i32* %n_col_offset, align 4, !dbg !258, !tbaa !259
  %44 = load %struct._node*, %struct._node** %n, align 8, !dbg !260, !tbaa !92
  %n_nchildren62 = getelementptr inbounds %struct._node, %struct._node* %44, i32 0, i32 4, !dbg !261
  store i32 0, i32* %n_nchildren62, align 4, !dbg !262, !tbaa !117
  %45 = load %struct._node*, %struct._node** %n, align 8, !dbg !263, !tbaa !92
  %n_child63 = getelementptr inbounds %struct._node, %struct._node* %45, i32 0, i32 5, !dbg !264
  store %struct._node* null, %struct._node** %n_child63, align 8, !dbg !265, !tbaa !121
  store i32 0, i32* %retval, !dbg !266
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !266

cleanup:                                          ; preds = %if.end.58, %if.then.55, %if.then.49, %if.then.41, %if.then
  %46 = bitcast %struct._node** %n to i8*, !dbg !267
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !267
  %47 = bitcast i32* %required_capacity to i8*, !dbg !267
  call void @llvm.lifetime.end(i64 4, i8* %47) #2, !dbg !267
  %48 = bitcast i32* %current_capacity to i8*, !dbg !267
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !267
  %49 = bitcast i32* %nch to i8*, !dbg !267
  call void @llvm.lifetime.end(i64 4, i8* %49) #2, !dbg !267
  %50 = load i32, i32* %retval, !dbg !267
  ret i32 %50, !dbg !267
}

; Function Attrs: nounwind uwtable
define internal i32 @fancy_roundup(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %n, i32* %n.addr, align 4, !tbaa !82
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !68, metadata !86), !dbg !268
  %0 = bitcast i32* %result to i8*, !dbg !269
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !269
  call void @llvm.dbg.declare(metadata i32* %result, metadata !69, metadata !86), !dbg !270
  store i32 256, i32* %result, align 4, !dbg !270, !tbaa !82
  br label %while.cond, !dbg !271

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %result, align 4, !dbg !272, !tbaa !82
  %2 = load i32, i32* %n.addr, align 4, !dbg !275, !tbaa !82
  %cmp = icmp slt i32 %1, %2, !dbg !276
  br i1 %cmp, label %while.body, label %while.end, !dbg !271

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %result, align 4, !dbg !277, !tbaa !82
  %shl = shl i32 %3, 1, !dbg !277
  store i32 %shl, i32* %result, align 4, !dbg !277, !tbaa !82
  %4 = load i32, i32* %result, align 4, !dbg !279, !tbaa !82
  %cmp1 = icmp sle i32 %4, 0, !dbg !281
  br i1 %cmp1, label %if.then, label %if.end, !dbg !282

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval, !dbg !283
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !283

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !271

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %result, align 4, !dbg !284, !tbaa !82
  store i32 %5, i32* %retval, !dbg !285
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !285

cleanup:                                          ; preds = %while.end, %if.then
  %6 = bitcast i32* %result to i8*, !dbg !286
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !286
  %7 = load i32, i32* %retval, !dbg !286
  ret i32 %7, !dbg !286
}

declare i8* @PyObject_Realloc(i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @PyNode_Free(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct._node** %n.addr, metadata !50, metadata !86), !dbg !287
  %0 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !288, !tbaa !92
  %cmp = icmp ne %struct._node* %0, null, !dbg !290
  br i1 %cmp, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %entry
  %1 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !292, !tbaa !92
  call void @freechildren(%struct._node* %1), !dbg !294
  %2 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !295, !tbaa !92
  %3 = bitcast %struct._node* %2 to i8*, !dbg !295
  call void @PyObject_Free(i8* %3), !dbg !296
  br label %if.end, !dbg !297

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !298
}

; Function Attrs: nounwind uwtable
define internal void @freechildren(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  store %struct._node* %n, %struct._node** %n.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct._node** %n.addr, metadata !72, metadata !86), !dbg !299
  %0 = bitcast i32* %i to i8*, !dbg !300
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !300
  call void @llvm.dbg.declare(metadata i32* %i, metadata !73, metadata !86), !dbg !301
  %1 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !302, !tbaa !92
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 4, !dbg !304
  %2 = load i32, i32* %n_nchildren, align 4, !dbg !304, !tbaa !117
  store i32 %2, i32* %i, align 4, !dbg !305, !tbaa !82
  br label %for.cond, !dbg !306

for.cond:                                         ; preds = %for.body, %entry
  %3 = load i32, i32* %i, align 4, !dbg !307, !tbaa !82
  %dec = add i32 %3, -1, !dbg !307
  store i32 %dec, i32* %i, align 4, !dbg !307, !tbaa !82
  %cmp = icmp sge i32 %dec, 0, !dbg !311
  br i1 %cmp, label %for.body, label %for.end, !dbg !312

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !313, !tbaa !82
  %idxprom = sext i32 %4 to i64, !dbg !314
  %5 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !315, !tbaa !92
  %n_child = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 5, !dbg !316
  %6 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !316, !tbaa !121
  %arrayidx = getelementptr %struct._node, %struct._node* %6, i64 %idxprom, !dbg !314
  call void @freechildren(%struct._node* %arrayidx), !dbg !317
  br label %for.cond, !dbg !318

for.end:                                          ; preds = %for.cond
  %7 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !319, !tbaa !92
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5, !dbg !321
  %8 = load %struct._node*, %struct._node** %n_child1, align 8, !dbg !321, !tbaa !121
  %cmp2 = icmp ne %struct._node* %8, null, !dbg !322
  br i1 %cmp2, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %for.end
  %9 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !324, !tbaa !92
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5, !dbg !325
  %10 = load %struct._node*, %struct._node** %n_child3, align 8, !dbg !325, !tbaa !121
  %11 = bitcast %struct._node* %10 to i8*, !dbg !324
  call void @PyObject_Free(i8* %11), !dbg !326
  br label %if.end, !dbg !326

if.end:                                           ; preds = %if.then, %for.end
  %12 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !327, !tbaa !92
  %n_str = getelementptr inbounds %struct._node, %struct._node* %12, i32 0, i32 1, !dbg !329
  %13 = load i8*, i8** %n_str, align 8, !dbg !329, !tbaa !109
  %cmp4 = icmp ne i8* %13, null, !dbg !330
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !331

if.then.5:                                        ; preds = %if.end
  %14 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !332, !tbaa !92
  %n_str6 = getelementptr inbounds %struct._node, %struct._node* %14, i32 0, i32 1, !dbg !333
  %15 = load i8*, i8** %n_str6, align 8, !dbg !333, !tbaa !109
  call void @PyObject_Free(i8* %15), !dbg !334
  br label %if.end.7, !dbg !334

if.end.7:                                         ; preds = %if.then.5, %if.end
  %16 = bitcast i32* %i to i8*, !dbg !335
  call void @llvm.lifetime.end(i64 4, i8* %16) #2, !dbg !335
  ret void, !dbg !335
}

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define i64 @_PyNode_SizeOf(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %res = alloca i64, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct._node** %n.addr, metadata !62, metadata !86), !dbg !336
  %0 = bitcast i64* %res to i8*, !dbg !337
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !337
  call void @llvm.dbg.declare(metadata i64* %res, metadata !63, metadata !86), !dbg !338
  store i64 0, i64* %res, align 8, !dbg !338, !tbaa !339
  %1 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !341, !tbaa !92
  %cmp = icmp ne %struct._node* %1, null, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  %2 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !345, !tbaa !92
  %call = call i64 @sizeofchildren(%struct._node* %2), !dbg !346
  %add = add i64 40, %call, !dbg !347
  store i64 %add, i64* %res, align 8, !dbg !348, !tbaa !339
  br label %if.end, !dbg !349

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* %res, align 8, !dbg !350, !tbaa !339
  %4 = bitcast i64* %res to i8*, !dbg !351
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !351
  ret i64 %3, !dbg !352
}

; Function Attrs: nounwind uwtable
define internal i64 @sizeofchildren(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %res = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct._node* %n, %struct._node** %n.addr, align 8, !tbaa !92
  call void @llvm.dbg.declare(metadata %struct._node** %n.addr, metadata !76, metadata !86), !dbg !353
  %0 = bitcast i64* %res to i8*, !dbg !354
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !354
  call void @llvm.dbg.declare(metadata i64* %res, metadata !77, metadata !86), !dbg !355
  store i64 0, i64* %res, align 8, !dbg !355, !tbaa !339
  %1 = bitcast i32* %i to i8*, !dbg !356
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !356
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !86), !dbg !357
  %2 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !358, !tbaa !92
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %2, i32 0, i32 4, !dbg !360
  %3 = load i32, i32* %n_nchildren, align 4, !dbg !360, !tbaa !117
  store i32 %3, i32* %i, align 4, !dbg !361, !tbaa !82
  br label %for.cond, !dbg !362

for.cond:                                         ; preds = %for.body, %entry
  %4 = load i32, i32* %i, align 4, !dbg !363, !tbaa !82
  %dec = add i32 %4, -1, !dbg !363
  store i32 %dec, i32* %i, align 4, !dbg !363, !tbaa !82
  %cmp = icmp sge i32 %dec, 0, !dbg !367
  br i1 %cmp, label %for.body, label %for.end, !dbg !368

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !369, !tbaa !82
  %idxprom = sext i32 %5 to i64, !dbg !370
  %6 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !371, !tbaa !92
  %n_child = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5, !dbg !372
  %7 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !372, !tbaa !121
  %arrayidx = getelementptr %struct._node, %struct._node* %7, i64 %idxprom, !dbg !370
  %call = call i64 @sizeofchildren(%struct._node* %arrayidx), !dbg !373
  %8 = load i64, i64* %res, align 8, !dbg !374, !tbaa !339
  %add = add i64 %8, %call, !dbg !374
  store i64 %add, i64* %res, align 8, !dbg !374, !tbaa !339
  br label %for.cond, !dbg !375

for.end:                                          ; preds = %for.cond
  %9 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !376, !tbaa !92
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5, !dbg !378
  %10 = load %struct._node*, %struct._node** %n_child1, align 8, !dbg !378, !tbaa !121
  %cmp2 = icmp ne %struct._node* %10, null, !dbg !379
  br i1 %cmp2, label %if.then, label %if.end, !dbg !380

if.then:                                          ; preds = %for.end
  %11 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !381, !tbaa !92
  %n_nchildren3 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 4, !dbg !382
  %12 = load i32, i32* %n_nchildren3, align 4, !dbg !382, !tbaa !117
  %cmp4 = icmp sle i32 %12, 1, !dbg !383
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !384

cond.true:                                        ; preds = %if.then
  %13 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !385, !tbaa !92
  %n_nchildren5 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 4, !dbg !387
  %14 = load i32, i32* %n_nchildren5, align 4, !dbg !387, !tbaa !117
  %conv = sext i32 %14 to i64, !dbg !388
  br label %cond.end.17, !dbg !384

cond.false:                                       ; preds = %if.then
  %15 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !389, !tbaa !92
  %n_nchildren6 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 4, !dbg !391
  %16 = load i32, i32* %n_nchildren6, align 4, !dbg !391, !tbaa !117
  %cmp7 = icmp sle i32 %16, 128, !dbg !392
  br i1 %cmp7, label %cond.true.9, label %cond.false.13, !dbg !393

cond.true.9:                                      ; preds = %cond.false
  %17 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !394, !tbaa !92
  %n_nchildren10 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 4, !dbg !396
  %18 = load i32, i32* %n_nchildren10, align 4, !dbg !396, !tbaa !117
  %conv11 = sext i32 %18 to i64, !dbg !397
  %add12 = add i64 %conv11, 3, !dbg !398
  %and = and i64 %add12, -4, !dbg !399
  br label %cond.end, !dbg !393

cond.false.13:                                    ; preds = %cond.false
  %19 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !400, !tbaa !92
  %n_nchildren14 = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 4, !dbg !402
  %20 = load i32, i32* %n_nchildren14, align 4, !dbg !402, !tbaa !117
  %call15 = call i32 @fancy_roundup(i32 %20), !dbg !403
  %conv16 = sext i32 %call15 to i64, !dbg !403
  br label %cond.end, !dbg !393

cond.end:                                         ; preds = %cond.false.13, %cond.true.9
  %cond = phi i64 [ %and, %cond.true.9 ], [ %conv16, %cond.false.13 ], !dbg !393
  br label %cond.end.17, !dbg !404

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi i64 [ %conv, %cond.true ], [ %cond, %cond.end ], !dbg !384
  %mul = mul i64 %cond18, 40, !dbg !407
  %21 = load i64, i64* %res, align 8, !dbg !410, !tbaa !339
  %add19 = add i64 %21, %mul, !dbg !410
  store i64 %add19, i64* %res, align 8, !dbg !410, !tbaa !339
  br label %if.end, !dbg !411

if.end:                                           ; preds = %cond.end.17, %for.end
  %22 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !412, !tbaa !92
  %n_str = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 1, !dbg !414
  %23 = load i8*, i8** %n_str, align 8, !dbg !414, !tbaa !109
  %cmp20 = icmp ne i8* %23, null, !dbg !415
  br i1 %cmp20, label %if.then.22, label %if.end.27, !dbg !416

if.then.22:                                       ; preds = %if.end
  %24 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !417, !tbaa !92
  %n_str23 = getelementptr inbounds %struct._node, %struct._node* %24, i32 0, i32 1, !dbg !418
  %25 = load i8*, i8** %n_str23, align 8, !dbg !418, !tbaa !109
  %call24 = call i64 @strlen(i8* %25) #5, !dbg !419
  %add25 = add i64 %call24, 1, !dbg !420
  %26 = load i64, i64* %res, align 8, !dbg !421, !tbaa !339
  %add26 = add i64 %26, %add25, !dbg !421
  store i64 %add26, i64* %res, align 8, !dbg !421, !tbaa !339
  br label %if.end.27, !dbg !422

if.end.27:                                        ; preds = %if.then.22, %if.end
  %27 = load i64, i64* %res, align 8, !dbg !423, !tbaa !339
  %28 = bitcast i32* %i to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 4, i8* %28) #2, !dbg !424
  %29 = bitcast i64* %res to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !424
  ret i64 %27, !dbg !425
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !24)
!1 = !DIFile(filename: "node.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !20, !21}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !6, line: 17, baseType: !7)
!6 = !DIFile(filename: "Include/node.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !6, line: 10, size: 320, align: 64, elements: !8)
!8 = !{!9, !11, !14, !16, !17, !18}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !7, file: !6, line: 11, baseType: !10, size: 16, align: 16)
!10 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "n_str", scope: !7, file: !6, line: 12, baseType: !12, size: 64, align: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "n_lineno", scope: !7, file: !6, line: 13, baseType: !15, size: 32, align: 32, offset: 128)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "n_col_offset", scope: !7, file: !6, line: 14, baseType: !15, size: 32, align: 32, offset: 160)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n_nchildren", scope: !7, file: !6, line: 15, baseType: !15, size: 32, align: 32, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "n_child", scope: !7, file: !6, line: 16, baseType: !19, size: 64, align: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !22, line: 62, baseType: !23)
!22 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!24 = !{!25, !32, !46, !51, !64, !70, !74}
!25 = !DISubprogram(name: "PyNode_New", scope: !26, file: !26, line: 8, type: !27, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, function: %struct._node* (i32)* @PyNode_New, variables: !29)
!26 = !DIFile(filename: "Parser/node.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DISubroutineType(types: !28)
!28 = !{!4, !15}
!29 = !{!30, !31}
!30 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !25, file: !26, line: 8, type: !15)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !25, file: !26, line: 10, type: !4)
!32 = !DISubprogram(name: "PyNode_AddChild", scope: !26, file: !26, line: 79, type: !33, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._node*, i32, i8*, i32, i32)* @PyNode_AddChild, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!15, !4, !15, !12, !15, !15}
!35 = !{!36, !37, !38, !39, !40, !41, !43, !44, !45}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n1", arg: 1, scope: !32, file: !26, line: 79, type: !4)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !32, file: !26, line: 79, type: !15)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 3, scope: !32, file: !26, line: 79, type: !12)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 4, scope: !32, file: !26, line: 79, type: !15)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 5, scope: !32, file: !26, line: 79, type: !15)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nch", scope: !32, file: !26, line: 81, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "current_capacity", scope: !32, file: !26, line: 82, type: !15)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "required_capacity", scope: !32, file: !26, line: 83, type: !15)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !32, file: !26, line: 84, type: !4)
!46 = !DISubprogram(name: "PyNode_Free", scope: !26, file: !26, line: 121, type: !47, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._node*)* @PyNode_Free, variables: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !4}
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !46, file: !26, line: 121, type: !4)
!51 = !DISubprogram(name: "_PyNode_SizeOf", scope: !26, file: !26, line: 130, type: !52, isLocal: false, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._node*)* @_PyNode_SizeOf, variables: !61)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !4}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !55, line: 177, baseType: !56)
!55 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !57, line: 102, baseType: !58)
!57 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !59, line: 181, baseType: !60)
!59 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!60 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!61 = !{!62, !63}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !51, file: !26, line: 130, type: !4)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !51, file: !26, line: 132, type: !54)
!64 = !DISubprogram(name: "fancy_roundup", scope: !26, file: !26, line: 23, type: !65, isLocal: true, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @fancy_roundup, variables: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{!15, !15}
!67 = !{!68, !69}
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !64, file: !26, line: 23, type: !15)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !64, file: !26, line: 26, type: !15)
!70 = !DISubprogram(name: "freechildren", scope: !26, file: !26, line: 140, type: !47, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._node*)* @freechildren, variables: !71)
!71 = !{!72, !73}
!72 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !70, file: !26, line: 140, type: !4)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !70, file: !26, line: 142, type: !15)
!74 = !DISubprogram(name: "sizeofchildren", scope: !26, file: !26, line: 152, type: !52, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._node*)* @sizeofchildren, variables: !75)
!75 = !{!76, !77, !78}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !74, file: !26, line: 152, type: !4)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !74, file: !26, line: 154, type: !54)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !74, file: !26, line: 155, type: !15)
!79 = !{i32 2, !"Dwarf Version", i32 4}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!82 = !{!83, !83, i64 0}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C/C++ TBAA"}
!86 = !DIExpression()
!87 = !DILocation(line: 8, column: 16, scope: !25)
!88 = !DILocation(line: 10, column: 5, scope: !25)
!89 = !DILocation(line: 10, column: 11, scope: !25)
!90 = !DILocation(line: 10, column: 24, scope: !25)
!91 = !DILocation(line: 10, column: 15, scope: !25)
!92 = !{!93, !93, i64 0}
!93 = !{!"any pointer", !84, i64 0}
!94 = !DILocation(line: 11, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !25, file: !26, line: 11, column: 9)
!96 = !DILocation(line: 11, column: 11, scope: !95)
!97 = !DILocation(line: 11, column: 9, scope: !25)
!98 = !DILocation(line: 12, column: 9, scope: !95)
!99 = !DILocation(line: 13, column: 17, scope: !25)
!100 = !DILocation(line: 13, column: 5, scope: !25)
!101 = !DILocation(line: 13, column: 8, scope: !25)
!102 = !DILocation(line: 13, column: 15, scope: !25)
!103 = !{!104, !105, i64 0}
!104 = !{!"_node", !105, i64 0, !93, i64 8, !83, i64 16, !83, i64 20, !83, i64 24, !93, i64 32}
!105 = !{!"short", !84, i64 0}
!106 = !DILocation(line: 14, column: 5, scope: !25)
!107 = !DILocation(line: 14, column: 8, scope: !25)
!108 = !DILocation(line: 14, column: 14, scope: !25)
!109 = !{!104, !93, i64 8}
!110 = !DILocation(line: 15, column: 5, scope: !25)
!111 = !DILocation(line: 15, column: 8, scope: !25)
!112 = !DILocation(line: 15, column: 17, scope: !25)
!113 = !{!104, !83, i64 16}
!114 = !DILocation(line: 16, column: 5, scope: !25)
!115 = !DILocation(line: 16, column: 8, scope: !25)
!116 = !DILocation(line: 16, column: 20, scope: !25)
!117 = !{!104, !83, i64 24}
!118 = !DILocation(line: 17, column: 5, scope: !25)
!119 = !DILocation(line: 17, column: 8, scope: !25)
!120 = !DILocation(line: 17, column: 16, scope: !25)
!121 = !{!104, !93, i64 32}
!122 = !DILocation(line: 18, column: 12, scope: !25)
!123 = !DILocation(line: 18, column: 5, scope: !25)
!124 = !DILocation(line: 19, column: 1, scope: !25)
!125 = !DILocation(line: 79, column: 23, scope: !32)
!126 = !DILocation(line: 79, column: 31, scope: !32)
!127 = !DILocation(line: 79, column: 43, scope: !32)
!128 = !DILocation(line: 79, column: 52, scope: !32)
!129 = !DILocation(line: 79, column: 64, scope: !32)
!130 = !DILocation(line: 81, column: 5, scope: !32)
!131 = !DILocation(line: 81, column: 15, scope: !32)
!132 = !DILocation(line: 81, column: 21, scope: !32)
!133 = !DILocation(line: 81, column: 25, scope: !32)
!134 = !DILocation(line: 82, column: 5, scope: !32)
!135 = !DILocation(line: 82, column: 9, scope: !32)
!136 = !DILocation(line: 83, column: 5, scope: !32)
!137 = !DILocation(line: 83, column: 9, scope: !32)
!138 = !DILocation(line: 84, column: 5, scope: !32)
!139 = !DILocation(line: 84, column: 11, scope: !32)
!140 = !DILocation(line: 86, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !32, file: !26, line: 86, column: 9)
!142 = !DILocation(line: 86, column: 13, scope: !141)
!143 = !DILocation(line: 86, column: 27, scope: !141)
!144 = !DILocation(line: 86, column: 30, scope: !145)
!145 = !DILexicalBlockFile(scope: !141, file: !26, discriminator: 1)
!146 = !DILocation(line: 86, column: 34, scope: !141)
!147 = !DILocation(line: 86, column: 9, scope: !32)
!148 = !DILocation(line: 87, column: 9, scope: !141)
!149 = !DILocation(line: 89, column: 26, scope: !32)
!150 = !DILocation(line: 89, column: 31, scope: !32)
!151 = !DILocation(line: 89, column: 25, scope: !32)
!152 = !DILocation(line: 89, column: 39, scope: !153)
!153 = !DILexicalBlockFile(scope: !32, file: !26, discriminator: 1)
!154 = !DILocation(line: 89, column: 38, scope: !32)
!155 = !DILocation(line: 89, column: 47, scope: !156)
!156 = !DILexicalBlockFile(scope: !32, file: !26, discriminator: 2)
!157 = !DILocation(line: 89, column: 52, scope: !32)
!158 = !DILocation(line: 89, column: 46, scope: !32)
!159 = !DILocation(line: 89, column: 73, scope: !160)
!160 = !DILexicalBlockFile(scope: !32, file: !26, discriminator: 4)
!161 = !DILocation(line: 89, column: 63, scope: !32)
!162 = !DILocation(line: 89, column: 79, scope: !32)
!163 = !DILocation(line: 89, column: 100, scope: !32)
!164 = !DILocation(line: 89, column: 138, scope: !165)
!165 = !DILexicalBlockFile(scope: !32, file: !26, discriminator: 5)
!166 = !DILocation(line: 89, column: 124, scope: !32)
!167 = !DILocation(line: 89, column: 25, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !26, discriminator: 7)
!169 = !DILexicalBlockFile(scope: !32, file: !26, discriminator: 6)
!170 = !DILocation(line: 89, column: 24, scope: !171)
!171 = !DILexicalBlockFile(scope: !172, file: !26, discriminator: 8)
!172 = !DILexicalBlockFile(scope: !32, file: !26, discriminator: 3)
!173 = !DILocation(line: 89, column: 22, scope: !32)
!174 = !DILocation(line: 90, column: 27, scope: !32)
!175 = !DILocation(line: 90, column: 31, scope: !32)
!176 = !DILocation(line: 90, column: 36, scope: !32)
!177 = !DILocation(line: 90, column: 26, scope: !32)
!178 = !DILocation(line: 90, column: 44, scope: !153)
!179 = !DILocation(line: 90, column: 48, scope: !32)
!180 = !DILocation(line: 90, column: 43, scope: !32)
!181 = !DILocation(line: 90, column: 56, scope: !156)
!182 = !DILocation(line: 90, column: 60, scope: !32)
!183 = !DILocation(line: 90, column: 65, scope: !32)
!184 = !DILocation(line: 90, column: 55, scope: !32)
!185 = !DILocation(line: 90, column: 86, scope: !160)
!186 = !DILocation(line: 90, column: 90, scope: !32)
!187 = !DILocation(line: 90, column: 76, scope: !32)
!188 = !DILocation(line: 90, column: 96, scope: !32)
!189 = !DILocation(line: 90, column: 117, scope: !32)
!190 = !DILocation(line: 90, column: 155, scope: !165)
!191 = !DILocation(line: 90, column: 159, scope: !32)
!192 = !DILocation(line: 90, column: 141, scope: !32)
!193 = !DILocation(line: 90, column: 26, scope: !168)
!194 = !DILocation(line: 90, column: 25, scope: !171)
!195 = !DILocation(line: 90, column: 23, scope: !32)
!196 = !DILocation(line: 91, column: 9, scope: !197)
!197 = distinct !DILexicalBlock(scope: !32, file: !26, line: 91, column: 9)
!198 = !DILocation(line: 91, column: 26, scope: !197)
!199 = !DILocation(line: 91, column: 30, scope: !197)
!200 = !DILocation(line: 91, column: 33, scope: !201)
!201 = !DILexicalBlockFile(scope: !197, file: !26, discriminator: 1)
!202 = !DILocation(line: 91, column: 51, scope: !197)
!203 = !DILocation(line: 91, column: 9, scope: !32)
!204 = !DILocation(line: 92, column: 9, scope: !197)
!205 = !DILocation(line: 93, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !32, file: !26, line: 93, column: 9)
!207 = !DILocation(line: 93, column: 28, scope: !206)
!208 = !DILocation(line: 93, column: 26, scope: !206)
!209 = !DILocation(line: 93, column: 9, scope: !32)
!210 = !DILocation(line: 94, column: 21, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !26, line: 94, column: 13)
!212 = distinct !DILexicalBlock(scope: !206, file: !26, line: 93, column: 47)
!213 = !DILocation(line: 94, column: 13, scope: !211)
!214 = !DILocation(line: 94, column: 39, scope: !211)
!215 = !DILocation(line: 94, column: 13, scope: !212)
!216 = !DILocation(line: 95, column: 13, scope: !217)
!217 = distinct !DILexicalBlock(scope: !211, file: !26, line: 94, column: 82)
!218 = !DILocation(line: 97, column: 13, scope: !212)
!219 = !DILocation(line: 97, column: 17, scope: !212)
!220 = !DILocation(line: 97, column: 11, scope: !212)
!221 = !DILocation(line: 98, column: 39, scope: !212)
!222 = !DILocation(line: 99, column: 39, scope: !212)
!223 = !DILocation(line: 99, column: 57, scope: !212)
!224 = !DILocation(line: 98, column: 22, scope: !212)
!225 = !DILocation(line: 98, column: 13, scope: !212)
!226 = !DILocation(line: 98, column: 11, scope: !212)
!227 = !DILocation(line: 100, column: 13, scope: !228)
!228 = distinct !DILexicalBlock(scope: !212, file: !26, line: 100, column: 13)
!229 = !DILocation(line: 100, column: 15, scope: !228)
!230 = !DILocation(line: 100, column: 13, scope: !212)
!231 = !DILocation(line: 101, column: 13, scope: !228)
!232 = !DILocation(line: 102, column: 23, scope: !212)
!233 = !DILocation(line: 102, column: 9, scope: !212)
!234 = !DILocation(line: 102, column: 13, scope: !212)
!235 = !DILocation(line: 102, column: 21, scope: !212)
!236 = !DILocation(line: 103, column: 5, scope: !212)
!237 = !DILocation(line: 105, column: 22, scope: !32)
!238 = !DILocation(line: 105, column: 26, scope: !32)
!239 = !DILocation(line: 105, column: 37, scope: !32)
!240 = !DILocation(line: 105, column: 10, scope: !32)
!241 = !DILocation(line: 105, column: 14, scope: !32)
!242 = !DILocation(line: 105, column: 7, scope: !32)
!243 = !DILocation(line: 106, column: 17, scope: !32)
!244 = !DILocation(line: 106, column: 5, scope: !32)
!245 = !DILocation(line: 106, column: 8, scope: !32)
!246 = !DILocation(line: 106, column: 15, scope: !32)
!247 = !DILocation(line: 107, column: 16, scope: !32)
!248 = !DILocation(line: 107, column: 5, scope: !32)
!249 = !DILocation(line: 107, column: 8, scope: !32)
!250 = !DILocation(line: 107, column: 14, scope: !32)
!251 = !DILocation(line: 108, column: 19, scope: !32)
!252 = !DILocation(line: 108, column: 5, scope: !32)
!253 = !DILocation(line: 108, column: 8, scope: !32)
!254 = !DILocation(line: 108, column: 17, scope: !32)
!255 = !DILocation(line: 109, column: 23, scope: !32)
!256 = !DILocation(line: 109, column: 5, scope: !32)
!257 = !DILocation(line: 109, column: 8, scope: !32)
!258 = !DILocation(line: 109, column: 21, scope: !32)
!259 = !{!104, !83, i64 20}
!260 = !DILocation(line: 110, column: 5, scope: !32)
!261 = !DILocation(line: 110, column: 8, scope: !32)
!262 = !DILocation(line: 110, column: 20, scope: !32)
!263 = !DILocation(line: 111, column: 5, scope: !32)
!264 = !DILocation(line: 111, column: 8, scope: !32)
!265 = !DILocation(line: 111, column: 16, scope: !32)
!266 = !DILocation(line: 112, column: 5, scope: !32)
!267 = !DILocation(line: 113, column: 1, scope: !32)
!268 = !DILocation(line: 23, column: 19, scope: !64)
!269 = !DILocation(line: 26, column: 5, scope: !64)
!270 = !DILocation(line: 26, column: 9, scope: !64)
!271 = !DILocation(line: 28, column: 5, scope: !64)
!272 = !DILocation(line: 28, column: 12, scope: !273)
!273 = !DILexicalBlockFile(scope: !274, file: !26, discriminator: 2)
!274 = !DILexicalBlockFile(scope: !64, file: !26, discriminator: 1)
!275 = !DILocation(line: 28, column: 21, scope: !64)
!276 = !DILocation(line: 28, column: 19, scope: !64)
!277 = !DILocation(line: 29, column: 16, scope: !278)
!278 = distinct !DILexicalBlock(scope: !64, file: !26, line: 28, column: 24)
!279 = !DILocation(line: 30, column: 13, scope: !280)
!280 = distinct !DILexicalBlock(scope: !278, file: !26, line: 30, column: 13)
!281 = !DILocation(line: 30, column: 20, scope: !280)
!282 = !DILocation(line: 30, column: 13, scope: !278)
!283 = !DILocation(line: 31, column: 13, scope: !280)
!284 = !DILocation(line: 33, column: 12, scope: !64)
!285 = !DILocation(line: 33, column: 5, scope: !64)
!286 = !DILocation(line: 34, column: 1, scope: !64)
!287 = !DILocation(line: 121, column: 19, scope: !46)
!288 = !DILocation(line: 123, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !46, file: !26, line: 123, column: 9)
!290 = !DILocation(line: 123, column: 11, scope: !289)
!291 = !DILocation(line: 123, column: 9, scope: !46)
!292 = !DILocation(line: 124, column: 22, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !26, line: 123, column: 26)
!294 = !DILocation(line: 124, column: 9, scope: !293)
!295 = !DILocation(line: 125, column: 23, scope: !293)
!296 = !DILocation(line: 125, column: 9, scope: !293)
!297 = !DILocation(line: 126, column: 5, scope: !293)
!298 = !DILocation(line: 127, column: 1, scope: !46)
!299 = !DILocation(line: 140, column: 20, scope: !70)
!300 = !DILocation(line: 142, column: 5, scope: !70)
!301 = !DILocation(line: 142, column: 9, scope: !70)
!302 = !DILocation(line: 143, column: 16, scope: !303)
!303 = distinct !DILexicalBlock(scope: !70, file: !26, line: 143, column: 5)
!304 = !DILocation(line: 143, column: 20, scope: !303)
!305 = !DILocation(line: 143, column: 12, scope: !303)
!306 = !DILocation(line: 143, column: 10, scope: !303)
!307 = !DILocation(line: 143, column: 34, scope: !308)
!308 = !DILexicalBlockFile(scope: !309, file: !26, discriminator: 2)
!309 = !DILexicalBlockFile(scope: !310, file: !26, discriminator: 1)
!310 = distinct !DILexicalBlock(scope: !303, file: !26, line: 143, column: 5)
!311 = !DILocation(line: 143, column: 38, scope: !310)
!312 = !DILocation(line: 143, column: 5, scope: !303)
!313 = !DILocation(line: 144, column: 37, scope: !310)
!314 = !DILocation(line: 144, column: 24, scope: !310)
!315 = !DILocation(line: 144, column: 25, scope: !310)
!316 = !DILocation(line: 144, column: 29, scope: !310)
!317 = !DILocation(line: 144, column: 9, scope: !310)
!318 = !DILocation(line: 143, column: 5, scope: !310)
!319 = !DILocation(line: 145, column: 9, scope: !320)
!320 = distinct !DILexicalBlock(scope: !70, file: !26, line: 145, column: 9)
!321 = !DILocation(line: 145, column: 12, scope: !320)
!322 = !DILocation(line: 145, column: 20, scope: !320)
!323 = !DILocation(line: 145, column: 9, scope: !70)
!324 = !DILocation(line: 146, column: 23, scope: !320)
!325 = !DILocation(line: 146, column: 26, scope: !320)
!326 = !DILocation(line: 146, column: 9, scope: !320)
!327 = !DILocation(line: 147, column: 11, scope: !328)
!328 = distinct !DILexicalBlock(scope: !70, file: !26, line: 147, column: 9)
!329 = !DILocation(line: 147, column: 15, scope: !328)
!330 = !DILocation(line: 147, column: 22, scope: !328)
!331 = !DILocation(line: 147, column: 9, scope: !70)
!332 = !DILocation(line: 148, column: 25, scope: !328)
!333 = !DILocation(line: 148, column: 29, scope: !328)
!334 = !DILocation(line: 148, column: 9, scope: !328)
!335 = !DILocation(line: 149, column: 1, scope: !70)
!336 = !DILocation(line: 130, column: 22, scope: !51)
!337 = !DILocation(line: 132, column: 5, scope: !51)
!338 = !DILocation(line: 132, column: 16, scope: !51)
!339 = !{!340, !340, i64 0}
!340 = !{!"long", !84, i64 0}
!341 = !DILocation(line: 134, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !51, file: !26, line: 134, column: 9)
!343 = !DILocation(line: 134, column: 11, scope: !342)
!344 = !DILocation(line: 134, column: 9, scope: !51)
!345 = !DILocation(line: 135, column: 45, scope: !342)
!346 = !DILocation(line: 135, column: 30, scope: !342)
!347 = !DILocation(line: 135, column: 28, scope: !342)
!348 = !DILocation(line: 135, column: 13, scope: !342)
!349 = !DILocation(line: 135, column: 9, scope: !342)
!350 = !DILocation(line: 136, column: 12, scope: !51)
!351 = !DILocation(line: 137, column: 1, scope: !51)
!352 = !DILocation(line: 136, column: 5, scope: !51)
!353 = !DILocation(line: 152, column: 22, scope: !74)
!354 = !DILocation(line: 154, column: 5, scope: !74)
!355 = !DILocation(line: 154, column: 16, scope: !74)
!356 = !DILocation(line: 155, column: 5, scope: !74)
!357 = !DILocation(line: 155, column: 9, scope: !74)
!358 = !DILocation(line: 156, column: 16, scope: !359)
!359 = distinct !DILexicalBlock(scope: !74, file: !26, line: 156, column: 5)
!360 = !DILocation(line: 156, column: 20, scope: !359)
!361 = !DILocation(line: 156, column: 12, scope: !359)
!362 = !DILocation(line: 156, column: 10, scope: !359)
!363 = !DILocation(line: 156, column: 34, scope: !364)
!364 = !DILexicalBlockFile(scope: !365, file: !26, discriminator: 2)
!365 = !DILexicalBlockFile(scope: !366, file: !26, discriminator: 1)
!366 = distinct !DILexicalBlock(scope: !359, file: !26, line: 156, column: 5)
!367 = !DILocation(line: 156, column: 38, scope: !366)
!368 = !DILocation(line: 156, column: 5, scope: !359)
!369 = !DILocation(line: 157, column: 46, scope: !366)
!370 = !DILocation(line: 157, column: 33, scope: !366)
!371 = !DILocation(line: 157, column: 34, scope: !366)
!372 = !DILocation(line: 157, column: 38, scope: !366)
!373 = !DILocation(line: 157, column: 16, scope: !366)
!374 = !DILocation(line: 157, column: 13, scope: !366)
!375 = !DILocation(line: 156, column: 5, scope: !366)
!376 = !DILocation(line: 158, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !74, file: !26, line: 158, column: 9)
!378 = !DILocation(line: 158, column: 12, scope: !377)
!379 = !DILocation(line: 158, column: 20, scope: !377)
!380 = !DILocation(line: 158, column: 9, scope: !74)
!381 = !DILocation(line: 160, column: 20, scope: !377)
!382 = !DILocation(line: 160, column: 24, scope: !377)
!383 = !DILocation(line: 160, column: 38, scope: !377)
!384 = !DILocation(line: 160, column: 17, scope: !377)
!385 = !DILocation(line: 160, column: 48, scope: !386)
!386 = !DILexicalBlockFile(scope: !377, file: !26, discriminator: 1)
!387 = !DILocation(line: 160, column: 52, scope: !377)
!388 = !DILocation(line: 160, column: 45, scope: !377)
!389 = !DILocation(line: 160, column: 71, scope: !390)
!390 = !DILexicalBlockFile(scope: !377, file: !26, discriminator: 2)
!391 = !DILocation(line: 160, column: 75, scope: !377)
!392 = !DILocation(line: 160, column: 89, scope: !377)
!393 = !DILocation(line: 160, column: 68, scope: !377)
!394 = !DILocation(line: 160, column: 112, scope: !395)
!395 = !DILexicalBlockFile(scope: !377, file: !26, discriminator: 4)
!396 = !DILocation(line: 160, column: 116, scope: !377)
!397 = !DILocation(line: 160, column: 100, scope: !377)
!398 = !DILocation(line: 160, column: 131, scope: !377)
!399 = !DILocation(line: 160, column: 152, scope: !377)
!400 = !DILocation(line: 160, column: 192, scope: !401)
!401 = !DILexicalBlockFile(scope: !377, file: !26, discriminator: 5)
!402 = !DILocation(line: 160, column: 196, scope: !377)
!403 = !DILocation(line: 160, column: 176, scope: !377)
!404 = !DILocation(line: 160, column: 17, scope: !405)
!405 = !DILexicalBlockFile(scope: !406, file: !26, discriminator: 7)
!406 = !DILexicalBlockFile(scope: !377, file: !26, discriminator: 6)
!407 = !DILocation(line: 160, column: 211, scope: !408)
!408 = !DILexicalBlockFile(scope: !409, file: !26, discriminator: 8)
!409 = !DILexicalBlockFile(scope: !377, file: !26, discriminator: 3)
!410 = !DILocation(line: 160, column: 13, scope: !377)
!411 = !DILocation(line: 160, column: 9, scope: !377)
!412 = !DILocation(line: 161, column: 11, scope: !413)
!413 = distinct !DILexicalBlock(scope: !74, file: !26, line: 161, column: 9)
!414 = !DILocation(line: 161, column: 15, scope: !413)
!415 = !DILocation(line: 161, column: 22, scope: !413)
!416 = !DILocation(line: 161, column: 9, scope: !74)
!417 = !DILocation(line: 162, column: 25, scope: !413)
!418 = !DILocation(line: 162, column: 29, scope: !413)
!419 = !DILocation(line: 162, column: 16, scope: !413)
!420 = !DILocation(line: 162, column: 37, scope: !413)
!421 = !DILocation(line: 162, column: 13, scope: !413)
!422 = !DILocation(line: 162, column: 9, scope: !413)
!423 = !DILocation(line: 163, column: 12, scope: !74)
!424 = !DILocation(line: 164, column: 1, scope: !74)
!425 = !DILocation(line: 163, column: 5, scope: !74)
