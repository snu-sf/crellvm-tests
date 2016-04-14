; ModuleID = 'programs_new/Python-new/getversion.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_GetVersion.version = internal global [250 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"%.80s (%.80s) %.80s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"3.4.1\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Py_GetVersion() #0 {
entry:
  %call = call i8* @Py_GetBuildInfo(), !dbg !19
  %call1 = call i8* @Py_GetCompiler(), !dbg !20
  %call2 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([250 x i8], [250 x i8]* @Py_GetVersion.version, i32 0, i32 0), i64 250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %call, i8* %call1), !dbg !21
  ret i8* getelementptr inbounds ([250 x i8], [250 x i8]* @Py_GetVersion.version, i32 0, i32 0), !dbg !22
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i8* @Py_GetBuildInfo() #1

declare i8* @Py_GetCompiler() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !11)
!1 = !DIFile(filename: "getversion.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "Py_GetVersion", scope: !5, file: !5, line: 9, type: !6, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @Py_GetVersion, variables: !2)
!5 = !DIFile(filename: "Python/getversion.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DIGlobalVariable(name: "version", scope: !4, file: !5, line: 11, type: !13, isLocal: true, isDefinition: true, variable: [250 x i8]* @Py_GetVersion.version)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2000, align: 8, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 250)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!19 = !DILocation(line: 13, column: 18, scope: !4)
!20 = !DILocation(line: 13, column: 37, scope: !4)
!21 = !DILocation(line: 12, column: 2, scope: !4)
!22 = !DILocation(line: 14, column: 2, scope: !4)
