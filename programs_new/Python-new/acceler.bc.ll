; ModuleID = 'irs-onlybc/acceler.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [37 x i8] c"no mem to build parser accelerators\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"XXX too many states!\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"XXX too high nonterminal number!\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"XXX ambiguity!\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"no mem to add parser accelerators\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @PyGrammar_AddAccelerators(%struct.grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %d = alloca %struct.dfa*, align 8
  %i = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !65, metadata !116), !dbg !117
  %0 = bitcast %struct.dfa** %d to i8*, !dbg !118
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !118
  call void @llvm.dbg.declare(metadata %struct.dfa** %d, metadata !66, metadata !116), !dbg !119
  %1 = bitcast i32* %i to i8*, !dbg !120
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !120
  call void @llvm.dbg.declare(metadata i32* %i, metadata !67, metadata !116), !dbg !121
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !122, !tbaa !112
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %2, i32 0, i32 1, !dbg !123
  %3 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8, !dbg !123, !tbaa !124
  store %struct.dfa* %3, %struct.dfa** %d, align 8, !dbg !128, !tbaa !112
  %4 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !129, !tbaa !112
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %4, i32 0, i32 0, !dbg !131
  %5 = load i32, i32* %g_ndfas, align 4, !dbg !131, !tbaa !132
  store i32 %5, i32* %i, align 4, !dbg !133, !tbaa !134
  br label %for.cond, !dbg !135

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !136, !tbaa !134
  %dec = add i32 %6, -1, !dbg !136
  store i32 %dec, i32* %i, align 4, !dbg !136, !tbaa !134
  %cmp = icmp sge i32 %dec, 0, !dbg !140
  br i1 %cmp, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.cond
  %7 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !142, !tbaa !112
  %8 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !143, !tbaa !112
  call void @fixdfa(%struct.grammar* %7, %struct.dfa* %8), !dbg !144
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %for.body
  %9 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !145, !tbaa !112
  %incdec.ptr = getelementptr %struct.dfa, %struct.dfa* %9, i32 1, !dbg !145
  store %struct.dfa* %incdec.ptr, %struct.dfa** %d, align 8, !dbg !145, !tbaa !112
  br label %for.cond, !dbg !146

for.end:                                          ; preds = %for.cond
  %10 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !147, !tbaa !112
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %10, i32 0, i32 4, !dbg !148
  store i32 1, i32* %g_accel, align 4, !dbg !149, !tbaa !150
  %11 = bitcast i32* %i to i8*, !dbg !151
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !151
  %12 = bitcast %struct.dfa** %d to i8*, !dbg !151
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !151
  ret void, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define internal void @fixdfa(%struct.grammar* %g, %struct.dfa* %d) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %d.addr = alloca %struct.dfa*, align 8
  %s = alloca %struct.state*, align 8
  %j = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !82, metadata !116), !dbg !152
  store %struct.dfa* %d, %struct.dfa** %d.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct.dfa** %d.addr, metadata !83, metadata !116), !dbg !153
  %0 = bitcast %struct.state** %s to i8*, !dbg !154
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !154
  call void @llvm.dbg.declare(metadata %struct.state** %s, metadata !84, metadata !116), !dbg !155
  %1 = bitcast i32* %j to i8*, !dbg !156
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %j, metadata !85, metadata !116), !dbg !157
  %2 = load %struct.dfa*, %struct.dfa** %d.addr, align 8, !dbg !158, !tbaa !112
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %2, i32 0, i32 4, !dbg !159
  %3 = load %struct.state*, %struct.state** %d_state, align 8, !dbg !159, !tbaa !160
  store %struct.state* %3, %struct.state** %s, align 8, !dbg !162, !tbaa !112
  store i32 0, i32* %j, align 4, !dbg !163, !tbaa !134
  br label %for.cond, !dbg !165

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4, !dbg !166, !tbaa !134
  %5 = load %struct.dfa*, %struct.dfa** %d.addr, align 8, !dbg !170, !tbaa !112
  %d_nstates = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 3, !dbg !171
  %6 = load i32, i32* %d_nstates, align 4, !dbg !171, !tbaa !172
  %cmp = icmp slt i32 %4, %6, !dbg !173
  br i1 %cmp, label %for.body, label %for.end, !dbg !174

for.body:                                         ; preds = %for.cond
  %7 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !175, !tbaa !112
  %8 = load %struct.state*, %struct.state** %s, align 8, !dbg !176, !tbaa !112
  call void @fixstate(%struct.grammar* %7, %struct.state* %8), !dbg !177
  br label %for.inc, !dbg !177

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4, !dbg !178, !tbaa !134
  %inc = add i32 %9, 1, !dbg !178
  store i32 %inc, i32* %j, align 4, !dbg !178, !tbaa !134
  %10 = load %struct.state*, %struct.state** %s, align 8, !dbg !179, !tbaa !112
  %incdec.ptr = getelementptr %struct.state, %struct.state* %10, i32 1, !dbg !179
  store %struct.state* %incdec.ptr, %struct.state** %s, align 8, !dbg !179, !tbaa !112
  br label %for.cond, !dbg !180

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %j to i8*, !dbg !181
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !181
  %12 = bitcast %struct.state** %s to i8*, !dbg !181
  call void @llvm.lifetime.end(i64 8, i8* %12) #2, !dbg !181
  ret void, !dbg !181
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @PyGrammar_RemoveAccelerators(%struct.grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %d = alloca %struct.dfa*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.state*, align 8
  %j = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !70, metadata !116), !dbg !182
  %0 = bitcast %struct.dfa** %d to i8*, !dbg !183
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !183
  call void @llvm.dbg.declare(metadata %struct.dfa** %d, metadata !71, metadata !116), !dbg !184
  %1 = bitcast i32* %i to i8*, !dbg !185
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !185
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !116), !dbg !186
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !187, !tbaa !112
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %2, i32 0, i32 4, !dbg !188
  store i32 0, i32* %g_accel, align 4, !dbg !189, !tbaa !150
  %3 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !190, !tbaa !112
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %3, i32 0, i32 1, !dbg !191
  %4 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8, !dbg !191, !tbaa !124
  store %struct.dfa* %4, %struct.dfa** %d, align 8, !dbg !192, !tbaa !112
  %5 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !193, !tbaa !112
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %5, i32 0, i32 0, !dbg !194
  %6 = load i32, i32* %g_ndfas, align 4, !dbg !194, !tbaa !132
  store i32 %6, i32* %i, align 4, !dbg !195, !tbaa !134
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %for.inc.6, %entry
  %7 = load i32, i32* %i, align 4, !dbg !197, !tbaa !134
  %dec = add i32 %7, -1, !dbg !197
  store i32 %dec, i32* %i, align 4, !dbg !197, !tbaa !134
  %cmp = icmp sge i32 %dec, 0, !dbg !200
  br i1 %cmp, label %for.body, label %for.end.8, !dbg !201

for.body:                                         ; preds = %for.cond
  %8 = bitcast %struct.state** %s to i8*, !dbg !202
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !202
  call void @llvm.dbg.declare(metadata %struct.state** %s, metadata !73, metadata !116), !dbg !203
  %9 = bitcast i32* %j to i8*, !dbg !204
  call void @llvm.lifetime.start(i64 4, i8* %9) #2, !dbg !204
  call void @llvm.dbg.declare(metadata i32* %j, metadata !77, metadata !116), !dbg !205
  %10 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !206, !tbaa !112
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %10, i32 0, i32 4, !dbg !207
  %11 = load %struct.state*, %struct.state** %d_state, align 8, !dbg !207, !tbaa !160
  store %struct.state* %11, %struct.state** %s, align 8, !dbg !208, !tbaa !112
  store i32 0, i32* %j, align 4, !dbg !209, !tbaa !134
  br label %for.cond.1, !dbg !211

for.cond.1:                                       ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4, !dbg !212, !tbaa !134
  %13 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !216, !tbaa !112
  %d_nstates = getelementptr inbounds %struct.dfa, %struct.dfa* %13, i32 0, i32 3, !dbg !217
  %14 = load i32, i32* %d_nstates, align 4, !dbg !217, !tbaa !172
  %cmp2 = icmp slt i32 %12, %14, !dbg !218
  br i1 %cmp2, label %for.body.3, label %for.end, !dbg !219

for.body.3:                                       ; preds = %for.cond.1
  %15 = load %struct.state*, %struct.state** %s, align 8, !dbg !220, !tbaa !112
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %15, i32 0, i32 4, !dbg !223
  %16 = load i32*, i32** %s_accel, align 8, !dbg !223, !tbaa !224
  %tobool = icmp ne i32* %16, null, !dbg !220
  br i1 %tobool, label %if.then, label %if.end, !dbg !226

if.then:                                          ; preds = %for.body.3
  %17 = load %struct.state*, %struct.state** %s, align 8, !dbg !227, !tbaa !112
  %s_accel4 = getelementptr inbounds %struct.state, %struct.state* %17, i32 0, i32 4, !dbg !228
  %18 = load i32*, i32** %s_accel4, align 8, !dbg !228, !tbaa !224
  %19 = bitcast i32* %18 to i8*, !dbg !227
  call void @PyObject_Free(i8* %19), !dbg !229
  br label %if.end, !dbg !229

