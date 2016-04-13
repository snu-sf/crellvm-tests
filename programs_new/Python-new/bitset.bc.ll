; ModuleID = 'irs-onlybc/bitset.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"no mem for bitset\00", align 1

; Function Attrs: nounwind uwtable
define i8* @_Py_newbitset(i32 %nbits) #0 {
entry:
  %nbits.addr = alloca i32, align 4
  %nbytes = alloca i32, align 4
  %ss = alloca i8*, align 8
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !16, metadata !55), !dbg !56
  %0 = bitcast i32* %nbytes to i8*, !dbg !57
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %nbytes, metadata !17, metadata !55), !dbg !58
  %1 = load i32, i32* %nbits.addr, align 4, !dbg !59, !tbaa !51
  %conv = sext i32 %1 to i64, !dbg !60
  %add = add i64 %conv, 8, !dbg !61
  %sub = sub i64 %add, 1, !dbg !62
  %div = udiv i64 %sub, 8, !dbg !63
  %conv1 = trunc i64 %div to i32, !dbg !64
  store i32 %conv1, i32* %nbytes, align 4, !dbg !58, !tbaa !51
  %2 = bitcast i8** %ss to i8*, !dbg !65
  call void @llvm.lifetime.start(i64 8, i8* %2) #2, !dbg !65
  call void @llvm.dbg.declare(metadata i8** %ss, metadata !18, metadata !55), !dbg !66
  %3 = load i32, i32* %nbytes, align 4, !dbg !67, !tbaa !51
  %conv2 = sext i32 %3 to i64, !dbg !67
  %mul = mul i64 1, %conv2, !dbg !68
  %call = call i8* @PyObject_Malloc(i64 %mul), !dbg !69
  store i8* %call, i8** %ss, align 8, !dbg !66, !tbaa !70
  %4 = load i8*, i8** %ss, align 8, !dbg !72, !tbaa !70
  %cmp = icmp eq i8* %4, null, !dbg !74
  br i1 %cmp, label %if.then, label %if.end, !dbg !75

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0)) #5, !dbg !76
  unreachable, !dbg !76

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %nbytes, align 4, !dbg !77, !tbaa !51
  %6 = load i8*, i8** %ss, align 8, !dbg !78, !tbaa !70
  %idx.ext = sext i32 %5 to i64, !dbg !78
  %add.ptr = getelementptr i8, i8* %6, i64 %idx.ext, !dbg !78
  store i8* %add.ptr, i8** %ss, align 8, !dbg !78, !tbaa !70
  br label %while.cond, !dbg !79

while.cond:                                       ; preds = %while.body, %if.end
  %7 = load i32, i32* %nbytes, align 4, !dbg !80, !tbaa !51
  %dec = add i32 %7, -1, !dbg !80
  store i32 %dec, i32* %nbytes, align 4, !dbg !80, !tbaa !51
  %cmp4 = icmp sge i32 %dec, 0, !dbg !83
  br i1 %cmp4, label %while.body, label %while.end, !dbg !79

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %ss, align 8, !dbg !84, !tbaa !70
  %incdec.ptr = getelementptr i8, i8* %8, i32 -1, !dbg !84
  store i8* %incdec.ptr, i8** %ss, align 8, !dbg !84, !tbaa !70
  store i8 0, i8* %incdec.ptr, align 1, !dbg !85, !tbaa !86
  br label %while.cond, !dbg !79

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %ss, align 8, !dbg !87, !tbaa !70
  %10 = bitcast i8** %ss to i8*, !dbg !88
  call void @llvm.lifetime.end(i64 8, i8* %10) #2, !dbg !88
  %11 = bitcast i32* %nbytes to i8*, !dbg !88
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !88
  ret i8* %9, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i8* @PyObject_Malloc(i64) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define void @_Py_delbitset(i8* %ss) #0 {
