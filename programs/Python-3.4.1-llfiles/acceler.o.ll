; ModuleID = 'acceler.o.bc'
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
@.str.4 = private unnamed_addr constant [35 x i8] c"no mem to add parser accelerators\0A\00", align 1
@str = private unnamed_addr constant [15 x i8] c"XXX ambiguity!\00"
@str.5 = private unnamed_addr constant [33 x i8] c"XXX too high nonterminal number!\00"
@str.6 = private unnamed_addr constant [21 x i8] c"XXX too many states!\00"

; Function Attrs: nounwind uwtable
define void @PyGrammar_AddAccelerators(%struct.grammar* %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !64, metadata !111), !dbg !112
  tail call void @llvm.dbg.value(metadata %struct.dfa* %1, i64 0, metadata !65, metadata !111), !dbg !113
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 0, !dbg !114
  %0 = load i32, i32* %g_ndfas, align 4, !dbg !114, !tbaa !116
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !66, metadata !111), !dbg !123
  %dec.9 = add i32 %0, -1, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %dec.9, i64 0, metadata !66, metadata !111), !dbg !123
  %cmp.10 = icmp sgt i32 %dec.9, -1, !dbg !128
  br i1 %cmp.10, label %for.body.lr.ph, label %for.end, !dbg !129

for.body.lr.ph:                                   ; preds = %entry
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 1, !dbg !130
  %1 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8, !dbg !130, !tbaa !131
  %ll_nlabels.i.i = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 2, i32 0, !dbg !132
  %ll_label.i.i = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 2, i32 1, !dbg !137
  br label %for.body, !dbg !129

for.body:                                         ; preds = %for.body.lr.ph, %fixdfa.exit
  %dec12 = phi i32 [ %dec.9, %for.body.lr.ph ], [ %dec, %fixdfa.exit ]
  %d.011 = phi %struct.dfa* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %fixdfa.exit ]
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !81, metadata !111) #4, !dbg !138
  tail call void @llvm.dbg.value(metadata %struct.dfa* %incdec.ptr, i64 0, metadata !82, metadata !111) #4, !dbg !139
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !84, metadata !111) #4, !dbg !140
  %d_nstates.i = getelementptr inbounds %struct.dfa, %struct.dfa* %d.011, i64 0, i32 3, !dbg !141
  %2 = load i32, i32* %d_nstates.i, align 4, !dbg !141, !tbaa !142
  %cmp.9.i = icmp sgt i32 %2, 0, !dbg !144
  br i1 %cmp.9.i, label %for.body.lr.ph.i, label %fixdfa.exit, !dbg !145

for.body.lr.ph.i:                                 ; preds = %for.body
  %d_state.i = getelementptr inbounds %struct.dfa, %struct.dfa* %d.011, i64 0, i32 4, !dbg !146
  %3 = load %struct.state*, %struct.state** %d_state.i, align 8, !dbg !146, !tbaa !147
  br label %for.body.i, !dbg !145

for.body.i:                                       ; preds = %fixstate.exit.i, %for.body.lr.ph.i
  %j.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %fixstate.exit.i ], !dbg !148
  %s.010.i = phi %struct.state* [ %3, %for.body.lr.ph.i ], [ %incdec.ptr.i, %fixstate.exit.i ], !dbg !148
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !89, metadata !111) #4, !dbg !149
  %4 = load i32, i32* %ll_nlabels.i.i, align 4, !dbg !132, !tbaa !150
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !94, metadata !111) #4, !dbg !151
  %s_accept.i.i = getelementptr inbounds %struct.state, %struct.state* %s.010.i, i64 0, i32 5, !dbg !152
  store i32 0, i32* %s_accept.i.i, align 4, !dbg !153, !tbaa !154
  %conv.i.i = sext i32 %4 to i64, !dbg !156
  %mul.i.i = shl nsw i64 %conv.i.i, 2, !dbg !157
  %call.i.i = tail call i8* @PyObject_Malloc(i64 %mul.i.i) #4, !dbg !158
  %5 = bitcast i8* %call.i.i to i32*, !dbg !159
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !93, metadata !111) #4, !dbg !160
  %cmp.i.i = icmp eq i8* %call.i.i, null, !dbg !161
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond.preheader.i.i, !dbg !163

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %cmp3.214.i.i = icmp sgt i32 %4, 0, !dbg !164
  br i1 %cmp3.214.i.i, label %for.body.lr.ph.i.i, label %for.end.i.i, !dbg !167

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %6 = add i32 %4, -1, !dbg !167
  %7 = zext i32 %6 to i64, !dbg !167
  %8 = shl nuw nsw i64 %7, 2, !dbg !167
  %9 = add nuw nsw i64 %8, 4, !dbg !167
  tail call void @llvm.memset.p0i8.i64(i8* %call.i.i, i8 -1, i64 %9, i32 4, i1 false) #4, !dbg !168
  br label %for.end.i.i, !dbg !167

if.then.i.i:                                      ; preds = %for.body.i
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !169, !tbaa !171
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %10) #5, !dbg !172
  tail call void @exit(i32 1) #6, !dbg !173
  unreachable, !dbg !173

for.end.i.i:                                      ; preds = %for.body.lr.ph.i.i, %for.cond.preheader.i.i
  %s_narcs.i.i = getelementptr inbounds %struct.state, %struct.state* %s.010.i, i64 0, i32 0, !dbg !174
  %12 = load i32, i32* %s_narcs.i.i, align 4, !dbg !174, !tbaa !175
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !92, metadata !111) #4, !dbg !176
  %dec.210.i.i = add i32 %12, -1, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 %dec.210.i.i, i64 0, metadata !92, metadata !111) #4, !dbg !176
  %cmp6.211.i.i = icmp sgt i32 %dec.210.i.i, -1, !dbg !180
  br i1 %cmp6.211.i.i, label %for.body.8.lr.ph.i.i, label %while.cond.i.i.preheader, !dbg !181

for.body.8.lr.ph.i.i:                             ; preds = %for.end.i.i
  %s_arc.i.i = getelementptr inbounds %struct.state, %struct.state* %s.010.i, i64 0, i32 1, !dbg !182
  %13 = load %struct.arc*, %struct.arc** %s_arc.i.i, align 8, !dbg !182, !tbaa !183
  br label %for.body.8.i.i, !dbg !181

for.body.8.i.i:                                   ; preds = %cleanup.77.i.i, %for.body.8.lr.ph.i.i
  %dec213.i.i = phi i32 [ %dec.210.i.i, %for.body.8.lr.ph.i.i ], [ %dec.i.i, %cleanup.77.i.i ], !dbg !184
  %a.0212.i.i = phi %struct.arc* [ %13, %for.body.8.lr.ph.i.i ], [ %incdec.ptr.i.i, %cleanup.77.i.i ], !dbg !184
  %a_lbl.i.i = getelementptr inbounds %struct.arc, %struct.arc* %a.0212.i.i, i64 0, i32 0, !dbg !185
  %14 = load i16, i16* %a_lbl.i.i, align 2, !dbg !185, !tbaa !186
  %conv9.i.i = sext i16 %14 to i32, !dbg !189
  tail call void @llvm.dbg.value(metadata i32 %conv9.i.i, i64 0, metadata !95, metadata !111) #4, !dbg !190
  %idxprom10.i.i = sext i16 %14 to i64, !dbg !191
  %15 = load %struct.label*, %struct.label** %ll_label.i.i, align 8, !dbg !137, !tbaa !192
  %lb_type.i.i = getelementptr inbounds %struct.label, %struct.label* %15, i64 %idxprom10.i.i, i32 0, !dbg !193
  %16 = load i32, i32* %lb_type.i.i, align 4, !dbg !193, !tbaa !194
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !100, metadata !111) #4, !dbg !195
  %a_arrow.i.i = getelementptr inbounds %struct.arc, %struct.arc* %a.0212.i.i, i64 0, i32 1, !dbg !196
  %17 = load i16, i16* %a_arrow.i.i, align 2, !dbg !196, !tbaa !198
  %conv13.i.i = sext i16 %17 to i32, !dbg !199
  %cmp14.i.i = icmp sgt i16 %17, 127, !dbg !200
  br i1 %cmp14.i.i, label %if.then.16.i.i, label %if.end.18.i.i, !dbg !201

