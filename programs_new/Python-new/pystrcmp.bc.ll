; ModuleID = 'irs-onlybc/pystrcmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @PyOS_mystrnicmp(i8* %s1, i8* %s2, i64 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res3 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %__res14 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %__res19 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %s1.addr, metadata !22, metadata !60), !dbg !61
  store i8* %s2, i8** %s2.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %s2.addr, metadata !23, metadata !60), !dbg !62
  store i64 %size, i64* %size.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !24, metadata !60), !dbg !65
  %0 = load i64, i64* %size.addr, align 8, !dbg !66, !tbaa !63
  %cmp = icmp eq i64 %0, 0, !dbg !68
  br i1 %cmp, label %if.then, label %if.end, !dbg !69

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !70
  br label %return, !dbg !70

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !71

while.cond:                                       ; preds = %if.end.12, %if.end
  %1 = load i64, i64* %size.addr, align 8, !dbg !72, !tbaa !63
  %dec = add i64 %1, -1, !dbg !72
  store i64 %dec, i64* %size.addr, align 8, !dbg !72, !tbaa !63
  %cmp1 = icmp sgt i64 %dec, 0, !dbg !75
  br i1 %cmp1, label %land.rhs, label %land.end, !dbg !76

land.rhs:                                         ; preds = %while.cond
  %2 = bitcast i32* %__res to i8*, !dbg !77
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %__res, metadata !25, metadata !60), !dbg !78
  %3 = load i8*, i8** %s1.addr, align 8, !dbg !79, !tbaa !56
  %4 = load i8, i8* %3, align 1, !dbg !83, !tbaa !84
  %conv = sext i8 %4 to i32, !dbg !85
  %call = call i32 @tolower(i32 %conv) #2, !dbg !86
  store i32 %call, i32* %__res, align 4, !dbg !87, !tbaa !88
  %5 = load i32, i32* %__res, align 4, !dbg !90, !tbaa !88
  store i32 %5, i32* %tmp, !dbg !91, !tbaa !88
  %6 = bitcast i32* %__res to i8*, !dbg !92
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !92
  %7 = load i32, i32* %tmp, !dbg !93, !tbaa !88
  %8 = bitcast i32* %__res3 to i8*, !dbg !94
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %__res3, metadata !27, metadata !60), !dbg !95
  %9 = load i8*, i8** %s2.addr, align 8, !dbg !96, !tbaa !56
  %10 = load i8, i8* %9, align 1, !dbg !100, !tbaa !84
  %conv4 = sext i8 %10 to i32, !dbg !101
  %call5 = call i32 @tolower(i32 %conv4) #2, !dbg !102
  store i32 %call5, i32* %__res3, align 4, !dbg !103, !tbaa !88
  %11 = load i32, i32* %__res3, align 4, !dbg !104, !tbaa !88
  store i32 %11, i32* %tmp6, !dbg !105, !tbaa !88
  %12 = bitcast i32* %__res3 to i8*, !dbg !106
  call void @llvm.lifetime.end(i64 4, i8* %12) #2, !dbg !106
  %13 = load i32, i32* %tmp6, !dbg !107, !tbaa !88
  %cmp7 = icmp eq i32 %7, %13, !dbg !108
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %14, label %while.body, label %while.end, !dbg !109

while.body:                                       ; preds = %land.end
  %15 = load i8*, i8** %s1.addr, align 8, !dbg !111, !tbaa !56
  %incdec.ptr = getelementptr i8, i8* %15, i32 1, !dbg !111
  store i8* %incdec.ptr, i8** %s1.addr, align 8, !dbg !111, !tbaa !56
  %16 = load i8, i8* %15, align 1, !dbg !114, !tbaa !84
  %tobool = icmp ne i8 %16, 0, !dbg !114
  br i1 %tobool, label %lor.lhs.false, label %if.then.11, !dbg !115

lor.lhs.false:                                    ; preds = %while.body
  %17 = load i8*, i8** %s2.addr, align 8, !dbg !116, !tbaa !56
  %incdec.ptr9 = getelementptr i8, i8* %17, i32 1, !dbg !116
  store i8* %incdec.ptr9, i8** %s2.addr, align 8, !dbg !116, !tbaa !56
  %18 = load i8, i8* %17, align 1, !dbg !118, !tbaa !84
  %tobool10 = icmp ne i8 %18, 0, !dbg !118
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !119

