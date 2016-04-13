; ModuleID = 'irs-onlybc/listnode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }

@stdout = external global %struct._IO_FILE*, align 8
@level = internal global i32 0, align 4
@atbol = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"? \00", align 1

; Function Attrs: nounwind uwtable
define void @PyNode_ListTree(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct._node** %n.addr, metadata !27, metadata !116), !dbg !117
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !118, !tbaa !112
  %1 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !119, !tbaa !112
  call void @listnode(%struct._IO_FILE* %0, %struct._node* %1), !dbg !120
  ret void, !dbg !121
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal void @listnode(%struct._IO_FILE* %fp, %struct._node* %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca %struct._node*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !91, metadata !116), !dbg !122
  store %struct._node* %n, %struct._node** %n.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct._node** %n.addr, metadata !92, metadata !116), !dbg !123
  store i32 0, i32* @level, align 4, !dbg !124, !tbaa !125
  store i32 1, i32* @atbol, align 4, !dbg !127, !tbaa !125
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !128, !tbaa !112
  %1 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !129, !tbaa !112
  call void @list1node(%struct._IO_FILE* %0, %struct._node* %1), !dbg !130
  ret void, !dbg !131
}

; Function Attrs: nounwind uwtable
define internal void @list1node(%struct._IO_FILE* %fp, %struct._node* %n) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  %i16 = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp.addr, metadata !95, metadata !116), !dbg !132
  store %struct._node* %n, %struct._node** %n.addr, align 8, !tbaa !112
  call void @llvm.dbg.declare(metadata %struct._node** %n.addr, metadata !96, metadata !116), !dbg !133
  %0 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !134, !tbaa !112
  %cmp = icmp eq %struct._node* %0, null, !dbg !136
  br i1 %cmp, label %if.then, label %if.end, !dbg !137

if.then:                                          ; preds = %entry
  br label %if.end.44, !dbg !138

if.end:                                           ; preds = %entry
  %1 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !139, !tbaa !112
  %n_type = getelementptr inbounds %struct._node, %struct._node* %1, i32 0, i32 0, !dbg !140
  %2 = load i16, i16* %n_type, align 2, !dbg !140, !tbaa !141
  %conv = sext i16 %2 to i32, !dbg !144
  %cmp1 = icmp sge i32 %conv, 256, !dbg !145
  br i1 %cmp1, label %if.then.3, label %if.else, !dbg !146

if.then.3:                                        ; preds = %if.end
  %3 = bitcast i32* %i to i8*, !dbg !147
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !147
  call void @llvm.dbg.declare(metadata i32* %i, metadata !97, metadata !116), !dbg !148
  store i32 0, i32* %i, align 4, !dbg !149, !tbaa !125
  br label %for.cond, !dbg !151

for.cond:                                         ; preds = %for.inc, %if.then.3
  %4 = load i32, i32* %i, align 4, !dbg !152, !tbaa !125
  %5 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !156, !tbaa !112
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 4, !dbg !157
  %6 = load i32, i32* %n_nchildren, align 4, !dbg !157, !tbaa !158
  %cmp4 = icmp slt i32 %4, %6, !dbg !159
  br i1 %cmp4, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !161, !tbaa !112
  %8 = load i32, i32* %i, align 4, !dbg !162, !tbaa !125
  %idxprom = sext i32 %8 to i64, !dbg !163
  %9 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !164, !tbaa !112
  %n_child = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 5, !dbg !165
  %10 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !165, !tbaa !166
  %arrayidx = getelementptr %struct._node, %struct._node* %10, i64 %idxprom, !dbg !163
  call void @list1node(%struct._IO_FILE* %7, %struct._node* %arrayidx), !dbg !167
  br label %for.inc, !dbg !167

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !168, !tbaa !125
  %inc = add i32 %11, 1, !dbg !168
  store i32 %inc, i32* %i, align 4, !dbg !168, !tbaa !125
  br label %for.cond, !dbg !169

for.end:                                          ; preds = %for.cond
  %12 = bitcast i32* %i to i8*, !dbg !170
  call void @llvm.lifetime.end(i64 4, i8* %12) #2, !dbg !170
  br label %if.end.44, !dbg !171