if.then.16.i.i:                                   ; preds = %for.body.8.i.i
  %puts200.i.i = tail call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @str.6, i64 0, i64 0)) #4, !dbg !202
  br label %cleanup.77.i.i, !dbg !204

if.end.18.i.i:                                    ; preds = %for.body.8.i.i
  %cmp19.i.i = icmp sgt i32 %16, 255, !dbg !205
  br i1 %cmp19.i.i, label %if.then.21.i.i, label %if.else.i.i, !dbg !206

if.then.21.i.i:                                   ; preds = %if.end.18.i.i
  %call22.i.i = tail call %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %g, i32 %16) #4, !dbg !207
  tail call void @llvm.dbg.value(metadata %struct.dfa* %call22.i.i, i64 0, metadata !101, metadata !111) #4, !dbg !208
  %sub.i.i = add i32 %16, -256, !dbg !209
  %cmp23.i.i = icmp sgt i32 %sub.i.i, 127, !dbg !211
  br i1 %cmp23.i.i, label %if.then.25.i.i, label %for.cond.28.preheader.i.i, !dbg !212

for.cond.28.preheader.i.i:                        ; preds = %if.then.21.i.i
  %18 = load i32, i32* %ll_nlabels.i.i, align 4, !dbg !213, !tbaa !150
  %cmp31.208.i.i = icmp sgt i32 %18, 0, !dbg !216
  br i1 %cmp31.208.i.i, label %for.body.33.lr.ph.i.i, label %cleanup.77.i.i, !dbg !217

for.body.33.lr.ph.i.i:                            ; preds = %for.cond.28.preheader.i.i
  %d_first.i.i = getelementptr inbounds %struct.dfa, %struct.dfa* %call22.i.i, i64 0, i32 5, !dbg !218
  %shl51.i.i = shl i32 %sub.i.i, 8, !dbg !221
  br label %for.body.33.i.i, !dbg !217

if.then.25.i.i:                                   ; preds = %if.then.21.i.i
  %puts199.i.i = tail call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @str.5, i64 0, i64 0)) #4, !dbg !223
  br label %cleanup.77.i.i, !dbg !184

for.body.33.i.i:                                  ; preds = %for.inc.56.i.i, %for.body.33.lr.ph.i.i
  %19 = phi i32 [ %18, %for.body.33.lr.ph.i.i ], [ %24, %for.inc.56.i.i ], !dbg !184
  %ibit.0209.i.i = phi i32 [ 0, %for.body.33.lr.ph.i.i ], [ %inc57.i.i, %for.inc.56.i.i ], !dbg !184
  %conv34.i.i = sext i32 %ibit.0209.i.i to i64, !dbg !218
  %div.i.i = lshr i64 %conv34.i.i, 3, !dbg !218
  %20 = load i8*, i8** %d_first.i.i, align 8, !dbg !218, !tbaa !225
  %arrayidx35.i.i = getelementptr i8, i8* %20, i64 %div.i.i, !dbg !218
  %21 = load i8, i8* %arrayidx35.i.i, align 1, !dbg !218, !tbaa !226
  %conv36.i.i = sext i8 %21 to i32, !dbg !218
  %rem.i.i = and i32 %ibit.0209.i.i, 7, !dbg !218
  %shl.i.i = shl i32 1, %rem.i.i, !dbg !218
  %and.i.i = and i32 %conv36.i.i, %shl.i.i, !dbg !218
  %cmp38.i.i = icmp eq i32 %and.i.i, 0, !dbg !218
  br i1 %cmp38.i.i, label %for.inc.56.i.i, label %if.then.40.i.i, !dbg !227

if.then.40.i.i:                                   ; preds = %for.body.33.i.i
  %arrayidx42.i.i = getelementptr i32, i32* %5, i64 %conv34.i.i, !dbg !228
  %22 = load i32, i32* %arrayidx42.i.i, align 4, !dbg !228, !tbaa !230
  %cmp43.i.i = icmp eq i32 %22, -1, !dbg !231
  br i1 %cmp43.i.i, label %if.end.47.i.i, label %if.then.45.i.i, !dbg !232

if.then.45.i.i:                                   ; preds = %if.then.40.i.i
  %puts.i.i = tail call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0)) #4, !dbg !233
  br label %if.end.47.i.i, !dbg !233

if.end.47.i.i:                                    ; preds = %if.then.45.i.i, %if.then.40.i.i
  %23 = load i16, i16* %a_arrow.i.i, align 2, !dbg !234, !tbaa !198
  %conv49.i.i = sext i16 %23 to i32, !dbg !235
  %or.i.i = or i32 %shl51.i.i, %conv49.i.i, !dbg !236
  %or52.i.i = or i32 %or.i.i, 128, !dbg !236
  store i32 %or52.i.i, i32* %arrayidx42.i.i, align 4, !dbg !237, !tbaa !230
  %.pre.i.i = load i32, i32* %ll_nlabels.i.i, align 4, !dbg !213, !tbaa !150
  br label %for.inc.56.i.i, !dbg !238

for.inc.56.i.i:                                   ; preds = %if.end.47.i.i, %for.body.33.i.i
  %24 = phi i32 [ %19, %for.body.33.i.i ], [ %.pre.i.i, %if.end.47.i.i ], !dbg !213
  %inc57.i.i = add i32 %ibit.0209.i.i, 1, !dbg !239
  tail call void @llvm.dbg.value(metadata i32 %inc57.i.i, i64 0, metadata !104, metadata !111) #4, !dbg !240
  %cmp31.i.i = icmp slt i32 %inc57.i.i, %24, !dbg !216
  br i1 %cmp31.i.i, label %for.body.33.i.i, label %cleanup.77.i.i.loopexit, !dbg !217

if.else.i.i:                                      ; preds = %if.end.18.i.i
  %cmp60.i.i = icmp eq i16 %14, 0, !dbg !241
  br i1 %cmp60.i.i, label %if.then.62.i.i, label %if.else.64.i.i, !dbg !243

if.then.62.i.i:                                   ; preds = %if.else.i.i
  store i32 1, i32* %s_accept.i.i, align 4, !dbg !244, !tbaa !154
  br label %cleanup.77.i.i, !dbg !245

