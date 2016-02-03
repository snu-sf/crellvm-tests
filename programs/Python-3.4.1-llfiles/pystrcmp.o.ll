; ModuleID = 'pystrcmp.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readonly uwtable
define i32 @PyOS_mystrnicmp(i8* nocapture readonly %s1, i8* nocapture readonly %s2, i64 %size) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !21, metadata !55), !dbg !56
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !22, metadata !55), !dbg !57
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !23, metadata !55), !dbg !58
  %cmp = icmp eq i64 %size, 0, !dbg !59
  br i1 %cmp, label %return, label %while.cond.preheader, !dbg !61

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !62

while.cond:                                       ; preds = %while.cond.preheader, %lor.lhs.false
  %size.addr.0 = phi i64 [ %dec, %lor.lhs.false ], [ %size, %while.cond.preheader ]
  %s2.addr.0 = phi i8* [ %incdec.ptr9, %lor.lhs.false ], [ %s2, %while.cond.preheader ]
  %s1.addr.0 = phi i8* [ %incdec.ptr, %lor.lhs.false ], [ %s1, %while.cond.preheader ]
  %dec = add i64 %size.addr.0, -1, !dbg !62
  tail call void @llvm.dbg.value(metadata i64 %dec, i64 0, metadata !23, metadata !55), !dbg !58
  %cmp1 = icmp sgt i64 %dec, 0, !dbg !65
  br i1 %cmp1, label %land.rhs, label %while.end, !dbg !66

land.rhs:                                         ; preds = %while.cond
  %0 = load i8, i8* %s1.addr.0, align 1, !dbg !67, !tbaa !70
  %conv = sext i8 %0 to i32, !dbg !73
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !51, metadata !55) #3, !dbg !77
  %__c.off.i = add nsw i32 %conv, 128, !dbg !79
  %1 = icmp ult i32 %__c.off.i, 384, !dbg !79
  br i1 %1, label %cond.true.i, label %tolower.exit, !dbg !79

cond.true.i:                                      ; preds = %land.rhs
  %idxprom.i = sext i8 %0 to i64, !dbg !80
  %call.i = tail call i32** @__ctype_tolower_loc() #2, !dbg !81
  %2 = load i32*, i32** %call.i, align 8, !dbg !82, !tbaa !83
  %arrayidx.i = getelementptr i32, i32* %2, i64 %idxprom.i, !dbg !80
  %3 = load i32, i32* %arrayidx.i, align 4, !dbg !80, !tbaa !85
  br label %tolower.exit, !dbg !87

tolower.exit:                                     ; preds = %land.rhs, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %conv, %land.rhs ], !dbg !87
  tail call void @llvm.dbg.value(metadata i32 %cond.i, i64 0, metadata !24, metadata !55), !dbg !88
  %4 = load i8, i8* %s2.addr.0, align 1, !dbg !89, !tbaa !70
  %conv4 = sext i8 %4 to i32, !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %conv4, i64 0, metadata !51, metadata !55) #3, !dbg !94
  %__c.off.i.32 = add nsw i32 %conv4, 128, !dbg !96
  %5 = icmp ult i32 %__c.off.i.32, 384, !dbg !96
  br i1 %5, label %cond.true.i.36, label %tolower.exit38, !dbg !96

cond.true.i.36:                                   ; preds = %tolower.exit
  %idxprom.i.33 = sext i8 %4 to i64, !dbg !97
  %call.i.34 = tail call i32** @__ctype_tolower_loc() #2, !dbg !98
  %6 = load i32*, i32** %call.i.34, align 8, !dbg !99, !tbaa !83
  %arrayidx.i.35 = getelementptr i32, i32* %6, i64 %idxprom.i.33, !dbg !97
  %7 = load i32, i32* %arrayidx.i.35, align 4, !dbg !97, !tbaa !85
  br label %tolower.exit38, !dbg !100

tolower.exit38:                                   ; preds = %tolower.exit, %cond.true.i.36
  %cond.i.37 = phi i32 [ %7, %cond.true.i.36 ], [ %conv4, %tolower.exit ], !dbg !100
  tail call void @llvm.dbg.value(metadata i32 %cond.i.37, i64 0, metadata !26, metadata !55), !dbg !101
  %cmp7 = icmp eq i32 %cond.i, %cond.i.37, !dbg !102
  br i1 %cmp7, label %while.body, label %while.end, !dbg !103