if.else:                                          ; preds = %if.end
  %13 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !172, !tbaa !112
  %n_type6 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 0, !dbg !173
  %14 = load i16, i16* %n_type6, align 2, !dbg !173, !tbaa !141
  %conv7 = sext i16 %14 to i32, !dbg !174
  %cmp8 = icmp slt i32 %conv7, 256, !dbg !175
  br i1 %cmp8, label %if.then.10, label %if.else.41, !dbg !176

if.then.10:                                       ; preds = %if.else
  %15 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !177, !tbaa !112
  %n_type11 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 0, !dbg !178
  %16 = load i16, i16* %n_type11, align 2, !dbg !178, !tbaa !141
  %conv12 = sext i16 %16 to i32, !dbg !179
  switch i32 %conv12, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.14
  ], !dbg !180

sw.bb:                                            ; preds = %if.then.10
  %17 = load i32, i32* @level, align 4, !dbg !181, !tbaa !125
  %inc13 = add i32 %17, 1, !dbg !181
  store i32 %inc13, i32* @level, align 4, !dbg !181, !tbaa !125
  br label %sw.epilog, !dbg !182

sw.bb.14:                                         ; preds = %if.then.10
  %18 = load i32, i32* @level, align 4, !dbg !183, !tbaa !125
  %dec = add i32 %18, -1, !dbg !183
  store i32 %dec, i32* @level, align 4, !dbg !183, !tbaa !125
  br label %sw.epilog, !dbg !184

sw.default:                                       ; preds = %if.then.10
  %19 = load i32, i32* @atbol, align 4, !dbg !185, !tbaa !125
  %tobool = icmp ne i32 %19, 0, !dbg !185
  br i1 %tobool, label %if.then.15, label %if.end.24, !dbg !186

if.then.15:                                       ; preds = %sw.default
  %20 = bitcast i32* %i16 to i8*, !dbg !187
  call void @llvm.lifetime.start(i64 4, i8* %20) #2, !dbg !187
  call void @llvm.dbg.declare(metadata i32* %i16, metadata !100, metadata !116), !dbg !188
  store i32 0, i32* %i16, align 4, !dbg !189, !tbaa !125
  br label %for.cond.17, !dbg !191

for.cond.17:                                      ; preds = %for.inc.21, %if.then.15
  %21 = load i32, i32* %i16, align 4, !dbg !192, !tbaa !125
  %22 = load i32, i32* @level, align 4, !dbg !196, !tbaa !125
  %cmp18 = icmp slt i32 %21, %22, !dbg !197
  br i1 %cmp18, label %for.body.20, label %for.end.23, !dbg !198

for.body.20:                                      ; preds = %for.cond.17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !199, !tbaa !112
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !200
  br label %for.inc.21, !dbg !200

for.inc.21:                                       ; preds = %for.body.20
  %24 = load i32, i32* %i16, align 4, !dbg !201, !tbaa !125
  %inc22 = add i32 %24, 1, !dbg !201
  store i32 %inc22, i32* %i16, align 4, !dbg !201, !tbaa !125
  br label %for.cond.17, !dbg !202

for.end.23:                                       ; preds = %for.cond.17
  store i32 0, i32* @atbol, align 4, !dbg !203, !tbaa !125
  %25 = bitcast i32* %i16 to i8*, !dbg !204
  call void @llvm.lifetime.end(i64 4, i8* %25) #2, !dbg !204
  br label %if.end.24, !dbg !205

if.end.24:                                        ; preds = %for.end.23, %sw.default
  %26 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !206, !tbaa !112
  %n_type25 = getelementptr inbounds %struct._node, %struct._node* %26, i32 0, i32 0, !dbg !208
  %27 = load i16, i16* %n_type25, align 2, !dbg !208, !tbaa !141
  %conv26 = sext i16 %27 to i32, !dbg !209
  %cmp27 = icmp eq i32 %conv26, 4, !dbg !210
  br i1 %cmp27, label %if.then.29, label %if.else.37, !dbg !211