if.else.64.i.i:                                   ; preds = %if.else.i.i
  %cmp65.i.i = icmp sgt i16 %14, -1, !dbg !246
  %cmp67.i.i = icmp slt i32 %conv9.i.i, %4, !dbg !248
  %or.cond.i.i = and i1 %cmp65.i.i, %cmp67.i.i, !dbg !249
  br i1 %or.cond.i.i, label %if.then.69.i.i, label %cleanup.77.i.i, !dbg !249

if.then.69.i.i:                                   ; preds = %if.else.64.i.i
  %arrayidx73.i.i = getelementptr i32, i32* %5, i64 %idxprom10.i.i, !dbg !250
  store i32 %conv13.i.i, i32* %arrayidx73.i.i, align 4, !dbg !251, !tbaa !230
  br label %cleanup.77.i.i, !dbg !250

cleanup.77.i.i.loopexit:                          ; preds = %for.inc.56.i.i
  br label %cleanup.77.i.i, !dbg !252

cleanup.77.i.i:                                   ; preds = %cleanup.77.i.i.loopexit, %if.then.69.i.i, %if.else.64.i.i, %if.then.62.i.i, %if.then.25.i.i, %for.cond.28.preheader.i.i, %if.then.16.i.i
  %incdec.ptr.i.i = getelementptr %struct.arc, %struct.arc* %a.0212.i.i, i64 1, !dbg !252
  tail call void @llvm.dbg.value(metadata %struct.arc* %incdec.ptr.i.i, i64 0, metadata !91, metadata !111) #4, !dbg !253
  %dec.i.i = add i32 %dec213.i.i, -1, !dbg !177
  tail call void @llvm.dbg.value(metadata i32 %dec.i.i, i64 0, metadata !92, metadata !111) #4, !dbg !176
  %cmp6.i.i = icmp sgt i32 %dec.i.i, -1, !dbg !180
  br i1 %cmp6.i.i, label %for.body.8.i.i, label %while.cond.i.i.preheader.loopexit, !dbg !181

while.cond.i.i.preheader.loopexit:                ; preds = %cleanup.77.i.i
  br label %while.cond.i.i.preheader, !dbg !254

while.cond.i.i.preheader:                         ; preds = %while.cond.i.i.preheader.loopexit, %for.end.i.i
  br label %while.cond.i.i, !dbg !254

while.cond.i.i:                                   ; preds = %while.cond.i.i.preheader, %land.rhs.i.i
  %indvars.iv217.i.i = phi i64 [ %indvars.iv.next218.i.i, %land.rhs.i.i ], [ %conv.i.i, %while.cond.i.i.preheader ], !dbg !184
  %cmp84.i.i = icmp sgt i64 %indvars.iv217.i.i, 0, !dbg !254
  br i1 %cmp84.i.i, label %land.rhs.i.i, label %for.cond.92.preheader.i.i, !dbg !255

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %sub86.i.i = shl i64 %indvars.iv217.i.i, 32, !dbg !256
  %sext.i.i = add i64 %sub86.i.i, -4294967296, !dbg !256
  %idxprom87.i.i = ashr exact i64 %sext.i.i, 32, !dbg !256
  %arrayidx88.i.i = getelementptr i32, i32* %5, i64 %idxprom87.i.i, !dbg !256
  %25 = load i32, i32* %arrayidx88.i.i, align 4, !dbg !256, !tbaa !230
  %cmp89.i.i = icmp eq i32 %25, -1, !dbg !257
  %indvars.iv.next218.i.i = add nsw i64 %indvars.iv217.i.i, -1, !dbg !258
  br i1 %cmp89.i.i, label %while.cond.i.i, label %for.cond.92.preheader.i.i, !dbg !258

for.cond.92.preheader.i.i:                        ; preds = %land.rhs.i.i, %while.cond.i.i
  %indvars.iv217.i.i.lcssa = phi i64 [ %indvars.iv217.i.i, %land.rhs.i.i ], [ %indvars.iv217.i.i, %while.cond.i.i ]
  %26 = trunc i64 %indvars.iv217.i.i.lcssa to i32, !dbg !255
  %cmp93.206.i.i = icmp sgt i32 %26, 0, !dbg !260
  br i1 %cmp93.206.i.i, label %land.rhs.95.i.i.preheader, label %fixstate.exit.i, !dbg !263

land.rhs.95.i.i.preheader:                        ; preds = %for.cond.92.preheader.i.i
  br label %land.rhs.95.i.i, !dbg !264

land.rhs.95.i.i:                                  ; preds = %land.rhs.95.i.i.preheader, %for.body.101.i.i
  %k.2207.i.i = phi i32 [ %inc102.i.i, %for.body.101.i.i ], [ 0, %land.rhs.95.i.i.preheader ], !dbg !184
  %idxprom96.i.i = sext i32 %k.2207.i.i to i64, !dbg !264
  %arrayidx97.i.i = getelementptr i32, i32* %5, i64 %idxprom96.i.i, !dbg !264
  %27 = load i32, i32* %arrayidx97.i.i, align 4, !dbg !264, !tbaa !230
  %cmp98.i.i = icmp eq i32 %27, -1, !dbg !265
  br i1 %cmp98.i.i, label %for.body.101.i.i, label %if.then.106.i.i, !dbg !266

for.body.101.i.i:                                 ; preds = %land.rhs.95.i.i
  %inc102.i.i = add nuw i32 %k.2207.i.i, 1, !dbg !268
  tail call void @llvm.dbg.value(metadata i32 %inc102.i.i, i64 0, metadata !92, metadata !111) #4, !dbg !176
  %cmp93.i.i = icmp sgt i32 %26, %inc102.i.i, !dbg !260
  br i1 %cmp93.i.i, label %land.rhs.95.i.i, label %fixstate.exit.i.loopexit21, !dbg !263

if.then.106.i.i:                                  ; preds = %land.rhs.95.i.i
  %idxprom96.i.i.lcssa = phi i64 [ %idxprom96.i.i, %land.rhs.95.i.i ]
  %k.2207.i.i.lcssa = phi i32 [ %k.2207.i.i, %land.rhs.95.i.i ]
  %sub107.i.i = sub i32 %26, %k.2207.i.i.lcssa, !dbg !269
  %conv108.i.i = sext i32 %sub107.i.i to i64, !dbg !270
  %mul109.i.i = shl nsw i64 %conv108.i.i, 2, !dbg !271
  %call110.i.i = tail call i8* @PyObject_Malloc(i64 %mul109.i.i) #4, !dbg !272
  %s_accel.i.i = getelementptr inbounds %struct.state, %struct.state* %s.010.i, i64 0, i32 4, !dbg !273
  %28 = bitcast i32** %s_accel.i.i to i8**, !dbg !274
  store i8* %call110.i.i, i8** %28, align 8, !dbg !274, !tbaa !275
  %cmp112.i.i = icmp eq i8* %call110.i.i, null, !dbg !276
  %29 = bitcast i8* %call110.i.i to i32*, !dbg !278
  br i1 %cmp112.i.i, label %if.then.114.i.i, label %if.end.116.i.i, !dbg !281

if.then.114.i.i:                                  ; preds = %if.then.106.i.i
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !282, !tbaa !171
  %31 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 34, i64 1, %struct._IO_FILE* %30) #5, !dbg !284
  tail call void @exit(i32 1) #6, !dbg !285
  unreachable, !dbg !285

