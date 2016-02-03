; ModuleID = 'mysnprintf.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @PyOS_snprintf(i8* nocapture %str, i64 %size, i8* nocapture readonly %format, ...) #0 {
entry:
  %va = alloca [1 x %struct.__va_list_tag], align 16
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !16, metadata !51), !dbg !52
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !17, metadata !51), !dbg !53
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !18, metadata !51), !dbg !54
  %0 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !55
  call void @llvm.lifetime.start(i64 24, i8* %0) #2, !dbg !55
  tail call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !20, metadata !51), !dbg !56
  call void @llvm.va_start(i8* %0), !dbg !57
  call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !43, metadata !51) #2, !dbg !58
  call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !44, metadata !51) #2, !dbg !60
  call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !45, metadata !51) #2, !dbg !61
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %arraydecay, i64 0, metadata !46, metadata !51) #2, !dbg !62
  %cmp.i = icmp ugt i64 %size, 2147483646, !dbg !63
  br i1 %cmp.i, label %if.then.2.i, label %Done.i, !dbg !65

Done.i:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i64 0, i64 0, !dbg !57
  %call.i = call i32 @vsnprintf(i8* %str, i64 %size, i8* %format, %struct.__va_list_tag* %arraydecay) #2, !dbg !66
  call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !47, metadata !51) #2, !dbg !67
  %cmp1.i = icmp eq i64 %size, 0, !dbg !68
  br i1 %cmp1.i, label %PyOS_vsnprintf.exit, label %if.then.2.i, !dbg !70

if.then.2.i:                                      ; preds = %Done.i, %entry
  %len.010.i = phi i32 [ %call.i, %Done.i ], [ -666, %entry ], !dbg !71
  %sub.i = add i64 %size, -1, !dbg !72
  %arrayidx.i = getelementptr i8, i8* %str, i64 %sub.i, !dbg !73
  store i8 0, i8* %arrayidx.i, align 1, !dbg !74, !tbaa !75
  br label %PyOS_vsnprintf.exit, !dbg !73

PyOS_vsnprintf.exit:                              ; preds = %Done.i, %if.then.2.i
  %len.011.i = phi i32 [ %call.i, %Done.i ], [ %len.010.i, %if.then.2.i ], !dbg !71
  call void @llvm.dbg.value(metadata i32 %len.011.i, i64 0, metadata !19, metadata !51), !dbg !78
  call void @llvm.va_end(i8* %0), !dbg !79
  call void @llvm.lifetime.end(i64 24, i8* %0) #2, !dbg !80
  ret i32 %len.011.i, !dbg !81
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyOS_vsnprintf(i8* nocapture %str, i64 %size, i8* nocapture readonly %format, %struct.__va_list_tag* %va) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !43, metadata !51), !dbg !82
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !44, metadata !51), !dbg !83
  tail call void @llvm.dbg.value(metadata i8* %format, i64 0, metadata !45, metadata !51), !dbg !84
  tail call void @llvm.dbg.value(metadata %struct.__va_list_tag* %va, i64 0, metadata !46, metadata !51), !dbg !85
  %cmp = icmp ugt i64 %size, 2147483646, !dbg !86
  br i1 %cmp, label %if.then.2, label %Done, !dbg !87

Done:                                             ; preds = %entry
  %call = tail call i32 @vsnprintf(i8* %str, i64 %size, i8* %format, %struct.__va_list_tag* %va) #2, !dbg !88
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !47, metadata !51), !dbg !89
  %cmp1 = icmp eq i64 %size, 0, !dbg !90
  br i1 %cmp1, label %if.end.3, label %if.then.2, !dbg !91

if.then.2:                                        ; preds = %entry, %Done
  %len.010 = phi i32 [ %call, %Done ], [ -666, %entry ]
  %sub = add i64 %size, -1, !dbg !92
  %arrayidx = getelementptr i8, i8* %str, i64 %sub, !dbg !93
  store i8 0, i8* %arrayidx, align 1, !dbg !94, !tbaa !75
  br label %if.end.3, !dbg !93