if.then.29:                                       ; preds = %if.end.24
  %28 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !212, !tbaa !112
  %n_str = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 1, !dbg !215
  %29 = load i8*, i8** %n_str, align 8, !dbg !215, !tbaa !216
  %cmp30 = icmp ne i8* %29, null, !dbg !217
  br i1 %cmp30, label %if.then.32, label %if.end.35, !dbg !218

if.then.32:                                       ; preds = %if.then.29
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !219, !tbaa !112
  %31 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !220, !tbaa !112
  %n_str33 = getelementptr inbounds %struct._node, %struct._node* %31, i32 0, i32 1, !dbg !221
  %32 = load i8*, i8** %n_str33, align 8, !dbg !221, !tbaa !216
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* %32), !dbg !222
  br label %if.end.35, !dbg !222

if.end.35:                                        ; preds = %if.then.32, %if.then.29
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !223, !tbaa !112
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !224
  store i32 1, i32* @atbol, align 4, !dbg !225, !tbaa !125
  br label %if.end.40, !dbg !226

if.else.37:                                       ; preds = %if.end.24
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !227, !tbaa !112
  %35 = load %struct._node*, %struct._node** %n.addr, align 8, !dbg !228, !tbaa !112
  %n_str38 = getelementptr inbounds %struct._node, %struct._node* %35, i32 0, i32 1, !dbg !229
  %36 = load i8*, i8** %n_str38, align 8, !dbg !229, !tbaa !216
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %36), !dbg !230
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.end.35
  br label %sw.epilog, !dbg !231

sw.epilog:                                        ; preds = %if.end.40, %sw.bb.14, %sw.bb
  br label %if.end.43, !dbg !232

if.else.41:                                       ; preds = %if.else
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8, !dbg !233, !tbaa !112
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)), !dbg !234
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.41, %sw.epilog
  br label %if.end.44