while.body:                                       ; preds = %tolower.exit38
  %incdec.ptr = getelementptr i8, i8* %s1.addr.0, i64 1, !dbg !105
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !21, metadata !55), !dbg !56
  %tobool = icmp eq i8 %0, 0, !dbg !67
  br i1 %tobool, label %while.end, label %lor.lhs.false, !dbg !106

lor.lhs.false:                                    ; preds = %while.body
  %incdec.ptr9 = getelementptr i8, i8* %s2.addr.0, i64 1, !dbg !107
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr9, i64 0, metadata !22, metadata !55), !dbg !57
  %tobool10 = icmp eq i8 %4, 0, !dbg !89
  br i1 %tobool10, label %while.end, label %while.cond, !dbg !109

while.end:                                        ; preds = %lor.lhs.false, %while.body, %while.cond, %tolower.exit38
  %s2.addr.1 = phi i8* [ %incdec.ptr9, %lor.lhs.false ], [ %s2.addr.0, %while.body ], [ %s2.addr.0, %tolower.exit38 ], [ %s2.addr.0, %while.cond ]
  %s1.addr.1 = phi i8* [ %incdec.ptr, %lor.lhs.false ], [ %incdec.ptr, %while.body ], [ %s1.addr.0, %tolower.exit38 ], [ %s1.addr.0, %while.cond ]
  %8 = load i8, i8* %s1.addr.1, align 1, !dbg !110, !tbaa !70
  %conv15 = sext i8 %8 to i32, !dbg !110
  tail call void @llvm.dbg.value(metadata i32 %conv15, i64 0, metadata !51, metadata !55) #3, !dbg !114
  %__c.off.i.39 = add nsw i32 %conv15, 128, !dbg !116
  %9 = icmp ult i32 %__c.off.i.39, 384, !dbg !116
  br i1 %9, label %cond.true.i.43, label %tolower.exit45, !dbg !116

cond.true.i.43:                                   ; preds = %while.end
  %idxprom.i.40 = sext i8 %8 to i64, !dbg !117
  %call.i.41 = tail call i32** @__ctype_tolower_loc() #2, !dbg !118
  %10 = load i32*, i32** %call.i.41, align 8, !dbg !119, !tbaa !83
  %arrayidx.i.42 = getelementptr i32, i32* %10, i64 %idxprom.i.40, !dbg !117
  %11 = load i32, i32* %arrayidx.i.42, align 4, !dbg !117, !tbaa !85
  br label %tolower.exit45, !dbg !120

tolower.exit45:                                   ; preds = %while.end, %cond.true.i.43
  %cond.i.44 = phi i32 [ %11, %cond.true.i.43 ], [ %conv15, %while.end ], !dbg !120
  tail call void @llvm.dbg.value(metadata i32 %cond.i.44, i64 0, metadata !28, metadata !55), !dbg !121
  %12 = load i8, i8* %s2.addr.1, align 1, !dbg !122, !tbaa !70
  %conv20 = sext i8 %12 to i32, !dbg !122
  tail call void @llvm.dbg.value(metadata i32 %conv20, i64 0, metadata !51, metadata !55) #3, !dbg !126
  %__c.off.i.46 = add nsw i32 %conv20, 128, !dbg !128
  %13 = icmp ult i32 %__c.off.i.46, 384, !dbg !128
  br i1 %13, label %cond.true.i.50, label %tolower.exit52, !dbg !128

cond.true.i.50:                                   ; preds = %tolower.exit45
  %idxprom.i.47 = sext i8 %12 to i64, !dbg !129
  %call.i.48 = tail call i32** @__ctype_tolower_loc() #2, !dbg !130
  %14 = load i32*, i32** %call.i.48, align 8, !dbg !131, !tbaa !83
  %arrayidx.i.49 = getelementptr i32, i32* %14, i64 %idxprom.i.47, !dbg !129
  %15 = load i32, i32* %arrayidx.i.49, align 4, !dbg !129, !tbaa !85
  br label %tolower.exit52, !dbg !132

tolower.exit52:                                   ; preds = %tolower.exit45, %cond.true.i.50
  %cond.i.51 = phi i32 [ %15, %cond.true.i.50 ], [ %conv20, %tolower.exit45 ], !dbg !132
  tail call void @llvm.dbg.value(metadata i32 %cond.i.51, i64 0, metadata !30, metadata !55), !dbg !133
  %sub = sub i32 %cond.i.44, %cond.i.51, !dbg !134
  br label %return, !dbg !135

return:                                           ; preds = %entry, %tolower.exit52
  %retval.0 = phi i32 [ %sub, %tolower.exit52 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !136
}

