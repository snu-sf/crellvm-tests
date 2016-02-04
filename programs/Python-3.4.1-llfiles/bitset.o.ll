; ModuleID = 'bitset.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"no mem for bitset\00", align 1

; Function Attrs: nounwind uwtable
define i8* @_Py_newbitset(i32 %nbits) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %nbits, i64 0, metadata !15, metadata !50), !dbg !51
  %conv = sext i32 %nbits to i64, !dbg !52
  %sub = add nsw i64 %conv, 7, !dbg !52
  %div = lshr i64 %sub, 3, !dbg !52
  tail call void @llvm.dbg.value(metadata i32 %conv1, i64 0, metadata !16, metadata !50), !dbg !53
  %sext = shl i64 %div, 32, !dbg !54
  %conv2 = ashr exact i64 %sext, 32, !dbg !54
  %call = tail call i8* @PyObject_Malloc(i64 %conv2) #5, !dbg !55
  tail call void @llvm.dbg.value(metadata i8* %call, i64 0, metadata !17, metadata !50), !dbg !56
  %cmp = icmp eq i8* %call, null, !dbg !57
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #6, !dbg !60
  unreachable, !dbg !60

if.end:                                           ; preds = %entry
  %conv1 = trunc i64 %div to i32, !dbg !52
  %add.ptr = getelementptr i8, i8* %call, i64 %conv2, !dbg !61
  tail call void @llvm.dbg.value(metadata i8* %add.ptr, i64 0, metadata !17, metadata !50), !dbg !56
  %dec.12 = add i32 %conv1, -1, !dbg !62
  tail call void @llvm.dbg.value(metadata i32 %dec.12, i64 0, metadata !16, metadata !50), !dbg !53
  %cmp4.13 = icmp sgt i32 %dec.12, -1, !dbg !65
  br i1 %cmp4.13, label %while.body.lr.ph, label %while.end, !dbg !66

while.body.lr.ph:                                 ; preds = %if.end
  %sext16 = shl i64 %div, 32, !dbg !66
  %0 = ashr exact i64 %sext16, 32, !dbg !66
  %1 = add nsw i64 %0, -1, !dbg !66
  %2 = zext i32 %dec.12 to i64, !dbg !66
  %3 = sub nsw i64 %1, %2, !dbg !66
  %4 = sext i32 %nbits to i64, !dbg !66
  %5 = add nsw i64 %4, 7, !dbg !66
  %6 = lshr i64 %5, 3, !dbg !66
  %7 = add nuw nsw i64 %6, 4294967295, !dbg !66
  %8 = and i64 %7, 4294967295, !dbg !66
  %9 = add nuw nsw i64 %8, 1, !dbg !66
  %end.idx = add nuw nsw i64 %8, 1
  %n.mod.vf = and i64 %6, 31
  %n.vec = sub nsw i64 %9, %n.mod.vf
  %cmp.zero = icmp eq i64 %9, %n.mod.vf
  %cast.crd = trunc i64 %n.vec to i32, !dbg !66
  %ind.end = sub i32 %dec.12, %cast.crd, !dbg !66
  %10 = sub nsw i64 0, %n.vec, !dbg !66
  %ptr.ind.end = getelementptr i8, i8* %add.ptr, i64 %10, !dbg !66
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader, !dbg !66

vector.body.preheader:                            ; preds = %while.body.lr.ph
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %11 = sub i64 0, %index
  %next.gep = getelementptr i8, i8* %add.ptr, i64 %11
  %12 = getelementptr i8, i8* %next.gep, i64 -1, !dbg !67
  %13 = getelementptr i8, i8* %12, i64 -15, !dbg !68
  %14 = bitcast i8* %13 to <16 x i8>*, !dbg !68
  store <16 x i8> zeroinitializer, <16 x i8>* %14, align 1, !dbg !68, !tbaa !69
  %15 = getelementptr i8, i8* %12, i64 -16, !dbg !68
  %16 = getelementptr i8, i8* %15, i64 -15, !dbg !68
  %17 = bitcast i8* %16 to <16 x i8>*, !dbg !68
  store <16 x i8> zeroinitializer, <16 x i8>* %17, align 1, !dbg !68, !tbaa !69
  %index.next = add i64 %index, 32
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block.loopexit, label %vector.body, !llvm.loop !72