entry:
  %ss.addr = alloca i8*, align 8
  store i8* %ss, i8** %ss.addr, align 8, !tbaa !70
  call void @llvm.dbg.declare(metadata i8** %ss.addr, metadata !23, metadata !55), !dbg !90
  %0 = load i8*, i8** %ss.addr, align 8, !dbg !91, !tbaa !70
  call void @PyObject_Free(i8* %0), !dbg !92
  ret void, !dbg !93
}

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @_Py_addbit(i8* %ss, i32 %ibit) #0 {
entry:
  %retval = alloca i32, align 4
  %ss.addr = alloca i8*, align 8
  %ibit.addr = alloca i32, align 4
  %ibyte = alloca i32, align 4
  %mask = alloca i8, align 1
  %cleanup.dest.slot = alloca i32
  store i8* %ss, i8** %ss.addr, align 8, !tbaa !70
  call void @llvm.dbg.declare(metadata i8** %ss.addr, metadata !28, metadata !55), !dbg !94
  store i32 %ibit, i32* %ibit.addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %ibit.addr, metadata !29, metadata !55), !dbg !95
  %0 = bitcast i32* %ibyte to i8*, !dbg !96
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %ibyte, metadata !30, metadata !55), !dbg !97
  %1 = load i32, i32* %ibit.addr, align 4, !dbg !98, !tbaa !51
  %conv = sext i32 %1 to i64, !dbg !99
  %div = udiv i64 %conv, 8, !dbg !100
  %conv1 = trunc i64 %div to i32, !dbg !101
  store i32 %conv1, i32* %ibyte, align 4, !dbg !97, !tbaa !51
  call void @llvm.lifetime.start(i64 1, i8* %mask) #2, !dbg !102
  call void @llvm.dbg.declare(metadata i8* %mask, metadata !31, metadata !55), !dbg !103
  %2 = load i32, i32* %ibit.addr, align 4, !dbg !104, !tbaa !51
  %conv2 = sext i32 %2 to i64, !dbg !105
  %rem = urem i64 %conv2, 8, !dbg !106
  %sh_prom = trunc i64 %rem to i32, !dbg !107
  %shl = shl i32 1, %sh_prom, !dbg !107
  %conv3 = trunc i32 %shl to i8, !dbg !108
  store i8 %conv3, i8* %mask, align 1, !dbg !103, !tbaa !86
  %3 = load i32, i32* %ibyte, align 4, !dbg !109, !tbaa !51
  %idxprom = sext i32 %3 to i64, !dbg !111
  %4 = load i8*, i8** %ss.addr, align 8, !dbg !111, !tbaa !70
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom, !dbg !111
  %5 = load i8, i8* %arrayidx, align 1, !dbg !111, !tbaa !86
  %conv4 = sext i8 %5 to i32, !dbg !111
  %6 = load i8, i8* %mask, align 1, !dbg !112, !tbaa !86
  %conv5 = sext i8 %6 to i32, !dbg !112
  %and = and i32 %conv4, %conv5, !dbg !113
  %tobool = icmp ne i32 %and, 0, !dbg !113
  br i1 %tobool, label %if.then, label %if.end, !dbg !114

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !115
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !115

if.end:                                           ; preds = %entry
  %7 = load i8, i8* %mask, align 1, !dbg !116, !tbaa !86
  %conv6 = sext i8 %7 to i32, !dbg !116
  %8 = load i32, i32* %ibyte, align 4, !dbg !117, !tbaa !51
  %idxprom7 = sext i32 %8 to i64, !dbg !118
  %9 = load i8*, i8** %ss.addr, align 8, !dbg !118, !tbaa !70
  %arrayidx8 = getelementptr i8, i8* %9, i64 %idxprom7, !dbg !118
  %10 = load i8, i8* %arrayidx8, align 1, !dbg !119, !tbaa !86
  %conv9 = sext i8 %10 to i32, !dbg !119
  %or = or i32 %conv9, %conv6, !dbg !119
  %conv10 = trunc i32 %or to i8, !dbg !119
  store i8 %conv10, i8* %arrayidx8, align 1, !dbg !119, !tbaa !86
  store i32 1, i32* %retval, !dbg !120
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !120

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end(i64 1, i8* %mask) #2, !dbg !121
  %11 = bitcast i32* %ibyte to i8*, !dbg !121
  call void @llvm.lifetime.end(i64 4, i8* %11) #2, !dbg !121
  %12 = load i32, i32* %retval, !dbg !121
  ret i32 %12, !dbg !121
}