if.then.11:                                       ; preds = %lor.lhs.false, %while.body
  br label %while.end, !dbg !120

if.end.12:                                        ; preds = %lor.lhs.false
  br label %while.cond, !dbg !71

while.end:                                        ; preds = %if.then.11, %land.end
  %19 = bitcast i32* %__res14 to i8*, !dbg !121
  call void @llvm.lifetime.start(i64 4, i8* %19) #2, !dbg !121
  call void @llvm.dbg.declare(metadata i32* %__res14, metadata !29, metadata !60), !dbg !122
  %20 = load i8*, i8** %s1.addr, align 8, !dbg !123, !tbaa !56
  %21 = load i8, i8* %20, align 1, !dbg !127, !tbaa !84
  %conv15 = sext i8 %21 to i32, !dbg !128
  %call16 = call i32 @tolower(i32 %conv15) #2, !dbg !129
  store i32 %call16, i32* %__res14, align 4, !dbg !130, !tbaa !88
  %22 = load i32, i32* %__res14, align 4, !dbg !131, !tbaa !88
  store i32 %22, i32* %tmp17, !dbg !132, !tbaa !88
  %23 = bitcast i32* %__res14 to i8*, !dbg !133
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !133
  %24 = load i32, i32* %tmp17, !dbg !134, !tbaa !88
  %25 = bitcast i32* %__res19 to i8*, !dbg !135
  call void @llvm.lifetime.start(i64 4, i8* %25) #2, !dbg !135
  call void @llvm.dbg.declare(metadata i32* %__res19, metadata !31, metadata !60), !dbg !136
  %26 = load i8*, i8** %s2.addr, align 8, !dbg !137, !tbaa !56
  %27 = load i8, i8* %26, align 1, !dbg !141, !tbaa !84
  %conv20 = sext i8 %27 to i32, !dbg !142
  %call21 = call i32 @tolower(i32 %conv20) #2, !dbg !143
  store i32 %call21, i32* %__res19, align 4, !dbg !144, !tbaa !88
  %28 = load i32, i32* %__res19, align 4, !dbg !145, !tbaa !88
  store i32 %28, i32* %tmp22, !dbg !146, !tbaa !88
  %29 = bitcast i32* %__res19 to i8*, !dbg !147
  call void @llvm.lifetime.end(i64 4, i8* %29) #2, !dbg !147
  %30 = load i32, i32* %tmp22, !dbg !148, !tbaa !88
  %sub = sub i32 %24, %30, !dbg !149
  store i32 %sub, i32* %retval, !dbg !150
  br label %return, !dbg !150

return:                                           ; preds = %while.end, %if.then
  %31 = load i32, i32* %retval, !dbg !151
  ret i32 %31, !dbg !151
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define available_externally i32 @tolower(i32 %__c) #3 {
entry:
  %__c.addr = alloca i32, align 4
  store i32 %__c, i32* %__c.addr, align 4, !tbaa !88
  call void @llvm.dbg.declare(metadata i32* %__c.addr, metadata !52, metadata !60), !dbg !152
  %0 = load i32, i32* %__c.addr, align 4, !dbg !153, !tbaa !88
  %cmp = icmp sge i32 %0, -128, !dbg !154
  br i1 %cmp, label %land.lhs.true, label %cond.false, !dbg !155

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %__c.addr, align 4, !dbg !156, !tbaa !88
  %cmp1 = icmp slt i32 %1, 256, !dbg !158
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !153

cond.true:                                        ; preds = %land.lhs.true
  %2 = load i32, i32* %__c.addr, align 4, !dbg !159, !tbaa !88
  %idxprom = sext i32 %2 to i64, !dbg !161
  %call = call i32** @__ctype_tolower_loc() #1, !dbg !162
  %3 = load i32*, i32** %call, align 8, !dbg !163, !tbaa !56
  %arrayidx = getelementptr i32, i32* %3, i64 %idxprom, !dbg !161
  %4 = load i32, i32* %arrayidx, align 4, !dbg !161, !tbaa !88
  br label %cond.end, !dbg !153

