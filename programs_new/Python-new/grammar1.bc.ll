; ModuleID = 'irs-onlybc/grammar1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfa = type { i32, i8*, i32, i32, %struct.state*, i8* }
%struct.state = type { i32, %struct.arc*, i32, i32, i32*, i32 }
%struct.arc = type { i16, i16 }
%struct.grammar = type { i32, %struct.dfa*, %struct.labellist, i32, i32 }
%struct.labellist = type { i32, %struct.label* }
%struct.label = type { i32, i8* }

@PyGrammar_LabelRepr.buf = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NT%d\00", align 1
@_PyParser_TokenNames = external global [0 x i8*], align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%.32s(%.32s)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"invalid label\00", align 1

; Function Attrs: nounwind uwtable
define %struct.dfa* @PyGrammar_FindDFA(%struct.grammar* %g, i32 %type) #0 {
entry:
  %g.addr = alloca %struct.grammar*, align 8
  %type.addr = alloca i32, align 4
  %d = alloca %struct.dfa*, align 8
  store %struct.grammar* %g, %struct.grammar** %g.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata %struct.grammar** %g.addr, metadata !65, metadata !87), !dbg !88
  store i32 %type, i32* %type.addr, align 4, !tbaa !89
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !66, metadata !87), !dbg !91
  %0 = bitcast %struct.dfa** %d to i8*, !dbg !92
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !92
  call void @llvm.dbg.declare(metadata %struct.dfa** %d, metadata !67, metadata !87), !dbg !93
  %1 = load i32, i32* %type.addr, align 4, !dbg !94, !tbaa !89
  %sub = sub i32 %1, 256, !dbg !95
  %idxprom = sext i32 %sub to i64, !dbg !96
  %2 = load %struct.grammar*, %struct.grammar** %g.addr, align 8, !dbg !96, !tbaa !83
  %g_dfa = getelementptr inbounds %struct.grammar, %struct.grammar* %2, i32 0, i32 1, !dbg !97
  %3 = load %struct.dfa*, %struct.dfa** %g_dfa, align 8, !dbg !97, !tbaa !98
  %arrayidx = getelementptr %struct.dfa, %struct.dfa* %3, i64 %idxprom, !dbg !96
  store %struct.dfa* %arrayidx, %struct.dfa** %d, align 8, !dbg !101, !tbaa !83
  %4 = load %struct.dfa*, %struct.dfa** %d, align 8, !dbg !102, !tbaa !83
  %5 = bitcast %struct.dfa** %d to i8*, !dbg !103
  call void @llvm.lifetime.end(i64 8, i8* %5) #2, !dbg !103
  ret %struct.dfa* %4, !dbg !104
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define i8* @PyGrammar_LabelRepr(%struct.label* %lb) #0 {
entry:
  %retval = alloca i8*, align 8
  %lb.addr = alloca %struct.label*, align 8
  store %struct.label* %lb, %struct.label** %lb.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata %struct.label** %lb.addr, metadata !74, metadata !87), !dbg !105
  %0 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !106, !tbaa !83
  %lb_type = getelementptr inbounds %struct.label, %struct.label* %0, i32 0, i32 0, !dbg !108
  %1 = load i32, i32* %lb_type, align 4, !dbg !108, !tbaa !109
  %cmp = icmp eq i32 %1, 0, !dbg !110
  br i1 %cmp, label %if.then, label %if.else, !dbg !111

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8** %retval, !dbg !112
  br label %return, !dbg !112

if.else:                                          ; preds = %entry
  %2 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !113, !tbaa !83
  %lb_type1 = getelementptr inbounds %struct.label, %struct.label* %2, i32 0, i32 0, !dbg !115
  %3 = load i32, i32* %lb_type1, align 4, !dbg !115, !tbaa !109
  %cmp2 = icmp sge i32 %3, 256, !dbg !116
  br i1 %cmp2, label %if.then.3, label %if.else.9, !dbg !117

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !118, !tbaa !83
  %lb_str = getelementptr inbounds %struct.label, %struct.label* %4, i32 0, i32 1, !dbg !121
  %5 = load i8*, i8** %lb_str, align 8, !dbg !121, !tbaa !122
  %cmp4 = icmp eq i8* %5, null, !dbg !123
  br i1 %cmp4, label %if.then.5, label %if.else.7, !dbg !124

