; ModuleID = 'irs-onlybc/getbuildinfo.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_GetBuildInfo.buildinfo = internal global [52 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s%s%s, %.20s, %.9s\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Mar 17 2016\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"17:18:34\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tip\00", align 1

; Function Attrs: nounwind uwtable
define i8* @Py_GetBuildInfo() #0 {
entry:
  %revision = alloca i8*, align 8
  %sep = alloca i8*, align 8
  %hgid = alloca i8*, align 8
  %0 = bitcast i8** %revision to i8*, !dbg !45
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !45
  call void @llvm.dbg.declare(metadata i8** %revision, metadata !21, metadata !46), !dbg !47
  %call = call i8* @_Py_hgversion(), !dbg !48
  store i8* %call, i8** %revision, align 8, !dbg !47, !tbaa !49
  %1 = bitcast i8** %sep to i8*, !dbg !53
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !53
  call void @llvm.dbg.declare(metadata i8** %sep, metadata !22, metadata !46), !dbg !54
  %2 = load i8*, i8** %revision, align 8, !dbg !55, !tbaa !49
  %3 = load i8, i8* %2, align 1, !dbg !56, !tbaa !57
  %conv = sext i8 %3 to i32, !dbg !56
  %tobool = icmp ne i32 %conv, 0, !dbg !56
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), !dbg !56
  store i8* %cond, i8** %sep, align 8, !dbg !54, !tbaa !49
  %4 = bitcast i8** %hgid to i8*, !dbg !58
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !58
  call void @llvm.dbg.declare(metadata i8** %hgid, metadata !23, metadata !46), !dbg !59
  %call1 = call i8* @_Py_hgidentifier(), !dbg !60
  store i8* %call1, i8** %hgid, align 8, !dbg !59, !tbaa !49
  %5 = load i8*, i8** %hgid, align 8, !dbg !61, !tbaa !49
  %6 = load i8, i8* %5, align 1, !dbg !63, !tbaa !57
  %tobool2 = icmp ne i8 %6, 0, !dbg !64
  br i1 %tobool2, label %if.end, label %if.then, !dbg !65

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %hgid, align 8, !dbg !66, !tbaa !49
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %hgid, align 8, !dbg !68, !tbaa !49
  %8 = load i8*, i8** %sep, align 8, !dbg !69, !tbaa !49
  %9 = load i8*, i8** %revision, align 8, !dbg !70, !tbaa !49
  %call3 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @Py_GetBuildInfo.buildinfo, i32 0, i32 0), i64 52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i8* %7, i8* %8, i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !71
  %10 = bitcast i8** %hgid to i8*, !dbg !72
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !72
  %11 = bitcast i8** %sep to i8*, !dbg !72
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !72
  %12 = bitcast i8** %revision to i8*, !dbg !72
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !72
  ret i8* getelementptr inbounds ([52 x i8], [52 x i8]* @Py_GetBuildInfo.buildinfo, i32 0, i32 0), !dbg !73
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define i8* @_Py_hgversion() #0 {
entry:
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), !dbg !74
}

; Function Attrs: nounwind uwtable
define i8* @_Py_hgidentifier() #0 {
entry:
  %hgtag = alloca i8*, align 8
  %hgid = alloca i8*, align 8
  %__s1_len = alloca i64, align 8
  %__s2_len = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__s1 = alloca i8*, align 8
  %__result = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %0 = bitcast i8** %hgtag to i8*, !dbg !75
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !75
  call void @llvm.dbg.declare(metadata i8** %hgtag, metadata !27, metadata !46), !dbg !76
  %1 = bitcast i8** %hgid to i8*, !dbg !75
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !75
  call void @llvm.dbg.declare(metadata i8** %hgid, metadata !28, metadata !46), !dbg !77
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %hgtag, align 8, !dbg !78, !tbaa !49
  %2 = load i8*, i8** %hgtag, align 8, !dbg !79, !tbaa !49
  %3 = load i8, i8* %2, align 1, !dbg !80, !tbaa !57
  %conv = sext i8 %3 to i32, !dbg !81
  %tobool = icmp ne i32 %conv, 0, !dbg !81
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !82