cond.false:                                       ; preds = %land.lhs.true, %entry
  %5 = load i32, i32* %__c.addr, align 4, !dbg !164, !tbaa !88
  br label %cond.end, !dbg !153

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !153
  ret i32 %cond, !dbg !167
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i32 @PyOS_mystricmp(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__res3 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__res10 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %__res15 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %s1.addr, metadata !37, metadata !60), !dbg !170
  store i8* %s2, i8** %s2.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %s2.addr, metadata !38, metadata !60), !dbg !171
  br label %while.cond, !dbg !172

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s1.addr, align 8, !dbg !173, !tbaa !56
  %1 = load i8, i8* %0, align 1, !dbg !176, !tbaa !84
  %conv = sext i8 %1 to i32, !dbg !176
  %tobool = icmp ne i32 %conv, 0, !dbg !176
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !177

land.rhs:                                         ; preds = %while.cond
  %2 = bitcast i32* %__res to i8*, !dbg !178
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !178
  call void @llvm.dbg.declare(metadata i32* %__res, metadata !39, metadata !60), !dbg !180
  %3 = load i8*, i8** %s1.addr, align 8, !dbg !181, !tbaa !56
  %incdec.ptr = getelementptr i8, i8* %3, i32 1, !dbg !181
  store i8* %incdec.ptr, i8** %s1.addr, align 8, !dbg !181, !tbaa !56
  %4 = load i8, i8* %3, align 1, !dbg !185, !tbaa !84
  %conv1 = sext i8 %4 to i32, !dbg !186
  %call = call i32 @tolower(i32 %conv1) #2, !dbg !187
  store i32 %call, i32* %__res, align 4, !dbg !188, !tbaa !88
  %5 = load i32, i32* %__res, align 4, !dbg !189, !tbaa !88
  store i32 %5, i32* %tmp, !dbg !190, !tbaa !88
  %6 = bitcast i32* %__res to i8*, !dbg !191
  call void @llvm.lifetime.end(i64 4, i8* %6) #2, !dbg !191
  %7 = load i32, i32* %tmp, !dbg !192, !tbaa !88
  %8 = bitcast i32* %__res3 to i8*, !dbg !193
  call void @llvm.lifetime.start(i64 4, i8* %8) #2, !dbg !193
  call void @llvm.dbg.declare(metadata i32* %__res3, metadata !41, metadata !60), !dbg !194
  %9 = load i8*, i8** %s2.addr, align 8, !dbg !195, !tbaa !56
  %incdec.ptr4 = getelementptr i8, i8* %9, i32 1, !dbg !195
  store i8* %incdec.ptr4, i8** %s2.addr, align 8, !dbg !195, !tbaa !56
  %10 = load i8, i8* %9, align 1, !dbg !199, !tbaa !84
  %conv5 = sext i8 %10 to i32, !dbg !200
  %call6 = call i32 @tolower(i32 %conv5) #2, !dbg !201
  store i32 %call6, i32* %__res3, align 4, !dbg !202, !tbaa !88
  %11 = load i32, i32* %__res3, align 4, !dbg !203, !tbaa !88
  store i32 %11, i32* %tmp7, !dbg !204, !tbaa !88
  %12 = bitcast i32* %__res3 to i8*, !dbg !205
  call void @llvm.lifetime.end(i64 4, i8* %12) #2, !dbg !205
  %13 = load i32, i32* %tmp7, !dbg !206, !tbaa !88
  %cmp = icmp eq i32 %7, %13, !dbg !207
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %14 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %14, label %while.body, label %while.end, !dbg !208

while.body:                                       ; preds = %land.end
  br label %while.cond, !dbg !210

