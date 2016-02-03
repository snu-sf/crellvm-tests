; ModuleID = 'asdl.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asdl_seq = type { i64, [1 x i8*] }
%struct._arena = type opaque
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.asdl_int_seq = type { i64, [1 x i32] }

; Function Attrs: nounwind uwtable
define %struct.asdl_seq* @_Py_asdl_seq_new(i64 %size, %struct._arena* %arena) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !39, metadata !57), !dbg !58
  tail call void @llvm.dbg.value(metadata %struct._arena* %arena, i64 0, metadata !40, metadata !57), !dbg !59
  tail call void @llvm.dbg.value(metadata %struct.asdl_seq* null, i64 0, metadata !41, metadata !57), !dbg !60
  %tobool = icmp ne i64 %size, 0, !dbg !61
  %sub = shl i64 %size, 3, !dbg !62
  %mul = add i64 %sub, -8, !dbg !62
  %cond = select i1 %tobool, i64 %mul, i64 0, !dbg !61
  tail call void @llvm.dbg.value(metadata i64 %cond, i64 0, metadata !42, metadata !57), !dbg !63
  %cmp = icmp slt i64 %size, 0, !dbg !64
  br i1 %cmp, label %if.then, label %lor.lhs.false.2, !dbg !66

lor.lhs.false.2:                                  ; preds = %entry
  %sub4 = add i64 %size, -1
  %cmp5 = icmp ugt i64 %sub4, 2305843009213693951, !dbg !67
  %or.cond = and i1 %tobool, %cmp5, !dbg !68
  br i1 %or.cond, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %lor.lhs.false.2, %entry
  %call = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !69
  br label %cleanup, !dbg !71

if.end:                                           ; preds = %lor.lhs.false.2
  %cmp6 = icmp ugt i64 %cond, -17, !dbg !72
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !74

if.then.7:                                        ; preds = %if.end
  %call8 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !75
  br label %cleanup, !dbg !77

if.end.9:                                         ; preds = %if.end
  %add = add i64 %cond, 16, !dbg !78
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !42, metadata !57), !dbg !63
  %call10 = tail call i8* @PyArena_Malloc(%struct._arena* %arena, i64 %add) #2, !dbg !79
  tail call void @llvm.dbg.value(metadata %struct.asdl_seq* %0, i64 0, metadata !41, metadata !57), !dbg !60
  %tobool11 = icmp eq i8* %call10, null, !dbg !80
  br i1 %tobool11, label %if.then.12, label %if.end.14, !dbg !82

if.then.12:                                       ; preds = %if.end.9
  %call13 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !83
  br label %cleanup, !dbg !85

if.end.14:                                        ; preds = %if.end.9
  %0 = bitcast i8* %call10 to %struct.asdl_seq*, !dbg !86
  tail call void @llvm.memset.p0i8.i64(i8* %call10, i8 0, i64 %add, i32 8, i1 false), !dbg !87
  %size15 = bitcast i8* %call10 to i64*, !dbg !88
  store i64 %size, i64* %size15, align 8, !dbg !89, !tbaa !90
  br label %cleanup, !dbg !95

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.7, %if.then
  %retval.0 = phi %struct.asdl_seq* [ null, %if.then ], [ null, %if.then.7 ], [ %0, %if.end.14 ], [ null, %if.then.12 ]
  ret %struct.asdl_seq* %retval.0, !dbg !96
}

declare %struct._object* @PyErr_NoMemory() #1

declare i8* @PyArena_Malloc(%struct._arena*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct.asdl_int_seq* @_Py_asdl_int_seq_new(i64 %size, %struct._arena* %arena) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i64 %size, i64 0, metadata !50, metadata !57), !dbg !97
  tail call void @llvm.dbg.value(metadata %struct._arena* %arena, i64 0, metadata !51, metadata !57), !dbg !98
  tail call void @llvm.dbg.value(metadata %struct.asdl_int_seq* null, i64 0, metadata !52, metadata !57), !dbg !99
  %tobool = icmp ne i64 %size, 0, !dbg !100
  %sub = shl i64 %size, 3, !dbg !101
  %mul = add i64 %sub, -8, !dbg !101
  %cond = select i1 %tobool, i64 %mul, i64 0, !dbg !100
  tail call void @llvm.dbg.value(metadata i64 %cond, i64 0, metadata !53, metadata !57), !dbg !102
  %cmp = icmp slt i64 %size, 0, !dbg !103
  br i1 %cmp, label %if.then, label %lor.lhs.false.2, !dbg !105

lor.lhs.false.2:                                  ; preds = %entry
  %sub4 = add i64 %size, -1
  %cmp5 = icmp ugt i64 %sub4, 2305843009213693951, !dbg !106
  %or.cond = and i1 %tobool, %cmp5, !dbg !107
  br i1 %or.cond, label %if.then, label %if.end, !dbg !107

