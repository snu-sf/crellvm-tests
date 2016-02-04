; ModuleID = 'getopt.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_PyOS_opterr = global i32 1, align 4
@_PyOS_optind = global i32 1, align 4
@_PyOS_optarg = global i32* null, align 8
@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@opt_ptr = internal unnamed_addr global i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [3 x i32] [i32 45, i32 45, i32 0], align 4
@.str.2 = private unnamed_addr constant [7 x i32] [i32 45, i32 45, i32 104, i32 101, i32 108, i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [10 x i32] [i32 45, i32 45, i32 118, i32 101, i32 114, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"-J is reserved for Jython\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Unknown option: -%c\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Argument expected for the -%c option\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @_PyOS_ResetGetOpt() #0 {
entry:
  store i32 1, i32* @_PyOS_opterr, align 4, !dbg !32, !tbaa !33
  store i32 1, i32* @_PyOS_optind, align 4, !dbg !37, !tbaa !33
  store i32* null, i32** @_PyOS_optarg, align 8, !dbg !38, !tbaa !39
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i64 0, i64 0), i32** @opt_ptr, align 8, !dbg !41, !tbaa !39
  ret void, !dbg !42
}

; Function Attrs: nounwind uwtable
define i32 @_PyOS_GetOpt(i32 %argc, i32** nocapture readonly %argv, i32* readonly %optstring) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !19, metadata !43), !dbg !44
  tail call void @llvm.dbg.value(metadata i32** %argv, i64 0, metadata !20, metadata !43), !dbg !45
  tail call void @llvm.dbg.value(metadata i32* %optstring, i64 0, metadata !21, metadata !43), !dbg !46
  %0 = load i32*, i32** @opt_ptr, align 8, !dbg !47, !tbaa !39
  %1 = load i32, i32* %0, align 4, !dbg !49, !tbaa !33
  %cmp = icmp eq i32 %1, 0, !dbg !50
  br i1 %cmp, label %if.then, label %if.end.37, !dbg !51

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @_PyOS_optind, align 4, !dbg !52, !tbaa !33
  %cmp1 = icmp slt i32 %2, %argc, !dbg !55
  br i1 %cmp1, label %if.else, label %cleanup, !dbg !56

if.else:                                          ; preds = %if.then
  %idxprom = sext i32 %2 to i64, !dbg !57
  %arrayidx = getelementptr i32*, i32** %argv, i64 %idxprom, !dbg !57
  %3 = load i32*, i32** %arrayidx, align 8, !dbg !59, !tbaa !39
  %4 = load i32, i32* %3, align 4, !dbg !57, !tbaa !33
  %cmp4 = icmp eq i32 %4, 45, !dbg !60
  br i1 %cmp4, label %lor.lhs.false, label %cleanup, !dbg !61

lor.lhs.false:                                    ; preds = %if.else
  %arrayidx7 = getelementptr i32, i32* %3, i64 1, !dbg !62
  %5 = load i32, i32* %arrayidx7, align 4, !dbg !62, !tbaa !33
  %cmp8 = icmp eq i32 %5, 0, !dbg !63
  br i1 %cmp8, label %cleanup, label %if.else.10, !dbg !64

if.else.10:                                       ; preds = %lor.lhs.false
  %call = tail call i32 @wcscmp(i32* %3, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.1, i64 0, i64 0)) #5, !dbg !65
  %cmp13 = icmp eq i32 %call, 0, !dbg !67
  br i1 %cmp13, label %if.then.14, label %if.else.15, !dbg !68

if.then.14:                                       ; preds = %if.else.10
  %inc = add i32 %2, 1, !dbg !69
  store i32 %inc, i32* @_PyOS_optind, align 4, !dbg !69, !tbaa !33
  br label %cleanup, !dbg !71