while.end:                                        ; preds = %land.end
  %15 = bitcast i32* %__res10 to i8*, !dbg !212
  call void @llvm.lifetime.start(i64 4, i8* %15) #2, !dbg !212
  call void @llvm.dbg.declare(metadata i32* %__res10, metadata !43, metadata !60), !dbg !213
  %16 = load i8*, i8** %s1.addr, align 8, !dbg !214, !tbaa !56
  %17 = load i8, i8* %16, align 1, !dbg !218, !tbaa !84
  %conv11 = sext i8 %17 to i32, !dbg !219
  %call12 = call i32 @tolower(i32 %conv11) #2, !dbg !220
  store i32 %call12, i32* %__res10, align 4, !dbg !221, !tbaa !88
  %18 = load i32, i32* %__res10, align 4, !dbg !222, !tbaa !88
  store i32 %18, i32* %tmp13, !dbg !223, !tbaa !88
  %19 = bitcast i32* %__res10 to i8*, !dbg !224
  call void @llvm.lifetime.end(i64 4, i8* %19) #2, !dbg !224
  %20 = load i32, i32* %tmp13, !dbg !225, !tbaa !88
  %21 = bitcast i32* %__res15 to i8*, !dbg !226
  call void @llvm.lifetime.start(i64 4, i8* %21) #2, !dbg !226
  call void @llvm.dbg.declare(metadata i32* %__res15, metadata !45, metadata !60), !dbg !227
  %22 = load i8*, i8** %s2.addr, align 8, !dbg !228, !tbaa !56
  %23 = load i8, i8* %22, align 1, !dbg !232, !tbaa !84
  %conv16 = sext i8 %23 to i32, !dbg !233
  %call17 = call i32 @tolower(i32 %conv16) #2, !dbg !234
  store i32 %call17, i32* %__res15, align 4, !dbg !235, !tbaa !88
  %24 = load i32, i32* %__res15, align 4, !dbg !236, !tbaa !88
  store i32 %24, i32* %tmp18, !dbg !237, !tbaa !88
  %25 = bitcast i32* %__res15 to i8*, !dbg !238
  call void @llvm.lifetime.end(i64 4, i8* %25) #2, !dbg !238
  %26 = load i32, i32* %tmp18, !dbg !239, !tbaa !88
  %sub = sub i32 %20, %26, !dbg !240
  ret i32 %sub, !dbg !241
}