if.end.116.i.i:                                   ; preds = %if.then.106.i.i
  %s_lower.i.i = getelementptr inbounds %struct.state, %struct.state* %s.010.i, i64 0, i32 2, !dbg !286
  store i32 %k.2207.i.i.lcssa, i32* %s_lower.i.i, align 4, !dbg !287, !tbaa !288
  %s_upper.i.i = getelementptr inbounds %struct.state, %struct.state* %s.010.i, i64 0, i32 3, !dbg !289
  store i32 %26, i32* %s_upper.i.i, align 4, !dbg !290, !tbaa !291
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !111) #4, !dbg !292
  %cmp118.203.i.i = icmp sgt i32 %26, %k.2207.i.i.lcssa, !dbg !293
  br i1 %cmp118.203.i.i, label %for.body.120.i.i.preheader, label %fixstate.exit.i, !dbg !294

for.body.120.i.i.preheader:                       ; preds = %if.end.116.i.i
  %32 = trunc i64 %indvars.iv217.i.i.lcssa to i32, !dbg !295
  %33 = sub i32 %32, %k.2207.i.i.lcssa, !dbg !295
  %34 = add i32 %32, -1, !dbg !295
  %xtraiter = and i32 %33, 1, !dbg !295
  %lcmp.mod = icmp eq i32 %xtraiter, 0, !dbg !295
  br i1 %lcmp.mod, label %for.body.120.i.i.preheader.split, label %for.body.120.i.i.prol, !dbg !295

for.body.120.i.i.prol:                            ; preds = %for.body.120.i.i.preheader
  %arrayidx122.i.i.prol = getelementptr i32, i32* %5, i64 %idxprom96.i.i.lcssa, !dbg !295
  %35 = load i32, i32* %arrayidx122.i.i.prol, align 4, !dbg !295, !tbaa !230
  store i32 %35, i32* %29, align 4, !dbg !296, !tbaa !230
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !105, metadata !111) #4, !dbg !292
  %indvars.iv.next.i.i.prol = add nsw i64 %idxprom96.i.i.lcssa, 1, !dbg !294
  br label %for.body.120.i.i.preheader.split, !dbg !294

for.body.120.i.i.preheader.split:                 ; preds = %for.body.120.i.i.preheader, %for.body.120.i.i.prol
  %indvars.iv.i.i.unr = phi i64 [ %idxprom96.i.i.lcssa, %for.body.120.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %for.body.120.i.i.prol ]
  %i.0205.i.i.unr = phi i32 [ 0, %for.body.120.i.i.preheader ], [ 1, %for.body.120.i.i.prol ]
  %36 = icmp eq i32 %34, %k.2207.i.i.lcssa, !dbg !295
  br i1 %36, label %fixstate.exit.i.loopexit, label %for.body.120.i.i.preheader.split.split, !dbg !295

for.body.120.i.i.preheader.split.split:           ; preds = %for.body.120.i.i.preheader.split
  br label %for.body.120.i.i, !dbg !295

for.body.120.i.i:                                 ; preds = %for.body.120.i.i, %for.body.120.i.i.preheader.split.split
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %for.body.120.i.i.preheader.split.split ], [ %indvars.iv.next.i.i.1, %for.body.120.i.i ], !dbg !184
  %i.0205.i.i = phi i32 [ %i.0205.i.i.unr, %for.body.120.i.i.preheader.split.split ], [ %inc127.i.i.1, %for.body.120.i.i ], !dbg !184
  %arrayidx122.i.i = getelementptr i32, i32* %5, i64 %indvars.iv.i.i, !dbg !295
  %37 = load i32, i32* %arrayidx122.i.i, align 4, !dbg !295, !tbaa !230
  %idxprom123.i.i = sext i32 %i.0205.i.i to i64, !dbg !297
  %arrayidx125.i.i = getelementptr i32, i32* %29, i64 %idxprom123.i.i, !dbg !297
  store i32 %37, i32* %arrayidx125.i.i, align 4, !dbg !296, !tbaa !230
  %inc127.i.i = add i32 %i.0205.i.i, 1, !dbg !298
  tail call void @llvm.dbg.value(metadata i32 %inc127.i.i, i64 0, metadata !105, metadata !111) #4, !dbg !292
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1, !dbg !294
  %arrayidx122.i.i.1 = getelementptr i32, i32* %5, i64 %indvars.iv.next.i.i, !dbg !295
  %38 = load i32, i32* %arrayidx122.i.i.1, align 4, !dbg !295, !tbaa !230
  %idxprom123.i.i.1 = sext i32 %inc127.i.i to i64, !dbg !297
  %arrayidx125.i.i.1 = getelementptr i32, i32* %29, i64 %idxprom123.i.i.1, !dbg !297
  store i32 %38, i32* %arrayidx125.i.i.1, align 4, !dbg !296, !tbaa !230
  %inc127.i.i.1 = add i32 %i.0205.i.i, 2, !dbg !298
  tail call void @llvm.dbg.value(metadata i32 %inc127.i.i, i64 0, metadata !105, metadata !111) #4, !dbg !292
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, 2, !dbg !294
  %exitcond.i.i.1 = icmp eq i32 %inc127.i.i.1, %sub107.i.i, !dbg !294
  br i1 %exitcond.i.i.1, label %fixstate.exit.i.loopexit.unr-lcssa, label %for.body.120.i.i, !dbg !294

fixstate.exit.i.loopexit.unr-lcssa:               ; preds = %for.body.120.i.i
  br label %fixstate.exit.i.loopexit, !dbg !299

fixstate.exit.i.loopexit:                         ; preds = %for.body.120.i.i.preheader.split, %fixstate.exit.i.loopexit.unr-lcssa
  br label %fixstate.exit.i, !dbg !299

fixstate.exit.i.loopexit21:                       ; preds = %for.body.101.i.i
  br label %fixstate.exit.i, !dbg !299

fixstate.exit.i:                                  ; preds = %fixstate.exit.i.loopexit21, %fixstate.exit.i.loopexit, %if.end.116.i.i, %for.cond.92.preheader.i.i
  tail call void @PyObject_Free(i8* %call.i.i) #4, !dbg !299
  %inc.i = add i32 %j.012.i, 1, !dbg !300
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !84, metadata !111) #4, !dbg !140
  %incdec.ptr.i = getelementptr %struct.state, %struct.state* %s.010.i, i64 1, !dbg !301
  %39 = load i32, i32* %d_nstates.i, align 4, !dbg !141, !tbaa !142
  %cmp.i = icmp slt i32 %inc.i, %39, !dbg !144
  br i1 %cmp.i, label %for.body.i, label %fixdfa.exit.loopexit, !dbg !145

fixdfa.exit.loopexit:                             ; preds = %fixstate.exit.i
  br label %fixdfa.exit, !dbg !302

fixdfa.exit:                                      ; preds = %fixdfa.exit.loopexit, %for.body
  %incdec.ptr = getelementptr %struct.dfa, %struct.dfa* %d.011, i64 1, !dbg !302
  tail call void @llvm.dbg.value(metadata %struct.dfa* %incdec.ptr, i64 0, metadata !65, metadata !111), !dbg !113
  %dec = add i32 %dec12, -1, !dbg !124
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !66, metadata !111), !dbg !123
  %cmp = icmp sgt i32 %dec, -1, !dbg !128
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !129

for.end.loopexit:                                 ; preds = %fixdfa.exit
  br label %for.end, !dbg !303