; Function Attrs: nounwind readonly uwtable
define i32 @PyOS_mystricmp(i8* nocapture readonly %s1, i8* nocapture readonly %s2) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %s1, i64 0, metadata !36, metadata !55), !dbg !137
  tail call void @llvm.dbg.value(metadata i8* %s2, i64 0, metadata !37, metadata !55), !dbg !138
  br label %while.cond, !dbg !139

while.cond:                                       ; preds = %tolower.exit32, %entry
  %s2.addr.0 = phi i8* [ %s2, %entry ], [ %incdec.ptr4, %tolower.exit32 ]
  %s1.addr.0 = phi i8* [ %s1, %entry ], [ %incdec.ptr, %tolower.exit32 ]
  %0 = load i8, i8* %s1.addr.0, align 1, !dbg !140, !tbaa !70
  %tobool = icmp eq i8 %0, 0, !dbg !140
  br i1 %tobool, label %while.end.loopexit, label %land.rhs, !dbg !141

land.rhs:                                         ; preds = %while.cond
  %conv = sext i8 %0 to i32, !dbg !140
  %incdec.ptr = getelementptr i8, i8* %s1.addr.0, i64 1, !dbg !142
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr, i64 0, metadata !36, metadata !55), !dbg !137
  tail call void @llvm.dbg.value(metadata i32 %conv, i64 0, metadata !51, metadata !55) #3, !dbg !146
  %__c.off.i = add nsw i32 %conv, 128, !dbg !148
  %1 = icmp ult i32 %__c.off.i, 384, !dbg !148
  br i1 %1, label %cond.true.i, label %tolower.exit, !dbg !148

cond.true.i:                                      ; preds = %land.rhs
  %idxprom.i = sext i8 %0 to i64, !dbg !149
  %call.i = tail call i32** @__ctype_tolower_loc() #2, !dbg !150
  %2 = load i32*, i32** %call.i, align 8, !dbg !151, !tbaa !83
  %arrayidx.i = getelementptr i32, i32* %2, i64 %idxprom.i, !dbg !149
  %3 = load i32, i32* %arrayidx.i, align 4, !dbg !149, !tbaa !85
  br label %tolower.exit, !dbg !152

tolower.exit:                                     ; preds = %land.rhs, %cond.true.i
  %cond.i = phi i32 [ %3, %cond.true.i ], [ %conv, %land.rhs ], !dbg !152
  tail call void @llvm.dbg.value(metadata i32 %cond.i, i64 0, metadata !38, metadata !55), !dbg !153
  %incdec.ptr4 = getelementptr i8, i8* %s2.addr.0, i64 1, !dbg !155
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr4, i64 0, metadata !37, metadata !55), !dbg !138
  %4 = load i8, i8* %s2.addr.0, align 1, !dbg !155, !tbaa !70
  %conv5 = sext i8 %4 to i32, !dbg !155
  tail call void @llvm.dbg.value(metadata i32 %conv5, i64 0, metadata !51, metadata !55) #3, !dbg !159
  %__c.off.i.26 = add nsw i32 %conv5, 128, !dbg !161
  %5 = icmp ult i32 %__c.off.i.26, 384, !dbg !161
  br i1 %5, label %cond.true.i.30, label %tolower.exit32, !dbg !161

cond.true.i.30:                                   ; preds = %tolower.exit
  %idxprom.i.27 = sext i8 %4 to i64, !dbg !162
  %call.i.28 = tail call i32** @__ctype_tolower_loc() #2, !dbg !163
  %6 = load i32*, i32** %call.i.28, align 8, !dbg !164, !tbaa !83
  %arrayidx.i.29 = getelementptr i32, i32* %6, i64 %idxprom.i.27, !dbg !162
  %7 = load i32, i32* %arrayidx.i.29, align 4, !dbg !162, !tbaa !85
  br label %tolower.exit32, !dbg !165

tolower.exit32:                                   ; preds = %tolower.exit, %cond.true.i.30
  %cond.i.31 = phi i32 [ %7, %cond.true.i.30 ], [ %conv5, %tolower.exit ], !dbg !165
  tail call void @llvm.dbg.value(metadata i32 %cond.i.31, i64 0, metadata !40, metadata !55), !dbg !166
  %cmp = icmp eq i32 %cond.i, %cond.i.31, !dbg !167
  br i1 %cmp, label %while.cond, label %tolower.exit32.while.end_crit_edge, !dbg !168

