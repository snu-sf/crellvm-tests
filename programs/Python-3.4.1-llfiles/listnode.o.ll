; ModuleID = 'listnode.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }

@stdout = external global %struct._IO_FILE*, align 8
@level = internal unnamed_addr global i32 0, align 4
@atbol = internal unnamed_addr global i1 false
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: nounwind uwtable
define void @PyNode_ListTree(%struct._node* readonly %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._node* %n, i64 0, metadata !26, metadata !111), !dbg !112
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !113, !tbaa !114
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, i64 0, metadata !90, metadata !111) #3, !dbg !118
  tail call void @llvm.dbg.value(metadata %struct._node* %n, i64 0, metadata !91, metadata !111) #3, !dbg !120
  store i32 0, i32* @level, align 4, !dbg !121, !tbaa !122
  store i1 true, i1* @atbol, align 1, !dbg !124
  tail call fastcc void @list1node(%struct._IO_FILE* %0, %struct._node* %n) #3, !dbg !125
  ret void, !dbg !126
}

; Function Attrs: nounwind uwtable
define internal fastcc void @list1node(%struct._IO_FILE* nocapture %fp, %struct._node* readonly %n) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, i64 0, metadata !94, metadata !111), !dbg !127
  tail call void @llvm.dbg.value(metadata %struct._node* %n, i64 0, metadata !95, metadata !111), !dbg !128
  %cmp = icmp eq %struct._node* %n, null, !dbg !129
  br i1 %cmp, label %if.end.44, label %if.end, !dbg !131

if.end:                                           ; preds = %entry
  %n_type = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 0, !dbg !132
  %0 = load i16, i16* %n_type, align 2, !dbg !132, !tbaa !133
  %cmp1 = icmp sgt i16 %0, 255, !dbg !132
  br i1 %cmp1, label %for.cond.preheader, label %if.then.10, !dbg !136

for.cond.preheader:                               ; preds = %if.end
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 4, !dbg !137
  %1 = load i32, i32* %n_nchildren, align 4, !dbg !137, !tbaa !140
  %cmp4.67 = icmp sgt i32 %1, 0, !dbg !141
  br i1 %cmp4.67, label %for.body.lr.ph, label %if.end.44, !dbg !142

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %n_child = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 5, !dbg !143
  br label %for.body, !dbg !142

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom = sext i32 %i.068 to i64, !dbg !143
  %2 = load %struct._node*, %struct._node** %n_child, align 8, !dbg !143, !tbaa !144
  %arrayidx = getelementptr %struct._node, %struct._node* %2, i64 %idxprom, !dbg !143
  tail call fastcc void @list1node(%struct._IO_FILE* %fp, %struct._node* %arrayidx), !dbg !145
  %inc = add i32 %i.068, 1, !dbg !146
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !96, metadata !111), !dbg !147
  %3 = load i32, i32* %n_nchildren, align 4, !dbg !137, !tbaa !140
  %cmp4 = icmp slt i32 %inc, %3, !dbg !141
  br i1 %cmp4, label %for.body, label %if.end.44.loopexit, !dbg !142

if.then.10:                                       ; preds = %if.end
  %conv = sext i16 %0 to i32, !dbg !132
  switch i32 %conv, label %sw.default [
    i32 5, label %sw.bb
    i32 6, label %sw.bb.14
  ], !dbg !148

sw.bb:                                            ; preds = %if.then.10
  %4 = load i32, i32* @level, align 4, !dbg !149, !tbaa !122
  %inc13 = add i32 %4, 1, !dbg !149
  store i32 %inc13, i32* @level, align 4, !dbg !149, !tbaa !122
  br label %if.end.44, !dbg !150

sw.bb.14:                                         ; preds = %if.then.10
  %5 = load i32, i32* @level, align 4, !dbg !151, !tbaa !122
  %dec = add i32 %5, -1, !dbg !151
  store i32 %dec, i32* @level, align 4, !dbg !151, !tbaa !122
  br label %if.end.44, !dbg !152

sw.default:                                       ; preds = %if.then.10
  %.b = load i1, i1* @atbol, align 1
  br i1 %.b, label %for.cond.17.preheader, label %if.end.24, !dbg !153

for.cond.17.preheader:                            ; preds = %sw.default
  %6 = load i32, i32* @level, align 4, !dbg !154, !tbaa !122
  %cmp18.69 = icmp sgt i32 %6, 0, !dbg !157
  br i1 %cmp18.69, label %for.body.20.preheader, label %for.end.23, !dbg !158