land.lhs.true:                                    ; preds = %entry
  %4 = bitcast i64* %__s1_len to i8*, !dbg !83
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !83
  call void @llvm.dbg.declare(metadata i64* %__s1_len, metadata !29, metadata !46), !dbg !85
  %5 = bitcast i64* %__s2_len to i8*, !dbg !86
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !86
  call void @llvm.dbg.declare(metadata i64* %__s2_len, metadata !32, metadata !46), !dbg !87
  br i1 icmp eq (i64 sub (i64 ptrtoint (i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 1) to i64), i64 ptrtoint ([4 x i8]* @.str.6 to i64)), i64 1), label %land.lhs.true.1, label %cond.false, !dbg !88

land.lhs.true.1:                                  ; preds = %land.lhs.true
  store i64 3, i64* %__s2_len, align 8, !dbg !89, !tbaa !91
  %6 = load i64, i64* %__s2_len, align 8, !dbg !93, !tbaa !91
  %cmp = icmp ult i64 %6, 4, !dbg !94
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !95

cond.true:                                        ; preds = %land.lhs.true.1
  %7 = bitcast i8** %__s1 to i8*, !dbg !96
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !96
  call void @llvm.dbg.declare(metadata i8** %__s1, metadata !33, metadata !46), !dbg !98
  %8 = load i8*, i8** %hgtag, align 8, !dbg !99, !tbaa !49
  store i8* %8, i8** %__s1, align 8, !dbg !98, !tbaa !49
  %9 = bitcast i32* %__result to i8*, !dbg !100
  call void @llvm.lifetime.start(i64 4, i8* %9) #1, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %__result, metadata !35, metadata !46), !dbg !101
  %10 = load i8*, i8** %__s1, align 8, !dbg !102, !tbaa !49
  %arrayidx = getelementptr i8, i8* %10, i64 0, !dbg !102
  %11 = load i8, i8* %arrayidx, align 1, !dbg !102, !tbaa !57
  %conv5 = zext i8 %11 to i32, !dbg !102
  %12 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), align 1, !dbg !103, !tbaa !57
  %conv6 = zext i8 %12 to i32, !dbg !103
  %sub = sub i32 %conv5, %conv6, !dbg !104
  store i32 %sub, i32* %__result, align 4, !dbg !101, !tbaa !105
  %13 = load i64, i64* %__s2_len, align 8, !dbg !107, !tbaa !91
  %cmp7 = icmp ugt i64 %13, 0, !dbg !109
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.37, !dbg !110

land.lhs.true.9:                                  ; preds = %cond.true
  %14 = load i32, i32* %__result, align 4, !dbg !111, !tbaa !105
  %cmp10 = icmp eq i32 %14, 0, !dbg !113
  br i1 %cmp10, label %if.then, label %if.end.37, !dbg !114

if.then:                                          ; preds = %land.lhs.true.9
  %15 = load i8*, i8** %__s1, align 8, !dbg !115, !tbaa !49
  %arrayidx12 = getelementptr i8, i8* %15, i64 1, !dbg !115
  %16 = load i8, i8* %arrayidx12, align 1, !dbg !115, !tbaa !57
  %conv13 = zext i8 %16 to i32, !dbg !115
  %17 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 1), align 1, !dbg !118, !tbaa !57
  %conv14 = zext i8 %17 to i32, !dbg !118
  %sub15 = sub i32 %conv13, %conv14, !dbg !119
  store i32 %sub15, i32* %__result, align 4, !dbg !120, !tbaa !105
  %18 = load i64, i64* %__s2_len, align 8, !dbg !121, !tbaa !91
  %cmp16 = icmp ugt i64 %18, 1, !dbg !123
  br i1 %cmp16, label %land.lhs.true.18, label %if.end.36, !dbg !124

land.lhs.true.18:                                 ; preds = %if.then
  %19 = load i32, i32* %__result, align 4, !dbg !125, !tbaa !105
  %cmp19 = icmp eq i32 %19, 0, !dbg !127
  br i1 %cmp19, label %if.then.21, label %if.end.36, !dbg !128

