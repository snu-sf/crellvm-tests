; ModuleID = 'programs_new/Python-new/_cryptmodule.bc.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }

@cryptmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @crypt_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [7 x i8] c"_crypt\00", align 1
@crypt_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @crypt_crypt to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([349 x i8], [349 x i8]* @crypt_crypt__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [6 x i8] c"crypt\00", align 1
@crypt_crypt__doc__ = internal global [349 x i8] c"crypt($module, word, salt, /)\0A--\0A\0AHash a *word* with the given *salt* and return the hashed password.\0A\0A*word* will usually be a user's password.  *salt* (either a random 2 or 16\0Acharacter string, possibly prefixed with $digit$ to indicate the method)\0Awill be used to perturb the encryption algorithm and produce distinct\0Aresults for a given *word*.\00", align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"ss:crypt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__crypt() #0 {
entry:
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @cryptmodule, i32 1013), !dbg !401
  ret %struct._object* %call, !dbg !402
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @crypt_crypt(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %word = alloca i8*, align 8
  %salt = alloca i8*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !375, metadata !407), !dbg !408
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !376, metadata !407), !dbg !409
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !410
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !410
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !377, metadata !407), !dbg !411
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !411, !tbaa !403
  %1 = bitcast i8** %word to i8*, !dbg !412
  call void @llvm.lifetime.start(i64 8, i8* %1) #3, !dbg !412
  call void @llvm.dbg.declare(metadata i8** %word, metadata !378, metadata !407), !dbg !413
  %2 = bitcast i8** %salt to i8*, !dbg !414
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !414
  call void @llvm.dbg.declare(metadata i8** %salt, metadata !379, metadata !407), !dbg !415
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !416, !tbaa !403
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8** %word, i8** %salt), !dbg !418
  %tobool = icmp ne i32 %call, 0, !dbg !418
  br i1 %tobool, label %if.end, label %if.then, !dbg !419

if.then:                                          ; preds = %entry
  br label %exit, !dbg !420

if.end:                                           ; preds = %entry
  %4 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !421, !tbaa !403
  %5 = load i8*, i8** %word, align 8, !dbg !422, !tbaa !403
  %6 = load i8*, i8** %salt, align 8, !dbg !423, !tbaa !403
  %call1 = call %struct._object* @crypt_crypt_impl(%struct.PyModuleDef* %4, i8* %5, i8* %6), !dbg !424
  store %struct._object* %call1, %struct._object** %return_value, align 8, !dbg !425, !tbaa !403
  br label %exit, !dbg !426