if.end:                                           ; preds = %if.then, %for.body.3
  %20 = load %struct.state*, %struct.state** %s, align 8, !dbg !230, !tbaa !112
  %s_accel5 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 4, !dbg !231
  store i32* null, i32** %s_accel5, align 8, !dbg !232, !tbaa !224
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %j, align 4, !dbg !234, !tbaa !134
  %inc = add i32 %21, 1, !dbg !234
  store i32 %inc, i32* %j, align 4, !dbg !234, !tbaa !134
  %22 = load %struct.state*, %struct.state** %s, align 8, !dbg !235, !tbaa !112
  %incdec.ptr = getelementptr %struct.state, %struct.state* %22, i32 1, !dbg !235
  store %struct.state* %incdec.ptr, %struct.state** %s, align 8, !dbg !235, !tbaa !112
  br label %for.cond.1, !dbg !236

for.end:                                          ; preds = %for.cond.1
  %23 = bitcast i32* %j to i8*, !dbg !237
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !237
  %24 = bitcast %struct.state** %s to i8*, !dbg !237
  call void @llvm.lifetime.end(i64 8, i8* %24) #2, !dbg !237
  br label %for.inc.6, !dbg !238

for.inc.6:                                        ; preds = %for.end
  %25 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !239, !tbaa !112
  %incdec.ptr7 = getelementptr %struct.dfa, %struct.dfa* %25, i32 1, !dbg !239
  store %struct.dfa* %incdec.ptr7, %struct.dfa** %d, align 8, !dbg !239, !tbaa !112
  br label %for.cond, !dbg !240

for.end.8:                                        ; preds = %for.cond
  %26 = bitcast i32* %i to i8*, !dbg !241
  call void @llvm.lifetime.end(i64 4, i8* %26) #2, !dbg !241
  %27 = bitcast %struct.dfa** %d to i8*, !dbg !241
  call void @llvm.lifetime.end(i64 8, i8* %27) #2, !dbg !241
  ret void, !dbg !241
}

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @fixstate(%struct.grammar* %g, %struct.state* %s) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %s.addr = alloca %struct.state*, align 8
  %a = alloca %struct.arc*, align 8
  %k = alloca i32, align 4
  %accel = alloca i32*, align 8
  %nl = alloca i32, align 4
  %lbl = alloca i32, align 4
  %l = alloca %struct.label*, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %d1 = alloca %struct.dfa*, align 8
  %ibit = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !90, metadata !116), !dbg !242
  store %struct.state* %s, %struct.state** %s.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct.state** %s.addr, metadata !91, metadata !116), !dbg !243
  %0 = bitcast %struct.arc** %a to i8*, !dbg !244
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !244
  call void @llvm.dbg.declare(metadata %struct.arc** %a, metadata !92, metadata !116), !dbg !245
  %1 = bitcast i32* %k to i8*, !dbg !246
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !246
  call void @llvm.dbg.declare(metadata i32* %k, metadata !93, metadata !116), !dbg !247
  %2 = bitcast i32** %accel to i8*, !dbg !248
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !248
  call void @llvm.dbg.declare(metadata i32** %accel, metadata !94, metadata !116), !dbg !249
  %3 = bitcast i32* %nl to i8*, !dbg !250
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !250
  call void @llvm.dbg.declare(metadata i32* %nl, metadata !95, metadata !116), !dbg !251
  %4 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !252, !tbaa !112
  %g_ll = getelementptr inbounds %struct.grammar, %struct.grammar* %4, i32 0, i32 2, !dbg !253
  %ll_nlabels = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll, i32 0, i32 0, !dbg !254
  %5 = load i32, i32* %ll_nlabels, align 4, !dbg !254, !tbaa !255
  store i32 %5, i32* %nl, align 4, !dbg !251, !tbaa !134
  %6 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !256, !tbaa !112
  %s_accept = getelementptr inbounds %struct.state, %struct.state* %6, i32 0, i32 5, !dbg !257
  store i32 0, i32* %s_accept, align 4, !dbg !258, !tbaa !259
  %7 = load i32, i32* %nl, align 4, !dbg !260, !tbaa !134
  %conv = sext i32 %7 to i64, !dbg !260
  %mul = mul i64 %conv, 4, !dbg !261
  %call = call i8* @PyObject_Malloc(i64 %mul), !dbg !262
  %8 = bitcast i8* %call to i32*, !dbg !263
  store i32* %8, i32** %accel, align 8, !dbg !264, !tbaa !112
  %9 = load i32*, i32** %accel, align 8, !dbg !265, !tbaa !112
  %cmp = icmp eq i32* %9, null, !dbg !267
  br i1 %cmp, label %if.then, label %if.end, !dbg !268

if.then:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !269, !tbaa !112
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0)), !dbg !271
  call void @exit(i32 1) #5, !dbg !272
  unreachable, !dbg !272

if.end:                                           ; preds = %entry
  store i32 0, i32* %k, align 4, !dbg !273, !tbaa !134
  br label %for.cond, !dbg !275

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %k, align 4, !dbg !276, !tbaa !134
  %12 = load i32, i32* %nl, align 4, !dbg !280, !tbaa !134
  %cmp3 = icmp slt i32 %11, %12, !dbg !281
  br i1 %cmp3, label %for.body, label %for.end, !dbg !282

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %k, align 4, !dbg !283, !tbaa !134
  %idxprom = sext i32 %13 to i64, !dbg !284
  %14 = load i32*, i32** %accel, align 8, !dbg !284, !tbaa !112
  %arrayidx = getelementptr i32, i32* %14, i64 %idxprom, !dbg !284
  store i32 -1, i32* %arrayidx, align 4, !dbg !285, !tbaa !134
  br label %for.inc, !dbg !284

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %k, align 4, !dbg !286, !tbaa !134
  %inc = add i32 %15, 1, !dbg !286
  store i32 %inc, i32* %k, align 4, !dbg !286, !tbaa !134
  br label %for.cond, !dbg !287

for.end:                                          ; preds = %for.cond
  %16 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !288, !tbaa !112
  %s_arc = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 1, !dbg !289
  %17 = load %struct.arc*, %struct.arc** %s_arc, align 8, !dbg !289, !tbaa !290
  store %struct.arc* %17, %struct.arc** %a, align 8, !dbg !291, !tbaa !112
  %18 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !292, !tbaa !112
  %s_narcs = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 0, !dbg !293
  %19 = load i32, i32* %s_narcs, align 4, !dbg !293, !tbaa !294
  store i32 %19, i32* %k, align 4, !dbg !295, !tbaa !134
  br label %for.cond.5, !dbg !296

for.cond.5:                                       ; preds = %for.inc.82, %for.end
  %20 = load i32, i32* %k, align 4, !dbg !297, !tbaa !134
  %dec = add i32 %20, -1, !dbg !297
  store i32 %dec, i32* %k, align 4, !dbg !297, !tbaa !134
  %cmp6 = icmp sge i32 %dec, 0, !dbg !300
  br i1 %cmp6, label %for.body.8, label %for.end.83, !dbg !301

for.body.8:                                       ; preds = %for.cond.5
  %21 = bitcast i32* %lbl to i8*, !dbg !302
  call void @llvm.lifetime.start(i64 4, i8* %21) #2, !dbg !302
  call void @llvm.dbg.declare(metadata i32* %lbl, metadata !96, metadata !116), !dbg !303
  %22 = load %struct.arc*, %struct.arc** %a, align 8, !dbg !304, !tbaa !112
  %a_lbl = getelementptr inbounds %struct.arc, %struct.arc* %22, i32 0, i32 0, !dbg !305
  %23 = load i16, i16* %a_lbl, align 2, !dbg !305, !tbaa !306
  %conv9 = sext i16 %23 to i32, !dbg !304
  store i32 %conv9, i32* %lbl, align 4, !dbg !303, !tbaa !134
  %24 = bitcast %struct.label** %l to i8*, !dbg !309
  call void @llvm.lifetime.start(i64 8, i8* %24) #2, !dbg !309
  call void @llvm.dbg.declare(metadata %struct.label** %l, metadata !100, metadata !116), !dbg !310
  %25 = load i32, i32* %lbl, align 4, !dbg !311, !tbaa !134
  %idxprom10 = sext i32 %25 to i64, !dbg !312
  %26 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !312, !tbaa !112
  %g_ll11 = getelementptr inbounds %struct.grammar, %struct.grammar* %26, i32 0, i32 2, !dbg !313
  %ll_label = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll11, i32 0, i32 1, !dbg !314
  %27 = load %struct.label*, %struct.label** %ll_label, align 8, !dbg !314, !tbaa !315
  %arrayidx12 = getelementptr %struct.label, %struct.label* %27, i64 %idxprom10, !dbg !312
  store %struct.label* %arrayidx12, %struct.label** %l, align 8, !dbg !310, !tbaa !112
  %28 = bitcast i32* %type to i8*, !dbg !316
  call void @llvm.lifetime.start(i64 4, i8* %28) #2, !dbg !316
  call void @llvm.dbg.declare(metadata i32* %type, metadata !101, metadata !116), !dbg !317
  %29 = load %struct.label*, %struct.label** %l, align 8, !dbg !318, !tbaa !112
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %29, i32 0, i32 0, !dbg !319
  %30 = load i32, i32* %lb_type, align 4, !dbg !319, !tbaa !320
  store i32 %30, i32* %type, align 4, !dbg !317, !tbaa !134
  %31 = load %struct.arc*, %struct.arc** %a, align 8, !dbg !321, !tbaa !112
  %a_arrow = getelementptr inbounds %struct.arc, %struct.arc* %31, i32 0, i32 1, !dbg !323
  %32 = load i16, i16* %a_arrow, align 2, !dbg !323, !tbaa !324
  %conv13 = sext i16 %32 to i32, !dbg !321
  %cmp14 = icmp sge i32 %conv13, 128, !dbg !325
  br i1 %cmp14, label %if.then.16, label %if.end.18, !dbg !326