for.end:                                          ; preds = %for.end.loopexit, %entry
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 4, !dbg !303
  store i32 1, i32* %g_accel, align 4, !dbg !304, !tbaa !305
  ret void, !dbg !306
}

; Function Attrs: nounwind uwtable
define void @PyGrammar_RemoveAccelerators(%struct.grammar* nocapture %g) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !69, metadata !111), !dbg !307
  %g_accel = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 4, !dbg !308
  store i32 0, i32* %g_accel, align 4, !dbg !309, !tbaa !305
  tail call void @llvm.dbg.value(metadata %struct.dfa* %1, i64 0, metadata !70, metadata !111), !dbg !310
  %g_ndfas = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 0, !dbg !311
  %0 = load i32, i32* %g_ndfas, align 4, !dbg !311, !tbaa !116
  tail call void @llvm.dbg.value(metadata i32 %0, i64 0, metadata !71, metadata !111), !dbg !312
  %dec.24 = add i32 %0, -1, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %dec.24, i64 0, metadata !71, metadata !111), !dbg !312
  %cmp.25 = icmp sgt i32 %dec.24, -1, !dbg !316
  br i1 %cmp.25, label %for.body.lr.ph, label %for.end.8, !dbg !317

for.body.lr.ph:                                   ; preds = %entry
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 1, !dbg !318
  %1 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8, !dbg !318, !tbaa !131
  br label %for.body, !dbg !317

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %dec27 = phi i32 [ %dec.24, %for.body.lr.ph ], [ %dec, %for.end ]
  %d.026 = phi %struct.dfa* [ %1, %for.body.lr.ph ], [ %incdec.ptr7, %for.end ]
  tail call void @llvm.dbg.value(metadata %struct.state* %3, i64 0, metadata !72, metadata !111), !dbg !319
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !76, metadata !111), !dbg !320
  %d_nstates = getelementptr inbounds %struct.dfa, %struct.dfa* %d.026, i64 0, i32 3, !dbg !321
  %2 = load i32, i32* %d_nstates, align 4, !dbg !321, !tbaa !142
  %cmp2.21 = icmp sgt i32 %2, 0, !dbg !324
  br i1 %cmp2.21, label %for.body.3.lr.ph, label %for.end, !dbg !325

for.body.3.lr.ph:                                 ; preds = %for.body
  %d_state = getelementptr inbounds %struct.dfa, %struct.dfa* %d.026, i64 0, i32 4, !dbg !326
  %3 = load %struct.state*, %struct.state** %d_state, align 8, !dbg !326, !tbaa !147
  br label %for.body.3, !dbg !325

for.body.3:                                       ; preds = %for.body.3.lr.ph, %if.end
  %4 = phi i32 [ %2, %for.body.3.lr.ph ], [ %7, %if.end ]
  %j.023 = phi i32 [ 0, %for.body.3.lr.ph ], [ %inc, %if.end ]
  %s.022 = phi %struct.state* [ %3, %for.body.3.lr.ph ], [ %incdec.ptr, %if.end ]
  %s_accel = getelementptr inbounds %struct.state, %struct.state* %s.022, i64 0, i32 4, !dbg !327
  %5 = load i32*, i32** %s_accel, align 8, !dbg !327, !tbaa !275
  %tobool = icmp eq i32* %5, null, !dbg !330
  br i1 %tobool, label %if.end, label %if.then, !dbg !331

if.then:                                          ; preds = %for.body.3
  %6 = bitcast i32* %5 to i8*, !dbg !332
  tail call void @PyObject_Free(i8* %6) #4, !dbg !333
  %.pre = load i32, i32* %d_nstates, align 4, !dbg !321, !tbaa !142
  br label %if.end, !dbg !333

if.end:                                           ; preds = %for.body.3, %if.then
  %7 = phi i32 [ %4, %for.body.3 ], [ %.pre, %if.then ], !dbg !321
  store i32* null, i32** %s_accel, align 8, !dbg !334, !tbaa !275
  %inc = add i32 %j.023, 1, !dbg !335
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !76, metadata !111), !dbg !320
  %incdec.ptr = getelementptr %struct.state, %struct.state* %s.022, i64 1, !dbg !336
  tail call void @llvm.dbg.value(metadata %struct.state* %incdec.ptr, i64 0, metadata !72, metadata !111), !dbg !319
  %cmp2 = icmp slt i32 %inc, %7, !dbg !324
  br i1 %cmp2, label %for.body.3, label %for.end.loopexit, !dbg !325

for.end.loopexit:                                 ; preds = %if.end
  br label %for.end, !dbg !337

for.end:                                          ; preds = %for.end.loopexit, %for.body
  %incdec.ptr7 = getelementptr %struct.dfa, %struct.dfa* %d.026, i64 1, !dbg !337
  tail call void @llvm.dbg.value(metadata %struct.dfa* %incdec.ptr7, i64 0, metadata !70, metadata !111), !dbg !310
  %dec = add i32 %dec27, -1, !dbg !313
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !71, metadata !111), !dbg !312
  %cmp = icmp sgt i32 %dec, -1, !dbg !316
  br i1 %cmp, label %for.body, label %for.end.8.loopexit, !dbg !317

for.end.8.loopexit:                               ; preds = %for.end
  br label %for.end.8, !dbg !338

for.end.8:                                        ; preds = %for.end.8.loopexit, %entry
  ret void, !dbg !338
}

