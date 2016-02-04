; ModuleID = 'pyhash.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyHash_FuncDef = type { i64 (i8*, i64)*, i8*, i32, i32 }
%union._Py_HashSecret_t = type { %struct.anon.1 }
%struct.anon.1 = type { [16 x i8], i64 }

@PyHash_Func = internal global %struct.PyHash_FuncDef { i64 (i8*, i64)* @siphash24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 64, i32 128 }, align 8
@_Py_HashSecret = common global %union._Py_HashSecret_t zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"siphash24\00", align 1

; Function Attrs: nounwind uwtable
define i64 @_Py_HashDouble(double %v) #0 {
entry:
  %e = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata double %v, i64 0, metadata !28, metadata !128), !dbg !129
  %0 = bitcast i32* %e to i8*, !dbg !130
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !130
  %call2 = tail call i32 @__finite(double %v) #1, !dbg !131
  %tobool3 = icmp eq i32 %call2, 0, !dbg !131
  br i1 %tobool3, label %cond.true.13, label %if.end, !dbg !131

cond.true.13:                                     ; preds = %entry
  %call14 = tail call i32 @__isinf(double %v) #1, !dbg !134
  %tobool15 = icmp eq i32 %call14, 0, !dbg !134
  br i1 %tobool15, label %cleanup, label %if.then.20, !dbg !134

if.then.20:                                       ; preds = %cond.true.13
  %cmp = fcmp ogt double %v, 0.000000e+00, !dbg !138
  %conv22 = select i1 %cmp, i64 314159, i64 -314159, !dbg !139
  br label %cleanup, !dbg !140

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !29, metadata !128), !dbg !141
  %call23 = call double @frexp(double %v, i32* nonnull %e) #2, !dbg !142
  tail call void @llvm.dbg.value(metadata double %call23, i64 0, metadata !32, metadata !128), !dbg !143
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !31, metadata !128), !dbg !144
  %cmp24 = fcmp olt double %call23, 0.000000e+00, !dbg !145
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !31, metadata !128), !dbg !144
  %sub = fsub double -0.000000e+00, %call23, !dbg !147
  tail call void @llvm.dbg.value(metadata double %sub, i64 0, metadata !32, metadata !128), !dbg !143
  %sign.0 = select i1 %cmp24, i64 -1, i64 1, !dbg !149
  %m.0 = select i1 %cmp24, double %sub, double %call23, !dbg !149
  %tobool28.83 = fcmp une double %m.0, 0.000000e+00, !dbg !150
  %e.promoted = load i32, i32* %e, align 4, !dbg !151, !tbaa !153
  br i1 %tobool28.83, label %while.body.preheader, label %while.end, !dbg !150

while.body.preheader:                             ; preds = %if.end
  br label %while.body, !dbg !157

while.body:                                       ; preds = %while.body.preheader, %while.body
  %sub2986 = phi i32 [ %sub29, %while.body ], [ %e.promoted, %while.body.preheader ], !dbg !157
  %x.085 = phi i64 [ %sub36.add, %while.body ], [ 0, %while.body.preheader ]
  %m.184 = phi double [ %sub32, %while.body ], [ %m.0, %while.body.preheader ]
  %shl = shl i64 %x.085, 28, !dbg !157
  %and = and i64 %shl, 2305843008945258496, !dbg !158
  %shr = lshr i64 %x.085, 33, !dbg !159
  %or = or i64 %and, %shr, !dbg !160
  tail call void @llvm.dbg.value(metadata i64 %or, i64 0, metadata !33, metadata !128), !dbg !161
  %mul = fmul double %m.184, 0x41B0000000000000, !dbg !162
  tail call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !32, metadata !128), !dbg !143
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !29, metadata !128), !dbg !141
  %sub29 = add i32 %sub2986, -28, !dbg !151
  tail call void @llvm.dbg.value(metadata i32 %sub29, i64 0, metadata !29, metadata !128), !dbg !141
  %conv30 = fptoui double %mul to i64, !dbg !163
  tail call void @llvm.dbg.value(metadata i64 %conv30, i64 0, metadata !34, metadata !128), !dbg !164
  %conv31 = uitofp i64 %conv30 to double, !dbg !165
  %sub32 = fsub double %mul, %conv31, !dbg !166
  tail call void @llvm.dbg.value(metadata double %sub32, i64 0, metadata !32, metadata !128), !dbg !143
  %add = add i64 %or, %conv30, !dbg !167
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !33, metadata !128), !dbg !161
  %cmp33 = icmp ugt i64 %add, 2305843009213693950, !dbg !168
  %sub36 = add i64 %add, -2305843009213693951, !dbg !170
  tail call void @llvm.dbg.value(metadata i64 %sub36, i64 0, metadata !33, metadata !128), !dbg !161
  %sub36.add = select i1 %cmp33, i64 %sub36, i64 %add, !dbg !171
  %tobool28 = fcmp une double %sub32, 0.000000e+00, !dbg !150
  br i1 %tobool28, label %while.body, label %while.cond.while.end_crit_edge, !dbg !150

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %sub36.add.lcssa = phi i64 [ %sub36.add, %while.body ]
  %sub29.lcssa = phi i32 [ %sub29, %while.body ]
  store i32 %sub29.lcssa, i32* %e, align 4, !dbg !151, !tbaa !153
  br label %while.end, !dbg !150

while.end:                                        ; preds = %if.end, %while.cond.while.end_crit_edge
  %1 = phi i32 [ %sub29.lcssa, %while.cond.while.end_crit_edge ], [ %e.promoted, %if.end ], !dbg !172
  %x.0.lcssa = phi i64 [ %sub36.add.lcssa, %while.cond.while.end_crit_edge ], [ 0, %if.end ]
  tail call void @llvm.dbg.value(metadata i32* %e, i64 0, metadata !29, metadata !128), !dbg !141
  %cmp38 = icmp sgt i32 %1, -1, !dbg !173
  br i1 %cmp38, label %cond.true.40, label %cond.false.41, !dbg !172

cond.true.40:                                     ; preds = %while.end
  %rem = srem i32 %1, 61, !dbg !174
  br label %cond.end, !dbg !172

cond.false.41:                                    ; preds = %while.end
  %sub42 = xor i32 %1, -1, !dbg !175
  %rem43 = srem i32 %sub42, 61, !dbg !176
  %sub44 = sub nsw i32 60, %rem43, !dbg !177
  br label %cond.end, !dbg !172

cond.end:                                         ; preds = %cond.false.41, %cond.true.40
  %cond45 = phi i32 [ %rem, %cond.true.40 ], [ %sub44, %cond.false.41 ], !dbg !172
  tail call void @llvm.dbg.value(metadata i32 %cond45, i64 0, metadata !29, metadata !128), !dbg !141
  store i32 %cond45, i32* %e, align 4, !dbg !178, !tbaa !153
  %sh_prom = zext i32 %cond45 to i64, !dbg !181
  %shl46 = shl i64 %x.0.lcssa, %sh_prom, !dbg !181
  %and47 = and i64 %shl46, 2305843009213693951, !dbg !182
  %sub48 = sub nsw i32 61, %cond45, !dbg !183
  %sh_prom49 = zext i32 %sub48 to i64, !dbg !184
  %shr50 = lshr i64 %x.0.lcssa, %sh_prom49, !dbg !184
  %or51 = or i64 %and47, %shr50, !dbg !185
  tail call void @llvm.dbg.value(metadata i64 %or51, i64 0, metadata !33, metadata !128), !dbg !161
  %mul53 = mul i64 %or51, %sign.0, !dbg !186
  tail call void @llvm.dbg.value(metadata i64 %mul53, i64 0, metadata !33, metadata !128), !dbg !161
  %cmp54 = icmp eq i64 %mul53, -1, !dbg !187
  %.mul53 = select i1 %cmp54, i64 -2, i64 %mul53, !dbg !189
  tail call void @llvm.dbg.value(metadata i64 %.mul53, i64 0, metadata !33, metadata !128), !dbg !161
  br label %cleanup, !dbg !190

