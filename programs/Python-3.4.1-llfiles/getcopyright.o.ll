; ModuleID = 'getcopyright.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cprt = internal constant [308 x i8] c"Copyright (c) 2001-2014 Python Software Foundation.\0AAll Rights Reserved.\0A\0ACopyright (c) 2000 BeOpen.com.\0AAll Rights Reserved.\0A\0ACopyright (c) 1995-2001 Corporation for National Research Initiatives.\0AAll Rights Reserved.\0A\0ACopyright (c) 1991-1995 Stichting Mathematisch Centrum, Amsterdam.\0AAll Rights Reserved.\00", align 16

; Function Attrs: nounwind readnone uwtable
define i8* @Py_GetCopyright() #0 {
entry:
  ret i8* getelementptr inbounds ([308 x i8], [308 x i8]* @cprt, i64 0, i64 0), !dbg !18
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !10)
!1 = !DIFile(filename: "Python/getcopyright.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "Py_GetCopyright", scope: !1, file: !1, line: 20, type: !5, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @Py_GetCopyright, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DIGlobalVariable(name: "cprt", scope: !0, file: !1, line: 5, type: !12, isLocal: true, isDefinition: true, variable: [308 x i8]* @cprt)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2464, align: 8, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 308)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!18 = !DILocation(line: 22, column: 5, scope: !4)