if.then.16:                                       ; preds = %for.body.8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0)), !dbg !327
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup.77, !dbg !329

if.end.18:                                        ; preds = %for.body.8
  %33 = load i32, i32* %type, align 4, !dbg !330, !tbaa !134
  %cmp19 = icmp sge i32 %33, 256, !dbg !331
  br i1 %cmp19, label %if.then.21, label %if.else, !dbg !332

if.then.21:                                       ; preds = %if.end.18
  %34 = bitcast %struct.dfa** %d1 to i8*, !dbg !333
  call void @llvm.lifetime.start(i64 8, i8* %34) #2, !dbg !333
  call void @llvm.dbg.declare(metadata %struct.dfa** %d1, metadata !102, metadata !116), !dbg !334
  %35 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !335, !tbaa !112
  %36 = load i32, i32* %type, align 4, !dbg !336, !tbaa !134
  %call22 = call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %35, i32 %36), !dbg !337
  store %struct.dfa* %call22, %struct.dfa** %d1, align 8, !dbg !334, !tbaa !112
  %37 = bitcast i32* %ibit to i8*, !dbg !338
  call void @llvm.lifetime.start(i64 4, i8* %37) #2, !dbg !338
  call void @llvm.dbg.declare(metadata i32* %ibit, metadata !105, metadata !116), !dbg !339
  %38 = load i32, i32* %type, align 4, !dbg !340, !tbaa !134
  %sub = sub i32 %38, 256, !dbg !342
  %cmp23 = icmp sge i32 %sub, 128, !dbg !343
  br i1 %cmp23, label %if.then.25, label %if.end.27, !dbg !344

if.then.25:                                       ; preds = %if.then.21
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0)), !dbg !345
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !347

if.end.27:                                        ; preds = %if.then.21
  store i32 0, i32* %ibit, align 4, !dbg !348, !tbaa !134
  br label %for.cond.28, !dbg !350

for.cond.28:                                      ; preds = %for.inc.56, %if.end.27
  %39 = load i32, i32* %ibit, align 4, !dbg !351, !tbaa !134
  %40 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !355, !tbaa !112
  %g_ll29 = getelementptr inbounds %struct.grammar, %struct.grammar* %40, i32 0, i32 2, !dbg !356
  %ll_nlabels30 = getelementptr inbounds %struct.labellist, %struct.labellist* %g_ll29, i32 0, i32 0, !dbg !357
  %41 = load i32, i32* %ll_nlabels30, align 4, !dbg !357, !tbaa !255
  %cmp31 = icmp slt i32 %39, %41, !dbg !358
  br i1 %cmp31, label %for.body.33, label %for.end.58, !dbg !359

for.body.33:                                      ; preds = %for.cond.28
  %42 = load i32, i32* %ibit, align 4, !dbg !360, !tbaa !134
  %conv34 = sext i32 %42 to i64, !dbg !363
  %div = udiv i64 %conv34, 8, !dbg !364
  %43 = load %struct.dfa*, %struct.dfa** %d1, align 8, !dbg !365, !tbaa !112
  %d_first = getelementptr inbounds %struct.dfa, %struct.dfa* %43, i32 0, i32 5, !dbg !366
  %44 = load i8*, i8** %d_first, align 8, !dbg !366, !tbaa !367
  %arrayidx35 = getelementptr i8, i8* %44, i64 %div, !dbg !368
  %45 = load i8, i8* %arrayidx35, align 1, !dbg !368, !tbaa !369
  %conv36 = sext i8 %45 to i32, !dbg !368
  %46 = load i32, i32* %ibit, align 4, !dbg !370, !tbaa !134
  %conv37 = sext i32 %46 to i64, !dbg !371
  %rem = urem i64 %conv37, 8, !dbg !372
  %sh_prom = trunc i64 %rem to i32, !dbg !373
  %shl = shl i32 1, %sh_prom, !dbg !373
  %and = and i32 %conv36, %shl, !dbg !374
  %cmp38 = icmp ne i32 %and, 0, !dbg !375
  br i1 %cmp38, label %if.then.40, label %if.end.55, !dbg !376

if.then.40:                                       ; preds = %for.body.33
  %47 = load i32, i32* %ibit, align 4, !dbg !377, !tbaa !134
  %idxprom41 = sext i32 %47 to i64, !dbg !380
  %48 = load i32*, i32** %accel, align 8, !dbg !380, !tbaa !112
  %arrayidx42 = getelementptr i32, i32* %48, i64 %idxprom41, !dbg !380
  %49 = load i32, i32* %arrayidx42, align 4, !dbg !380, !tbaa !134
  %cmp43 = icmp ne i32 %49, -1, !dbg !381
  br i1 %cmp43, label %if.then.45, label %if.end.47, !dbg !382

if.then.45:                                       ; preds = %if.then.40
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !383
  br label %if.end.47, !dbg !383

if.end.47:                                        ; preds = %if.then.45, %if.then.40
  %50 = load %struct.arc*, %struct.arc** %a, align 8, !dbg !384, !tbaa !112
  %a_arrow48 = getelementptr inbounds %struct.arc, %struct.arc* %50, i32 0, i32 1, !dbg !385
  %51 = load i16, i16* %a_arrow48, align 2, !dbg !385, !tbaa !324
  %conv49 = sext i16 %51 to i32, !dbg !384
  %or = or i32 %conv49, 128, !dbg !386
  %52 = load i32, i32* %type, align 4, !dbg !387, !tbaa !134
  %sub50 = sub i32 %52, 256, !dbg !388
  %shl51 = shl i32 %sub50, 8, !dbg !389
  %or52 = or i32 %or, %shl51, !dbg !390
  %53 = load i32, i32* %ibit, align 4, !dbg !391, !tbaa !134
  %idxprom53 = sext i32 %53 to i64, !dbg !392
  %54 = load i32*, i32** %accel, align 8, !dbg !392, !tbaa !112
  %arrayidx54 = getelementptr i32, i32* %54, i64 %idxprom53, !dbg !392
  store i32 %or52, i32* %arrayidx54, align 4, !dbg !393, !tbaa !134
  br label %if.end.55, !dbg !394

if.end.55:                                        ; preds = %if.end.47, %for.body.33
  br label %for.inc.56, !dbg !395

for.inc.56:                                       ; preds = %if.end.55
  %55 = load i32, i32* %ibit, align 4, !dbg !396, !tbaa !134
  %inc57 = add i32 %55, 1, !dbg !396
  store i32 %inc57, i32* %ibit, align 4, !dbg !396, !tbaa !134
  br label %for.cond.28, !dbg !397

for.end.58:                                       ; preds = %for.cond.28
  store i32 0, i32* %cleanup.dest.slot, !dbg !398
  br label %cleanup, !dbg !398

cleanup:                                          ; preds = %for.end.58, %if.then.25
  %56 = bitcast i32* %ibit to i8*, !dbg !399
  call void @llvm.lifetime.end(i64 4, i8* %56) #2, !dbg !399
  %57 = bitcast %struct.dfa** %d1 to i8*, !dbg !399
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !399
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.77 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.76, !dbg !401

if.else:                                          ; preds = %if.end.18
  %58 = load i32, i32* %lbl, align 4, !dbg !402, !tbaa !134
  %cmp60 = icmp eq i32 %58, 0, !dbg !404
  br i1 %cmp60, label %if.then.62, label %if.else.64, !dbg !405

if.then.62:                                       ; preds = %if.else
  %59 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !406, !tbaa !112
  %s_accept63 = getelementptr inbounds %struct.state, %struct.state* %59, i32 0, i32 5, !dbg !407
  store i32 1, i32* %s_accept63, align 4, !dbg !408, !tbaa !259
  br label %if.end.75, !dbg !406

if.else.64:                                       ; preds = %if.else
  %60 = load i32, i32* %lbl, align 4, !dbg !409, !tbaa !134
  %cmp65 = icmp sge i32 %60, 0, !dbg !411
  br i1 %cmp65, label %land.lhs.true, label %if.end.74, !dbg !412

land.lhs.true:                                    ; preds = %if.else.64
  %61 = load i32, i32* %lbl, align 4, !dbg !413, !tbaa !134
  %62 = load i32, i32* %nl, align 4, !dbg !415, !tbaa !134
  %cmp67 = icmp slt i32 %61, %62, !dbg !416
  br i1 %cmp67, label %if.then.69, label %if.end.74, !dbg !417