cleanup:                                          ; preds = %cond.true.13, %cond.end, %if.then.20
  %retval.0 = phi i64 [ %.mul53, %cond.end ], [ %conv22, %if.then.20 ], [ 0, %cond.true.13 ]
  call void @llvm.lifetime.end(i64 4, i8* %0) #2, !dbg !191
  ret i64 %retval.0, !dbg !191
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone
declare i32 @__finite(double) #3

; Function Attrs: nounwind readnone
declare i32 @__isinf(double) #3

; Function Attrs: nounwind
declare double @frexp(double, i32* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind readnone uwtable
define i64 @_Py_HashPointer(i8* %p) #5 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %p, i64 0, metadata !40, metadata !128), !dbg !192
  %0 = ptrtoint i8* %p to i64, !dbg !193
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !42, metadata !128), !dbg !194
  %shr = lshr i64 %0, 4, !dbg !195
  %shl = shl i64 %0, 60, !dbg !196
  %or = or i64 %shr, %shl, !dbg !197
  tail call void @llvm.dbg.value(metadata i64 %or, i64 0, metadata !42, metadata !128), !dbg !194
  tail call void @llvm.dbg.value(metadata i64 %or, i64 0, metadata !41, metadata !128), !dbg !198
  %cmp = icmp eq i64 %or, -1, !dbg !199
  %. = select i1 %cmp, i64 -2, i64 %or, !dbg !201
  tail call void @llvm.dbg.value(metadata i64 %., i64 0, metadata !41, metadata !128), !dbg !198
  ret i64 %., !dbg !202
}

; Function Attrs: nounwind uwtable
define i64 @_Py_HashBytes(i8* %src, i64 %len) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !49, metadata !128), !dbg !203
  tail call void @llvm.dbg.value(metadata i64 %len, i64 0, metadata !50, metadata !128), !dbg !204
  %cmp = icmp eq i64 %len, 0, !dbg !205
  br i1 %cmp, label %cleanup, label %if.end, !dbg !207

if.end:                                           ; preds = %entry
  %0 = load i64 (i8*, i64)*, i64 (i8*, i64)** getelementptr inbounds (%struct.PyHash_FuncDef, %struct.PyHash_FuncDef* @PyHash_Func, i64 0, i32 0), align 8, !dbg !208, !tbaa !209
  %call = tail call i64 %0(i8* %src, i64 %len) #2, !dbg !212
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !51, metadata !128), !dbg !213
  %cmp1 = icmp eq i64 %call, -1, !dbg !214
  %.call = select i1 %cmp1, i64 -2, i64 %call, !dbg !216
  br label %cleanup, !dbg !216

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %.call, %if.end ]
  ret i64 %retval.0, !dbg !217
}

; Function Attrs: nounwind readnone uwtable
define void @_PyHash_Fini() #5 {
entry:
  ret void, !dbg !218
}

; Function Attrs: nounwind readnone uwtable
define %struct.PyHash_FuncDef* @PyHash_GetFuncDef() #5 {
entry:
  ret %struct.PyHash_FuncDef* @PyHash_Func, !dbg !219
}

; Function Attrs: nounwind readonly uwtable
define internal i64 @siphash24(i8* nocapture readonly %src, i64 %src_sz) #6 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %src, i64 0, metadata !75, metadata !128), !dbg !220
  tail call void @llvm.dbg.value(metadata i64 %src_sz, i64 0, metadata !76, metadata !128), !dbg !221
  %0 = load i64, i64* bitcast (%union._Py_HashSecret_t* @_Py_HashSecret to i64*), align 8, !dbg !222, !tbaa !223
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !77, metadata !128), !dbg !226
  %1 = load i64, i64* bitcast (i8* getelementptr inbounds (%union._Py_HashSecret_t, %union._Py_HashSecret_t* @_Py_HashSecret, i64 0, i32 0, i32 0, i64 8) to i64*), align 8, !dbg !227, !tbaa !228
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !78, metadata !128), !dbg !229
  %shl = shl i64 %src_sz, 56, !dbg !230
  tail call void @llvm.dbg.value(metadata i64 %shl, i64 0, metadata !79, metadata !128), !dbg !231
  %2 = bitcast i8* %src to i64*, !dbg !232
  tail call void @llvm.dbg.value(metadata i64* %2, i64 0, metadata !80, metadata !128), !dbg !233
  %xor = xor i64 %0, 8317987319222330741, !dbg !234
  tail call void @llvm.dbg.value(metadata i64 %xor, i64 0, metadata !83, metadata !128), !dbg !235
  %xor1 = xor i64 %1, 7237128888997146477, !dbg !236
  tail call void @llvm.dbg.value(metadata i64 %xor1, i64 0, metadata !84, metadata !128), !dbg !237
  %xor2 = xor i64 %0, 7816392313619706465, !dbg !238
  tail call void @llvm.dbg.value(metadata i64 %xor2, i64 0, metadata !85, metadata !128), !dbg !239
  %xor3 = xor i64 %1, 8387220255154660723, !dbg !240
  tail call void @llvm.dbg.value(metadata i64 %xor3, i64 0, metadata !86, metadata !128), !dbg !241
  tail call void @llvm.dbg.declare(metadata i64* undef, metadata !87, metadata !128), !dbg !242
  %cmp.506 = icmp sgt i64 %src_sz, 7, !dbg !243
  br i1 %cmp.506, label %while.body.lr.ph, label %while.end, !dbg !244

