; ModuleID = 'programs_new/Python-new/fnt.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnt_params = type { i32, i64, i64, [0 x i64] }

@mpd_free = external hidden global void (i8*)*, align 8

; Function Attrs: nounwind uwtable
define hidden i32 @std_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %tparams = alloca %struct.fnt_params*, align 8
  %cleanup.dest.slot = alloca i32
  store i64* %a, i64** %a.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !21, metadata !50), !dbg !51
  store i64 %n, i64* %n.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !22, metadata !50), !dbg !54
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !55
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !23, metadata !50), !dbg !57
  %0 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !58
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !58
  call void @llvm.dbg.declare(metadata %struct.fnt_params** %tparams, metadata !24, metadata !50), !dbg !59
  %1 = load i64, i64* %n.addr, align 8, !dbg !60, !tbaa !52
  %2 = load i32, i32* %modnum.addr, align 4, !dbg !62, !tbaa !55
  %call = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %1, i32 -1, i32 %2), !dbg !63
  store %struct.fnt_params* %call, %struct.fnt_params** %tparams, align 8, !dbg !64, !tbaa !46
  %cmp = icmp eq %struct.fnt_params* %call, null, !dbg !65
  br i1 %cmp, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !67
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !67

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %a.addr, align 8, !dbg !69, !tbaa !46
  %4 = load i64, i64* %n.addr, align 8, !dbg !70, !tbaa !52
  %5 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !71, !tbaa !46
  call void @fnt_dif2(i64* %3, i64 %4, %struct.fnt_params* %5), !dbg !72
  %6 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !73, !tbaa !46
  %7 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !74, !tbaa !46
  %8 = bitcast %struct.fnt_params* %7 to i8*, !dbg !74
  call void %6(i8* %8), !dbg !73
  store i32 1, i32* %retval, !dbg !75
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !75

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !76
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !76
  %10 = load i32, i32* %retval, !dbg !76
  ret i32 %10, !dbg !76
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare hidden %struct.fnt_params* @_mpd_init_fnt_params(i64, i32, i32) #3

declare hidden void @fnt_dif2(i64*, i64, %struct.fnt_params*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define hidden i32 @std_inv_fnt(i64* %a, i64 %n, i32 %modnum) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i64*, align 8
  %n.addr = alloca i64, align 8
  %modnum.addr = alloca i32, align 4
  %tparams = alloca %struct.fnt_params*, align 8
  %cleanup.dest.slot = alloca i32
  store i64* %a, i64** %a.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i64** %a.addr, metadata !38, metadata !50), !dbg !77
  store i64 %n, i64* %n.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !39, metadata !50), !dbg !78
  store i32 %modnum, i32* %modnum.addr, align 4, !tbaa !55
  call void @llvm.dbg.declare(metadata i32* %modnum.addr, metadata !40, metadata !50), !dbg !79
  %0 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !80
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !80
  call void @llvm.dbg.declare(metadata %struct.fnt_params** %tparams, metadata !41, metadata !50), !dbg !81
  %1 = load i64, i64* %n.addr, align 8, !dbg !82, !tbaa !52
  %2 = load i32, i32* %modnum.addr, align 4, !dbg !84, !tbaa !55
  %call = call %struct.fnt_params* @_mpd_init_fnt_params(i64 %1, i32 1, i32 %2), !dbg !85
  store %struct.fnt_params* %call, %struct.fnt_params** %tparams, align 8, !dbg !86, !tbaa !46
  %cmp = icmp eq %struct.fnt_params* %call, null, !dbg !87
  br i1 %cmp, label %if.then, label %if.end, !dbg !88

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !89
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !89

if.end:                                           ; preds = %entry
  %3 = load i64*, i64** %a.addr, align 8, !dbg !91, !tbaa !46
  %4 = load i64, i64* %n.addr, align 8, !dbg !92, !tbaa !52
  %5 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !93, !tbaa !46
  call void @fnt_dif2(i64* %3, i64 %4, %struct.fnt_params* %5), !dbg !94
  %6 = load void (i8*)*, void (i8*)** @mpd_free, align 8, !dbg !95, !tbaa !46
  %7 = load %struct.fnt_params*, %struct.fnt_params** %tparams, align 8, !dbg !96, !tbaa !46
  %8 = bitcast %struct.fnt_params* %7 to i8*, !dbg !96
  call void %6(i8* %8), !dbg !95
  store i32 1, i32* %retval, !dbg !97
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !97