if.then.69:                                       ; preds = %land.lhs.true
  %63 = load %struct.arc*, %struct.arc** %a, align 8, !dbg !418, !tbaa !112
  %a_arrow70 = getelementptr inbounds %struct.arc, %struct.arc* %63, i32 0, i32 1, !dbg !419
  %64 = load i16, i16* %a_arrow70, align 2, !dbg !419, !tbaa !324
  %conv71 = sext i16 %64 to i32, !dbg !418
  %65 = load i32, i32* %lbl, align 4, !dbg !420, !tbaa !134
  %idxprom72 = sext i32 %65 to i64, !dbg !421
  %66 = load i32*, i32** %accel, align 8, !dbg !421, !tbaa !112
  %arrayidx73 = getelementptr i32, i32* %66, i64 %idxprom72, !dbg !421
  store i32 %conv71, i32* %arrayidx73, align 4, !dbg !422, !tbaa !134
  br label %if.end.74, !dbg !421

if.end.74:                                        ; preds = %if.then.69, %land.lhs.true, %if.else.64
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.62
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %cleanup.cont
  store i32 0, i32* %cleanup.dest.slot, !dbg !423
  br label %cleanup.77, !dbg !423

cleanup.77:                                       ; preds = %if.end.76, %cleanup, %if.then.16
  %67 = bitcast i32* %type to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 4, i8* %67) #2, !dbg !424
  %68 = bitcast %struct.label** %l to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !424
  %69 = bitcast i32* %lbl to i8*, !dbg !424
  call void @llvm.lifetime.end(i64 4, i8* %69) #2, !dbg !424
  %cleanup.dest.80 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.80, label %unreachable [
    i32 0, label %cleanup.cont.81
    i32 7, label %for.inc.82
  ]

cleanup.cont.81:                                  ; preds = %cleanup.77
  br label %for.inc.82, !dbg !425

for.inc.82:                                       ; preds = %cleanup.cont.81, %cleanup.77
  %70 = load %struct.arc*, %struct.arc** %a, align 8, !dbg !426, !tbaa !112
  %incdec.ptr = getelementptr %struct.arc, %struct.arc* %70, i32 1, !dbg !426
  store %struct.arc* %incdec.ptr, %struct.arc** %a, align 8, !dbg !426, !tbaa !112
  br label %for.cond.5, !dbg !427

for.end.83:                                       ; preds = %for.cond.5
  br label %while.cond, !dbg !428

while.cond:                                       ; preds = %while.body, %for.end.83
  %71 = load i32, i32* %nl, align 4, !dbg !429, !tbaa !134
  %cmp84 = icmp sgt i32 %71, 0, !dbg !432
  br i1 %cmp84, label %land.rhs, label %land.end, !dbg !433

land.rhs:                                         ; preds = %while.cond
  %72 = load i32, i32* %nl, align 4, !dbg !434, !tbaa !134
  %sub86 = sub i32 %72, 1, !dbg !436
  %idxprom87 = sext i32 %sub86 to i64, !dbg !437
  %73 = load i32*, i32** %accel, align 8, !dbg !437, !tbaa !112
  %arrayidx88 = getelementptr i32, i32* %73, i64 %idxprom87, !dbg !437
  %74 = load i32, i32* %arrayidx88, align 4, !dbg !437, !tbaa !134
  %cmp89 = icmp eq i32 %74, -1, !dbg !438
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %75 = phi i1 [ false, %while.cond ], [ %cmp89, %land.rhs ]
  br i1 %75, label %while.body, label %while.end, !dbg !439

while.body:                                       ; preds = %land.end
  %76 = load i32, i32* %nl, align 4, !dbg !441, !tbaa !134
  %dec91 = add i32 %76, -1, !dbg !441
  store i32 %dec91, i32* %nl, align 4, !dbg !441, !tbaa !134
  br label %while.cond, !dbg !428

while.end:                                        ; preds = %land.end
  store i32 0, i32* %k, align 4, !dbg !442, !tbaa !134
  br label %for.cond.92, !dbg !444

for.cond.92:                                      ; preds = %for.body.101, %while.end
  %77 = load i32, i32* %k, align 4, !dbg !445, !tbaa !134
  %78 = load i32, i32* %nl, align 4, !dbg !449, !tbaa !134
  %cmp93 = icmp slt i32 %77, %78, !dbg !450
  br i1 %cmp93, label %land.rhs.95, label %land.end.100, !dbg !451

land.rhs.95:                                      ; preds = %for.cond.92
  %79 = load i32, i32* %k, align 4, !dbg !452, !tbaa !134
  %idxprom96 = sext i32 %79 to i64, !dbg !454
  %80 = load i32*, i32** %accel, align 8, !dbg !454, !tbaa !112
  %arrayidx97 = getelementptr i32, i32* %80, i64 %idxprom96, !dbg !454
  %81 = load i32, i32* %arrayidx97, align 4, !dbg !454, !tbaa !134
  %cmp98 = icmp eq i32 %81, -1, !dbg !455
  br label %land.end.100

land.end.100:                                     ; preds = %land.rhs.95, %for.cond.92
  %82 = phi i1 [ false, %for.cond.92 ], [ %cmp98, %land.rhs.95 ]
  br i1 %82, label %for.body.101, label %for.end.103, !dbg !456

for.body.101:                                     ; preds = %land.end.100
  %83 = load i32, i32* %k, align 4, !dbg !458, !tbaa !134
  %inc102 = add i32 %83, 1, !dbg !458
  store i32 %inc102, i32* %k, align 4, !dbg !458, !tbaa !134
  br label %for.cond.92, !dbg !459

for.end.103:                                      ; preds = %land.end.100
  %84 = load i32, i32* %k, align 4, !dbg !460, !tbaa !134
  %85 = load i32, i32* %nl, align 4, !dbg !461, !tbaa !134
  %cmp104 = icmp slt i32 %84, %85, !dbg !462
  br i1 %cmp104, label %if.then.106, label %if.end.130, !dbg !463

if.then.106:                                      ; preds = %for.end.103
  %86 = bitcast i32* %i to i8*, !dbg !464
  call void @llvm.lifetime.start(i64 4, i8* %86) #2, !dbg !464
  call void @llvm.dbg.declare(metadata i32* %i, metadata !106, metadata !116), !dbg !465
  %87 = load i32, i32* %nl, align 4, !dbg !466, !tbaa !134
  %88 = load i32, i32* %k, align 4, !dbg !467, !tbaa !134
  %sub107 = sub i32 %87, %88, !dbg !468
  %conv108 = sext i32 %sub107 to i64, !dbg !469
  %mul109 = mul i64 %conv108, 4, !dbg !470
  %call110 = call i8* @PyObject_Malloc(i64 %mul109), !dbg !471
  %89 = bitcast i8* %call110 to i32*, !dbg !472
  %90 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !473, !tbaa !112
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %90, i32 0, i32 4, !dbg !474
  store i32* %89, i32** %s_accel, align 8, !dbg !475, !tbaa !224
  %91 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !476, !tbaa !112
  %s_accel111 = getelementptr inbounds %struct.state, %struct.state* %91, i32 0, i32 4, !dbg !478
  %92 = load i32*, i32** %s_accel111, align 8, !dbg !478, !tbaa !224
  %cmp112 = icmp eq i32* %92, null, !dbg !479
  br i1 %cmp112, label %if.then.114, label %if.end.116, !dbg !480

if.then.114:                                      ; preds = %if.then.106
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !481, !tbaa !112
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0)), !dbg !483
  call void @exit(i32 1) #5, !dbg !484
  unreachable, !dbg !484

if.end.116:                                       ; preds = %if.then.106
  %94 = load i32, i32* %k, align 4, !dbg !485, !tbaa !134
  %95 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !486, !tbaa !112
  %s_lower = getelementptr inbounds %struct.state, %struct.state* %95, i32 0, i32 2, !dbg !487
  store i32 %94, i32* %s_lower, align 4, !dbg !488, !tbaa !489
  %96 = load i32, i32* %nl, align 4, !dbg !490, !tbaa !134
  %97 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !491, !tbaa !112
  %s_upper = getelementptr inbounds %struct.state, %struct.state* %97, i32 0, i32 3, !dbg !492
  store i32 %96, i32* %s_upper, align 4, !dbg !493, !tbaa !494
  store i32 0, i32* %i, align 4, !dbg !495, !tbaa !134
  br label %for.cond.117, !dbg !497

for.cond.117:                                     ; preds = %for.inc.126, %if.end.116
  %98 = load i32, i32* %k, align 4, !dbg !498, !tbaa !134
  %99 = load i32, i32* %nl, align 4, !dbg !502, !tbaa !134
  %cmp118 = icmp slt i32 %98, %99, !dbg !503
  br i1 %cmp118, label %for.body.120, label %for.end.129, !dbg !504