tolower.exit32.while.end_crit_edge:               ; preds = %tolower.exit32
  %incdec.ptr4.lcssa = phi i8* [ %incdec.ptr4, %tolower.exit32 ]
  %incdec.ptr.lcssa = phi i8* [ %incdec.ptr, %tolower.exit32 ]
  %.pre = load i8, i8* %incdec.ptr.lcssa, align 1, !dbg !170, !tbaa !70
  br label %while.end, !dbg !168

while.end.loopexit:                               ; preds = %while.cond
  %s2.addr.0.lcssa = phi i8* [ %s2.addr.0, %while.cond ]
  br label %while.end, !dbg !170

while.end:                                        ; preds = %while.end.loopexit, %tolower.exit32.while.end_crit_edge
  %8 = phi i8 [ %.pre, %tolower.exit32.while.end_crit_edge ], [ 0, %while.end.loopexit ], !dbg !170
  %s2.addr.1 = phi i8* [ %incdec.ptr4.lcssa, %tolower.exit32.while.end_crit_edge ], [ %s2.addr.0.lcssa, %while.end.loopexit ]
  %conv11 = sext i8 %8 to i32, !dbg !170
  tail call void @llvm.dbg.value(metadata i32 %conv11, i64 0, metadata !51, metadata !55) #3, !dbg !174
  %__c.off.i.33 = add nsw i32 %conv11, 128, !dbg !176
  %9 = icmp ult i32 %__c.off.i.33, 384, !dbg !176
  br i1 %9, label %cond.true.i.37, label %tolower.exit39, !dbg !176

cond.true.i.37:                                   ; preds = %while.end
  %idxprom.i.34 = sext i8 %8 to i64, !dbg !177
  %call.i.35 = tail call i32** @__ctype_tolower_loc() #2, !dbg !178
  %10 = load i32*, i32** %call.i.35, align 8, !dbg !179, !tbaa !83
  %arrayidx.i.36 = getelementptr i32, i32* %10, i64 %idxprom.i.34, !dbg !177
  %11 = load i32, i32* %arrayidx.i.36, align 4, !dbg !177, !tbaa !85
  br label %tolower.exit39, !dbg !180

tolower.exit39:                                   ; preds = %while.end, %cond.true.i.37
  %cond.i.38 = phi i32 [ %11, %cond.true.i.37 ], [ %conv11, %while.end ], !dbg !180
  tail call void @llvm.dbg.value(metadata i32 %cond.i.38, i64 0, metadata !42, metadata !55), !dbg !181
  %12 = load i8, i8* %s2.addr.1, align 1, !dbg !182, !tbaa !70
  %conv16 = sext i8 %12 to i32, !dbg !182
  tail call void @llvm.dbg.value(metadata i32 %conv16, i64 0, metadata !51, metadata !55) #3, !dbg !186
  %__c.off.i.40 = add nsw i32 %conv16, 128, !dbg !188
  %13 = icmp ult i32 %__c.off.i.40, 384, !dbg !188
  br i1 %13, label %cond.true.i.44, label %tolower.exit46, !dbg !188

cond.true.i.44:                                   ; preds = %tolower.exit39
  %idxprom.i.41 = sext i8 %12 to i64, !dbg !189
  %call.i.42 = tail call i32** @__ctype_tolower_loc() #2, !dbg !190
  %14 = load i32*, i32** %call.i.42, align 8, !dbg !191, !tbaa !83
  %arrayidx.i.43 = getelementptr i32, i32* %14, i64 %idxprom.i.41, !dbg !189
  %15 = load i32, i32* %arrayidx.i.43, align 4, !dbg !189, !tbaa !85
  br label %tolower.exit46, !dbg !192