declare void @PyObject_Free(i8*) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare %struct.dfa* @PyGrammar_FindDFA(%struct.grammar*, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7)
!1 = !DIFile(filename: "Parser/acceler.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !67, !77, !85}
!8 = !DISubprogram(name: "PyGrammar_AddAccelerators", scope: !1, file: !1, line: 24, type: !9, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.grammar*)* @PyGrammar_AddAccelerators, variables: !63)
!9 = !DISubroutineType(types: !10)
!10 = !{null, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "grammar", file: !13, line: 67, baseType: !14)
!13 = !DIFile(filename: "Include/grammar.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 61, size: 320, align: 64, elements: !15)
!15 = !{!16, !17, !49, !61, !62}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "g_ndfas", scope: !14, file: !13, line: 62, baseType: !5, size: 32, align: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "g_dfa", scope: !14, file: !13, line: 63, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "dfa", file: !13, line: 57, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 50, size: 320, align: 64, elements: !21)
!21 = !{!22, !23, !26, !27, !28, !46}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !20, file: !13, line: 51, baseType: !5, size: 32, align: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !20, file: !13, line: 52, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "d_initial", scope: !20, file: !13, line: 53, baseType: !5, size: 32, align: 32, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "d_nstates", scope: !20, file: !13, line: 54, baseType: !5, size: 32, align: 32, offset: 160)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "d_state", scope: !20, file: !13, line: 55, baseType: !29, size: 64, align: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "state", file: !13, line: 46, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 37, size: 320, align: 64, elements: !32)
!32 = !{!33, !34, !42, !43, !44, !45}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "s_narcs", scope: !31, file: !13, line: 38, baseType: !5, size: 32, align: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "s_arc", scope: !31, file: !13, line: 39, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc", file: !13, line: 33, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 30, size: 32, align: 16, elements: !38)
!38 = !{!39, !41}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "a_lbl", scope: !37, file: !13, line: 31, baseType: !40, size: 16, align: 16)
!40 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "a_arrow", scope: !37, file: !13, line: 32, baseType: !40, size: 16, align: 16, offset: 16)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "s_lower", scope: !31, file: !13, line: 42, baseType: !5, size: 32, align: 32, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "s_upper", scope: !31, file: !13, line: 43, baseType: !5, size: 32, align: 32, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "s_accel", scope: !31, file: !13, line: 44, baseType: !4, size: 64, align: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "s_accept", scope: !31, file: !13, line: 45, baseType: !5, size: 32, align: 32, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "d_first", scope: !20, file: !13, line: 56, baseType: !47, size: 64, align: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !48, line: 12, baseType: !24)
!48 = !DIFile(filename: "Include/bitset.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "g_ll", scope: !14, file: !13, line: 64, baseType: !50, size: 128, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "labellist", file: !13, line: 26, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 23, size: 128, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ll_nlabels", scope: !51, file: !13, line: 24, baseType: !5, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ll_label", scope: !51, file: !13, line: 25, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "label", file: !13, line: 17, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 14, size: 128, align: 64, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !57, file: !13, line: 15, baseType: !5, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "lb_str", scope: !57, file: !13, line: 16, baseType: !24, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "g_start", scope: !14, file: !13, line: 65, baseType: !5, size: 32, align: 32, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "g_accel", scope: !14, file: !13, line: 66, baseType: !5, size: 32, align: 32, offset: 288)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !8, file: !1, line: 24, type: !11)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !8, file: !1, line: 26, type: !18)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !8, file: !1, line: 27, type: !5)
!67 = !DISubprogram(name: "PyGrammar_RemoveAccelerators", scope: !1, file: !1, line: 35, type: !9, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.grammar*)* @PyGrammar_RemoveAccelerators, variables: !68)
!68 = !{!69, !70, !71, !72, !76}
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !67, file: !1, line: 35, type: !11)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !67, file: !1, line: 37, type: !18)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !67, file: !1, line: 38, type: !5)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !73, file: !1, line: 42, type: !29)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 41, column: 41)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 41, column: 5)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 41, column: 5)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !73, file: !1, line: 43, type: !5)
!77 = !DISubprogram(name: "fixdfa", scope: !1, file: !1, line: 54, type: !78, isLocal: true, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, variables: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !11, !18}
!80 = !{!81, !82, !83, !84}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !77, file: !1, line: 54, type: !11)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "d", arg: 2, scope: !77, file: !1, line: 54, type: !18)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !77, file: !1, line: 56, type: !29)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !77, file: !1, line: 57, type: !5)
!85 = !DISubprogram(name: "fixstate", scope: !1, file: !1, line: 64, type: !86, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, variables: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !11, !29}
!88 = !{!89, !90, !91, !92, !93, !94, !95, !99, !100, !101, !104, !105}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !85, file: !1, line: 64, type: !11)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 2, scope: !85, file: !1, line: 64, type: !29)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !85, file: !1, line: 66, type: !35)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !85, file: !1, line: 67, type: !5)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "accel", scope: !85, file: !1, line: 68, type: !4)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nl", scope: !85, file: !1, line: 69, type: !5)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lbl", scope: !96, file: !1, line: 80, type: !5)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 79, column: 41)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 79, column: 5)
!98 = distinct !DILexicalBlock(scope: !85, file: !1, line: 79, column: 5)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !96, file: !1, line: 81, type: !55)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "type", scope: !96, file: !1, line: 82, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d1", scope: !102, file: !1, line: 88, type: !18)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 87, column: 34)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 87, column: 13)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibit", scope: !102, file: !1, line: 89, type: !5)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !106, file: !1, line: 113, type: !5)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 112, column: 17)
!107 = distinct !DILexicalBlock(scope: !85, file: !1, line: 112, column: 9)
!108 = !{i32 2, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!111 = !DIExpression()
!112 = !DILocation(line: 24, column: 36, scope: !8)
!113 = !DILocation(line: 26, column: 10, scope: !8)
!114 = !DILocation(line: 29, column: 17, scope: !115)
!115 = distinct !DILexicalBlock(scope: !8, file: !1, line: 29, column: 5)
!116 = !{!117, !118, i64 0}
!117 = !{!"", !118, i64 0, !121, i64 8, !122, i64 16, !118, i64 32, !118, i64 36}
!118 = !{!"int", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C/C++ TBAA"}
!121 = !{!"any pointer", !119, i64 0}
!122 = !{!"", !118, i64 0, !121, i64 8}
!123 = !DILocation(line: 27, column: 9, scope: !8)
!124 = !DILocation(line: 29, column: 26, scope: !125)
!125 = !DILexicalBlockFile(scope: !126, file: !1, discriminator: 2)
!126 = !DILexicalBlockFile(scope: !127, file: !1, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !115, file: !1, line: 29, column: 5)
!128 = !DILocation(line: 29, column: 30, scope: !127)
!129 = !DILocation(line: 29, column: 5, scope: !115)
!130 = !DILocation(line: 28, column: 12, scope: !8)
!131 = !{!117, !121, i64 8}
!132 = !DILocation(line: 69, column: 22, scope: !85, inlinedAt: !133)
!133 = distinct !DILocation(line: 60, column: 9, scope: !134, inlinedAt: !136)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 59, column: 5)
!135 = distinct !DILexicalBlock(scope: !77, file: !1, line: 59, column: 5)
!136 = distinct !DILocation(line: 30, column: 9, scope: !127)
!137 = !DILocation(line: 81, column: 29, scope: !96, inlinedAt: !133)
!138 = !DILocation(line: 54, column: 17, scope: !77, inlinedAt: !136)
!139 = !DILocation(line: 54, column: 25, scope: !77, inlinedAt: !136)
!140 = !DILocation(line: 57, column: 9, scope: !77, inlinedAt: !136)
!141 = !DILocation(line: 59, column: 24, scope: !134, inlinedAt: !136)
!142 = !{!143, !118, i64 20}
!143 = !{!"", !118, i64 0, !121, i64 8, !118, i64 16, !118, i64 20, !121, i64 24, !121, i64 32}
!144 = !DILocation(line: 59, column: 19, scope: !134, inlinedAt: !136)
!145 = !DILocation(line: 59, column: 5, scope: !135, inlinedAt: !136)
!146 = !DILocation(line: 58, column: 12, scope: !77, inlinedAt: !136)
!147 = !{!143, !121, i64 24}
!148 = !DILocation(line: 30, column: 9, scope: !127)
!149 = !DILocation(line: 64, column: 19, scope: !85, inlinedAt: !133)
!150 = !{!117, !118, i64 16}
!151 = !DILocation(line: 69, column: 9, scope: !85, inlinedAt: !133)
!152 = !DILocation(line: 70, column: 8, scope: !85, inlinedAt: !133)
!153 = !DILocation(line: 70, column: 17, scope: !85, inlinedAt: !133)
!154 = !{!155, !118, i64 32}
!155 = !{!"", !118, i64 0, !121, i64 8, !118, i64 16, !118, i64 20, !121, i64 24, !118, i64 32}
!156 = !DILocation(line: 71, column: 37, scope: !85, inlinedAt: !133)
!157 = !DILocation(line: 71, column: 40, scope: !85, inlinedAt: !133)
!158 = !DILocation(line: 71, column: 21, scope: !85, inlinedAt: !133)
!159 = !DILocation(line: 71, column: 13, scope: !85, inlinedAt: !133)
!160 = !DILocation(line: 68, column: 10, scope: !85, inlinedAt: !133)
!161 = !DILocation(line: 72, column: 15, scope: !162, inlinedAt: !133)
!162 = distinct !DILexicalBlock(scope: !85, file: !1, line: 72, column: 9)
!163 = !DILocation(line: 72, column: 9, scope: !85, inlinedAt: !133)
!164 = !DILocation(line: 76, column: 19, scope: !165, inlinedAt: !133)
!165 = distinct !DILexicalBlock(scope: !166, file: !1, line: 76, column: 5)
!166 = distinct !DILexicalBlock(scope: !85, file: !1, line: 76, column: 5)
!167 = !DILocation(line: 76, column: 5, scope: !166, inlinedAt: !133)
!168 = !DILocation(line: 77, column: 18, scope: !165, inlinedAt: !133)
!169 = !DILocation(line: 73, column: 17, scope: !170, inlinedAt: !133)
!170 = distinct !DILexicalBlock(scope: !162, file: !1, line: 72, column: 24)
!171 = !{!121, !121, i64 0}
!172 = !DILocation(line: 73, column: 9, scope: !170, inlinedAt: !133)
!173 = !DILocation(line: 74, column: 9, scope: !170, inlinedAt: !133)
!174 = !DILocation(line: 79, column: 17, scope: !98, inlinedAt: !133)
!175 = !{!155, !118, i64 0}
!176 = !DILocation(line: 67, column: 9, scope: !85, inlinedAt: !133)
!177 = !DILocation(line: 79, column: 26, scope: !178, inlinedAt: !133)
!178 = !DILexicalBlockFile(scope: !179, file: !1, discriminator: 2)
!179 = !DILexicalBlockFile(scope: !97, file: !1, discriminator: 1)
!180 = !DILocation(line: 79, column: 30, scope: !97, inlinedAt: !133)
!181 = !DILocation(line: 79, column: 5, scope: !98, inlinedAt: !133)
!182 = !DILocation(line: 78, column: 12, scope: !85, inlinedAt: !133)
!183 = !{!155, !121, i64 8}
!184 = !DILocation(line: 60, column: 9, scope: !134, inlinedAt: !136)
!185 = !DILocation(line: 80, column: 22, scope: !96, inlinedAt: !133)
!186 = !{!187, !188, i64 0}
!187 = !{!"", !188, i64 0, !188, i64 2}
!188 = !{!"short", !119, i64 0}
!189 = !DILocation(line: 80, column: 19, scope: !96, inlinedAt: !133)
!190 = !DILocation(line: 80, column: 13, scope: !96, inlinedAt: !133)
!191 = !DILocation(line: 81, column: 21, scope: !96, inlinedAt: !133)
!192 = !{!117, !121, i64 24}
!193 = !DILocation(line: 82, column: 23, scope: !96, inlinedAt: !133)
!194 = !{!122, !118, i64 0}
!195 = !DILocation(line: 82, column: 13, scope: !96, inlinedAt: !133)
!196 = !DILocation(line: 83, column: 16, scope: !197, inlinedAt: !133)
!197 = distinct !DILexicalBlock(scope: !96, file: !1, line: 83, column: 13)
!198 = !{!187, !188, i64 2}
!199 = !DILocation(line: 83, column: 13, scope: !197, inlinedAt: !133)
!200 = !DILocation(line: 83, column: 24, scope: !197, inlinedAt: !133)
!201 = !DILocation(line: 83, column: 13, scope: !96, inlinedAt: !133)
!202 = !DILocation(line: 84, column: 13, scope: !203, inlinedAt: !133)
!203 = distinct !DILexicalBlock(scope: !197, file: !1, line: 83, column: 37)
!204 = !DILocation(line: 85, column: 13, scope: !203, inlinedAt: !133)
!205 = !DILocation(line: 87, column: 13, scope: !103, inlinedAt: !133)
!206 = !DILocation(line: 87, column: 13, scope: !96, inlinedAt: !133)
!207 = !DILocation(line: 88, column: 23, scope: !102, inlinedAt: !133)
!208 = !DILocation(line: 88, column: 18, scope: !102, inlinedAt: !133)
!209 = !DILocation(line: 90, column: 22, scope: !210, inlinedAt: !133)
!210 = distinct !DILexicalBlock(scope: !102, file: !1, line: 90, column: 17)
!211 = !DILocation(line: 90, column: 34, scope: !210, inlinedAt: !133)
!212 = !DILocation(line: 90, column: 17, scope: !102, inlinedAt: !133)
!213 = !DILocation(line: 94, column: 43, scope: !214, inlinedAt: !133)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 94, column: 13)
!215 = distinct !DILexicalBlock(scope: !102, file: !1, line: 94, column: 13)
!216 = !DILocation(line: 94, column: 33, scope: !214, inlinedAt: !133)
!217 = !DILocation(line: 94, column: 13, scope: !215, inlinedAt: !133)
!218 = !DILocation(line: 95, column: 21, scope: !219, inlinedAt: !133)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 95, column: 21)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 94, column: 63)
!221 = !DILocation(line: 99, column: 45, scope: !222, inlinedAt: !133)
!222 = distinct !DILexicalBlock(scope: !219, file: !1, line: 95, column: 49)
!223 = !DILocation(line: 91, column: 17, scope: !224, inlinedAt: !133)
!224 = distinct !DILexicalBlock(scope: !210, file: !1, line: 90, column: 47)
!225 = !{!143, !121, i64 32}
!226 = !{!119, !119, i64 0}
!227 = !DILocation(line: 95, column: 21, scope: !220, inlinedAt: !133)
!228 = !DILocation(line: 96, column: 25, scope: !229, inlinedAt: !133)
!229 = distinct !DILexicalBlock(scope: !222, file: !1, line: 96, column: 25)
!230 = !{!118, !118, i64 0}
!231 = !DILocation(line: 96, column: 37, scope: !229, inlinedAt: !133)
!232 = !DILocation(line: 96, column: 25, scope: !222, inlinedAt: !133)
!233 = !DILocation(line: 97, column: 25, scope: !229, inlinedAt: !133)
!234 = !DILocation(line: 98, column: 38, scope: !222, inlinedAt: !133)
!235 = !DILocation(line: 98, column: 35, scope: !222, inlinedAt: !133)
!236 = !DILocation(line: 98, column: 57, scope: !222, inlinedAt: !133)
!237 = !DILocation(line: 98, column: 33, scope: !222, inlinedAt: !133)
!238 = !DILocation(line: 100, column: 17, scope: !222, inlinedAt: !133)
!239 = !DILocation(line: 94, column: 59, scope: !214, inlinedAt: !133)
!240 = !DILocation(line: 89, column: 17, scope: !102, inlinedAt: !133)
!241 = !DILocation(line: 103, column: 22, scope: !242, inlinedAt: !133)
!242 = distinct !DILexicalBlock(scope: !103, file: !1, line: 103, column: 18)
!243 = !DILocation(line: 103, column: 18, scope: !103, inlinedAt: !133)
!244 = !DILocation(line: 104, column: 25, scope: !242, inlinedAt: !133)
!245 = !DILocation(line: 104, column: 13, scope: !242, inlinedAt: !133)
!246 = !DILocation(line: 105, column: 22, scope: !247, inlinedAt: !133)
!247 = distinct !DILexicalBlock(scope: !242, file: !1, line: 105, column: 18)
!248 = !DILocation(line: 105, column: 34, scope: !247, inlinedAt: !133)
!249 = !DILocation(line: 105, column: 27, scope: !247, inlinedAt: !133)
!250 = !DILocation(line: 106, column: 13, scope: !247, inlinedAt: !133)
!251 = !DILocation(line: 106, column: 24, scope: !247, inlinedAt: !133)
!252 = !DILocation(line: 79, column: 37, scope: !97, inlinedAt: !133)
!253 = !DILocation(line: 66, column: 10, scope: !85, inlinedAt: !133)
!254 = !DILocation(line: 108, column: 15, scope: !85, inlinedAt: !133)
!255 = !DILocation(line: 108, column: 19, scope: !85, inlinedAt: !133)
!256 = !DILocation(line: 108, column: 22, scope: !85, inlinedAt: !133)
!257 = !DILocation(line: 108, column: 34, scope: !85, inlinedAt: !133)
!258 = !DILocation(line: 108, column: 5, scope: !259, inlinedAt: !133)
!259 = !DILexicalBlockFile(scope: !85, file: !1, discriminator: 3)
!260 = !DILocation(line: 110, column: 19, scope: !261, inlinedAt: !133)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 110, column: 5)
!262 = distinct !DILexicalBlock(scope: !85, file: !1, line: 110, column: 5)
!263 = !DILocation(line: 110, column: 24, scope: !261, inlinedAt: !133)
!264 = !DILocation(line: 110, column: 27, scope: !261, inlinedAt: !133)
!265 = !DILocation(line: 110, column: 36, scope: !261, inlinedAt: !133)
!266 = !DILocation(line: 110, column: 5, scope: !267, inlinedAt: !133)
!267 = !DILexicalBlockFile(scope: !262, file: !1, discriminator: 3)
!268 = !DILocation(line: 111, column: 10, scope: !261, inlinedAt: !133)
!269 = !DILocation(line: 114, column: 49, scope: !106, inlinedAt: !133)
!270 = !DILocation(line: 114, column: 46, scope: !106, inlinedAt: !133)
!271 = !DILocation(line: 114, column: 53, scope: !106, inlinedAt: !133)
!272 = !DILocation(line: 114, column: 30, scope: !106, inlinedAt: !133)
!273 = !DILocation(line: 114, column: 12, scope: !106, inlinedAt: !133)
!274 = !DILocation(line: 114, column: 20, scope: !106, inlinedAt: !133)
!275 = !{!155, !121, i64 24}
!276 = !DILocation(line: 115, column: 24, scope: !277, inlinedAt: !133)
!277 = distinct !DILexicalBlock(scope: !106, file: !1, line: 115, column: 13)
!278 = !DILocation(line: 122, column: 16, scope: !279, inlinedAt: !133)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 121, column: 9)
!280 = distinct !DILexicalBlock(scope: !106, file: !1, line: 121, column: 9)
!281 = !DILocation(line: 115, column: 13, scope: !106, inlinedAt: !133)
!282 = !DILocation(line: 116, column: 21, scope: !283, inlinedAt: !133)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 115, column: 33)
!284 = !DILocation(line: 116, column: 13, scope: !283, inlinedAt: !133)
!285 = !DILocation(line: 117, column: 13, scope: !283, inlinedAt: !133)
!286 = !DILocation(line: 119, column: 12, scope: !106, inlinedAt: !133)
!287 = !DILocation(line: 119, column: 20, scope: !106, inlinedAt: !133)
!288 = !{!155, !118, i64 16}
!289 = !DILocation(line: 120, column: 12, scope: !106, inlinedAt: !133)
!290 = !DILocation(line: 120, column: 20, scope: !106, inlinedAt: !133)
!291 = !{!155, !118, i64 20}
!292 = !DILocation(line: 113, column: 13, scope: !106, inlinedAt: !133)
!293 = !DILocation(line: 121, column: 23, scope: !279, inlinedAt: !133)
!294 = !DILocation(line: 121, column: 9, scope: !280, inlinedAt: !133)
!295 = !DILocation(line: 122, column: 29, scope: !279, inlinedAt: !133)
!296 = !DILocation(line: 122, column: 27, scope: !279, inlinedAt: !133)
!297 = !DILocation(line: 122, column: 13, scope: !279, inlinedAt: !133)
!298 = !DILocation(line: 121, column: 30, scope: !279, inlinedAt: !133)
!299 = !DILocation(line: 124, column: 5, scope: !85, inlinedAt: !133)
!300 = !DILocation(line: 59, column: 36, scope: !134, inlinedAt: !136)
!301 = !DILocation(line: 59, column: 41, scope: !134, inlinedAt: !136)
!302 = !DILocation(line: 29, column: 37, scope: !127)
!303 = !DILocation(line: 31, column: 8, scope: !8)
!304 = !DILocation(line: 31, column: 16, scope: !8)
!305 = !{!117, !118, i64 36}
!306 = !DILocation(line: 32, column: 1, scope: !8)
!307 = !DILocation(line: 35, column: 39, scope: !67)
!308 = !DILocation(line: 39, column: 8, scope: !67)
!309 = !DILocation(line: 39, column: 16, scope: !67)
!310 = !DILocation(line: 37, column: 10, scope: !67)
!311 = !DILocation(line: 41, column: 17, scope: !75)
!312 = !DILocation(line: 38, column: 9, scope: !67)
!313 = !DILocation(line: 41, column: 26, scope: !314)
!314 = !DILexicalBlockFile(scope: !315, file: !1, discriminator: 2)
!315 = !DILexicalBlockFile(scope: !74, file: !1, discriminator: 1)
!316 = !DILocation(line: 41, column: 30, scope: !74)
!317 = !DILocation(line: 41, column: 5, scope: !75)
!318 = !DILocation(line: 40, column: 12, scope: !67)
!319 = !DILocation(line: 42, column: 16, scope: !73)
!320 = !DILocation(line: 43, column: 13, scope: !73)
!321 = !DILocation(line: 45, column: 28, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 45, column: 9)
!323 = distinct !DILexicalBlock(scope: !73, file: !1, line: 45, column: 9)
!324 = !DILocation(line: 45, column: 23, scope: !322)
!325 = !DILocation(line: 45, column: 9, scope: !323)
!326 = !DILocation(line: 44, column: 16, scope: !73)
!327 = !DILocation(line: 46, column: 20, scope: !328)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 46, column: 17)
!329 = distinct !DILexicalBlock(scope: !322, file: !1, line: 45, column: 49)
!330 = !DILocation(line: 46, column: 17, scope: !328)
!331 = !DILocation(line: 46, column: 17, scope: !329)
!332 = !DILocation(line: 47, column: 31, scope: !328)
!333 = !DILocation(line: 47, column: 17, scope: !328)
!334 = !DILocation(line: 48, column: 24, scope: !329)
!335 = !DILocation(line: 45, column: 40, scope: !322)
!336 = !DILocation(line: 45, column: 45, scope: !322)
!337 = !DILocation(line: 41, column: 37, scope: !74)
!338 = !DILocation(line: 51, column: 1, scope: !67)