while.body.lr.ph:                                 ; preds = %entry
  %3 = add i64 %src_sz, -8, !dbg !244
  %4 = and i64 %3, -8, !dbg !244
  %5 = add i64 %4, 8, !dbg !244
  %scevgep = getelementptr i8, i8* %src, i64 %5, !dbg !244
  br label %while.body, !dbg !244

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %src_sz.addr.0512 = phi i64 [ %src_sz, %while.body.lr.ph ], [ %sub, %while.body ]
  %in.0511 = phi i64* [ %2, %while.body.lr.ph ], [ %add.ptr, %while.body ]
  %v3.0510 = phi i64 [ %xor3, %while.body.lr.ph ], [ %xor50, %while.body ]
  %v2.0509 = phi i64 [ %xor2, %while.body.lr.ph ], [ %or53, %while.body ]
  %v1.0508 = phi i64 [ %xor1, %while.body.lr.ph ], [ %xor46, %while.body ]
  %v0.0507 = phi i64 [ %xor, %while.body.lr.ph ], [ %xor54, %while.body ]
  %6 = load i64, i64* %in.0511, align 8, !dbg !245, !tbaa !246
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !90, metadata !128), !dbg !247
  %add.ptr = getelementptr i64, i64* %in.0511, i64 1, !dbg !248
  tail call void @llvm.dbg.value(metadata i64* %add.ptr, i64 0, metadata !80, metadata !128), !dbg !233
  %sub = add nsw i64 %src_sz.addr.0512, -8, !dbg !249
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !76, metadata !128), !dbg !221
  %xor4 = xor i64 %6, %v3.0510, !dbg !250
  tail call void @llvm.dbg.value(metadata i64 %xor4, i64 0, metadata !86, metadata !128), !dbg !241
  %add = add i64 %v1.0508, %v0.0507, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !83, metadata !128), !dbg !235
  %add5 = add i64 %xor4, %v2.0509, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add5, i64 0, metadata !85, metadata !128), !dbg !239
  %shl6 = shl i64 %v1.0508, 13, !dbg !251
  %shr = lshr i64 %v1.0508, 51, !dbg !251
  %or = or i64 %shl6, %shr, !dbg !251
  %xor7 = xor i64 %or, %add, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor7, i64 0, metadata !84, metadata !128), !dbg !237
  %shl8 = shl i64 %xor4, 16, !dbg !251
  %shr9 = lshr i64 %xor4, 48, !dbg !251
  %or10 = or i64 %shl8, %shr9, !dbg !251
  %xor11 = xor i64 %or10, %add5, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor11, i64 0, metadata !86, metadata !128), !dbg !241
  %shl12 = shl i64 %add, 32, !dbg !251
  %shr13 = lshr i64 %add, 32, !dbg !251
  %or14 = or i64 %shl12, %shr13, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %or14, i64 0, metadata !83, metadata !128), !dbg !235
  %add15 = add i64 %add5, %xor7, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add15, i64 0, metadata !85, metadata !128), !dbg !239
  %add16 = add i64 %xor11, %or14, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add16, i64 0, metadata !83, metadata !128), !dbg !235
  %shl17 = shl i64 %xor7, 17, !dbg !251
  %shr18 = lshr i64 %xor7, 47, !dbg !251
  %or19 = or i64 %shl17, %shr18, !dbg !251
  %xor20 = xor i64 %add15, %or19, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor20, i64 0, metadata !84, metadata !128), !dbg !237
  %shl21 = shl i64 %xor11, 21, !dbg !251
  %shr22 = lshr i64 %xor11, 43, !dbg !251
  %or23 = or i64 %shl21, %shr22, !dbg !251
  %xor24 = xor i64 %or23, %add16, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor24, i64 0, metadata !86, metadata !128), !dbg !241
  %shl25 = shl i64 %add15, 32, !dbg !251
  %shr26 = lshr i64 %add15, 32, !dbg !251
  %or27 = or i64 %shl25, %shr26, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %or27, i64 0, metadata !85, metadata !128), !dbg !239
  %add28 = add i64 %add16, %xor20, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add28, i64 0, metadata !83, metadata !128), !dbg !235
  %add29 = add i64 %xor24, %or27, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add29, i64 0, metadata !85, metadata !128), !dbg !239
  %shl30 = shl i64 %xor20, 13, !dbg !251
  %shr31 = lshr i64 %xor20, 51, !dbg !251
  %or32 = or i64 %shl30, %shr31, !dbg !251
  %xor33 = xor i64 %or32, %add28, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor33, i64 0, metadata !84, metadata !128), !dbg !237
  %shl34 = shl i64 %xor24, 16, !dbg !251
  %shr35 = lshr i64 %xor24, 48, !dbg !251
  %or36 = or i64 %shl34, %shr35, !dbg !251
  %xor37 = xor i64 %or36, %add29, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor37, i64 0, metadata !86, metadata !128), !dbg !241
  %shl38 = shl i64 %add28, 32, !dbg !251
  %shr39 = lshr i64 %add28, 32, !dbg !251
  %or40 = or i64 %shl38, %shr39, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %or40, i64 0, metadata !83, metadata !128), !dbg !235
  %add41 = add i64 %add29, %xor33, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add41, i64 0, metadata !85, metadata !128), !dbg !239
  %add42 = add i64 %xor37, %or40, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %add42, i64 0, metadata !83, metadata !128), !dbg !235
  %shl43 = shl i64 %xor33, 17, !dbg !251
  %shr44 = lshr i64 %xor33, 47, !dbg !251
  %or45 = or i64 %shl43, %shr44, !dbg !251
  %xor46 = xor i64 %or45, %add41, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor46, i64 0, metadata !84, metadata !128), !dbg !237
  %shl47 = shl i64 %xor37, 21, !dbg !251
  %shr48 = lshr i64 %xor37, 43, !dbg !251
  %or49 = or i64 %shl47, %shr48, !dbg !251
  %xor50 = xor i64 %or49, %add42, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %xor50, i64 0, metadata !86, metadata !128), !dbg !241
  %shl51 = shl i64 %add41, 32, !dbg !251
  %shr52 = lshr i64 %add41, 32, !dbg !251
  %or53 = or i64 %shl51, %shr52, !dbg !251
  tail call void @llvm.dbg.value(metadata i64 %or53, i64 0, metadata !85, metadata !128), !dbg !239
  %xor54 = xor i64 %add42, %6, !dbg !252
  tail call void @llvm.dbg.value(metadata i64 %xor54, i64 0, metadata !83, metadata !128), !dbg !235
  %cmp = icmp sgt i64 %sub, 7, !dbg !243
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge, !dbg !244

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %xor54.lcssa = phi i64 [ %xor54, %while.body ]
  %or53.lcssa = phi i64 [ %or53, %while.body ]
  %xor50.lcssa = phi i64 [ %xor50, %while.body ]
  %xor46.lcssa = phi i64 [ %xor46, %while.body ]
  %7 = sub i64 %3, %4, !dbg !244
  %scevgep518 = bitcast i8* %scevgep to i64*
  br label %while.end, !dbg !244

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry
  %src_sz.addr.0.lcssa = phi i64 [ %7, %while.cond.while.end_crit_edge ], [ %src_sz, %entry ]
  %in.0.lcssa = phi i64* [ %scevgep518, %while.cond.while.end_crit_edge ], [ %2, %entry ]
  %v3.0.lcssa = phi i64 [ %xor50.lcssa, %while.cond.while.end_crit_edge ], [ %xor3, %entry ]
  %v2.0.lcssa = phi i64 [ %or53.lcssa, %while.cond.while.end_crit_edge ], [ %xor2, %entry ]
  %v1.0.lcssa = phi i64 [ %xor46.lcssa, %while.cond.while.end_crit_edge ], [ %xor1, %entry ]
  %v0.0.lcssa = phi i64 [ %xor54.lcssa, %while.cond.while.end_crit_edge ], [ %xor, %entry ]
  tail call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !87, metadata !253), !dbg !242
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !88, metadata !128), !dbg !254
  %8 = bitcast i64* %in.0.lcssa to i8*, !dbg !255
  tail call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !89, metadata !128), !dbg !256
  switch i64 %src_sz.addr.0.lcssa, label %sw.epilog [
    i64 7, label %sw.bb
    i64 6, label %sw.bb.56
    i64 5, label %sw.bb.59
    i64 4, label %sw.bb.62
    i64 3, label %sw.bb.63
    i64 2, label %sw.bb.66
    i64 1, label %sw.bb.69
  ], !dbg !257

sw.bb:                                            ; preds = %while.end
  %arrayidx = getelementptr i8, i8* %8, i64 6, !dbg !258
  %9 = load i8, i8* %arrayidx, align 1, !dbg !258, !tbaa !260
  tail call void @llvm.dbg.value(metadata i8 %9, i64 0, metadata !87, metadata !261), !dbg !242
  br label %sw.bb.56, !dbg !262

sw.bb.56:                                         ; preds = %while.end, %sw.bb
  %t.sroa.12.0 = phi i8 [ 0, %while.end ], [ %9, %sw.bb ]
  %arrayidx57 = getelementptr i8, i8* %8, i64 5, !dbg !263
  %10 = load i8, i8* %arrayidx57, align 1, !dbg !263, !tbaa !260
  tail call void @llvm.dbg.value(metadata i8 %10, i64 0, metadata !87, metadata !264), !dbg !242
  br label %sw.bb.59, !dbg !265

sw.bb.59:                                         ; preds = %while.end, %sw.bb.56
  %t.sroa.12.1 = phi i8 [ 0, %while.end ], [ %t.sroa.12.0, %sw.bb.56 ]
  %t.sroa.11.0 = phi i8 [ 0, %while.end ], [ %10, %sw.bb.56 ]
  %arrayidx60 = getelementptr i8, i8* %8, i64 4, !dbg !266
  %11 = load i8, i8* %arrayidx60, align 1, !dbg !266, !tbaa !260
  tail call void @llvm.dbg.value(metadata i8 %11, i64 0, metadata !87, metadata !267), !dbg !242
  br label %sw.bb.62, !dbg !268