if.else.15:                                       ; preds = %if.else.10
  %call18 = tail call i32 @wcscmp(i32* %3, i32* getelementptr inbounds ([7 x i32], [7 x i32]* @.str.2, i64 0, i64 0)) #5, !dbg !72
  %cmp19 = icmp eq i32 %call18, 0, !dbg !74
  br i1 %cmp19, label %if.then.20, label %if.else.22, !dbg !75

if.then.20:                                       ; preds = %if.else.15
  %inc21 = add i32 %2, 1, !dbg !76
  store i32 %inc21, i32* @_PyOS_optind, align 4, !dbg !76, !tbaa !33
  br label %cleanup, !dbg !78

if.else.22:                                       ; preds = %if.else.15
  %call25 = tail call i32 @wcscmp(i32* %3, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @.str.3, i64 0, i64 0)) #5, !dbg !79
  %cmp26 = icmp eq i32 %call25, 0, !dbg !81
  %inc28 = add i32 %2, 1, !dbg !82
  store i32 %inc28, i32* @_PyOS_optind, align 4, !dbg !82, !tbaa !33
  br i1 %cmp26, label %cleanup, label %if.end.32, !dbg !84

if.end.32:                                        ; preds = %if.else.22
  store i32* %arrayidx7, i32** @opt_ptr, align 8, !dbg !85, !tbaa !39
  %.pre = load i32, i32* %arrayidx7, align 4, !dbg !86, !tbaa !33
  br label %if.end.37, !dbg !88

if.end.37:                                        ; preds = %if.end.32, %entry
  %6 = phi i32 [ %.pre, %if.end.32 ], [ %1, %entry ], !dbg !86
  %7 = phi i32* [ %arrayidx7, %if.end.32 ], [ %0, %entry ], !dbg !89
  %incdec.ptr = getelementptr i32, i32* %7, i64 1, !dbg !89
  store i32* %incdec.ptr, i32** @opt_ptr, align 8, !dbg !89, !tbaa !39
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !23, metadata !43), !dbg !90
  switch i32 %6, label %if.end.46 [
    i32 0, label %cleanup
    i32 74, label %if.then.42
  ], !dbg !91

if.then.42:                                       ; preds = %if.end.37
  %8 = load i32, i32* @_PyOS_opterr, align 4, !dbg !92, !tbaa !33
  %tobool = icmp eq i32 %8, 0, !dbg !92
  br i1 %tobool, label %cleanup, label %if.then.43, !dbg !96

if.then.43:                                       ; preds = %if.then.42
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !97, !tbaa !39
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %9) #6, !dbg !98
  br label %cleanup, !dbg !98

if.end.46:                                        ; preds = %if.end.37
  %call47 = tail call i32* @wcschr(i32* %optstring, i32 %6) #5, !dbg !99
  tail call void @llvm.dbg.value(metadata i32* %call47, i64 0, metadata !22, metadata !43), !dbg !101
  %cmp48 = icmp eq i32* %call47, null, !dbg !102
  br i1 %cmp48, label %if.then.49, label %if.end.55, !dbg !103

if.then.49:                                       ; preds = %if.end.46
  %11 = load i32, i32* @_PyOS_opterr, align 4, !dbg !104, !tbaa !33
  %tobool50 = icmp eq i32 %11, 0, !dbg !104
  br i1 %tobool50, label %cleanup, label %if.then.51, !dbg !107

if.then.51:                                       ; preds = %if.then.49
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !108, !tbaa !39
  %sext92 = shl i32 %6, 24, !dbg !109
  %conv52 = ashr exact i32 %sext92, 24, !dbg !109
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %conv52) #7, !dbg !110
  br label %cleanup, !dbg !110

if.end.55:                                        ; preds = %if.end.46
  %add.ptr = getelementptr i32, i32* %call47, i64 1, !dbg !111
  %13 = load i32, i32* %add.ptr, align 4, !dbg !113, !tbaa !33
  %cmp56 = icmp eq i32 %13, 58, !dbg !114
  br i1 %cmp56, label %if.then.58, label %cleanup, !dbg !115