; Function Attrs: nounwind uwtable
define i32 @_Py_samebitset(i8* %ss1, i8* %ss2, i32 %nbits) #0 {
entry:
  %retval = alloca i32, align 4
  %ss1.addr = alloca i8*, align 8
  %ss2.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %ss1, i8** %ss1.addr, align 8, !tbaa !70
  call void @llvm.dbg.declare(metadata i8** %ss1.addr, metadata !36, metadata !55), !dbg !122
  store i8* %ss2, i8** %ss2.addr, align 8, !tbaa !70
  call void @llvm.dbg.declare(metadata i8** %ss2.addr, metadata !37, metadata !55), !dbg !123
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !38, metadata !55), !dbg !124
  %0 = bitcast i32* %i to i8*, !dbg !125
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !125
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !55), !dbg !126
  %1 = load i32, i32* %nbits.addr, align 4, !dbg !127, !tbaa !51
  %conv = sext i32 %1 to i64, !dbg !129
  %add = add i64 %conv, 8, !dbg !130
  %sub = sub i64 %add, 1, !dbg !131
  %div = udiv i64 %sub, 8, !dbg !132
  %conv1 = trunc i64 %div to i32, !dbg !133
  store i32 %conv1, i32* %i, align 4, !dbg !134, !tbaa !51
  br label %for.cond, !dbg !135

for.cond:                                         ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4, !dbg !136, !tbaa !51
  %dec = add i32 %2, -1, !dbg !136
  store i32 %dec, i32* %i, align 4, !dbg !136, !tbaa !51
  %cmp = icmp sge i32 %dec, 0, !dbg !140
  br i1 %cmp, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %ss1.addr, align 8, !dbg !142, !tbaa !70
  %incdec.ptr = getelementptr i8, i8* %3, i32 1, !dbg !142
  store i8* %incdec.ptr, i8** %ss1.addr, align 8, !dbg !142, !tbaa !70
  %4 = load i8, i8* %3, align 1, !dbg !144, !tbaa !86
  %conv3 = sext i8 %4 to i32, !dbg !144
  %5 = load i8*, i8** %ss2.addr, align 8, !dbg !145, !tbaa !70
  %incdec.ptr4 = getelementptr i8, i8* %5, i32 1, !dbg !145
  store i8* %incdec.ptr4, i8** %ss2.addr, align 8, !dbg !145, !tbaa !70
  %6 = load i8, i8* %5, align 1, !dbg !146, !tbaa !86
  %conv5 = sext i8 %6 to i32, !dbg !146
  %cmp6 = icmp ne i32 %conv3, %conv5, !dbg !147
  br i1 %cmp6, label %if.then, label %if.end, !dbg !148

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, !dbg !149
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !149

if.end:                                           ; preds = %for.body
  br label %for.cond, !dbg !150

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, !dbg !151
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !151

cleanup:                                          ; preds = %for.end, %if.then
  %7 = bitcast i32* %i to i8*, !dbg !152
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !152
  %8 = load i32, i32* %retval, !dbg !152
  ret i32 %8, !dbg !152
}

