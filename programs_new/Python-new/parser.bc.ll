; ModuleID = 'irs-onlybc/parser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.parser_state = type { %struct.stack, %struct.grammar*, %struct._node*, i64 }
%struct.stack = type { %struct.stackentry*, [1500 x %struct.stackentry] }
%struct.stackentry = type { i32, %struct.dfa*, %struct._node* }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"s_push: parser stack overflow\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.parser_state* @PyParser_New(%struct.grammar* %g, i32 %start) #0 {
entry:
  %retval = alloca %struct.parser_state*, align 8
  %g.addr = alloca %struct.grammar*, align 8
  %start.addr = alloca i32, align 4
  %ps = alloca %struct.parser_state*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !102, metadata !209), !dbg !210
  store i32 %start, i32* %start.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %start.addr, metadata !103, metadata !209), !dbg !213
  %0 = bitcast %struct.parser_state** %ps to i8*, !dbg !214
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !214
  call void @llvm.dbg.declare(metadata %struct.parser_state** %ps, metadata !104, metadata !209), !dbg !215
  %1 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !216, !tbaa !205
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %1, i32 0, i32 4, !dbg !218
  %2 = load i32, i32* %g_accel, align 4, !dbg !218, !tbaa !219
  %tobool = icmp ne i32 %2, 0, !dbg !216
  br i1 %tobool, label %if.end, label %if.then, !dbg !222

if.then:                                          ; preds = %entry
  %3 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !223, !tbaa !205
  call void @PyGrammar_AddAccelerators(%struct.grammar* %3), !dbg !224
  br label %if.end, !dbg !224

if.end:                                           ; preds = %if.then, %entry
  %call = call i8* @PyMem_Malloc(i64 36032), !dbg !225
  %4 = bitcast i8* %call to %struct.parser_state*, !dbg !226
  store %struct.parser_state* %4, %struct.parser_state** %ps, align 8, !dbg !227, !tbaa !205
  %5 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !228, !tbaa !205
  %cmp = icmp eq %struct.parser_state* %5, null, !dbg !230
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !231

if.then.1:                                        ; preds = %if.end
  store %struct.parser_state* null, %struct.parser_state** %retval, !dbg !232
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !232

if.end.2:                                         ; preds = %if.end
  %6 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !233, !tbaa !205
  %7 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !234, !tbaa !205
  %p_grammar = getelementptr inbounds %struct.parser_state, %struct.parser_state* %7, i32 0, i32 1, !dbg !235
  store %struct.grammar* %6, %struct.grammar** %p_grammar, align 8, !dbg !236, !tbaa !237
  %8 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !241, !tbaa !205
  %p_flags = getelementptr inbounds %struct.parser_state, %struct.parser_state* %8, i32 0, i32 3, !dbg !242
  store i64 0, i64* %p_flags, align 8, !dbg !243, !tbaa !244
  %9 = load i32, i32* %start.addr, align 4, !dbg !245, !tbaa !211
  %call3 = call %struct._node* @PyNode_New(i32 %9), !dbg !246
  %10 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !247, !tbaa !205
  %p_tree = getelementptr inbounds %struct.parser_state, %struct.parser_state* %10, i32 0, i32 2, !dbg !248
  store %struct._node* %call3, %struct._node** %p_tree, align 8, !dbg !249, !tbaa !250
  %11 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !251, !tbaa !205
  %p_tree4 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %11, i32 0, i32 2, !dbg !253
  %12 = load %struct._node*, %struct._node** %p_tree4, align 8, !dbg !253, !tbaa !250
  %cmp5 = icmp eq %struct._node* %12, null, !dbg !254
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !255

if.then.6:                                        ; preds = %if.end.2
  %13 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !256, !tbaa !205
  %14 = bitcast %struct.parser_state* %13 to i8*, !dbg !256
  call void @PyMem_Free(i8* %14), !dbg !258
  store %struct.parser_state* null, %struct.parser_state** %retval, !dbg !259
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !259

if.end.7:                                         ; preds = %if.end.2
  %15 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !260, !tbaa !205
  %p_stack = getelementptr inbounds %struct.parser_state, %struct.parser_state* %15, i32 0, i32 0, !dbg !261
  call void @s_reset(%struct.stack* %p_stack), !dbg !262
  %16 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !263, !tbaa !205
  %p_stack8 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %16, i32 0, i32 0, !dbg !264
  %17 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !265, !tbaa !205
  %18 = load i32, i32* %start.addr, align 4, !dbg !266, !tbaa !211
  %call9 = call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %17, i32 %18), !dbg !267
  %19 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !268, !tbaa !205
  %p_tree10 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %19, i32 0, i32 2, !dbg !269
  %20 = load %struct._node*, %struct._node** %p_tree10, align 8, !dbg !269, !tbaa !250
  %call11 = call i32 @s_push(%struct.stack* %p_stack8, %struct.dfa* %call9, %struct._node* %20), !dbg !270
  %21 = load %struct.parser_state*, %struct.parser_state** %ps, align 8, !dbg !271, !tbaa !205
  store %struct.parser_state* %21, %struct.parser_state** %retval, !dbg !272
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !272

cleanup:                                          ; preds = %if.end.7, %if.then.6, %if.then.1
  %22 = bitcast %struct.parser_state** %ps to i8*, !dbg !273
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !273
  %23 = load %struct.parser_state*, %struct.parser_state** %retval, !dbg !273
  ret %struct.parser_state* %23, !dbg !273
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare void @PyGrammar_AddAccelerators(%struct.grammar*) #3

declare i8* @PyMem_Malloc(i64) #3

declare %struct._node* @PyNode_New(i32) #3

declare void @PyMem_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @s_reset(%struct.stack* %s) #0 {
entry:
  %s.addr = alloca %struct.stack*, align 8
  store %struct.stack* %s, %struct.stack** %s.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.stack** %s.addr, metadata !142, metadata !209), !dbg !274
  %0 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !275, !tbaa !205
  %s_base = getelementptr inbounds %struct.stack, %struct.stack* %0, i32 0, i32 1, !dbg !276
  %arrayidx = getelementptr [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base, i32 0, i64 1500, !dbg !275
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !277, !tbaa !205
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0, !dbg !278
  store %struct.stackentry* %arrayidx, %struct.stackentry** %s_top, align 8, !dbg !279, !tbaa !280
  ret void, !dbg !281
}

; Function Attrs: nounwind uwtable
define internal i32 @s_push(%struct.stack* %s, %struct.dfa* %d, %struct._node* %parent) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stack*, align 8
  %d.addr = alloca %struct.dfa*, align 8
  %parent.addr = alloca %struct._node*, align 8
  %top = alloca %struct.stackentry*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stack* %s, %struct.stack** %s.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.stack** %s.addr, metadata !147, metadata !209), !dbg !282
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.dfa** %d.addr, metadata !148, metadata !209), !dbg !283
  store %struct._node* %parent, %struct._node** %parent.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct._node** %parent.addr, metadata !149, metadata !209), !dbg !284
  %0 = bitcast %struct.stackentry** %top to i8*, !dbg !285
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !285
  call void @llvm.dbg.declare(metadata %struct.stackentry** %top, metadata !150, metadata !209), !dbg !286
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !287, !tbaa !205
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0, !dbg !289
  %2 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8, !dbg !289, !tbaa !280
  %3 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !290, !tbaa !205
  %s_base = getelementptr inbounds %struct.stack, %struct.stack* %3, i32 0, i32 1, !dbg !291
  %arraydecay = getelementptr inbounds [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base, i32 0, i32 0, !dbg !290
  %cmp = icmp eq %struct.stackentry* %2, %arraydecay, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !294, !tbaa !205
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0)), !dbg !296
  store i32 15, i32* %retval, !dbg !297
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !297

if.end:                                           ; preds = %entry
  %5 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !298, !tbaa !205
  %s_top1 = getelementptr inbounds %struct.stack, %struct.stack* %5, i32 0, i32 0, !dbg !299
  %6 = load %struct.stackentry*, %struct.stackentry** %s_top1, align 8, !dbg !300, !tbaa !280
  %incdec.ptr = getelementptr %struct.stackentry, %struct.stackentry* %6, i32 -1, !dbg !300
  store %struct.stackentry* %incdec.ptr, %struct.stackentry** %s_top1, align 8, !dbg !300, !tbaa !280
  store %struct.stackentry* %incdec.ptr, %struct.stackentry** %top, align 8, !dbg !301, !tbaa !205
  %7 = load %struct.dfa*, %struct.dfa** %d.addr, align 8, !dbg !302, !tbaa !205
  %8 = load %struct.stackentry*, %struct.stackentry** %top, align 8, !dbg !303, !tbaa !205
  %s_dfa = getelementptr inbounds %struct.stackentry, %struct.stackentry* %8, i32 0, i32 1, !dbg !304
  store %struct.dfa* %7, %struct.dfa** %s_dfa, align 8, !dbg !305, !tbaa !306
  %9 = load %struct._node*, %struct._node** %parent.addr, align 8, !dbg !308, !tbaa !205
  %10 = load %struct.stackentry*, %struct.stackentry** %top, align 8, !dbg !309, !tbaa !205
  %s_parent = getelementptr inbounds %struct.stackentry, %struct.stackentry* %10, i32 0, i32 2, !dbg !310
  store %struct._node* %9, %struct._node** %s_parent, align 8, !dbg !311, !tbaa !312
  %11 = load %struct.stackentry*, %struct.stackentry** %top, align 8, !dbg !313, !tbaa !205
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %11, i32 0, i32 0, !dbg !314
  store i32 0, i32* %s_state, align 4, !dbg !315, !tbaa !316
  store i32 0, i32* %retval, !dbg !317
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !317

cleanup:                                          ; preds = %if.end, %if.then
  %12 = bitcast %struct.stackentry** %top to i8*, !dbg !318
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !318
  %13 = load i32, i32* %retval, !dbg !318
  ret i32 %13, !dbg !318
}

declare %struct.dfa* @PyGrammar_FindDFA(%struct.grammar*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @PyParser_Delete(%struct.parser_state* %ps) #0 {
entry:
  %ps.addr = alloca %struct.parser_state*, align 8
  store %struct.parser_state* %ps, %struct.parser_state** %ps.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.parser_state** %ps.addr, metadata !109, metadata !209), !dbg !319
  %0 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !320, !tbaa !205
  %p_tree = getelementptr inbounds %struct.parser_state, %struct.parser_state* %0, i32 0, i32 2, !dbg !321
  %1 = load %struct._node*, %struct._node** %p_tree, align 8, !dbg !321, !tbaa !250
  call void @PyNode_Free(%struct._node* %1), !dbg !322
  %2 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !323, !tbaa !205
  %3 = bitcast %struct.parser_state* %2 to i8*, !dbg !323
  call void @PyMem_Free(i8* %3), !dbg !324
  ret void, !dbg !325
}

declare void @PyNode_Free(%struct._node*) #3

; Function Attrs: nounwind uwtable
define i32 @PyParser_AddToken(%struct.parser_state* %ps, i32 %type, i8* %str, i32 %lineno, i32 %col_offset, i32* %expected_ret) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca %struct.parser_state*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %expected_ret.addr = alloca i32*, align 8
  %ilabel = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %d = alloca %struct.dfa*, align 8
  %s = alloca %struct.state*, align 8
  %x = alloca i32, align 4
  %nt = alloca i32, align 4
  %arrow = alloca i32, align 4
  %d1 = alloca %struct.dfa*, align 8
  store %struct.parser_state* %ps, %struct.parser_state** %ps.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.parser_state** %ps.addr, metadata !114, metadata !209), !dbg !326
  store i32 %type, i32* %type.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !115, metadata !209), !dbg !327
  store i8* %str, i8** %str.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !116, metadata !209), !dbg !328
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !117, metadata !209), !dbg !329
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !118, metadata !209), !dbg !330
  store i32* %expected_ret, i32** %expected_ret.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata i32** %expected_ret.addr, metadata !119, metadata !209), !dbg !331
  %0 = bitcast i32* %ilabel to i8*, !dbg !332
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !332
  call void @llvm.dbg.declare(metadata i32* %ilabel, metadata !120, metadata !209), !dbg !333
  %1 = bitcast i32* %err to i8*, !dbg !334
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !334
  call void @llvm.dbg.declare(metadata i32* %err, metadata !121, metadata !209), !dbg !335
  %2 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !336, !tbaa !205
  %3 = load i32, i32* %type.addr, align 4, !dbg !337, !tbaa !211
  %4 = load i8*, i8** %str.addr, align 8, !dbg !338, !tbaa !205
  %call = call i32 @classify(%struct.parser_state* %2, i32 %3, i8* %4), !dbg !339
  store i32 %call, i32* %ilabel, align 4, !dbg !340, !tbaa !211
  %5 = load i32, i32* %ilabel, align 4, !dbg !341, !tbaa !211
  %cmp = icmp slt i32 %5, 0, !dbg !343
  br i1 %cmp, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %entry
  store i32 14, i32* %retval, !dbg !345
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.81, !dbg !345

