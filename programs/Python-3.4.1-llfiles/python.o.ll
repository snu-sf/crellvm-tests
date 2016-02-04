; ModuleID = 'python.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Fatal Python error: unable to decode the command line argument #%i\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 %argc, i64 0, metadata !17, metadata !27), !dbg !28
  tail call void @llvm.dbg.value(metadata i8** %argv, i64 0, metadata !18, metadata !27), !dbg !29
  %add = add i32 %argc, 1, !dbg !30
  %conv = sext i32 %add to i64, !dbg !31
  %mul = shl nsw i64 %conv, 3, !dbg !32
  %call = tail call i8* @PyMem_RawMalloc(i64 %mul) #4, !dbg !33
  %0 = bitcast i8* %call to i32**, !dbg !34
  tail call void @llvm.dbg.value(metadata i32** %0, i64 0, metadata !19, metadata !27), !dbg !35
  %call4 = tail call i8* @PyMem_RawMalloc(i64 %mul) #4, !dbg !36
  %1 = bitcast i8* %call4 to i32**, !dbg !37
  tail call void @llvm.dbg.value(metadata i32** %1, i64 0, metadata !20, metadata !27), !dbg !38
  %tobool = icmp ne i8* %call, null, !dbg !39
  %tobool5 = icmp ne i8* %call4, null, !dbg !41
  %or.cond = and i1 %tobool, %tobool5, !dbg !43
  br i1 %or.cond, label %if.end, label %if.then, !dbg !43

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !44, !tbaa !46
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %2) #5, !dbg !50
  br label %cleanup, !dbg !51

if.end:                                           ; preds = %entry
  %call7 = tail call i8* @setlocale(i32 6, i8* null) #4, !dbg !52
  %call8 = tail call i8* @_PyMem_RawStrdup(i8* %call7) #4, !dbg !53
  tail call void @llvm.dbg.value(metadata i8* %call8, i64 0, metadata !23, metadata !27), !dbg !54
  %tobool9 = icmp eq i8* %call8, null, !dbg !55
  br i1 %tobool9, label %if.then.10, label %if.end.12, !dbg !57

if.then.10:                                       ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !58, !tbaa !46
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %4) #5, !dbg !60
  br label %cleanup, !dbg !61

if.end.12:                                        ; preds = %if.end
  %call13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #4, !dbg !62
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !27), !dbg !63
  %cmp.85 = icmp sgt i32 %argc, 0, !dbg !64
  %6 = sext i32 %argc to i64, !dbg !67
  br i1 %cmp.85, label %for.body.preheader, label %for.end, !dbg !67

for.body.preheader:                               ; preds = %if.end.12
  br label %for.body, !dbg !68

for.body:                                         ; preds = %for.body.preheader, %if.end.24
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %if.end.24 ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i8*, i8** %argv, i64 %indvars.iv88, !dbg !68
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !68, !tbaa !46
  %call15 = tail call i32* @_Py_char2wchar(i8* %7, i64* null) #4, !dbg !70
  %arrayidx17 = getelementptr i32*, i32** %0, i64 %indvars.iv88, !dbg !71
  store i32* %call15, i32** %arrayidx17, align 8, !dbg !72, !tbaa !46
  %tobool20 = icmp eq i32* %call15, null, !dbg !73
  br i1 %tobool20, label %if.then.21, label %if.end.24, !dbg !75

if.then.21:                                       ; preds = %for.body
  %indvars.iv88.lcssa = phi i64 [ %indvars.iv88, %for.body ]
  %8 = trunc i64 %indvars.iv88.lcssa to i32, !dbg !76
  tail call void @PyMem_RawFree(i8* %call8) #4, !dbg !76
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !78, !tbaa !46
  %add22 = add i32 %8, 1, !dbg !79
  %call23 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %add22) #6, !dbg !80
  br label %cleanup, !dbg !81