if.then.21:                                       ; preds = %land.lhs.true.18
  %20 = load i8*, i8** %__s1, align 8, !dbg !129, !tbaa !49
  %arrayidx22 = getelementptr i8, i8* %20, i64 2, !dbg !129
  %21 = load i8, i8* %arrayidx22, align 1, !dbg !129, !tbaa !57
  %conv23 = zext i8 %21 to i32, !dbg !129
  %22 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 2), align 1, !dbg !132, !tbaa !57
  %conv24 = zext i8 %22 to i32, !dbg !132
  %sub25 = sub i32 %conv23, %conv24, !dbg !133
  store i32 %sub25, i32* %__result, align 4, !dbg !134, !tbaa !105
  %23 = load i64, i64* %__s2_len, align 8, !dbg !135, !tbaa !91
  %cmp26 = icmp ugt i64 %23, 2, !dbg !137
  br i1 %cmp26, label %land.lhs.true.28, label %if.end, !dbg !138

land.lhs.true.28:                                 ; preds = %if.then.21
  %24 = load i32, i32* %__result, align 4, !dbg !139, !tbaa !105
  %cmp29 = icmp eq i32 %24, 0, !dbg !141
  br i1 %cmp29, label %if.then.31, label %if.end, !dbg !142

if.then.31:                                       ; preds = %land.lhs.true.28
  %25 = load i8*, i8** %__s1, align 8, !dbg !143, !tbaa !49
  %arrayidx32 = getelementptr i8, i8* %25, i64 3, !dbg !143
  %26 = load i8, i8* %arrayidx32, align 1, !dbg !143, !tbaa !57
  %conv33 = zext i8 %26 to i32, !dbg !143
  %27 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i64 3), align 1, !dbg !145, !tbaa !57
  %conv34 = zext i8 %27 to i32, !dbg !145
  %sub35 = sub i32 %conv33, %conv34, !dbg !146
  store i32 %sub35, i32* %__result, align 4, !dbg !147, !tbaa !105
  br label %if.end, !dbg !148

if.end:                                           ; preds = %if.then.31, %land.lhs.true.28, %if.then.21
  br label %if.end.36, !dbg !149

if.end.36:                                        ; preds = %if.end, %land.lhs.true.18, %if.then
  br label %if.end.37, !dbg !153

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true.9, %cond.true
  %28 = load i32, i32* %__result, align 4, !dbg !157, !tbaa !105
  store i32 %28, i32* %tmp38, !dbg !161, !tbaa !105
  %29 = bitcast i32* %__result to i8*, !dbg !162
  call void @llvm.lifetime.end(i64 4, i8* %29) #1, !dbg !162
  %30 = bitcast i8** %__s1 to i8*, !dbg !162
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !162
  %31 = load i32, i32* %tmp38, !dbg !163, !tbaa !105
  br label %cond.end, !dbg !95

cond.false:                                       ; preds = %land.lhs.true.1, %land.lhs.true
  %32 = load i8*, i8** %hgtag, align 8, !dbg !164, !tbaa !49
  %call = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #1, !dbg !167
  br label %cond.end, !dbg !95

cond.end:                                         ; preds = %cond.false, %if.end.37
  %cond = phi i32 [ %31, %if.end.37 ], [ %call, %cond.false ], !dbg !95
  store i32 %cond, i32* %tmp, !dbg !168, !tbaa !105
  %33 = bitcast i64* %__s2_len to i8*, !dbg !171
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !171
  %34 = bitcast i64* %__s1_len to i8*, !dbg !171
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !171
  %35 = load i32, i32* %tmp, !dbg !172, !tbaa !105
  %cmp39 = icmp ne i32 %35, 0, !dbg !173
  br i1 %cmp39, label %if.then.41, label %if.else, !dbg !174

if.then.41:                                       ; preds = %cond.end
  %36 = load i8*, i8** %hgtag, align 8, !dbg !175, !tbaa !49
  store i8* %36, i8** %hgid, align 8, !dbg !176, !tbaa !49
  br label %if.end.42, !dbg !177