if.end:                                           ; preds = %entry
  br label %for.cond, !dbg !346

for.cond:                                         ; preds = %cleanup.78, %if.end
  %6 = bitcast %struct.dfa** %d to i8*, !dbg !347
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !347
  call void @llvm.dbg.declare(metadata %struct.dfa** %d, metadata !122, metadata !209), !dbg !348
  %7 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !349, !tbaa !205
  %p_stack = getelementptr inbounds %struct.parser_state, %struct.parser_state* %7, i32 0, i32 0, !dbg !350
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %p_stack, i32 0, i32 0, !dbg !351
  %8 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8, !dbg !351, !tbaa !352
  %s_dfa = getelementptr inbounds %struct.stackentry, %struct.stackentry* %8, i32 0, i32 1, !dbg !353
  %9 = load %struct.dfa*, %struct.dfa** %s_dfa, align 8, !dbg !353, !tbaa !306
  store %struct.dfa* %9, %struct.dfa** %d, align 8, !dbg !348, !tbaa !205
  %10 = bitcast %struct.state** %s to i8*, !dbg !354
  call void @llvm.lifetime.start(i64 8, i8* %10) #2, !dbg !354
  call void @llvm.dbg.declare(metadata %struct.state** %s, metadata !126, metadata !209), !dbg !355
  %11 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !356, !tbaa !205
  %p_stack1 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %11, i32 0, i32 0, !dbg !357
  %s_top2 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack1, i32 0, i32 0, !dbg !358
  %12 = load %struct.stackentry*, %struct.stackentry** %s_top2, align 8, !dbg !358, !tbaa !352
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %12, i32 0, i32 0, !dbg !359
  %13 = load i32, i32* %s_state, align 4, !dbg !359, !tbaa !316
  %idxprom = sext i32 %13 to i64, !dbg !360
  %14 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !360, !tbaa !205
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %14, i32 0, i32 4, !dbg !361
  %15 = load %struct.state*, %struct.state** %d_state, align 8, !dbg !361, !tbaa !362
  %arrayidx = getelementptr %struct.state, %struct.state* %15, i64 %idxprom, !dbg !360
  store %struct.state* %arrayidx, %struct.state** %s, align 8, !dbg !355, !tbaa !205
  %16 = load %struct.state*, %struct.state** %s, align 8, !dbg !364, !tbaa !205
  %s_lower = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 2, !dbg !365
  %17 = load i32, i32* %s_lower, align 4, !dbg !365, !tbaa !366
  %18 = load i32, i32* %ilabel, align 4, !dbg !368, !tbaa !211
  %cmp3 = icmp sle i32 %17, %18, !dbg !369
  br i1 %cmp3, label %land.lhs.true, label %if.end.49, !dbg !370

land.lhs.true:                                    ; preds = %for.cond
  %19 = load i32, i32* %ilabel, align 4, !dbg !371, !tbaa !211
  %20 = load %struct.state*, %struct.state** %s, align 8, !dbg !373, !tbaa !205
  %s_upper = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 3, !dbg !374
  %21 = load i32, i32* %s_upper, align 4, !dbg !374, !tbaa !375
  %cmp4 = icmp slt i32 %19, %21, !dbg !376
  br i1 %cmp4, label %if.then.5, label %if.end.49, !dbg !377

if.then.5:                                        ; preds = %land.lhs.true
  %22 = bitcast i32* %x to i8*, !dbg !378
  call void @llvm.lifetime.start(i64 4, i8* %22) #2, !dbg !378
  call void @llvm.dbg.declare(metadata i32* %x, metadata !127, metadata !209), !dbg !379
  %23 = load i32, i32* %ilabel, align 4, !dbg !380, !tbaa !211
  %24 = load %struct.state*, %struct.state** %s, align 8, !dbg !381, !tbaa !205
  %s_lower6 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 2, !dbg !382
  %25 = load i32, i32* %s_lower6, align 4, !dbg !382, !tbaa !366
  %sub = sub i32 %23, %25, !dbg !383
  %idxprom7 = sext i32 %sub to i64, !dbg !384
  %26 = load %struct.state*, %struct.state** %s, align 8, !dbg !384, !tbaa !205
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 4, !dbg !385
  %27 = load i32*, i32** %s_accel, align 8, !dbg !385, !tbaa !386
  %arrayidx8 = getelementptr i32, i32* %27, i64 %idxprom7, !dbg !384
  %28 = load i32, i32* %arrayidx8, align 4, !dbg !384, !tbaa !211
  store i32 %28, i32* %x, align 4, !dbg !379, !tbaa !211
  %29 = load i32, i32* %x, align 4, !dbg !387, !tbaa !211
  %cmp9 = icmp ne i32 %29, -1, !dbg !388
  br i1 %cmp9, label %if.then.10, label %if.end.47, !dbg !389

if.then.10:                                       ; preds = %if.then.5
  %30 = load i32, i32* %x, align 4, !dbg !390, !tbaa !211
  %and = and i32 %30, 128, !dbg !391
  %tobool = icmp ne i32 %and, 0, !dbg !391
  br i1 %tobool, label %if.then.11, label %if.end.21, !dbg !392

if.then.11:                                       ; preds = %if.then.10
  %31 = bitcast i32* %nt to i8*, !dbg !393
  call void @llvm.lifetime.start(i64 4, i8* %31) #2, !dbg !393
  call void @llvm.dbg.declare(metadata i32* %nt, metadata !130, metadata !209), !dbg !394
  %32 = load i32, i32* %x, align 4, !dbg !395, !tbaa !211
  %shr = ashr i32 %32, 8, !dbg !396
  %add = add i32 %shr, 256, !dbg !397
  store i32 %add, i32* %nt, align 4, !dbg !394, !tbaa !211
  %33 = bitcast i32* %arrow to i8*, !dbg !398
  call void @llvm.lifetime.start(i64 4, i8* %33) #2, !dbg !398
  call void @llvm.dbg.declare(metadata i32* %arrow, metadata !135, metadata !209), !dbg !399
  %34 = load i32, i32* %x, align 4, !dbg !400, !tbaa !211
  %and12 = and i32 %34, 127, !dbg !401
  store i32 %and12, i32* %arrow, align 4, !dbg !399, !tbaa !211
  %35 = bitcast %struct.dfa** %d1 to i8*, !dbg !402
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !402
  call void @llvm.dbg.declare(metadata %struct.dfa** %d1, metadata !136, metadata !209), !dbg !403
  %36 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !404, !tbaa !205
  %p_grammar = getelementptr inbounds %struct.parser_state, %struct.parser_state* %36, i32 0, i32 1, !dbg !405
  %37 = load %struct.grammar*, %struct.grammar** %p_grammar, align 8, !dbg !405, !tbaa !237
  %38 = load i32, i32* %nt, align 4, !dbg !406, !tbaa !211
  %call13 = call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %37, i32 %38), !dbg !407
  store %struct.dfa* %call13, %struct.dfa** %d1, align 8, !dbg !403, !tbaa !205
  %39 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !408, !tbaa !205
  %p_stack14 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %39, i32 0, i32 0, !dbg !410
  %40 = load i32, i32* %nt, align 4, !dbg !411, !tbaa !211
  %41 = load %struct.dfa*, %struct.dfa** %d1, align 8, !dbg !412, !tbaa !205
  %42 = load i32, i32* %arrow, align 4, !dbg !413, !tbaa !211
  %43 = load i32, i32* %lineno.addr, align 4, !dbg !414, !tbaa !211
  %44 = load i32, i32* %col_offset.addr, align 4, !dbg !415, !tbaa !211
  %call15 = call i32 @push(%struct.stack* %p_stack14, i32 %40, %struct.dfa* %41, i32 %42, i32 %43, i32 %44), !dbg !416
  store i32 %call15, i32* %err, align 4, !dbg !417, !tbaa !211
  %cmp16 = icmp sgt i32 %call15, 0, !dbg !418
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !419

if.then.17:                                       ; preds = %if.then.11
  %45 = load i32, i32* %err, align 4, !dbg !420, !tbaa !211
  store i32 %45, i32* %retval, !dbg !422
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !422

if.end.18:                                        ; preds = %if.then.11
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !423

cleanup:                                          ; preds = %if.end.18, %if.then.17
  %46 = bitcast %struct.dfa** %d1 to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !424
  %47 = bitcast i32* %arrow to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 4, i8* %47) #2, !dbg !424
  %48 = bitcast i32* %nt to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 4, i8* %48) #2, !dbg !424
  br label %cleanup.48

if.end.21:                                        ; preds = %if.then.10
  %49 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !425, !tbaa !205
  %p_stack22 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %49, i32 0, i32 0, !dbg !427
  %50 = load i32, i32* %type.addr, align 4, !dbg !428, !tbaa !211
  %51 = load i8*, i8** %str.addr, align 8, !dbg !429, !tbaa !205
  %52 = load i32, i32* %x, align 4, !dbg !430, !tbaa !211
  %53 = load i32, i32* %lineno.addr, align 4, !dbg !431, !tbaa !211
  %54 = load i32, i32* %col_offset.addr, align 4, !dbg !432, !tbaa !211
  %call23 = call i32 @shift(%struct.stack* %p_stack22, i32 %50, i8* %51, i32 %52, i32 %53, i32 %54), !dbg !433
  store i32 %call23, i32* %err, align 4, !dbg !434, !tbaa !211
  %cmp24 = icmp sgt i32 %call23, 0, !dbg !435
  br i1 %cmp24, label %if.then.25, label %if.end.26, !dbg !436

if.then.25:                                       ; preds = %if.end.21
  %55 = load i32, i32* %err, align 4, !dbg !437, !tbaa !211
  store i32 %55, i32* %retval, !dbg !439
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !439

if.end.26:                                        ; preds = %if.end.21
  br label %while.cond, !dbg !440

while.cond:                                       ; preds = %if.end.43, %if.end.26
  %56 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !441, !tbaa !205
  %p_stack27 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %56, i32 0, i32 0, !dbg !442
  %s_top28 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack27, i32 0, i32 0, !dbg !443
  %57 = load %struct.stackentry*, %struct.stackentry** %s_top28, align 8, !dbg !443, !tbaa !352
  %s_state29 = getelementptr inbounds %struct.stackentry, %struct.stackentry* %57, i32 0, i32 0, !dbg !444
  %58 = load i32, i32* %s_state29, align 4, !dbg !444, !tbaa !316
  %idxprom30 = sext i32 %58 to i64, !dbg !445
  %59 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !445, !tbaa !205
  %d_state31 = getelementptr inbounds %struct.dfa, %struct.dfa* %59, i32 0, i32 4, !dbg !446
  %60 = load %struct.state*, %struct.state** %d_state31, align 8, !dbg !446, !tbaa !362
  %arrayidx32 = getelementptr %struct.state, %struct.state* %60, i64 %idxprom30, !dbg !445
  store %struct.state* %arrayidx32, %struct.state** %s, align 8, !dbg !447, !tbaa !205
  %61 = load %struct.state*, %struct.state** %s, align 8, !dbg !448, !tbaa !205
  %s_accept = getelementptr inbounds %struct.state, %struct.state* %61, i32 0, i32 5, !dbg !449
  %62 = load i32, i32* %s_accept, align 4, !dbg !449, !tbaa !450
  %tobool33 = icmp ne i32 %62, 0, !dbg !448
  br i1 %tobool33, label %land.rhs, label %land.end, !dbg !451

land.rhs:                                         ; preds = %while.cond
  %63 = load %struct.state*, %struct.state** %s, align 8, !dbg !452, !tbaa !205
  %s_narcs = getelementptr inbounds %struct.state, %struct.state* %63, i32 0, i32 0, !dbg !454
  %64 = load i32, i32* %s_narcs, align 4, !dbg !454, !tbaa !455
  %cmp34 = icmp eq i32 %64, 1, !dbg !456
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %65 = phi i1 [ false, %while.cond ], [ %cmp34, %land.rhs ]
  br i1 %65, label %while.body, label %while.end, !dbg !440