; Function Attrs: nounwind uwtable
define void @_Py_mergebitset(i8* %ss1, i8* %ss2, i32 %nbits) #0 {
entry:
  %ss1.addr = alloca i8*, align 8
  %ss2.addr = alloca i8*, align 8
  %nbits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %ss1, i8** %ss1.addr, align 8, !tbaa !70
  call void @llvm.dbg.declare(metadata i8** %ss1.addr, metadata !44, metadata !55), !dbg !153
  store i8* %ss2, i8** %ss2.addr, align 8, !tbaa !70
  call void @llvm.dbg.declare(metadata i8** %ss2.addr, metadata !45, metadata !55), !dbg !154
  store i32 %nbits, i32* %nbits.addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !46, metadata !55), !dbg !155
  %0 = bitcast i32* %i to i8*, !dbg !156
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !55), !dbg !157
  %1 = load i32, i32* %nbits.addr, align 4, !dbg !158, !tbaa !51
  %conv = sext i32 %1 to i64, !dbg !160
  %add = add i64 %conv, 8, !dbg !161
  %sub = sub i64 %add, 1, !dbg !162
  %div = udiv i64 %sub, 8, !dbg !163
  %conv1 = trunc i64 %div to i32, !dbg !164
  store i32 %conv1, i32* %i, align 4, !dbg !165, !tbaa !51
  br label %for.cond, !dbg !166

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, i32* %i, align 4, !dbg !167, !tbaa !51
  %dec = add i32 %2, -1, !dbg !167
  store i32 %dec, i32* %i, align 4, !dbg !167, !tbaa !51
  %cmp = icmp sge i32 %dec, 0, !dbg !171
  br i1 %cmp, label %for.body, label %for.end, !dbg !172

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %ss2.addr, align 8, !dbg !173, !tbaa !70
  %incdec.ptr = getelementptr i8, i8* %3, i32 1, !dbg !173
  store i8* %incdec.ptr, i8** %ss2.addr, align 8, !dbg !173, !tbaa !70
  %4 = load i8, i8* %3, align 1, !dbg !174, !tbaa !86
  %conv3 = sext i8 %4 to i32, !dbg !174
  %5 = load i8*, i8** %ss1.addr, align 8, !dbg !175, !tbaa !70
  %incdec.ptr4 = getelementptr i8, i8* %5, i32 1, !dbg !175
  store i8* %incdec.ptr4, i8** %ss1.addr, align 8, !dbg !175, !tbaa !70
  %6 = load i8, i8* %5, align 1, !dbg !176, !tbaa !86
  %conv5 = sext i8 %6 to i32, !dbg !176
  %or = or i32 %conv5, %conv3, !dbg !176
  %conv6 = trunc i32 %or to i8, !dbg !176
  store i8 %conv6, i8* %5, align 1, !dbg !176, !tbaa !86
  br label %for.cond, !dbg !177

