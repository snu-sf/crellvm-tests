; ModuleID = 'programs_new/Python-new/getcopyright.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cprt = internal constant [308 x i8] c"Copyright (c) 2001-2014 Python Software Foundation.\0AAll Rights Reserved.\0A\0ACopyright (c) 2000 BeOpen.com.\0AAll Rights Reserved.\0A\0ACopyright (c) 1995-2001 Corporation for National Research Initiatives.\0AAll Rights Reserved.\0A\0ACopyright (c) 1991-1995 Stichting Mathematisch Centrum, Amsterdam.\0AAll Rights Reserved.\00", align 16

; Function Attrs: nounwind uwtable
define i8* @Py_GetCopyright() #0 {
entry:
  ret i8* getelementptr inbounds ([308 x i8], [308 x i8]* @cprt, i32 0, i32 0), !dbg !19
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !11)
!1 = !DIFile(filename: "getcopyright.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "Py_GetCopyright", scope: !5, file: !5, line: 20, type: !6, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @Py_GetCopyright, variables: !2)
!5 = !DIFile(filename: "Python/getcopyright.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !{!12}
!12 = !DIGlobalVariable(name: "cprt", scope: !0, file: !5, line: 5, type: !13, isLocal: true, isDefinition: true, variable: [308 x i8]* @cprt)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2464, align: 8, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 308)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!19 = !DILocation(line: 22, column: 5, scope: !4)
