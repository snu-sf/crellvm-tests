; ModuleID = 'grammar1.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@PyGrammar_LabelRepr.buf = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NT%d\00", align 1
@_PyParser_TokenNames = external global [0 x i8*], align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%.32s(%.32s)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid label\00", align 1

; Function Attrs: nounwind readonly uwtable
define %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* nocapture readonly %g, i32 %type) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.grammar* %g, i64 0, metadata !64, metadata !82), !dbg !83
  tail call void @llvm.dbg.value(metadata i32 %type, i64 0, metadata !65, metadata !82), !dbg !84
  %sub = add i32 %type, -256, !dbg !85
  %idxprom = sext i32 %sub to i64, !dbg !86
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %g, i64 0, i32 1, !dbg !87
  %0 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8, !dbg !87, !tbaa !88
  %arrayidx = getelementptr %struct.dfa, %struct.dfa* %0, i64 %idxprom, !dbg !86
  tail call void @llvm.dbg.value(metadata %struct.dfa* %arrayidx, i64 0, metadata !66, metadata !82), !dbg !95
  ret %struct.dfa* %arrayidx, !dbg !96
}

; Function Attrs: nounwind uwtable
define i8* @PyGrammar_LabelRepr(%struct.label* nocapture readonly %lb) #1 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.label* %lb, i64 0, metadata !73, metadata !82), !dbg !97
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %lb, i64 0, i32 0, !dbg !98
  %0 = load i32, i32* %lb_type, align 4, !dbg !98, !tbaa !100
  %cmp = icmp eq i32 %0, 0, !dbg !101
  br i1 %cmp, label %return, label %if.else, !dbg !102

if.else:                                          ; preds = %entry
  %cmp2 = icmp sgt i32 %0, 255, !dbg !103
  br i1 %cmp2, label %if.then.3, label %if.else.9, !dbg !105

if.then.3:                                        ; preds = %if.else
  %lb_str = getelementptr inbounds %struct.label, %struct.label* %lb, i64 0, i32 1, !dbg !106
  %1 = load i8*, i8** %lb_str, align 8, !dbg !106, !tbaa !109
  %cmp4 = icmp eq i8* %1, null, !dbg !110
  br i1 %cmp4, label %if.then.5, label %return, !dbg !111

if.then.5:                                        ; preds = %if.then.3
  %call = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i64 0, i64 0), i64 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %0) #5, !dbg !112
  br label %return, !dbg !114

if.else.9:                                        ; preds = %if.else
  %cmp11 = icmp slt i32 %0, 54, !dbg !115
  br i1 %cmp11, label %if.then.12, label %if.else.23, !dbg !117

if.then.12:                                       ; preds = %if.else.9
  %lb_str13 = getelementptr inbounds %struct.label, %struct.label* %lb, i64 0, i32 1, !dbg !118
  %2 = load i8*, i8** %lb_str13, align 8, !dbg !118, !tbaa !109
  %cmp14 = icmp eq i8* %2, null, !dbg !121
  %idxprom = sext i32 %0 to i64, !dbg !122
  %arrayidx = getelementptr [0 x i8*], [0 x i8*]* @_PyParser_TokenNames, i64 0, i64 %idxprom, !dbg !122
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !122, !tbaa !123
  br i1 %cmp14, label %return, label %if.else.17, !dbg !124

if.else.17:                                       ; preds = %if.then.12
  %call22 = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i64 0, i64 0), i64 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %3, i8* %2) #5, !dbg !125
  br label %return, !dbg !127

if.else.23:                                       ; preds = %if.else.9
  tail call void @Py_FatalError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !128
  unreachable, !dbg !128

return:                                           ; preds = %if.then.12, %if.then.3, %entry, %if.else.17, %if.then.5
  %retval.0 = phi i8* [ getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i64 0, i64 0), %if.then.5 ], [ getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i64 0, i64 0), %if.else.17 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %entry ], [ %1, %if.then.3 ], [ %3, %if.then.12 ]
  ret i8* %retval.0, !dbg !130
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

