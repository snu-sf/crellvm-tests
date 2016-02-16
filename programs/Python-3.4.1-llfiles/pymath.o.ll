; ModuleID = 'pymath.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define zeroext i16 @_Py_get_387controlword() #0 {
entry:
  %cw = alloca i16, align 2
  %0 = bitcast i16* %cw to i8*, !dbg !18
  call void @llvm.lifetime.start(i64 2, i8* %0) #1, !dbg !18
  tail call void @llvm.dbg.value(metadata i16* %cw, i64 0, metadata !9, metadata !19), !dbg !20
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i16* nonnull %cw) #1, !dbg !21, !srcloc !22
  call void @llvm.dbg.value(metadata i16* %cw, i64 0, metadata !9, metadata !19), !dbg !20
  %1 = load i16, i16* %cw, align 2, !dbg !23, !tbaa !24
  call void @llvm.lifetime.end(i64 2, i8* %0) #1, !dbg !28
  ret i16 %1, !dbg !29
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @_Py_set_387controlword(i16 zeroext %cw) #0 {
entry:
  %cw.addr = alloca i16, align 2
  tail call void @llvm.dbg.value(metadata i16 %cw, i64 0, metadata !14, metadata !19), !dbg !30
  store i16 %cw, i16* %cw.addr, align 2, !tbaa !24
  tail call void @llvm.dbg.value(metadata i16* %cw.addr, i64 0, metadata !14, metadata !19), !dbg !30
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(i16* nonnull %cw.addr) #1, !dbg !31, !srcloc !32
  ret void, !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3)
!1 = !DIFile(filename: "Python/pymath.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "_Py_get_387controlword", scope: !1, file: !1, line: 21, type: !5, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i16 ()* @_Py_get_387controlword, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!8 = !{!9}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cw", scope: !4, file: !1, line: 22, type: !7)
!10 = !DISubprogram(name: "_Py_set_387controlword", scope: !1, file: !1, line: 27, type: !11, isLocal: false, isDefinition: true, scopeLine: 27, flags: DIFlagPrototyped, isOptimized: true, function: void (i16)* @_Py_set_387controlword, variables: !13)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !7}
!13 = !{!14}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cw", arg: 1, scope: !10, file: !1, line: 27, type: !7)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!18 = !DILocation(line: 22, column: 5, scope: !4)
!19 = !DIExpression()
!20 = !DILocation(line: 22, column: 20, scope: !4)
!21 = !DILocation(line: 23, column: 5, scope: !4)
!22 = !{i32 642}
!23 = !DILocation(line: 24, column: 12, scope: !4)
!24 = !{!25, !25, i64 0}
!25 = !{!"short", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 25, column: 1, scope: !4)
!29 = !DILocation(line: 24, column: 5, scope: !4)
!30 = !DILocation(line: 27, column: 44, scope: !10)
!31 = !DILocation(line: 28, column: 5, scope: !10)
!32 = !{i32 761}
!33 = !DILocation(line: 29, column: 1, scope: !10)