if.end.44:                                        ; preds = %if.then, %if.end.43, %for.end
  ret void, !dbg !235
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!109, !110}
!llvm.ident = !{!111}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !106)
!1 = !DIFile(filename: "listnode.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !28, !93}
!6 = !DISubprogram(name: "PyNode_ListTree", scope: !7, file: !7, line: 13, type: !8, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._node*)* @PyNode_ListTree, variables: !26)
!7 = !DIFile(filename: "Parser/listnode.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !12, line: 17, baseType: !13)
!12 = !DIFile(filename: "Include/node.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !12, line: 10, size: 320, align: 64, elements: !14)
!14 = !{!15, !17, !20, !22, !23, !24}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !13, file: !12, line: 11, baseType: !16, size: 16, align: 16)
!16 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "n_str", scope: !13, file: !12, line: 12, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "n_lineno", scope: !13, file: !12, line: 13, baseType: !21, size: 32, align: 32, offset: 128)
!21 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "n_col_offset", scope: !13, file: !12, line: 14, baseType: !21, size: 32, align: 32, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "n_nchildren", scope: !13, file: !12, line: 15, baseType: !21, size: 32, align: 32, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "n_child", scope: !13, file: !12, line: 16, baseType: !25, size: 64, align: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!26 = !{!27}
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !6, file: !7, line: 13, type: !10)
!28 = !DISubprogram(name: "listnode", scope: !7, file: !7, line: 21, type: !29, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*, %struct._node*)* @listnode, variables: !90)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !10}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 48, baseType: !34)
!33 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 246, size: 1728, align: 64, elements: !36)
!35 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !57, !58, !59, !60, !64, !66, !68, !72, !75, !77, !78, !79, !80, !81, !85, !86}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !35, line: 247, baseType: !21, size: 32, align: 32)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !34, file: !35, line: 252, baseType: !18, size: 64, align: 64, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !34, file: !35, line: 253, baseType: !18, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !34, file: !35, line: 254, baseType: !18, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !34, file: !35, line: 255, baseType: !18, size: 64, align: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !34, file: !35, line: 256, baseType: !18, size: 64, align: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !34, file: !35, line: 257, baseType: !18, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !34, file: !35, line: 258, baseType: !18, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !34, file: !35, line: 259, baseType: !18, size: 64, align: 64, offset: 512)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !34, file: !35, line: 261, baseType: !18, size: 64, align: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !34, file: !35, line: 262, baseType: !18, size: 64, align: 64, offset: 640)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !34, file: !35, line: 263, baseType: !18, size: 64, align: 64, offset: 704)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !34, file: !35, line: 265, baseType: !50, size: 64, align: 64, offset: 768)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !35, line: 161, size: 192, align: 64, elements: !52)
!52 = !{!53, !54, !56}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !51, file: !35, line: 162, baseType: !50, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !51, file: !35, line: 163, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !51, file: !35, line: 167, baseType: !21, size: 32, align: 32, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !34, file: !35, line: 267, baseType: !55, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !34, file: !35, line: 269, baseType: !21, size: 32, align: 32, offset: 896)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !35, line: 273, baseType: !21, size: 32, align: 32, offset: 928)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !34, file: !35, line: 275, baseType: !61, size: 64, align: 64, offset: 960)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !62, line: 140, baseType: !63)
!62 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!63 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !34, file: !35, line: 279, baseType: !65, size: 16, align: 16, offset: 1024)
!65 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !34, file: !35, line: 280, baseType: !67, size: 8, align: 8, offset: 1040)
!67 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !34, file: !35, line: 281, baseType: !69, size: 8, align: 8, offset: 1048)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, align: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !35, line: 285, baseType: !73, size: 64, align: 64, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !35, line: 155, baseType: null)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !35, line: 294, baseType: !76, size: 64, align: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !62, line: 141, baseType: !63)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !34, file: !35, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !34, file: !35, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !34, file: !35, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !34, file: !35, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !34, file: !35, line: 307, baseType: !82, size: 64, align: 64, offset: 1472)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !83, line: 62, baseType: !84)
!83 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!84 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !34, file: !35, line: 309, baseType: !21, size: 32, align: 32, offset: 1536)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !34, file: !35, line: 311, baseType: !87, size: 160, align: 8, offset: 1568)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, align: 8, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 20)
!90 = !{!91, !92}
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !28, file: !7, line: 21, type: !31)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !28, file: !7, line: 21, type: !10)
!93 = !DISubprogram(name: "list1node", scope: !7, file: !7, line: 29, type: !29, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*, %struct._node*)* @list1node, variables: !94)
!94 = !{!95, !96, !97, !100}
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !93, file: !7, line: 29, type: !31)
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !93, file: !7, line: 29, type: !10)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !98, file: !7, line: 34, type: !21)
!98 = distinct !DILexicalBlock(scope: !99, file: !7, line: 33, column: 35)
!99 = distinct !DILexicalBlock(scope: !93, file: !7, line: 33, column: 9)
!100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !101, file: !7, line: 48, type: !21)
!101 = distinct !DILexicalBlock(scope: !102, file: !7, line: 47, column: 24)
!102 = distinct !DILexicalBlock(scope: !103, file: !7, line: 47, column: 17)
!103 = distinct !DILexicalBlock(scope: !104, file: !7, line: 39, column: 32)
!104 = distinct !DILexicalBlock(scope: !105, file: !7, line: 38, column: 39)
!105 = distinct !DILexicalBlock(scope: !99, file: !7, line: 38, column: 14)
!106 = !{!107, !108}
!107 = !DIGlobalVariable(name: "level", scope: !0, file: !7, line: 18, type: !21, isLocal: true, isDefinition: true, variable: i32* @level)
!108 = !DIGlobalVariable(name: "atbol", scope: !0, file: !7, line: 18, type: !21, isLocal: true, isDefinition: true, variable: i32* @atbol)
!109 = !{i32 2, !"Dwarf Version", i32 4}
!110 = !{i32 2, !"Debug Info Version", i32 3}
!111 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!112 = !{!113, !113, i64 0}
!113 = !{!"any pointer", !114, i64 0}
!114 = !{!"omnipotent char", !115, i64 0}
!115 = !{!"Simple C/C++ TBAA"}
!116 = !DIExpression()
!117 = !DILocation(line: 13, column: 23, scope: !6)
!118 = !DILocation(line: 15, column: 14, scope: !6)
!119 = !DILocation(line: 15, column: 22, scope: !6)
!120 = !DILocation(line: 15, column: 5, scope: !6)
!121 = !DILocation(line: 16, column: 1, scope: !6)
!122 = !DILocation(line: 21, column: 16, scope: !28)
!123 = !DILocation(line: 21, column: 26, scope: !28)
!124 = !DILocation(line: 23, column: 11, scope: !28)
!125 = !{!126, !126, i64 0}
!126 = !{!"int", !114, i64 0}
!127 = !DILocation(line: 24, column: 11, scope: !28)
!128 = !DILocation(line: 25, column: 15, scope: !28)
!129 = !DILocation(line: 25, column: 19, scope: !28)
!130 = !DILocation(line: 25, column: 5, scope: !28)
!131 = !DILocation(line: 26, column: 1, scope: !28)
!132 = !DILocation(line: 29, column: 17, scope: !93)
!133 = !DILocation(line: 29, column: 27, scope: !93)
!134 = !DILocation(line: 31, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !93, file: !7, line: 31, column: 9)
!136 = !DILocation(line: 31, column: 11, scope: !135)
!137 = !DILocation(line: 31, column: 9, scope: !93)
!138 = !DILocation(line: 32, column: 9, scope: !135)
!139 = !DILocation(line: 33, column: 13, scope: !99)
!140 = !DILocation(line: 33, column: 17, scope: !99)
!141 = !{!142, !143, i64 0}
!142 = !{!"_node", !143, i64 0, !113, i64 8, !126, i64 16, !126, i64 20, !126, i64 24, !113, i64 32}
!143 = !{!"short", !114, i64 0}
!144 = !DILocation(line: 33, column: 10, scope: !99)
!145 = !DILocation(line: 33, column: 26, scope: !99)
!146 = !DILocation(line: 33, column: 9, scope: !93)
!147 = !DILocation(line: 34, column: 9, scope: !98)
!148 = !DILocation(line: 34, column: 13, scope: !98)
!149 = !DILocation(line: 35, column: 16, scope: !150)
!150 = distinct !DILexicalBlock(scope: !98, file: !7, line: 35, column: 9)
!151 = !DILocation(line: 35, column: 14, scope: !150)
!152 = !DILocation(line: 35, column: 21, scope: !153)
!153 = !DILexicalBlockFile(scope: !154, file: !7, discriminator: 2)
!154 = !DILexicalBlockFile(scope: !155, file: !7, discriminator: 1)
!155 = distinct !DILexicalBlock(scope: !150, file: !7, line: 35, column: 9)
!156 = !DILocation(line: 35, column: 27, scope: !155)
!157 = !DILocation(line: 35, column: 31, scope: !155)
!158 = !{!142, !126, i64 24}
!159 = !DILocation(line: 35, column: 23, scope: !155)
!160 = !DILocation(line: 35, column: 9, scope: !150)
!161 = !DILocation(line: 36, column: 23, scope: !155)
!162 = !DILocation(line: 36, column: 42, scope: !155)
!163 = !DILocation(line: 36, column: 29, scope: !155)
!164 = !DILocation(line: 36, column: 30, scope: !155)
!165 = !DILocation(line: 36, column: 34, scope: !155)
!166 = !{!142, !113, i64 32}
!167 = !DILocation(line: 36, column: 13, scope: !155)
!168 = !DILocation(line: 35, column: 46, scope: !155)
!169 = !DILocation(line: 35, column: 9, scope: !155)
!170 = !DILocation(line: 37, column: 5, scope: !99)
!171 = !DILocation(line: 37, column: 5, scope: !98)
!172 = !DILocation(line: 38, column: 18, scope: !105)
!173 = !DILocation(line: 38, column: 22, scope: !105)
!174 = !DILocation(line: 38, column: 15, scope: !105)
!175 = !DILocation(line: 38, column: 31, scope: !105)
!176 = !DILocation(line: 38, column: 14, scope: !99)
!177 = !DILocation(line: 39, column: 19, scope: !104)
!178 = !DILocation(line: 39, column: 23, scope: !104)
!179 = !DILocation(line: 39, column: 17, scope: !104)
!180 = !DILocation(line: 39, column: 9, scope: !104)
!181 = !DILocation(line: 41, column: 13, scope: !103)
!182 = !DILocation(line: 42, column: 13, scope: !103)
!183 = !DILocation(line: 44, column: 13, scope: !103)
!184 = !DILocation(line: 45, column: 13, scope: !103)
!185 = !DILocation(line: 47, column: 17, scope: !102)
!186 = !DILocation(line: 47, column: 17, scope: !103)
!187 = !DILocation(line: 48, column: 17, scope: !101)
!188 = !DILocation(line: 48, column: 21, scope: !101)
!189 = !DILocation(line: 49, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !101, file: !7, line: 49, column: 17)
!191 = !DILocation(line: 49, column: 22, scope: !190)
!192 = !DILocation(line: 49, column: 29, scope: !193)
!193 = !DILexicalBlockFile(scope: !194, file: !7, discriminator: 2)
!194 = !DILexicalBlockFile(scope: !195, file: !7, discriminator: 1)
!195 = distinct !DILexicalBlock(scope: !190, file: !7, line: 49, column: 17)
!196 = !DILocation(line: 49, column: 33, scope: !195)
!197 = !DILocation(line: 49, column: 31, scope: !195)
!198 = !DILocation(line: 49, column: 17, scope: !190)
!199 = !DILocation(line: 50, column: 29, scope: !195)
!200 = !DILocation(line: 50, column: 21, scope: !195)
!201 = !DILocation(line: 49, column: 40, scope: !195)
!202 = !DILocation(line: 49, column: 17, scope: !195)
!203 = !DILocation(line: 51, column: 23, scope: !101)
!204 = !DILocation(line: 52, column: 13, scope: !102)
!205 = !DILocation(line: 52, column: 13, scope: !101)
!206 = !DILocation(line: 53, column: 19, scope: !207)
!207 = distinct !DILexicalBlock(scope: !103, file: !7, line: 53, column: 17)
!208 = !DILocation(line: 53, column: 23, scope: !207)
!209 = !DILocation(line: 53, column: 17, scope: !207)
!210 = !DILocation(line: 53, column: 31, scope: !207)
!211 = !DILocation(line: 53, column: 17, scope: !103)
!212 = !DILocation(line: 54, column: 23, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !7, line: 54, column: 21)
!214 = distinct !DILexicalBlock(scope: !207, file: !7, line: 53, column: 37)
!215 = !DILocation(line: 54, column: 27, scope: !213)
!216 = !{!142, !113, i64 8}
!217 = !DILocation(line: 54, column: 34, scope: !213)
!218 = !DILocation(line: 54, column: 21, scope: !214)
!219 = !DILocation(line: 55, column: 29, scope: !213)
!220 = !DILocation(line: 55, column: 41, scope: !213)
!221 = !DILocation(line: 55, column: 45, scope: !213)
!222 = !DILocation(line: 55, column: 21, scope: !213)
!223 = !DILocation(line: 56, column: 25, scope: !214)
!224 = !DILocation(line: 56, column: 17, scope: !214)
!225 = !DILocation(line: 57, column: 23, scope: !214)
!226 = !DILocation(line: 58, column: 13, scope: !214)
!227 = !DILocation(line: 60, column: 25, scope: !207)
!228 = !DILocation(line: 60, column: 38, scope: !207)
!229 = !DILocation(line: 60, column: 42, scope: !207)
!230 = !DILocation(line: 60, column: 17, scope: !207)
!231 = !DILocation(line: 61, column: 13, scope: !103)
!232 = !DILocation(line: 63, column: 5, scope: !104)
!233 = !DILocation(line: 65, column: 17, scope: !105)
!234 = !DILocation(line: 65, column: 9, scope: !105)
!235 = !DILocation(line: 66, column: 1, scope: !93)