sw.bb.62:                                         ; preds = %while.end, %sw.bb.59
  %t.sroa.12.2 = phi i8 [ 0, %while.end ], [ %t.sroa.12.1, %sw.bb.59 ]
  %t.sroa.11.1 = phi i8 [ 0, %while.end ], [ %t.sroa.11.0, %sw.bb.59 ]
  %t.sroa.10484.0 = phi i8 [ 0, %while.end ], [ %11, %sw.bb.59 ]
  %t.sroa.0.0.copyload = load i8, i8* %8, align 1, !dbg !269
  tail call void @llvm.dbg.value(metadata i8 %t.sroa.0.0.copyload, i64 0, metadata !87, metadata !253), !dbg !242
  %t.sroa.8.0..sroa_raw_idx = getelementptr inbounds i8, i8* %8, i64 1, !dbg !269
  %t.sroa.8.0.copyload = load i8, i8* %t.sroa.8.0..sroa_raw_idx, align 1, !dbg !269
  tail call void @llvm.dbg.value(metadata i8 %t.sroa.8.0.copyload, i64 0, metadata !87, metadata !270), !dbg !242
  %t.sroa.9.0..sroa_raw_idx = getelementptr inbounds i8, i8* %8, i64 2, !dbg !269
  %t.sroa.9.0.copyload = load i8, i8* %t.sroa.9.0..sroa_raw_idx, align 1, !dbg !269
  tail call void @llvm.dbg.value(metadata i8 %t.sroa.9.0.copyload, i64 0, metadata !87, metadata !271), !dbg !242
  %t.sroa.10.0..sroa_raw_idx = getelementptr inbounds i8, i8* %8, i64 3, !dbg !269
  %t.sroa.10.0.copyload = load i8, i8* %t.sroa.10.0..sroa_raw_idx, align 1, !dbg !269
  tail call void @llvm.dbg.value(metadata i8 %t.sroa.10.0.copyload, i64 0, metadata !87, metadata !272), !dbg !242
  %phitmp = zext i8 %t.sroa.10.0.copyload to i64, !dbg !273
  %phitmp505 = shl nuw nsw i64 %phitmp, 24, !dbg !273
  br label %sw.epilog, !dbg !273

sw.bb.63:                                         ; preds = %while.end
  %arrayidx64 = getelementptr i8, i8* %8, i64 2, !dbg !274
  %12 = load i8, i8* %arrayidx64, align 1, !dbg !274, !tbaa !260
  tail call void @llvm.dbg.value(metadata i8 %12, i64 0, metadata !87, metadata !271), !dbg !242
  br label %sw.bb.66, !dbg !275

sw.bb.66:                                         ; preds = %while.end, %sw.bb.63
  %t.sroa.9.0 = phi i8 [ 0, %while.end ], [ %12, %sw.bb.63 ]
  %arrayidx67 = getelementptr i8, i8* %8, i64 1, !dbg !276
  %13 = load i8, i8* %arrayidx67, align 1, !dbg !276, !tbaa !260
  tail call void @llvm.dbg.value(metadata i8 %13, i64 0, metadata !87, metadata !270), !dbg !242
  br label %sw.bb.69, !dbg !277

sw.bb.69:                                         ; preds = %while.end, %sw.bb.66
  %t.sroa.9.1 = phi i8 [ 0, %while.end ], [ %t.sroa.9.0, %sw.bb.66 ]
  %t.sroa.8.0 = phi i8 [ 0, %while.end ], [ %13, %sw.bb.66 ]
  %14 = load i8, i8* %8, align 1, !dbg !278, !tbaa !260
  tail call void @llvm.dbg.value(metadata i8 %14, i64 0, metadata !87, metadata !253), !dbg !242
  br label %sw.epilog, !dbg !279