for.end:                                          ; preds = %for.cond
  %7 = bitcast i32* %i to i8*, !dbg !178
  call void @llvm.lifetime.end(i64 4, i8* %7) #2, !dbg !178
  ret void, !dbg !178
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!48, !49}
!llvm.ident = !{!50}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7)
!1 = !DIFile(filename: "bitset.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !19, !24, !32, !40}
!8 = !DISubprogram(name: "_Py_newbitset", scope: !9, file: !9, line: 8, type: !10, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: true, function: i8* (i32)* @_Py_newbitset, variables: !15)
!9 = !DIFile(filename: "Parser/bitset.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !14}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !13, line: 12, baseType: !4)
!13 = !DIFile(filename: "Include/bitset.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18}
!16 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbits", arg: 1, scope: !8, file: !9, line: 8, type: !14)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nbytes", scope: !8, file: !9, line: 10, type: !14)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ss", scope: !8, file: !9, line: 11, type: !12)
!19 = !DISubprogram(name: "_Py_delbitset", scope: !9, file: !9, line: 23, type: !20, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @_Py_delbitset, variables: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !12}
!22 = !{!23}
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss", arg: 1, scope: !19, file: !9, line: 23, type: !12)
!24 = !DISubprogram(name: "_Py_addbit", scope: !9, file: !9, line: 29, type: !25, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32)* @_Py_addbit, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!14, !12, !14}
!27 = !{!28, !29, !30, !31}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss", arg: 1, scope: !24, file: !9, line: 29, type: !12)
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ibit", arg: 2, scope: !24, file: !9, line: 29, type: !14)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ibyte", scope: !24, file: !9, line: 31, type: !14)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !24, file: !9, line: 32, type: !5)
!32 = !DISubprogram(name: "_Py_samebitset", scope: !9, file: !9, line: 49, type: !33, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i32)* @_Py_samebitset, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!14, !12, !12, !14}
!35 = !{!36, !37, !38, !39}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss1", arg: 1, scope: !32, file: !9, line: 49, type: !12)
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss2", arg: 2, scope: !32, file: !9, line: 49, type: !12)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbits", arg: 3, scope: !32, file: !9, line: 49, type: !14)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !32, file: !9, line: 51, type: !14)
!40 = !DISubprogram(name: "_Py_mergebitset", scope: !9, file: !9, line: 60, type: !41, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32)* @_Py_mergebitset, variables: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !12, !12, !14}
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss1", arg: 1, scope: !40, file: !9, line: 60, type: !12)
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss2", arg: 2, scope: !40, file: !9, line: 60, type: !12)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nbits", arg: 3, scope: !40, file: !9, line: 60, type: !14)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !40, file: !9, line: 62, type: !14)
!48 = !{i32 2, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!51 = !{!52, !52, i64 0}
!52 = !{!"int", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DIExpression()
!56 = !DILocation(line: 8, column: 19, scope: !8)
!57 = !DILocation(line: 10, column: 5, scope: !8)
!58 = !DILocation(line: 10, column: 9, scope: !8)
!59 = !DILocation(line: 10, column: 21, scope: !8)
!60 = !DILocation(line: 10, column: 20, scope: !8)
!61 = !DILocation(line: 10, column: 28, scope: !8)
!62 = !DILocation(line: 10, column: 47, scope: !8)
!63 = !DILocation(line: 10, column: 52, scope: !8)
!64 = !DILocation(line: 10, column: 18, scope: !8)
!65 = !DILocation(line: 11, column: 5, scope: !8)
!66 = !DILocation(line: 11, column: 12, scope: !8)
!67 = !DILocation(line: 11, column: 56, scope: !8)
!68 = !DILocation(line: 11, column: 54, scope: !8)
!69 = !DILocation(line: 11, column: 25, scope: !8)
!70 = !{!71, !71, i64 0}
!71 = !{!"any pointer", !53, i64 0}
!72 = !DILocation(line: 13, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !8, file: !9, line: 13, column: 9)
!74 = !DILocation(line: 13, column: 12, scope: !73)
!75 = !DILocation(line: 13, column: 9, scope: !8)
!76 = !DILocation(line: 14, column: 9, scope: !73)
!77 = !DILocation(line: 16, column: 11, scope: !8)
!78 = !DILocation(line: 16, column: 8, scope: !8)
!79 = !DILocation(line: 17, column: 5, scope: !8)
!80 = !DILocation(line: 17, column: 12, scope: !81)
!81 = !DILexicalBlockFile(scope: !82, file: !9, discriminator: 2)
!82 = !DILexicalBlockFile(scope: !8, file: !9, discriminator: 1)
!83 = !DILocation(line: 17, column: 21, scope: !8)
!84 = !DILocation(line: 18, column: 10, scope: !8)
!85 = !DILocation(line: 18, column: 15, scope: !8)
!86 = !{!53, !53, i64 0}
!87 = !DILocation(line: 19, column: 12, scope: !8)
!88 = !DILocation(line: 20, column: 1, scope: !8)
!89 = !DILocation(line: 19, column: 5, scope: !8)
!90 = !DILocation(line: 23, column: 22, scope: !19)
!91 = !DILocation(line: 25, column: 19, scope: !19)
!92 = !DILocation(line: 25, column: 5, scope: !19)
!93 = !DILocation(line: 26, column: 1, scope: !19)
!94 = !DILocation(line: 29, column: 19, scope: !24)
!95 = !DILocation(line: 29, column: 27, scope: !24)
!96 = !DILocation(line: 31, column: 5, scope: !24)
!97 = !DILocation(line: 31, column: 9, scope: !24)
!98 = !DILocation(line: 31, column: 19, scope: !24)
!99 = !DILocation(line: 31, column: 18, scope: !24)
!100 = !DILocation(line: 31, column: 25, scope: !24)
!101 = !DILocation(line: 31, column: 17, scope: !24)
!102 = !DILocation(line: 32, column: 5, scope: !24)
!103 = !DILocation(line: 32, column: 10, scope: !24)
!104 = !DILocation(line: 32, column: 25, scope: !24)
!105 = !DILocation(line: 32, column: 24, scope: !24)
!106 = !DILocation(line: 32, column: 31, scope: !24)
!107 = !DILocation(line: 32, column: 20, scope: !24)
!108 = !DILocation(line: 32, column: 17, scope: !24)
!109 = !DILocation(line: 34, column: 12, scope: !110)
!110 = distinct !DILexicalBlock(scope: !24, file: !9, line: 34, column: 9)
!111 = !DILocation(line: 34, column: 9, scope: !110)
!112 = !DILocation(line: 34, column: 21, scope: !110)
!113 = !DILocation(line: 34, column: 19, scope: !110)
!114 = !DILocation(line: 34, column: 9, scope: !24)
!115 = !DILocation(line: 35, column: 9, scope: !110)
!116 = !DILocation(line: 36, column: 18, scope: !24)
!117 = !DILocation(line: 36, column: 8, scope: !24)
!118 = !DILocation(line: 36, column: 5, scope: !24)
!119 = !DILocation(line: 36, column: 15, scope: !24)
!120 = !DILocation(line: 37, column: 5, scope: !24)
!121 = !DILocation(line: 38, column: 1, scope: !24)
!122 = !DILocation(line: 49, column: 23, scope: !32)
!123 = !DILocation(line: 49, column: 35, scope: !32)
!124 = !DILocation(line: 49, column: 44, scope: !32)
!125 = !DILocation(line: 51, column: 5, scope: !32)
!126 = !DILocation(line: 51, column: 9, scope: !32)
!127 = !DILocation(line: 53, column: 17, scope: !128)
!128 = distinct !DILexicalBlock(scope: !32, file: !9, line: 53, column: 5)
!129 = !DILocation(line: 53, column: 16, scope: !128)
!130 = !DILocation(line: 53, column: 24, scope: !128)
!131 = !DILocation(line: 53, column: 43, scope: !128)
!132 = !DILocation(line: 53, column: 48, scope: !128)
!133 = !DILocation(line: 53, column: 14, scope: !128)
!134 = !DILocation(line: 53, column: 12, scope: !128)
!135 = !DILocation(line: 53, column: 10, scope: !128)
!136 = !DILocation(line: 53, column: 69, scope: !137)
!137 = !DILexicalBlockFile(scope: !138, file: !9, discriminator: 2)
!138 = !DILexicalBlockFile(scope: !139, file: !9, discriminator: 1)
!139 = distinct !DILexicalBlock(scope: !128, file: !9, line: 53, column: 5)
!140 = !DILocation(line: 53, column: 73, scope: !139)
!141 = !DILocation(line: 53, column: 5, scope: !128)
!142 = !DILocation(line: 54, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !9, line: 54, column: 13)
!144 = !DILocation(line: 54, column: 13, scope: !143)
!145 = !DILocation(line: 54, column: 27, scope: !143)
!146 = !DILocation(line: 54, column: 23, scope: !143)
!147 = !DILocation(line: 54, column: 20, scope: !143)
!148 = !DILocation(line: 54, column: 13, scope: !139)
!149 = !DILocation(line: 55, column: 13, scope: !143)
!150 = !DILocation(line: 53, column: 5, scope: !139)
!151 = !DILocation(line: 56, column: 5, scope: !32)
!152 = !DILocation(line: 57, column: 1, scope: !32)
!153 = !DILocation(line: 60, column: 24, scope: !40)
!154 = !DILocation(line: 60, column: 36, scope: !40)
!155 = !DILocation(line: 60, column: 45, scope: !40)
!156 = !DILocation(line: 62, column: 5, scope: !40)
!157 = !DILocation(line: 62, column: 9, scope: !40)
!158 = !DILocation(line: 64, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !40, file: !9, line: 64, column: 5)
!160 = !DILocation(line: 64, column: 16, scope: !159)
!161 = !DILocation(line: 64, column: 24, scope: !159)
!162 = !DILocation(line: 64, column: 43, scope: !159)
!163 = !DILocation(line: 64, column: 48, scope: !159)
!164 = !DILocation(line: 64, column: 14, scope: !159)
!165 = !DILocation(line: 64, column: 12, scope: !159)
!166 = !DILocation(line: 64, column: 10, scope: !159)
!167 = !DILocation(line: 64, column: 69, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !9, discriminator: 2)
!169 = !DILexicalBlockFile(scope: !170, file: !9, discriminator: 1)
!170 = distinct !DILexicalBlock(scope: !159, file: !9, line: 64, column: 5)
!171 = !DILocation(line: 64, column: 73, scope: !170)
!172 = !DILocation(line: 64, column: 5, scope: !159)
!173 = !DILocation(line: 65, column: 23, scope: !170)
!174 = !DILocation(line: 65, column: 19, scope: !170)
!175 = !DILocation(line: 65, column: 13, scope: !170)
!176 = !DILocation(line: 65, column: 16, scope: !170)
!177 = !DILocation(line: 64, column: 5, scope: !170)
!178 = !DILocation(line: 66, column: 1, scope: !40)
