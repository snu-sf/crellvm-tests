; ModuleID = 'irs-onlybc/python.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"Fatal Python error: unable to decode the command line argument #%i\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %argv_copy = alloca i32**, align 8
  %argv_copy2 = alloca i32**, align 8
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %oldloc = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !18, metadata !32), !dbg !33
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !19, metadata !32), !dbg !36
  %0 = bitcast i32*** %argv_copy to i8*, !dbg !37
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !37
  call void @llvm.dbg.declare(metadata i32*** %argv_copy, metadata !20, metadata !32), !dbg !38
  %1 = bitcast i32*** %argv_copy2 to i8*, !dbg !39
  call void @llvm.lifetime.start(i64 8, i8* %1) #2, !dbg !39
  call void @llvm.dbg.declare(metadata i32*** %argv_copy2, metadata !21, metadata !32), !dbg !40
  %2 = bitcast i32* %i to i8*, !dbg !41
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !32), !dbg !42
  %3 = bitcast i32* %res to i8*, !dbg !41
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %res, metadata !23, metadata !32), !dbg !43
  %4 = bitcast i8** %oldloc to i8*, !dbg !44
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !44
  call void @llvm.dbg.declare(metadata i8** %oldloc, metadata !24, metadata !32), !dbg !45
  %5 = load i32, i32* %argc.addr, align 4, !dbg !46, !tbaa !28
  %add = add i32 %5, 1, !dbg !47
  %conv = sext i32 %add to i64, !dbg !48
  %mul = mul i64 8, %conv, !dbg !49
  %call = call i8* @PyMem_RawMalloc(i64 %mul), !dbg !50
  %6 = bitcast i8* %call to i32**, !dbg !51
  store i32** %6, i32*** %argv_copy, align 8, !dbg !52, !tbaa !34
  %7 = load i32, i32* %argc.addr, align 4, !dbg !53, !tbaa !28
  %add1 = add i32 %7, 1, !dbg !54
  %conv2 = sext i32 %add1 to i64, !dbg !55
  %mul3 = mul i64 8, %conv2, !dbg !56
  %call4 = call i8* @PyMem_RawMalloc(i64 %mul3), !dbg !57
  %8 = bitcast i8* %call4 to i32**, !dbg !58
  store i32** %8, i32*** %argv_copy2, align 8, !dbg !59, !tbaa !34
  %9 = load i32**, i32*** %argv_copy, align 8, !dbg !60, !tbaa !34
  %tobool = icmp ne i32** %9, null, !dbg !60
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !62

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32**, i32*** %argv_copy2, align 8, !dbg !63, !tbaa !34
  %tobool5 = icmp ne i32** %10, null, !dbg !63
  br i1 %tobool5, label %if.end, label %if.then, !dbg !65

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !66, !tbaa !34
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !68
  store i32 1, i32* %retval, !dbg !69
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !69

if.end:                                           ; preds = %lor.lhs.false
  %call7 = call i8* @setlocale(i32 6, i8* null) #2, !dbg !70
  %call8 = call i8* @_PyMem_RawStrdup(i8* %call7), !dbg !71
  store i8* %call8, i8** %oldloc, align 8, !dbg !72, !tbaa !34
  %12 = load i8*, i8** %oldloc, align 8, !dbg !73, !tbaa !34
  %tobool9 = icmp ne i8* %12, null, !dbg !73
  br i1 %tobool9, label %if.end.12, label %if.then.10, !dbg !75

if.then.10:                                       ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !76, !tbaa !34
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !78
  store i32 1, i32* %retval, !dbg !79
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !79

if.end.12:                                        ; preds = %if.end
  %call13 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #2, !dbg !80
  store i32 0, i32* %i, align 4, !dbg !81, !tbaa !28
  br label %for.cond, !dbg !83

