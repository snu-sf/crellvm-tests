; ModuleID = 'getversion.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_GetVersion.version = internal global [250 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"%.80s (%.80s) %.80s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"3.4.1\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Py_GetVersion() #0 {
entry:
  %call = tail call i8* @Py_GetBuildInfo() #2, !dbg !18
  %call1 = tail call i8* @Py_GetCompiler() #2, !dbg !19
  %call2 = tail call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([250 x i8], [250 x i8]* @Py_GetVersion.version, i64 0, i64 0), i64 250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %call, i8* %call1) #2, !dbg !20
  ret i8* getelementptr inbounds ([250 x i8], [250 x i8]* @Py_GetVersion.version, i64 0, i64 0), !dbg !21
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

declare i8* @Py_GetBuildInfo() #1

declare i8* @Py_GetCompiler() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !10)
!1 = !DIFile(filename: "Python/getversion.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "Py_GetVersion", scope: !1, file: !1, line: 9, type: !5, isLocal: false, isDefinition: true, scopeLine: 10, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @Py_GetVersion, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DIGlobalVariable(name: "version", scope: !4, file: !1, line: 11, type: !12, isLocal: true, isDefinition: true, variable: [250 x i8]* @Py_GetVersion.version)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2000, align: 8, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 250)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!18 = !DILocation(line: 13, column: 21, scope: !4)
!19 = !DILocation(line: 13, column: 40, scope: !4)
!20 = !DILocation(line: 12, column: 2, scope: !4)
!21 = !DILocation(line: 14, column: 2, scope: !4)
