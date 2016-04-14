; ModuleID = 'programs_new/Python-new/config.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._inittab = type { i8*, %struct._object* ()* }
%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"_thread\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"posix\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_sre\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"_codecs\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"_weakref\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"_functools\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"_operator\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"_collections\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"itertools\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"_stat\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"_locale\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"_io\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"zipimport\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"faulthandler\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"_tracemalloc\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"_symtable\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"xxsubtype\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"marshal\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"_imp\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"_ast\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"_warnings\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"_string\00", align 1
@_PyImport_Inittab = global [30 x %struct._inittab] [%struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), %struct._object* ()* @PyInit__thread }, %struct._inittab { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), %struct._object* ()* @PyInit_signal }, %struct._inittab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct._object* ()* @PyInit_posix }, %struct._inittab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* ()* @PyInit_errno }, %struct._inittab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct._object* ()* @PyInit_pwd }, %struct._inittab { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %struct._object* ()* @PyInit__sre }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._object* ()* @PyInit__codecs }, %struct._inittab { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct._object* ()* @PyInit__weakref }, %struct._inittab { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* ()* @PyInit__functools }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), %struct._object* ()* @PyInit__operator }, %struct._inittab { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), %struct._object* ()* @PyInit__collections }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct._object* ()* @PyInit_itertools }, %struct._inittab { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct._object* ()* @PyInit_atexit }, %struct._inittab { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._object* ()* @PyInit__stat }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), %struct._object* ()* @PyInit__locale }, %struct._inittab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %struct._object* ()* @PyInit__io }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), %struct._object* ()* @PyInit_zipimport }, %struct._inittab { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), %struct._object* ()* @PyInit_faulthandler }, %struct._inittab { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._object* ()* @PyInit__tracemalloc }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), %struct._object* ()* @PyInit__symtable }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), %struct._object* ()* @PyInit_xxsubtype }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._object* ()* @PyMarshal_Init }, %struct._inittab { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), %struct._object* ()* @PyInit_imp }, %struct._inittab { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct._object* ()* @PyInit__ast }, %struct._inittab { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._object* ()* null }, %struct._inittab { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct._object* ()* null }, %struct._inittab { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0), %struct._object* ()* @PyInit_gc }, %struct._inittab { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), %struct._object* ()* @_PyWarnings_Init }, %struct._inittab { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), %struct._object* ()* @PyInit__string }, %struct._inittab zeroinitializer], align 16

declare %struct._object* @PyInit__thread() #0

declare %struct._object* @PyInit_signal() #0

declare %struct._object* @PyInit_posix() #0

declare %struct._object* @PyInit_errno() #0

declare %struct._object* @PyInit_pwd() #0

declare %struct._object* @PyInit__sre() #0

declare %struct._object* @PyInit__codecs() #0

declare %struct._object* @PyInit__weakref() #0

declare %struct._object* @PyInit__functools() #0

declare %struct._object* @PyInit__operator() #0

declare %struct._object* @PyInit__collections() #0

declare %struct._object* @PyInit_itertools() #0

declare %struct._object* @PyInit_atexit() #0

declare %struct._object* @PyInit__stat() #0

declare %struct._object* @PyInit__locale() #0

declare %struct._object* @PyInit__io() #0

declare %struct._object* @PyInit_zipimport() #0

declare %struct._object* @PyInit_faulthandler() #0

declare %struct._object* @PyInit__tracemalloc() #0

declare %struct._object* @PyInit__symtable() #0

declare %struct._object* @PyInit_xxsubtype() #0

declare %struct._object* @PyMarshal_Init() #0

declare %struct._object* @PyInit_imp() #0

declare %struct._object* @PyInit__ast() #0

declare %struct._object* @PyInit_gc() #0

declare %struct._object* @_PyWarnings_Init() #0

declare %struct._object* @PyInit__string() #0

