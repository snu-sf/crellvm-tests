; ModuleID = 'programs_new/Python-new/mysnprintf.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: nounwind uwtable
define i32 @PyOS_snprintf(i8* %str, i64 %size, i8* %format, ...) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %rc = alloca i32, align 4
  %va = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %str, i8** %str.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !17, metadata !56), !dbg !57
  store i64 %size, i64* %size.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !18, metadata !56), !dbg !60
  store i8* %format, i8** %format.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !19, metadata !56), !dbg !61
  %0 = bitcast i32* %rc to i8*, !dbg !62
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !20, metadata !56), !dbg !63
  %1 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !64
  call void @llvm.lifetime.start(i64 24, i8* %1) #2, !dbg !64
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %va, metadata !21, metadata !56), !dbg !65
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !66
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !67
  call void @llvm.va_start(i8* %arraydecay1), !dbg !67
  %2 = load i8*, i8** %str.addr, align 8, !dbg !68, !tbaa !52
  %3 = load i64, i64* %size.addr, align 8, !dbg !69, !tbaa !58
  %4 = load i8*, i8** %format.addr, align 8, !dbg !70, !tbaa !52
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !71
  %call = call i32 @PyOS_vsnprintf(i8* %2, i64 %3, i8* %4, %struct.__va_list_tag* %arraydecay2), !dbg !72
  store i32 %call, i32* %rc, align 4, !dbg !73, !tbaa !74
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %va, i32 0, i32 0, !dbg !76
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !77
  call void @llvm.va_end(i8* %arraydecay34), !dbg !77
  %5 = load i32, i32* %rc, align 4, !dbg !78, !tbaa !74
  %6 = bitcast [1 x %struct.__va_list_tag]* %va to i8*, !dbg !79
  call void @llvm.lifetime.end(i64 24, i8* %6) #2, !dbg !79
  %7 = bitcast i32* %rc to i8*, !dbg !79
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !79
  ret i32 %5, !dbg !80
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyOS_vsnprintf(i8* %str, i64 %size, i8* %format, %struct.__va_list_tag* %va) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %va.addr = alloca %struct.__va_list_tag*, align 8
  %len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !44, metadata !56), !dbg !81
  store i64 %size, i64* %size.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !45, metadata !56), !dbg !82
  store i8* %format, i8** %format.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %format.addr, metadata !46, metadata !56), !dbg !83
  store %struct.__va_list_tag* %va, %struct.__va_list_tag** %va.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %va.addr, metadata !47, metadata !56), !dbg !84
  %0 = bitcast i32* %len to i8*, !dbg !85
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %len, metadata !48, metadata !56), !dbg !86
  %1 = load i64, i64* %size.addr, align 8, !dbg !87, !tbaa !58
  %cmp = icmp ugt i64 %1, 2147483646, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  store i32 -666, i32* %len, align 4, !dbg !91, !tbaa !74
  br label %Done, !dbg !93

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8, !dbg !94, !tbaa !52
  %3 = load i64, i64* %size.addr, align 8, !dbg !95, !tbaa !58
  %4 = load i8*, i8** %format.addr, align 8, !dbg !96, !tbaa !52
  %5 = load %struct.__va_list_tag*, %struct.__va_list_tag** %va.addr, align 8, !dbg !97, !tbaa !52
  %call = call i32 @vsnprintf(i8* %2, i64 %3, i8* %4, %struct.__va_list_tag* %5) #2, !dbg !98
  store i32 %call, i32* %len, align 4, !dbg !99, !tbaa !74
  br label %Done, !dbg !100

Done:                                             ; preds = %if.end, %if.then
  %6 = load i64, i64* %size.addr, align 8, !dbg !101, !tbaa !58
  %cmp1 = icmp ugt i64 %6, 0, !dbg !103
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !104

if.then.2:                                        ; preds = %Done
  %7 = load i64, i64* %size.addr, align 8, !dbg !105, !tbaa !58
  %sub = sub i64 %7, 1, !dbg !106
  %8 = load i8*, i8** %str.addr, align 8, !dbg !107, !tbaa !52
  %arrayidx = getelementptr i8, i8* %8, i64 %sub, !dbg !107
  store i8 0, i8* %arrayidx, align 1, !dbg !108, !tbaa !109
  br label %if.end.3, !dbg !107