if.end.24:                                        ; preds = %for.body
  %arrayidx28 = getelementptr i32*, i32** %1, i64 %indvars.iv88, !dbg !82
  store i32* %call15, i32** %arrayidx28, align 8, !dbg !83, !tbaa !46
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1, !dbg !67
  %cmp = icmp slt i64 %indvars.iv.next89, %6, !dbg !64
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !67

for.end.loopexit:                                 ; preds = %if.end.24
  br label %for.end, !dbg !84

for.end:                                          ; preds = %for.end.loopexit, %if.end.12
  %arrayidx30 = getelementptr i32*, i32** %0, i64 %6, !dbg !84
  store i32* null, i32** %arrayidx30, align 8, !dbg !85, !tbaa !46
  %arrayidx32 = getelementptr i32*, i32** %1, i64 %6, !dbg !86
  store i32* null, i32** %arrayidx32, align 8, !dbg !87, !tbaa !46
  %call33 = tail call i8* @setlocale(i32 6, i8* %call8) #4, !dbg !88
  tail call void @PyMem_RawFree(i8* %call8) #4, !dbg !89
  %call34 = tail call i32 @Py_Main(i32 %argc, i32** %0) #4, !dbg !90
  tail call void @llvm.dbg.value(metadata i32 %call34, i64 0, metadata !22, metadata !27), !dbg !91
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !21, metadata !27), !dbg !63
  br i1 %cmp.85, label %for.body.38.preheader, label %for.end.43, !dbg !92

for.body.38.preheader:                            ; preds = %for.end
  br label %for.body.38, !dbg !94

for.body.38:                                      ; preds = %for.body.38.preheader, %for.body.38
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.38 ], [ 0, %for.body.38.preheader ]
  %arrayidx40 = getelementptr i32*, i32** %1, i64 %indvars.iv, !dbg !94
  %10 = bitcast i32** %arrayidx40 to i8**, !dbg !94
  %11 = load i8*, i8** %10, align 8, !dbg !94, !tbaa !46
  tail call void @PyMem_RawFree(i8* %11) #4, !dbg !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !92
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !92
  %exitcond = icmp eq i32 %lftr.wideiv, %argc, !dbg !92
  br i1 %exitcond, label %for.end.43.loopexit, label %for.body.38, !dbg !92

for.end.43.loopexit:                              ; preds = %for.body.38
  br label %for.end.43, !dbg !98

for.end.43:                                       ; preds = %for.end.43.loopexit, %for.end
  tail call void @PyMem_RawFree(i8* %call) #4, !dbg !98
  tail call void @PyMem_RawFree(i8* %call4) #4, !dbg !99
  br label %cleanup, !dbg !100

cleanup:                                          ; preds = %for.end.43, %if.then.21, %if.then.10, %if.then
  %retval.0 = phi i32 [ 1, %if.then.21 ], [ %call34, %for.end.43 ], [ 1, %if.then.10 ], [ 1, %if.then ]
  ret i32 %retval.0, !dbg !101
}

declare i8* @PyMem_RawMalloc(i64) #1

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #2