tolower.exit46:                                   ; preds = %tolower.exit39, %cond.true.i.44
  %cond.i.45 = phi i32 [ %15, %cond.true.i.44 ], [ %conv16, %tolower.exit39 ], !dbg !192
  tail call void @llvm.dbg.value(metadata i32 %cond.i.45, i64 0, metadata !44, metadata !55), !dbg !193
  %sub = sub i32 %cond.i.38, %cond.i.45, !dbg !194
  ret i32 %sub, !dbg !195
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!52, !53}
!llvm.ident = !{!54}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5)
!1 = !DIFile(filename: "Python/pystrcmp.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !32, !46}
!6 = !DISubprogram(name: "PyOS_mystrnicmp", scope: !1, file: !1, line: 7, type: !7, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i64)* @PyOS_mystrnicmp, variables: !20)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !10, !10, !13}
!9 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !14, line: 177, baseType: !15)
!14 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !16, line: 102, baseType: !17)
!16 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !18, line: 181, baseType: !19)
!18 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!19 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !26, !28, !30}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !6, file: !1, line: 7, type: !10)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !6, file: !1, line: 7, type: !10)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !6, file: !1, line: 7, type: !13)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !25, file: !1, line: 12, type: !9)
!25 = distinct !DILexicalBlock(scope: !6, file: !1, line: 12, column: 13)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !27, file: !1, line: 12, type: !9)
!27 = distinct !DILexicalBlock(scope: !6, file: !1, line: 12, column: 39)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !29, file: !1, line: 16, type: !9)
!29 = distinct !DILexicalBlock(scope: !6, file: !1, line: 16, column: 12)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !31, file: !1, line: 16, type: !9)
!31 = distinct !DILexicalBlock(scope: !6, file: !1, line: 16, column: 37)
!32 = !DISubprogram(name: "PyOS_mystricmp", scope: !1, file: !1, line: 20, type: !33, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @PyOS_mystricmp, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!9, !10, !10}
!35 = !{!36, !37, !38, !40, !42, !44}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !32, file: !1, line: 20, type: !10)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !32, file: !1, line: 20, type: !10)
!38 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !39, file: !1, line: 22, type: !9)
!39 = distinct !DILexicalBlock(scope: !32, file: !1, line: 22, column: 20)
!40 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !41, file: !1, line: 22, type: !9)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 22, column: 48)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !43, file: !1, line: 25, type: !9)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 25, column: 13)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !45, file: !1, line: 25, type: !9)
!45 = distinct !DILexicalBlock(scope: !32, file: !1, line: 25, column: 38)
!46 = !DISubprogram(name: "tolower", scope: !47, file: !47, line: 216, type: !48, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, variables: !50)
!47 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!48 = !DISubroutineType(types: !49)
!49 = !{!9, !9}
!50 = !{!51}
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__c", arg: 1, scope: !46, file: !47, line: 216, type: !9)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!55 = !DIExpression()
!56 = !DILocation(line: 7, column: 29, scope: !6)
!57 = !DILocation(line: 7, column: 45, scope: !6)
!58 = !DILocation(line: 7, column: 60, scope: !6)
!59 = !DILocation(line: 9, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !6, file: !1, line: 9, column: 9)
!61 = !DILocation(line: 9, column: 9, scope: !6)
!62 = !DILocation(line: 11, column: 13, scope: !63)
!63 = !DILexicalBlockFile(scope: !64, file: !1, discriminator: 3)
!64 = !DILexicalBlockFile(scope: !6, file: !1, discriminator: 1)
!65 = !DILocation(line: 11, column: 20, scope: !6)
!66 = !DILocation(line: 11, column: 25, scope: !6)
!67 = !DILocation(line: 13, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 13, column: 13)
!69 = distinct !DILexicalBlock(scope: !6, file: !1, line: 12, column: 64)
!70 = !{!71, !71, i64 0}
!71 = !{!"omnipotent char", !72, i64 0}
!72 = !{!"Simple C/C++ TBAA"}
!73 = !DILocation(line: 12, column: 13, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 12, column: 13)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 12, column: 13)
!76 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 13)
!77 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !78)
!78 = distinct !DILocation(line: 12, column: 13, scope: !74)
!79 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !78)
!80 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !78)
!81 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !78)
!82 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !78)
!83 = !{!84, !84, i64 0}
!84 = !{!"any pointer", !71, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"int", !71, i64 0}
!87 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !78)
!88 = !DILocation(line: 12, column: 13, scope: !25)
!89 = !DILocation(line: 13, column: 24, scope: !68)
!90 = !DILocation(line: 12, column: 39, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 12, column: 39)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 12, column: 39)
!93 = distinct !DILexicalBlock(scope: !27, file: !1, line: 12, column: 39)
!94 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !95)
!95 = distinct !DILocation(line: 12, column: 39, scope: !91)
!96 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !95)
!97 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !95)
!98 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !95)
!99 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !95)
!100 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !95)
!101 = !DILocation(line: 12, column: 39, scope: !27)
!102 = !DILocation(line: 12, column: 36, scope: !6)
!103 = !DILocation(line: 11, column: 5, scope: !104)
!104 = !DILexicalBlockFile(scope: !6, file: !1, discriminator: 2)
!105 = !DILocation(line: 13, column: 17, scope: !68)
!106 = !DILocation(line: 13, column: 20, scope: !68)
!107 = !DILocation(line: 13, column: 27, scope: !108)
!108 = !DILexicalBlockFile(scope: !68, file: !1, discriminator: 1)
!109 = !DILocation(line: 13, column: 13, scope: !69)
!110 = !DILocation(line: 16, column: 12, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 16, column: 12)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 16, column: 12)
!113 = distinct !DILexicalBlock(scope: !29, file: !1, line: 16, column: 12)
!114 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !115)
!115 = distinct !DILocation(line: 16, column: 12, scope: !111)
!116 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !115)
!117 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !115)
!118 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !115)
!119 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !115)
!120 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !115)
!121 = !DILocation(line: 16, column: 12, scope: !29)
!122 = !DILocation(line: 16, column: 37, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 16, column: 37)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 16, column: 37)
!125 = distinct !DILexicalBlock(scope: !31, file: !1, line: 16, column: 37)
!126 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !127)
!127 = distinct !DILocation(line: 16, column: 37, scope: !123)
!128 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !127)
!129 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !127)
!130 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !127)
!131 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !127)
!132 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !127)
!133 = !DILocation(line: 16, column: 37, scope: !31)
!134 = !DILocation(line: 16, column: 35, scope: !6)
!135 = !DILocation(line: 16, column: 5, scope: !6)
!136 = !DILocation(line: 17, column: 1, scope: !6)
!137 = !DILocation(line: 20, column: 28, scope: !32)
!138 = !DILocation(line: 20, column: 44, scope: !32)
!139 = !DILocation(line: 22, column: 5, scope: !32)
!140 = !DILocation(line: 22, column: 12, scope: !32)
!141 = !DILocation(line: 22, column: 16, scope: !32)
!142 = !DILocation(line: 22, column: 20, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 22, column: 20)
!144 = distinct !DILexicalBlock(scope: !145, file: !1, line: 22, column: 20)
!145 = distinct !DILexicalBlock(scope: !39, file: !1, line: 22, column: 20)
!146 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !147)
!147 = distinct !DILocation(line: 22, column: 20, scope: !143)
!148 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !147)
!149 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !147)
!150 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !147)
!151 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !147)
!152 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !147)
!153 = !DILocation(line: 22, column: 20, scope: !154)
!154 = !DILexicalBlockFile(scope: !39, file: !1, discriminator: 2)
!155 = !DILocation(line: 22, column: 48, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !1, line: 22, column: 48)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 22, column: 48)
!158 = distinct !DILexicalBlock(scope: !41, file: !1, line: 22, column: 48)
!159 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !160)
!160 = distinct !DILocation(line: 22, column: 48, scope: !156)
!161 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !160)
!162 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !160)
!163 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !160)
!164 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !160)
!165 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !160)
!166 = !DILocation(line: 22, column: 48, scope: !41)
!167 = !DILocation(line: 22, column: 45, scope: !32)
!168 = !DILocation(line: 22, column: 5, scope: !169)
!169 = !DILexicalBlockFile(scope: !32, file: !1, discriminator: 3)
!170 = !DILocation(line: 25, column: 13, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 25, column: 13)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 25, column: 13)
!173 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 13)
!174 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !175)
!175 = distinct !DILocation(line: 25, column: 13, scope: !171)
!176 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !175)
!177 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !175)
!178 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !175)
!179 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !175)
!180 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !175)
!181 = !DILocation(line: 25, column: 13, scope: !43)
!182 = !DILocation(line: 25, column: 38, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 25, column: 38)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 25, column: 38)
!185 = distinct !DILexicalBlock(scope: !45, file: !1, line: 25, column: 38)
!186 = !DILocation(line: 216, column: 1, scope: !46, inlinedAt: !187)
!187 = distinct !DILocation(line: 25, column: 38, scope: !183)
!188 = !DILocation(line: 218, column: 22, scope: !46, inlinedAt: !187)
!189 = !DILocation(line: 218, column: 37, scope: !46, inlinedAt: !187)
!190 = !DILocation(line: 218, column: 39, scope: !46, inlinedAt: !187)
!191 = !DILocation(line: 218, column: 38, scope: !46, inlinedAt: !187)
!192 = !DILocation(line: 218, column: 10, scope: !46, inlinedAt: !187)
!193 = !DILocation(line: 25, column: 38, scope: !45)
!194 = !DILocation(line: 25, column: 36, scope: !32)
!195 = !DILocation(line: 25, column: 5, scope: !32)