if.then.5:                                        ; preds = %if.then.3
  %6 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !125, !tbaa !83
  %lb_type6 = getelementptr inbounds %struct.label, %struct.label* %6, i32 0, i32 0, !dbg !127
  %7 = load i32, i32* %lb_type6, align 4, !dbg !127, !tbaa !109
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i64 100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 %7), !dbg !128
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i8** %retval, !dbg !129
  br label %return, !dbg !129

if.else.7:                                        ; preds = %if.then.3
  %8 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !130, !tbaa !83
  %lb_str8 = getelementptr inbounds %struct.label, %struct.label* %8, i32 0, i32 1, !dbg !131
  %9 = load i8*, i8** %lb_str8, align 8, !dbg !131, !tbaa !122
  store i8* %9, i8** %retval, !dbg !132
  br label %return, !dbg !132

if.else.9:                                        ; preds = %if.else
  %10 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !133, !tbaa !83
  %lb_type10 = getelementptr inbounds %struct.label, %struct.label* %10, i32 0, i32 0, !dbg !135
  %11 = load i32, i32* %lb_type10, align 4, !dbg !135, !tbaa !109
  %cmp11 = icmp slt i32 %11, 54, !dbg !136
  br i1 %cmp11, label %if.then.12, label %if.else.23, !dbg !137

if.then.12:                                       ; preds = %if.else.9
  %12 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !138, !tbaa !83
  %lb_str13 = getelementptr inbounds %struct.label, %struct.label* %12, i32 0, i32 1, !dbg !141
  %13 = load i8*, i8** %lb_str13, align 8, !dbg !141, !tbaa !122
  %cmp14 = icmp eq i8* %13, null, !dbg !142
  br i1 %cmp14, label %if.then.15, label %if.else.17, !dbg !143

if.then.15:                                       ; preds = %if.then.12
  %14 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !144, !tbaa !83
  %lb_type16 = getelementptr inbounds %struct.label, %struct.label* %14, i32 0, i32 0, !dbg !145
  %15 = load i32, i32* %lb_type16, align 4, !dbg !145, !tbaa !109
  %idxprom = sext i32 %15 to i64, !dbg !146
  %arrayidx = getelementptr [0 x i8*], [0 x i8*]* @_PyParser_TokenNames, i32 0, i64 %idxprom, !dbg !146
  %16 = load i8*, i8** %arrayidx, align 8, !dbg !146, !tbaa !83
  store i8* %16, i8** %retval, !dbg !147
  br label %return, !dbg !147

if.else.17:                                       ; preds = %if.then.12
  %17 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !148, !tbaa !83
  %lb_type18 = getelementptr inbounds %struct.label, %struct.label* %17, i32 0, i32 0, !dbg !150
  %18 = load i32, i32* %lb_type18, align 4, !dbg !150, !tbaa !109
  %idxprom19 = sext i32 %18 to i64, !dbg !151
  %arrayidx20 = getelementptr [0 x i8*], [0 x i8*]* @_PyParser_TokenNames, i32 0, i64 %idxprom19, !dbg !151
  %19 = load i8*, i8** %arrayidx20, align 8, !dbg !151, !tbaa !83
  %20 = load %struct.label*, %struct.label** %lb.addr, align 8, !dbg !152, !tbaa !83
  %lb_str21 = getelementptr inbounds %struct.label, %struct.label* %20, i32 0, i32 1, !dbg !153
  %21 = load i8*, i8** %lb_str21, align 8, !dbg !153, !tbaa !122
  %call22 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i64 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* %19, i8* %21), !dbg !154
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @PyGrammar_LabelRepr.buf, i32 0, i32 0), i8** %retval, !dbg !155
  br label %return, !dbg !155