declare i8* @_PyMem_RawStrdup(i8*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #2

declare i32* @_Py_char2wchar(i8*, i64*) #1

declare void @PyMem_RawFree(i8*) #1

declare i32 @Py_Main(i32, i32**) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9)
!1 = !DIFile(filename: "./Modules/python.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !7, line: 90, baseType: !8)
!7 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !11, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !16)
!11 = !DISubroutineType(types: !12)
!12 = !{!8, !8, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !21, !22, !23}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !10, file: !1, line: 19, type: !8)
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !10, file: !1, line: 19, type: !13)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_copy", scope: !10, file: !1, line: 21, type: !4)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_copy2", scope: !10, file: !1, line: 23, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !10, file: !1, line: 24, type: !8)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !10, file: !1, line: 24, type: !8)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldloc", scope: !10, file: !1, line: 25, type: !14)
!24 = !{i32 2, !"Dwarf Version", i32 4}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!27 = !DIExpression()
!28 = !DILocation(line: 19, column: 10, scope: !10)
!29 = !DILocation(line: 19, column: 23, scope: !10)
!30 = !DILocation(line: 30, column: 69, scope: !10)
!31 = !DILocation(line: 30, column: 64, scope: !10)
!32 = !DILocation(line: 30, column: 62, scope: !10)
!33 = !DILocation(line: 30, column: 29, scope: !10)
!34 = !DILocation(line: 30, column: 17, scope: !10)
!35 = !DILocation(line: 21, column: 15, scope: !10)
!36 = !DILocation(line: 31, column: 30, scope: !10)
!37 = !DILocation(line: 31, column: 18, scope: !10)
!38 = !DILocation(line: 23, column: 15, scope: !10)
!39 = !DILocation(line: 32, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !10, file: !1, line: 32, column: 9)
!41 = !DILocation(line: 32, column: 24, scope: !42)
!42 = !DILexicalBlockFile(scope: !40, file: !1, discriminator: 1)
!43 = !DILocation(line: 32, column: 20, scope: !40)
!44 = !DILocation(line: 33, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 32, column: 36)
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DILocation(line: 33, column: 9, scope: !45)
!51 = !DILocation(line: 34, column: 9, scope: !45)
!52 = !DILocation(line: 47, column: 31, scope: !10)
!53 = !DILocation(line: 47, column: 14, scope: !10)
!54 = !DILocation(line: 25, column: 11, scope: !10)
!55 = !DILocation(line: 48, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !10, file: !1, line: 48, column: 9)
!57 = !DILocation(line: 48, column: 9, scope: !10)
!58 = !DILocation(line: 49, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 48, column: 18)
!60 = !DILocation(line: 49, column: 9, scope: !59)
!61 = !DILocation(line: 50, column: 9, scope: !59)
!62 = !DILocation(line: 53, column: 5, scope: !10)
!63 = !DILocation(line: 24, column: 9, scope: !10)
!64 = !DILocation(line: 54, column: 19, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 54, column: 5)
!66 = distinct !DILexicalBlock(scope: !10, file: !1, line: 54, column: 5)
!67 = !DILocation(line: 54, column: 5, scope: !66)
!68 = !DILocation(line: 55, column: 39, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 54, column: 32)
!70 = !DILocation(line: 55, column: 24, scope: !69)
!71 = !DILocation(line: 55, column: 9, scope: !69)
!72 = !DILocation(line: 55, column: 22, scope: !69)
!73 = !DILocation(line: 56, column: 14, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 56, column: 13)
!75 = !DILocation(line: 56, column: 13, scope: !69)
!76 = !DILocation(line: 57, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 56, column: 28)
!78 = !DILocation(line: 58, column: 21, scope: !77)
!79 = !DILocation(line: 60, column: 31, scope: !77)
!80 = !DILocation(line: 58, column: 13, scope: !77)
!81 = !DILocation(line: 61, column: 13, scope: !77)
!82 = !DILocation(line: 63, column: 9, scope: !69)
!83 = !DILocation(line: 63, column: 23, scope: !69)
!84 = !DILocation(line: 65, column: 24, scope: !10)
!85 = !DILocation(line: 65, column: 40, scope: !10)
!86 = !DILocation(line: 65, column: 5, scope: !10)
!87 = !DILocation(line: 65, column: 22, scope: !10)
!88 = !DILocation(line: 67, column: 5, scope: !10)
!89 = !DILocation(line: 68, column: 5, scope: !10)
!90 = !DILocation(line: 69, column: 11, scope: !10)
!91 = !DILocation(line: 24, column: 12, scope: !10)
!92 = !DILocation(line: 70, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !10, file: !1, line: 70, column: 5)
!94 = !DILocation(line: 71, column: 23, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 70, column: 32)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 70, column: 5)
!97 = !DILocation(line: 71, column: 9, scope: !95)
!98 = !DILocation(line: 73, column: 5, scope: !10)
!99 = !DILocation(line: 74, column: 5, scope: !10)
!100 = !DILocation(line: 75, column: 5, scope: !10)
!101 = !DILocation(line: 76, column: 1, scope: !10)