middle.block.loopexit:                            ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %while.body.lr.ph
  %resume.val = phi i32 [ %dec.12, %while.body.lr.ph ], [ %ind.end, %middle.block.loopexit ]
  %resume.val17 = phi i8* [ %add.ptr, %while.body.lr.ph ], [ %ptr.ind.end, %middle.block.loopexit ]
  %new.indc.resume.val = phi i64 [ 0, %while.body.lr.ph ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %end.idx, %new.indc.resume.val
  br i1 %cmp.n, label %while.cond.while.end_crit_edge, label %while.body.preheader, !dbg !66

while.body.preheader:                             ; preds = %middle.block
  br label %while.body, !dbg !67

while.body:                                       ; preds = %while.body.preheader, %while.body
  %dec15 = phi i32 [ %dec, %while.body ], [ %resume.val, %while.body.preheader ]
  %ss.014 = phi i8* [ %incdec.ptr, %while.body ], [ %resume.val17, %while.body.preheader ]
  %incdec.ptr = getelementptr i8, i8* %ss.014, i64 -1, !dbg !67
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !17, metadata !50), !dbg !56
  store i8 0, i8* %incdec.ptr, align 1, !dbg !68, !tbaa !69
  %dec = add i32 %dec15, -1, !dbg !62
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !16, metadata !50), !dbg !53
  %cmp4 = icmp sgt i32 %dec, -1, !dbg !65
  br i1 %cmp4, label %while.body, label %while.cond.while.end_crit_edge.loopexit, !dbg !66, !llvm.loop !75

while.cond.while.end_crit_edge.loopexit:          ; preds = %while.body
  br label %while.cond.while.end_crit_edge, !dbg !66

while.cond.while.end_crit_edge:                   ; preds = %while.cond.while.end_crit_edge.loopexit, %middle.block
  %scevgep = getelementptr i8, i8* %call, i64 %3, !dbg !66
  br label %while.end, !dbg !66

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end
  %ss.0.lcssa = phi i8* [ %scevgep, %while.cond.while.end_crit_edge ], [ %add.ptr, %if.end ]
  ret i8* %ss.0.lcssa, !dbg !77
}

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define void @_Py_delbitset(i8* %ss) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ss, i64 0, metadata !22, metadata !50), !dbg !78
  tail call void @PyObject_Free(i8* %ss) #5, !dbg !79
  ret void, !dbg !80
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_Py_addbit(i8* nocapture %ss, i32 %ibit) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ss, i64 0, metadata !27, metadata !50), !dbg !81
  tail call void @llvm.dbg.value(metadata i32 %ibit, i64 0, metadata !28, metadata !50), !dbg !82
  %conv = sext i32 %ibit to i64, !dbg !83
  %rem = and i32 %ibit, 7, !dbg !84
  %idxprom = ashr i64 %conv, 3, !dbg !85
  %arrayidx = getelementptr i8, i8* %ss, i64 %idxprom, !dbg !85
  %0 = load i8, i8* %arrayidx, align 1, !dbg !85, !tbaa !69
  %conv4 = sext i8 %0 to i32, !dbg !85
  %sext = shl i32 16777216, %rem, !dbg !87
  %conv5 = ashr exact i32 %sext, 24, !dbg !87
  %and = and i32 %conv4, %conv5, !dbg !88
  %tobool = icmp eq i32 %and, 0, !dbg !88
  br i1 %tobool, label %if.end, label %cleanup, !dbg !89

if.end:                                           ; preds = %entry
  %or = or i32 %conv4, %conv5, !dbg !90
  %conv10 = trunc i32 %or to i8, !dbg !90
  store i8 %conv10, i8* %arrayidx, align 1, !dbg !90, !tbaa !69
  br label %cleanup, !dbg !91

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !92
}