while.body:                                       ; preds = %land.end
  %66 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !457, !tbaa !205
  %p_stack35 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %66, i32 0, i32 0, !dbg !459
  %s_top36 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack35, i32 0, i32 0, !dbg !460
  %67 = load %struct.stackentry*, %struct.stackentry** %s_top36, align 8, !dbg !461, !tbaa !280
  %incdec.ptr = getelementptr %struct.stackentry, %struct.stackentry* %67, i32 1, !dbg !461
  store %struct.stackentry* %incdec.ptr, %struct.stackentry** %s_top36, align 8, !dbg !461, !tbaa !280
  %68 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !462, !tbaa !205
  %p_stack37 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %68, i32 0, i32 0, !dbg !464
  %s_top38 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack37, i32 0, i32 0, !dbg !465
  %69 = load %struct.stackentry*, %struct.stackentry** %s_top38, align 8, !dbg !465, !tbaa !280
  %70 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !466, !tbaa !205
  %p_stack39 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %70, i32 0, i32 0, !dbg !467
  %s_base = getelementptr inbounds %struct.stack, %struct.stack* %p_stack39, i32 0, i32 1, !dbg !468
  %arrayidx40 = getelementptr [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base, i32 0, i64 1500, !dbg !469
  %cmp41 = icmp eq %struct.stackentry* %69, %arrayidx40, !dbg !470
  br i1 %cmp41, label %if.then.42, label %if.end.43, !dbg !471

if.then.42:                                       ; preds = %while.body
  store i32 16, i32* %retval, !dbg !472
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !472

if.end.43:                                        ; preds = %while.body
  %71 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !474, !tbaa !205
  %p_stack44 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %71, i32 0, i32 0, !dbg !475
  %s_top45 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack44, i32 0, i32 0, !dbg !476
  %72 = load %struct.stackentry*, %struct.stackentry** %s_top45, align 8, !dbg !476, !tbaa !352
  %s_dfa46 = getelementptr inbounds %struct.stackentry, %struct.stackentry* %72, i32 0, i32 1, !dbg !477
  %73 = load %struct.dfa*, %struct.dfa** %s_dfa46, align 8, !dbg !477, !tbaa !306
  store %struct.dfa* %73, %struct.dfa** %d, align 8, !dbg !478, !tbaa !205
  br label %while.cond, !dbg !440

while.end:                                        ; preds = %land.end
  store i32 10, i32* %retval, !dbg !479
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.48, !dbg !479

if.end.47:                                        ; preds = %if.then.5
  store i32 0, i32* %cleanup.dest.slot, !dbg !480
  br label %cleanup.48, !dbg !480

cleanup.48:                                       ; preds = %if.end.47, %while.end, %if.then.42, %if.then.25, %cleanup
  %74 = bitcast i32* %x to i8*, !dbg !481
  call void @llvm.lifetime.end(i64 4, i8* %74) #2, !dbg !481
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.78 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup.48
  br label %if.end.49, !dbg !482

if.end.49:                                        ; preds = %cleanup.cont, %land.lhs.true, %for.cond
  %75 = load %struct.state*, %struct.state** %s, align 8, !dbg !483, !tbaa !205
  %s_accept50 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 5, !dbg !485
  %76 = load i32, i32* %s_accept50, align 4, !dbg !485, !tbaa !450
  %tobool51 = icmp ne i32 %76, 0, !dbg !483
  br i1 %tobool51, label %if.then.52, label %if.end.64, !dbg !486

if.then.52:                                       ; preds = %if.end.49
  %77 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !487, !tbaa !205
  %p_stack53 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %77, i32 0, i32 0, !dbg !489
  %s_top54 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack53, i32 0, i32 0, !dbg !490
  %78 = load %struct.stackentry*, %struct.stackentry** %s_top54, align 8, !dbg !491, !tbaa !280
  %incdec.ptr55 = getelementptr %struct.stackentry, %struct.stackentry* %78, i32 1, !dbg !491
  store %struct.stackentry* %incdec.ptr55, %struct.stackentry** %s_top54, align 8, !dbg !491, !tbaa !280
  %79 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !492, !tbaa !205
  %p_stack56 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %79, i32 0, i32 0, !dbg !494
  %s_top57 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack56, i32 0, i32 0, !dbg !495
  %80 = load %struct.stackentry*, %struct.stackentry** %s_top57, align 8, !dbg !495, !tbaa !280
  %81 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !496, !tbaa !205
  %p_stack58 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %81, i32 0, i32 0, !dbg !497
  %s_base59 = getelementptr inbounds %struct.stack, %struct.stack* %p_stack58, i32 0, i32 1, !dbg !498
  %arrayidx60 = getelementptr [1500 x %struct.stackentry], [1500 x %struct.stackentry]* %s_base59, i32 0, i64 1500, !dbg !499
  %cmp61 = icmp eq %struct.stackentry* %80, %arrayidx60, !dbg !500
  br i1 %cmp61, label %if.then.62, label %if.end.63, !dbg !501

if.then.62:                                       ; preds = %if.then.52
  store i32 14, i32* %retval, !dbg !502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78, !dbg !502

if.end.63:                                        ; preds = %if.then.52
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup.78, !dbg !504

if.end.64:                                        ; preds = %if.end.49
  %82 = load i32*, i32** %expected_ret.addr, align 8, !dbg !505, !tbaa !205
  %tobool65 = icmp ne i32* %82, null, !dbg !505
  br i1 %tobool65, label %if.then.66, label %if.end.77, !dbg !507

if.then.66:                                       ; preds = %if.end.64
  %83 = load %struct.state*, %struct.state** %s, align 8, !dbg !508, !tbaa !205
  %s_lower67 = getelementptr inbounds %struct.state, %struct.state* %83, i32 0, i32 2, !dbg !511
  %84 = load i32, i32* %s_lower67, align 4, !dbg !511, !tbaa !366
  %85 = load %struct.state*, %struct.state** %s, align 8, !dbg !512, !tbaa !205
  %s_upper68 = getelementptr inbounds %struct.state, %struct.state* %85, i32 0, i32 3, !dbg !513
  %86 = load i32, i32* %s_upper68, align 4, !dbg !513, !tbaa !375
  %sub69 = sub i32 %86, 1, !dbg !514
  %cmp70 = icmp eq i32 %84, %sub69, !dbg !515
  br i1 %cmp70, label %if.then.71, label %if.else, !dbg !516

if.then.71:                                       ; preds = %if.then.66
  %87 = load %struct.state*, %struct.state** %s, align 8, !dbg !517, !tbaa !205
  %s_lower72 = getelementptr inbounds %struct.state, %struct.state* %87, i32 0, i32 2, !dbg !519
  %88 = load i32, i32* %s_lower72, align 4, !dbg !519, !tbaa !366
  %idxprom73 = sext i32 %88 to i64, !dbg !520
  %89 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !520, !tbaa !205
  %p_grammar74 = getelementptr inbounds %struct.parser_state, %struct.parser_state* %89, i32 0, i32 1, !dbg !521
  %90 = load %struct.grammar*, %struct.grammar** %p_grammar74, align 8, !dbg !521, !tbaa !237
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %90, i32 0, i32 2, !dbg !522
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 1, !dbg !523
  %91 = load %struct.label*, %struct.label** %ll_label, align 8, !dbg !523, !tbaa !524
  %arrayidx75 = getelementptr %struct.label, %struct.label* %91, i64 %idxprom73, !dbg !520
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %arrayidx75, i32 0, i32 0, !dbg !525
  %92 = load i32, i32* %lb_type, align 4, !dbg !525, !tbaa !526
  %93 = load i32*, i32** %expected_ret.addr, align 8, !dbg !527, !tbaa !205
  store i32 %92, i32* %93, align 4, !dbg !528, !tbaa !211
  br label %if.end.76, !dbg !529

if.else:                                          ; preds = %if.then.66
  %94 = load i32*, i32** %expected_ret.addr, align 8, !dbg !530, !tbaa !205
  store i32 -1, i32* %94, align 4, !dbg !531, !tbaa !211
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.71
  br label %if.end.77, !dbg !532

if.end.77:                                        ; preds = %if.end.76, %if.end.64
  store i32 14, i32* %retval, !dbg !533
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.78, !dbg !533

cleanup.78:                                       ; preds = %if.end.77, %if.end.63, %if.then.62, %cleanup.48
  %95 = bitcast %struct.state** %s to i8*, !dbg !534
  call void @llvm.lifetime.end(i64 8, i8* %95) #2, !dbg !534
  %96 = bitcast %struct.dfa** %d to i8*, !dbg !534
  call void @llvm.lifetime.end(i64 8, i8* %96) #2, !dbg !534
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %cleanup.81 [
    i32 3, label %for.cond
  ]

cleanup.81:                                       ; preds = %cleanup.78, %if.then
  %97 = bitcast i32* %err to i8*, !dbg !535
  call void @llvm.lifetime.end(i64 4, i8* %97) #2, !dbg !535
  %98 = bitcast i32* %ilabel to i8*, !dbg !535
  call void @llvm.lifetime.end(i64 4, i8* %98) #2, !dbg !535
  %99 = load i32, i32* %retval, !dbg !535
  ret i32 %99, !dbg !535
}

; Function Attrs: nounwind uwtable
define internal i32 @classify(%struct.parser_state* %ps, i32 %type, i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %ps.addr = alloca %struct.parser_state*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %g = alloca %struct.grammar*, align 8
  %n = alloca i32, align 4
  %s = alloca i8*, align 8
  %l = alloca %struct.label*, align 8
  %i = alloca i32, align 4
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %l20 = alloca %struct.label*, align 8
  %i24 = alloca i32, align 4
  store %struct.parser_state* %ps, %struct.parser_state** %ps.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.parser_state** %ps.addr, metadata !157, metadata !209), !dbg !536
  store i32 %type, i32* %type.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !158, metadata !209), !dbg !537
  store i8* %str, i8** %str.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !159, metadata !209), !dbg !538
  %0 = bitcast %struct.grammar** %g to i8*, !dbg !539
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !539
  call void @llvm.dbg.declare(metadata %struct.grammar** %g, metadata !160, metadata !209), !dbg !540
  %1 = load %struct.parser_state*, %struct.parser_state** %ps.addr, align 8, !dbg !541, !tbaa !205
  %p_grammar = getelementptr inbounds %struct.parser_state, %struct.parser_state* %1, i32 0, i32 1, !dbg !542
  %2 = load %struct.grammar*, %struct.grammar** %p_grammar, align 8, !dbg !542, !tbaa !237
  store %struct.grammar* %2, %struct.grammar** %g, align 8, !dbg !540, !tbaa !205
  %3 = bitcast i32* %n to i8*, !dbg !543
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !543
  call void @llvm.dbg.declare(metadata i32* %n, metadata !161, metadata !209), !dbg !544
  %4 = load %struct.grammar*, %struct.grammar** %g, align 8, !dbg !545, !tbaa !205
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %4, i32 0, i32 2, !dbg !546
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 0, !dbg !547
  %5 = load i32, i32* %ll_nlabels, align 4, !dbg !547, !tbaa !548
  store i32 %5, i32* %n, align 4, !dbg !544, !tbaa !211
  %6 = load i32, i32* %type.addr, align 4, !dbg !549, !tbaa !211
  %cmp = icmp eq i32 %6, 1, !dbg !550
  br i1 %cmp, label %if.then, label %if.end.18, !dbg !551

if.then:                                          ; preds = %entry
  %7 = bitcast i8** %s to i8*, !dbg !552
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !552
  call void @llvm.dbg.declare(metadata i8** %s, metadata !162, metadata !209), !dbg !553
  %8 = load i8*, i8** %str.addr, align 8, !dbg !554, !tbaa !205
  store i8* %8, i8** %s, align 8, !dbg !553, !tbaa !205
  %9 = bitcast %struct.label** %l to i8*, !dbg !555
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !555
  call void @llvm.dbg.declare(metadata %struct.label** %l, metadata !165, metadata !209), !dbg !556
  %10 = load %struct.grammar*, %struct.grammar** %g, align 8, !dbg !557, !tbaa !205
  %g_ll1 = getelementptr inbounds %struct.grammar, %struct.grammar* %10, i32 0, i32 2, !dbg !558
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll1, i32 0, i32 1, !dbg !559
  %11 = load %struct.label*, %struct.label** %ll_label, align 8, !dbg !559, !tbaa !524
  store %struct.label* %11, %struct.label** %l, align 8, !dbg !556, !tbaa !205
  %12 = bitcast i32* %i to i8*, !dbg !560
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !560
  call void @llvm.dbg.declare(metadata i32* %i, metadata !166, metadata !209), !dbg !561
  %13 = load i32, i32* %n, align 4, !dbg !562, !tbaa !211
  store i32 %13, i32* %i, align 4, !dbg !563, !tbaa !211
  br label %for.cond, !dbg !564

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4, !dbg !565, !tbaa !211
  %cmp2 = icmp sgt i32 %14, 0, !dbg !568
  br i1 %cmp2, label %for.body, label %for.end, !dbg !569

for.body:                                         ; preds = %for.cond
  %15 = load %struct.label*, %struct.label** %l, align 8, !dbg !570, !tbaa !205
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %15, i32 0, i32 0, !dbg !571
  %16 = load i32, i32* %lb_type, align 4, !dbg !571, !tbaa !526
  %cmp3 = icmp ne i32 %16, 1, !dbg !572
  br i1 %cmp3, label %if.then.15, label %lor.lhs.false, !dbg !573