if.else.23:                                       ; preds = %if.else.9
  call void @Py_FatalError(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #5, !dbg !156
  unreachable, !dbg !156

return:                                           ; preds = %if.else.17, %if.then.15, %if.else.7, %if.then.5, %if.then
  %22 = load i8*, i8** %retval, !dbg !158
  ret i8* %22, !dbg !158
}

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!80, !81}
!llvm.ident = !{!82}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !75)
!1 = !DIFile(filename: "grammar1.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !{!6, !68}
!6 = !DISubprogram(name: "PyGrammar_FindDFA", scope: !7, file: !7, line: 12, type: !8, isLocal: false, isDefinition: true, scopeLine: 13, flags: DIFlagPrototyped, isOptimized: true, function: %struct.dfa* (%struct.grammar*, i32)* @PyGrammar_FindDFA, variables: !64)
!7 = !DIFile(filename: "Parser/grammar1.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !44, !16}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "dfa", file: !12, line: 57, baseType: !13)
!12 = !DIFile(filename: "Include/grammar.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!13 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 50, size: 320, align: 64, elements: !14)
!14 = !{!15, !17, !20, !21, !22, !41}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !13, file: !12, line: 51, baseType: !16, size: 32, align: 32)
!16 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !13, file: !12, line: 52, baseType: !18, size: 64, align: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "d_initial", scope: !13, file: !12, line: 53, baseType: !16, size: 32, align: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "d_nstates", scope: !13, file: !12, line: 54, baseType: !16, size: 32, align: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "d_state", scope: !13, file: !12, line: 55, baseType: !23, size: 64, align: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "state", file: !12, line: 46, baseType: !25)
!25 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 37, size: 320, align: 64, elements: !26)
!26 = !{!27, !28, !36, !37, !38, !40}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "s_narcs", scope: !25, file: !12, line: 38, baseType: !16, size: 32, align: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "s_arc", scope: !25, file: !12, line: 39, baseType: !29, size: 64, align: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "arc", file: !12, line: 33, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 30, size: 32, align: 16, elements: !32)
!32 = !{!33, !35}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "a_lbl", scope: !31, file: !12, line: 31, baseType: !34, size: 16, align: 16)
!34 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "a_arrow", scope: !31, file: !12, line: 32, baseType: !34, size: 16, align: 16, offset: 16)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "s_lower", scope: !25, file: !12, line: 42, baseType: !16, size: 32, align: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "s_upper", scope: !25, file: !12, line: 43, baseType: !16, size: 32, align: 32, offset: 160)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "s_accel", scope: !25, file: !12, line: 44, baseType: !39, size: 64, align: 64, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "s_accept", scope: !25, file: !12, line: 45, baseType: !16, size: 32, align: 32, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "d_first", scope: !13, file: !12, line: 56, baseType: !42, size: 64, align: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitset", file: !43, line: 12, baseType: !18)
!43 = !DIFile(filename: "Include/bitset.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "grammar", file: !12, line: 67, baseType: !46)
!46 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 61, size: 320, align: 64, elements: !47)
!47 = !{!48, !49, !50, !62, !63}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "g_ndfas", scope: !46, file: !12, line: 62, baseType: !16, size: 32, align: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "g_dfa", scope: !46, file: !12, line: 63, baseType: !10, size: 64, align: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "g_ll", scope: !46, file: !12, line: 64, baseType: !51, size: 128, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "labellist", file: !12, line: 26, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 23, size: 128, align: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ll_nlabels", scope: !52, file: !12, line: 24, baseType: !16, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ll_label", scope: !52, file: !12, line: 25, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "label", file: !12, line: 17, baseType: !58)
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 14, size: 128, align: 64, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !58, file: !12, line: 15, baseType: !16, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "lb_str", scope: !58, file: !12, line: 16, baseType: !18, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "g_start", scope: !46, file: !12, line: 65, baseType: !16, size: 32, align: 32, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "g_accel", scope: !46, file: !12, line: 66, baseType: !16, size: 32, align: 32, offset: 288)
!64 = !{!65, !66, !67}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !6, file: !7, line: 12, type: !44)
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 2, scope: !6, file: !7, line: 12, type: !16)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !6, file: !7, line: 14, type: !10)
!68 = !DISubprogram(name: "PyGrammar_LabelRepr", scope: !7, file: !7, line: 34, type: !69, isLocal: false, isDefinition: true, scopeLine: 35, flags: DIFlagPrototyped, isOptimized: true, function: i8* (%struct.label*)* @PyGrammar_LabelRepr, variables: !73)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !56}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!73 = !{!74}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lb", arg: 1, scope: !68, file: !7, line: 34, type: !56)
!75 = !{!76}
!76 = !DIGlobalVariable(name: "buf", scope: !68, file: !7, line: 36, type: !77, isLocal: true, isDefinition: true, variable: [100 x i8]* @PyGrammar_LabelRepr.buf)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, align: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 100)
!80 = !{i32 2, !"Dwarf Version", i32 4}
!81 = !{i32 2, !"Debug Info Version", i32 3}
!82 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!83 = !{!84, !84, i64 0}
!84 = !{!"any pointer", !85, i64 0}
!85 = !{!"omnipotent char", !86, i64 0}
!86 = !{!"Simple C/C++ TBAA"}
!87 = !DIExpression()
!88 = !DILocation(line: 12, column: 28, scope: !6)
!89 = !{!90, !90, i64 0}
!90 = !{!"int", !85, i64 0}
!91 = !DILocation(line: 12, column: 35, scope: !6)
!92 = !DILocation(line: 14, column: 5, scope: !6)
!93 = !DILocation(line: 14, column: 10, scope: !6)
!94 = !DILocation(line: 17, column: 19, scope: !6)
!95 = !DILocation(line: 17, column: 24, scope: !6)
!96 = !DILocation(line: 17, column: 10, scope: !6)
!97 = !DILocation(line: 17, column: 13, scope: !6)
!98 = !{!99, !84, i64 8}
!99 = !{!"", !90, i64 0, !84, i64 8, !100, i64 16, !90, i64 32, !90, i64 36}
!100 = !{!"", !90, i64 0, !84, i64 8}
!101 = !DILocation(line: 17, column: 7, scope: !6)
!102 = !DILocation(line: 19, column: 12, scope: !6)
!103 = !DILocation(line: 31, column: 1, scope: !6)
!104 = !DILocation(line: 19, column: 5, scope: !6)
!105 = !DILocation(line: 34, column: 28, scope: !68)
!106 = !DILocation(line: 38, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !68, file: !7, line: 38, column: 9)
!108 = !DILocation(line: 38, column: 13, scope: !107)
!109 = !{!100, !90, i64 0}
!110 = !DILocation(line: 38, column: 21, scope: !107)
!111 = !DILocation(line: 38, column: 9, scope: !68)
!112 = !DILocation(line: 39, column: 9, scope: !107)
!113 = !DILocation(line: 40, column: 16, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !7, line: 40, column: 14)
!115 = !DILocation(line: 40, column: 20, scope: !114)
!116 = !DILocation(line: 40, column: 29, scope: !114)
!117 = !DILocation(line: 40, column: 14, scope: !107)
!118 = !DILocation(line: 41, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !7, line: 41, column: 13)
!120 = distinct !DILexicalBlock(scope: !114, file: !7, line: 40, column: 38)
!121 = !DILocation(line: 41, column: 17, scope: !119)
!122 = !{!100, !84, i64 8}
!123 = !DILocation(line: 41, column: 24, scope: !119)
!124 = !DILocation(line: 41, column: 13, scope: !120)
!125 = !DILocation(line: 42, column: 53, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !7, line: 41, column: 39)
!127 = !DILocation(line: 42, column: 57, scope: !126)
!128 = !DILocation(line: 42, column: 13, scope: !126)
!129 = !DILocation(line: 43, column: 13, scope: !126)
!130 = !DILocation(line: 46, column: 20, scope: !119)
!131 = !DILocation(line: 46, column: 24, scope: !119)
!132 = !DILocation(line: 46, column: 13, scope: !119)
!133 = !DILocation(line: 48, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !114, file: !7, line: 48, column: 14)
!135 = !DILocation(line: 48, column: 18, scope: !134)
!136 = !DILocation(line: 48, column: 26, scope: !134)
!137 = !DILocation(line: 48, column: 14, scope: !114)
!138 = !DILocation(line: 49, column: 13, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !7, line: 49, column: 13)
!140 = distinct !DILexicalBlock(scope: !134, file: !7, line: 48, column: 32)
!141 = !DILocation(line: 49, column: 17, scope: !139)
!142 = !DILocation(line: 49, column: 24, scope: !139)
!143 = !DILocation(line: 49, column: 13, scope: !140)
!144 = !DILocation(line: 50, column: 41, scope: !139)
!145 = !DILocation(line: 50, column: 45, scope: !139)
!146 = !DILocation(line: 50, column: 20, scope: !139)
!147 = !DILocation(line: 50, column: 13, scope: !139)
!148 = !DILocation(line: 53, column: 38, scope: !149)
!149 = distinct !DILexicalBlock(scope: !139, file: !7, line: 51, column: 14)
!150 = !DILocation(line: 53, column: 42, scope: !149)
!151 = !DILocation(line: 53, column: 17, scope: !149)
!152 = !DILocation(line: 53, column: 52, scope: !149)
!153 = !DILocation(line: 53, column: 56, scope: !149)
!154 = !DILocation(line: 52, column: 13, scope: !149)
!155 = !DILocation(line: 54, column: 13, scope: !149)
!156 = !DILocation(line: 58, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !134, file: !7, line: 57, column: 10)
!158 = !DILocation(line: 61, column: 1, scope: !68)
