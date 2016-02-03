; ModuleID = 'getbuildinfo.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_GetBuildInfo.buildinfo = internal global [52 x i8] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s%s%s, %.20s, %.9s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Feb  3 2016\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"23:36:07\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Py_GetBuildInfo() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !20, metadata !44), !dbg !45
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !21, metadata !44), !dbg !46
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !22, metadata !44), !dbg !47
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !22, metadata !44), !dbg !47
  %call3 = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @Py_GetBuildInfo.buildinfo, i64 0, i64 0), i64 52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #4, !dbg !48
  ret i8* getelementptr inbounds ([52 x i8], [52 x i8]* @Py_GetBuildInfo.buildinfo, i64 0, i64 0), !dbg !49
}

; Function Attrs: nounwind readnone uwtable
define i8* @_Py_hgversion() #1 {
entry:
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), !dbg !50
}

; Function Attrs: nounwind readnone uwtable
define i8* @_Py_hgidentifier() #1 {
entry:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !26, metadata !44), !dbg !51
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !27, metadata !44), !dbg !52
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), !dbg !53
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !15, globals: !36)
!1 = !DIFile(filename: "./Modules/getbuildinfo.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !7, !9, !12}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 62, baseType: !6)
!5 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !23, !24}
!16 = !DISubprogram(name: "Py_GetBuildInfo", scope: !1, file: !1, line: 35, type: !17, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @Py_GetBuildInfo, variables: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!12}
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "revision", scope: !16, file: !1, line: 40, type: !12)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sep", scope: !16, file: !1, line: 41, type: !12)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hgid", scope: !16, file: !1, line: 42, type: !12)
!23 = !DISubprogram(name: "_Py_hgversion", scope: !1, file: !1, line: 52, type: !17, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @_Py_hgversion, variables: !2)
!24 = !DISubprogram(name: "_Py_hgidentifier", scope: !1, file: !1, line: 58, type: !17, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @_Py_hgidentifier, variables: !25)
!25 = !{!26, !27, !28, !31, !32, !34}
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hgtag", scope: !24, file: !1, line: 60, type: !12)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hgid", scope: !24, file: !1, line: 60, type: !12)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !29, file: !1, line: 62, type: !4)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 62, column: 21)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 62, column: 9)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !29, file: !1, line: 62, type: !4)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !33, file: !1, line: 62, type: !9)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 62, column: 21)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !33, file: !1, line: 62, type: !35)
!35 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!36 = !{!37}
!37 = !DIGlobalVariable(name: "buildinfo", scope: !16, file: !1, line: 37, type: !38, isLocal: true, isDefinition: true, variable: [52 x i8]* @Py_GetBuildInfo.buildinfo)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 416, align: 8, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 52)
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!44 = !DIExpression()
!45 = !DILocation(line: 40, column: 17, scope: !16)
!46 = !DILocation(line: 41, column: 17, scope: !16)
!47 = !DILocation(line: 42, column: 17, scope: !16)
!48 = !DILocation(line: 45, column: 5, scope: !16)
!49 = !DILocation(line: 48, column: 5, scope: !16)
!50 = !DILocation(line: 54, column: 5, scope: !23)
!51 = !DILocation(line: 60, column: 17, scope: !24)
!52 = !DILocation(line: 60, column: 25, scope: !24)
!53 = !DILocation(line: 66, column: 5, scope: !24)