if.else:                                          ; preds = %cond.end, %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), i8** %hgid, align 8, !dbg !178, !tbaa !49
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.41
  %37 = load i8*, i8** %hgid, align 8, !dbg !179, !tbaa !49
  %38 = bitcast i8** %hgid to i8*, !dbg !180
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !180
  %39 = bitcast i8** %hgtag to i8*, !dbg !180
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !180
  ret i8* %37, !dbg !181
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @strcmp(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !15, globals: !37)
!1 = !DIFile(filename: "getbuildinfo.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !7, !9, !12}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !5, line: 62, baseType: !6)
!5 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!15 = !{!16, !24, !25}
!16 = !DISubprogram(name: "Py_GetBuildInfo", scope: !17, file: !17, line: 35, type: !18, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @Py_GetBuildInfo, variables: !20)
!17 = !DIFile(filename: "./Modules/getbuildinfo.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DISubroutineType(types: !19)
!19 = !{!12}
!20 = !{!21, !22, !23}
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "revision", scope: !16, file: !17, line: 40, type: !12)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sep", scope: !16, file: !17, line: 41, type: !12)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hgid", scope: !16, file: !17, line: 42, type: !12)
!24 = !DISubprogram(name: "_Py_hgversion", scope: !17, file: !17, line: 52, type: !18, isLocal: false, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @_Py_hgversion, variables: !2)
!25 = !DISubprogram(name: "_Py_hgidentifier", scope: !17, file: !17, line: 58, type: !18, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @_Py_hgidentifier, variables: !26)
!26 = !{!27, !28, !29, !32, !33, !35}
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hgtag", scope: !25, file: !17, line: 60, type: !12)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hgid", scope: !25, file: !17, line: 60, type: !12)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1_len", scope: !30, file: !17, line: 62, type: !4)
!30 = distinct !DILexicalBlock(scope: !31, file: !17, line: 62, column: 36)
!31 = distinct !DILexicalBlock(scope: !25, file: !17, line: 62, column: 9)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s2_len", scope: !30, file: !17, line: 62, type: !4)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__s1", scope: !34, file: !17, line: 62, type: !9)
!34 = distinct !DILexicalBlock(scope: !30, file: !17, line: 62, column: 1570)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__result", scope: !34, file: !17, line: 62, type: !36)
!36 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!37 = !{!38}
!38 = !DIGlobalVariable(name: "buildinfo", scope: !16, file: !17, line: 37, type: !39, isLocal: true, isDefinition: true, variable: [52 x i8]* @Py_GetBuildInfo.buildinfo)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 416, align: 8, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 52)
!42 = !{i32 2, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!45 = !DILocation(line: 40, column: 5, scope: !16)
!46 = !DIExpression()
!47 = !DILocation(line: 40, column: 17, scope: !16)
!48 = !DILocation(line: 40, column: 28, scope: !16)
!49 = !{!50, !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 41, column: 5, scope: !16)
!54 = !DILocation(line: 41, column: 17, scope: !16)
!55 = !DILocation(line: 41, column: 24, scope: !16)
!56 = !DILocation(line: 41, column: 23, scope: !16)
!57 = !{!51, !51, i64 0}
!58 = !DILocation(line: 42, column: 5, scope: !16)
!59 = !DILocation(line: 42, column: 17, scope: !16)
!60 = !DILocation(line: 42, column: 24, scope: !16)
!61 = !DILocation(line: 43, column: 12, scope: !62)
!62 = distinct !DILexicalBlock(scope: !16, file: !17, line: 43, column: 9)
!63 = !DILocation(line: 43, column: 11, scope: !62)
!64 = !DILocation(line: 43, column: 10, scope: !62)
!65 = !DILocation(line: 43, column: 9, scope: !16)
!66 = !DILocation(line: 44, column: 14, scope: !62)
!67 = !DILocation(line: 44, column: 9, scope: !62)
!68 = !DILocation(line: 46, column: 42, scope: !16)
!69 = !DILocation(line: 46, column: 48, scope: !16)
!70 = !DILocation(line: 46, column: 53, scope: !16)
!71 = !DILocation(line: 45, column: 5, scope: !16)
!72 = !DILocation(line: 49, column: 1, scope: !16)
!73 = !DILocation(line: 48, column: 5, scope: !16)
!74 = !DILocation(line: 54, column: 5, scope: !24)
!75 = !DILocation(line: 60, column: 5, scope: !25)
!76 = !DILocation(line: 60, column: 17, scope: !25)
!77 = !DILocation(line: 60, column: 25, scope: !25)
!78 = !DILocation(line: 61, column: 11, scope: !25)
!79 = !DILocation(line: 62, column: 11, scope: !31)
!80 = !DILocation(line: 62, column: 10, scope: !31)
!81 = !DILocation(line: 62, column: 9, scope: !31)
!82 = !DILocation(line: 62, column: 18, scope: !31)
!83 = !DILocation(line: 62, column: 38, scope: !84)
!84 = !DILexicalBlockFile(scope: !30, file: !17, discriminator: 1)
!85 = !DILocation(line: 62, column: 45, scope: !30)
!86 = !DILocation(line: 62, column: 38, scope: !30)
!87 = !DILocation(line: 62, column: 55, scope: !30)
!88 = !DILocation(line: 62, column: 1363, scope: !30)
!89 = !DILocation(line: 62, column: 1376, scope: !90)
!90 = !DILexicalBlockFile(scope: !30, file: !17, discriminator: 2)
!91 = !{!92, !92, i64 0}
!92 = !{!"long", !51, i64 0}
!93 = !DILocation(line: 62, column: 1394, scope: !30)
!94 = !DILocation(line: 62, column: 1403, scope: !30)
!95 = !DILocation(line: 62, column: 1256, scope: !30)
!96 = !DILocation(line: 62, column: 1572, scope: !97)
!97 = !DILexicalBlockFile(scope: !34, file: !17, discriminator: 4)
!98 = !DILocation(line: 62, column: 1593, scope: !34)
!99 = !DILocation(line: 62, column: 1640, scope: !34)
!100 = !DILocation(line: 62, column: 1648, scope: !34)
!101 = !DILocation(line: 62, column: 1661, scope: !34)
!102 = !DILocation(line: 62, column: 1672, scope: !34)
!103 = !DILocation(line: 62, column: 1682, scope: !34)
!104 = !DILocation(line: 62, column: 1680, scope: !34)
!105 = !{!106, !106, i64 0}
!106 = !{!"int", !51, i64 0}
!107 = !DILocation(line: 62, column: 1739, scope: !108)
!108 = distinct !DILexicalBlock(scope: !34, file: !17, line: 62, column: 1739)
!109 = !DILocation(line: 62, column: 1748, scope: !108)
!110 = !DILocation(line: 62, column: 1752, scope: !108)
!111 = !DILocation(line: 62, column: 1755, scope: !112)
!112 = !DILexicalBlockFile(scope: !108, file: !17, discriminator: 6)
!113 = !DILocation(line: 62, column: 1764, scope: !108)
!114 = !DILocation(line: 62, column: 1739, scope: !34)
!115 = !DILocation(line: 62, column: 1784, scope: !116)
!116 = !DILexicalBlockFile(scope: !117, file: !17, discriminator: 8)
!117 = distinct !DILexicalBlock(scope: !108, file: !17, line: 62, column: 1770)
!118 = !DILocation(line: 62, column: 1794, scope: !117)
!119 = !DILocation(line: 62, column: 1792, scope: !117)
!120 = !DILocation(line: 62, column: 1781, scope: !117)
!121 = !DILocation(line: 62, column: 1852, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !17, line: 62, column: 1852)
!123 = !DILocation(line: 62, column: 1861, scope: !122)
!124 = !DILocation(line: 62, column: 1865, scope: !122)
!125 = !DILocation(line: 62, column: 1868, scope: !126)
!126 = !DILexicalBlockFile(scope: !122, file: !17, discriminator: 10)
!127 = !DILocation(line: 62, column: 1877, scope: !122)
!128 = !DILocation(line: 62, column: 1852, scope: !117)
!129 = !DILocation(line: 62, column: 1897, scope: !130)
!130 = !DILexicalBlockFile(scope: !131, file: !17, discriminator: 12)
!131 = distinct !DILexicalBlock(scope: !122, file: !17, line: 62, column: 1883)
!132 = !DILocation(line: 62, column: 1907, scope: !131)
!133 = !DILocation(line: 62, column: 1905, scope: !131)
!134 = !DILocation(line: 62, column: 1894, scope: !131)
!135 = !DILocation(line: 62, column: 1965, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !17, line: 62, column: 1965)
!137 = !DILocation(line: 62, column: 1974, scope: !136)
!138 = !DILocation(line: 62, column: 1978, scope: !136)
!139 = !DILocation(line: 62, column: 1981, scope: !140)
!140 = !DILexicalBlockFile(scope: !136, file: !17, discriminator: 14)
!141 = !DILocation(line: 62, column: 1990, scope: !136)
!142 = !DILocation(line: 62, column: 1965, scope: !131)
!143 = !DILocation(line: 62, column: 2008, scope: !144)
!144 = !DILexicalBlockFile(scope: !136, file: !17, discriminator: 16)
!145 = !DILocation(line: 62, column: 2018, scope: !136)
!146 = !DILocation(line: 62, column: 2016, scope: !136)
!147 = !DILocation(line: 62, column: 2005, scope: !136)
!148 = !DILocation(line: 62, column: 1996, scope: !136)
!149 = !DILocation(line: 62, column: 2072, scope: !150)
!150 = !DILexicalBlockFile(scope: !151, file: !17, discriminator: 18)
!151 = !DILexicalBlockFile(scope: !152, file: !17, discriminator: 17)
!152 = !DILexicalBlockFile(scope: !131, file: !17, discriminator: 15)
!153 = !DILocation(line: 62, column: 2074, scope: !154)
!154 = !DILexicalBlockFile(scope: !155, file: !17, discriminator: 19)
!155 = !DILexicalBlockFile(scope: !156, file: !17, discriminator: 13)
!156 = !DILexicalBlockFile(scope: !117, file: !17, discriminator: 11)
!157 = !DILocation(line: 62, column: 2076, scope: !158)
!158 = !DILexicalBlockFile(scope: !159, file: !17, discriminator: 20)
!159 = !DILexicalBlockFile(scope: !160, file: !17, discriminator: 9)
!160 = !DILexicalBlockFile(scope: !34, file: !17, discriminator: 7)
!161 = !DILocation(line: 62, column: 1767, scope: !108)
!162 = !DILocation(line: 62, column: 2086, scope: !30)
!163 = !DILocation(line: 62, column: 2086, scope: !34)
!164 = !DILocation(line: 62, column: 2111, scope: !165)
!165 = !DILexicalBlockFile(scope: !166, file: !17, discriminator: 5)
!166 = !DILexicalBlockFile(scope: !30, file: !17, discriminator: 3)
!167 = !DILocation(line: 62, column: 2093, scope: !30)
!168 = !DILocation(line: 62, column: 38, scope: !169)
!169 = !DILexicalBlockFile(scope: !170, file: !17, discriminator: 22)
!170 = !DILexicalBlockFile(scope: !30, file: !17, discriminator: 21)
!171 = !DILocation(line: 62, column: 2129, scope: !31)
!172 = !DILocation(line: 62, column: 2129, scope: !30)
!173 = !DILocation(line: 62, column: 2132, scope: !31)
!174 = !DILocation(line: 62, column: 9, scope: !25)
!175 = !DILocation(line: 63, column: 16, scope: !31)
!176 = !DILocation(line: 63, column: 14, scope: !31)
!177 = !DILocation(line: 63, column: 9, scope: !31)
!178 = !DILocation(line: 65, column: 14, scope: !31)
!179 = !DILocation(line: 66, column: 12, scope: !25)
!180 = !DILocation(line: 67, column: 1, scope: !25)
!181 = !DILocation(line: 66, column: 5, scope: !25)