; Function Attrs: nounwind readonly uwtable
define i32 @_Py_samebitset(i8* nocapture readonly %ss1, i8* nocapture readonly %ss2, i32 %nbits) #3 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ss1, i64 0, metadata !35, metadata !50), !dbg !93
  tail call void @llvm.dbg.value(metadata i8* %ss2, i64 0, metadata !36, metadata !50), !dbg !94
  tail call void @llvm.dbg.value(metadata i32 %nbits, i64 0, metadata !37, metadata !50), !dbg !95
  %conv = sext i32 %nbits to i64, !dbg !96
  %sub = add nsw i64 %conv, 7, !dbg !96
  %div = lshr i64 %sub, 3, !dbg !96
  %conv1 = trunc i64 %div to i32, !dbg !96
  tail call void @llvm.dbg.value(metadata i32 %conv1, i64 0, metadata !38, metadata !50), !dbg !98
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.body, %entry
  %ss1.addr.0 = phi i8* [ %ss1, %entry ], [ %incdec.ptr, %for.body ]
  %ss2.addr.0 = phi i8* [ %ss2, %entry ], [ %incdec.ptr4, %for.body ]
  %i.0 = phi i32 [ %conv1, %entry ], [ %dec, %for.body ]
  %dec = add i32 %i.0, -1, !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !38, metadata !50), !dbg !98
  %cmp = icmp sgt i32 %dec, -1, !dbg !104
  br i1 %cmp, label %for.body, label %cleanup, !dbg !105

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr i8, i8* %ss1.addr.0, i64 1, !dbg !106
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !35, metadata !50), !dbg !93
  %0 = load i8, i8* %ss1.addr.0, align 1, !dbg !108, !tbaa !69
  %incdec.ptr4 = getelementptr i8, i8* %ss2.addr.0, i64 1, !dbg !109
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr4, i64 0, metadata !36, metadata !50), !dbg !94
  %1 = load i8, i8* %ss2.addr.0, align 1, !dbg !110, !tbaa !69
  %cmp6 = icmp eq i8 %0, %1, !dbg !111
  br i1 %cmp6, label %for.cond, label %cleanup, !dbg !112

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i32 [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0, !dbg !113
}

; Function Attrs: nounwind uwtable
define void @_Py_mergebitset(i8* nocapture %ss1, i8* nocapture readonly %ss2, i32 %nbits) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %ss1, i64 0, metadata !43, metadata !50), !dbg !114
  tail call void @llvm.dbg.value(metadata i8* %ss2, i64 0, metadata !44, metadata !50), !dbg !115
  tail call void @llvm.dbg.value(metadata i32 %nbits, i64 0, metadata !45, metadata !50), !dbg !116
  %conv = sext i32 %nbits to i64, !dbg !117
  %sub = add nsw i64 %conv, 7, !dbg !117
  %div = lshr i64 %sub, 3, !dbg !117
  %conv1 = trunc i64 %div to i32, !dbg !117
  tail call void @llvm.dbg.value(metadata i32 %conv1, i64 0, metadata !46, metadata !50), !dbg !119
  %dec.9 = add i32 %conv1, -1, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %dec.9, i64 0, metadata !46, metadata !50), !dbg !119
  %cmp.10 = icmp sgt i32 %dec.9, -1, !dbg !124
  br i1 %cmp.10, label %for.body.preheader, label %for.end, !dbg !125

for.body.preheader:                               ; preds = %entry
  %0 = sext i32 %nbits to i64, !dbg !126
  %1 = add nsw i64 %0, 7, !dbg !126
  %2 = lshr i64 %1, 3, !dbg !126
  %3 = add nuw nsw i64 %2, 4294967295, !dbg !126
  %4 = and i64 %3, 4294967295, !dbg !126
  %5 = add nuw nsw i64 %4, 1, !dbg !126
  %end.idx = add nuw nsw i64 %4, 1
  %n.mod.vf = and i64 %2, 31
  %n.vec = sub nsw i64 %5, %n.mod.vf
  %cmp.zero = icmp eq i64 %5, %n.mod.vf
  br i1 %cmp.zero, label %middle.block, label %vector.memcheck, !dbg !126

vector.memcheck:                                  ; preds = %for.body.preheader
  %6 = sext i32 %nbits to i64, !dbg !126
  %7 = add nsw i64 %6, 7, !dbg !126
  %8 = lshr i64 %7, 3, !dbg !126
  %9 = add nuw nsw i64 %8, 4294967295, !dbg !126
  %10 = and i64 %9, 4294967295, !dbg !126
  %scevgep = getelementptr i8, i8* %ss1, i64 %10, !dbg !126
  %scevgep14 = getelementptr i8, i8* %ss2, i64 %10, !dbg !126
  %bound0 = icmp uge i8* %scevgep14, %ss1, !dbg !126
  %bound1 = icmp uge i8* %scevgep, %ss2, !dbg !126
  %memcheck.conflict = and i1 %bound0, %bound1, !dbg !126
  %cast.crd = trunc i64 %n.vec to i32, !dbg !126
  %ind.end = sub i32 %dec.9, %cast.crd, !dbg !126
  %ptr.ind.end = getelementptr i8, i8* %ss1, i64 %n.vec, !dbg !126
  %ptr.ind.end19 = getelementptr i8, i8* %ss2, i64 %n.vec, !dbg !126
  br i1 %memcheck.conflict, label %middle.block, label %vector.body.preheader, !dbg !126