lor.lhs.false:                                    ; preds = %for.body
  %17 = load %struct.label*, %struct.label** %l, align 8, !dbg !574, !tbaa !205
  %lb_str = getelementptr inbounds %struct.label, %struct.label* %17, i32 0, i32 1, !dbg !576
  %18 = load i8*, i8** %lb_str, align 8, !dbg !576, !tbaa !577
  %cmp4 = icmp eq i8* %18, null, !dbg !578
  br i1 %cmp4, label %if.then.15, label %lor.lhs.false.5, !dbg !579

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %19 = load %struct.label*, %struct.label** %l, align 8, !dbg !580, !tbaa !205
  %lb_str6 = getelementptr inbounds %struct.label, %struct.label* %19, i32 0, i32 1, !dbg !581
  %20 = load i8*, i8** %lb_str6, align 8, !dbg !581, !tbaa !577
  %arrayidx = getelementptr i8, i8* %20, i64 0, !dbg !580
  %21 = load i8, i8* %arrayidx, align 1, !dbg !580, !tbaa !582
  %conv = sext i8 %21 to i32, !dbg !580
  %22 = load i8*, i8** %s, align 8, !dbg !583, !tbaa !205
  %arrayidx7 = getelementptr i8, i8* %22, i64 0, !dbg !583
  %23 = load i8, i8* %arrayidx7, align 1, !dbg !583, !tbaa !582
  %conv8 = sext i8 %23 to i32, !dbg !583
  %cmp9 = icmp ne i32 %conv, %conv8, !dbg !584
  br i1 %cmp9, label %if.then.15, label %lor.lhs.false.11, !dbg !585

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.5
  %24 = bitcast i64* %__s1_len to i8*, !dbg !586
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !586
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !167, metadata !209), !dbg !587
  %25 = bitcast i64* %__s2_len to i8*, !dbg !586
  call void @llvm.lifetime.start(i64 8, i8* %25) #2, !dbg !586
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !175, metadata !209), !dbg !588
  %26 = load %struct.label*, %struct.label** %l, align 8, !dbg !589, !tbaa !205
  %lb_str12 = getelementptr inbounds %struct.label, %struct.label* %26, i32 0, i32 1, !dbg !590
  %27 = load i8*, i8** %lb_str12, align 8, !dbg !590, !tbaa !577
  %28 = load i8*, i8** %s, align 8, !dbg !591, !tbaa !205
  %call = call i32 @strcmp(i8* %27, i8* %28) #2, !dbg !592
  store i32 %call, i32* %tmp, !dbg !586, !tbaa !211
  %29 = bitcast i64* %__s2_len to i8*, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %29) #2, !dbg !593
  %30 = bitcast i64* %__s1_len to i8*, !dbg !593
  call void @llvm.lifetime.end(i64 8, i8* %30) #2, !dbg !593
  %31 = load i32, i32* %tmp, !dbg !594, !tbaa !211
  %cmp13 = icmp ne i32 %31, 0, !dbg !595
  br i1 %cmp13, label %if.then.15, label %if.end, !dbg !596

if.then.15:                                       ; preds = %lor.lhs.false.11, %lor.lhs.false.5, %lor.lhs.false, %for.body
  br label %for.inc, !dbg !597

if.end:                                           ; preds = %lor.lhs.false.11
  %32 = load i32, i32* %n, align 4, !dbg !598, !tbaa !211
  %33 = load i32, i32* %i, align 4, !dbg !599, !tbaa !211
  %sub = sub i32 %32, %33, !dbg !600
  store i32 %sub, i32* %retval, !dbg !601
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !601

for.inc:                                          ; preds = %if.then.15
  %34 = load i32, i32* %i, align 4, !dbg !602, !tbaa !211
  %dec = add i32 %34, -1, !dbg !602
  store i32 %dec, i32* %i, align 4, !dbg !602, !tbaa !211
  %35 = load %struct.label*, %struct.label** %l, align 8, !dbg !603, !tbaa !205
  %incdec.ptr = getelementptr %struct.label, %struct.label* %35, i32 1, !dbg !603
  store %struct.label* %incdec.ptr, %struct.label** %l, align 8, !dbg !603, !tbaa !205
  br label %for.cond, !dbg !604

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot, !dbg !605
  br label %cleanup, !dbg !605

cleanup:                                          ; preds = %for.end, %if.end
  %36 = bitcast i32* %i to i8*, !dbg !606
  call void @llvm.lifetime.end(i64 4, i8* %36) #2, !dbg !606
  %37 = bitcast %struct.label** %l to i8*, !dbg !606
  call void @llvm.lifetime.end(i64 8, i8* %37) #2, !dbg !606
  %38 = bitcast i8** %s to i8*, !dbg !606
  call void @llvm.lifetime.end(i64 8, i8* %38) #2, !dbg !606
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.18, !dbg !608

if.end.18:                                        ; preds = %cleanup.cont, %entry
  %39 = bitcast %struct.label** %l20 to i8*, !dbg !609
  call void @llvm.lifetime.start(i64 8, i8* %39) #2, !dbg !609
  call void @llvm.dbg.declare(metadata %struct.label** %l20, metadata !176, metadata !209), !dbg !610
  %40 = load %struct.grammar*, %struct.grammar** %g, align 8, !dbg !611, !tbaa !205
  %g_ll21 = getelementptr inbounds %struct.grammar, %struct.grammar* %40, i32 0, i32 2, !dbg !612
  %ll_label22 = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll21, i32 0, i32 1, !dbg !613
  %41 = load %struct.label*, %struct.label** %ll_label22, align 8, !dbg !613, !tbaa !524
  store %struct.label* %41, %struct.label** %l20, align 8, !dbg !610, !tbaa !205
  %42 = bitcast i32* %i24 to i8*, !dbg !614
  call void @llvm.lifetime.start(i64 4, i8* %42) #2, !dbg !614
  call void @llvm.dbg.declare(metadata i32* %i24, metadata !178, metadata !209), !dbg !615
  %43 = load i32, i32* %n, align 4, !dbg !616, !tbaa !211
  store i32 %43, i32* %i24, align 4, !dbg !618, !tbaa !211
  br label %for.cond.25, !dbg !619

for.cond.25:                                      ; preds = %for.inc.38, %if.end.18
  %44 = load i32, i32* %i24, align 4, !dbg !620, !tbaa !211
  %cmp26 = icmp sgt i32 %44, 0, !dbg !624
  br i1 %cmp26, label %for.body.28, label %for.end.41, !dbg !625

for.body.28:                                      ; preds = %for.cond.25
  %45 = load %struct.label*, %struct.label** %l20, align 8, !dbg !626, !tbaa !205
  %lb_type29 = getelementptr inbounds %struct.label, %struct.label* %45, i32 0, i32 0, !dbg !629
  %46 = load i32, i32* %lb_type29, align 4, !dbg !629, !tbaa !526
  %47 = load i32, i32* %type.addr, align 4, !dbg !630, !tbaa !211
  %cmp30 = icmp eq i32 %46, %47, !dbg !631
  br i1 %cmp30, label %land.lhs.true, label %if.end.37, !dbg !632

land.lhs.true:                                    ; preds = %for.body.28
  %48 = load %struct.label*, %struct.label** %l20, align 8, !dbg !633, !tbaa !205
  %lb_str32 = getelementptr inbounds %struct.label, %struct.label* %48, i32 0, i32 1, !dbg !635
  %49 = load i8*, i8** %lb_str32, align 8, !dbg !635, !tbaa !577
  %cmp33 = icmp eq i8* %49, null, !dbg !636
  br i1 %cmp33, label %if.then.35, label %if.end.37, !dbg !637

if.then.35:                                       ; preds = %land.lhs.true
  %50 = load i32, i32* %n, align 4, !dbg !638, !tbaa !211
  %51 = load i32, i32* %i24, align 4, !dbg !640, !tbaa !211
  %sub36 = sub i32 %50, %51, !dbg !641
  store i32 %sub36, i32* %retval, !dbg !642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.42, !dbg !642

if.end.37:                                        ; preds = %land.lhs.true, %for.body.28
  br label %for.inc.38, !dbg !643

for.inc.38:                                       ; preds = %if.end.37
  %52 = load i32, i32* %i24, align 4, !dbg !644, !tbaa !211
  %dec39 = add i32 %52, -1, !dbg !644
  store i32 %dec39, i32* %i24, align 4, !dbg !644, !tbaa !211
  %53 = load %struct.label*, %struct.label** %l20, align 8, !dbg !645, !tbaa !205
  %incdec.ptr40 = getelementptr %struct.label, %struct.label* %53, i32 1, !dbg !645
  store %struct.label* %incdec.ptr40, %struct.label** %l20, align 8, !dbg !645, !tbaa !205
  br label %for.cond.25, !dbg !646

for.end.41:                                       ; preds = %for.cond.25
  store i32 0, i32* %cleanup.dest.slot, !dbg !647
  br label %cleanup.42, !dbg !647

cleanup.42:                                       ; preds = %for.end.41, %if.then.35
  %54 = bitcast i32* %i24 to i8*, !dbg !648
  call void @llvm.lifetime.end(i64 4, i8* %54) #2, !dbg !648
  %55 = bitcast %struct.label** %l20 to i8*, !dbg !648
  call void @llvm.lifetime.end(i64 8, i8* %55) #2, !dbg !648
  %cleanup.dest.44 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.44, label %cleanup.46 [
    i32 0, label %cleanup.cont.45
  ]

cleanup.cont.45:                                  ; preds = %cleanup.42
  store i32 -1, i32* %retval, !dbg !650
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.46, !dbg !650

cleanup.46:                                       ; preds = %cleanup.cont.45, %cleanup.42, %cleanup
  %56 = bitcast i32* %n to i8*, !dbg !651
  call void @llvm.lifetime.end(i64 4, i8* %56) #2, !dbg !651
  %57 = bitcast %struct.grammar** %g to i8*, !dbg !651
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !651
  %58 = load i32, i32* %retval, !dbg !651
  ret i32 %58, !dbg !651
}

; Function Attrs: nounwind uwtable
define internal i32 @push(%struct.stack* %s, i32 %type, %struct.dfa* %d, i32 %newstate, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stack*, align 8
  %type.addr = alloca i32, align 4
  %d.addr = alloca %struct.dfa*, align 8
  %newstate.addr = alloca i32, align 4
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.stack* %s, %struct.stack** %s.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.stack** %s.addr, metadata !183, metadata !209), !dbg !652
  store i32 %type, i32* %type.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !184, metadata !209), !dbg !653
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.dfa** %d.addr, metadata !185, metadata !209), !dbg !654
  store i32 %newstate, i32* %newstate.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %newstate.addr, metadata !186, metadata !209), !dbg !655
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !187, metadata !209), !dbg !656
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !188, metadata !209), !dbg !657
  %0 = bitcast i32* %err to i8*, !dbg !658
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !658
  call void @llvm.dbg.declare(metadata i32* %err, metadata !189, metadata !209), !dbg !659
  %1 = bitcast %struct._node** %n to i8*, !dbg !660
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !660
  call void @llvm.dbg.declare(metadata %struct._node** %n, metadata !190, metadata !209), !dbg !661
  %2 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !662, !tbaa !205
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %2, i32 0, i32 0, !dbg !663
  %3 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8, !dbg !663, !tbaa !280
  %s_parent = getelementptr inbounds %struct.stackentry, %struct.stackentry* %3, i32 0, i32 2, !dbg !664
  %4 = load %struct._node*, %struct._node** %s_parent, align 8, !dbg !664, !tbaa !312
  store %struct._node* %4, %struct._node** %n, align 8, !dbg !665, !tbaa !205
  %5 = load %struct._node*, %struct._node** %n, align 8, !dbg !666, !tbaa !205
  %6 = load i32, i32* %type.addr, align 4, !dbg !667, !tbaa !211
  %7 = load i32, i32* %lineno.addr, align 4, !dbg !668, !tbaa !211
  %8 = load i32, i32* %col_offset.addr, align 4, !dbg !669, !tbaa !211
  %call = call i32 @PyNode_AddChild(%struct._node* %5, i32 %6, i8* null, i32 %7, i32 %8), !dbg !670
  store i32 %call, i32* %err, align 4, !dbg !671, !tbaa !211
  %9 = load i32, i32* %err, align 4, !dbg !672, !tbaa !211
  %tobool = icmp ne i32 %9, 0, !dbg !672
  br i1 %tobool, label %if.then, label %if.end, !dbg !674

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %err, align 4, !dbg !675, !tbaa !211
  store i32 %10, i32* %retval, !dbg !676
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !676

if.end:                                           ; preds = %entry
  %11 = load i32, i32* %newstate.addr, align 4, !dbg !677, !tbaa !211
  %12 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !678, !tbaa !205
  %s_top1 = getelementptr inbounds %struct.stack, %struct.stack* %12, i32 0, i32 0, !dbg !679
  %13 = load %struct.stackentry*, %struct.stackentry** %s_top1, align 8, !dbg !679, !tbaa !280
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %13, i32 0, i32 0, !dbg !680
  store i32 %11, i32* %s_state, align 4, !dbg !681, !tbaa !316
  %14 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !682, !tbaa !205
  %15 = load %struct.dfa*, %struct.dfa** %d.addr, align 8, !dbg !683, !tbaa !205
  %16 = load %struct._node*, %struct._node** %n, align 8, !dbg !684, !tbaa !205
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %16, i32 0, i32 4, !dbg !685
  %17 = load i32, i32* %n_nchildren, align 4, !dbg !685, !tbaa !686
  %sub = sub i32 %17, 1, !dbg !689
  %idxprom = sext i32 %sub to i64, !dbg !690
  %18 = load %struct._node*, %struct._node** %n, align 8, !dbg !691, !tbaa !205
  %n_child = getelementptr inbounds %struct._node, %struct._node* %18, i32 0, i32 5, !dbg !692
  %19 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !692, !tbaa !693
  %arrayidx = getelementptr %struct._node, %struct._node* %19, i64 %idxprom, !dbg !690
  %call2 = call i32 @s_push(%struct.stack* %14, %struct.dfa* %15, %struct._node* %arrayidx), !dbg !694
  store i32 %call2, i32* %retval, !dbg !695
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !695

