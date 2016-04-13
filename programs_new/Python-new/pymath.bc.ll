; ModuleID = 'irs-onlybc/pymath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define zeroext i16 @_Py_get_387controlword() #0 {
entry:
  %cw = alloca i16, align 2
  %0 = bitcast i16* %cw to i8*, !dbg !19
  call void @llvm.lifetime.start(i64 2, i8* %0) #1, !dbg !19
  call void @llvm.dbg.declare(metadata i16* %cw, metadata !10, metadata !20), !dbg !21
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i16* %cw) #1, !dbg !22, !srcloc !23
  %1 = load i16, i16* %cw, align 2, !dbg !24, !tbaa !25
  %2 = bitcast i16* %cw to i8*, !dbg !29
  call void @llvm.lifetime.end(i64 2, i8* %2) #1, !dbg !29
  ret i16 %1, !dbg !30
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @_Py_set_387controlword(i16 zeroext %cw) #0 {
entry:
  %cw.addr = alloca i16, align 2
  store i16 %cw, i16* %cw.addr, align 2, !tbaa !25
  call void @llvm.dbg.declare(metadata i16* %cw.addr, metadata !15, metadata !20), !dbg !31
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(i16* %cw.addr) #1, !dbg !32, !srcloc !33
  ret void, !dbg !34
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "pymath.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !11}
!4 = !DISubprogram(name: "_Py_get_387controlword", scope: !5, file: !5, line: 21, type: !6, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i16 ()* @_Py_get_387controlword, variables: !9)
!5 = !DIFile(filename: "Python/pymath.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!9 = !{!10}
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cw", scope: !4, file: !5, line: 22, type: !8)
!11 = !DISubprogram(name: "_Py_set_387controlword", scope: !5, file: !5, line: 27, type: !12, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: void (i16)* @_Py_set_387controlword, variables: !14)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !8}
!14 = !{!15}
!15 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cw", arg: 1, scope: !11, file: !5, line: 27, type: !8)
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!19 = !DILocation(line: 22, column: 5, scope: !4)
!20 = !DIExpression()
!21 = !DILocation(line: 22, column: 20, scope: !4)
!22 = !DILocation(line: 23, column: 5, scope: !4)
!23 = !{i32 279654}
!24 = !DILocation(line: 24, column: 12, scope: !4)
!25 = !{!26, !26, i64 0}
!26 = !{!"short", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 25, column: 1, scope: !4)
!30 = !DILocation(line: 24, column: 5, scope: !4)
!31 = !DILocation(line: 27, column: 44, scope: !11)
!32 = !DILocation(line: 28, column: 5, scope: !11)
!33 = !{i32 279773}
!34 = !DILocation(line: 29, column: 1, scope: !11)