attributes #0 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!356, !357}
!llvm.ident = !{!358}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, globals: !3)
!1 = !DIFile(filename: "config.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "_PyImport_Inittab", scope: !0, file: !5, line: 57, type: !6, isLocal: false, isDefinition: true, variable: [30 x %struct._inittab]* @_PyImport_Inittab)
!5 = !DIFile(filename: "Modules/config.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3840, align: 64, elements: !354)
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "_inittab", file: !8, line: 99, size: 128, align: 64, elements: !9)
!8 = !DIFile(filename: "Include/import.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !{!10, !14}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !8, line: 100, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "initfunc", scope: !7, file: !8, line: 101, baseType: !15, size: 64, align: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !20, line: 109, baseType: !21)
!20 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !20, line: 105, size: 128, align: 64, elements: !22)
!22 = !{!23, !31}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !21, file: !20, line: 107, baseType: !24, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !25, line: 177, baseType: !26)
!25 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !27, line: 102, baseType: !28)
!27 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !29, line: 181, baseType: !30)
!29 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!30 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !21, file: !20, line: 108, baseType: !32, size: 64, align: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !20, line: 334, size: 3200, align: 64, elements: !34)
!34 = !{!35, !41, !42, !43, !44, !49, !113, !118, !123, !124, !129, !181, !212, !224, !230, !231, !232, !234, !236, !267, !268, !269, !278, !279, !284, !285, !287, !289, !299, !302, !320, !321, !322, !324, !326, !327, !329, !334, !339, !344, !345, !346, !347, !348, !349, !350, !351, !353}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !33, file: !20, line: 335, baseType: !36, size: 192, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !20, line: 114, baseType: !37)
!37 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 111, size: 192, align: 64, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !37, file: !20, line: 112, baseType: !19, size: 128, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !37, file: !20, line: 113, baseType: !24, size: 64, align: 64, offset: 128)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !33, file: !20, line: 336, baseType: !11, size: 64, align: 64, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !33, file: !20, line: 337, baseType: !24, size: 64, align: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !33, file: !20, line: 337, baseType: !24, size: 64, align: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !33, file: !20, line: 341, baseType: !45, size: 64, align: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !20, line: 308, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !18}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !33, file: !20, line: 342, baseType: !50, size: 64, align: 64, offset: 448)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !20, line: 314, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !18, !55, !54}
!54 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !27, line: 48, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !58, line: 246, size: 1728, align: 64, elements: !59)
!58 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!59 = !{!60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !81, !82, !83, !84, !86, !88, !90, !94, !97, !99, !101, !102, !103, !104, !108, !109}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !57, file: !58, line: 247, baseType: !54, size: 32, align: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !57, file: !58, line: 252, baseType: !62, size: 64, align: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !57, file: !58, line: 253, baseType: !62, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !57, file: !58, line: 254, baseType: !62, size: 64, align: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !57, file: !58, line: 255, baseType: !62, size: 64, align: 64, offset: 256)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !57, file: !58, line: 256, baseType: !62, size: 64, align: 64, offset: 320)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !57, file: !58, line: 257, baseType: !62, size: 64, align: 64, offset: 384)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !57, file: !58, line: 258, baseType: !62, size: 64, align: 64, offset: 448)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !57, file: !58, line: 259, baseType: !62, size: 64, align: 64, offset: 512)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !57, file: !58, line: 261, baseType: !62, size: 64, align: 64, offset: 576)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !57, file: !58, line: 262, baseType: !62, size: 64, align: 64, offset: 640)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !57, file: !58, line: 263, baseType: !62, size: 64, align: 64, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !57, file: !58, line: 265, baseType: !74, size: 64, align: 64, offset: 768)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !58, line: 161, size: 192, align: 64, elements: !76)
!76 = !{!77, !78, !80}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !75, file: !58, line: 162, baseType: !74, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !75, file: !58, line: 163, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !75, file: !58, line: 167, baseType: !54, size: 32, align: 32, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !57, file: !58, line: 267, baseType: !79, size: 64, align: 64, offset: 832)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !57, file: !58, line: 269, baseType: !54, size: 32, align: 32, offset: 896)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !57, file: !58, line: 273, baseType: !54, size: 32, align: 32, offset: 928)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !57, file: !58, line: 275, baseType: !85, size: 64, align: 64, offset: 960)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !29, line: 140, baseType: !30)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !57, file: !58, line: 279, baseType: !87, size: 16, align: 16, offset: 1024)
!87 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !57, file: !58, line: 280, baseType: !89, size: 8, align: 8, offset: 1040)
!89 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !57, file: !58, line: 281, baseType: !91, size: 8, align: 8, offset: 1048)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, align: 8, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 1)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !57, file: !58, line: 285, baseType: !95, size: 64, align: 64, offset: 1088)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !58, line: 155, baseType: null)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !57, file: !58, line: 294, baseType: !98, size: 64, align: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !29, line: 141, baseType: !30)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !57, file: !58, line: 303, baseType: !100, size: 64, align: 64, offset: 1216)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !57, file: !58, line: 304, baseType: !100, size: 64, align: 64, offset: 1280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !57, file: !58, line: 305, baseType: !100, size: 64, align: 64, offset: 1344)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !57, file: !58, line: 306, baseType: !100, size: 64, align: 64, offset: 1408)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !57, file: !58, line: 307, baseType: !105, size: 64, align: 64, offset: 1472)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !106, line: 62, baseType: !107)
!106 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!107 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !57, file: !58, line: 309, baseType: !54, size: 32, align: 32, offset: 1536)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !57, file: !58, line: 311, baseType: !110, size: 160, align: 8, offset: 1568)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 20)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !33, file: !20, line: 343, baseType: !114, size: 64, align: 64, offset: 512)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !20, line: 316, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!18, !18, !62}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !33, file: !20, line: 344, baseType: !119, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !20, line: 318, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!54, !18, !62, !18}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !33, file: !20, line: 345, baseType: !100, size: 64, align: 64, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !33, file: !20, line: 346, baseType: !125, size: 64, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !20, line: 320, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!18, !18}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !33, file: !20, line: 350, baseType: !130, size: 64, align: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !20, line: 278, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 236, size: 2176, align: 64, elements: !133)
!133 = !{!134, !139, !140, !141, !142, !143, !148, !150, !151, !152, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !132, file: !20, line: 241, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !20, line: 166, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!18, !18, !18}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !132, file: !20, line: 242, baseType: !135, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !132, file: !20, line: 243, baseType: !135, size: 64, align: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !132, file: !20, line: 244, baseType: !135, size: 64, align: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !132, file: !20, line: 245, baseType: !135, size: 64, align: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !132, file: !20, line: 246, baseType: !144, size: 64, align: 64, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !20, line: 167, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!18, !18, !18, !18}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !132, file: !20, line: 247, baseType: !149, size: 64, align: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !20, line: 165, baseType: !126)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !132, file: !20, line: 248, baseType: !149, size: 64, align: 64, offset: 448)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !132, file: !20, line: 249, baseType: !149, size: 64, align: 64, offset: 512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !132, file: !20, line: 250, baseType: !153, size: 64, align: 64, offset: 576)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !20, line: 168, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!54, !18}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !132, file: !20, line: 251, baseType: !149, size: 64, align: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !132, file: !20, line: 252, baseType: !135, size: 64, align: 64, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !132, file: !20, line: 253, baseType: !135, size: 64, align: 64, offset: 768)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !132, file: !20, line: 254, baseType: !135, size: 64, align: 64, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !132, file: !20, line: 255, baseType: !135, size: 64, align: 64, offset: 896)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !132, file: !20, line: 256, baseType: !135, size: 64, align: 64, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !132, file: !20, line: 257, baseType: !149, size: 64, align: 64, offset: 1024)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !132, file: !20, line: 258, baseType: !100, size: 64, align: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !132, file: !20, line: 259, baseType: !149, size: 64, align: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !132, file: !20, line: 261, baseType: !135, size: 64, align: 64, offset: 1216)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !132, file: !20, line: 262, baseType: !135, size: 64, align: 64, offset: 1280)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !132, file: !20, line: 263, baseType: !135, size: 64, align: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !132, file: !20, line: 264, baseType: !135, size: 64, align: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !132, file: !20, line: 265, baseType: !144, size: 64, align: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !132, file: !20, line: 266, baseType: !135, size: 64, align: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !132, file: !20, line: 267, baseType: !135, size: 64, align: 64, offset: 1600)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !132, file: !20, line: 268, baseType: !135, size: 64, align: 64, offset: 1664)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !132, file: !20, line: 269, baseType: !135, size: 64, align: 64, offset: 1728)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !132, file: !20, line: 270, baseType: !135, size: 64, align: 64, offset: 1792)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !132, file: !20, line: 272, baseType: !135, size: 64, align: 64, offset: 1856)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !132, file: !20, line: 273, baseType: !135, size: 64, align: 64, offset: 1920)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !132, file: !20, line: 274, baseType: !135, size: 64, align: 64, offset: 1984)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !132, file: !20, line: 275, baseType: !135, size: 64, align: 64, offset: 2048)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !132, file: !20, line: 277, baseType: !149, size: 64, align: 64, offset: 2112)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !33, file: !20, line: 351, baseType: !182, size: 64, align: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !20, line: 292, baseType: !184)
!184 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 280, size: 640, align: 64, elements: !185)
!185 = !{!186, !191, !192, !197, !198, !199, !204, !205, !210, !211}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !184, file: !20, line: 281, baseType: !187, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !20, line: 169, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!24, !18}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !184, file: !20, line: 282, baseType: !135, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !184, file: !20, line: 283, baseType: !193, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !20, line: 170, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!18, !18, !24}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !184, file: !20, line: 284, baseType: !193, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !184, file: !20, line: 285, baseType: !100, size: 64, align: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !184, file: !20, line: 286, baseType: !200, size: 64, align: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !20, line: 172, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!54, !18, !24, !18}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !184, file: !20, line: 287, baseType: !100, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !184, file: !20, line: 288, baseType: !206, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !20, line: 231, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!54, !18, !18}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !184, file: !20, line: 290, baseType: !135, size: 64, align: 64, offset: 512)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !184, file: !20, line: 291, baseType: !193, size: 64, align: 64, offset: 576)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !33, file: !20, line: 352, baseType: !213, size: 64, align: 64, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !20, line: 298, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 294, size: 192, align: 64, elements: !216)
!216 = !{!217, !218, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !215, file: !20, line: 295, baseType: !187, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !215, file: !20, line: 296, baseType: !135, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !215, file: !20, line: 297, baseType: !220, size: 64, align: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !20, line: 174, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!54, !18, !18, !18}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !33, file: !20, line: 356, baseType: !225, size: 64, align: 64, offset: 960)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !20, line: 321, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !18}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !25, line: 186, baseType: !24)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !33, file: !20, line: 357, baseType: !144, size: 64, align: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !33, file: !20, line: 358, baseType: !125, size: 64, align: 64, offset: 1088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !33, file: !20, line: 359, baseType: !233, size: 64, align: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !20, line: 317, baseType: !136)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !33, file: !20, line: 360, baseType: !235, size: 64, align: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !20, line: 319, baseType: !221)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !33, file: !20, line: 363, baseType: !237, size: 64, align: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !20, line: 304, baseType: !239)
!239 = !DICompositeType(tag: DW_TAG_structure_type, file: !20, line: 301, size: 128, align: 64, elements: !240)
!240 = !{!241, !262}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !239, file: !20, line: 302, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !20, line: 193, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!54, !18, !246, !54}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !20, line: 191, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !20, line: 178, size: 640, align: 64, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257, !259, !260, !261}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !20, line: 179, baseType: !100, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !248, file: !20, line: 180, baseType: !18, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !248, file: !20, line: 181, baseType: !24, size: 64, align: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !248, file: !20, line: 182, baseType: !24, size: 64, align: 64, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !248, file: !20, line: 184, baseType: !54, size: 32, align: 32, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !248, file: !20, line: 185, baseType: !54, size: 32, align: 32, offset: 288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !248, file: !20, line: 186, baseType: !62, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !248, file: !20, line: 187, baseType: !258, size: 64, align: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !248, file: !20, line: 188, baseType: !258, size: 64, align: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !248, file: !20, line: 189, baseType: !258, size: 64, align: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !248, file: !20, line: 190, baseType: !100, size: 64, align: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !239, file: !20, line: 303, baseType: !263, size: 64, align: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !20, line: 194, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !18, !246}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !33, file: !20, line: 366, baseType: !107, size: 64, align: 64, offset: 1344)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !33, file: !20, line: 368, baseType: !11, size: 64, align: 64, offset: 1408)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !33, file: !20, line: 372, baseType: !270, size: 64, align: 64, offset: 1472)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !20, line: 233, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!54, !18, !274, !100}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !20, line: 232, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!54, !18, !100}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !33, file: !20, line: 375, baseType: !153, size: 64, align: 64, offset: 1536)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !33, file: !20, line: 379, baseType: !280, size: 64, align: 64, offset: 1600)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !20, line: 322, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!18, !18, !18, !54}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !33, file: !20, line: 382, baseType: !24, size: 64, align: 64, offset: 1664)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !33, file: !20, line: 385, baseType: !286, size: 64, align: 64, offset: 1728)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !20, line: 323, baseType: !126)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !33, file: !20, line: 386, baseType: !288, size: 64, align: 64, offset: 1792)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !20, line: 324, baseType: !126)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !33, file: !20, line: 389, baseType: !290, size: 64, align: 64, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !292, line: 40, size: 256, align: 64, elements: !293)
!292 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!293 = !{!294, !295, !297, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !291, file: !292, line: 41, baseType: !11, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !291, file: !292, line: 42, baseType: !296, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !292, line: 18, baseType: !136)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !291, file: !292, line: 43, baseType: !54, size: 32, align: 32, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !291, file: !292, line: 45, baseType: !11, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !33, file: !20, line: 390, baseType: !300, size: 64, align: 64, offset: 1920)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !20, line: 390, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !33, file: !20, line: 391, baseType: !303, size: 64, align: 64, offset: 1984)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !305, line: 11, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!306 = !{!307, !308, !313, !318, !319}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 12, baseType: !62, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !304, file: !305, line: 13, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !305, line: 8, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!18, !18, !100}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !304, file: !305, line: 14, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !305, line: 9, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!54, !18, !18, !100}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 15, baseType: !62, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !304, file: !305, line: 16, baseType: !100, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !33, file: !20, line: 392, baseType: !32, size: 64, align: 64, offset: 2048)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !33, file: !20, line: 393, baseType: !18, size: 64, align: 64, offset: 2112)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !33, file: !20, line: 394, baseType: !323, size: 64, align: 64, offset: 2176)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !20, line: 325, baseType: !145)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !33, file: !20, line: 395, baseType: !325, size: 64, align: 64, offset: 2240)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !20, line: 326, baseType: !221)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !33, file: !20, line: 396, baseType: !24, size: 64, align: 64, offset: 2304)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !33, file: !20, line: 397, baseType: !328, size: 64, align: 64, offset: 2368)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !20, line: 327, baseType: !221)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !33, file: !20, line: 398, baseType: !330, size: 64, align: 64, offset: 2432)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !20, line: 329, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!18, !32, !24}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !33, file: !20, line: 399, baseType: !335, size: 64, align: 64, offset: 2496)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !20, line: 328, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!18, !32, !18, !18}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !33, file: !20, line: 400, baseType: !340, size: 64, align: 64, offset: 2560)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !20, line: 307, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !100}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !33, file: !20, line: 401, baseType: !153, size: 64, align: 64, offset: 2624)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !33, file: !20, line: 402, baseType: !18, size: 64, align: 64, offset: 2688)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !33, file: !20, line: 403, baseType: !18, size: 64, align: 64, offset: 2752)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !33, file: !20, line: 404, baseType: !18, size: 64, align: 64, offset: 2816)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !33, file: !20, line: 405, baseType: !18, size: 64, align: 64, offset: 2880)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !33, file: !20, line: 406, baseType: !18, size: 64, align: 64, offset: 2944)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !33, file: !20, line: 407, baseType: !45, size: 64, align: 64, offset: 3008)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !33, file: !20, line: 410, baseType: !352, size: 32, align: 32, offset: 3072)
!352 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !33, file: !20, line: 412, baseType: !45, size: 64, align: 64, offset: 3136)
!354 = !{!355}
!355 = !DISubrange(count: 30)
!356 = !{i32 2, !"Dwarf Version", i32 4}
!357 = !{i32 2, !"Debug Info Version", i32 3}
!358 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