vector.body.preheader:                            ; preds = %vector.memcheck
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %next.gep = getelementptr i8, i8* %ss1, i64 %index
  %next.gep85 = getelementptr i8, i8* %ss2, i64 %index
  %11 = bitcast i8* %next.gep85 to <16 x i8>*, !dbg !127
  %wide.load = load <16 x i8>, <16 x i8>* %11, align 1, !dbg !127, !tbaa !69
  %12 = getelementptr i8, i8* %next.gep85, i64 16, !dbg !127
  %13 = bitcast i8* %12 to <16 x i8>*, !dbg !127
  %wide.load149 = load <16 x i8>, <16 x i8>* %13, align 1, !dbg !127, !tbaa !69
  %14 = bitcast i8* %next.gep to <16 x i8>*, !dbg !128
  %wide.load150 = load <16 x i8>, <16 x i8>* %14, align 1, !dbg !128, !tbaa !69
  %15 = getelementptr i8, i8* %next.gep, i64 16, !dbg !128
  %16 = bitcast i8* %15 to <16 x i8>*, !dbg !128
  %wide.load151 = load <16 x i8>, <16 x i8>* %16, align 1, !dbg !128, !tbaa !69
  %17 = or <16 x i8> %wide.load150, %wide.load, !dbg !128
  %18 = or <16 x i8> %wide.load151, %wide.load149, !dbg !128
  %19 = bitcast i8* %next.gep to <16 x i8>*, !dbg !128
  store <16 x i8> %17, <16 x i8>* %19, align 1, !dbg !128, !tbaa !69
  %20 = bitcast i8* %15 to <16 x i8>*, !dbg !128
  store <16 x i8> %18, <16 x i8>* %20, align 1, !dbg !128, !tbaa !69
  %index.next = add i64 %index, 32
  %21 = icmp eq i64 %index.next, %n.vec
  br i1 %21, label %middle.block.loopexit, label %vector.body, !llvm.loop !129

middle.block.loopexit:                            ; preds = %vector.body
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %vector.memcheck, %for.body.preheader
  %resume.val = phi i32 [ %dec.9, %for.body.preheader ], [ %dec.9, %vector.memcheck ], [ %ind.end, %middle.block.loopexit ]
  %resume.val15 = phi i8* [ %ss1, %for.body.preheader ], [ %ss1, %vector.memcheck ], [ %ptr.ind.end, %middle.block.loopexit ]
  %resume.val17 = phi i8* [ %ss2, %for.body.preheader ], [ %ss2, %vector.memcheck ], [ %ptr.ind.end19, %middle.block.loopexit ]
  %new.indc.resume.val = phi i64 [ 0, %for.body.preheader ], [ 0, %vector.memcheck ], [ %n.vec, %middle.block.loopexit ]
  %cmp.n = icmp eq i64 %end.idx, %new.indc.resume.val
  br i1 %cmp.n, label %for.end, label %for.body.preheader152, !dbg !126

for.body.preheader152:                            ; preds = %middle.block
  br label %for.body, !dbg !126