for.cond:                                         ; preds = %for.inc, %if.end.12
  %14 = load i32, i32* %i, align 4, !dbg !84, !tbaa !28
  %15 = load i32, i32* %argc.addr, align 4, !dbg !88, !tbaa !28
  %cmp = icmp slt i32 %14, %15, !dbg !89
  br i1 %cmp, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !91, !tbaa !28
  %idxprom = sext i32 %16 to i64, !dbg !93
  %17 = load i8**, i8*** %argv.addr, align 8, !dbg !93, !tbaa !34
  %arrayidx = getelementptr i8*, i8** %17, i64 %idxprom, !dbg !93
  %18 = load i8*, i8** %arrayidx, align 8, !dbg !93, !tbaa !34
  %call15 = call i32* @_Py_char2wchar(i8* %18, i64* null), !dbg !94
  %19 = load i32, i32* %i, align 4, !dbg !95, !tbaa !28
  %idxprom16 = sext i32 %19 to i64, !dbg !96
  %20 = load i32**, i32*** %argv_copy, align 8, !dbg !96, !tbaa !34
  %arrayidx17 = getelementptr i32*, i32** %20, i64 %idxprom16, !dbg !96
  store i32* %call15, i32** %arrayidx17, align 8, !dbg !97, !tbaa !34
  %21 = load i32, i32* %i, align 4, !dbg !98, !tbaa !28
  %idxprom18 = sext i32 %21 to i64, !dbg !100
  %22 = load i32**, i32*** %argv_copy, align 8, !dbg !100, !tbaa !34
  %arrayidx19 = getelementptr i32*, i32** %22, i64 %idxprom18, !dbg !100
  %23 = load i32*, i32** %arrayidx19, align 8, !dbg !100, !tbaa !34
  %tobool20 = icmp ne i32* %23, null, !dbg !100
  br i1 %tobool20, label %if.end.24, label %if.then.21, !dbg !101

if.then.21:                                       ; preds = %for.body
  %24 = load i8*, i8** %oldloc, align 8, !dbg !102, !tbaa !34
  call void @PyMem_RawFree(i8* %24), !dbg !104
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !105, !tbaa !34
  %26 = load i32, i32* %i, align 4, !dbg !106, !tbaa !28
  %add22 = add i32 %26, 1, !dbg !107
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i32 0, i32 0), i32 %add22), !dbg !108
  store i32 1, i32* %retval, !dbg !109
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !109

if.end.24:                                        ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !110, !tbaa !28
  %idxprom25 = sext i32 %27 to i64, !dbg !111
  %28 = load i32**, i32*** %argv_copy, align 8, !dbg !111, !tbaa !34
  %arrayidx26 = getelementptr i32*, i32** %28, i64 %idxprom25, !dbg !111
  %29 = load i32*, i32** %arrayidx26, align 8, !dbg !111, !tbaa !34
  %30 = load i32, i32* %i, align 4, !dbg !112, !tbaa !28
  %idxprom27 = sext i32 %30 to i64, !dbg !113
  %31 = load i32**, i32*** %argv_copy2, align 8, !dbg !113, !tbaa !34
  %arrayidx28 = getelementptr i32*, i32** %31, i64 %idxprom27, !dbg !113
  store i32* %29, i32** %arrayidx28, align 8, !dbg !114, !tbaa !34
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %if.end.24
  %32 = load i32, i32* %i, align 4, !dbg !116, !tbaa !28
  %inc = add i32 %32, 1, !dbg !116
  store i32 %inc, i32* %i, align 4, !dbg !116, !tbaa !28
  br label %for.cond, !dbg !117

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %argc.addr, align 4, !dbg !118, !tbaa !28
  %idxprom29 = sext i32 %33 to i64, !dbg !119
  %34 = load i32**, i32*** %argv_copy, align 8, !dbg !119, !tbaa !34
  %arrayidx30 = getelementptr i32*, i32** %34, i64 %idxprom29, !dbg !119
  store i32* null, i32** %arrayidx30, align 8, !dbg !120, !tbaa !34
  %35 = load i32, i32* %argc.addr, align 4, !dbg !121, !tbaa !28
  %idxprom31 = sext i32 %35 to i64, !dbg !122
  %36 = load i32**, i32*** %argv_copy2, align 8, !dbg !122, !tbaa !34
  %arrayidx32 = getelementptr i32*, i32** %36, i64 %idxprom31, !dbg !122
  store i32* null, i32** %arrayidx32, align 8, !dbg !123, !tbaa !34
  %37 = load i8*, i8** %oldloc, align 8, !dbg !124, !tbaa !34
  %call33 = call i8* @setlocale(i32 6, i8* %37) #2, !dbg !125
  %38 = load i8*, i8** %oldloc, align 8, !dbg !126, !tbaa !34
  call void @PyMem_RawFree(i8* %38), !dbg !127
  %39 = load i32, i32* %argc.addr, align 4, !dbg !128, !tbaa !28
  %40 = load i32**, i32*** %argv_copy, align 8, !dbg !129, !tbaa !34
  %call34 = call i32 @Py_Main(i32 %39, i32** %40), !dbg !130
  store i32 %call34, i32* %res, align 4, !dbg !131, !tbaa !28
  store i32 0, i32* %i, align 4, !dbg !132, !tbaa !28
  br label %for.cond.35, !dbg !134