cleanup:                                          ; preds = %if.end, %if.then
  %20 = bitcast %struct._node** %n to i8*, !dbg !696
  call void @llvm.lifetime.end(i64 8, i8* %20) #2, !dbg !696
  %21 = bitcast i32* %err to i8*, !dbg !696
  call void @llvm.lifetime.end(i64 4, i8* %21) #2, !dbg !696
  %22 = load i32, i32* %retval, !dbg !696
  ret i32 %22, !dbg !696
}

; Function Attrs: nounwind uwtable
define internal i32 @shift(%struct.stack* %s, i32 %type, i8* %str, i32 %newstate, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.stack*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %newstate.addr = alloca i32, align 4
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.stack* %s, %struct.stack** %s.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata %struct.stack** %s.addr, metadata !195, metadata !209), !dbg !697
  store i32 %type, i32* %type.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !196, metadata !209), !dbg !698
  store i8* %str, i8** %str.addr, align 8, !tbaa !205
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !197, metadata !209), !dbg !699
  store i32 %newstate, i32* %newstate.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %newstate.addr, metadata !198, metadata !209), !dbg !700
  store i32 %lineno, i32* %lineno.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %lineno.addr, metadata !199, metadata !209), !dbg !701
  store i32 %col_offset, i32* %col_offset.addr, align 4, !tbaa !211
  call void @llvm.dbg.declare(metadata i32* %col_offset.addr, metadata !200, metadata !209), !dbg !702
  %0 = bitcast i32* %err to i8*, !dbg !703
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !703
  call void @llvm.dbg.declare(metadata i32* %err, metadata !201, metadata !209), !dbg !704
  %1 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !705, !tbaa !205
  %s_top = getelementptr inbounds %struct.stack, %struct.stack* %1, i32 0, i32 0, !dbg !706
  %2 = load %struct.stackentry*, %struct.stackentry** %s_top, align 8, !dbg !706, !tbaa !280
  %s_parent = getelementptr inbounds %struct.stackentry, %struct.stackentry* %2, i32 0, i32 2, !dbg !707
  %3 = load %struct._node*, %struct._node** %s_parent, align 8, !dbg !707, !tbaa !312
  %4 = load i32, i32* %type.addr, align 4, !dbg !708, !tbaa !211
  %5 = load i8*, i8** %str.addr, align 8, !dbg !709, !tbaa !205
  %6 = load i32, i32* %lineno.addr, align 4, !dbg !710, !tbaa !211
  %7 = load i32, i32* %col_offset.addr, align 4, !dbg !711, !tbaa !211
  %call = call i32 @PyNode_AddChild(%struct._node* %3, i32 %4, i8* %5, i32 %6, i32 %7), !dbg !712
  store i32 %call, i32* %err, align 4, !dbg !713, !tbaa !211
  %8 = load i32, i32* %err, align 4, !dbg !714, !tbaa !211
  %tobool = icmp ne i32 %8, 0, !dbg !714
  br i1 %tobool, label %if.then, label %if.end, !dbg !716

if.then:                                          ; preds = %entry
  %9 = load i32, i32* %err, align 4, !dbg !717, !tbaa !211
  store i32 %9, i32* %retval, !dbg !718
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !718

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %newstate.addr, align 4, !dbg !719, !tbaa !211
  %11 = load %struct.stack*, %struct.stack** %s.addr, align 8, !dbg !720, !tbaa !205
  %s_top1 = getelementptr inbounds %struct.stack, %struct.stack* %11, i32 0, i32 0, !dbg !721
  %12 = load %struct.stackentry*, %struct.stackentry** %s_top1, align 8, !dbg !721, !tbaa !280
  %s_state = getelementptr inbounds %struct.stackentry, %struct.stackentry* %12, i32 0, i32 0, !dbg !722
  store i32 %10, i32* %s_state, align 4, !dbg !723, !tbaa !316
  store i32 0, i32* %retval, !dbg !724
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !724

cleanup:                                          ; preds = %if.end, %if.then
  %13 = bitcast i32* %err to i8*, !dbg !725
  call void @llvm.lifetime.end(i64 4, i8* %13) #2, !dbg !725
  %14 = load i32, i32* %retval, !dbg !725
  ret i32 %14, !dbg !725
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