sw.epilog:                                        ; preds = %sw.bb.69, %while.end, %sw.bb.62
  %t.sroa.12.3 = phi i8 [ 0, %while.end ], [ 0, %sw.bb.69 ], [ %t.sroa.12.2, %sw.bb.62 ]
  %t.sroa.11.2 = phi i8 [ 0, %while.end ], [ 0, %sw.bb.69 ], [ %t.sroa.11.1, %sw.bb.62 ]
  %t.sroa.10484.1 = phi i8 [ 0, %while.end ], [ 0, %sw.bb.69 ], [ %t.sroa.10484.0, %sw.bb.62 ]
  %t.sroa.10.0 = phi i64 [ 0, %while.end ], [ 0, %sw.bb.69 ], [ %phitmp505, %sw.bb.62 ]
  %t.sroa.9.2 = phi i8 [ 0, %while.end ], [ %t.sroa.9.1, %sw.bb.69 ], [ %t.sroa.9.0.copyload, %sw.bb.62 ]
  %t.sroa.8.1 = phi i8 [ 0, %while.end ], [ %t.sroa.8.0, %sw.bb.69 ], [ %t.sroa.8.0.copyload, %sw.bb.62 ]
  %t.sroa.0.0 = phi i8 [ 0, %while.end ], [ %14, %sw.bb.69 ], [ %t.sroa.0.0.copyload, %sw.bb.62 ]
  %t.sroa.12.0.insert.ext = zext i8 %t.sroa.12.3 to i64, !dbg !280
  %t.sroa.12.0.insert.shift = shl nuw nsw i64 %t.sroa.12.0.insert.ext, 48, !dbg !280
  %t.sroa.11.0.insert.ext = zext i8 %t.sroa.11.2 to i64, !dbg !280
  %t.sroa.11.0.insert.shift = shl nuw nsw i64 %t.sroa.11.0.insert.ext, 40, !dbg !280
  %t.sroa.10484.0.insert.ext = zext i8 %t.sroa.10484.1 to i64, !dbg !280
  %t.sroa.10484.0.insert.shift = shl nuw nsw i64 %t.sroa.10484.0.insert.ext, 32, !dbg !280
  %t.sroa.9.0.insert.ext = zext i8 %t.sroa.9.2 to i64, !dbg !280
  %t.sroa.9.0.insert.shift = shl nuw nsw i64 %t.sroa.9.0.insert.ext, 16, !dbg !280
  %t.sroa.8.0.insert.ext = zext i8 %t.sroa.8.1 to i64, !dbg !280
  %t.sroa.8.0.insert.shift = shl nuw nsw i64 %t.sroa.8.0.insert.ext, 8, !dbg !280
  %t.sroa.0.0.insert.ext = zext i8 %t.sroa.0.0 to i64, !dbg !280
  %t.sroa.11.0.insert.insert = or i64 %t.sroa.12.0.insert.shift, %shl, !dbg !280
  %t.sroa.10484.0.insert.insert = or i64 %t.sroa.11.0.insert.insert, %t.sroa.11.0.insert.shift, !dbg !280
  %t.sroa.10.0.insert.insert = or i64 %t.sroa.10484.0.insert.insert, %t.sroa.10.0, !dbg !280
  %t.sroa.9.0.insert.insert = or i64 %t.sroa.10.0.insert.insert, %t.sroa.10484.0.insert.shift, !dbg !280
  %t.sroa.0.0.insert.mask = or i64 %t.sroa.9.0.insert.insert, %t.sroa.9.0.insert.shift, !dbg !280
  %t.sroa.0.0.insert.insert = or i64 %t.sroa.0.0.insert.mask, %t.sroa.8.0.insert.shift, !dbg !280
  %or72 = or i64 %t.sroa.0.0.insert.insert, %t.sroa.0.0.insert.ext, !dbg !280
  tail call void @llvm.dbg.value(metadata i64 %or72, i64 0, metadata !79, metadata !128), !dbg !231
  %xor73 = xor i64 %or72, %v3.0.lcssa, !dbg !281
  tail call void @llvm.dbg.value(metadata i64 %xor73, i64 0, metadata !86, metadata !128), !dbg !241
  %add74 = add i64 %v1.0.lcssa, %v0.0.lcssa, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add74, i64 0, metadata !83, metadata !128), !dbg !235
  %add75 = add i64 %xor73, %v2.0.lcssa, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add75, i64 0, metadata !85, metadata !128), !dbg !239
  %shl76 = shl i64 %v1.0.lcssa, 13, !dbg !282
  %shr77 = lshr i64 %v1.0.lcssa, 51, !dbg !282
  %or78 = or i64 %shl76, %shr77, !dbg !282
  %xor79 = xor i64 %or78, %add74, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor79, i64 0, metadata !84, metadata !128), !dbg !237
  %shl80 = shl i64 %xor73, 16, !dbg !282
  %shr81 = lshr i64 %xor73, 48, !dbg !282
  %or82 = or i64 %shl80, %shr81, !dbg !282
  %xor83 = xor i64 %or82, %add75, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor83, i64 0, metadata !86, metadata !128), !dbg !241
  %shl84 = shl i64 %add74, 32, !dbg !282
  %shr85 = lshr i64 %add74, 32, !dbg !282
  %or86 = or i64 %shl84, %shr85, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %or86, i64 0, metadata !83, metadata !128), !dbg !235
  %add87 = add i64 %add75, %xor79, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add87, i64 0, metadata !85, metadata !128), !dbg !239
  %add88 = add i64 %xor83, %or86, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add88, i64 0, metadata !83, metadata !128), !dbg !235
  %shl89 = shl i64 %xor79, 17, !dbg !282
  %shr90 = lshr i64 %xor79, 47, !dbg !282
  %or91 = or i64 %shl89, %shr90, !dbg !282
  %xor92 = xor i64 %add87, %or91, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor92, i64 0, metadata !84, metadata !128), !dbg !237
  %shl93 = shl i64 %xor83, 21, !dbg !282
  %shr94 = lshr i64 %xor83, 43, !dbg !282
  %or95 = or i64 %shl93, %shr94, !dbg !282
  %xor96 = xor i64 %or95, %add88, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor96, i64 0, metadata !86, metadata !128), !dbg !241
  %shl97 = shl i64 %add87, 32, !dbg !282
  %shr98 = lshr i64 %add87, 32, !dbg !282
  %or99 = or i64 %shl97, %shr98, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %or99, i64 0, metadata !85, metadata !128), !dbg !239
  %add100 = add i64 %add88, %xor92, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add100, i64 0, metadata !83, metadata !128), !dbg !235
  %add101 = add i64 %xor96, %or99, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add101, i64 0, metadata !85, metadata !128), !dbg !239
  %shl102 = shl i64 %xor92, 13, !dbg !282
  %shr103 = lshr i64 %xor92, 51, !dbg !282
  %or104 = or i64 %shl102, %shr103, !dbg !282
  %xor105 = xor i64 %or104, %add100, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor105, i64 0, metadata !84, metadata !128), !dbg !237
  %shl106 = shl i64 %xor96, 16, !dbg !282
  %shr107 = lshr i64 %xor96, 48, !dbg !282
  %or108 = or i64 %shl106, %shr107, !dbg !282
  %xor109 = xor i64 %or108, %add101, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor109, i64 0, metadata !86, metadata !128), !dbg !241
  %shl110 = shl i64 %add100, 32, !dbg !282
  %shr111 = lshr i64 %add100, 32, !dbg !282
  %or112 = or i64 %shl110, %shr111, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %or112, i64 0, metadata !83, metadata !128), !dbg !235
  %add113 = add i64 %add101, %xor105, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add113, i64 0, metadata !85, metadata !128), !dbg !239
  %add114 = add i64 %xor109, %or112, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %add114, i64 0, metadata !83, metadata !128), !dbg !235
  %shl115 = shl i64 %xor105, 17, !dbg !282
  %shr116 = lshr i64 %xor105, 47, !dbg !282
  %or117 = or i64 %shl115, %shr116, !dbg !282
  %xor118 = xor i64 %or117, %add113, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor118, i64 0, metadata !84, metadata !128), !dbg !237
  %shl119 = shl i64 %xor109, 21, !dbg !282
  %shr120 = lshr i64 %xor109, 43, !dbg !282
  %or121 = or i64 %shl119, %shr120, !dbg !282
  %xor122 = xor i64 %or121, %add114, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %xor122, i64 0, metadata !86, metadata !128), !dbg !241
  %shl123 = shl i64 %add113, 32, !dbg !282
  %shr124 = lshr i64 %add113, 32, !dbg !282
  %or125 = or i64 %shl123, %shr124, !dbg !282
  tail call void @llvm.dbg.value(metadata i64 %or125, i64 0, metadata !85, metadata !128), !dbg !239
  %xor126 = xor i64 %add114, %or72, !dbg !283
  tail call void @llvm.dbg.value(metadata i64 %xor126, i64 0, metadata !83, metadata !128), !dbg !235
  %xor127 = xor i64 %or125, 255, !dbg !284
  tail call void @llvm.dbg.value(metadata i64 %xor127, i64 0, metadata !85, metadata !128), !dbg !239
  %add128 = add i64 %xor126, %xor118, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add128, i64 0, metadata !83, metadata !128), !dbg !235
  %add129 = add i64 %xor122, %xor127, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add129, i64 0, metadata !85, metadata !128), !dbg !239
  %shl130 = shl i64 %xor118, 13, !dbg !285
  %shr131 = lshr i64 %xor118, 51, !dbg !285
  %or132 = or i64 %shl130, %shr131, !dbg !285
  %xor133 = xor i64 %add128, %or132, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor133, i64 0, metadata !84, metadata !128), !dbg !237
  %shl134 = shl i64 %xor122, 16, !dbg !285
  %shr135 = lshr i64 %xor122, 48, !dbg !285
  %or136 = or i64 %shl134, %shr135, !dbg !285
  %xor137 = xor i64 %or136, %add129, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor137, i64 0, metadata !86, metadata !128), !dbg !241
  %shl138 = shl i64 %add128, 32, !dbg !285
  %shr139 = lshr i64 %add128, 32, !dbg !285
  %or140 = or i64 %shl138, %shr139, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %or140, i64 0, metadata !83, metadata !128), !dbg !235
  %add141 = add i64 %add129, %xor133, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add141, i64 0, metadata !85, metadata !128), !dbg !239
  %add142 = add i64 %xor137, %or140, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add142, i64 0, metadata !83, metadata !128), !dbg !235
  %shl143 = shl i64 %xor133, 17, !dbg !285
  %shr144 = lshr i64 %xor133, 47, !dbg !285
  %or145 = or i64 %shl143, %shr144, !dbg !285
  %xor146 = xor i64 %or145, %add141, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor146, i64 0, metadata !84, metadata !128), !dbg !237
  %shl147 = shl i64 %xor137, 21, !dbg !285
  %shr148 = lshr i64 %xor137, 43, !dbg !285
  %or149 = or i64 %shl147, %shr148, !dbg !285
  %xor150 = xor i64 %or149, %add142, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor150, i64 0, metadata !86, metadata !128), !dbg !241
  %shl151 = shl i64 %add141, 32, !dbg !285
  %shr152 = lshr i64 %add141, 32, !dbg !285
  %or153 = or i64 %shl151, %shr152, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %or153, i64 0, metadata !85, metadata !128), !dbg !239
  %add154 = add i64 %add142, %xor146, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add154, i64 0, metadata !83, metadata !128), !dbg !235
  %add155 = add i64 %xor150, %or153, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add155, i64 0, metadata !85, metadata !128), !dbg !239
  %shl156 = shl i64 %xor146, 13, !dbg !285
  %shr157 = lshr i64 %xor146, 51, !dbg !285
  %or158 = or i64 %shl156, %shr157, !dbg !285
  %xor159 = xor i64 %or158, %add154, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor159, i64 0, metadata !84, metadata !128), !dbg !237
  %shl160 = shl i64 %xor150, 16, !dbg !285
  %shr161 = lshr i64 %xor150, 48, !dbg !285
  %or162 = or i64 %shl160, %shr161, !dbg !285
  %xor163 = xor i64 %or162, %add155, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor163, i64 0, metadata !86, metadata !128), !dbg !241
  %shl164 = shl i64 %add154, 32, !dbg !285
  %shr165 = lshr i64 %add154, 32, !dbg !285
  %or166 = or i64 %shl164, %shr165, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %or166, i64 0, metadata !83, metadata !128), !dbg !235
  %add167 = add i64 %add155, %xor159, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add167, i64 0, metadata !85, metadata !128), !dbg !239
  %add168 = add i64 %xor163, %or166, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %add168, i64 0, metadata !83, metadata !128), !dbg !235
  %shl169 = shl i64 %xor159, 17, !dbg !285
  %shr170 = lshr i64 %xor159, 47, !dbg !285
  %or171 = or i64 %shl169, %shr170, !dbg !285
  %xor172 = xor i64 %or171, %add167, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor172, i64 0, metadata !84, metadata !128), !dbg !237
  %shl173 = shl i64 %xor163, 21, !dbg !285
  %shr174 = lshr i64 %xor163, 43, !dbg !285
  %or175 = or i64 %shl173, %shr174, !dbg !285
  %xor176 = xor i64 %or175, %add168, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %xor176, i64 0, metadata !86, metadata !128), !dbg !241
  %shl177 = shl i64 %add167, 32, !dbg !285
  %shr178 = lshr i64 %add167, 32, !dbg !285
  %or179 = or i64 %shl177, %shr178, !dbg !285
  tail call void @llvm.dbg.value(metadata i64 %or179, i64 0, metadata !85, metadata !128), !dbg !239
  %add180 = add i64 %add168, %xor172, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %add180, i64 0, metadata !83, metadata !128), !dbg !235
  %add181 = add i64 %xor176, %or179, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %add181, i64 0, metadata !85, metadata !128), !dbg !239
  %shl182 = shl i64 %xor172, 13, !dbg !286
  %shr183 = lshr i64 %xor172, 51, !dbg !286
  %or184 = or i64 %shl182, %shr183, !dbg !286
  %xor185 = xor i64 %or184, %add180, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %xor185, i64 0, metadata !84, metadata !128), !dbg !237
  %shl186 = shl i64 %xor176, 16, !dbg !286
  %shr187 = lshr i64 %xor176, 48, !dbg !286
  %or188 = or i64 %shl186, %shr187, !dbg !286
  %xor189 = xor i64 %or188, %add181, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %xor189, i64 0, metadata !86, metadata !128), !dbg !241
  %shl190 = shl i64 %add180, 32, !dbg !286
  %shr191 = lshr i64 %add180, 32, !dbg !286
  %or192 = or i64 %shl190, %shr191, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %or192, i64 0, metadata !83, metadata !128), !dbg !235
  %add193 = add i64 %add181, %xor185, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %add193, i64 0, metadata !85, metadata !128), !dbg !239
  %add194 = add i64 %xor189, %or192, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %add194, i64 0, metadata !83, metadata !128), !dbg !235
  %shl195 = shl i64 %xor185, 17, !dbg !286
  %shr196 = lshr i64 %xor185, 47, !dbg !286
  %or197 = or i64 %shl195, %shr196, !dbg !286
  %xor198 = xor i64 %or197, %add193, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %xor198, i64 0, metadata !84, metadata !128), !dbg !237
  %shl199 = shl i64 %xor189, 21, !dbg !286
  %shr200 = lshr i64 %xor189, 43, !dbg !286
  %or201 = or i64 %shl199, %shr200, !dbg !286
  %xor202 = xor i64 %or201, %add194, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %xor202, i64 0, metadata !86, metadata !128), !dbg !241
  %shl203 = shl i64 %add193, 32, !dbg !286
  %shr204 = lshr i64 %add193, 32, !dbg !286
  %or205 = or i64 %shl203, %shr204, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %or205, i64 0, metadata !85, metadata !128), !dbg !239
  %add206 = add i64 %add194, %xor198, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %add206, i64 0, metadata !83, metadata !128), !dbg !235
  %add207 = add i64 %xor202, %or205, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %add207, i64 0, metadata !85, metadata !128), !dbg !239
  %shl208 = shl i64 %xor198, 13, !dbg !286
  %shr209 = lshr i64 %xor198, 51, !dbg !286
  %or210 = or i64 %shl208, %shr209, !dbg !286
  %xor211 = xor i64 %or210, %add206, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %xor211, i64 0, metadata !84, metadata !128), !dbg !237
  %shl212 = shl i64 %xor202, 16, !dbg !286
  %shr213 = lshr i64 %xor202, 48, !dbg !286
  %or214 = or i64 %shl212, %shr213, !dbg !286
  %xor215 = xor i64 %or214, %add207, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %xor215, i64 0, metadata !86, metadata !128), !dbg !241
  %add219 = add i64 %add207, %xor211, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %add219, i64 0, metadata !85, metadata !128), !dbg !239
  %shl221 = shl i64 %xor211, 17, !dbg !286
  %shr222 = lshr i64 %xor211, 47, !dbg !286
  %or223 = or i64 %shl221, %shr222, !dbg !286
  %xor224 = xor i64 %or223, %add219, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %xor224, i64 0, metadata !84, metadata !128), !dbg !237
  %shl225 = shl i64 %xor215, 21, !dbg !286
  %shr226 = lshr i64 %xor215, 43, !dbg !286
  %or227 = or i64 %shl225, %shr226, !dbg !286
  %shl229 = shl i64 %add219, 32, !dbg !286
  %shr230 = lshr i64 %add219, 32, !dbg !286
  %or231 = or i64 %shl229, %shr230, !dbg !286
  tail call void @llvm.dbg.value(metadata i64 %or231, i64 0, metadata !85, metadata !128), !dbg !239
  %xor232 = xor i64 %xor224, %or231, !dbg !287
  %xor234 = xor i64 %xor232, %or227, !dbg !288
  ret i64 %xor234, !dbg !289
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!125, !126}
!llvm.ident = !{!127}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !22, globals: !92)
!1 = !DIFile(filename: "Python/pyhash.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !7, !9, !16, !18, !19}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 62, baseType: !6)
!5 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_uhash_t", file: !8, line: 189, baseType: !4)
!8 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !8, line: 186, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !8, line: 177, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !12, line: 102, baseType: !13)
!12 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !14, line: 181, baseType: !15)
!14 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !17, line: 55, baseType: !6)
!17 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PY_UINT8_T", file: !1, line: 326, baseType: !21)
!21 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!23, !35, !43, !52, !55, !73}
!23 = !DISubprogram(name: "_Py_HashDouble", scope: !1, file: !1, line: 86, type: !24, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, function: i64 (double)* @_Py_HashDouble, variables: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{!9, !26}
!26 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!27 = !{!28, !29, !31, !32, !33, !34}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 1, scope: !23, file: !1, line: 86, type: !26)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "e", scope: !23, file: !1, line: 88, type: !30)
!30 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sign", scope: !23, file: !1, line: 88, type: !30)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !23, file: !1, line: 89, type: !26)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !23, file: !1, line: 90, type: !7)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !23, file: !1, line: 90, type: !7)
!35 = !DISubprogram(name: "_Py_HashPointer", scope: !1, file: !1, line: 132, type: !36, isLocal: false, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @_Py_HashPointer, variables: !39)
!36 = !DISubroutineType(types: !37)
!37 = !{!9, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 1, scope: !35, file: !1, line: 132, type: !38)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !35, file: !1, line: 134, type: !9)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !35, file: !1, line: 135, type: !4)
!43 = !DISubprogram(name: "_Py_HashBytes", scope: !1, file: !1, line: 146, type: !44, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*, i64)* @_Py_HashBytes, variables: !48)
!44 = !DISubroutineType(types: !45)
!45 = !{!9, !46, !10}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!48 = !{!49, !50, !51}
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !43, file: !1, line: 146, type: !46)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len", arg: 2, scope: !43, file: !1, line: 146, type: !10)
!51 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !43, file: !1, line: 148, type: !9)
!52 = !DISubprogram(name: "_PyHash_Fini", scope: !1, file: !1, line: 194, type: !53, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyHash_Fini, variables: !2)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DISubprogram(name: "PyHash_GetFuncDef", scope: !1, file: !1, line: 213, type: !56, isLocal: false, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PyHash_FuncDef* ()* @PyHash_GetFuncDef, variables: !2)
!56 = !DISubroutineType(types: !57)
!57 = !{!58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyHash_FuncDef", file: !60, line: 94, baseType: !61)
!60 = !DIFile(filename: "Include/pyhash.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!61 = !DICompositeType(tag: DW_TAG_structure_type, file: !60, line: 89, size: 192, align: 64, elements: !62)
!62 = !{!63, !66, !70, !72}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !61, file: !60, line: 90, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !61, file: !60, line: 91, baseType: !67, size: 64, align: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "hash_bits", scope: !61, file: !60, line: 92, baseType: !71, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "seed_bits", scope: !61, file: !60, line: 93, baseType: !71, size: 32, align: 32, offset: 160)
!73 = !DISubprogram(name: "siphash24", scope: !1, file: !1, line: 371, type: !44, isLocal: true, isDefinition: true, scopeLine: 371, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*, i64)* @siphash24, variables: !74)
!74 = !{!75, !76, !77, !78, !79, !80, !83, !84, !85, !86, !87, !88, !89, !90}
!75 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 1, scope: !73, file: !1, line: 371, type: !46)
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src_sz", arg: 2, scope: !73, file: !1, line: 371, type: !10)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k0", scope: !73, file: !1, line: 372, type: !16)
!78 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k1", scope: !73, file: !1, line: 373, type: !16)
!79 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !73, file: !1, line: 374, type: !16)
!80 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !73, file: !1, line: 375, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v0", scope: !73, file: !1, line: 377, type: !16)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v1", scope: !73, file: !1, line: 378, type: !16)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v2", scope: !73, file: !1, line: 379, type: !16)
!86 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v3", scope: !73, file: !1, line: 380, type: !16)
!87 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !73, file: !1, line: 382, type: !16)
!88 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pt", scope: !73, file: !1, line: 383, type: !19)
!89 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !73, file: !1, line: 384, type: !19)
!90 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mi", scope: !91, file: !1, line: 387, type: !16)
!91 = distinct !DILexicalBlock(scope: !73, file: !1, line: 386, column: 25)
!92 = !{!93, !124}
!93 = !DIGlobalVariable(name: "_Py_HashSecret", scope: !0, file: !1, line: 20, type: !94, isLocal: false, isDefinition: true, variable: %union._Py_HashSecret_t* @_Py_HashSecret)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_HashSecret_t", file: !60, line: 78, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_union_type, file: !60, line: 54, size: 192, align: 64, elements: !96)
!96 = !{!97, !101, !106, !111, !119}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "uc", scope: !95, file: !60, line: 56, baseType: !98, size: 192, align: 8)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, align: 8, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 24)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "fnv", scope: !95, file: !60, line: 61, baseType: !102, size: 128, align: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !60, line: 58, size: 128, align: 64, elements: !103)
!103 = !{!104, !105}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !102, file: !60, line: 59, baseType: !9, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !102, file: !60, line: 60, baseType: !9, size: 64, align: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "siphash", scope: !95, file: !60, line: 67, baseType: !107, size: 128, align: 64)
!107 = !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !60, line: 64, size: 128, align: 64, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "k0", scope: !107, file: !60, line: 65, baseType: !16, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "k1", scope: !107, file: !60, line: 66, baseType: !16, size: 64, align: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "djbx33a", scope: !95, file: !60, line: 73, baseType: !112, size: 192, align: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !60, line: 70, size: 192, align: 64, elements: !113)
!113 = !{!114, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !112, file: !60, line: 71, baseType: !115, size: 128, align: 8)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, align: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !112, file: !60, line: 72, baseType: !9, size: 64, align: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "expat", scope: !95, file: !60, line: 77, baseType: !120, size: 192, align: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, scope: !95, file: !60, line: 74, size: 192, align: 64, elements: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !120, file: !60, line: 75, baseType: !115, size: 128, align: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "hashsalt", scope: !120, file: !60, line: 76, baseType: !9, size: 64, align: 64, offset: 128)
!124 = !DIGlobalVariable(name: "PyHash_Func", scope: !0, file: !1, line: 421, type: !59, isLocal: true, isDefinition: true, variable: %struct.PyHash_FuncDef* @PyHash_Func)
!125 = !{i32 2, !"Dwarf Version", i32 4}
!126 = !{i32 2, !"Debug Info Version", i32 3}
!127 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!128 = !DIExpression()
!129 = !DILocation(line: 86, column: 23, scope: !23)
!130 = !DILocation(line: 88, column: 5, scope: !23)
!131 = !DILocation(line: 92, column: 10, scope: !132)
!132 = !DILexicalBlockFile(scope: !133, file: !1, discriminator: 3)
!133 = distinct !DILexicalBlock(scope: !23, file: !1, line: 92, column: 9)
!134 = !DILocation(line: 93, column: 13, scope: !135)
!135 = !DILexicalBlockFile(scope: !136, file: !1, discriminator: 3)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 93, column: 13)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 92, column: 27)
!138 = !DILocation(line: 94, column: 22, scope: !136)
!139 = !DILocation(line: 94, column: 20, scope: !136)
!140 = !DILocation(line: 94, column: 13, scope: !136)
!141 = !DILocation(line: 88, column: 9, scope: !23)
!142 = !DILocation(line: 99, column: 9, scope: !23)
!143 = !DILocation(line: 89, column: 12, scope: !23)
!144 = !DILocation(line: 88, column: 12, scope: !23)
!145 = !DILocation(line: 102, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !23, file: !1, line: 102, column: 9)
!147 = !DILocation(line: 104, column: 13, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !1, line: 102, column: 16)
!149 = !DILocation(line: 102, column: 9, scope: !23)
!150 = !DILocation(line: 110, column: 5, scope: !23)
!151 = !DILocation(line: 113, column: 11, scope: !152)
!152 = distinct !DILexicalBlock(scope: !23, file: !1, line: 110, column: 15)
!153 = !{!154, !154, i64 0}
!154 = !{!"int", !155, i64 0}
!155 = !{!"omnipotent char", !156, i64 0}
!156 = !{!"Simple C/C++ TBAA"}
!157 = !DILocation(line: 111, column: 17, scope: !152)
!158 = !DILocation(line: 111, column: 24, scope: !152)
!159 = !DILocation(line: 111, column: 47, scope: !152)
!160 = !DILocation(line: 111, column: 43, scope: !152)
!161 = !DILocation(line: 90, column: 16, scope: !23)
!162 = !DILocation(line: 112, column: 11, scope: !152)
!163 = !DILocation(line: 114, column: 13, scope: !152)
!164 = !DILocation(line: 90, column: 19, scope: !23)
!165 = !DILocation(line: 115, column: 14, scope: !152)
!166 = !DILocation(line: 115, column: 11, scope: !152)
!167 = !DILocation(line: 116, column: 11, scope: !152)
!168 = !DILocation(line: 117, column: 15, scope: !169)
!169 = distinct !DILexicalBlock(scope: !152, file: !1, line: 117, column: 13)
!170 = !DILocation(line: 118, column: 15, scope: !169)
!171 = !DILocation(line: 117, column: 13, scope: !152)
!172 = !DILocation(line: 122, column: 9, scope: !23)
!173 = !DILocation(line: 122, column: 11, scope: !23)
!174 = !DILocation(line: 122, column: 20, scope: !23)
!175 = !DILocation(line: 122, column: 56, scope: !23)
!176 = !DILocation(line: 122, column: 60, scope: !23)
!177 = !DILocation(line: 122, column: 51, scope: !23)
!178 = !DILocation(line: 122, column: 7, scope: !179)
!179 = !DILexicalBlockFile(scope: !180, file: !1, discriminator: 4)
!180 = !DILexicalBlockFile(scope: !23, file: !1, discriminator: 3)
!181 = !DILocation(line: 123, column: 13, scope: !23)
!182 = !DILocation(line: 123, column: 19, scope: !23)
!183 = !DILocation(line: 123, column: 59, scope: !23)
!184 = !DILocation(line: 123, column: 42, scope: !23)
!185 = !DILocation(line: 123, column: 38, scope: !23)
!186 = !DILocation(line: 125, column: 11, scope: !23)
!187 = !DILocation(line: 126, column: 11, scope: !188)
!188 = distinct !DILexicalBlock(scope: !23, file: !1, line: 126, column: 9)
!189 = !DILocation(line: 126, column: 9, scope: !23)
!190 = !DILocation(line: 128, column: 5, scope: !23)
!191 = !DILocation(line: 129, column: 1, scope: !23)
!192 = !DILocation(line: 132, column: 23, scope: !35)
!193 = !DILocation(line: 135, column: 16, scope: !35)
!194 = !DILocation(line: 135, column: 12, scope: !35)
!195 = !DILocation(line: 138, column: 12, scope: !35)
!196 = !DILocation(line: 138, column: 23, scope: !35)
!197 = !DILocation(line: 138, column: 18, scope: !35)
!198 = !DILocation(line: 134, column: 15, scope: !35)
!199 = !DILocation(line: 140, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !35, file: !1, line: 140, column: 9)
!201 = !DILocation(line: 140, column: 9, scope: !35)
!202 = !DILocation(line: 142, column: 5, scope: !35)
!203 = !DILocation(line: 146, column: 27, scope: !43)
!204 = !DILocation(line: 146, column: 43, scope: !43)
!205 = !DILocation(line: 153, column: 13, scope: !206)
!206 = distinct !DILexicalBlock(scope: !43, file: !1, line: 153, column: 9)
!207 = !DILocation(line: 153, column: 9, scope: !43)
!208 = !DILocation(line: 186, column: 25, scope: !43)
!209 = !{!210, !211, i64 0}
!210 = !{!"", !211, i64 0, !211, i64 8, !154, i64 16, !154, i64 20}
!211 = !{!"any pointer", !155, i64 0}
!212 = !DILocation(line: 186, column: 13, scope: !43)
!213 = !DILocation(line: 148, column: 15, scope: !43)
!214 = !DILocation(line: 188, column: 11, scope: !215)
!215 = distinct !DILexicalBlock(scope: !43, file: !1, line: 188, column: 9)
!216 = !DILocation(line: 189, column: 9, scope: !215)
!217 = !DILocation(line: 191, column: 1, scope: !43)
!218 = !DILocation(line: 210, column: 1, scope: !52)
!219 = !DILocation(line: 215, column: 5, scope: !55)
!220 = !DILocation(line: 371, column: 23, scope: !73)
!221 = !DILocation(line: 371, column: 39, scope: !73)
!222 = !DILocation(line: 372, column: 22, scope: !73)
!223 = !{!224, !225, i64 0}
!224 = !{!"", !225, i64 0, !225, i64 8}
!225 = !{!"long", !155, i64 0}
!226 = !DILocation(line: 372, column: 17, scope: !73)
!227 = !DILocation(line: 373, column: 22, scope: !73)
!228 = !{!224, !225, i64 8}
!229 = !DILocation(line: 373, column: 17, scope: !73)
!230 = !DILocation(line: 374, column: 41, scope: !73)
!231 = !DILocation(line: 374, column: 17, scope: !73)
!232 = !DILocation(line: 375, column: 29, scope: !73)
!233 = !DILocation(line: 375, column: 24, scope: !73)
!234 = !DILocation(line: 377, column: 25, scope: !73)
!235 = !DILocation(line: 377, column: 17, scope: !73)
!236 = !DILocation(line: 378, column: 25, scope: !73)
!237 = !DILocation(line: 378, column: 17, scope: !73)
!238 = !DILocation(line: 379, column: 25, scope: !73)
!239 = !DILocation(line: 379, column: 17, scope: !73)
!240 = !DILocation(line: 380, column: 25, scope: !73)
!241 = !DILocation(line: 380, column: 17, scope: !73)
!242 = !DILocation(line: 382, column: 17, scope: !73)
!243 = !DILocation(line: 386, column: 19, scope: !73)
!244 = !DILocation(line: 386, column: 5, scope: !73)
!245 = !DILocation(line: 387, column: 26, scope: !91)
!246 = !{!225, !225, i64 0}
!247 = !DILocation(line: 387, column: 21, scope: !91)
!248 = !DILocation(line: 388, column: 12, scope: !91)
!249 = !DILocation(line: 389, column: 16, scope: !91)
!250 = !DILocation(line: 390, column: 12, scope: !91)
!251 = !DILocation(line: 391, column: 9, scope: !91)
!252 = !DILocation(line: 392, column: 12, scope: !91)
!253 = !DIExpression(DW_OP_bit_piece, 0, 8)
!254 = !DILocation(line: 383, column: 17, scope: !73)
!255 = !DILocation(line: 397, column: 9, scope: !73)
!256 = !DILocation(line: 384, column: 17, scope: !73)
!257 = !DILocation(line: 398, column: 5, scope: !73)
!258 = !DILocation(line: 399, column: 25, scope: !259)
!259 = distinct !DILexicalBlock(scope: !73, file: !1, line: 398, column: 21)
!260 = !{!155, !155, i64 0}
!261 = !DIExpression(DW_OP_bit_piece, 48, 8)
!262 = !DILocation(line: 399, column: 17, scope: !259)
!263 = !DILocation(line: 400, column: 25, scope: !259)
!264 = !DIExpression(DW_OP_bit_piece, 40, 8)
!265 = !DILocation(line: 400, column: 17, scope: !259)
!266 = !DILocation(line: 401, column: 25, scope: !259)
!267 = !DIExpression(DW_OP_bit_piece, 32, 8)
!268 = !DILocation(line: 401, column: 17, scope: !259)
!269 = !DILocation(line: 402, column: 17, scope: !259)
!270 = !DIExpression(DW_OP_bit_piece, 8, 8)
!271 = !DIExpression(DW_OP_bit_piece, 16, 8)
!272 = !DIExpression(DW_OP_bit_piece, 24, 8)
!273 = !DILocation(line: 402, column: 56, scope: !259)
!274 = !DILocation(line: 403, column: 25, scope: !259)
!275 = !DILocation(line: 403, column: 17, scope: !259)
!276 = !DILocation(line: 404, column: 25, scope: !259)
!277 = !DILocation(line: 404, column: 17, scope: !259)
!278 = !DILocation(line: 405, column: 25, scope: !259)
!279 = !DILocation(line: 406, column: 5, scope: !259)
!280 = !DILocation(line: 407, column: 7, scope: !73)
!281 = !DILocation(line: 409, column: 8, scope: !73)
!282 = !DILocation(line: 410, column: 5, scope: !73)
!283 = !DILocation(line: 411, column: 8, scope: !73)
!284 = !DILocation(line: 412, column: 8, scope: !73)
!285 = !DILocation(line: 413, column: 5, scope: !73)
!286 = !DILocation(line: 414, column: 5, scope: !73)
!287 = !DILocation(line: 417, column: 13, scope: !73)
!288 = !DILocation(line: 417, column: 19, scope: !73)
!289 = !DILocation(line: 418, column: 5, scope: !73)