if.end.3:                                         ; preds = %Done, %if.then.2
  %len.011 = phi i32 [ %call, %Done ], [ %len.010, %if.then.2 ]
  ret i32 %len.011, !dbg !95
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8* nocapture, i64, i8* nocapture readonly, %struct.__va_list_tag*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "Python/mysnprintf.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !38}
!4 = !DISubprogram(name: "PyOS_snprintf", scope: !1, file: !1, line: 41, type: !5, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, i8*, ...)* @PyOS_snprintf, variables: !15)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !10, !13, null}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 62, baseType: !12)
!11 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!15 = !{!16, !17, !18, !19, !20}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !4, file: !1, line: 41, type: !8)
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !4, file: !1, line: 41, type: !10)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !4, file: !1, line: 41, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !4, file: !1, line: 43, type: !7)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !4, file: !1, line: 44, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !22, line: 79, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !24, line: 50, baseType: !25)
!24 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stdarg.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 44, baseType: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 192, align: 64, elements: !36)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 44, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 44, size: 192, align: 64, elements: !29)
!29 = !{!30, !32, !33, !35}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !28, file: !1, line: 44, baseType: !31, size: 32, align: 32)
!31 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !28, file: !1, line: 44, baseType: !31, size: 32, align: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !28, file: !1, line: 44, baseType: !34, size: 64, align: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !28, file: !1, line: 44, baseType: !34, size: 64, align: 64, offset: 128)
!36 = !{!37}
!37 = !DISubrange(count: 1)
!38 = !DISubprogram(name: "PyOS_vsnprintf", scope: !1, file: !1, line: 53, type: !39, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, i8*, %struct.__va_list_tag*)* @PyOS_vsnprintf, variables: !42)
!39 = !DISubroutineType(types: !40)
!40 = !{!7, !8, !10, !13, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!42 = !{!43, !44, !45, !46, !47}
!43 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !38, file: !1, line: 53, type: !8)
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !38, file: !1, line: 53, type: !10)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !38, file: !1, line: 53, type: !13)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 4, scope: !38, file: !1, line: 53, type: !41)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !38, file: !1, line: 55, type: !7)
!48 = !{i32 2, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!51 = !DIExpression()
!52 = !DILocation(line: 41, column: 21, scope: !4)
!53 = !DILocation(line: 41, column: 33, scope: !4)
!54 = !DILocation(line: 41, column: 53, scope: !4)
!55 = !DILocation(line: 44, column: 5, scope: !4)
!56 = !DILocation(line: 44, column: 13, scope: !4)
!57 = !DILocation(line: 46, column: 5, scope: !4)
!58 = !DILocation(line: 53, column: 22, scope: !38, inlinedAt: !59)
!59 = distinct !DILocation(line: 47, column: 10, scope: !4)
!60 = !DILocation(line: 53, column: 34, scope: !38, inlinedAt: !59)
!61 = !DILocation(line: 53, column: 53, scope: !38, inlinedAt: !59)
!62 = !DILocation(line: 53, column: 69, scope: !38, inlinedAt: !59)
!63 = !DILocation(line: 68, column: 14, scope: !64, inlinedAt: !59)
!64 = distinct !DILexicalBlock(scope: !38, file: !1, line: 68, column: 9)
!65 = !DILocation(line: 68, column: 9, scope: !38, inlinedAt: !59)
!66 = !DILocation(line: 74, column: 11, scope: !38, inlinedAt: !59)
!67 = !DILocation(line: 55, column: 9, scope: !38, inlinedAt: !59)
!68 = !DILocation(line: 100, column: 14, scope: !69, inlinedAt: !59)
!69 = distinct !DILexicalBlock(scope: !38, file: !1, line: 100, column: 9)
!70 = !DILocation(line: 100, column: 9, scope: !38, inlinedAt: !59)
!71 = !DILocation(line: 47, column: 10, scope: !4)
!72 = !DILocation(line: 101, column: 17, scope: !69, inlinedAt: !59)
!73 = !DILocation(line: 101, column: 9, scope: !69, inlinedAt: !59)
!74 = !DILocation(line: 101, column: 21, scope: !69, inlinedAt: !59)
!75 = !{!76, !76, i64 0}
!76 = !{!"omnipotent char", !77, i64 0}
!77 = !{!"Simple C/C++ TBAA"}
!78 = !DILocation(line: 43, column: 9, scope: !4)
!79 = !DILocation(line: 48, column: 5, scope: !4)
!80 = !DILocation(line: 50, column: 1, scope: !4)
!81 = !DILocation(line: 49, column: 5, scope: !4)
!82 = !DILocation(line: 53, column: 22, scope: !38)
!83 = !DILocation(line: 53, column: 34, scope: !38)
!84 = !DILocation(line: 53, column: 53, scope: !38)
!85 = !DILocation(line: 53, column: 69, scope: !38)
!86 = !DILocation(line: 68, column: 14, scope: !64)
!87 = !DILocation(line: 68, column: 9, scope: !38)
!88 = !DILocation(line: 74, column: 11, scope: !38)
!89 = !DILocation(line: 55, column: 9, scope: !38)
!90 = !DILocation(line: 100, column: 14, scope: !69)
!91 = !DILocation(line: 100, column: 9, scope: !38)
!92 = !DILocation(line: 101, column: 17, scope: !69)
!93 = !DILocation(line: 101, column: 9, scope: !69)
!94 = !DILocation(line: 101, column: 21, scope: !69)
!95 = !DILocation(line: 102, column: 5, scope: !38)