; Function Attrs: nounwind readnone
declare i32** @__ctype_tolower_loc() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!53, !54}
!llvm.ident = !{!55}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5)
!1 = !DIFile(filename: "pystrcmp.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !33, !47}
!6 = !DISubprogram(name: "PyOS_mystrnicmp", scope: !7, file: !7, line: 7, type: !8, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*, i64)* @PyOS_mystrnicmp, variables: !21)
!7 = !DIFile(filename: "Python/pystrcmp.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !14}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24, !25, !27, !29, !31}
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !6, file: !7, line: 7, type: !11)
!23 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !6, file: !7, line: 7, type: !11)
!24 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !6, file: !7, line: 7, type: !14)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !26, file: !7, line: 12, type: !10)
!26 = distinct !DILexicalBlock(scope: !6, file: !7, line: 12, column: 29)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !28, file: !7, line: 12, type: !10)
!28 = distinct !DILexicalBlock(scope: !6, file: !7, line: 12, column: 354)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !30, file: !7, line: 16, type: !10)
!30 = distinct !DILexicalBlock(scope: !6, file: !7, line: 16, column: 28)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !32, file: !7, line: 16, type: !10)
!32 = distinct !DILexicalBlock(scope: !6, file: !7, line: 16, column: 352)
!33 = !DISubprogram(name: "PyOS_mystricmp", scope: !7, file: !7, line: 20, type: !34, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @PyOS_mystricmp, variables: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!10, !11, !11}
!36 = !{!37, !38, !39, !41, !43, !45}
!37 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !33, file: !7, line: 20, type: !11)
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !33, file: !7, line: 20, type: !11)
!39 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !40, file: !7, line: 22, type: !10)
!40 = distinct !DILexicalBlock(scope: !33, file: !7, line: 22, column: 36)
!41 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !42, file: !7, line: 22, type: !10)
!42 = distinct !DILexicalBlock(scope: !33, file: !7, line: 22, column: 371)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !44, file: !7, line: 25, type: !10)
!44 = distinct !DILexicalBlock(scope: !33, file: !7, line: 25, column: 29)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__res", scope: !46, file: !7, line: 25, type: !10)
!46 = distinct !DILexicalBlock(scope: !33, file: !7, line: 25, column: 353)
!47 = !DISubprogram(name: "tolower", scope: !48, file: !48, line: 216, type: !49, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @tolower, variables: !51)
!48 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!49 = !DISubroutineType(types: !50)
!50 = !{!10, !10}
!51 = !{!52}
!52 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__c", arg: 1, scope: !47, file: !48, line: 216, type: !10)
!53 = !{i32 2, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!56 = !{!57, !57, i64 0}
!57 = !{!"any pointer", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DIExpression()
!61 = !DILocation(line: 7, column: 29, scope: !6)
!62 = !DILocation(line: 7, column: 45, scope: !6)
!63 = !{!64, !64, i64 0}
!64 = !{!"long", !58, i64 0}
!65 = !DILocation(line: 7, column: 60, scope: !6)
!66 = !DILocation(line: 9, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !6, file: !7, line: 9, column: 9)
!68 = !DILocation(line: 9, column: 14, scope: !67)
!69 = !DILocation(line: 9, column: 9, scope: !6)
!70 = !DILocation(line: 10, column: 9, scope: !67)
!71 = !DILocation(line: 11, column: 5, scope: !6)
!72 = !DILocation(line: 11, column: 13, scope: !73)
!73 = !DILexicalBlockFile(scope: !74, file: !7, discriminator: 3)
!74 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 1)
!75 = !DILocation(line: 11, column: 20, scope: !6)
!76 = !DILocation(line: 11, column: 25, scope: !6)
!77 = !DILocation(line: 12, column: 31, scope: !26)
!78 = !DILocation(line: 12, column: 35, scope: !26)
!79 = !DILocation(line: 12, column: 254, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !7, line: 12, column: 80)
!81 = distinct !DILexicalBlock(scope: !82, file: !7, line: 12, column: 74)
!82 = distinct !DILexicalBlock(scope: !26, file: !7, line: 12, column: 46)
!83 = !DILocation(line: 12, column: 253, scope: !80)
!84 = !{!58, !58, i64 0}
!85 = !DILocation(line: 12, column: 243, scope: !80)
!86 = !DILocation(line: 12, column: 234, scope: !80)
!87 = !DILocation(line: 12, column: 232, scope: !80)
!88 = !{!89, !89, i64 0}
!89 = !{!"int", !58, i64 0}
!90 = !DILocation(line: 12, column: 324, scope: !26)
!91 = !DILocation(line: 12, column: 71, scope: !82)
!92 = !DILocation(line: 12, column: 331, scope: !6)
!93 = !DILocation(line: 12, column: 331, scope: !26)
!94 = !DILocation(line: 12, column: 356, scope: !28)
!95 = !DILocation(line: 12, column: 360, scope: !28)
!96 = !DILocation(line: 12, column: 579, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !7, line: 12, column: 405)
!98 = distinct !DILexicalBlock(scope: !99, file: !7, line: 12, column: 399)
!99 = distinct !DILexicalBlock(scope: !28, file: !7, line: 12, column: 371)
!100 = !DILocation(line: 12, column: 578, scope: !97)
!101 = !DILocation(line: 12, column: 568, scope: !97)
!102 = !DILocation(line: 12, column: 559, scope: !97)
!103 = !DILocation(line: 12, column: 557, scope: !97)
!104 = !DILocation(line: 12, column: 649, scope: !28)
!105 = !DILocation(line: 12, column: 396, scope: !99)
!106 = !DILocation(line: 12, column: 656, scope: !6)
!107 = !DILocation(line: 12, column: 656, scope: !28)
!108 = !DILocation(line: 12, column: 335, scope: !6)
!109 = !DILocation(line: 11, column: 5, scope: !110)
!110 = !DILexicalBlockFile(scope: !6, file: !7, discriminator: 2)
!111 = !DILocation(line: 13, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !7, line: 13, column: 13)
!113 = distinct !DILexicalBlock(scope: !6, file: !7, line: 12, column: 662)
!114 = !DILocation(line: 13, column: 14, scope: !112)
!115 = !DILocation(line: 13, column: 20, scope: !112)
!116 = !DILocation(line: 13, column: 27, scope: !117)
!117 = !DILexicalBlockFile(scope: !112, file: !7, discriminator: 1)
!118 = !DILocation(line: 13, column: 24, scope: !112)
!119 = !DILocation(line: 13, column: 13, scope: !113)
!120 = !DILocation(line: 14, column: 13, scope: !112)
!121 = !DILocation(line: 16, column: 30, scope: !30)
!122 = !DILocation(line: 16, column: 34, scope: !30)
!123 = !DILocation(line: 16, column: 253, scope: !124)
!124 = distinct !DILexicalBlock(scope: !125, file: !7, line: 16, column: 79)
!125 = distinct !DILexicalBlock(scope: !126, file: !7, line: 16, column: 73)
!126 = distinct !DILexicalBlock(scope: !30, file: !7, line: 16, column: 45)
!127 = !DILocation(line: 16, column: 252, scope: !124)
!128 = !DILocation(line: 16, column: 242, scope: !124)
!129 = !DILocation(line: 16, column: 233, scope: !124)
!130 = !DILocation(line: 16, column: 231, scope: !124)
!131 = !DILocation(line: 16, column: 323, scope: !30)
!132 = !DILocation(line: 16, column: 70, scope: !126)
!133 = !DILocation(line: 16, column: 330, scope: !6)
!134 = !DILocation(line: 16, column: 330, scope: !30)
!135 = !DILocation(line: 16, column: 354, scope: !32)
!136 = !DILocation(line: 16, column: 358, scope: !32)
!137 = !DILocation(line: 16, column: 577, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !7, line: 16, column: 403)
!139 = distinct !DILexicalBlock(scope: !140, file: !7, line: 16, column: 397)
!140 = distinct !DILexicalBlock(scope: !32, file: !7, line: 16, column: 369)
!141 = !DILocation(line: 16, column: 576, scope: !138)
!142 = !DILocation(line: 16, column: 566, scope: !138)
!143 = !DILocation(line: 16, column: 557, scope: !138)
!144 = !DILocation(line: 16, column: 555, scope: !138)
!145 = !DILocation(line: 16, column: 647, scope: !32)
!146 = !DILocation(line: 16, column: 394, scope: !140)
!147 = !DILocation(line: 16, column: 654, scope: !6)
!148 = !DILocation(line: 16, column: 654, scope: !32)
!149 = !DILocation(line: 16, column: 334, scope: !6)
!150 = !DILocation(line: 16, column: 5, scope: !6)
!151 = !DILocation(line: 17, column: 1, scope: !6)
!152 = !DILocation(line: 216, column: 45, scope: !47)
!153 = !DILocation(line: 218, column: 10, scope: !47)
!154 = !DILocation(line: 218, column: 14, scope: !47)
!155 = !DILocation(line: 218, column: 22, scope: !47)
!156 = !DILocation(line: 218, column: 25, scope: !157)
!157 = !DILexicalBlockFile(scope: !47, file: !48, discriminator: 1)
!158 = !DILocation(line: 218, column: 29, scope: !47)
!159 = !DILocation(line: 218, column: 63, scope: !160)
!160 = !DILexicalBlockFile(scope: !47, file: !48, discriminator: 3)
!161 = !DILocation(line: 218, column: 37, scope: !47)
!162 = !DILocation(line: 218, column: 39, scope: !47)
!163 = !DILocation(line: 218, column: 38, scope: !47)
!164 = !DILocation(line: 218, column: 70, scope: !165)
!165 = !DILexicalBlockFile(scope: !166, file: !48, discriminator: 4)
!166 = !DILexicalBlockFile(scope: !47, file: !48, discriminator: 2)
!167 = !DILocation(line: 218, column: 3, scope: !168)
!168 = !DILexicalBlockFile(scope: !169, file: !48, discriminator: 6)
!169 = !DILexicalBlockFile(scope: !47, file: !48, discriminator: 5)
!170 = !DILocation(line: 20, column: 28, scope: !33)
!171 = !DILocation(line: 20, column: 44, scope: !33)
!172 = !DILocation(line: 22, column: 5, scope: !33)
!173 = !DILocation(line: 22, column: 13, scope: !174)
!174 = !DILexicalBlockFile(scope: !175, file: !7, discriminator: 5)
!175 = !DILexicalBlockFile(scope: !33, file: !7, discriminator: 1)
!176 = !DILocation(line: 22, column: 12, scope: !33)
!177 = !DILocation(line: 22, column: 16, scope: !33)
!178 = !DILocation(line: 22, column: 38, scope: !179)
!179 = !DILexicalBlockFile(scope: !40, file: !7, discriminator: 2)
!180 = !DILocation(line: 22, column: 42, scope: !40)
!181 = !DILocation(line: 22, column: 269, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !7, line: 22, column: 89)
!183 = distinct !DILexicalBlock(scope: !184, file: !7, line: 22, column: 83)
!184 = distinct !DILexicalBlock(scope: !40, file: !7, line: 22, column: 53)
!185 = !DILocation(line: 22, column: 266, scope: !182)
!186 = !DILocation(line: 22, column: 256, scope: !182)
!187 = !DILocation(line: 22, column: 247, scope: !182)
!188 = !DILocation(line: 22, column: 245, scope: !182)
!189 = !DILocation(line: 22, column: 341, scope: !40)
!190 = !DILocation(line: 22, column: 80, scope: !184)
!191 = !DILocation(line: 22, column: 348, scope: !33)
!192 = !DILocation(line: 22, column: 348, scope: !40)
!193 = !DILocation(line: 22, column: 373, scope: !42)
!194 = !DILocation(line: 22, column: 377, scope: !42)
!195 = !DILocation(line: 22, column: 604, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !7, line: 22, column: 424)
!197 = distinct !DILexicalBlock(scope: !198, file: !7, line: 22, column: 418)
!198 = distinct !DILexicalBlock(scope: !42, file: !7, line: 22, column: 388)
!199 = !DILocation(line: 22, column: 601, scope: !196)
!200 = !DILocation(line: 22, column: 591, scope: !196)
!201 = !DILocation(line: 22, column: 582, scope: !196)
!202 = !DILocation(line: 22, column: 580, scope: !196)
!203 = !DILocation(line: 22, column: 676, scope: !42)
!204 = !DILocation(line: 22, column: 415, scope: !198)
!205 = !DILocation(line: 22, column: 683, scope: !33)
!206 = !DILocation(line: 22, column: 683, scope: !42)
!207 = !DILocation(line: 22, column: 352, scope: !33)
!208 = !DILocation(line: 22, column: 5, scope: !209)
!209 = !DILexicalBlockFile(scope: !33, file: !7, discriminator: 3)
!210 = !DILocation(line: 22, column: 5, scope: !211)
!211 = !DILexicalBlockFile(scope: !33, file: !7, discriminator: 4)
!212 = !DILocation(line: 25, column: 31, scope: !44)
!213 = !DILocation(line: 25, column: 35, scope: !44)
!214 = !DILocation(line: 25, column: 254, scope: !215)
!215 = distinct !DILexicalBlock(scope: !216, file: !7, line: 25, column: 80)
!216 = distinct !DILexicalBlock(scope: !217, file: !7, line: 25, column: 74)
!217 = distinct !DILexicalBlock(scope: !44, file: !7, line: 25, column: 46)
!218 = !DILocation(line: 25, column: 253, scope: !215)
!219 = !DILocation(line: 25, column: 243, scope: !215)
!220 = !DILocation(line: 25, column: 234, scope: !215)
!221 = !DILocation(line: 25, column: 232, scope: !215)
!222 = !DILocation(line: 25, column: 324, scope: !44)
!223 = !DILocation(line: 25, column: 71, scope: !217)
!224 = !DILocation(line: 25, column: 331, scope: !33)
!225 = !DILocation(line: 25, column: 331, scope: !44)
!226 = !DILocation(line: 25, column: 355, scope: !46)
!227 = !DILocation(line: 25, column: 359, scope: !46)
!228 = !DILocation(line: 25, column: 578, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !7, line: 25, column: 404)
!230 = distinct !DILexicalBlock(scope: !231, file: !7, line: 25, column: 398)
!231 = distinct !DILexicalBlock(scope: !46, file: !7, line: 25, column: 370)
!232 = !DILocation(line: 25, column: 577, scope: !229)
!233 = !DILocation(line: 25, column: 567, scope: !229)
!234 = !DILocation(line: 25, column: 558, scope: !229)
!235 = !DILocation(line: 25, column: 556, scope: !229)
!236 = !DILocation(line: 25, column: 648, scope: !46)
!237 = !DILocation(line: 25, column: 395, scope: !231)
!238 = !DILocation(line: 25, column: 655, scope: !33)
!239 = !DILocation(line: 25, column: 655, scope: !46)
!240 = !DILocation(line: 25, column: 335, scope: !33)
!241 = !DILocation(line: 25, column: 5, scope: !33)