for.cond.35:                                      ; preds = %for.inc.41, %for.end
  %41 = load i32, i32* %i, align 4, !dbg !135, !tbaa !28
  %42 = load i32, i32* %argc.addr, align 4, !dbg !139, !tbaa !28
  %cmp36 = icmp slt i32 %41, %42, !dbg !140
  br i1 %cmp36, label %for.body.38, label %for.end.43, !dbg !141

for.body.38:                                      ; preds = %for.cond.35
  %43 = load i32, i32* %i, align 4, !dbg !142, !tbaa !28
  %idxprom39 = sext i32 %43 to i64, !dbg !144
  %44 = load i32**, i32*** %argv_copy2, align 8, !dbg !144, !tbaa !34
  %arrayidx40 = getelementptr i32*, i32** %44, i64 %idxprom39, !dbg !144
  %45 = load i32*, i32** %arrayidx40, align 8, !dbg !144, !tbaa !34
  %46 = bitcast i32* %45 to i8*, !dbg !144
  call void @PyMem_RawFree(i8* %46), !dbg !145
  br label %for.inc.41, !dbg !146

for.inc.41:                                       ; preds = %for.body.38
  %47 = load i32, i32* %i, align 4, !dbg !147, !tbaa !28
  %inc42 = add i32 %47, 1, !dbg !147
  store i32 %inc42, i32* %i, align 4, !dbg !147, !tbaa !28
  br label %for.cond.35, !dbg !148

for.end.43:                                       ; preds = %for.cond.35
  %48 = load i32**, i32*** %argv_copy, align 8, !dbg !149, !tbaa !34
  %49 = bitcast i32** %48 to i8*, !dbg !149
  call void @PyMem_RawFree(i8* %49), !dbg !150
  %50 = load i32**, i32*** %argv_copy2, align 8, !dbg !151, !tbaa !34
  %51 = bitcast i32** %50 to i8*, !dbg !151
  call void @PyMem_RawFree(i8* %51), !dbg !152
  %52 = load i32, i32* %res, align 4, !dbg !153, !tbaa !28
  store i32 %52, i32* %retval, !dbg !154
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !154

cleanup:                                          ; preds = %for.end.43, %if.then.21, %if.then.10, %if.then
  %53 = bitcast i8** %oldloc to i8*, !dbg !155
  call void @llvm.lifetime.end(i64 8, i8* %53) #2, !dbg !155
  %54 = bitcast i32* %res to i8*, !dbg !155
  call void @llvm.lifetime.end(i64 4, i8* %54) #2, !dbg !155
  %55 = bitcast i32* %i to i8*, !dbg !155
  call void @llvm.lifetime.end(i64 4, i8* %55) #2, !dbg !155
  %56 = bitcast i32*** %argv_copy2 to i8*, !dbg !155
  call void @llvm.lifetime.end(i64 8, i8* %56) #2, !dbg !155
  %57 = bitcast i32*** %argv_copy to i8*, !dbg !155
  call void @llvm.lifetime.end(i64 8, i8* %57) #2, !dbg !155
  %58 = load i32, i32* %retval, !dbg !155
  ret i32 %58, !dbg !155
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i8* @PyMem_RawMalloc(i64) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i8* @_PyMem_RawStrdup(i8*) #3

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #4

declare i32* @_Py_char2wchar(i8*, i64*) #3

declare void @PyMem_RawFree(i8*) #3