cleanup:                                          ; preds = %if.end, %if.then
  %9 = bitcast %struct.fnt_params** %tparams to i8*, !dbg !98
  call void @llvm.lifetime.end(i64 8, i8* %9) #2, !dbg !98
  %10 = load i32, i32* %retval, !dbg !98
  ret i32 %10, !dbg !98
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5)
!1 = !DIFile(filename: "fnt.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !36}
!6 = !DISubprogram(name: "std_fnt", scope: !7, file: !7, line: 44, type: !8, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64, i32)* @std_fnt, variables: !20)
!7 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/fnt.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !17, !10}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_uint_t", file: !13, line: 149, baseType: !14)
!13 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/mpdecimal.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !15, line: 55, baseType: !16)
!15 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpd_size_t", file: !13, line: 152, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 62, baseType: !16)
!19 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !{!21, !22, !23, !24}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !6, file: !7, line: 44, type: !11)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !6, file: !7, line: 44, type: !17)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 3, scope: !6, file: !7, line: 44, type: !10)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tparams", scope: !6, file: !7, line: 46, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64, align: 64)
!26 = !DICompositeType(tag: DW_TAG_structure_type, name: "fnt_params", file: !27, line: 42, size: 192, align: 64, elements: !28)
!27 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_decimal/libmpdec/numbertheory.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!28 = !{!29, !30, !31, !32}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "modnum", scope: !26, file: !27, line: 43, baseType: !10, size: 32, align: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "modulus", scope: !26, file: !27, line: 44, baseType: !12, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "kernel", scope: !26, file: !27, line: 45, baseType: !12, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "wtable", scope: !26, file: !27, line: 46, baseType: !33, offset: 192)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, align: 64, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: -1)
!36 = !DISubprogram(name: "std_inv_fnt", scope: !7, file: !7, line: 63, type: !8, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64*, i64, i32)* @std_inv_fnt, variables: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !36, file: !7, line: 63, type: !11)
!39 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !36, file: !7, line: 63, type: !17)
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "modnum", arg: 3, scope: !36, file: !7, line: 63, type: !10)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tparams", scope: !36, file: !7, line: 65, type: !25)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"PIC Level", i32 2}
!45 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !DIExpression()
!51 = !DILocation(line: 44, column: 21, scope: !6)
!52 = !{!53, !53, i64 0}
!53 = !{!"long", !48, i64 0}
!54 = !DILocation(line: 44, column: 35, scope: !6)
!55 = !{!56, !56, i64 0}
!56 = !{!"int", !48, i64 0}
!57 = !DILocation(line: 44, column: 42, scope: !6)
!58 = !DILocation(line: 46, column: 5, scope: !6)
!59 = !DILocation(line: 46, column: 24, scope: !6)
!60 = !DILocation(line: 52, column: 41, scope: !61)
!61 = distinct !DILexicalBlock(scope: !6, file: !7, line: 52, column: 9)
!62 = !DILocation(line: 52, column: 48, scope: !61)
!63 = !DILocation(line: 52, column: 20, scope: !61)
!64 = !DILocation(line: 52, column: 18, scope: !61)
!65 = !DILocation(line: 52, column: 57, scope: !61)
!66 = !DILocation(line: 52, column: 9, scope: !6)
!67 = !DILocation(line: 53, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !7, line: 52, column: 72)
!69 = !DILocation(line: 55, column: 14, scope: !6)
!70 = !DILocation(line: 55, column: 17, scope: !6)
!71 = !DILocation(line: 55, column: 20, scope: !6)
!72 = !DILocation(line: 55, column: 5, scope: !6)
!73 = !DILocation(line: 57, column: 5, scope: !6)
!74 = !DILocation(line: 57, column: 14, scope: !6)
!75 = !DILocation(line: 58, column: 5, scope: !6)
!76 = !DILocation(line: 59, column: 1, scope: !6)
!77 = !DILocation(line: 63, column: 25, scope: !36)
!78 = !DILocation(line: 63, column: 39, scope: !36)
!79 = !DILocation(line: 63, column: 46, scope: !36)
!80 = !DILocation(line: 65, column: 5, scope: !36)
!81 = !DILocation(line: 65, column: 24, scope: !36)
!82 = !DILocation(line: 71, column: 41, scope: !83)
!83 = distinct !DILexicalBlock(scope: !36, file: !7, line: 71, column: 9)
!84 = !DILocation(line: 71, column: 47, scope: !83)
!85 = !DILocation(line: 71, column: 20, scope: !83)
!86 = !DILocation(line: 71, column: 18, scope: !83)
!87 = !DILocation(line: 71, column: 56, scope: !83)
!88 = !DILocation(line: 71, column: 9, scope: !36)
!89 = !DILocation(line: 72, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !83, file: !7, line: 71, column: 71)
!91 = !DILocation(line: 74, column: 14, scope: !36)
!92 = !DILocation(line: 74, column: 17, scope: !36)
!93 = !DILocation(line: 74, column: 20, scope: !36)
!94 = !DILocation(line: 74, column: 5, scope: !36)
!95 = !DILocation(line: 76, column: 5, scope: !36)
!96 = !DILocation(line: 76, column: 14, scope: !36)
!97 = !DILocation(line: 77, column: 5, scope: !36)
!98 = !DILocation(line: 78, column: 1, scope: !36)