if.end.3:                                         ; preds = %if.then.2, %Done
  %9 = load i32, i32* %len, align 4, !dbg !110, !tbaa !74
  %10 = bitcast i32* %len to i8*, !dbg !111
  call void @llvm.lifetime.end(i64 4, i8* %10) #2, !dbg !111
  ret i32 %9, !dbg !112
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!49, !50}
!llvm.ident = !{!51}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "mysnprintf.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !39}
!4 = !DISubprogram(name: "PyOS_snprintf", scope: !5, file: !5, line: 41, type: !6, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, i8*, ...)* @PyOS_snprintf, variables: !16)
!5 = !DIFile(filename: "Python/mysnprintf.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9, !11, !14, null}
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 62, baseType: !13)
!12 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!16 = !{!17, !18, !19, !20, !21}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !4, file: !5, line: 41, type: !9)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !4, file: !5, line: 41, type: !11)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !4, file: !5, line: 41, type: !14)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !4, file: !5, line: 43, type: !8)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "va", scope: !4, file: !5, line: 44, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !23, line: 79, baseType: !24)
!23 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !25, line: 50, baseType: !26)
!25 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stdarg.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 44, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, align: 64, elements: !37)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__va_list_tag", file: !1, line: 44, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 44, size: 192, align: 64, elements: !30)
!30 = !{!31, !33, !34, !36}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !29, file: !1, line: 44, baseType: !32, size: 32, align: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !29, file: !1, line: 44, baseType: !32, size: 32, align: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !29, file: !1, line: 44, baseType: !35, size: 64, align: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !29, file: !1, line: 44, baseType: !35, size: 64, align: 64, offset: 128)
!37 = !{!38}
!38 = !DISubrange(count: 1)
!39 = !DISubprogram(name: "PyOS_vsnprintf", scope: !5, file: !5, line: 53, type: !40, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64, i8*, %struct.__va_list_tag*)* @PyOS_vsnprintf, variables: !43)
!40 = !DISubroutineType(types: !41)
!41 = !{!8, !9, !11, !14, !42}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!43 = !{!44, !45, !46, !47, !48}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !39, file: !5, line: 53, type: !9)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 2, scope: !39, file: !5, line: 53, type: !11)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "format", arg: 3, scope: !39, file: !5, line: 53, type: !14)
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "va", arg: 4, scope: !39, file: !5, line: 53, type: !42)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !39, file: !5, line: 55, type: !8)
!49 = !{i32 2, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DIExpression()
!57 = !DILocation(line: 41, column: 21, scope: !4)
!58 = !{!59, !59, i64 0}
!59 = !{!"long", !54, i64 0}
!60 = !DILocation(line: 41, column: 33, scope: !4)
!61 = !DILocation(line: 41, column: 51, scope: !4)
!62 = !DILocation(line: 43, column: 5, scope: !4)
!63 = !DILocation(line: 43, column: 9, scope: !4)
!64 = !DILocation(line: 44, column: 5, scope: !4)
!65 = !DILocation(line: 44, column: 13, scope: !4)
!66 = !DILocation(line: 46, column: 24, scope: !4)
!67 = !DILocation(line: 46, column: 5, scope: !4)
!68 = !DILocation(line: 47, column: 25, scope: !4)
!69 = !DILocation(line: 47, column: 30, scope: !4)
!70 = !DILocation(line: 47, column: 36, scope: !4)
!71 = !DILocation(line: 47, column: 44, scope: !4)
!72 = !DILocation(line: 47, column: 10, scope: !4)
!73 = !DILocation(line: 47, column: 8, scope: !4)
!74 = !{!75, !75, i64 0}
!75 = !{!"int", !54, i64 0}
!76 = !DILocation(line: 48, column: 22, scope: !4)
!77 = !DILocation(line: 48, column: 5, scope: !4)
!78 = !DILocation(line: 49, column: 12, scope: !4)
!79 = !DILocation(line: 50, column: 1, scope: !4)
!80 = !DILocation(line: 49, column: 5, scope: !4)
!81 = !DILocation(line: 53, column: 22, scope: !39)
!82 = !DILocation(line: 53, column: 34, scope: !39)
!83 = !DILocation(line: 53, column: 52, scope: !39)
!84 = !DILocation(line: 53, column: 68, scope: !39)
!85 = !DILocation(line: 55, column: 5, scope: !39)
!86 = !DILocation(line: 55, column: 9, scope: !39)
!87 = !DILocation(line: 68, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !39, file: !5, line: 68, column: 9)
!89 = !DILocation(line: 68, column: 14, scope: !88)
!90 = !DILocation(line: 68, column: 9, scope: !39)
!91 = !DILocation(line: 69, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !5, line: 68, column: 32)
!93 = !DILocation(line: 70, column: 9, scope: !92)
!94 = !DILocation(line: 74, column: 21, scope: !39)
!95 = !DILocation(line: 74, column: 26, scope: !39)
!96 = !DILocation(line: 74, column: 32, scope: !39)
!97 = !DILocation(line: 74, column: 40, scope: !39)
!98 = !DILocation(line: 74, column: 11, scope: !39)
!99 = !DILocation(line: 74, column: 9, scope: !39)
!100 = !DILocation(line: 74, column: 5, scope: !39)
!101 = !DILocation(line: 100, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !39, file: !5, line: 100, column: 9)
!103 = !DILocation(line: 100, column: 14, scope: !102)
!104 = !DILocation(line: 100, column: 9, scope: !39)
!105 = !DILocation(line: 101, column: 13, scope: !102)
!106 = !DILocation(line: 101, column: 17, scope: !102)
!107 = !DILocation(line: 101, column: 9, scope: !102)
!108 = !DILocation(line: 101, column: 21, scope: !102)
!109 = !{!54, !54, i64 0}
!110 = !DILocation(line: 102, column: 12, scope: !39)
!111 = !DILocation(line: 104, column: 1, scope: !39)
!112 = !DILocation(line: 102, column: 5, scope: !39)