declare i32 @Py_Main(i32, i32**) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !9)
!1 = !DIFile(filename: "python.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !7, line: 90, baseType: !8)
!7 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!9 = !{!10}
!10 = !DISubprogram(name: "main", scope: !11, file: !11, line: 19, type: !12, isLocal: false, isDefinition: true, scopeLine: 20, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i8**)* @main, variables: !17)
!11 = !DIFile(filename: "./Modules/python.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DISubroutineType(types: !13)
!13 = !{!8, !8, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argc", arg: 1, scope: !10, file: !11, line: 19, type: !8)
!19 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "argv", arg: 2, scope: !10, file: !11, line: 19, type: !14)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_copy", scope: !10, file: !11, line: 21, type: !4)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "argv_copy2", scope: !10, file: !11, line: 23, type: !4)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !10, file: !11, line: 24, type: !8)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !10, file: !11, line: 24, type: !8)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldloc", scope: !10, file: !11, line: 25, type: !15)
!25 = !{i32 2, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DIExpression()
!33 = !DILocation(line: 19, column: 10, scope: !10)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !30, i64 0}
!36 = !DILocation(line: 19, column: 23, scope: !10)
!37 = !DILocation(line: 21, column: 5, scope: !10)
!38 = !DILocation(line: 21, column: 15, scope: !10)
!39 = !DILocation(line: 23, column: 5, scope: !10)
!40 = !DILocation(line: 23, column: 15, scope: !10)
!41 = !DILocation(line: 24, column: 5, scope: !10)
!42 = !DILocation(line: 24, column: 9, scope: !10)
!43 = !DILocation(line: 24, column: 12, scope: !10)
!44 = !DILocation(line: 25, column: 5, scope: !10)
!45 = !DILocation(line: 25, column: 11, scope: !10)
!46 = !DILocation(line: 30, column: 65, scope: !10)
!47 = !DILocation(line: 30, column: 69, scope: !10)
!48 = !DILocation(line: 30, column: 64, scope: !10)
!49 = !DILocation(line: 30, column: 62, scope: !10)
!50 = !DILocation(line: 30, column: 29, scope: !10)
!51 = !DILocation(line: 30, column: 17, scope: !10)
!52 = !DILocation(line: 30, column: 15, scope: !10)
!53 = !DILocation(line: 31, column: 66, scope: !10)
!54 = !DILocation(line: 31, column: 70, scope: !10)
!55 = !DILocation(line: 31, column: 65, scope: !10)
!56 = !DILocation(line: 31, column: 63, scope: !10)
!57 = !DILocation(line: 31, column: 30, scope: !10)
!58 = !DILocation(line: 31, column: 18, scope: !10)
!59 = !DILocation(line: 31, column: 16, scope: !10)
!60 = !DILocation(line: 32, column: 10, scope: !61)
!61 = distinct !DILexicalBlock(scope: !10, file: !11, line: 32, column: 9)
!62 = !DILocation(line: 32, column: 20, scope: !61)
!63 = !DILocation(line: 32, column: 24, scope: !64)
!64 = !DILexicalBlockFile(scope: !61, file: !11, discriminator: 1)
!65 = !DILocation(line: 32, column: 9, scope: !10)
!66 = !DILocation(line: 33, column: 17, scope: !67)
!67 = distinct !DILexicalBlock(scope: !61, file: !11, line: 32, column: 36)
!68 = !DILocation(line: 33, column: 9, scope: !67)
!69 = !DILocation(line: 34, column: 9, scope: !67)
!70 = !DILocation(line: 47, column: 31, scope: !10)
!71 = !DILocation(line: 47, column: 14, scope: !10)
!72 = !DILocation(line: 47, column: 12, scope: !10)
!73 = !DILocation(line: 48, column: 10, scope: !74)
!74 = distinct !DILexicalBlock(scope: !10, file: !11, line: 48, column: 9)
!75 = !DILocation(line: 48, column: 9, scope: !10)
!76 = !DILocation(line: 49, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !11, line: 48, column: 18)
!78 = !DILocation(line: 49, column: 9, scope: !77)
!79 = !DILocation(line: 50, column: 9, scope: !77)
!80 = !DILocation(line: 53, column: 5, scope: !10)
!81 = !DILocation(line: 54, column: 12, scope: !82)
!82 = distinct !DILexicalBlock(scope: !10, file: !11, line: 54, column: 5)
!83 = !DILocation(line: 54, column: 10, scope: !82)
!84 = !DILocation(line: 54, column: 17, scope: !85)
!85 = !DILexicalBlockFile(scope: !86, file: !11, discriminator: 2)
!86 = !DILexicalBlockFile(scope: !87, file: !11, discriminator: 1)
!87 = distinct !DILexicalBlock(scope: !82, file: !11, line: 54, column: 5)
!88 = !DILocation(line: 54, column: 21, scope: !87)
!89 = !DILocation(line: 54, column: 19, scope: !87)
!90 = !DILocation(line: 54, column: 5, scope: !82)
!91 = !DILocation(line: 55, column: 44, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !11, line: 54, column: 32)
!93 = !DILocation(line: 55, column: 39, scope: !92)
!94 = !DILocation(line: 55, column: 24, scope: !92)
!95 = !DILocation(line: 55, column: 19, scope: !92)
!96 = !DILocation(line: 55, column: 9, scope: !92)
!97 = !DILocation(line: 55, column: 22, scope: !92)
!98 = !DILocation(line: 56, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !11, line: 56, column: 13)
!100 = !DILocation(line: 56, column: 14, scope: !99)
!101 = !DILocation(line: 56, column: 13, scope: !92)
!102 = !DILocation(line: 57, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !99, file: !11, line: 56, column: 28)
!104 = !DILocation(line: 57, column: 13, scope: !103)
!105 = !DILocation(line: 58, column: 21, scope: !103)
!106 = !DILocation(line: 60, column: 29, scope: !103)
!107 = !DILocation(line: 60, column: 31, scope: !103)
!108 = !DILocation(line: 58, column: 13, scope: !103)
!109 = !DILocation(line: 61, column: 13, scope: !103)
!110 = !DILocation(line: 63, column: 35, scope: !92)
!111 = !DILocation(line: 63, column: 25, scope: !92)
!112 = !DILocation(line: 63, column: 20, scope: !92)
!113 = !DILocation(line: 63, column: 9, scope: !92)
!114 = !DILocation(line: 63, column: 23, scope: !92)
!115 = !DILocation(line: 64, column: 5, scope: !92)
!116 = !DILocation(line: 54, column: 28, scope: !87)
!117 = !DILocation(line: 54, column: 5, scope: !87)
!118 = !DILocation(line: 65, column: 34, scope: !10)
!119 = !DILocation(line: 65, column: 24, scope: !10)
!120 = !DILocation(line: 65, column: 40, scope: !10)
!121 = !DILocation(line: 65, column: 16, scope: !10)
!122 = !DILocation(line: 65, column: 5, scope: !10)
!123 = !DILocation(line: 65, column: 22, scope: !10)
!124 = !DILocation(line: 67, column: 18, scope: !10)
!125 = !DILocation(line: 67, column: 5, scope: !10)
!126 = !DILocation(line: 68, column: 19, scope: !10)
!127 = !DILocation(line: 68, column: 5, scope: !10)
!128 = !DILocation(line: 69, column: 19, scope: !10)
!129 = !DILocation(line: 69, column: 25, scope: !10)
!130 = !DILocation(line: 69, column: 11, scope: !10)
!131 = !DILocation(line: 69, column: 9, scope: !10)
!132 = !DILocation(line: 70, column: 12, scope: !133)
!133 = distinct !DILexicalBlock(scope: !10, file: !11, line: 70, column: 5)
!134 = !DILocation(line: 70, column: 10, scope: !133)
!135 = !DILocation(line: 70, column: 17, scope: !136)
!136 = !DILexicalBlockFile(scope: !137, file: !11, discriminator: 2)
!137 = !DILexicalBlockFile(scope: !138, file: !11, discriminator: 1)
!138 = distinct !DILexicalBlock(scope: !133, file: !11, line: 70, column: 5)
!139 = !DILocation(line: 70, column: 21, scope: !138)
!140 = !DILocation(line: 70, column: 19, scope: !138)
!141 = !DILocation(line: 70, column: 5, scope: !133)
!142 = !DILocation(line: 71, column: 34, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !11, line: 70, column: 32)
!144 = !DILocation(line: 71, column: 23, scope: !143)
!145 = !DILocation(line: 71, column: 9, scope: !143)
!146 = !DILocation(line: 72, column: 5, scope: !143)
!147 = !DILocation(line: 70, column: 28, scope: !138)
!148 = !DILocation(line: 70, column: 5, scope: !138)
!149 = !DILocation(line: 73, column: 19, scope: !10)
!150 = !DILocation(line: 73, column: 5, scope: !10)
!151 = !DILocation(line: 74, column: 19, scope: !10)
!152 = !DILocation(line: 74, column: 5, scope: !10)
!153 = !DILocation(line: 75, column: 12, scope: !10)
!154 = !DILocation(line: 75, column: 5, scope: !10)
!155 = !DILocation(line: 76, column: 1, scope: !10)