for.body.120:                                     ; preds = %for.cond.117
  %100 = load i32, i32* %k, align 4, !dbg !505, !tbaa !134
  %idxprom121 = sext i32 %100 to i64, !dbg !506
  %101 = load i32*, i32** %accel, align 8, !dbg !506, !tbaa !112
  %arrayidx122 = getelementptr i32, i32* %101, i64 %idxprom121, !dbg !506
  %102 = load i32, i32* %arrayidx122, align 4, !dbg !506, !tbaa !134
  %103 = load i32, i32* %i, align 4, !dbg !507, !tbaa !134
  %idxprom123 = sext i32 %103 to i64, !dbg !508
  %104 = load %struct.state*, %struct.state** %s.addr, align 8, !dbg !508, !tbaa !112
  %s_accel124 = getelementptr inbounds %struct.state, %struct.state* %104, i32 0, i32 4, !dbg !509
  %105 = load i32*, i32** %s_accel124, align 8, !dbg !509, !tbaa !224
  %arrayidx125 = getelementptr i32, i32* %105, i64 %idxprom123, !dbg !508
  store i32 %102, i32* %arrayidx125, align 4, !dbg !510, !tbaa !134
  br label %for.inc.126, !dbg !508

for.inc.126:                                      ; preds = %for.body.120
  %106 = load i32, i32* %i, align 4, !dbg !511, !tbaa !134
  %inc127 = add i32 %106, 1, !dbg !511
  store i32 %inc127, i32* %i, align 4, !dbg !511, !tbaa !134
  %107 = load i32, i32* %k, align 4, !dbg !512, !tbaa !134
  %inc128 = add i32 %107, 1, !dbg !512
  store i32 %inc128, i32* %k, align 4, !dbg !512, !tbaa !134
  br label %for.cond.117, !dbg !513

for.end.129:                                      ; preds = %for.cond.117
  %108 = bitcast i32* %i to i8*, !dbg !514
  call void @llvm.lifetime.end(i64 4, i8* %108) #2, !dbg !514
  br label %if.end.130, !dbg !515

if.end.130:                                       ; preds = %for.end.129, %for.end.103
  %109 = load i32*, i32** %accel, align 8, !dbg !516, !tbaa !112
  %110 = bitcast i32* %109 to i8*, !dbg !516
  call void @PyObject_Free(i8* %110), !dbg !517
  %111 = bitcast i32* %nl to i8*, !dbg !518
  call void @llvm.lifetime.end(i64 4, i8* %111) #2, !dbg !518
  %112 = bitcast i32** %accel to i8*, !dbg !518
  call void @llvm.lifetime.end(i64 8, i8* %112) #2, !dbg !518
  %113 = bitcast i32* %k to i8*, !dbg !518
  call void @llvm.lifetime.end(i64 4, i8* %113) #2, !dbg !518
  %114 = bitcast %struct.arc** %a to i8*, !dbg !518
  call void @llvm.lifetime.end(i64 8, i8* %114) #2, !dbg !518
  ret void, !dbg !518

unreachable:                                      ; preds = %cleanup.77
  unreachable
}