if.then:                                          ; preds = %lor.lhs.false.2, %entry
  %call = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !108
  br label %cleanup, !dbg !110

if.end:                                           ; preds = %lor.lhs.false.2
  %cmp6 = icmp ugt i64 %cond, -17, !dbg !111
  br i1 %cmp6, label %if.then.7, label %if.end.9, !dbg !113

if.then.7:                                        ; preds = %if.end
  %call8 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !114
  br label %cleanup, !dbg !116

if.end.9:                                         ; preds = %if.end
  %add = add i64 %cond, 16, !dbg !117
  tail call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !53, metadata !57), !dbg !102
  %call10 = tail call i8* @PyArena_Malloc(%struct._arena* %arena, i64 %add) #2, !dbg !118
  tail call void @llvm.dbg.value(metadata %struct.asdl_int_seq* %0, i64 0, metadata !52, metadata !57), !dbg !99
  %tobool11 = icmp eq i8* %call10, null, !dbg !119
  br i1 %tobool11, label %if.then.12, label %if.end.14, !dbg !121

if.then.12:                                       ; preds = %if.end.9
  %call13 = tail call %struct._object* @PyErr_NoMemory() #2, !dbg !122
  br label %cleanup, !dbg !124

if.end.14:                                        ; preds = %if.end.9
  %0 = bitcast i8* %call10 to %struct.asdl_int_seq*, !dbg !125
  tail call void @llvm.memset.p0i8.i64(i8* %call10, i8 0, i64 %add, i32 8, i1 false), !dbg !126
  %size15 = bitcast i8* %call10 to i64*, !dbg !127
  store i64 %size, i64* %size15, align 8, !dbg !128, !tbaa !90
  br label %cleanup, !dbg !129