if.then.58:                                       ; preds = %if.end.55
  %14 = load i32, i32* %incdec.ptr, align 4, !dbg !116, !tbaa !33
  %cmp59 = icmp eq i32 %14, 0, !dbg !119
  br i1 %cmp59, label %if.else.62, label %if.then.61, !dbg !120

if.then.61:                                       ; preds = %if.then.58
  store i32* %incdec.ptr, i32** @_PyOS_optarg, align 8, !dbg !121, !tbaa !39
  store i32* getelementptr inbounds ([1 x i32], [1 x i32]* @.str, i64 0, i64 0), i32** @opt_ptr, align 8, !dbg !123, !tbaa !39
  br label %cleanup, !dbg !124

if.else.62:                                       ; preds = %if.then.58
  %15 = load i32, i32* @_PyOS_optind, align 4, !dbg !125, !tbaa !33
  %cmp63 = icmp slt i32 %15, %argc, !dbg !128
  br i1 %cmp63, label %if.end.72, label %if.then.65, !dbg !129

if.then.65:                                       ; preds = %if.else.62
  %16 = load i32, i32* @_PyOS_opterr, align 4, !dbg !130, !tbaa !33
  %tobool66 = icmp eq i32 %16, 0, !dbg !130
  br i1 %tobool66, label %cleanup, label %if.then.67, !dbg !133

if.then.67:                                       ; preds = %if.then.65
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !134, !tbaa !39
  %sext = shl i32 %6, 24, !dbg !135
  %conv69 = ashr exact i32 %sext, 24, !dbg !135
  %call70 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %conv69) #7, !dbg !136
  br label %cleanup, !dbg !136

if.end.72:                                        ; preds = %if.else.62
  %inc73 = add i32 %15, 1, !dbg !137
  store i32 %inc73, i32* @_PyOS_optind, align 4, !dbg !137, !tbaa !33
  %idxprom74 = sext i32 %15 to i64, !dbg !138
  %arrayidx75 = getelementptr i32*, i32** %argv, i64 %idxprom74, !dbg !138
  %18 = bitcast i32** %arrayidx75 to i64*, !dbg !138
  %19 = load i64, i64* %18, align 8, !dbg !138, !tbaa !39
  store i64 %19, i64* bitcast (i32** @_PyOS_optarg to i64*), align 8, !dbg !139, !tbaa !39
  br label %cleanup

cleanup:                                          ; preds = %if.end.55, %if.end.72, %if.then.61, %if.then.67, %if.then.65, %if.then.51, %if.then.49, %if.then.43, %if.then.42, %if.end.37, %if.else.22, %lor.lhs.false, %if.else, %if.then, %if.then.20, %if.then.14
  %retval.0 = phi i32 [ -1, %if.then.14 ], [ 104, %if.then.20 ], [ -1, %if.then ], [ -1, %if.else ], [ -1, %lor.lhs.false ], [ 86, %if.else.22 ], [ -1, %if.end.37 ], [ 95, %if.then.42 ], [ 95, %if.then.43 ], [ 95, %if.then.49 ], [ 95, %if.then.51 ], [ 95, %if.then.65 ], [ 95, %if.then.67 ], [ %6, %if.then.61 ], [ %6, %if.end.72 ], [ %6, %if.end.55 ]
  ret i32 %retval.0, !dbg !140
}

