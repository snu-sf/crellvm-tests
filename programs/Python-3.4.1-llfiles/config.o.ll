; ModuleID = 'config.o.bc'
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
!llvm.module.flags = !{!355, !356}
!llvm.ident = !{!357}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, globals: !3)
!1 = !DIFile(filename: "Modules/config.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{}
!3 = !{!4}
!4 = !DIGlobalVariable(name: "_PyImport_Inittab", scope: !0, file: !1, line: 57, type: !5, isLocal: false, isDefinition: true, variable: [30 x %struct._inittab]* @_PyImport_Inittab)
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 3840, align: 64, elements: !353)
!6 = !DICompositeType(tag: DW_TAG_structure_type, name: "_inittab", file: !7, line: 99, size: 128, align: 64, elements: !8)
!7 = !DIFile(filename: "Include/import.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!8 = !{!9, !13}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !6, file: !7, line: 100, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "initfunc", scope: !6, file: !7, line: 101, baseType: !14, size: 64, align: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !19, line: 109, baseType: !20)
!19 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !19, line: 105, size: 128, align: 64, elements: !21)
!21 = !{!22, !30}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !20, file: !19, line: 107, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !24, line: 177, baseType: !25)
!24 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !26, line: 102, baseType: !27)
!26 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !28, line: 181, baseType: !29)
!28 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!29 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !20, file: !19, line: 108, baseType: !31, size: 64, align: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !19, line: 334, size: 3200, align: 64, elements: !33)
!33 = !{!34, !40, !41, !42, !43, !48, !112, !117, !122, !123, !128, !180, !211, !223, !229, !230, !231, !233, !235, !266, !267, !268, !277, !278, !283, !284, !286, !288, !298, !301, !319, !320, !321, !323, !325, !326, !328, !333, !338, !343, !344, !345, !346, !347, !348, !349, !350, !352}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !32, file: !19, line: 335, baseType: !35, size: 192, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !19, line: 114, baseType: !36)
!36 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 111, size: 192, align: 64, elements: !37)
!37 = !{!38, !39}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !36, file: !19, line: 112, baseType: !18, size: 128, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !36, file: !19, line: 113, baseType: !23, size: 64, align: 64, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !32, file: !19, line: 336, baseType: !10, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !32, file: !19, line: 337, baseType: !23, size: 64, align: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !32, file: !19, line: 337, baseType: !23, size: 64, align: 64, offset: 320)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !32, file: !19, line: 341, baseType: !44, size: 64, align: 64, offset: 384)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !19, line: 308, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !17}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !32, file: !19, line: 342, baseType: !49, size: 64, align: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !19, line: 314, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !17, !54, !53}
!53 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 48, baseType: !56)
!56 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !57, line: 246, size: 1728, align: 64, elements: !58)
!57 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!58 = !{!59, !60, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !80, !81, !82, !83, !85, !87, !89, !93, !96, !98, !100, !101, !102, !103, !107, !108}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !56, file: !57, line: 247, baseType: !53, size: 32, align: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !56, file: !57, line: 252, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !56, file: !57, line: 253, baseType: !61, size: 64, align: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !56, file: !57, line: 254, baseType: !61, size: 64, align: 64, offset: 192)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !56, file: !57, line: 255, baseType: !61, size: 64, align: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !56, file: !57, line: 256, baseType: !61, size: 64, align: 64, offset: 320)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !56, file: !57, line: 257, baseType: !61, size: 64, align: 64, offset: 384)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !56, file: !57, line: 258, baseType: !61, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !56, file: !57, line: 259, baseType: !61, size: 64, align: 64, offset: 512)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !56, file: !57, line: 261, baseType: !61, size: 64, align: 64, offset: 576)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !56, file: !57, line: 262, baseType: !61, size: 64, align: 64, offset: 640)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !56, file: !57, line: 263, baseType: !61, size: 64, align: 64, offset: 704)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !56, file: !57, line: 265, baseType: !73, size: 64, align: 64, offset: 768)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !57, line: 161, size: 192, align: 64, elements: !75)
!75 = !{!76, !77, !79}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !74, file: !57, line: 162, baseType: !73, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !74, file: !57, line: 163, baseType: !78, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !74, file: !57, line: 167, baseType: !53, size: 32, align: 32, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !56, file: !57, line: 267, baseType: !78, size: 64, align: 64, offset: 832)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !56, file: !57, line: 269, baseType: !53, size: 32, align: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !56, file: !57, line: 273, baseType: !53, size: 32, align: 32, offset: 928)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !56, file: !57, line: 275, baseType: !84, size: 64, align: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !28, line: 140, baseType: !29)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !56, file: !57, line: 279, baseType: !86, size: 16, align: 16, offset: 1024)
!86 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !56, file: !57, line: 280, baseType: !88, size: 8, align: 8, offset: 1040)
!88 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !56, file: !57, line: 281, baseType: !90, size: 8, align: 8, offset: 1048)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 1)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !56, file: !57, line: 285, baseType: !94, size: 64, align: 64, offset: 1088)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !57, line: 155, baseType: null)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !56, file: !57, line: 294, baseType: !97, size: 64, align: 64, offset: 1152)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !28, line: 141, baseType: !29)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !56, file: !57, line: 303, baseType: !99, size: 64, align: 64, offset: 1216)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !56, file: !57, line: 304, baseType: !99, size: 64, align: 64, offset: 1280)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !56, file: !57, line: 305, baseType: !99, size: 64, align: 64, offset: 1344)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !56, file: !57, line: 306, baseType: !99, size: 64, align: 64, offset: 1408)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !56, file: !57, line: 307, baseType: !104, size: 64, align: 64, offset: 1472)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 62, baseType: !106)
!105 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!106 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !56, file: !57, line: 309, baseType: !53, size: 32, align: 32, offset: 1536)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !56, file: !57, line: 311, baseType: !109, size: 160, align: 8, offset: 1568)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, align: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 20)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !32, file: !19, line: 343, baseType: !113, size: 64, align: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !19, line: 316, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!17, !17, !61}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !32, file: !19, line: 344, baseType: !118, size: 64, align: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !19, line: 318, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!53, !17, !61, !17}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !32, file: !19, line: 345, baseType: !99, size: 64, align: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !32, file: !19, line: 346, baseType: !124, size: 64, align: 64, offset: 704)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !19, line: 320, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!17, !17}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !32, file: !19, line: 350, baseType: !129, size: 64, align: 64, offset: 768)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !19, line: 278, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 236, size: 2176, align: 64, elements: !132)
!132 = !{!133, !138, !139, !140, !141, !142, !147, !149, !150, !151, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !131, file: !19, line: 241, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !19, line: 166, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!17, !17, !17}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !131, file: !19, line: 242, baseType: !134, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !131, file: !19, line: 243, baseType: !134, size: 64, align: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !131, file: !19, line: 244, baseType: !134, size: 64, align: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !131, file: !19, line: 245, baseType: !134, size: 64, align: 64, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !131, file: !19, line: 246, baseType: !143, size: 64, align: 64, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !19, line: 167, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!17, !17, !17, !17}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !131, file: !19, line: 247, baseType: !148, size: 64, align: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !19, line: 165, baseType: !125)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !131, file: !19, line: 248, baseType: !148, size: 64, align: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !131, file: !19, line: 249, baseType: !148, size: 64, align: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !131, file: !19, line: 250, baseType: !152, size: 64, align: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !19, line: 168, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!53, !17}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !131, file: !19, line: 251, baseType: !148, size: 64, align: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !131, file: !19, line: 252, baseType: !134, size: 64, align: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !131, file: !19, line: 253, baseType: !134, size: 64, align: 64, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !131, file: !19, line: 254, baseType: !134, size: 64, align: 64, offset: 832)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !131, file: !19, line: 255, baseType: !134, size: 64, align: 64, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !131, file: !19, line: 256, baseType: !134, size: 64, align: 64, offset: 960)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !131, file: !19, line: 257, baseType: !148, size: 64, align: 64, offset: 1024)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !131, file: !19, line: 258, baseType: !99, size: 64, align: 64, offset: 1088)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !131, file: !19, line: 259, baseType: !148, size: 64, align: 64, offset: 1152)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !131, file: !19, line: 261, baseType: !134, size: 64, align: 64, offset: 1216)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !131, file: !19, line: 262, baseType: !134, size: 64, align: 64, offset: 1280)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !131, file: !19, line: 263, baseType: !134, size: 64, align: 64, offset: 1344)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !131, file: !19, line: 264, baseType: !134, size: 64, align: 64, offset: 1408)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !131, file: !19, line: 265, baseType: !143, size: 64, align: 64, offset: 1472)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !131, file: !19, line: 266, baseType: !134, size: 64, align: 64, offset: 1536)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !131, file: !19, line: 267, baseType: !134, size: 64, align: 64, offset: 1600)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !131, file: !19, line: 268, baseType: !134, size: 64, align: 64, offset: 1664)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !131, file: !19, line: 269, baseType: !134, size: 64, align: 64, offset: 1728)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !131, file: !19, line: 270, baseType: !134, size: 64, align: 64, offset: 1792)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !131, file: !19, line: 272, baseType: !134, size: 64, align: 64, offset: 1856)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !131, file: !19, line: 273, baseType: !134, size: 64, align: 64, offset: 1920)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !131, file: !19, line: 274, baseType: !134, size: 64, align: 64, offset: 1984)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !131, file: !19, line: 275, baseType: !134, size: 64, align: 64, offset: 2048)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !131, file: !19, line: 277, baseType: !148, size: 64, align: 64, offset: 2112)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !32, file: !19, line: 351, baseType: !181, size: 64, align: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !19, line: 292, baseType: !183)
!183 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 280, size: 640, align: 64, elements: !184)
!184 = !{!185, !190, !191, !196, !197, !198, !203, !204, !209, !210}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !183, file: !19, line: 281, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !19, line: 169, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!23, !17}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !183, file: !19, line: 282, baseType: !134, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !183, file: !19, line: 283, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !19, line: 170, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!17, !17, !23}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !183, file: !19, line: 284, baseType: !192, size: 64, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !183, file: !19, line: 285, baseType: !99, size: 64, align: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !183, file: !19, line: 286, baseType: !199, size: 64, align: 64, offset: 320)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !19, line: 172, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!53, !17, !23, !17}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !183, file: !19, line: 287, baseType: !99, size: 64, align: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !183, file: !19, line: 288, baseType: !205, size: 64, align: 64, offset: 448)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !19, line: 231, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!53, !17, !17}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !183, file: !19, line: 290, baseType: !134, size: 64, align: 64, offset: 512)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !183, file: !19, line: 291, baseType: !192, size: 64, align: 64, offset: 576)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !32, file: !19, line: 352, baseType: !212, size: 64, align: 64, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !19, line: 298, baseType: !214)
!214 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 294, size: 192, align: 64, elements: !215)
!215 = !{!216, !217, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !214, file: !19, line: 295, baseType: !186, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !214, file: !19, line: 296, baseType: !134, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !214, file: !19, line: 297, baseType: !219, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !19, line: 174, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!53, !17, !17, !17}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !32, file: !19, line: 356, baseType: !224, size: 64, align: 64, offset: 960)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !19, line: 321, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!228, !17}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !24, line: 186, baseType: !23)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !32, file: !19, line: 357, baseType: !143, size: 64, align: 64, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !32, file: !19, line: 358, baseType: !124, size: 64, align: 64, offset: 1088)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !32, file: !19, line: 359, baseType: !232, size: 64, align: 64, offset: 1152)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !19, line: 317, baseType: !135)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !32, file: !19, line: 360, baseType: !234, size: 64, align: 64, offset: 1216)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !19, line: 319, baseType: !220)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !32, file: !19, line: 363, baseType: !236, size: 64, align: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !19, line: 304, baseType: !238)
!238 = !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 301, size: 128, align: 64, elements: !239)
!239 = !{!240, !261}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !238, file: !19, line: 302, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !19, line: 193, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!53, !17, !245, !53}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !19, line: 191, baseType: !247)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !19, line: 178, size: 640, align: 64, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !256, !258, !259, !260}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !247, file: !19, line: 179, baseType: !99, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !247, file: !19, line: 180, baseType: !17, size: 64, align: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !247, file: !19, line: 181, baseType: !23, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !247, file: !19, line: 182, baseType: !23, size: 64, align: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !247, file: !19, line: 184, baseType: !53, size: 32, align: 32, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !247, file: !19, line: 185, baseType: !53, size: 32, align: 32, offset: 288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !247, file: !19, line: 186, baseType: !61, size: 64, align: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !247, file: !19, line: 187, baseType: !257, size: 64, align: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !247, file: !19, line: 188, baseType: !257, size: 64, align: 64, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !247, file: !19, line: 189, baseType: !257, size: 64, align: 64, offset: 512)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !247, file: !19, line: 190, baseType: !99, size: 64, align: 64, offset: 576)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !238, file: !19, line: 303, baseType: !262, size: 64, align: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !19, line: 194, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !17, !245}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !32, file: !19, line: 366, baseType: !106, size: 64, align: 64, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !32, file: !19, line: 368, baseType: !10, size: 64, align: 64, offset: 1408)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !32, file: !19, line: 372, baseType: !269, size: 64, align: 64, offset: 1472)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !19, line: 233, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!53, !17, !273, !99}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !19, line: 232, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!53, !17, !99}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !32, file: !19, line: 375, baseType: !152, size: 64, align: 64, offset: 1536)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !32, file: !19, line: 379, baseType: !279, size: 64, align: 64, offset: 1600)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !19, line: 322, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!17, !17, !17, !53}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !32, file: !19, line: 382, baseType: !23, size: 64, align: 64, offset: 1664)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !32, file: !19, line: 385, baseType: !285, size: 64, align: 64, offset: 1728)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !19, line: 323, baseType: !125)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !32, file: !19, line: 386, baseType: !287, size: 64, align: 64, offset: 1792)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !19, line: 324, baseType: !125)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !32, file: !19, line: 389, baseType: !289, size: 64, align: 64, offset: 1856)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !291, line: 40, size: 256, align: 64, elements: !292)
!291 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!292 = !{!293, !294, !296, !297}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !290, file: !291, line: 41, baseType: !10, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !290, file: !291, line: 42, baseType: !295, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !291, line: 18, baseType: !135)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !290, file: !291, line: 43, baseType: !53, size: 32, align: 32, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !290, file: !291, line: 45, baseType: !10, size: 64, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !32, file: !19, line: 390, baseType: !299, size: 64, align: 64, offset: 1920)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !19, line: 390, flags: DIFlagFwdDecl)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !32, file: !19, line: 391, baseType: !302, size: 64, align: 64, offset: 1984)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !304, line: 11, size: 320, align: 64, elements: !305)
!304 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!305 = !{!306, !307, !312, !317, !318}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !304, line: 12, baseType: !61, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !303, file: !304, line: 13, baseType: !308, size: 64, align: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !304, line: 8, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!17, !17, !99}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !303, file: !304, line: 14, baseType: !313, size: 64, align: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !304, line: 9, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!53, !17, !17, !99}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !303, file: !304, line: 15, baseType: !61, size: 64, align: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !303, file: !304, line: 16, baseType: !99, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !32, file: !19, line: 392, baseType: !31, size: 64, align: 64, offset: 2048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !32, file: !19, line: 393, baseType: !17, size: 64, align: 64, offset: 2112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !32, file: !19, line: 394, baseType: !322, size: 64, align: 64, offset: 2176)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !19, line: 325, baseType: !144)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !32, file: !19, line: 395, baseType: !324, size: 64, align: 64, offset: 2240)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !19, line: 326, baseType: !220)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !32, file: !19, line: 396, baseType: !23, size: 64, align: 64, offset: 2304)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !32, file: !19, line: 397, baseType: !327, size: 64, align: 64, offset: 2368)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !19, line: 327, baseType: !220)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !32, file: !19, line: 398, baseType: !329, size: 64, align: 64, offset: 2432)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !19, line: 329, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!17, !31, !23}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !32, file: !19, line: 399, baseType: !334, size: 64, align: 64, offset: 2496)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !19, line: 328, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!17, !31, !17, !17}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !32, file: !19, line: 400, baseType: !339, size: 64, align: 64, offset: 2560)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !19, line: 307, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !99}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !32, file: !19, line: 401, baseType: !152, size: 64, align: 64, offset: 2624)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !32, file: !19, line: 402, baseType: !17, size: 64, align: 64, offset: 2688)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !32, file: !19, line: 403, baseType: !17, size: 64, align: 64, offset: 2752)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !32, file: !19, line: 404, baseType: !17, size: 64, align: 64, offset: 2816)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !32, file: !19, line: 405, baseType: !17, size: 64, align: 64, offset: 2880)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !32, file: !19, line: 406, baseType: !17, size: 64, align: 64, offset: 2944)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !32, file: !19, line: 407, baseType: !44, size: 64, align: 64, offset: 3008)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !32, file: !19, line: 410, baseType: !351, size: 32, align: 32, offset: 3072)
!351 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !32, file: !19, line: 412, baseType: !44, size: 64, align: 64, offset: 3136)
!353 = !{!354}
!354 = !DISubrange(count: 30)
!355 = !{i32 2, !"Dwarf Version", i32 4}
!356 = !{i32 2, !"Debug Info Version", i32 3}
!357 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