for.body:                                         ; preds = %for.body.preheader152, %for.body
  %dec13 = phi i32 [ %dec, %for.body ], [ %resume.val, %for.body.preheader152 ]
  %ss1.addr.012 = phi i8* [ %incdec.ptr4, %for.body ], [ %resume.val15, %for.body.preheader152 ]
  %ss2.addr.011 = phi i8* [ %incdec.ptr, %for.body ], [ %resume.val17, %for.body.preheader152 ]
  %incdec.ptr = getelementptr i8, i8* %ss2.addr.011, i64 1, !dbg !126
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !44, metadata !50), !dbg !115
  %22 = load i8, i8* %ss2.addr.011, align 1, !dbg !127, !tbaa !69
  %incdec.ptr4 = getelementptr i8, i8* %ss1.addr.012, i64 1, !dbg !130
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr4, i64 0, metadata !43, metadata !50), !dbg !114
  %23 = load i8, i8* %ss1.addr.012, align 1, !dbg !128, !tbaa !69
  %or8 = or i8 %23, %22, !dbg !128
  store i8 %or8, i8* %ss1.addr.012, align 1, !dbg !128, !tbaa !69
  %dec = add i32 %dec13, -1, !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %dec, i64 0, metadata !46, metadata !50), !dbg !119
  %cmp = icmp sgt i32 %dec, -1, !dbg !124
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !125, !llvm.loop !131

for.end.loopexit:                                 ; preds = %for.body
  br label %for.end, !dbg !132