exit:                                             ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !427, !tbaa !403
  %8 = bitcast i8** %salt to i8*, !dbg !428
  call void @llvm.lifetime.end(i64 8, i8* %8) #3, !dbg !428
  %9 = bitcast i8** %word to i8*, !dbg !428
  call void @llvm.lifetime.end(i64 8, i8* %9) #3, !dbg !428
  %10 = bitcast %struct._object** %return_value to i8*, !dbg !428
  call void @llvm.lifetime.end(i64 8, i8* %10) #3, !dbg !428
  ret %struct._object* %7, !dbg !429
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @crypt_crypt_impl(%struct.PyModuleDef* %module, i8* %word, i8* %salt) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %word.addr = alloca i8*, align 8
  %salt.addr = alloca i8*, align 8
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !384, metadata !407), !dbg !430
  store i8* %word, i8** %word.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata i8** %word.addr, metadata !385, metadata !407), !dbg !431
  store i8* %salt, i8** %salt.addr, align 8, !tbaa !403
  call void @llvm.dbg.declare(metadata i8** %salt.addr, metadata !386, metadata !407), !dbg !432
  %0 = load i8*, i8** %word.addr, align 8, !dbg !433, !tbaa !403
  %1 = load i8*, i8** %salt.addr, align 8, !dbg !434, !tbaa !403
  %call = call i8* @crypt(i8* %0, i8* %1) #3, !dbg !435
  %call1 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* %call), !dbg !436
  ret %struct._object* %call1, !dbg !437
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @crypt(i8*, i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!397, !398, !399}
!llvm.ident = !{!400}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, subprograms: !3, globals: !387)
!1 = !DIFile(filename: "_cryptmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !347, !380}
!4 = !DISubprogram(name: "PyInit__crypt", scope: !5, file: !5, line: 95, type: !6, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__crypt, variables: !2)
!5 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_cryptmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !10, line: 109, baseType: !11)
!10 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !10, line: 105, size: 128, align: 64, elements: !12)
!12 = !{!13, !21}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !11, file: !10, line: 107, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !15, line: 177, baseType: !16)
!15 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !17, line: 102, baseType: !18)
!17 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !19, line: 181, baseType: !20)
!19 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!20 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !11, file: !10, line: 108, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !10, line: 334, size: 3200, align: 64, elements: !24)
!24 = !{!25, !31, !35, !36, !37, !42, !106, !111, !116, !117, !122, !174, !205, !217, !223, !224, !225, !227, !229, !260, !261, !262, !271, !272, !277, !278, !280, !282, !292, !295, !313, !314, !315, !317, !319, !320, !322, !327, !332, !337, !338, !339, !340, !341, !342, !343, !344, !346}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !23, file: !10, line: 335, baseType: !26, size: 192, align: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !10, line: 114, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 111, size: 192, align: 64, elements: !28)
!28 = !{!29, !30}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !10, line: 112, baseType: !9, size: 128, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !27, file: !10, line: 113, baseType: !14, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !23, file: !10, line: 336, baseType: !32, size: 64, align: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !23, file: !10, line: 337, baseType: !14, size: 64, align: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !23, file: !10, line: 341, baseType: !38, size: 64, align: 64, offset: 384)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !10, line: 308, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !8}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !23, file: !10, line: 342, baseType: !43, size: 64, align: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !10, line: 314, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !8, !48, !47}
!47 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !17, line: 48, baseType: !50)
!50 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !51, line: 246, size: 1728, align: 64, elements: !52)
!51 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!52 = !{!53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !74, !75, !76, !77, !79, !81, !83, !87, !90, !92, !94, !95, !96, !97, !101, !102}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !50, file: !51, line: 247, baseType: !47, size: 32, align: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !50, file: !51, line: 252, baseType: !55, size: 64, align: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !50, file: !51, line: 253, baseType: !55, size: 64, align: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !50, file: !51, line: 254, baseType: !55, size: 64, align: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !50, file: !51, line: 255, baseType: !55, size: 64, align: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !50, file: !51, line: 256, baseType: !55, size: 64, align: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !50, file: !51, line: 257, baseType: !55, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !50, file: !51, line: 258, baseType: !55, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !50, file: !51, line: 259, baseType: !55, size: 64, align: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !50, file: !51, line: 261, baseType: !55, size: 64, align: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !50, file: !51, line: 262, baseType: !55, size: 64, align: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !50, file: !51, line: 263, baseType: !55, size: 64, align: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !50, file: !51, line: 265, baseType: !67, size: 64, align: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !51, line: 161, size: 192, align: 64, elements: !69)
!69 = !{!70, !71, !73}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !68, file: !51, line: 162, baseType: !67, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !68, file: !51, line: 163, baseType: !72, size: 64, align: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !68, file: !51, line: 167, baseType: !47, size: 32, align: 32, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !50, file: !51, line: 267, baseType: !72, size: 64, align: 64, offset: 832)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !50, file: !51, line: 269, baseType: !47, size: 32, align: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !50, file: !51, line: 273, baseType: !47, size: 32, align: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !50, file: !51, line: 275, baseType: !78, size: 64, align: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !19, line: 140, baseType: !20)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !50, file: !51, line: 279, baseType: !80, size: 16, align: 16, offset: 1024)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !50, file: !51, line: 280, baseType: !82, size: 8, align: 8, offset: 1040)
!82 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !50, file: !51, line: 281, baseType: !84, size: 8, align: 8, offset: 1048)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, align: 8, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 1)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !50, file: !51, line: 285, baseType: !88, size: 64, align: 64, offset: 1088)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !51, line: 155, baseType: null)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !50, file: !51, line: 294, baseType: !91, size: 64, align: 64, offset: 1152)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !19, line: 141, baseType: !20)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !50, file: !51, line: 303, baseType: !93, size: 64, align: 64, offset: 1216)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !50, file: !51, line: 304, baseType: !93, size: 64, align: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !50, file: !51, line: 305, baseType: !93, size: 64, align: 64, offset: 1344)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !50, file: !51, line: 306, baseType: !93, size: 64, align: 64, offset: 1408)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !50, file: !51, line: 307, baseType: !98, size: 64, align: 64, offset: 1472)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 62, baseType: !100)
!99 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!100 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !50, file: !51, line: 309, baseType: !47, size: 32, align: 32, offset: 1536)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !50, file: !51, line: 311, baseType: !103, size: 160, align: 8, offset: 1568)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 160, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 20)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !23, file: !10, line: 343, baseType: !107, size: 64, align: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !10, line: 316, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!8, !8, !55}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !23, file: !10, line: 344, baseType: !112, size: 64, align: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !10, line: 318, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!47, !8, !55, !8}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !23, file: !10, line: 345, baseType: !93, size: 64, align: 64, offset: 640)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !23, file: !10, line: 346, baseType: !118, size: 64, align: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !10, line: 320, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!8, !8}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !23, file: !10, line: 350, baseType: !123, size: 64, align: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !10, line: 278, baseType: !125)
!125 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 236, size: 2176, align: 64, elements: !126)
!126 = !{!127, !132, !133, !134, !135, !136, !141, !143, !144, !145, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !125, file: !10, line: 241, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !10, line: 166, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!8, !8, !8}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !125, file: !10, line: 242, baseType: !128, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !125, file: !10, line: 243, baseType: !128, size: 64, align: 64, offset: 128)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !125, file: !10, line: 244, baseType: !128, size: 64, align: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !125, file: !10, line: 245, baseType: !128, size: 64, align: 64, offset: 256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !125, file: !10, line: 246, baseType: !137, size: 64, align: 64, offset: 320)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !10, line: 167, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!8, !8, !8, !8}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !125, file: !10, line: 247, baseType: !142, size: 64, align: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !10, line: 165, baseType: !119)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !125, file: !10, line: 248, baseType: !142, size: 64, align: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !125, file: !10, line: 249, baseType: !142, size: 64, align: 64, offset: 512)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !125, file: !10, line: 250, baseType: !146, size: 64, align: 64, offset: 576)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !10, line: 168, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!47, !8}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !125, file: !10, line: 251, baseType: !142, size: 64, align: 64, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !125, file: !10, line: 252, baseType: !128, size: 64, align: 64, offset: 704)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !125, file: !10, line: 253, baseType: !128, size: 64, align: 64, offset: 768)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !125, file: !10, line: 254, baseType: !128, size: 64, align: 64, offset: 832)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !125, file: !10, line: 255, baseType: !128, size: 64, align: 64, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !125, file: !10, line: 256, baseType: !128, size: 64, align: 64, offset: 960)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !125, file: !10, line: 257, baseType: !142, size: 64, align: 64, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !125, file: !10, line: 258, baseType: !93, size: 64, align: 64, offset: 1088)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !125, file: !10, line: 259, baseType: !142, size: 64, align: 64, offset: 1152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !125, file: !10, line: 261, baseType: !128, size: 64, align: 64, offset: 1216)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !125, file: !10, line: 262, baseType: !128, size: 64, align: 64, offset: 1280)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !125, file: !10, line: 263, baseType: !128, size: 64, align: 64, offset: 1344)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !125, file: !10, line: 264, baseType: !128, size: 64, align: 64, offset: 1408)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !125, file: !10, line: 265, baseType: !137, size: 64, align: 64, offset: 1472)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !125, file: !10, line: 266, baseType: !128, size: 64, align: 64, offset: 1536)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !125, file: !10, line: 267, baseType: !128, size: 64, align: 64, offset: 1600)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !125, file: !10, line: 268, baseType: !128, size: 64, align: 64, offset: 1664)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !125, file: !10, line: 269, baseType: !128, size: 64, align: 64, offset: 1728)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !125, file: !10, line: 270, baseType: !128, size: 64, align: 64, offset: 1792)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !125, file: !10, line: 272, baseType: !128, size: 64, align: 64, offset: 1856)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !125, file: !10, line: 273, baseType: !128, size: 64, align: 64, offset: 1920)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !125, file: !10, line: 274, baseType: !128, size: 64, align: 64, offset: 1984)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !125, file: !10, line: 275, baseType: !128, size: 64, align: 64, offset: 2048)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !125, file: !10, line: 277, baseType: !142, size: 64, align: 64, offset: 2112)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !23, file: !10, line: 351, baseType: !175, size: 64, align: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !10, line: 292, baseType: !177)
!177 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 280, size: 640, align: 64, elements: !178)
!178 = !{!179, !184, !185, !190, !191, !192, !197, !198, !203, !204}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !177, file: !10, line: 281, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !10, line: 169, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!14, !8}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !177, file: !10, line: 282, baseType: !128, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !177, file: !10, line: 283, baseType: !186, size: 64, align: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !10, line: 170, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!8, !8, !14}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !177, file: !10, line: 284, baseType: !186, size: 64, align: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !177, file: !10, line: 285, baseType: !93, size: 64, align: 64, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !177, file: !10, line: 286, baseType: !193, size: 64, align: 64, offset: 320)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !10, line: 172, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!47, !8, !14, !8}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !177, file: !10, line: 287, baseType: !93, size: 64, align: 64, offset: 384)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !177, file: !10, line: 288, baseType: !199, size: 64, align: 64, offset: 448)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !10, line: 231, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!47, !8, !8}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !177, file: !10, line: 290, baseType: !128, size: 64, align: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !177, file: !10, line: 291, baseType: !186, size: 64, align: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !23, file: !10, line: 352, baseType: !206, size: 64, align: 64, offset: 896)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !10, line: 298, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 294, size: 192, align: 64, elements: !209)
!209 = !{!210, !211, !212}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !208, file: !10, line: 295, baseType: !180, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !208, file: !10, line: 296, baseType: !128, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !208, file: !10, line: 297, baseType: !213, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !10, line: 174, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!47, !8, !8, !8}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !23, file: !10, line: 356, baseType: !218, size: 64, align: 64, offset: 960)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !10, line: 321, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !8}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !15, line: 186, baseType: !14)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !23, file: !10, line: 357, baseType: !137, size: 64, align: 64, offset: 1024)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !23, file: !10, line: 358, baseType: !118, size: 64, align: 64, offset: 1088)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !23, file: !10, line: 359, baseType: !226, size: 64, align: 64, offset: 1152)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !10, line: 317, baseType: !129)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !23, file: !10, line: 360, baseType: !228, size: 64, align: 64, offset: 1216)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !10, line: 319, baseType: !214)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !23, file: !10, line: 363, baseType: !230, size: 64, align: 64, offset: 1280)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !10, line: 304, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 301, size: 128, align: 64, elements: !233)
!233 = !{!234, !255}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !232, file: !10, line: 302, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !10, line: 193, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!47, !8, !239, !47}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !10, line: 191, baseType: !241)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !10, line: 178, size: 640, align: 64, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !252, !253, !254}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !241, file: !10, line: 179, baseType: !93, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !241, file: !10, line: 180, baseType: !8, size: 64, align: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !241, file: !10, line: 181, baseType: !14, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !241, file: !10, line: 182, baseType: !14, size: 64, align: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !241, file: !10, line: 184, baseType: !47, size: 32, align: 32, offset: 256)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !241, file: !10, line: 185, baseType: !47, size: 32, align: 32, offset: 288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !241, file: !10, line: 186, baseType: !55, size: 64, align: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !241, file: !10, line: 187, baseType: !251, size: 64, align: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !241, file: !10, line: 188, baseType: !251, size: 64, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !241, file: !10, line: 189, baseType: !251, size: 64, align: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !241, file: !10, line: 190, baseType: !93, size: 64, align: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !232, file: !10, line: 303, baseType: !256, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !10, line: 194, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !8, !239}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !23, file: !10, line: 366, baseType: !100, size: 64, align: 64, offset: 1344)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !23, file: !10, line: 368, baseType: !32, size: 64, align: 64, offset: 1408)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !23, file: !10, line: 372, baseType: !263, size: 64, align: 64, offset: 1472)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !10, line: 233, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!47, !8, !267, !93}
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !10, line: 232, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!47, !8, !93}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !23, file: !10, line: 375, baseType: !146, size: 64, align: 64, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !23, file: !10, line: 379, baseType: !273, size: 64, align: 64, offset: 1600)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !10, line: 322, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!8, !8, !8, !47}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !23, file: !10, line: 382, baseType: !14, size: 64, align: 64, offset: 1664)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !23, file: !10, line: 385, baseType: !279, size: 64, align: 64, offset: 1728)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !10, line: 323, baseType: !119)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !23, file: !10, line: 386, baseType: !281, size: 64, align: 64, offset: 1792)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !10, line: 324, baseType: !119)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !23, file: !10, line: 389, baseType: !283, size: 64, align: 64, offset: 1856)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !285, line: 40, size: 256, align: 64, elements: !286)
!285 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!286 = !{!287, !288, !290, !291}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !284, file: !285, line: 41, baseType: !32, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !284, file: !285, line: 42, baseType: !289, size: 64, align: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !285, line: 18, baseType: !129)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !284, file: !285, line: 43, baseType: !47, size: 32, align: 32, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !284, file: !285, line: 45, baseType: !32, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !23, file: !10, line: 390, baseType: !293, size: 64, align: 64, offset: 1920)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !10, line: 390, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !23, file: !10, line: 391, baseType: !296, size: 64, align: 64, offset: 1984)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !298, line: 11, size: 320, align: 64, elements: !299)
!298 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!299 = !{!300, !301, !306, !311, !312}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !298, line: 12, baseType: !55, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !297, file: !298, line: 13, baseType: !302, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !298, line: 8, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!8, !8, !93}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !297, file: !298, line: 14, baseType: !307, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !298, line: 9, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!47, !8, !8, !93}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !297, file: !298, line: 15, baseType: !55, size: 64, align: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !297, file: !298, line: 16, baseType: !93, size: 64, align: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !23, file: !10, line: 392, baseType: !22, size: 64, align: 64, offset: 2048)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !23, file: !10, line: 393, baseType: !8, size: 64, align: 64, offset: 2112)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !23, file: !10, line: 394, baseType: !316, size: 64, align: 64, offset: 2176)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !10, line: 325, baseType: !138)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !23, file: !10, line: 395, baseType: !318, size: 64, align: 64, offset: 2240)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !10, line: 326, baseType: !214)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !23, file: !10, line: 396, baseType: !14, size: 64, align: 64, offset: 2304)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !23, file: !10, line: 397, baseType: !321, size: 64, align: 64, offset: 2368)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !10, line: 327, baseType: !214)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !23, file: !10, line: 398, baseType: !323, size: 64, align: 64, offset: 2432)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !10, line: 329, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!8, !22, !14}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !23, file: !10, line: 399, baseType: !328, size: 64, align: 64, offset: 2496)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !10, line: 328, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!8, !22, !8, !8}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !23, file: !10, line: 400, baseType: !333, size: 64, align: 64, offset: 2560)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !10, line: 307, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !93}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !23, file: !10, line: 401, baseType: !146, size: 64, align: 64, offset: 2624)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !23, file: !10, line: 402, baseType: !8, size: 64, align: 64, offset: 2688)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !23, file: !10, line: 403, baseType: !8, size: 64, align: 64, offset: 2752)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !23, file: !10, line: 404, baseType: !8, size: 64, align: 64, offset: 2816)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !23, file: !10, line: 405, baseType: !8, size: 64, align: 64, offset: 2880)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !23, file: !10, line: 406, baseType: !8, size: 64, align: 64, offset: 2944)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !23, file: !10, line: 407, baseType: !38, size: 64, align: 64, offset: 3008)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !23, file: !10, line: 410, baseType: !345, size: 32, align: 32, offset: 3072)
!345 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !23, file: !10, line: 412, baseType: !38, size: 64, align: 64, offset: 3136)
!347 = !DISubprogram(name: "crypt_crypt", scope: !5, file: !5, line: 50, type: !348, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @crypt_crypt, variables: !374)
!348 = !DISubroutineType(types: !349)
!349 = !{!8, !350, !8}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef", file: !352, line: 57, baseType: !353)
!352 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !352, line: 47, size: 832, align: 64, elements: !354)
!354 = !{!355, !364, !365, !366, !367, !370, !371, !372, !373}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !353, file: !352, line: 48, baseType: !356, size: 320, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !352, line: 38, baseType: !357)
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !352, line: 33, size: 320, align: 64, elements: !358)
!358 = !{!359, !360, !362, !363}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !357, file: !352, line: 34, baseType: !9, size: 128, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !357, file: !352, line: 35, baseType: !361, size: 64, align: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !357, file: !352, line: 36, baseType: !14, size: 64, align: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !357, file: !352, line: 37, baseType: !8, size: 64, align: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !353, file: !352, line: 49, baseType: !32, size: 64, align: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !353, file: !352, line: 50, baseType: !32, size: 64, align: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !353, file: !352, line: 51, baseType: !14, size: 64, align: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !353, file: !352, line: 52, baseType: !368, size: 64, align: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !285, line: 47, baseType: !284)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !353, file: !352, line: 53, baseType: !146, size: 64, align: 64, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !353, file: !352, line: 54, baseType: !263, size: 64, align: 64, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !353, file: !352, line: 55, baseType: !146, size: 64, align: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !353, file: !352, line: 56, baseType: !333, size: 64, align: 64, offset: 768)
!374 = !{!375, !376, !377, !378, !379}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !347, file: !5, line: 50, type: !350)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !347, file: !5, line: 50, type: !8)
!377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !347, file: !5, line: 52, type: !8)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "word", scope: !347, file: !5, line: 53, type: !32)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "salt", scope: !347, file: !5, line: 54, type: !32)
!380 = !DISubprogram(name: "crypt_crypt_impl", scope: !5, file: !5, line: 67, type: !381, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, i8*, i8*)* @crypt_crypt_impl, variables: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{!8, !350, !32, !32}
!383 = !{!384, !385, !386}
!384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !380, file: !5, line: 67, type: !350)
!385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "word", arg: 2, scope: !380, file: !5, line: 67, type: !32)
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "salt", arg: 3, scope: !380, file: !5, line: 67, type: !32)
!387 = !{!388, !389, !393}
!388 = !DIGlobalVariable(name: "cryptmodule", scope: !0, file: !5, line: 82, type: !353, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @cryptmodule)
!389 = !DIGlobalVariable(name: "crypt_methods", scope: !0, file: !5, line: 76, type: !390, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @crypt_methods)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 512, align: 64, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 2)
!393 = !DIGlobalVariable(name: "crypt_crypt__doc__", scope: !0, file: !5, line: 32, type: !394, isLocal: true, isDefinition: true, variable: [349 x i8]* @crypt_crypt__doc__)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 2792, align: 8, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 349)
!397 = !{i32 2, !"Dwarf Version", i32 4}
!398 = !{i32 2, !"Debug Info Version", i32 3}
!399 = !{i32 1, !"PIC Level", i32 2}
!400 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!401 = !DILocation(line: 97, column: 12, scope: !4)
!402 = !DILocation(line: 97, column: 5, scope: !4)
!403 = !{!404, !404, i64 0}
!404 = !{!"any pointer", !405, i64 0}
!405 = !{!"omnipotent char", !406, i64 0}
!406 = !{!"Simple C/C++ TBAA"}
!407 = !DIExpression()
!408 = !DILocation(line: 50, column: 26, scope: !347)
!409 = !DILocation(line: 50, column: 44, scope: !347)
!410 = !DILocation(line: 52, column: 5, scope: !347)
!411 = !DILocation(line: 52, column: 15, scope: !347)
!412 = !DILocation(line: 53, column: 5, scope: !347)
!413 = !DILocation(line: 53, column: 17, scope: !347)
!414 = !DILocation(line: 54, column: 5, scope: !347)
!415 = !DILocation(line: 54, column: 17, scope: !347)
!416 = !DILocation(line: 56, column: 27, scope: !417)
!417 = distinct !DILexicalBlock(scope: !347, file: !5, line: 56, column: 9)
!418 = !DILocation(line: 56, column: 10, scope: !417)
!419 = !DILocation(line: 56, column: 9, scope: !347)
!420 = !DILocation(line: 59, column: 9, scope: !417)
!421 = !DILocation(line: 60, column: 37, scope: !347)
!422 = !DILocation(line: 60, column: 45, scope: !347)
!423 = !DILocation(line: 60, column: 51, scope: !347)
!424 = !DILocation(line: 60, column: 20, scope: !347)
!425 = !DILocation(line: 60, column: 18, scope: !347)
!426 = !DILocation(line: 60, column: 5, scope: !347)
!427 = !DILocation(line: 63, column: 12, scope: !347)
!428 = !DILocation(line: 64, column: 1, scope: !347)
!429 = !DILocation(line: 63, column: 5, scope: !347)
!430 = !DILocation(line: 67, column: 31, scope: !380)
!431 = !DILocation(line: 67, column: 51, scope: !380)
!432 = !DILocation(line: 67, column: 69, scope: !380)
!433 = !DILocation(line: 72, column: 37, scope: !380)
!434 = !DILocation(line: 72, column: 43, scope: !380)
!435 = !DILocation(line: 72, column: 31, scope: !380)
!436 = !DILocation(line: 72, column: 12, scope: !380)
!437 = !DILocation(line: 72, column: 5, scope: !380)