for.body.20.preheader:                            ; preds = %for.cond.17.preheader
  br label %for.body.20, !dbg !159

for.body.20:                                      ; preds = %for.body.20.preheader, %for.body.20
  %i16.070 = phi i32 [ %inc22, %for.body.20 ], [ 0, %for.body.20.preheader ]
  %fputc66 = tail call i32 @fputc(i32 9, %struct._IO_FILE* %fp), !dbg !159
  %inc22 = add i32 %i16.070, 1, !dbg !160
  tail call void @llvm.dbg.value(metadata i32 %inc22, i64 0, metadata !99, metadata !111), !dbg !161
  %7 = load i32, i32* @level, align 4, !dbg !154, !tbaa !122
  %cmp18 = icmp slt i32 %inc22, %7, !dbg !157
  br i1 %cmp18, label %for.body.20, label %for.cond.17.for.end.23_crit_edge, !dbg !158

for.cond.17.for.end.23_crit_edge:                 ; preds = %for.body.20
  %.pre.pre = load i16, i16* %n_type, align 2, !dbg !162, !tbaa !133
  br label %for.end.23, !dbg !158

for.end.23:                                       ; preds = %for.cond.17.for.end.23_crit_edge, %for.cond.17.preheader
  %.pre = phi i16 [ %.pre.pre, %for.cond.17.for.end.23_crit_edge ], [ %0, %for.cond.17.preheader ], !dbg !162
  store i1 false, i1* @atbol, align 1
  br label %if.end.24, !dbg !164

if.end.24:                                        ; preds = %for.end.23, %sw.default
  %8 = phi i16 [ %.pre, %for.end.23 ], [ %0, %sw.default ], !dbg !162
  %cmp27 = icmp eq i16 %8, 4, !dbg !165
  %n_str = getelementptr inbounds %struct._node, %struct._node* %n, i64 0, i32 1, !dbg !166
  %9 = load i8*, i8** %n_str, align 8, !dbg !166, !tbaa !169
  br i1 %cmp27, label %if.then.29, label %if.else.37, !dbg !170

if.then.29:                                       ; preds = %if.end.24
  %cmp30 = icmp eq i8* %9, null, !dbg !171
  br i1 %cmp30, label %if.end.35, label %if.then.32, !dbg !172

if.then.32:                                       ; preds = %if.then.29
  %fputs = tail call i32 @fputs(i8* %9, %struct._IO_FILE* %fp), !dbg !173
  br label %if.end.35, !dbg !173

if.end.35:                                        ; preds = %if.then.29, %if.then.32
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !174
  store i1 true, i1* @atbol, align 1
  br label %if.end.44, !dbg !175

if.else.37:                                       ; preds = %if.end.24
  %call39 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %9) #3, !dbg !176
  br label %if.end.44

if.end.44.loopexit:                               ; preds = %for.body
  br label %if.end.44, !dbg !177

if.end.44:                                        ; preds = %if.end.44.loopexit, %for.cond.preheader, %if.end.35, %if.else.37, %sw.bb.14, %sw.bb, %entry
  ret void, !dbg !177
}