; Function Attrs: nounwind readonly
declare i32 @wcscmp(i32*, i32*) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind readonly
declare i32* @wcschr(i32*, i32) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !24)
!1 = !DIFile(filename: "Python/getopt.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !{!7, !10}
!7 = !DISubprogram(name: "_PyOS_ResetGetOpt", scope: !1, file: !1, line: 46, type: !8, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyOS_ResetGetOpt, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DISubprogram(name: "_PyOS_GetOpt", scope: !1, file: !1, line: 54, type: !11, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32**, i32*)* @_PyOS_GetOpt, variables: !18)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14, !15}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !17, line: 90, baseType: !13)
!17 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!18 = !{!19, !20, !21, !22, !23}
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !10, file: !1, line: 54, type: !13)
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !10, file: !1, line: 54, type: !14)
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "optstring", arg: 3, scope: !10, file: !1, line: 54, type: !15)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !10, file: !1, line: 56, type: !15)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "option", scope: !10, file: !1, line: 57, type: !16)
!24 = !{!25, !26, !27, !28}
!25 = !DIGlobalVariable(name: "_PyOS_opterr", scope: !0, file: !1, line: 40, type: !13, isLocal: false, isDefinition: true, variable: i32* @_PyOS_opterr)
!26 = !DIGlobalVariable(name: "_PyOS_optind", scope: !0, file: !1, line: 41, type: !13, isLocal: false, isDefinition: true, variable: i32* @_PyOS_optind)
!27 = !DIGlobalVariable(name: "_PyOS_optarg", scope: !0, file: !1, line: 42, type: !15, isLocal: false, isDefinition: true, variable: i32** @_PyOS_optarg)
!28 = !DIGlobalVariable(name: "opt_ptr", scope: !0, file: !1, line: 44, type: !15, isLocal: true, isDefinition: true, variable: i32** @opt_ptr)
!29 = !{i32 2, !"Dwarf Version", i32 4}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!32 = !DILocation(line: 48, column: 18, scope: !7)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 49, column: 18, scope: !7)
!38 = !DILocation(line: 50, column: 18, scope: !7)
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !35, i64 0}
!41 = !DILocation(line: 51, column: 13, scope: !7)
!42 = !DILocation(line: 52, column: 1, scope: !7)
!43 = !DIExpression()
!44 = !DILocation(line: 54, column: 22, scope: !10)
!45 = !DILocation(line: 54, column: 38, scope: !10)
!46 = !DILocation(line: 54, column: 53, scope: !10)
!47 = !DILocation(line: 59, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !10, file: !1, line: 59, column: 9)
!49 = !DILocation(line: 59, column: 9, scope: !48)
!50 = !DILocation(line: 59, column: 18, scope: !48)
!51 = !DILocation(line: 59, column: 9, scope: !10)
!52 = !DILocation(line: 61, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 61, column: 13)
!54 = distinct !DILexicalBlock(scope: !48, file: !1, line: 59, column: 27)
!55 = !DILocation(line: 61, column: 26, scope: !53)
!56 = !DILocation(line: 61, column: 13, scope: !54)
!57 = !DILocation(line: 70, column: 18, scope: !58)
!58 = distinct !DILexicalBlock(scope: !53, file: !1, line: 70, column: 18)
!59 = !DILocation(line: 90, column: 20, scope: !54)
!60 = !DILocation(line: 70, column: 40, scope: !58)
!61 = !DILocation(line: 70, column: 48, scope: !58)
!62 = !DILocation(line: 71, column: 18, scope: !58)
!63 = !DILocation(line: 71, column: 40, scope: !58)
!64 = !DILocation(line: 70, column: 18, scope: !53)
!65 = !DILocation(line: 74, column: 18, scope: !66)
!66 = distinct !DILexicalBlock(scope: !58, file: !1, line: 74, column: 18)
!67 = !DILocation(line: 74, column: 52, scope: !66)
!68 = !DILocation(line: 74, column: 18, scope: !58)
!69 = !DILocation(line: 75, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 74, column: 58)
!71 = !DILocation(line: 76, column: 13, scope: !70)
!72 = !DILocation(line: 79, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !1, line: 79, column: 18)
!74 = !DILocation(line: 79, column: 56, scope: !73)
!75 = !DILocation(line: 79, column: 18, scope: !66)
!76 = !DILocation(line: 80, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 79, column: 62)
!78 = !DILocation(line: 81, column: 13, scope: !77)
!79 = !DILocation(line: 84, column: 18, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 84, column: 18)
!81 = !DILocation(line: 84, column: 59, scope: !80)
!82 = !DILocation(line: 85, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 84, column: 65)
!84 = !DILocation(line: 84, column: 18, scope: !73)
!85 = !DILocation(line: 90, column: 17, scope: !54)
!86 = !DILocation(line: 93, column: 19, scope: !87)
!87 = distinct !DILexicalBlock(scope: !10, file: !1, line: 93, column: 9)
!88 = !DILocation(line: 91, column: 5, scope: !54)
!89 = !DILocation(line: 93, column: 27, scope: !87)
!90 = !DILocation(line: 57, column: 13, scope: !10)
!91 = !DILocation(line: 93, column: 9, scope: !10)
!92 = !DILocation(line: 97, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 97, column: 13)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 96, column: 24)
!95 = distinct !DILexicalBlock(scope: !10, file: !1, line: 96, column: 9)
!96 = !DILocation(line: 97, column: 13, scope: !94)
!97 = !DILocation(line: 98, column: 21, scope: !93)
!98 = !DILocation(line: 98, column: 13, scope: !93)
!99 = !DILocation(line: 102, column: 16, scope: !100)
!100 = distinct !DILexicalBlock(scope: !10, file: !1, line: 102, column: 9)
!101 = !DILocation(line: 56, column: 14, scope: !10)
!102 = !DILocation(line: 102, column: 43, scope: !100)
!103 = !DILocation(line: 102, column: 9, scope: !10)
!104 = !DILocation(line: 103, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 103, column: 13)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 102, column: 52)
!107 = !DILocation(line: 103, column: 13, scope: !106)
!108 = !DILocation(line: 104, column: 21, scope: !105)
!109 = !DILocation(line: 104, column: 54, scope: !105)
!110 = !DILocation(line: 104, column: 13, scope: !105)
!111 = !DILocation(line: 108, column: 15, scope: !112)
!112 = distinct !DILexicalBlock(scope: !10, file: !1, line: 108, column: 9)
!113 = !DILocation(line: 108, column: 9, scope: !112)
!114 = !DILocation(line: 108, column: 20, scope: !112)
!115 = !DILocation(line: 108, column: 9, scope: !10)
!116 = !DILocation(line: 109, column: 13, scope: !117)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 109, column: 13)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 108, column: 29)
!119 = !DILocation(line: 109, column: 22, scope: !117)
!120 = !DILocation(line: 109, column: 13, scope: !118)
!121 = !DILocation(line: 110, column: 27, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 109, column: 32)
!123 = !DILocation(line: 111, column: 21, scope: !122)
!124 = !DILocation(line: 112, column: 9, scope: !122)
!125 = !DILocation(line: 115, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 115, column: 17)
!127 = distinct !DILexicalBlock(scope: !117, file: !1, line: 114, column: 14)
!128 = !DILocation(line: 115, column: 30, scope: !126)
!129 = !DILocation(line: 115, column: 17, scope: !127)
!130 = !DILocation(line: 116, column: 21, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 116, column: 21)
!132 = distinct !DILexicalBlock(scope: !126, file: !1, line: 115, column: 39)
!133 = !DILocation(line: 116, column: 21, scope: !132)
!134 = !DILocation(line: 117, column: 29, scope: !131)
!135 = !DILocation(line: 118, column: 67, scope: !131)
!136 = !DILocation(line: 117, column: 21, scope: !131)
!137 = !DILocation(line: 122, column: 45, scope: !127)
!138 = !DILocation(line: 122, column: 28, scope: !127)
!139 = !DILocation(line: 122, column: 26, scope: !127)
!140 = !DILocation(line: 127, column: 1, scope: !10)