declare i32 @PyNode_AddChild(%struct._node*, i32, i8*, i32, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!202, !203}
!llvm.ident = !{!204}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !96)
!1 = !DIFile(filename: "parser.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !95, !28}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "parser_state", file: !6, line: 31, baseType: !7)
!6 = !DIFile(filename: "Parser/parser.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 24, size: 288256, align: 64, elements: !8)
!8 = !{!9, !69, !90, !93}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "p_stack", scope: !7, file: !6, line: 25, baseType: !10, size: 288064, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "stack", file: !6, line: 22, baseType: !11)
!11 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 18, size: 288064, align: 64, elements: !12)
!12 = !{!13, !65}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "s_top", scope: !11, file: !6, line: 19, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "stackentry", file: !6, line: 16, baseType: !16)
!16 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 12, size: 192, align: 64, elements: !17)
!17 = !{!18, !20, !54}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !16, file: !6, line: 13, baseType: !19, size: 32, align: 32)
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "s_dfa", scope: !16, file: !6, line: 14, baseType: !21, size: 64, align: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "dfa", file: !23, line: 57, baseType: !24)
!23 = !DIFile(filename: "Include/grammar.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 50, size: 320, align: 64, elements: !25)
!25 = !{!26, !27, !30, !31, !32, !51}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !24, file: !23, line: 51, baseType: !19, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !24, file: !23, line: 52, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "d_initial", scope: !24, file: !23, line: 53, baseType: !19, size: 32, align: 32, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "d_nstates", scope: !24, file: !23, line: 54, baseType: !19, size: 32, align: 32, offset: 160)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "d_state", scope: !24, file: !23, line: 55, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "state", file: !23, line: 46, baseType: !35)
!35 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 37, size: 320, align: 64, elements: !36)
!36 = !{!37, !38, !46, !47, !48, !50}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "s_narcs", scope: !35, file: !23, line: 38, baseType: !19, size: 32, align: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s_arc", scope: !35, file: !23, line: 39, baseType: !39, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc", file: !23, line: 33, baseType: !41)
!41 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 30, size: 32, align: 16, elements: !42)
!42 = !{!43, !45}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "a_lbl", scope: !41, file: !23, line: 31, baseType: !44, size: 16, align: 16)
!44 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "a_arrow", scope: !41, file: !23, line: 32, baseType: !44, size: 16, align: 16, offset: 16)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "s_lower", scope: !35, file: !23, line: 42, baseType: !19, size: 32, align: 32, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "s_upper", scope: !35, file: !23, line: 43, baseType: !19, size: 32, align: 32, offset: 160)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "s_accel", scope: !35, file: !23, line: 44, baseType: !49, size: 64, align: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "s_accept", scope: !35, file: !23, line: 45, baseType: !19, size: 32, align: 32, offset: 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "d_first", scope: !24, file: !23, line: 56, baseType: !52, size: 64, align: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !53, line: 12, baseType: !28)
!53 = !DIFile(filename: "Include/bitset.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!54 = !DIDerivedType(tag: DW_TAG_member, name: "s_parent", scope: !16, file: !6, line: 15, baseType: !55, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !57, line: 10, size: 320, align: 64, elements: !58)
!57 = !DIFile(filename: "Include/node.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!58 = !{!59, !60, !61, !62, !63, !64}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !56, file: !57, line: 11, baseType: !44, size: 16, align: 16)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "n_str", scope: !56, file: !57, line: 12, baseType: !28, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "n_lineno", scope: !56, file: !57, line: 13, baseType: !19, size: 32, align: 32, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "n_col_offset", scope: !56, file: !57, line: 14, baseType: !19, size: 32, align: 32, offset: 160)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "n_nchildren", scope: !56, file: !57, line: 15, baseType: !19, size: 32, align: 32, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "n_child", scope: !56, file: !57, line: 16, baseType: !55, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "s_base", scope: !11, file: !6, line: 20, baseType: !66, size: 288000, align: 64, offset: 64)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 288000, align: 64, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1500)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "p_grammar", scope: !7, file: !6, line: 26, baseType: !70, size: 64, align: 64, offset: 288064)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "grammar", file: !23, line: 67, baseType: !72)
!72 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 61, size: 320, align: 64, elements: !73)
!73 = !{!74, !75, !76, !88, !89}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "g_ndfas", scope: !72, file: !23, line: 62, baseType: !19, size: 32, align: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "g_dfa", scope: !72, file: !23, line: 63, baseType: !21, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "g_ll", scope: !72, file: !23, line: 64, baseType: !77, size: 128, align: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "labellist", file: !23, line: 26, baseType: !78)
!78 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 23, size: 128, align: 64, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ll_nlabels", scope: !78, file: !23, line: 24, baseType: !19, size: 32, align: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "ll_label", scope: !78, file: !23, line: 25, baseType: !82, size: 64, align: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "label", file: !23, line: 17, baseType: !84)
!84 = !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 14, size: 128, align: 64, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !84, file: !23, line: 15, baseType: !19, size: 32, align: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lb_str", scope: !84, file: !23, line: 16, baseType: !28, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "g_start", scope: !72, file: !23, line: 65, baseType: !19, size: 32, align: 32, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "g_accel", scope: !72, file: !23, line: 66, baseType: !19, size: 32, align: 32, offset: 288)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "p_tree", scope: !7, file: !6, line: 27, baseType: !91, size: 64, align: 64, offset: 288128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !57, line: 17, baseType: !56)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "p_flags", scope: !7, file: !6, line: 29, baseType: !94, size: 64, align: 64, offset: 288192)
!94 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!96 = !{!97, !105, !110, !137, !143, !151, !179, !191}
!97 = !DISubprogram(name: "PyParser_New", scope: !98, file: !98, line: 72, type: !99, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: %struct.parser_state* (%struct.grammar*, i32)* @PyParser_New, variables: !101)
!98 = !DIFile(filename: "Parser/parser.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!99 = !DISubroutineType(types: !100)
!100 = !{!4, !70, !19}
!101 = !{!102, !103, !104}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !97, file: !98, line: 72, type: !70)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "start", arg: 2, scope: !97, file: !98, line: 72, type: !19)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !97, file: !98, line: 74, type: !4)
!105 = !DISubprogram(name: "PyParser_Delete", scope: !98, file: !98, line: 96, type: !106, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.parser_state*)* @PyParser_Delete, variables: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !4}
!108 = !{!109}
!109 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !105, file: !98, line: 96, type: !4)
!110 = !DISubprogram(name: "PyParser_AddToken", scope: !98, file: !98, line: 228, type: !111, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.parser_state*, i32, i8*, i32, i32, i32*)* @PyParser_AddToken, variables: !113)
!111 = !DISubroutineType(types: !112)
!112 = !{!19, !4, !19, !28, !19, !19, !49}
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !126, !127, !130, !135, !136}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !110, file: !98, line: 228, type: !4)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !110, file: !98, line: 228, type: !19)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 3, scope: !110, file: !98, line: 228, type: !28)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 4, scope: !110, file: !98, line: 229, type: !19)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 5, scope: !110, file: !98, line: 229, type: !19)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "expected_ret", arg: 6, scope: !110, file: !98, line: 229, type: !49)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ilabel", scope: !110, file: !98, line: 231, type: !19)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !110, file: !98, line: 232, type: !19)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !123, file: !98, line: 244, type: !21)
!123 = distinct !DILexicalBlock(scope: !124, file: !98, line: 242, column: 14)
!124 = distinct !DILexicalBlock(scope: !125, file: !98, line: 242, column: 5)
!125 = distinct !DILexicalBlock(scope: !110, file: !98, line: 242, column: 5)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !123, file: !98, line: 245, type: !33)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !128, file: !98, line: 252, type: !19)
!128 = distinct !DILexicalBlock(scope: !129, file: !98, line: 251, column: 58)
!129 = distinct !DILexicalBlock(scope: !123, file: !98, line: 251, column: 13)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nt", scope: !131, file: !98, line: 256, type: !19)
!131 = distinct !DILexicalBlock(scope: !132, file: !98, line: 254, column: 33)
!132 = distinct !DILexicalBlock(scope: !133, file: !98, line: 254, column: 21)
!133 = distinct !DILexicalBlock(scope: !134, file: !98, line: 253, column: 26)
!134 = distinct !DILexicalBlock(scope: !128, file: !98, line: 253, column: 17)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arrow", scope: !131, file: !98, line: 257, type: !19)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d1", scope: !131, file: !98, line: 258, type: !21)
!137 = !DISubprogram(name: "s_reset", scope: !98, file: !98, line: 30, type: !138, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.stack*)* @s_reset, variables: !141)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!141 = !{!142}
!142 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !137, file: !98, line: 30, type: !140)
!143 = !DISubprogram(name: "s_push", scope: !98, file: !98, line: 38, type: !144, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stack*, %struct.dfa*, %struct._node*)* @s_push, variables: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{!19, !140, !21, !91}
!146 = !{!147, !148, !149, !150}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !143, file: !98, line: 38, type: !140)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 2, scope: !143, file: !98, line: 38, type: !21)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "parent", arg: 3, scope: !143, file: !98, line: 38, type: !91)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "top", scope: !143, file: !98, line: 40, type: !14)
!151 = !DISubprogram(name: "classify", scope: !98, file: !98, line: 137, type: !152, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.parser_state*, i32, i8*)* @classify, variables: !156)
!152 = !DISubroutineType(types: !153)
!153 = !{!19, !4, !19, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!156 = !{!157, !158, !159, !160, !161, !162, !165, !166, !167, !175, !176, !178}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ps", arg: 1, scope: !151, file: !98, line: 137, type: !4)
!158 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !151, file: !98, line: 137, type: !19)
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 3, scope: !151, file: !98, line: 137, type: !154)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !151, file: !98, line: 139, type: !70)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !151, file: !98, line: 140, type: !19)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !163, file: !98, line: 143, type: !154)
!163 = distinct !DILexicalBlock(scope: !164, file: !98, line: 142, column: 20)
!164 = distinct !DILexicalBlock(scope: !151, file: !98, line: 142, column: 9)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !163, file: !98, line: 144, type: !82)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !163, file: !98, line: 145, type: !19)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !168, file: !98, line: 149, type: !173)
!168 = distinct !DILexicalBlock(scope: !169, file: !98, line: 149, column: 32)
!169 = distinct !DILexicalBlock(scope: !170, file: !98, line: 147, column: 17)
!170 = distinct !DILexicalBlock(scope: !171, file: !98, line: 146, column: 38)
!171 = distinct !DILexicalBlock(scope: !172, file: !98, line: 146, column: 9)
!172 = distinct !DILexicalBlock(scope: !163, file: !98, line: 146, column: 9)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 62, baseType: !94)
!174 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !168, file: !98, line: 149, type: !173)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !177, file: !98, line: 168, type: !82)
!177 = distinct !DILexicalBlock(scope: !151, file: !98, line: 167, column: 5)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !177, file: !98, line: 169, type: !19)
!179 = !DISubprogram(name: "push", scope: !98, file: !98, line: 120, type: !180, isLocal: true, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stack*, i32, %struct.dfa*, i32, i32, i32)* @push, variables: !182)
!180 = !DISubroutineType(types: !181)
!181 = !{!19, !140, !19, !21, !19, !19, !19}
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190}
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !179, file: !98, line: 120, type: !140)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !179, file: !98, line: 120, type: !19)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 3, scope: !179, file: !98, line: 120, type: !21)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newstate", arg: 4, scope: !179, file: !98, line: 120, type: !19)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 5, scope: !179, file: !98, line: 120, type: !19)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 6, scope: !179, file: !98, line: 120, type: !19)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !179, file: !98, line: 122, type: !19)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !179, file: !98, line: 123, type: !91)
!191 = !DISubprogram(name: "shift", scope: !98, file: !98, line: 108, type: !192, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.stack*, i32, i8*, i32, i32, i32)* @shift, variables: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!19, !140, !19, !28, !19, !19, !19}
!194 = !{!195, !196, !197, !198, !199, !200, !201}
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !191, file: !98, line: 108, type: !140)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !191, file: !98, line: 108, type: !19)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 3, scope: !191, file: !98, line: 108, type: !28)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newstate", arg: 4, scope: !191, file: !98, line: 108, type: !19)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lineno", arg: 5, scope: !191, file: !98, line: 108, type: !19)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "col_offset", arg: 6, scope: !191, file: !98, line: 108, type: !19)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !191, file: !98, line: 110, type: !19)
!202 = !{i32 2, !"Dwarf Version", i32 4}
!203 = !{i32 2, !"Debug Info Version", i32 3}
!204 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!205 = !{!206, !206, i64 0}
!206 = !{!"any pointer", !207, i64 0}
!207 = !{!"omnipotent char", !208, i64 0}
!208 = !{!"Simple C/C++ TBAA"}
!209 = !DIExpression()
!210 = !DILocation(line: 72, column: 23, scope: !97)
!211 = !{!212, !212, i64 0}
!212 = !{!"int", !207, i64 0}
!213 = !DILocation(line: 72, column: 30, scope: !97)
!214 = !DILocation(line: 74, column: 5, scope: !97)
!215 = !DILocation(line: 74, column: 19, scope: !97)
!216 = !DILocation(line: 76, column: 10, scope: !217)
!217 = distinct !DILexicalBlock(scope: !97, file: !98, line: 76, column: 9)
!218 = !DILocation(line: 76, column: 13, scope: !217)
!219 = !{!220, !212, i64 36}
!220 = !{!"", !212, i64 0, !206, i64 8, !221, i64 16, !212, i64 32, !212, i64 36}
!221 = !{!"", !212, i64 0, !206, i64 8}
!222 = !DILocation(line: 76, column: 9, scope: !97)
!223 = !DILocation(line: 77, column: 35, scope: !217)
!224 = !DILocation(line: 77, column: 9, scope: !217)
!225 = !DILocation(line: 78, column: 26, scope: !97)
!226 = !DILocation(line: 78, column: 10, scope: !97)
!227 = !DILocation(line: 78, column: 8, scope: !97)
!228 = !DILocation(line: 79, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !97, file: !98, line: 79, column: 9)
!230 = !DILocation(line: 79, column: 12, scope: !229)
!231 = !DILocation(line: 79, column: 9, scope: !97)
!232 = !DILocation(line: 80, column: 9, scope: !229)
!233 = !DILocation(line: 81, column: 21, scope: !97)
!234 = !DILocation(line: 81, column: 5, scope: !97)
!235 = !DILocation(line: 81, column: 9, scope: !97)
!236 = !DILocation(line: 81, column: 19, scope: !97)
!237 = !{!238, !206, i64 36008}
!238 = !{!"", !239, i64 0, !206, i64 36008, !206, i64 36016, !240, i64 36024}
!239 = !{!"", !206, i64 0, !207, i64 8}
!240 = !{!"long", !207, i64 0}
!241 = !DILocation(line: 83, column: 5, scope: !97)
!242 = !DILocation(line: 83, column: 9, scope: !97)
!243 = !DILocation(line: 83, column: 17, scope: !97)
!244 = !{!238, !240, i64 36024}
!245 = !DILocation(line: 85, column: 29, scope: !97)
!246 = !DILocation(line: 85, column: 18, scope: !97)
!247 = !DILocation(line: 85, column: 5, scope: !97)
!248 = !DILocation(line: 85, column: 9, scope: !97)
!249 = !DILocation(line: 85, column: 16, scope: !97)
!250 = !{!238, !206, i64 36016}
!251 = !DILocation(line: 86, column: 9, scope: !252)
!252 = distinct !DILexicalBlock(scope: !97, file: !98, line: 86, column: 9)
!253 = !DILocation(line: 86, column: 13, scope: !252)
!254 = !DILocation(line: 86, column: 20, scope: !252)
!255 = !DILocation(line: 86, column: 9, scope: !97)
!256 = !DILocation(line: 87, column: 20, scope: !257)
!257 = distinct !DILexicalBlock(scope: !252, file: !98, line: 86, column: 35)
!258 = !DILocation(line: 87, column: 9, scope: !257)
!259 = !DILocation(line: 88, column: 9, scope: !257)
!260 = !DILocation(line: 90, column: 14, scope: !97)
!261 = !DILocation(line: 90, column: 18, scope: !97)
!262 = !DILocation(line: 90, column: 5, scope: !97)
!263 = !DILocation(line: 91, column: 20, scope: !97)
!264 = !DILocation(line: 91, column: 24, scope: !97)
!265 = !DILocation(line: 91, column: 51, scope: !97)
!266 = !DILocation(line: 91, column: 54, scope: !97)
!267 = !DILocation(line: 91, column: 33, scope: !97)
!268 = !DILocation(line: 91, column: 62, scope: !97)
!269 = !DILocation(line: 91, column: 66, scope: !97)
!270 = !DILocation(line: 91, column: 12, scope: !97)
!271 = !DILocation(line: 92, column: 12, scope: !97)
!272 = !DILocation(line: 92, column: 5, scope: !97)
!273 = !DILocation(line: 93, column: 1, scope: !97)
!274 = !DILocation(line: 30, column: 16, scope: !137)
!275 = !DILocation(line: 32, column: 17, scope: !137)
!276 = !DILocation(line: 32, column: 20, scope: !137)
!277 = !DILocation(line: 32, column: 5, scope: !137)
!278 = !DILocation(line: 32, column: 8, scope: !137)
!279 = !DILocation(line: 32, column: 14, scope: !137)
!280 = !{!239, !206, i64 0}
!281 = !DILocation(line: 33, column: 1, scope: !137)
!282 = !DILocation(line: 38, column: 15, scope: !143)
!283 = !DILocation(line: 38, column: 23, scope: !143)
!284 = !DILocation(line: 38, column: 32, scope: !143)
!285 = !DILocation(line: 40, column: 5, scope: !143)
!286 = !DILocation(line: 40, column: 17, scope: !143)
!287 = !DILocation(line: 41, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !143, file: !98, line: 41, column: 9)
!289 = !DILocation(line: 41, column: 12, scope: !288)
!290 = !DILocation(line: 41, column: 21, scope: !288)
!291 = !DILocation(line: 41, column: 24, scope: !288)
!292 = !DILocation(line: 41, column: 18, scope: !288)
!293 = !DILocation(line: 41, column: 9, scope: !143)
!294 = !DILocation(line: 42, column: 17, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !98, line: 41, column: 32)
!296 = !DILocation(line: 42, column: 9, scope: !295)
!297 = !DILocation(line: 43, column: 9, scope: !295)
!298 = !DILocation(line: 45, column: 13, scope: !143)
!299 = !DILocation(line: 45, column: 16, scope: !143)
!300 = !DILocation(line: 45, column: 11, scope: !143)
!301 = !DILocation(line: 45, column: 9, scope: !143)
!302 = !DILocation(line: 46, column: 18, scope: !143)
!303 = !DILocation(line: 46, column: 5, scope: !143)
!304 = !DILocation(line: 46, column: 10, scope: !143)
!305 = !DILocation(line: 46, column: 16, scope: !143)
!306 = !{!307, !206, i64 8}
!307 = !{!"", !212, i64 0, !206, i64 8, !206, i64 16}
!308 = !DILocation(line: 47, column: 21, scope: !143)
!309 = !DILocation(line: 47, column: 5, scope: !143)
!310 = !DILocation(line: 47, column: 10, scope: !143)
!311 = !DILocation(line: 47, column: 19, scope: !143)
!312 = !{!307, !206, i64 16}
!313 = !DILocation(line: 48, column: 5, scope: !143)
!314 = !DILocation(line: 48, column: 10, scope: !143)
!315 = !DILocation(line: 48, column: 18, scope: !143)
!316 = !{!307, !212, i64 0}
!317 = !DILocation(line: 49, column: 5, scope: !143)
!318 = !DILocation(line: 50, column: 1, scope: !143)
!319 = !DILocation(line: 96, column: 31, scope: !105)
!320 = !DILocation(line: 100, column: 17, scope: !105)
!321 = !DILocation(line: 100, column: 21, scope: !105)
!322 = !DILocation(line: 100, column: 5, scope: !105)
!323 = !DILocation(line: 101, column: 16, scope: !105)
!324 = !DILocation(line: 101, column: 5, scope: !105)
!325 = !DILocation(line: 102, column: 1, scope: !105)
!326 = !DILocation(line: 228, column: 33, scope: !110)
!327 = !DILocation(line: 228, column: 41, scope: !110)
!328 = !DILocation(line: 228, column: 53, scope: !110)
!329 = !DILocation(line: 229, column: 23, scope: !110)
!330 = !DILocation(line: 229, column: 35, scope: !110)
!331 = !DILocation(line: 229, column: 52, scope: !110)
!332 = !DILocation(line: 231, column: 5, scope: !110)
!333 = !DILocation(line: 231, column: 9, scope: !110)
!334 = !DILocation(line: 232, column: 5, scope: !110)
!335 = !DILocation(line: 232, column: 9, scope: !110)
!336 = !DILocation(line: 237, column: 23, scope: !110)
!337 = !DILocation(line: 237, column: 27, scope: !110)
!338 = !DILocation(line: 237, column: 33, scope: !110)
!339 = !DILocation(line: 237, column: 14, scope: !110)
!340 = !DILocation(line: 237, column: 12, scope: !110)
!341 = !DILocation(line: 238, column: 9, scope: !342)
!342 = distinct !DILexicalBlock(scope: !110, file: !98, line: 238, column: 9)
!343 = !DILocation(line: 238, column: 16, scope: !342)
!344 = !DILocation(line: 238, column: 9, scope: !110)
!345 = !DILocation(line: 239, column: 9, scope: !342)
!346 = !DILocation(line: 242, column: 5, scope: !110)
!347 = !DILocation(line: 244, column: 9, scope: !123)
!348 = !DILocation(line: 244, column: 14, scope: !123)
!349 = !DILocation(line: 244, column: 18, scope: !123)
!350 = !DILocation(line: 244, column: 22, scope: !123)
!351 = !DILocation(line: 244, column: 30, scope: !123)
!352 = !{!238, !206, i64 0}
!353 = !DILocation(line: 244, column: 37, scope: !123)
!354 = !DILocation(line: 245, column: 9, scope: !123)
!355 = !DILocation(line: 245, column: 16, scope: !123)
!356 = !DILocation(line: 245, column: 32, scope: !123)
!357 = !DILocation(line: 245, column: 36, scope: !123)
!358 = !DILocation(line: 245, column: 44, scope: !123)
!359 = !DILocation(line: 245, column: 51, scope: !123)
!360 = !DILocation(line: 245, column: 21, scope: !123)
!361 = !DILocation(line: 245, column: 24, scope: !123)
!362 = !{!363, !206, i64 24}
!363 = !{!"", !212, i64 0, !206, i64 8, !212, i64 16, !212, i64 20, !206, i64 24, !206, i64 32}
!364 = !DILocation(line: 251, column: 13, scope: !129)
!365 = !DILocation(line: 251, column: 16, scope: !129)
!366 = !{!367, !212, i64 16}
!367 = !{!"", !212, i64 0, !206, i64 8, !212, i64 16, !212, i64 20, !206, i64 24, !212, i64 32}
!368 = !DILocation(line: 251, column: 27, scope: !129)
!369 = !DILocation(line: 251, column: 24, scope: !129)
!370 = !DILocation(line: 251, column: 34, scope: !129)
!371 = !DILocation(line: 251, column: 37, scope: !372)
!372 = !DILexicalBlockFile(scope: !129, file: !98, discriminator: 1)
!373 = !DILocation(line: 251, column: 46, scope: !129)
!374 = !DILocation(line: 251, column: 49, scope: !129)
!375 = !{!367, !212, i64 20}
!376 = !DILocation(line: 251, column: 44, scope: !129)
!377 = !DILocation(line: 251, column: 13, scope: !123)
!378 = !DILocation(line: 252, column: 13, scope: !128)
!379 = !DILocation(line: 252, column: 17, scope: !128)
!380 = !DILocation(line: 252, column: 32, scope: !128)
!381 = !DILocation(line: 252, column: 41, scope: !128)
!382 = !DILocation(line: 252, column: 44, scope: !128)
!383 = !DILocation(line: 252, column: 39, scope: !128)
!384 = !DILocation(line: 252, column: 21, scope: !128)
!385 = !DILocation(line: 252, column: 24, scope: !128)
!386 = !{!367, !206, i64 24}
!387 = !DILocation(line: 253, column: 17, scope: !134)
!388 = !DILocation(line: 253, column: 19, scope: !134)
!389 = !DILocation(line: 253, column: 17, scope: !128)
!390 = !DILocation(line: 254, column: 21, scope: !132)
!391 = !DILocation(line: 254, column: 23, scope: !132)
!392 = !DILocation(line: 254, column: 21, scope: !133)
!393 = !DILocation(line: 256, column: 21, scope: !131)
!394 = !DILocation(line: 256, column: 25, scope: !131)
!395 = !DILocation(line: 256, column: 31, scope: !131)
!396 = !DILocation(line: 256, column: 33, scope: !131)
!397 = !DILocation(line: 256, column: 39, scope: !131)
!398 = !DILocation(line: 257, column: 21, scope: !131)
!399 = !DILocation(line: 257, column: 25, scope: !131)
!400 = !DILocation(line: 257, column: 33, scope: !131)
!401 = !DILocation(line: 257, column: 35, scope: !131)
!402 = !DILocation(line: 258, column: 21, scope: !131)
!403 = !DILocation(line: 258, column: 26, scope: !131)
!404 = !DILocation(line: 259, column: 25, scope: !131)
!405 = !DILocation(line: 259, column: 29, scope: !131)
!406 = !DILocation(line: 259, column: 40, scope: !131)
!407 = !DILocation(line: 258, column: 31, scope: !131)
!408 = !DILocation(line: 260, column: 38, scope: !409)
!409 = distinct !DILexicalBlock(scope: !131, file: !98, line: 260, column: 25)
!410 = !DILocation(line: 260, column: 42, scope: !409)
!411 = !DILocation(line: 260, column: 51, scope: !409)
!412 = !DILocation(line: 260, column: 55, scope: !409)
!413 = !DILocation(line: 261, column: 25, scope: !409)
!414 = !DILocation(line: 261, column: 32, scope: !409)
!415 = !DILocation(line: 261, column: 40, scope: !409)
!416 = !DILocation(line: 260, column: 32, scope: !409)
!417 = !DILocation(line: 260, column: 30, scope: !409)
!418 = !DILocation(line: 261, column: 53, scope: !409)
!419 = !DILocation(line: 260, column: 25, scope: !131)
!420 = !DILocation(line: 263, column: 32, scope: !421)
!421 = distinct !DILexicalBlock(scope: !409, file: !98, line: 261, column: 58)
!422 = !DILocation(line: 263, column: 25, scope: !421)
!423 = !DILocation(line: 266, column: 21, scope: !131)
!424 = !DILocation(line: 267, column: 17, scope: !132)
!425 = !DILocation(line: 270, column: 35, scope: !426)
!426 = distinct !DILexicalBlock(scope: !133, file: !98, line: 270, column: 21)
!427 = !DILocation(line: 270, column: 39, scope: !426)
!428 = !DILocation(line: 270, column: 48, scope: !426)
!429 = !DILocation(line: 270, column: 54, scope: !426)
!430 = !DILocation(line: 271, column: 33, scope: !426)
!431 = !DILocation(line: 271, column: 36, scope: !426)
!432 = !DILocation(line: 271, column: 44, scope: !426)
!433 = !DILocation(line: 270, column: 28, scope: !426)
!434 = !DILocation(line: 270, column: 26, scope: !426)
!435 = !DILocation(line: 271, column: 57, scope: !426)
!436 = !DILocation(line: 270, column: 21, scope: !133)
!437 = !DILocation(line: 273, column: 28, scope: !438)
!438 = distinct !DILexicalBlock(scope: !426, file: !98, line: 271, column: 62)
!439 = !DILocation(line: 273, column: 21, scope: !438)
!440 = !DILocation(line: 277, column: 17, scope: !133)
!441 = !DILocation(line: 278, column: 34, scope: !133)
!442 = !DILocation(line: 278, column: 38, scope: !133)
!443 = !DILocation(line: 278, column: 46, scope: !133)
!444 = !DILocation(line: 278, column: 53, scope: !133)
!445 = !DILocation(line: 277, column: 29, scope: !133)
!446 = !DILocation(line: 277, column: 32, scope: !133)
!447 = !DILocation(line: 277, column: 26, scope: !133)
!448 = !DILocation(line: 279, column: 21, scope: !133)
!449 = !DILocation(line: 279, column: 24, scope: !133)
!450 = !{!367, !212, i64 32}
!451 = !DILocation(line: 279, column: 33, scope: !133)
!452 = !DILocation(line: 279, column: 36, scope: !453)
!453 = !DILexicalBlockFile(scope: !133, file: !98, discriminator: 1)
!454 = !DILocation(line: 279, column: 39, scope: !133)
!455 = !{!367, !212, i64 0}
!456 = !DILocation(line: 279, column: 47, scope: !133)
!457 = !DILocation(line: 292, column: 23, scope: !458)
!458 = distinct !DILexicalBlock(scope: !133, file: !98, line: 279, column: 53)
!459 = !DILocation(line: 292, column: 27, scope: !458)
!460 = !DILocation(line: 292, column: 37, scope: !458)
!461 = !DILocation(line: 292, column: 42, scope: !458)
!462 = !DILocation(line: 293, column: 28, scope: !463)
!463 = distinct !DILexicalBlock(scope: !458, file: !98, line: 293, column: 25)
!464 = !DILocation(line: 293, column: 32, scope: !463)
!465 = !DILocation(line: 293, column: 42, scope: !463)
!466 = !DILocation(line: 293, column: 54, scope: !463)
!467 = !DILocation(line: 293, column: 58, scope: !463)
!468 = !DILocation(line: 293, column: 68, scope: !463)
!469 = !DILocation(line: 293, column: 52, scope: !463)
!470 = !DILocation(line: 293, column: 48, scope: !463)
!471 = !DILocation(line: 293, column: 25, scope: !458)
!472 = !DILocation(line: 295, column: 25, scope: !473)
!473 = distinct !DILexicalBlock(scope: !463, file: !98, line: 293, column: 83)
!474 = !DILocation(line: 297, column: 25, scope: !458)
!475 = !DILocation(line: 297, column: 29, scope: !458)
!476 = !DILocation(line: 297, column: 37, scope: !458)
!477 = !DILocation(line: 297, column: 44, scope: !458)
!478 = !DILocation(line: 297, column: 23, scope: !458)
!479 = !DILocation(line: 299, column: 17, scope: !133)
!480 = !DILocation(line: 301, column: 9, scope: !129)
!481 = !DILocation(line: 301, column: 9, scope: !372)
!482 = !DILocation(line: 301, column: 9, scope: !128)
!483 = !DILocation(line: 303, column: 13, scope: !484)
!484 = distinct !DILexicalBlock(scope: !123, file: !98, line: 303, column: 13)
!485 = !DILocation(line: 303, column: 16, scope: !484)
!486 = !DILocation(line: 303, column: 13, scope: !123)
!487 = !DILocation(line: 312, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !98, line: 303, column: 26)
!489 = !DILocation(line: 312, column: 19, scope: !488)
!490 = !DILocation(line: 312, column: 29, scope: !488)
!491 = !DILocation(line: 312, column: 34, scope: !488)
!492 = !DILocation(line: 314, column: 20, scope: !493)
!493 = distinct !DILexicalBlock(scope: !488, file: !98, line: 314, column: 17)
!494 = !DILocation(line: 314, column: 24, scope: !493)
!495 = !DILocation(line: 314, column: 34, scope: !493)
!496 = !DILocation(line: 314, column: 46, scope: !493)
!497 = !DILocation(line: 314, column: 50, scope: !493)
!498 = !DILocation(line: 314, column: 60, scope: !493)
!499 = !DILocation(line: 314, column: 44, scope: !493)
!500 = !DILocation(line: 314, column: 40, scope: !493)
!501 = !DILocation(line: 314, column: 17, scope: !488)
!502 = !DILocation(line: 316, column: 17, scope: !503)
!503 = distinct !DILexicalBlock(scope: !493, file: !98, line: 314, column: 75)
!504 = !DILocation(line: 318, column: 13, scope: !488)
!505 = !DILocation(line: 323, column: 13, scope: !506)
!506 = distinct !DILexicalBlock(scope: !123, file: !98, line: 323, column: 13)
!507 = !DILocation(line: 323, column: 13, scope: !123)
!508 = !DILocation(line: 324, column: 17, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !98, line: 324, column: 17)
!510 = distinct !DILexicalBlock(scope: !506, file: !98, line: 323, column: 27)
!511 = !DILocation(line: 324, column: 20, scope: !509)
!512 = !DILocation(line: 324, column: 31, scope: !509)
!513 = !DILocation(line: 324, column: 34, scope: !509)
!514 = !DILocation(line: 324, column: 42, scope: !509)
!515 = !DILocation(line: 324, column: 28, scope: !509)
!516 = !DILocation(line: 324, column: 17, scope: !510)
!517 = !DILocation(line: 327, column: 35, scope: !518)
!518 = distinct !DILexicalBlock(scope: !509, file: !98, line: 324, column: 47)
!519 = !DILocation(line: 327, column: 38, scope: !518)
!520 = !DILocation(line: 326, column: 33, scope: !518)
!521 = !DILocation(line: 326, column: 37, scope: !518)
!522 = !DILocation(line: 327, column: 21, scope: !518)
!523 = !DILocation(line: 327, column: 26, scope: !518)
!524 = !{!220, !206, i64 24}
!525 = !DILocation(line: 327, column: 47, scope: !518)
!526 = !{!221, !212, i64 0}
!527 = !DILocation(line: 326, column: 18, scope: !518)
!528 = !DILocation(line: 326, column: 31, scope: !518)
!529 = !DILocation(line: 328, column: 13, scope: !518)
!530 = !DILocation(line: 330, column: 18, scope: !509)
!531 = !DILocation(line: 330, column: 31, scope: !509)
!532 = !DILocation(line: 331, column: 9, scope: !510)
!533 = !DILocation(line: 332, column: 9, scope: !123)
!534 = !DILocation(line: 333, column: 5, scope: !124)
!535 = !DILocation(line: 334, column: 1, scope: !110)
!536 = !DILocation(line: 137, column: 24, scope: !151)
!537 = !DILocation(line: 137, column: 32, scope: !151)
!538 = !DILocation(line: 137, column: 50, scope: !151)
!539 = !DILocation(line: 139, column: 5, scope: !151)
!540 = !DILocation(line: 139, column: 14, scope: !151)
!541 = !DILocation(line: 139, column: 18, scope: !151)
!542 = !DILocation(line: 139, column: 22, scope: !151)
!543 = !DILocation(line: 140, column: 5, scope: !151)
!544 = !DILocation(line: 140, column: 9, scope: !151)
!545 = !DILocation(line: 140, column: 13, scope: !151)
!546 = !DILocation(line: 140, column: 16, scope: !151)
!547 = !DILocation(line: 140, column: 21, scope: !151)
!548 = !{!220, !212, i64 16}
!549 = !DILocation(line: 142, column: 9, scope: !164)
!550 = !DILocation(line: 142, column: 14, scope: !164)
!551 = !DILocation(line: 142, column: 9, scope: !151)
!552 = !DILocation(line: 143, column: 9, scope: !163)
!553 = !DILocation(line: 143, column: 21, scope: !163)
!554 = !DILocation(line: 143, column: 25, scope: !163)
!555 = !DILocation(line: 144, column: 9, scope: !163)
!556 = !DILocation(line: 144, column: 16, scope: !163)
!557 = !DILocation(line: 144, column: 20, scope: !163)
!558 = !DILocation(line: 144, column: 23, scope: !163)
!559 = !DILocation(line: 144, column: 28, scope: !163)
!560 = !DILocation(line: 145, column: 9, scope: !163)
!561 = !DILocation(line: 145, column: 13, scope: !163)
!562 = !DILocation(line: 146, column: 18, scope: !172)
!563 = !DILocation(line: 146, column: 16, scope: !172)
!564 = !DILocation(line: 146, column: 14, scope: !172)
!565 = !DILocation(line: 146, column: 21, scope: !566)
!566 = !DILexicalBlockFile(scope: !567, file: !98, discriminator: 2)
!567 = !DILexicalBlockFile(scope: !171, file: !98, discriminator: 1)
!568 = !DILocation(line: 146, column: 23, scope: !171)
!569 = !DILocation(line: 146, column: 9, scope: !172)
!570 = !DILocation(line: 147, column: 17, scope: !169)
!571 = !DILocation(line: 147, column: 20, scope: !169)
!572 = !DILocation(line: 147, column: 28, scope: !169)
!573 = !DILocation(line: 147, column: 33, scope: !169)
!574 = !DILocation(line: 147, column: 36, scope: !575)
!575 = !DILexicalBlockFile(scope: !169, file: !98, discriminator: 1)
!576 = !DILocation(line: 147, column: 39, scope: !169)
!577 = !{!221, !206, i64 8}
!578 = !DILocation(line: 147, column: 46, scope: !169)
!579 = !DILocation(line: 147, column: 60, scope: !169)
!580 = !DILocation(line: 148, column: 17, scope: !169)
!581 = !DILocation(line: 148, column: 20, scope: !169)
!582 = !{!207, !207, i64 0}
!583 = !DILocation(line: 148, column: 33, scope: !169)
!584 = !DILocation(line: 148, column: 30, scope: !169)
!585 = !DILocation(line: 148, column: 38, scope: !169)
!586 = !DILocation(line: 149, column: 34, scope: !168)
!587 = !DILocation(line: 149, column: 41, scope: !168)
!588 = !DILocation(line: 149, column: 51, scope: !168)
!589 = !DILocation(line: 149, column: 2107, scope: !168)
!590 = !DILocation(line: 149, column: 2110, scope: !168)
!591 = !DILocation(line: 149, column: 2118, scope: !168)
!592 = !DILocation(line: 149, column: 2089, scope: !168)
!593 = !DILocation(line: 149, column: 2125, scope: !169)
!594 = !DILocation(line: 149, column: 2125, scope: !168)
!595 = !DILocation(line: 149, column: 2128, scope: !169)
!596 = !DILocation(line: 147, column: 17, scope: !170)
!597 = !DILocation(line: 150, column: 17, scope: !169)
!598 = !DILocation(line: 163, column: 20, scope: !170)
!599 = !DILocation(line: 163, column: 24, scope: !170)
!600 = !DILocation(line: 163, column: 22, scope: !170)
!601 = !DILocation(line: 163, column: 13, scope: !170)
!602 = !DILocation(line: 146, column: 29, scope: !171)
!603 = !DILocation(line: 146, column: 34, scope: !171)
!604 = !DILocation(line: 146, column: 9, scope: !171)
!605 = !DILocation(line: 165, column: 5, scope: !164)
!606 = !DILocation(line: 165, column: 5, scope: !607)
!607 = !DILexicalBlockFile(scope: !164, file: !98, discriminator: 1)
!608 = !DILocation(line: 165, column: 5, scope: !163)
!609 = !DILocation(line: 168, column: 9, scope: !177)
!610 = !DILocation(line: 168, column: 16, scope: !177)
!611 = !DILocation(line: 168, column: 20, scope: !177)
!612 = !DILocation(line: 168, column: 23, scope: !177)
!613 = !DILocation(line: 168, column: 28, scope: !177)
!614 = !DILocation(line: 169, column: 9, scope: !177)
!615 = !DILocation(line: 169, column: 13, scope: !177)
!616 = !DILocation(line: 170, column: 18, scope: !617)
!617 = distinct !DILexicalBlock(scope: !177, file: !98, line: 170, column: 9)
!618 = !DILocation(line: 170, column: 16, scope: !617)
!619 = !DILocation(line: 170, column: 14, scope: !617)
!620 = !DILocation(line: 170, column: 21, scope: !621)
!621 = !DILexicalBlockFile(scope: !622, file: !98, discriminator: 2)
!622 = !DILexicalBlockFile(scope: !623, file: !98, discriminator: 1)
!623 = distinct !DILexicalBlock(scope: !617, file: !98, line: 170, column: 9)
!624 = !DILocation(line: 170, column: 23, scope: !623)
!625 = !DILocation(line: 170, column: 9, scope: !617)
!626 = !DILocation(line: 171, column: 17, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !98, line: 171, column: 17)
!628 = distinct !DILexicalBlock(scope: !623, file: !98, line: 170, column: 38)
!629 = !DILocation(line: 171, column: 20, scope: !627)
!630 = !DILocation(line: 171, column: 31, scope: !627)
!631 = !DILocation(line: 171, column: 28, scope: !627)
!632 = !DILocation(line: 171, column: 36, scope: !627)
!633 = !DILocation(line: 171, column: 39, scope: !634)
!634 = !DILexicalBlockFile(scope: !627, file: !98, discriminator: 1)
!635 = !DILocation(line: 171, column: 42, scope: !627)
!636 = !DILocation(line: 171, column: 49, scope: !627)
!637 = !DILocation(line: 171, column: 17, scope: !628)
!638 = !DILocation(line: 173, column: 24, scope: !639)
!639 = distinct !DILexicalBlock(scope: !627, file: !98, line: 171, column: 64)
!640 = !DILocation(line: 173, column: 28, scope: !639)
!641 = !DILocation(line: 173, column: 26, scope: !639)
!642 = !DILocation(line: 173, column: 17, scope: !639)
!643 = !DILocation(line: 175, column: 9, scope: !628)
!644 = !DILocation(line: 170, column: 29, scope: !623)
!645 = !DILocation(line: 170, column: 34, scope: !623)
!646 = !DILocation(line: 170, column: 9, scope: !623)
!647 = !DILocation(line: 176, column: 5, scope: !151)
!648 = !DILocation(line: 176, column: 5, scope: !649)
!649 = !DILexicalBlockFile(scope: !151, file: !98, discriminator: 1)
!650 = !DILocation(line: 179, column: 5, scope: !151)
!651 = !DILocation(line: 180, column: 1, scope: !151)
!652 = !DILocation(line: 120, column: 13, scope: !179)
!653 = !DILocation(line: 120, column: 20, scope: !179)
!654 = !DILocation(line: 120, column: 31, scope: !179)
!655 = !DILocation(line: 120, column: 38, scope: !179)
!656 = !DILocation(line: 120, column: 52, scope: !179)
!657 = !DILocation(line: 120, column: 64, scope: !179)
!658 = !DILocation(line: 122, column: 5, scope: !179)
!659 = !DILocation(line: 122, column: 9, scope: !179)
!660 = !DILocation(line: 123, column: 5, scope: !179)
!661 = !DILocation(line: 123, column: 11, scope: !179)
!662 = !DILocation(line: 124, column: 9, scope: !179)
!663 = !DILocation(line: 124, column: 12, scope: !179)
!664 = !DILocation(line: 124, column: 19, scope: !179)
!665 = !DILocation(line: 124, column: 7, scope: !179)
!666 = !DILocation(line: 126, column: 27, scope: !179)
!667 = !DILocation(line: 126, column: 30, scope: !179)
!668 = !DILocation(line: 126, column: 56, scope: !179)
!669 = !DILocation(line: 126, column: 64, scope: !179)
!670 = !DILocation(line: 126, column: 11, scope: !179)
!671 = !DILocation(line: 126, column: 9, scope: !179)
!672 = !DILocation(line: 127, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !179, file: !98, line: 127, column: 9)
!674 = !DILocation(line: 127, column: 9, scope: !179)
!675 = !DILocation(line: 128, column: 16, scope: !673)
!676 = !DILocation(line: 128, column: 9, scope: !673)
!677 = !DILocation(line: 129, column: 25, scope: !179)
!678 = !DILocation(line: 129, column: 5, scope: !179)
!679 = !DILocation(line: 129, column: 8, scope: !179)
!680 = !DILocation(line: 129, column: 15, scope: !179)
!681 = !DILocation(line: 129, column: 23, scope: !179)
!682 = !DILocation(line: 130, column: 19, scope: !179)
!683 = !DILocation(line: 130, column: 22, scope: !179)
!684 = !DILocation(line: 130, column: 42, scope: !179)
!685 = !DILocation(line: 130, column: 46, scope: !179)
!686 = !{!687, !212, i64 24}
!687 = !{!"_node", !688, i64 0, !206, i64 8, !212, i64 16, !212, i64 20, !212, i64 24, !206, i64 32}
!688 = !{!"short", !207, i64 0}
!689 = !DILocation(line: 130, column: 58, scope: !179)
!690 = !DILocation(line: 130, column: 27, scope: !179)
!691 = !DILocation(line: 130, column: 28, scope: !179)
!692 = !DILocation(line: 130, column: 32, scope: !179)
!693 = !{!687, !206, i64 32}
!694 = !DILocation(line: 130, column: 12, scope: !179)
!695 = !DILocation(line: 130, column: 5, scope: !179)
!696 = !DILocation(line: 131, column: 1, scope: !179)
!697 = !DILocation(line: 108, column: 14, scope: !191)
!698 = !DILocation(line: 108, column: 21, scope: !191)
!699 = !DILocation(line: 108, column: 33, scope: !191)
!700 = !DILocation(line: 108, column: 42, scope: !191)
!701 = !DILocation(line: 108, column: 56, scope: !191)
!702 = !DILocation(line: 108, column: 68, scope: !191)
!703 = !DILocation(line: 110, column: 5, scope: !191)
!704 = !DILocation(line: 110, column: 9, scope: !191)
!705 = !DILocation(line: 112, column: 27, scope: !191)
!706 = !DILocation(line: 112, column: 30, scope: !191)
!707 = !DILocation(line: 112, column: 37, scope: !191)
!708 = !DILocation(line: 112, column: 47, scope: !191)
!709 = !DILocation(line: 112, column: 53, scope: !191)
!710 = !DILocation(line: 112, column: 58, scope: !191)
!711 = !DILocation(line: 112, column: 66, scope: !191)
!712 = !DILocation(line: 112, column: 11, scope: !191)
!713 = !DILocation(line: 112, column: 9, scope: !191)
!714 = !DILocation(line: 113, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !191, file: !98, line: 113, column: 9)
!716 = !DILocation(line: 113, column: 9, scope: !191)
!717 = !DILocation(line: 114, column: 16, scope: !715)
!718 = !DILocation(line: 114, column: 9, scope: !715)
!719 = !DILocation(line: 115, column: 25, scope: !191)
!720 = !DILocation(line: 115, column: 5, scope: !191)
!721 = !DILocation(line: 115, column: 8, scope: !191)
!722 = !DILocation(line: 115, column: 15, scope: !191)
!723 = !DILocation(line: 115, column: 23, scope: !191)
!724 = !DILocation(line: 116, column: 5, scope: !191)
!725 = !DILocation(line: 117, column: 1, scope: !191)