for.end:                                          ; preds = %for.end.loopexit, %middle.block, %entry
  ret void, !dbg !132
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!47, !48}
!llvm.ident = !{!49}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7)
!1 = !DIFile(filename: "Parser/bitset.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !18, !23, !31, !39}
!8 = !DISubprogram(name: "_Py_newbitset", scope: !1, file: !1, line: 8, type: !9, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @_Py_newbitset, variables: !14)
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !13}
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !12, line: 12, baseType: !4)
!12 = !DIFile(filename: "Include/bitset.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15, !16, !17}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbits", arg: 1, scope: !8, file: !1, line: 8, type: !13)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !8, file: !1, line: 10, type: !13)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ss", scope: !8, file: !1, line: 11, type: !11)
!18 = !DISubprogram(name: "_Py_delbitset", scope: !1, file: !1, line: 23, type: !19, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @_Py_delbitset, variables: !21)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !11}
!21 = !{!22}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss", arg: 1, scope: !18, file: !1, line: 23, type: !11)
!23 = !DISubprogram(name: "_Py_addbit", scope: !1, file: !1, line: 29, type: !24, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @_Py_addbit, variables: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!13, !11, !13}
!26 = !{!27, !28, !29, !30}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss", arg: 1, scope: !23, file: !1, line: 29, type: !11)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ibit", arg: 2, scope: !23, file: !1, line: 29, type: !13)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibyte", scope: !23, file: !1, line: 31, type: !13)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !23, file: !1, line: 32, type: !5)
!31 = !DISubprogram(name: "_Py_samebitset", scope: !1, file: !1, line: 49, type: !32, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @_Py_samebitset, variables: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!13, !11, !11, !13}
!34 = !{!35, !36, !37, !38}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss1", arg: 1, scope: !31, file: !1, line: 49, type: !11)
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss2", arg: 2, scope: !31, file: !1, line: 49, type: !11)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbits", arg: 3, scope: !31, file: !1, line: 49, type: !13)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !31, file: !1, line: 51, type: !13)
!39 = !DISubprogram(name: "_Py_mergebitset", scope: !1, file: !1, line: 60, type: !40, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32)* @_Py_mergebitset, variables: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !11, !11, !13}
!42 = !{!43, !44, !45, !46}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss1", arg: 1, scope: !39, file: !1, line: 60, type: !11)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss2", arg: 2, scope: !39, file: !1, line: 60, type: !11)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbits", arg: 3, scope: !39, file: !1, line: 60, type: !13)
!46 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !39, file: !1, line: 62, type: !13)
!47 = !{i32 2, !"Dwarf Version", i32 4}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!50 = !DIExpression()
!51 = !DILocation(line: 8, column: 15, scope: !8)
!52 = !DILocation(line: 10, column: 18, scope: !8)
!53 = !DILocation(line: 10, column: 9, scope: !8)
!54 = !DILocation(line: 11, column: 57, scope: !8)
!55 = !DILocation(line: 11, column: 25, scope: !8)
!56 = !DILocation(line: 11, column: 12, scope: !8)
!57 = !DILocation(line: 13, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !8, file: !1, line: 13, column: 9)
!59 = !DILocation(line: 13, column: 9, scope: !8)
!60 = !DILocation(line: 14, column: 9, scope: !58)
!61 = !DILocation(line: 16, column: 8, scope: !8)
!62 = !DILocation(line: 17, column: 12, scope: !63)
!63 = !DILexicalBlockFile(scope: !64, file: !1, discriminator: 2)
!64 = !DILexicalBlockFile(scope: !8, file: !1, discriminator: 1)
!65 = !DILocation(line: 17, column: 21, scope: !8)
!66 = !DILocation(line: 17, column: 5, scope: !8)
!67 = !DILocation(line: 18, column: 10, scope: !8)
!68 = !DILocation(line: 18, column: 15, scope: !8)
!69 = !{!70, !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C/C++ TBAA"}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.vectorize.width", i32 1}
!74 = !{!"llvm.loop.interleave.count", i32 1}
!75 = distinct !{!75, !76, !73, !74}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !DILocation(line: 19, column: 5, scope: !8)
!78 = !DILocation(line: 23, column: 18, scope: !18)
!79 = !DILocation(line: 25, column: 5, scope: !18)
!80 = !DILocation(line: 26, column: 1, scope: !18)
!81 = !DILocation(line: 29, column: 15, scope: !23)
!82 = !DILocation(line: 29, column: 23, scope: !23)
!83 = !DILocation(line: 31, column: 17, scope: !23)
!84 = !DILocation(line: 32, column: 17, scope: !23)
!85 = !DILocation(line: 34, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !23, file: !1, line: 34, column: 9)
!87 = !DILocation(line: 34, column: 21, scope: !86)
!88 = !DILocation(line: 34, column: 19, scope: !86)
!89 = !DILocation(line: 34, column: 9, scope: !23)
!90 = !DILocation(line: 36, column: 15, scope: !23)
!91 = !DILocation(line: 37, column: 5, scope: !23)
!92 = !DILocation(line: 38, column: 1, scope: !23)
!93 = !DILocation(line: 49, column: 19, scope: !31)
!94 = !DILocation(line: 49, column: 31, scope: !31)
!95 = !DILocation(line: 49, column: 40, scope: !31)
!96 = !DILocation(line: 53, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !31, file: !1, line: 53, column: 5)
!98 = !DILocation(line: 51, column: 9, scope: !31)
!99 = !DILocation(line: 53, column: 10, scope: !97)
!100 = !DILocation(line: 53, column: 29, scope: !101)
!101 = !DILexicalBlockFile(scope: !102, file: !1, discriminator: 2)
!102 = !DILexicalBlockFile(scope: !103, file: !1, discriminator: 1)
!103 = distinct !DILexicalBlock(scope: !97, file: !1, line: 53, column: 5)
!104 = !DILocation(line: 53, column: 33, scope: !103)
!105 = !DILocation(line: 53, column: 5, scope: !97)
!106 = !DILocation(line: 54, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 54, column: 13)
!108 = !DILocation(line: 54, column: 13, scope: !107)
!109 = !DILocation(line: 54, column: 27, scope: !107)
!110 = !DILocation(line: 54, column: 23, scope: !107)
!111 = !DILocation(line: 54, column: 20, scope: !107)
!112 = !DILocation(line: 54, column: 13, scope: !103)
!113 = !DILocation(line: 57, column: 1, scope: !31)
!114 = !DILocation(line: 60, column: 20, scope: !39)
!115 = !DILocation(line: 60, column: 32, scope: !39)
!116 = !DILocation(line: 60, column: 41, scope: !39)
!117 = !DILocation(line: 64, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !39, file: !1, line: 64, column: 5)
!119 = !DILocation(line: 62, column: 9, scope: !39)
!120 = !DILocation(line: 64, column: 29, scope: !121)
!121 = !DILexicalBlockFile(scope: !122, file: !1, discriminator: 2)
!122 = !DILexicalBlockFile(scope: !123, file: !1, discriminator: 1)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 64, column: 5)
!124 = !DILocation(line: 64, column: 33, scope: !123)
!125 = !DILocation(line: 64, column: 5, scope: !118)
!126 = !DILocation(line: 65, column: 23, scope: !123)
!127 = !DILocation(line: 65, column: 19, scope: !123)
!128 = !DILocation(line: 65, column: 16, scope: !123)
!129 = distinct !{!129, !73, !74}
!130 = !DILocation(line: 65, column: 13, scope: !123)
!131 = distinct !{!131, !73, !74}
!132 = !DILocation(line: 66, column: 1, scope: !39)