cleanup:                                          ; preds = %if.end.14, %if.then.12, %if.then.7, %if.then
  %retval.0 = phi %struct.asdl_int_seq* [ null, %if.then ], [ null, %if.then.7 ], [ %0, %if.end.14 ], [ null, %if.then.12 ]
  ret %struct.asdl_int_seq* %retval.0, !dbg !130
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55}
!llvm.ident = !{!56}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !30)
!1 = !DIFile(filename: "Python/asdl.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !22}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "asdl_seq", file: !6, line: 21, baseType: !7)
!6 = !DIFile(filename: "Include/asdl.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!7 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 18, size: 128, align: 64, elements: !8)
!8 = !{!9, !17}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !7, file: !6, line: 19, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !11, line: 177, baseType: !12)
!11 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 102, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !15, line: 181, baseType: !16)
!15 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !7, file: !6, line: 20, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 64, align: 64, elements: !20)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!20 = !{!21}
!21 = !DISubrange(count: 1)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "asdl_int_seq", file: !6, line: 26, baseType: !24)
!24 = !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 23, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !24, file: !6, line: 24, baseType: !10, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !24, file: !6, line: 25, baseType: !28, size: 32, align: 32, offset: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 32, align: 32, elements: !20)
!29 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!30 = !{!31, !46}
!31 = !DISubprogram(name: "_Py_asdl_seq_new", scope: !1, file: !1, line: 5, type: !32, isLocal: false, isDefinition: true, scopeLine: 6, flags: DIFlagPrototyped, isOptimized: true, function: %struct.asdl_seq* (i64, %struct._arena*)* @_Py_asdl_seq_new, variables: !38)
!32 = !DISubroutineType(types: !33)
!33 = !{!4, !10, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyArena", file: !36, line: 12, baseType: !37)
!36 = !DIFile(filename: "Include/pyarena.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "_arena", file: !36, line: 12, flags: DIFlagFwdDecl)
!38 = !{!39, !40, !41, !42}
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !31, file: !1, line: 5, type: !10)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 2, scope: !31, file: !1, line: 5, type: !34)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !31, file: !1, line: 7, type: !4)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !31, file: !1, line: 8, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 62, baseType: !45)
!44 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!45 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!46 = !DISubprogram(name: "_Py_asdl_int_seq_new", scope: !1, file: !1, line: 36, type: !47, isLocal: false, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: true, function: %struct.asdl_int_seq* (i64, %struct._arena*)* @_Py_asdl_int_seq_new, variables: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!22, !10, !34}
!49 = !{!50, !51, !52, !53}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !46, file: !1, line: 36, type: !10)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arena", arg: 2, scope: !46, file: !1, line: 36, type: !34)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !46, file: !1, line: 38, type: !22)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !46, file: !1, line: 39, type: !43)
!54 = !{i32 2, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!57 = !DIExpression()
!58 = !DILocation(line: 5, column: 29, scope: !31)
!59 = !DILocation(line: 5, column: 44, scope: !31)
!60 = !DILocation(line: 7, column: 15, scope: !31)
!61 = !DILocation(line: 8, column: 17, scope: !31)
!62 = !DILocation(line: 8, column: 40, scope: !31)
!63 = !DILocation(line: 8, column: 12, scope: !31)
!64 = !DILocation(line: 11, column: 14, scope: !65)
!65 = distinct !DILexicalBlock(scope: !31, file: !1, line: 11, column: 9)
!66 = !DILocation(line: 11, column: 18, scope: !65)
!67 = !DILocation(line: 12, column: 30, scope: !65)
!68 = !DILocation(line: 12, column: 15, scope: !65)
!69 = !DILocation(line: 13, column: 9, scope: !70)
!70 = distinct !DILexicalBlock(scope: !65, file: !1, line: 12, column: 66)
!71 = !DILocation(line: 14, column: 9, scope: !70)
!72 = !DILocation(line: 18, column: 11, scope: !73)
!73 = distinct !DILexicalBlock(scope: !31, file: !1, line: 18, column: 9)
!74 = !DILocation(line: 18, column: 9, scope: !31)
!75 = !DILocation(line: 19, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 18, column: 45)
!77 = !DILocation(line: 20, column: 9, scope: !76)
!78 = !DILocation(line: 23, column: 7, scope: !31)
!79 = !DILocation(line: 25, column: 23, scope: !31)
!80 = !DILocation(line: 26, column: 10, scope: !81)
!81 = distinct !DILexicalBlock(scope: !31, file: !1, line: 26, column: 9)
!82 = !DILocation(line: 26, column: 9, scope: !31)
!83 = !DILocation(line: 27, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !81, file: !1, line: 26, column: 15)
!85 = !DILocation(line: 28, column: 9, scope: !84)
!86 = !DILocation(line: 25, column: 11, scope: !31)
!87 = !DILocation(line: 30, column: 5, scope: !31)
!88 = !DILocation(line: 31, column: 10, scope: !31)
!89 = !DILocation(line: 31, column: 15, scope: !31)
!90 = !{!91, !92, i64 0}
!91 = !{!"", !92, i64 0, !93, i64 8}
!92 = !{!"long", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !DILocation(line: 32, column: 5, scope: !31)
!96 = !DILocation(line: 33, column: 1, scope: !31)
!97 = !DILocation(line: 36, column: 33, scope: !46)
!98 = !DILocation(line: 36, column: 48, scope: !46)
!99 = !DILocation(line: 38, column: 19, scope: !46)
!100 = !DILocation(line: 39, column: 17, scope: !46)
!101 = !DILocation(line: 39, column: 40, scope: !46)
!102 = !DILocation(line: 39, column: 12, scope: !46)
!103 = !DILocation(line: 42, column: 14, scope: !104)
!104 = distinct !DILexicalBlock(scope: !46, file: !1, line: 42, column: 9)
!105 = !DILocation(line: 42, column: 18, scope: !104)
!106 = !DILocation(line: 43, column: 30, scope: !104)
!107 = !DILocation(line: 43, column: 15, scope: !104)
!108 = !DILocation(line: 44, column: 13, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 43, column: 66)
!110 = !DILocation(line: 45, column: 13, scope: !109)
!111 = !DILocation(line: 49, column: 11, scope: !112)
!112 = distinct !DILexicalBlock(scope: !46, file: !1, line: 49, column: 9)
!113 = !DILocation(line: 49, column: 9, scope: !46)
!114 = !DILocation(line: 50, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !112, file: !1, line: 49, column: 45)
!116 = !DILocation(line: 51, column: 9, scope: !115)
!117 = !DILocation(line: 54, column: 7, scope: !46)
!118 = !DILocation(line: 56, column: 27, scope: !46)
!119 = !DILocation(line: 57, column: 10, scope: !120)
!120 = distinct !DILexicalBlock(scope: !46, file: !1, line: 57, column: 9)
!121 = !DILocation(line: 57, column: 9, scope: !46)
!122 = !DILocation(line: 58, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 57, column: 15)
!124 = !DILocation(line: 59, column: 9, scope: !123)
!125 = !DILocation(line: 56, column: 11, scope: !46)
!126 = !DILocation(line: 61, column: 5, scope: !46)
!127 = !DILocation(line: 62, column: 10, scope: !46)
!128 = !DILocation(line: 62, column: 15, scope: !46)
!129 = !DILocation(line: 63, column: 5, scope: !46)
!130 = !DILocation(line: 64, column: 1, scope: !46)