attributes #0 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!79, !80}
!llvm.ident = !{!81}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !74)
!1 = !DIFile(filename: "Parser/grammar1.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !67}
!6 = !DISubprogram(name: "PyGrammar_FindDFA", scope: !1, file: !1, line: 12, type: !7, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: %struct.dfa* (%struct.grammar*, i32)* @PyGrammar_FindDFA, variables: !63)
!7 = !DISubroutineType(types: !8)
!8 = !{!9, !43, !15}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "dfa", file: !11, line: 57, baseType: !12)
!11 = !DIFile(filename: "Include/grammar.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 50, size: 320, align: 64, elements: !13)
!13 = !{!14, !16, !19, !20, !21, !40}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !12, file: !11, line: 51, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !12, file: !11, line: 52, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "d_initial", scope: !12, file: !11, line: 53, baseType: !15, size: 32, align: 32, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "d_nstates", scope: !12, file: !11, line: 54, baseType: !15, size: 32, align: 32, offset: 160)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "d_state", scope: !12, file: !11, line: 55, baseType: !22, size: 64, align: 64, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "state", file: !11, line: 46, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 37, size: 320, align: 64, elements: !25)
!25 = !{!26, !27, !35, !36, !37, !39}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "s_narcs", scope: !24, file: !11, line: 38, baseType: !15, size: 32, align: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "s_arc", scope: !24, file: !11, line: 39, baseType: !28, size: 64, align: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc", file: !11, line: 33, baseType: !30)
!30 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 30, size: 32, align: 16, elements: !31)
!31 = !{!32, !34}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "a_lbl", scope: !30, file: !11, line: 31, baseType: !33, size: 16, align: 16)
!33 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "a_arrow", scope: !30, file: !11, line: 32, baseType: !33, size: 16, align: 16, offset: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "s_lower", scope: !24, file: !11, line: 42, baseType: !15, size: 32, align: 32, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "s_upper", scope: !24, file: !11, line: 43, baseType: !15, size: 32, align: 32, offset: 160)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "s_accel", scope: !24, file: !11, line: 44, baseType: !38, size: 64, align: 64, offset: 192)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "s_accept", scope: !24, file: !11, line: 45, baseType: !15, size: 32, align: 32, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "d_first", scope: !12, file: !11, line: 56, baseType: !41, size: 64, align: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !42, line: 12, baseType: !17)
!42 = !DIFile(filename: "Include/bitset.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "grammar", file: !11, line: 67, baseType: !45)
!45 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 61, size: 320, align: 64, elements: !46)
!46 = !{!47, !48, !49, !61, !62}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "g_ndfas", scope: !45, file: !11, line: 62, baseType: !15, size: 32, align: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "g_dfa", scope: !45, file: !11, line: 63, baseType: !9, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "g_ll", scope: !45, file: !11, line: 64, baseType: !50, size: 128, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "labellist", file: !11, line: 26, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 23, size: 128, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ll_nlabels", scope: !51, file: !11, line: 24, baseType: !15, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ll_label", scope: !51, file: !11, line: 25, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "label", file: !11, line: 17, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 14, size: 128, align: 64, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !57, file: !11, line: 15, baseType: !15, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "lb_str", scope: !57, file: !11, line: 16, baseType: !17, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "g_start", scope: !45, file: !11, line: 65, baseType: !15, size: 32, align: 32, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "g_accel", scope: !45, file: !11, line: 66, baseType: !15, size: 32, align: 32, offset: 288)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !6, file: !1, line: 12, type: !43)
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !6, file: !1, line: 12, type: !15)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !6, file: !1, line: 14, type: !9)
!67 = !DISubprogram(name: "PyGrammar_LabelRepr", scope: !1, file: !1, line: 34, type: !68, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.label*)* @PyGrammar_LabelRepr, variables: !72)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !55}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!72 = !{!73}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lb", arg: 1, scope: !67, file: !1, line: 34, type: !55)
!74 = !{!75}
!75 = !DIGlobalVariable(name: "buf", scope: !67, file: !1, line: 36, type: !76, isLocal: true, isDefinition: true, variable: [100 x i8]* @PyGrammar_LabelRepr.buf)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, align: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 100)
!79 = !{i32 2, !"Dwarf Version", i32 4}
!80 = !{i32 2, !"Debug Info Version", i32 3}
!81 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!82 = !DIExpression()
!83 = !DILocation(line: 12, column: 28, scope: !6)
!84 = !DILocation(line: 12, column: 35, scope: !6)
!85 = !DILocation(line: 17, column: 24, scope: !6)
!86 = !DILocation(line: 17, column: 10, scope: !6)
!87 = !DILocation(line: 17, column: 13, scope: !6)
!88 = !{!89, !93, i64 8}
!89 = !{!"", !90, i64 0, !93, i64 8, !94, i64 16, !90, i64 32, !90, i64 36}
!90 = !{!"int", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!"any pointer", !91, i64 0}
!94 = !{!"", !90, i64 0, !93, i64 8}
!95 = !DILocation(line: 14, column: 10, scope: !6)
!96 = !DILocation(line: 19, column: 5, scope: !6)
!97 = !DILocation(line: 34, column: 28, scope: !67)
!98 = !DILocation(line: 38, column: 13, scope: !99)
!99 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 9)
!100 = !{!94, !90, i64 0}
!101 = !DILocation(line: 38, column: 21, scope: !99)
!102 = !DILocation(line: 38, column: 9, scope: !67)
!103 = !DILocation(line: 40, column: 14, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 40, column: 14)
!105 = !DILocation(line: 40, column: 14, scope: !99)
!106 = !DILocation(line: 41, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 41, column: 13)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 40, column: 42)
!109 = !{!94, !93, i64 8}
!110 = !DILocation(line: 41, column: 24, scope: !107)
!111 = !DILocation(line: 41, column: 13, scope: !108)
!112 = !DILocation(line: 42, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !1, line: 41, column: 33)
!114 = !DILocation(line: 43, column: 13, scope: !113)
!115 = !DILocation(line: 48, column: 26, scope: !116)
!116 = distinct !DILexicalBlock(scope: !104, file: !1, line: 48, column: 14)
!117 = !DILocation(line: 48, column: 14, scope: !104)
!118 = !DILocation(line: 49, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 49, column: 13)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 48, column: 38)
!121 = !DILocation(line: 49, column: 24, scope: !119)
!122 = !DILocation(line: 50, column: 20, scope: !119)
!123 = !{!93, !93, i64 0}
!124 = !DILocation(line: 49, column: 13, scope: !120)
!125 = !DILocation(line: 52, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !1, line: 51, column: 14)
!127 = !DILocation(line: 54, column: 13, scope: !126)
!128 = !DILocation(line: 58, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !116, file: !1, line: 57, column: 10)
!130 = !DILocation(line: 61, column: 1, scope: !67)