declare i8* @PyObject_Malloc(i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @printf(i8*, ...) #3

declare %struct.dfa* @PyGrammar_FindDFA(%struct.grammar*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!109, !110}
!llvm.ident = !{!111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7)
!1 = !DIFile(filename: "acceler.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !68, !78, !86}
!8 = !DISubprogram(name: "PyGrammar_AddAccelerators", scope: !9, file: !9, line: 24, type: !10, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.grammar*)* @PyGrammar_AddAccelerators, variables: !64)
!9 = !DIFile(filename: "Parser/acceler.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "grammar", file: !14, line: 67, baseType: !15)
!14 = !DIFile(filename: "Include/grammar.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 61, size: 320, align: 64, elements: !16)
!16 = !{!17, !18, !50, !62, !63}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "g_ndfas", scope: !15, file: !14, line: 62, baseType: !5, size: 32, align: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "g_dfa", scope: !15, file: !14, line: 63, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "dfa", file: !14, line: 57, baseType: !21)
!21 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 50, size: 320, align: 64, elements: !22)
!22 = !{!23, !24, !27, !28, !29, !47}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !21, file: !14, line: 51, baseType: !5, size: 32, align: 32)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !21, file: !14, line: 52, baseType: !25, size: 64, align: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "d_initial", scope: !21, file: !14, line: 53, baseType: !5, size: 32, align: 32, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "d_nstates", scope: !21, file: !14, line: 54, baseType: !5, size: 32, align: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "d_state", scope: !21, file: !14, line: 55, baseType: !30, size: 64, align: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "state", file: !14, line: 46, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 37, size: 320, align: 64, elements: !33)
!33 = !{!34, !35, !43, !44, !45, !46}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "s_narcs", scope: !32, file: !14, line: 38, baseType: !5, size: 32, align: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "s_arc", scope: !32, file: !14, line: 39, baseType: !36, size: 64, align: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc", file: !14, line: 33, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 30, size: 32, align: 16, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "a_lbl", scope: !38, file: !14, line: 31, baseType: !41, size: 16, align: 16)
!41 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "a_arrow", scope: !38, file: !14, line: 32, baseType: !41, size: 16, align: 16, offset: 16)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "s_lower", scope: !32, file: !14, line: 42, baseType: !5, size: 32, align: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "s_upper", scope: !32, file: !14, line: 43, baseType: !5, size: 32, align: 32, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "s_accel", scope: !32, file: !14, line: 44, baseType: !4, size: 64, align: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "s_accept", scope: !32, file: !14, line: 45, baseType: !5, size: 32, align: 32, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "d_first", scope: !21, file: !14, line: 56, baseType: !48, size: 64, align: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !49, line: 12, baseType: !25)
!49 = !DIFile(filename: "Include/bitset.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!50 = !DIDerivedType(tag: DW_TAG_member, name: "g_ll", scope: !15, file: !14, line: 64, baseType: !51, size: 128, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "labellist", file: !14, line: 26, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 23, size: 128, align: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ll_nlabels", scope: !52, file: !14, line: 24, baseType: !5, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ll_label", scope: !52, file: !14, line: 25, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "label", file: !14, line: 17, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 14, size: 128, align: 64, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !58, file: !14, line: 15, baseType: !5, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lb_str", scope: !58, file: !14, line: 16, baseType: !25, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "g_start", scope: !15, file: !14, line: 65, baseType: !5, size: 32, align: 32, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "g_accel", scope: !15, file: !14, line: 66, baseType: !5, size: 32, align: 32, offset: 288)
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !8, file: !9, line: 24, type: !12)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !8, file: !9, line: 26, type: !19)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !9, line: 27, type: !5)
!68 = !DISubprogram(name: "PyGrammar_RemoveAccelerators", scope: !9, file: !9, line: 35, type: !10, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.grammar*)* @PyGrammar_RemoveAccelerators, variables: !69)
!69 = !{!70, !71, !72, !73, !77}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !68, file: !9, line: 35, type: !12)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !68, file: !9, line: 37, type: !19)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !68, file: !9, line: 38, type: !5)
!73 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !74, file: !9, line: 42, type: !30)
!74 = distinct !DILexicalBlock(scope: !75, file: !9, line: 41, column: 41)
!75 = distinct !DILexicalBlock(scope: !76, file: !9, line: 41, column: 5)
!76 = distinct !DILexicalBlock(scope: !68, file: !9, line: 41, column: 5)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !74, file: !9, line: 43, type: !5)
!78 = !DISubprogram(name: "fixdfa", scope: !9, file: !9, line: 54, type: !79, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.grammar*, %struct.dfa*)* @fixdfa, variables: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !12, !19}
!81 = !{!82, !83, !84, !85}
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !78, file: !9, line: 54, type: !12)
!83 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 2, scope: !78, file: !9, line: 54, type: !19)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !78, file: !9, line: 56, type: !30)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !78, file: !9, line: 57, type: !5)
!86 = !DISubprogram(name: "fixstate", scope: !9, file: !9, line: 64, type: !87, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.grammar*, %struct.state*)* @fixstate, variables: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !12, !30}
!89 = !{!90, !91, !92, !93, !94, !95, !96, !100, !101, !102, !105, !106}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !86, file: !9, line: 64, type: !12)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !86, file: !9, line: 64, type: !30)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !86, file: !9, line: 66, type: !36)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !86, file: !9, line: 67, type: !5)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "accel", scope: !86, file: !9, line: 68, type: !4)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nl", scope: !86, file: !9, line: 69, type: !5)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lbl", scope: !97, file: !9, line: 80, type: !5)
!97 = distinct !DILexicalBlock(scope: !98, file: !9, line: 79, column: 41)
!98 = distinct !DILexicalBlock(scope: !99, file: !9, line: 79, column: 5)
!99 = distinct !DILexicalBlock(scope: !86, file: !9, line: 79, column: 5)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !97, file: !9, line: 81, type: !56)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !97, file: !9, line: 82, type: !5)
!102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d1", scope: !103, file: !9, line: 88, type: !19)
!103 = distinct !DILexicalBlock(scope: !104, file: !9, line: 87, column: 30)
!104 = distinct !DILexicalBlock(scope: !97, file: !9, line: 87, column: 13)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibit", scope: !103, file: !9, line: 89, type: !5)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !107, file: !9, line: 113, type: !5)
!107 = distinct !DILexicalBlock(scope: !108, file: !9, line: 112, column: 17)
!108 = distinct !DILexicalBlock(scope: !86, file: !9, line: 112, column: 9)
!109 = !{i32 2, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!112 = !{!113, !113, i64 0}
!113 = !{!"any pointer", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DIExpression()
!117 = !DILocation(line: 24, column: 36, scope: !8)
!118 = !DILocation(line: 26, column: 5, scope: !8)
!119 = !DILocation(line: 26, column: 10, scope: !8)
!120 = !DILocation(line: 27, column: 5, scope: !8)
!121 = !DILocation(line: 27, column: 9, scope: !8)
!122 = !DILocation(line: 28, column: 9, scope: !8)
!123 = !DILocation(line: 28, column: 12, scope: !8)
!124 = !{!125, !113, i64 8}
!125 = !{!"", !126, i64 0, !113, i64 8, !127, i64 16, !126, i64 32, !126, i64 36}
!126 = !{!"int", !114, i64 0}
!127 = !{!"", !126, i64 0, !113, i64 8}
!128 = !DILocation(line: 28, column: 7, scope: !8)
!129 = !DILocation(line: 29, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !8, file: !9, line: 29, column: 5)
!131 = !DILocation(line: 29, column: 17, scope: !130)
!132 = !{!125, !126, i64 0}
!133 = !DILocation(line: 29, column: 12, scope: !130)
!134 = !{!126, !126, i64 0}
!135 = !DILocation(line: 29, column: 10, scope: !130)
!136 = !DILocation(line: 29, column: 26, scope: !137)
!137 = !DILexicalBlockFile(scope: !138, file: !9, discriminator: 2)
!138 = !DILexicalBlockFile(scope: !139, file: !9, discriminator: 1)
!139 = distinct !DILexicalBlock(scope: !130, file: !9, line: 29, column: 5)
!140 = !DILocation(line: 29, column: 30, scope: !139)
!141 = !DILocation(line: 29, column: 5, scope: !130)
!142 = !DILocation(line: 30, column: 16, scope: !139)
!143 = !DILocation(line: 30, column: 19, scope: !139)
!144 = !DILocation(line: 30, column: 9, scope: !139)
!145 = !DILocation(line: 29, column: 37, scope: !139)
!146 = !DILocation(line: 29, column: 5, scope: !139)
!147 = !DILocation(line: 31, column: 5, scope: !8)
!148 = !DILocation(line: 31, column: 8, scope: !8)
!149 = !DILocation(line: 31, column: 16, scope: !8)
!150 = !{!125, !126, i64 36}
!151 = !DILocation(line: 32, column: 1, scope: !8)
!152 = !DILocation(line: 54, column: 17, scope: !78)
!153 = !DILocation(line: 54, column: 25, scope: !78)
!154 = !DILocation(line: 56, column: 5, scope: !78)
!155 = !DILocation(line: 56, column: 12, scope: !78)
!156 = !DILocation(line: 57, column: 5, scope: !78)
!157 = !DILocation(line: 57, column: 9, scope: !78)
!158 = !DILocation(line: 58, column: 9, scope: !78)
!159 = !DILocation(line: 58, column: 12, scope: !78)
!160 = !{!161, !113, i64 24}
!161 = !{!"", !126, i64 0, !113, i64 8, !126, i64 16, !126, i64 20, !113, i64 24, !113, i64 32}
!162 = !DILocation(line: 58, column: 7, scope: !78)
!163 = !DILocation(line: 59, column: 12, scope: !164)
!164 = distinct !DILexicalBlock(scope: !78, file: !9, line: 59, column: 5)
!165 = !DILocation(line: 59, column: 10, scope: !164)
!166 = !DILocation(line: 59, column: 17, scope: !167)
!167 = !DILexicalBlockFile(scope: !168, file: !9, discriminator: 2)
!168 = !DILexicalBlockFile(scope: !169, file: !9, discriminator: 1)
!169 = distinct !DILexicalBlock(scope: !164, file: !9, line: 59, column: 5)
!170 = !DILocation(line: 59, column: 21, scope: !169)
!171 = !DILocation(line: 59, column: 24, scope: !169)
!172 = !{!161, !126, i64 20}
!173 = !DILocation(line: 59, column: 19, scope: !169)
!174 = !DILocation(line: 59, column: 5, scope: !164)
!175 = !DILocation(line: 60, column: 18, scope: !169)
!176 = !DILocation(line: 60, column: 21, scope: !169)
!177 = !DILocation(line: 60, column: 9, scope: !169)
!178 = !DILocation(line: 59, column: 36, scope: !169)
!179 = !DILocation(line: 59, column: 41, scope: !169)
!180 = !DILocation(line: 59, column: 5, scope: !169)
!181 = !DILocation(line: 61, column: 1, scope: !78)
!182 = !DILocation(line: 35, column: 39, scope: !68)
!183 = !DILocation(line: 37, column: 5, scope: !68)
!184 = !DILocation(line: 37, column: 10, scope: !68)
!185 = !DILocation(line: 38, column: 5, scope: !68)
!186 = !DILocation(line: 38, column: 9, scope: !68)
!187 = !DILocation(line: 39, column: 5, scope: !68)
!188 = !DILocation(line: 39, column: 8, scope: !68)
!189 = !DILocation(line: 39, column: 16, scope: !68)
!190 = !DILocation(line: 40, column: 9, scope: !68)
!191 = !DILocation(line: 40, column: 12, scope: !68)
!192 = !DILocation(line: 40, column: 7, scope: !68)
!193 = !DILocation(line: 41, column: 14, scope: !76)
!194 = !DILocation(line: 41, column: 17, scope: !76)
!195 = !DILocation(line: 41, column: 12, scope: !76)
!196 = !DILocation(line: 41, column: 10, scope: !76)
!197 = !DILocation(line: 41, column: 26, scope: !198)
!198 = !DILexicalBlockFile(scope: !199, file: !9, discriminator: 2)
!199 = !DILexicalBlockFile(scope: !75, file: !9, discriminator: 1)
!200 = !DILocation(line: 41, column: 30, scope: !75)
!201 = !DILocation(line: 41, column: 5, scope: !76)
!202 = !DILocation(line: 42, column: 9, scope: !74)
!203 = !DILocation(line: 42, column: 16, scope: !74)
!204 = !DILocation(line: 43, column: 9, scope: !74)
!205 = !DILocation(line: 43, column: 13, scope: !74)
!206 = !DILocation(line: 44, column: 13, scope: !74)
!207 = !DILocation(line: 44, column: 16, scope: !74)
!208 = !DILocation(line: 44, column: 11, scope: !74)
!209 = !DILocation(line: 45, column: 16, scope: !210)
!210 = distinct !DILexicalBlock(scope: !74, file: !9, line: 45, column: 9)
!211 = !DILocation(line: 45, column: 14, scope: !210)
!212 = !DILocation(line: 45, column: 21, scope: !213)
!213 = !DILexicalBlockFile(scope: !214, file: !9, discriminator: 2)
!214 = !DILexicalBlockFile(scope: !215, file: !9, discriminator: 1)
!215 = distinct !DILexicalBlock(scope: !210, file: !9, line: 45, column: 9)
!216 = !DILocation(line: 45, column: 25, scope: !215)
!217 = !DILocation(line: 45, column: 28, scope: !215)
!218 = !DILocation(line: 45, column: 23, scope: !215)
!219 = !DILocation(line: 45, column: 9, scope: !210)
!220 = !DILocation(line: 46, column: 17, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !9, line: 46, column: 17)
!222 = distinct !DILexicalBlock(scope: !215, file: !9, line: 45, column: 49)
!223 = !DILocation(line: 46, column: 20, scope: !221)
!224 = !{!225, !113, i64 24}
!225 = !{!"", !126, i64 0, !113, i64 8, !126, i64 16, !126, i64 20, !113, i64 24, !126, i64 32}
!226 = !DILocation(line: 46, column: 17, scope: !222)
!227 = !DILocation(line: 47, column: 31, scope: !221)
!228 = !DILocation(line: 47, column: 34, scope: !221)
!229 = !DILocation(line: 47, column: 17, scope: !221)
!230 = !DILocation(line: 48, column: 13, scope: !222)
!231 = !DILocation(line: 48, column: 16, scope: !222)
!232 = !DILocation(line: 48, column: 24, scope: !222)
!233 = !DILocation(line: 49, column: 9, scope: !222)
!234 = !DILocation(line: 45, column: 40, scope: !215)
!235 = !DILocation(line: 45, column: 45, scope: !215)
!236 = !DILocation(line: 45, column: 9, scope: !215)
!237 = !DILocation(line: 50, column: 5, scope: !75)
!238 = !DILocation(line: 50, column: 5, scope: !74)
!239 = !DILocation(line: 41, column: 37, scope: !75)
!240 = !DILocation(line: 41, column: 5, scope: !75)
!241 = !DILocation(line: 51, column: 1, scope: !68)
!242 = !DILocation(line: 64, column: 19, scope: !86)
!243 = !DILocation(line: 64, column: 29, scope: !86)
!244 = !DILocation(line: 66, column: 5, scope: !86)
!245 = !DILocation(line: 66, column: 10, scope: !86)
!246 = !DILocation(line: 67, column: 5, scope: !86)
!247 = !DILocation(line: 67, column: 9, scope: !86)
!248 = !DILocation(line: 68, column: 5, scope: !86)
!249 = !DILocation(line: 68, column: 10, scope: !86)
!250 = !DILocation(line: 69, column: 5, scope: !86)
!251 = !DILocation(line: 69, column: 9, scope: !86)
!252 = !DILocation(line: 69, column: 14, scope: !86)
!253 = !DILocation(line: 69, column: 17, scope: !86)
!254 = !DILocation(line: 69, column: 22, scope: !86)
!255 = !{!125, !126, i64 16}
!256 = !DILocation(line: 70, column: 5, scope: !86)
!257 = !DILocation(line: 70, column: 8, scope: !86)
!258 = !DILocation(line: 70, column: 17, scope: !86)
!259 = !{!225, !126, i64 32}
!260 = !DILocation(line: 71, column: 37, scope: !86)
!261 = !DILocation(line: 71, column: 40, scope: !86)
!262 = !DILocation(line: 71, column: 21, scope: !86)
!263 = !DILocation(line: 71, column: 13, scope: !86)
!264 = !DILocation(line: 71, column: 11, scope: !86)
!265 = !DILocation(line: 72, column: 9, scope: !266)
!266 = distinct !DILexicalBlock(scope: !86, file: !9, line: 72, column: 9)
!267 = !DILocation(line: 72, column: 15, scope: !266)
!268 = !DILocation(line: 72, column: 9, scope: !86)
!269 = !DILocation(line: 73, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !266, file: !9, line: 72, column: 30)
!271 = !DILocation(line: 73, column: 9, scope: !270)
!272 = !DILocation(line: 74, column: 9, scope: !270)
!273 = !DILocation(line: 76, column: 12, scope: !274)
!274 = distinct !DILexicalBlock(scope: !86, file: !9, line: 76, column: 5)
!275 = !DILocation(line: 76, column: 10, scope: !274)
!276 = !DILocation(line: 76, column: 17, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !9, discriminator: 2)
!278 = !DILexicalBlockFile(scope: !279, file: !9, discriminator: 1)
!279 = distinct !DILexicalBlock(scope: !274, file: !9, line: 76, column: 5)
!280 = !DILocation(line: 76, column: 21, scope: !279)
!281 = !DILocation(line: 76, column: 19, scope: !279)
!282 = !DILocation(line: 76, column: 5, scope: !274)
!283 = !DILocation(line: 77, column: 15, scope: !279)
!284 = !DILocation(line: 77, column: 9, scope: !279)
!285 = !DILocation(line: 77, column: 18, scope: !279)
!286 = !DILocation(line: 76, column: 26, scope: !279)
!287 = !DILocation(line: 76, column: 5, scope: !279)
!288 = !DILocation(line: 78, column: 9, scope: !86)
!289 = !DILocation(line: 78, column: 12, scope: !86)
!290 = !{!225, !113, i64 8}
!291 = !DILocation(line: 78, column: 7, scope: !86)
!292 = !DILocation(line: 79, column: 14, scope: !99)
!293 = !DILocation(line: 79, column: 17, scope: !99)
!294 = !{!225, !126, i64 0}
!295 = !DILocation(line: 79, column: 12, scope: !99)
!296 = !DILocation(line: 79, column: 10, scope: !99)
!297 = !DILocation(line: 79, column: 26, scope: !298)
!298 = !DILexicalBlockFile(scope: !299, file: !9, discriminator: 2)
!299 = !DILexicalBlockFile(scope: !98, file: !9, discriminator: 1)
!300 = !DILocation(line: 79, column: 30, scope: !98)
!301 = !DILocation(line: 79, column: 5, scope: !99)
!302 = !DILocation(line: 80, column: 9, scope: !97)
!303 = !DILocation(line: 80, column: 13, scope: !97)
!304 = !DILocation(line: 80, column: 19, scope: !97)
!305 = !DILocation(line: 80, column: 22, scope: !97)
!306 = !{!307, !308, i64 0}
!307 = !{!"", !308, i64 0, !308, i64 2}
!308 = !{!"short", !114, i64 0}
!309 = !DILocation(line: 81, column: 9, scope: !97)
!310 = !DILocation(line: 81, column: 16, scope: !97)
!311 = !DILocation(line: 81, column: 38, scope: !97)
!312 = !DILocation(line: 81, column: 21, scope: !97)
!313 = !DILocation(line: 81, column: 24, scope: !97)
!314 = !DILocation(line: 81, column: 29, scope: !97)
!315 = !{!125, !113, i64 24}
!316 = !DILocation(line: 82, column: 9, scope: !97)
!317 = !DILocation(line: 82, column: 13, scope: !97)
!318 = !DILocation(line: 82, column: 20, scope: !97)
!319 = !DILocation(line: 82, column: 23, scope: !97)
!320 = !{!127, !126, i64 0}
!321 = !DILocation(line: 83, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !97, file: !9, line: 83, column: 13)
!323 = !DILocation(line: 83, column: 16, scope: !322)
!324 = !{!307, !308, i64 2}
!325 = !DILocation(line: 83, column: 24, scope: !322)
!326 = !DILocation(line: 83, column: 13, scope: !97)
!327 = !DILocation(line: 84, column: 13, scope: !328)
!328 = distinct !DILexicalBlock(scope: !322, file: !9, line: 83, column: 37)
!329 = !DILocation(line: 85, column: 13, scope: !328)
!330 = !DILocation(line: 87, column: 15, scope: !104)
!331 = !DILocation(line: 87, column: 21, scope: !104)
!332 = !DILocation(line: 87, column: 13, scope: !97)
!333 = !DILocation(line: 88, column: 13, scope: !103)
!334 = !DILocation(line: 88, column: 18, scope: !103)
!335 = !DILocation(line: 88, column: 41, scope: !103)
!336 = !DILocation(line: 88, column: 44, scope: !103)
!337 = !DILocation(line: 88, column: 23, scope: !103)
!338 = !DILocation(line: 89, column: 13, scope: !103)
!339 = !DILocation(line: 89, column: 17, scope: !103)
!340 = !DILocation(line: 90, column: 17, scope: !341)
!341 = distinct !DILexicalBlock(scope: !103, file: !9, line: 90, column: 17)
!342 = !DILocation(line: 90, column: 22, scope: !341)
!343 = !DILocation(line: 90, column: 28, scope: !341)
!344 = !DILocation(line: 90, column: 17, scope: !103)
!345 = !DILocation(line: 91, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !341, file: !9, line: 90, column: 41)
!347 = !DILocation(line: 92, column: 17, scope: !346)
!348 = !DILocation(line: 94, column: 23, scope: !349)
!349 = distinct !DILexicalBlock(scope: !103, file: !9, line: 94, column: 13)
!350 = !DILocation(line: 94, column: 18, scope: !349)
!351 = !DILocation(line: 94, column: 28, scope: !352)
!352 = !DILexicalBlockFile(scope: !353, file: !9, discriminator: 2)
!353 = !DILexicalBlockFile(scope: !354, file: !9, discriminator: 1)
!354 = distinct !DILexicalBlock(scope: !349, file: !9, line: 94, column: 13)
!355 = !DILocation(line: 94, column: 35, scope: !354)
!356 = !DILocation(line: 94, column: 38, scope: !354)
!357 = !DILocation(line: 94, column: 43, scope: !354)
!358 = !DILocation(line: 94, column: 33, scope: !354)
!359 = !DILocation(line: 94, column: 13, scope: !349)
!360 = !DILocation(line: 95, column: 39, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !9, line: 95, column: 21)
!362 = distinct !DILexicalBlock(scope: !354, file: !9, line: 94, column: 63)
!363 = !DILocation(line: 95, column: 38, scope: !361)
!364 = !DILocation(line: 95, column: 45, scope: !361)
!365 = !DILocation(line: 95, column: 24, scope: !361)
!366 = !DILocation(line: 95, column: 28, scope: !361)
!367 = !{!161, !113, i64 32}
!368 = !DILocation(line: 95, column: 23, scope: !361)
!369 = !{!114, !114, i64 0}
!370 = !DILocation(line: 95, column: 76, scope: !361)
!371 = !DILocation(line: 95, column: 75, scope: !361)
!372 = !DILocation(line: 95, column: 82, scope: !361)
!373 = !DILocation(line: 95, column: 71, scope: !361)
!374 = !DILocation(line: 95, column: 66, scope: !361)
!375 = !DILocation(line: 95, column: 104, scope: !361)
!376 = !DILocation(line: 95, column: 21, scope: !362)
!377 = !DILocation(line: 96, column: 31, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !9, line: 96, column: 25)
!379 = distinct !DILexicalBlock(scope: !361, file: !9, line: 95, column: 111)
!380 = !DILocation(line: 96, column: 25, scope: !378)
!381 = !DILocation(line: 96, column: 37, scope: !378)
!382 = !DILocation(line: 96, column: 25, scope: !379)
!383 = !DILocation(line: 97, column: 25, scope: !378)
!384 = !DILocation(line: 98, column: 35, scope: !379)
!385 = !DILocation(line: 98, column: 38, scope: !379)
!386 = !DILocation(line: 98, column: 46, scope: !379)
!387 = !DILocation(line: 99, column: 27, scope: !379)
!388 = !DILocation(line: 99, column: 32, scope: !379)
!389 = !DILocation(line: 99, column: 39, scope: !379)
!390 = !DILocation(line: 98, column: 57, scope: !379)
!391 = !DILocation(line: 98, column: 27, scope: !379)
!392 = !DILocation(line: 98, column: 21, scope: !379)
!393 = !DILocation(line: 98, column: 33, scope: !379)
!394 = !DILocation(line: 100, column: 17, scope: !379)
!395 = !DILocation(line: 101, column: 13, scope: !362)
!396 = !DILocation(line: 94, column: 59, scope: !354)
!397 = !DILocation(line: 94, column: 13, scope: !354)
!398 = !DILocation(line: 102, column: 9, scope: !104)
!399 = !DILocation(line: 102, column: 9, scope: !400)
!400 = !DILexicalBlockFile(scope: !104, file: !9, discriminator: 1)
!401 = !DILocation(line: 102, column: 9, scope: !103)
!402 = !DILocation(line: 103, column: 18, scope: !403)
!403 = distinct !DILexicalBlock(scope: !104, file: !9, line: 103, column: 18)
!404 = !DILocation(line: 103, column: 22, scope: !403)
!405 = !DILocation(line: 103, column: 18, scope: !104)
!406 = !DILocation(line: 104, column: 13, scope: !403)
!407 = !DILocation(line: 104, column: 16, scope: !403)
!408 = !DILocation(line: 104, column: 25, scope: !403)
!409 = !DILocation(line: 105, column: 18, scope: !410)
!410 = distinct !DILexicalBlock(scope: !403, file: !9, line: 105, column: 18)
!411 = !DILocation(line: 105, column: 22, scope: !410)
!412 = !DILocation(line: 105, column: 27, scope: !410)
!413 = !DILocation(line: 105, column: 30, scope: !414)
!414 = !DILexicalBlockFile(scope: !410, file: !9, discriminator: 1)
!415 = !DILocation(line: 105, column: 36, scope: !410)
!416 = !DILocation(line: 105, column: 34, scope: !410)
!417 = !DILocation(line: 105, column: 18, scope: !403)
!418 = !DILocation(line: 106, column: 26, scope: !410)
!419 = !DILocation(line: 106, column: 29, scope: !410)
!420 = !DILocation(line: 106, column: 19, scope: !410)
!421 = !DILocation(line: 106, column: 13, scope: !410)
!422 = !DILocation(line: 106, column: 24, scope: !410)
!423 = !DILocation(line: 107, column: 5, scope: !98)
!424 = !DILocation(line: 107, column: 5, scope: !299)
!425 = !DILocation(line: 107, column: 5, scope: !97)
!426 = !DILocation(line: 79, column: 37, scope: !98)
!427 = !DILocation(line: 79, column: 5, scope: !98)
!428 = !DILocation(line: 108, column: 5, scope: !86)
!429 = !DILocation(line: 108, column: 12, scope: !430)
!430 = !DILexicalBlockFile(scope: !431, file: !9, discriminator: 4)
!431 = !DILexicalBlockFile(scope: !86, file: !9, discriminator: 1)
!432 = !DILocation(line: 108, column: 15, scope: !86)
!433 = !DILocation(line: 108, column: 19, scope: !86)
!434 = !DILocation(line: 108, column: 28, scope: !435)
!435 = !DILexicalBlockFile(scope: !86, file: !9, discriminator: 2)
!436 = !DILocation(line: 108, column: 30, scope: !86)
!437 = !DILocation(line: 108, column: 22, scope: !86)
!438 = !DILocation(line: 108, column: 34, scope: !86)
!439 = !DILocation(line: 108, column: 5, scope: !440)
!440 = !DILexicalBlockFile(scope: !86, file: !9, discriminator: 3)
!441 = !DILocation(line: 109, column: 11, scope: !86)
!442 = !DILocation(line: 110, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !86, file: !9, line: 110, column: 5)
!444 = !DILocation(line: 110, column: 10, scope: !443)
!445 = !DILocation(line: 110, column: 17, scope: !446)
!446 = !DILexicalBlockFile(scope: !447, file: !9, discriminator: 4)
!447 = !DILexicalBlockFile(scope: !448, file: !9, discriminator: 1)
!448 = distinct !DILexicalBlock(scope: !443, file: !9, line: 110, column: 5)
!449 = !DILocation(line: 110, column: 21, scope: !448)
!450 = !DILocation(line: 110, column: 19, scope: !448)
!451 = !DILocation(line: 110, column: 24, scope: !448)
!452 = !DILocation(line: 110, column: 33, scope: !453)
!453 = !DILexicalBlockFile(scope: !448, file: !9, discriminator: 2)
!454 = !DILocation(line: 110, column: 27, scope: !448)
!455 = !DILocation(line: 110, column: 36, scope: !448)
!456 = !DILocation(line: 110, column: 5, scope: !457)
!457 = !DILexicalBlockFile(scope: !443, file: !9, discriminator: 3)
!458 = !DILocation(line: 111, column: 10, scope: !448)
!459 = !DILocation(line: 110, column: 5, scope: !448)
!460 = !DILocation(line: 112, column: 9, scope: !108)
!461 = !DILocation(line: 112, column: 13, scope: !108)
!462 = !DILocation(line: 112, column: 11, scope: !108)
!463 = !DILocation(line: 112, column: 9, scope: !86)
!464 = !DILocation(line: 113, column: 9, scope: !107)
!465 = !DILocation(line: 113, column: 13, scope: !107)
!466 = !DILocation(line: 114, column: 47, scope: !107)
!467 = !DILocation(line: 114, column: 50, scope: !107)
!468 = !DILocation(line: 114, column: 49, scope: !107)
!469 = !DILocation(line: 114, column: 46, scope: !107)
!470 = !DILocation(line: 114, column: 53, scope: !107)
!471 = !DILocation(line: 114, column: 30, scope: !107)
!472 = !DILocation(line: 114, column: 22, scope: !107)
!473 = !DILocation(line: 114, column: 9, scope: !107)
!474 = !DILocation(line: 114, column: 12, scope: !107)
!475 = !DILocation(line: 114, column: 20, scope: !107)
!476 = !DILocation(line: 115, column: 13, scope: !477)
!477 = distinct !DILexicalBlock(scope: !107, file: !9, line: 115, column: 13)
!478 = !DILocation(line: 115, column: 16, scope: !477)
!479 = !DILocation(line: 115, column: 24, scope: !477)
!480 = !DILocation(line: 115, column: 13, scope: !107)
!481 = !DILocation(line: 116, column: 21, scope: !482)
!482 = distinct !DILexicalBlock(scope: !477, file: !9, line: 115, column: 39)
!483 = !DILocation(line: 116, column: 13, scope: !482)
!484 = !DILocation(line: 117, column: 13, scope: !482)
!485 = !DILocation(line: 119, column: 22, scope: !107)
!486 = !DILocation(line: 119, column: 9, scope: !107)
!487 = !DILocation(line: 119, column: 12, scope: !107)
!488 = !DILocation(line: 119, column: 20, scope: !107)
!489 = !{!225, !126, i64 16}
!490 = !DILocation(line: 120, column: 22, scope: !107)
!491 = !DILocation(line: 120, column: 9, scope: !107)
!492 = !DILocation(line: 120, column: 12, scope: !107)
!493 = !DILocation(line: 120, column: 20, scope: !107)
!494 = !{!225, !126, i64 20}
!495 = !DILocation(line: 121, column: 16, scope: !496)
!496 = distinct !DILexicalBlock(scope: !107, file: !9, line: 121, column: 9)
!497 = !DILocation(line: 121, column: 14, scope: !496)
!498 = !DILocation(line: 121, column: 21, scope: !499)
!499 = !DILexicalBlockFile(scope: !500, file: !9, discriminator: 2)
!500 = !DILexicalBlockFile(scope: !501, file: !9, discriminator: 1)
!501 = distinct !DILexicalBlock(scope: !496, file: !9, line: 121, column: 9)
!502 = !DILocation(line: 121, column: 25, scope: !501)
!503 = !DILocation(line: 121, column: 23, scope: !501)
!504 = !DILocation(line: 121, column: 9, scope: !496)
!505 = !DILocation(line: 122, column: 35, scope: !501)
!506 = !DILocation(line: 122, column: 29, scope: !501)
!507 = !DILocation(line: 122, column: 24, scope: !501)
!508 = !DILocation(line: 122, column: 13, scope: !501)
!509 = !DILocation(line: 122, column: 16, scope: !501)
!510 = !DILocation(line: 122, column: 27, scope: !501)
!511 = !DILocation(line: 121, column: 30, scope: !501)
!512 = !DILocation(line: 121, column: 35, scope: !501)
!513 = !DILocation(line: 121, column: 9, scope: !501)
!514 = !DILocation(line: 123, column: 5, scope: !108)
!515 = !DILocation(line: 123, column: 5, scope: !107)
!516 = !DILocation(line: 124, column: 19, scope: !86)
!517 = !DILocation(line: 124, column: 5, scope: !86)
!518 = !DILocation(line: 125, column: 1, scope: !86)