; Function Attrs: nounwind
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!108, !109}
!llvm.ident = !{!110}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !105)
!1 = !DIFile(filename: "Parser/listnode.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !27, !92}
!6 = !DISubprogram(name: "PyNode_ListTree", scope: !1, file: !1, line: 13, type: !7, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._node*)* @PyNode_ListTree, variables: !25)
!7 = !DISubroutineType(types: !8)
!8 = !{null, !9}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !11, line: 17, baseType: !12)
!11 = !DIFile(filename: "Include/node.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !11, line: 10, size: 320, align: 64, elements: !13)
!13 = !{!14, !16, !19, !21, !22, !23}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "n_type", scope: !12, file: !11, line: 11, baseType: !15, size: 16, align: 16)
!15 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "n_str", scope: !12, file: !11, line: 12, baseType: !17, size: 64, align: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "n_lineno", scope: !12, file: !11, line: 13, baseType: !20, size: 32, align: 32, offset: 128)
!20 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "n_col_offset", scope: !12, file: !11, line: 14, baseType: !20, size: 32, align: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "n_nchildren", scope: !12, file: !11, line: 15, baseType: !20, size: 32, align: 32, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "n_child", scope: !12, file: !11, line: 16, baseType: !24, size: 64, align: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!25 = !{!26}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !6, file: !1, line: 13, type: !9)
!27 = !DISubprogram(name: "listnode", scope: !1, file: !1, line: 21, type: !28, isLocal: true, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, variables: !89)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !9}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !32, line: 48, baseType: !33)
!32 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !34, line: 246, size: 1728, align: 64, elements: !35)
!34 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !56, !57, !58, !59, !63, !65, !67, !71, !74, !76, !77, !78, !79, !80, !84, !85}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !34, line: 247, baseType: !20, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !33, file: !34, line: 252, baseType: !17, size: 64, align: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !33, file: !34, line: 253, baseType: !17, size: 64, align: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !33, file: !34, line: 254, baseType: !17, size: 64, align: 64, offset: 192)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !33, file: !34, line: 255, baseType: !17, size: 64, align: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !33, file: !34, line: 256, baseType: !17, size: 64, align: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !33, file: !34, line: 257, baseType: !17, size: 64, align: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !33, file: !34, line: 258, baseType: !17, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !33, file: !34, line: 259, baseType: !17, size: 64, align: 64, offset: 512)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !33, file: !34, line: 261, baseType: !17, size: 64, align: 64, offset: 576)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !33, file: !34, line: 262, baseType: !17, size: 64, align: 64, offset: 640)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !33, file: !34, line: 263, baseType: !17, size: 64, align: 64, offset: 704)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !33, file: !34, line: 265, baseType: !49, size: 64, align: 64, offset: 768)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !34, line: 161, size: 192, align: 64, elements: !51)
!51 = !{!52, !53, !55}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !50, file: !34, line: 162, baseType: !49, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !50, file: !34, line: 163, baseType: !54, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !50, file: !34, line: 167, baseType: !20, size: 32, align: 32, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !33, file: !34, line: 267, baseType: !54, size: 64, align: 64, offset: 832)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !33, file: !34, line: 269, baseType: !20, size: 32, align: 32, offset: 896)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !33, file: !34, line: 273, baseType: !20, size: 32, align: 32, offset: 928)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !33, file: !34, line: 275, baseType: !60, size: 64, align: 64, offset: 960)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !61, line: 140, baseType: !62)
!61 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!62 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !33, file: !34, line: 279, baseType: !64, size: 16, align: 16, offset: 1024)
!64 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !33, file: !34, line: 280, baseType: !66, size: 8, align: 8, offset: 1040)
!66 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !33, file: !34, line: 281, baseType: !68, size: 8, align: 8, offset: 1048)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 1)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !33, file: !34, line: 285, baseType: !72, size: 64, align: 64, offset: 1088)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !34, line: 155, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !34, line: 294, baseType: !75, size: 64, align: 64, offset: 1152)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !61, line: 141, baseType: !62)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !33, file: !34, line: 303, baseType: !4, size: 64, align: 64, offset: 1216)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !33, file: !34, line: 304, baseType: !4, size: 64, align: 64, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !33, file: !34, line: 305, baseType: !4, size: 64, align: 64, offset: 1344)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !33, file: !34, line: 306, baseType: !4, size: 64, align: 64, offset: 1408)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !33, file: !34, line: 307, baseType: !81, size: 64, align: 64, offset: 1472)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !82, line: 62, baseType: !83)
!82 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!83 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !33, file: !34, line: 309, baseType: !20, size: 32, align: 32, offset: 1536)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !33, file: !34, line: 311, baseType: !86, size: 160, align: 8, offset: 1568)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 20)
!89 = !{!90, !91}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !27, file: !1, line: 21, type: !30)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !27, file: !1, line: 21, type: !9)
!92 = !DISubprogram(name: "list1node", scope: !1, file: !1, line: 29, type: !28, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._IO_FILE*, %struct._node*)* @list1node, variables: !93)
!93 = !{!94, !95, !96, !99}
!94 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !92, file: !1, line: 29, type: !30)
!95 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 2, scope: !92, file: !1, line: 29, type: !9)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !97, file: !1, line: 34, type: !20)
!97 = distinct !DILexicalBlock(scope: !98, file: !1, line: 33, column: 33)
!98 = distinct !DILexicalBlock(scope: !92, file: !1, line: 33, column: 9)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !100, file: !1, line: 48, type: !20)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 47, column: 24)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 47, column: 17)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 39, column: 26)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 38, column: 35)
!104 = distinct !DILexicalBlock(scope: !98, file: !1, line: 38, column: 14)
!105 = !{!106, !107}
!106 = !DIGlobalVariable(name: "level", scope: !0, file: !1, line: 18, type: !20, isLocal: true, isDefinition: true, variable: i32* @level)
!107 = !DIGlobalVariable(name: "atbol", scope: !0, file: !1, line: 18, type: !20, isLocal: true, isDefinition: true)
!108 = !{i32 2, !"Dwarf Version", i32 4}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!111 = !DIExpression()
!112 = !DILocation(line: 13, column: 23, scope: !6)
!113 = !DILocation(line: 15, column: 14, scope: !6)
!114 = !{!115, !115, i64 0}
!115 = !{!"any pointer", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !DILocation(line: 21, column: 16, scope: !27, inlinedAt: !119)
!119 = distinct !DILocation(line: 15, column: 5, scope: !6)
!120 = !DILocation(line: 21, column: 26, scope: !27, inlinedAt: !119)
!121 = !DILocation(line: 23, column: 11, scope: !27, inlinedAt: !119)
!122 = !{!123, !123, i64 0}
!123 = !{!"int", !116, i64 0}
!124 = !DILocation(line: 15, column: 5, scope: !6)
!125 = !DILocation(line: 25, column: 5, scope: !27, inlinedAt: !119)
!126 = !DILocation(line: 16, column: 1, scope: !6)
!127 = !DILocation(line: 29, column: 17, scope: !92)
!128 = !DILocation(line: 29, column: 27, scope: !92)
!129 = !DILocation(line: 31, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !92, file: !1, line: 31, column: 9)
!131 = !DILocation(line: 31, column: 9, scope: !92)
!132 = !DILocation(line: 33, column: 9, scope: !98)
!133 = !{!134, !135, i64 0}
!134 = !{!"_node", !135, i64 0, !115, i64 8, !123, i64 16, !123, i64 20, !123, i64 24, !115, i64 32}
!135 = !{!"short", !116, i64 0}
!136 = !DILocation(line: 33, column: 9, scope: !92)
!137 = !DILocation(line: 35, column: 25, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 35, column: 9)
!139 = distinct !DILexicalBlock(scope: !97, file: !1, line: 35, column: 9)
!140 = !{!134, !123, i64 24}
!141 = !DILocation(line: 35, column: 23, scope: !138)
!142 = !DILocation(line: 35, column: 9, scope: !139)
!143 = !DILocation(line: 36, column: 27, scope: !138)
!144 = !{!134, !115, i64 32}
!145 = !DILocation(line: 36, column: 13, scope: !138)
!146 = !DILocation(line: 35, column: 34, scope: !138)
!147 = !DILocation(line: 34, column: 13, scope: !97)
!148 = !DILocation(line: 39, column: 9, scope: !103)
!149 = !DILocation(line: 41, column: 13, scope: !102)
!150 = !DILocation(line: 42, column: 13, scope: !102)
!151 = !DILocation(line: 44, column: 13, scope: !102)
!152 = !DILocation(line: 45, column: 13, scope: !102)
!153 = !DILocation(line: 47, column: 17, scope: !102)
!154 = !DILocation(line: 49, column: 33, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !1, line: 49, column: 17)
!156 = distinct !DILexicalBlock(scope: !100, file: !1, line: 49, column: 17)
!157 = !DILocation(line: 49, column: 31, scope: !155)
!158 = !DILocation(line: 49, column: 17, scope: !156)
!159 = !DILocation(line: 50, column: 21, scope: !155)
!160 = !DILocation(line: 49, column: 40, scope: !155)
!161 = !DILocation(line: 48, column: 21, scope: !100)
!162 = !DILocation(line: 53, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !102, file: !1, line: 53, column: 17)
!164 = !DILocation(line: 52, column: 13, scope: !100)
!165 = !DILocation(line: 53, column: 25, scope: !163)
!166 = !DILocation(line: 54, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 54, column: 21)
!168 = distinct !DILexicalBlock(scope: !163, file: !1, line: 53, column: 37)
!169 = !{!134, !115, i64 8}
!170 = !DILocation(line: 53, column: 17, scope: !102)
!171 = !DILocation(line: 54, column: 28, scope: !167)
!172 = !DILocation(line: 54, column: 21, scope: !168)
!173 = !DILocation(line: 55, column: 21, scope: !167)
!174 = !DILocation(line: 56, column: 17, scope: !168)
!175 = !DILocation(line: 58, column: 13, scope: !168)
!176 = !DILocation(line: 60, column: 17, scope: !163)
!177 = !DILocation(line: 66, column: 1, scope: !92)
