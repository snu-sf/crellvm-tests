; ModuleID = 'programs_new/Python-new/_opcode.bc.ll'
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

@opcodemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @opcode_functions, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [8 x i8] c"_opcode\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Opcode support module.\00", align 1
@opcode_functions = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyModuleDef*, %struct._object*)* @_opcode_stack_effect to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @_opcode_stack_effect__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"stack_effect\00", align 1
@_opcode_stack_effect__doc__ = internal global [89 x i8] c"stack_effect($module, opcode, oparg=None, /)\0A--\0A\0ACompute the stack effect of the opcode.\00", align 16
@_Py_NoneStruct = external global %struct._object, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"i|O:stack_effect\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [64 x i8] c"stack_effect: opcode requires oparg but oparg was not specified\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"stack_effect: opcode does not permit oparg but oparg was specified\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid opcode or oparg\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__opcode() #0 {
entry:
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @opcodemodule, i32 1013), !dbg !405
  ret %struct._object* %call, !dbg !406
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_opcode_stack_effect(%struct.PyModuleDef* %module, %struct._object* %args) #0 {
entry:
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %args.addr = alloca %struct._object*, align 8
  %return_value = alloca %struct._object*, align 8
  %opcode = alloca i32, align 4
  %oparg = alloca %struct._object*, align 8
  %_return_value = alloca i32, align 4
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !407
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !376, metadata !411), !dbg !412
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !407
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !377, metadata !411), !dbg !413
  %0 = bitcast %struct._object** %return_value to i8*, !dbg !414
  call void @llvm.lifetime.start(i64 8, i8* %0) #3, !dbg !414
  call void @llvm.dbg.declare(metadata %struct._object** %return_value, metadata !378, metadata !411), !dbg !415
  store %struct._object* null, %struct._object** %return_value, align 8, !dbg !415, !tbaa !407
  %1 = bitcast i32* %opcode to i8*, !dbg !416
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !416
  call void @llvm.dbg.declare(metadata i32* %opcode, metadata !379, metadata !411), !dbg !417
  %2 = bitcast %struct._object** %oparg to i8*, !dbg !418
  call void @llvm.lifetime.start(i64 8, i8* %2) #3, !dbg !418
  call void @llvm.dbg.declare(metadata %struct._object** %oparg, metadata !380, metadata !411), !dbg !419
  store %struct._object* @_Py_NoneStruct, %struct._object** %oparg, align 8, !dbg !419, !tbaa !407
  %3 = bitcast i32* %_return_value to i8*, !dbg !420
  call void @llvm.lifetime.start(i64 4, i8* %3) #3, !dbg !420
  call void @llvm.dbg.declare(metadata i32* %_return_value, metadata !381, metadata !411), !dbg !421
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !422, !tbaa !407
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32* %opcode, %struct._object** %oparg), !dbg !424
  %tobool = icmp ne i32 %call, 0, !dbg !424
  br i1 %tobool, label %if.end, label %if.then, !dbg !425

if.then:                                          ; preds = %entry
  br label %exit, !dbg !426

if.end:                                           ; preds = %entry
  %5 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8, !dbg !427, !tbaa !407
  %6 = load i32, i32* %opcode, align 4, !dbg !428, !tbaa !429
  %7 = load %struct._object*, %struct._object** %oparg, align 8, !dbg !431, !tbaa !407
  %call1 = call i32 @_opcode_stack_effect_impl(%struct.PyModuleDef* %5, i32 %6, %struct._object* %7), !dbg !432
  store i32 %call1, i32* %_return_value, align 4, !dbg !433, !tbaa !429
  %8 = load i32, i32* %_return_value, align 4, !dbg !434, !tbaa !429
  %cmp = icmp eq i32 %8, -1, !dbg !436
  br i1 %cmp, label %land.lhs.true, label %if.end.5, !dbg !437

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred(), !dbg !438
  %tobool3 = icmp ne %struct._object* %call2, null, !dbg !438
  br i1 %tobool3, label %if.then.4, label %if.end.5, !dbg !440

if.then.4:                                        ; preds = %land.lhs.true
  br label %exit, !dbg !441

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %9 = load i32, i32* %_return_value, align 4, !dbg !442, !tbaa !429
  %conv = sext i32 %9 to i64, !dbg !443
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !444
  store %struct._object* %call6, %struct._object** %return_value, align 8, !dbg !445, !tbaa !407
  br label %exit, !dbg !446

exit:                                             ; preds = %if.end.5, %if.then.4, %if.then
  %10 = load %struct._object*, %struct._object** %return_value, align 8, !dbg !447, !tbaa !407
  %11 = bitcast i32* %_return_value to i8*, !dbg !448
  call void @llvm.lifetime.end(i64 4, i8* %11) #3, !dbg !448
  %12 = bitcast %struct._object** %oparg to i8*, !dbg !448
  call void @llvm.lifetime.end(i64 8, i8* %12) #3, !dbg !448
  %13 = bitcast i32* %opcode to i8*, !dbg !448
  call void @llvm.lifetime.end(i64 4, i8* %13) #3, !dbg !448
  %14 = bitcast %struct._object** %return_value to i8*, !dbg !448
  call void @llvm.lifetime.end(i64 8, i8* %14) #3, !dbg !448
  ret %struct._object* %10, !dbg !449
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_opcode_stack_effect_impl(%struct.PyModuleDef* %module, i32 %opcode, %struct._object* %oparg) #0 {
entry:
  %retval = alloca i32, align 4
  %module.addr = alloca %struct.PyModuleDef*, align 8
  %opcode.addr = alloca i32, align 4
  %oparg.addr = alloca %struct._object*, align 8
  %effect = alloca i32, align 4
  %oparg_int = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8, !tbaa !407
  call void @llvm.dbg.declare(metadata %struct.PyModuleDef** %module.addr, metadata !386, metadata !411), !dbg !450
  store i32 %opcode, i32* %opcode.addr, align 4, !tbaa !429
  call void @llvm.dbg.declare(metadata i32* %opcode.addr, metadata !387, metadata !411), !dbg !451
  store %struct._object* %oparg, %struct._object** %oparg.addr, align 8, !tbaa !407
  call void @llvm.dbg.declare(metadata %struct._object** %oparg.addr, metadata !388, metadata !411), !dbg !452
  %0 = bitcast i32* %effect to i8*, !dbg !453
  call void @llvm.lifetime.start(i64 4, i8* %0) #3, !dbg !453
  call void @llvm.dbg.declare(metadata i32* %effect, metadata !389, metadata !411), !dbg !454
  %1 = bitcast i32* %oparg_int to i8*, !dbg !455
  call void @llvm.lifetime.start(i64 4, i8* %1) #3, !dbg !455
  call void @llvm.dbg.declare(metadata i32* %oparg_int, metadata !390, metadata !411), !dbg !456
  store i32 0, i32* %oparg_int, align 4, !dbg !456, !tbaa !429
  %2 = load i32, i32* %opcode.addr, align 4, !dbg !457, !tbaa !429
  %cmp = icmp sge i32 %2, 90, !dbg !459
  br i1 %cmp, label %if.then, label %if.else, !dbg !460

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %oparg.addr, align 8, !dbg !461, !tbaa !407
  %cmp1 = icmp eq %struct._object* %3, @_Py_NoneStruct, !dbg !464
  br i1 %cmp1, label %if.then.2, label %if.end, !dbg !465

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !466, !tbaa !407
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0)), !dbg !468
  store i32 -1, i32* %retval, !dbg !469
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !469

if.end:                                           ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %oparg.addr, align 8, !dbg !470, !tbaa !407
  %call = call i64 @PyLong_AsLong(%struct._object* %5), !dbg !471
  %conv = trunc i64 %call to i32, !dbg !472
  store i32 %conv, i32* %oparg_int, align 4, !dbg !473, !tbaa !429
  %6 = load i32, i32* %oparg_int, align 4, !dbg !474, !tbaa !429
  %cmp3 = icmp eq i32 %6, -1, !dbg !476
  br i1 %cmp3, label %land.lhs.true, label %if.end.7, !dbg !477

land.lhs.true:                                    ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred(), !dbg !478
  %tobool = icmp ne %struct._object* %call5, null, !dbg !478
  br i1 %tobool, label %if.then.6, label %if.end.7, !dbg !480

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval, !dbg !481
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !481

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  br label %if.end.12, !dbg !482

if.else:                                          ; preds = %entry
  %7 = load %struct._object*, %struct._object** %oparg.addr, align 8, !dbg !483, !tbaa !407
  %cmp8 = icmp ne %struct._object* %7, @_Py_NoneStruct, !dbg !485
  br i1 %cmp8, label %if.then.10, label %if.end.11, !dbg !486

if.then.10:                                       ; preds = %if.else
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !487, !tbaa !407
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0)), !dbg !489
  store i32 -1, i32* %retval, !dbg !490
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !490

if.end.11:                                        ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.7
  %9 = load i32, i32* %opcode.addr, align 4, !dbg !491, !tbaa !429
  %10 = load i32, i32* %oparg_int, align 4, !dbg !492, !tbaa !429
  %call13 = call i32 @PyCompile_OpcodeStackEffect(i32 %9, i32 %10), !dbg !493
  store i32 %call13, i32* %effect, align 4, !dbg !494, !tbaa !429
  %11 = load i32, i32* %effect, align 4, !dbg !495, !tbaa !429
  %cmp14 = icmp eq i32 %11, 2147483647, !dbg !497
  br i1 %cmp14, label %if.then.16, label %if.end.17, !dbg !498

if.then.16:                                       ; preds = %if.end.12
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !499, !tbaa !407
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0)), !dbg !501
  store i32 -1, i32* %retval, !dbg !502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !502

if.end.17:                                        ; preds = %if.end.12
  %13 = load i32, i32* %effect, align 4, !dbg !503, !tbaa !429
  store i32 %13, i32* %retval, !dbg !504
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !504

cleanup:                                          ; preds = %if.end.17, %if.then.16, %if.then.10, %if.then.6, %if.then.2
  %14 = bitcast i32* %oparg_int to i8*, !dbg !505
  call void @llvm.lifetime.end(i64 4, i8* %14) #3, !dbg !505
  %15 = bitcast i32* %effect to i8*, !dbg !505
  call void @llvm.lifetime.end(i64 4, i8* %15) #3, !dbg !505
  %16 = load i32, i32* %retval, !dbg !505
  ret i32 %16, !dbg !505
}

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromLong(i64) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare i32 @PyCompile_OpcodeStackEffect(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!401, !402, !403}
!llvm.ident = !{!404}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !391)
!1 = !DIFile(filename: "_opcode.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !348, !382}
!7 = !DISubprogram(name: "PyInit__opcode", scope: !8, file: !8, line: 106, type: !9, isLocal: false, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__opcode, variables: !2)
!8 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_opcode.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !13, line: 109, baseType: !14)
!13 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!14 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !13, line: 105, size: 128, align: 64, elements: !15)
!15 = !{!16, !23}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !14, file: !13, line: 107, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !18, line: 177, baseType: !19)
!18 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !20, line: 102, baseType: !21)
!20 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !22, line: 181, baseType: !4)
!22 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !14, file: !13, line: 108, baseType: !24, size: 64, align: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !13, line: 334, size: 3200, align: 64, elements: !26)
!26 = !{!27, !33, !37, !38, !39, !44, !107, !112, !117, !118, !123, !175, !206, !218, !224, !225, !226, !228, !230, !261, !262, !263, !272, !273, !278, !279, !281, !283, !293, !296, !314, !315, !316, !318, !320, !321, !323, !328, !333, !338, !339, !340, !341, !342, !343, !344, !345, !347}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !25, file: !13, line: 335, baseType: !28, size: 192, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !13, line: 114, baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 111, size: 192, align: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !29, file: !13, line: 112, baseType: !12, size: 128, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !29, file: !13, line: 113, baseType: !17, size: 64, align: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !25, file: !13, line: 336, baseType: !34, size: 64, align: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !25, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !25, file: !13, line: 337, baseType: !17, size: 64, align: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !25, file: !13, line: 341, baseType: !40, size: 64, align: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !13, line: 308, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !11}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !25, file: !13, line: 342, baseType: !45, size: 64, align: 64, offset: 448)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !13, line: 314, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!5, !11, !49, !5}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !20, line: 48, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 246, size: 1728, align: 64, elements: !53)
!52 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!53 = !{!54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !75, !76, !77, !78, !80, !82, !84, !88, !91, !93, !95, !96, !97, !98, !102, !103}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !52, line: 247, baseType: !5, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !51, file: !52, line: 252, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !51, file: !52, line: 253, baseType: !56, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !51, file: !52, line: 254, baseType: !56, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !51, file: !52, line: 255, baseType: !56, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !51, file: !52, line: 256, baseType: !56, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !51, file: !52, line: 257, baseType: !56, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !51, file: !52, line: 258, baseType: !56, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !51, file: !52, line: 259, baseType: !56, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !51, file: !52, line: 261, baseType: !56, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !51, file: !52, line: 262, baseType: !56, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !51, file: !52, line: 263, baseType: !56, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !51, file: !52, line: 265, baseType: !68, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !52, line: 161, size: 192, align: 64, elements: !70)
!70 = !{!71, !72, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !69, file: !52, line: 162, baseType: !68, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !69, file: !52, line: 163, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !69, file: !52, line: 167, baseType: !5, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !51, file: !52, line: 267, baseType: !73, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !51, file: !52, line: 269, baseType: !5, size: 32, align: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !52, line: 273, baseType: !5, size: 32, align: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !51, file: !52, line: 275, baseType: !79, size: 64, align: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !22, line: 140, baseType: !4)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !51, file: !52, line: 279, baseType: !81, size: 16, align: 16, offset: 1024)
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !51, file: !52, line: 280, baseType: !83, size: 8, align: 8, offset: 1040)
!83 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !51, file: !52, line: 281, baseType: !85, size: 8, align: 8, offset: 1048)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, align: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !52, line: 285, baseType: !89, size: 64, align: 64, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !52, line: 155, baseType: null)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !52, line: 294, baseType: !92, size: 64, align: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !22, line: 141, baseType: !4)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !51, file: !52, line: 303, baseType: !94, size: 64, align: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !51, file: !52, line: 304, baseType: !94, size: 64, align: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !51, file: !52, line: 305, baseType: !94, size: 64, align: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !51, file: !52, line: 306, baseType: !94, size: 64, align: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !51, file: !52, line: 307, baseType: !99, size: 64, align: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!101 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !51, file: !52, line: 309, baseType: !5, size: 32, align: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !51, file: !52, line: 311, baseType: !104, size: 160, align: 8, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 160, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !25, file: !13, line: 343, baseType: !108, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !13, line: 316, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!11, !11, !56}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !25, file: !13, line: 344, baseType: !113, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !13, line: 318, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!5, !11, !56, !11}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !25, file: !13, line: 345, baseType: !94, size: 64, align: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !25, file: !13, line: 346, baseType: !119, size: 64, align: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !13, line: 320, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!11, !11}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !25, file: !13, line: 350, baseType: !124, size: 64, align: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !13, line: 278, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 236, size: 2176, align: 64, elements: !127)
!127 = !{!128, !133, !134, !135, !136, !137, !142, !144, !145, !146, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !126, file: !13, line: 241, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !13, line: 166, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!11, !11, !11}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !126, file: !13, line: 242, baseType: !129, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !126, file: !13, line: 243, baseType: !129, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !126, file: !13, line: 244, baseType: !129, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !126, file: !13, line: 245, baseType: !129, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !126, file: !13, line: 246, baseType: !138, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !13, line: 167, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!11, !11, !11, !11}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !126, file: !13, line: 247, baseType: !143, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !13, line: 165, baseType: !120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !126, file: !13, line: 248, baseType: !143, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !126, file: !13, line: 249, baseType: !143, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !126, file: !13, line: 250, baseType: !147, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !13, line: 168, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!5, !11}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !126, file: !13, line: 251, baseType: !143, size: 64, align: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !126, file: !13, line: 252, baseType: !129, size: 64, align: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !126, file: !13, line: 253, baseType: !129, size: 64, align: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !126, file: !13, line: 254, baseType: !129, size: 64, align: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !126, file: !13, line: 255, baseType: !129, size: 64, align: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !126, file: !13, line: 256, baseType: !129, size: 64, align: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !126, file: !13, line: 257, baseType: !143, size: 64, align: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !126, file: !13, line: 258, baseType: !94, size: 64, align: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !126, file: !13, line: 259, baseType: !143, size: 64, align: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !126, file: !13, line: 261, baseType: !129, size: 64, align: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !126, file: !13, line: 262, baseType: !129, size: 64, align: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !126, file: !13, line: 263, baseType: !129, size: 64, align: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !126, file: !13, line: 264, baseType: !129, size: 64, align: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !126, file: !13, line: 265, baseType: !138, size: 64, align: 64, offset: 1472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !126, file: !13, line: 266, baseType: !129, size: 64, align: 64, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !126, file: !13, line: 267, baseType: !129, size: 64, align: 64, offset: 1600)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !126, file: !13, line: 268, baseType: !129, size: 64, align: 64, offset: 1664)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !126, file: !13, line: 269, baseType: !129, size: 64, align: 64, offset: 1728)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !126, file: !13, line: 270, baseType: !129, size: 64, align: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !126, file: !13, line: 272, baseType: !129, size: 64, align: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !126, file: !13, line: 273, baseType: !129, size: 64, align: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !126, file: !13, line: 274, baseType: !129, size: 64, align: 64, offset: 1984)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !126, file: !13, line: 275, baseType: !129, size: 64, align: 64, offset: 2048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !126, file: !13, line: 277, baseType: !143, size: 64, align: 64, offset: 2112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !25, file: !13, line: 351, baseType: !176, size: 64, align: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !13, line: 292, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 280, size: 640, align: 64, elements: !179)
!179 = !{!180, !185, !186, !191, !192, !193, !198, !199, !204, !205}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !178, file: !13, line: 281, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !13, line: 169, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!17, !11}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !178, file: !13, line: 282, baseType: !129, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !178, file: !13, line: 283, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !13, line: 170, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!11, !11, !17}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !178, file: !13, line: 284, baseType: !187, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !178, file: !13, line: 285, baseType: !94, size: 64, align: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !178, file: !13, line: 286, baseType: !194, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !13, line: 172, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!5, !11, !17, !11}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !178, file: !13, line: 287, baseType: !94, size: 64, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !178, file: !13, line: 288, baseType: !200, size: 64, align: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !13, line: 231, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!5, !11, !11}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !178, file: !13, line: 290, baseType: !129, size: 64, align: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !178, file: !13, line: 291, baseType: !187, size: 64, align: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !25, file: !13, line: 352, baseType: !207, size: 64, align: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !13, line: 298, baseType: !209)
!209 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 294, size: 192, align: 64, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !209, file: !13, line: 295, baseType: !181, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !209, file: !13, line: 296, baseType: !129, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !209, file: !13, line: 297, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !13, line: 174, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!5, !11, !11, !11}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !25, file: !13, line: 356, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !13, line: 321, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !11}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !18, line: 186, baseType: !17)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !25, file: !13, line: 357, baseType: !138, size: 64, align: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !25, file: !13, line: 358, baseType: !119, size: 64, align: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !25, file: !13, line: 359, baseType: !227, size: 64, align: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !13, line: 317, baseType: !130)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !25, file: !13, line: 360, baseType: !229, size: 64, align: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !13, line: 319, baseType: !215)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !25, file: !13, line: 363, baseType: !231, size: 64, align: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !13, line: 304, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 301, size: 128, align: 64, elements: !234)
!234 = !{!235, !256}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !233, file: !13, line: 302, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !13, line: 193, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!5, !11, !240, !5}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !13, line: 191, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !13, line: 178, size: 640, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !253, !254, !255}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !13, line: 179, baseType: !94, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !242, file: !13, line: 180, baseType: !11, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !242, file: !13, line: 181, baseType: !17, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !242, file: !13, line: 182, baseType: !17, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !242, file: !13, line: 184, baseType: !5, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !242, file: !13, line: 185, baseType: !5, size: 32, align: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !242, file: !13, line: 186, baseType: !56, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !242, file: !13, line: 187, baseType: !252, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !242, file: !13, line: 188, baseType: !252, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !242, file: !13, line: 189, baseType: !252, size: 64, align: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !242, file: !13, line: 190, baseType: !94, size: 64, align: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !233, file: !13, line: 303, baseType: !257, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !13, line: 194, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !11, !240}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !25, file: !13, line: 366, baseType: !101, size: 64, align: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !25, file: !13, line: 368, baseType: !34, size: 64, align: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !25, file: !13, line: 372, baseType: !264, size: 64, align: 64, offset: 1472)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !13, line: 233, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!5, !11, !268, !94}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !13, line: 232, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!5, !11, !94}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !25, file: !13, line: 375, baseType: !147, size: 64, align: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !25, file: !13, line: 379, baseType: !274, size: 64, align: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !13, line: 322, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!11, !11, !11, !5}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !25, file: !13, line: 382, baseType: !17, size: 64, align: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !25, file: !13, line: 385, baseType: !280, size: 64, align: 64, offset: 1728)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !13, line: 323, baseType: !120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !25, file: !13, line: 386, baseType: !282, size: 64, align: 64, offset: 1792)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !13, line: 324, baseType: !120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !25, file: !13, line: 389, baseType: !284, size: 64, align: 64, offset: 1856)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !286, line: 40, size: 256, align: 64, elements: !287)
!286 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!287 = !{!288, !289, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !285, file: !286, line: 41, baseType: !34, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !285, file: !286, line: 42, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !286, line: 18, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !285, file: !286, line: 43, baseType: !5, size: 32, align: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !285, file: !286, line: 45, baseType: !34, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !25, file: !13, line: 390, baseType: !294, size: 64, align: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !13, line: 390, flags: DIFlagFwdDecl)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !25, file: !13, line: 391, baseType: !297, size: 64, align: 64, offset: 1984)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !299, line: 11, size: 320, align: 64, elements: !300)
!299 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!300 = !{!301, !302, !307, !312, !313}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !299, line: 12, baseType: !56, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !298, file: !299, line: 13, baseType: !303, size: 64, align: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !299, line: 8, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!11, !11, !94}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !298, file: !299, line: 14, baseType: !308, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !299, line: 9, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!5, !11, !11, !94}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !298, file: !299, line: 15, baseType: !56, size: 64, align: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !298, file: !299, line: 16, baseType: !94, size: 64, align: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !25, file: !13, line: 392, baseType: !24, size: 64, align: 64, offset: 2048)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !25, file: !13, line: 393, baseType: !11, size: 64, align: 64, offset: 2112)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !25, file: !13, line: 394, baseType: !317, size: 64, align: 64, offset: 2176)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !13, line: 325, baseType: !139)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !25, file: !13, line: 395, baseType: !319, size: 64, align: 64, offset: 2240)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !13, line: 326, baseType: !215)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !25, file: !13, line: 396, baseType: !17, size: 64, align: 64, offset: 2304)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !25, file: !13, line: 397, baseType: !322, size: 64, align: 64, offset: 2368)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !13, line: 327, baseType: !215)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !25, file: !13, line: 398, baseType: !324, size: 64, align: 64, offset: 2432)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !13, line: 329, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!11, !24, !17}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !25, file: !13, line: 399, baseType: !329, size: 64, align: 64, offset: 2496)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !13, line: 328, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!11, !24, !11, !11}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !25, file: !13, line: 400, baseType: !334, size: 64, align: 64, offset: 2560)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !13, line: 307, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !94}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !25, file: !13, line: 401, baseType: !147, size: 64, align: 64, offset: 2624)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !25, file: !13, line: 402, baseType: !11, size: 64, align: 64, offset: 2688)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !25, file: !13, line: 403, baseType: !11, size: 64, align: 64, offset: 2752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !25, file: !13, line: 404, baseType: !11, size: 64, align: 64, offset: 2816)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !25, file: !13, line: 405, baseType: !11, size: 64, align: 64, offset: 2880)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !25, file: !13, line: 406, baseType: !11, size: 64, align: 64, offset: 2944)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !25, file: !13, line: 407, baseType: !40, size: 64, align: 64, offset: 3008)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !25, file: !13, line: 410, baseType: !346, size: 32, align: 32, offset: 3072)
!346 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !25, file: !13, line: 412, baseType: !40, size: 64, align: 64, offset: 3136)
!348 = !DISubprogram(name: "_opcode_stack_effect", scope: !8, file: !8, line: 33, type: !349, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_opcode_stack_effect, variables: !375)
!349 = !DISubroutineType(types: !350)
!350 = !{!11, !351, !11}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef", file: !353, line: 57, baseType: !354)
!353 = !DIFile(filename: "./Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !353, line: 47, size: 832, align: 64, elements: !355)
!355 = !{!356, !365, !366, !367, !368, !371, !372, !373, !374}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !354, file: !353, line: 48, baseType: !357, size: 320, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !353, line: 38, baseType: !358)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !353, line: 33, size: 320, align: 64, elements: !359)
!359 = !{!360, !361, !363, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !358, file: !353, line: 34, baseType: !12, size: 128, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !358, file: !353, line: 35, baseType: !362, size: 64, align: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !358, file: !353, line: 36, baseType: !17, size: 64, align: 64, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !358, file: !353, line: 37, baseType: !11, size: 64, align: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !354, file: !353, line: 49, baseType: !34, size: 64, align: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !354, file: !353, line: 50, baseType: !34, size: 64, align: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !354, file: !353, line: 51, baseType: !17, size: 64, align: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !354, file: !353, line: 52, baseType: !369, size: 64, align: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !286, line: 47, baseType: !285)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !354, file: !353, line: 53, baseType: !147, size: 64, align: 64, offset: 576)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !354, file: !353, line: 54, baseType: !264, size: 64, align: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !354, file: !353, line: 55, baseType: !147, size: 64, align: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !354, file: !353, line: 56, baseType: !334, size: 64, align: 64, offset: 768)
!375 = !{!376, !377, !378, !379, !380, !381}
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !348, file: !8, line: 33, type: !351)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !348, file: !8, line: 33, type: !11)
!378 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !348, file: !8, line: 35, type: !11)
!379 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "opcode", scope: !348, file: !8, line: 36, type: !5)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oparg", scope: !348, file: !8, line: 37, type: !11)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_return_value", scope: !348, file: !8, line: 38, type: !5)
!382 = !DISubprogram(name: "_opcode_stack_effect_impl", scope: !8, file: !8, line: 54, type: !383, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.PyModuleDef*, i32, %struct._object*)* @_opcode_stack_effect_impl, variables: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!5, !351, !5, !11}
!385 = !{!386, !387, !388, !389, !390}
!386 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !382, file: !8, line: 54, type: !351)
!387 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "opcode", arg: 2, scope: !382, file: !8, line: 54, type: !5)
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oparg", arg: 3, scope: !382, file: !8, line: 54, type: !11)
!389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "effect", scope: !382, file: !8, line: 57, type: !5)
!390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oparg_int", scope: !382, file: !8, line: 58, type: !5)
!391 = !{!392, !393, !397}
!392 = !DIGlobalVariable(name: "opcodemodule", scope: !0, file: !8, line: 93, type: !354, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @opcodemodule)
!393 = !DIGlobalVariable(name: "opcode_functions", scope: !0, file: !8, line: 87, type: !394, isLocal: true, isDefinition: true, variable: [2 x %struct.PyMethodDef]* @opcode_functions)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 512, align: 64, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 2)
!397 = !DIGlobalVariable(name: "_opcode_stack_effect__doc__", scope: !0, file: !8, line: 20, type: !398, isLocal: true, isDefinition: true, variable: [89 x i8]* @_opcode_stack_effect__doc__)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 712, align: 8, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 89)
!401 = !{i32 2, !"Dwarf Version", i32 4}
!402 = !{i32 2, !"Debug Info Version", i32 3}
!403 = !{i32 1, !"PIC Level", i32 2}
!404 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!405 = !DILocation(line: 108, column: 12, scope: !7)
!406 = !DILocation(line: 108, column: 5, scope: !7)
!407 = !{!408, !408, i64 0}
!408 = !{!"any pointer", !409, i64 0}
!409 = !{!"omnipotent char", !410, i64 0}
!410 = !{!"Simple C/C++ TBAA"}
!411 = !DIExpression()
!412 = !DILocation(line: 33, column: 35, scope: !348)
!413 = !DILocation(line: 33, column: 53, scope: !348)
!414 = !DILocation(line: 35, column: 5, scope: !348)
!415 = !DILocation(line: 35, column: 15, scope: !348)
!416 = !DILocation(line: 36, column: 5, scope: !348)
!417 = !DILocation(line: 36, column: 9, scope: !348)
!418 = !DILocation(line: 37, column: 5, scope: !348)
!419 = !DILocation(line: 37, column: 15, scope: !348)
!420 = !DILocation(line: 38, column: 5, scope: !348)
!421 = !DILocation(line: 38, column: 9, scope: !348)
!422 = !DILocation(line: 40, column: 27, scope: !423)
!423 = distinct !DILexicalBlock(scope: !348, file: !8, line: 40, column: 9)
!424 = !DILocation(line: 40, column: 10, scope: !423)
!425 = !DILocation(line: 40, column: 9, scope: !348)
!426 = !DILocation(line: 43, column: 9, scope: !423)
!427 = !DILocation(line: 44, column: 47, scope: !348)
!428 = !DILocation(line: 44, column: 55, scope: !348)
!429 = !{!430, !430, i64 0}
!430 = !{!"int", !409, i64 0}
!431 = !DILocation(line: 44, column: 63, scope: !348)
!432 = !DILocation(line: 44, column: 21, scope: !348)
!433 = !DILocation(line: 44, column: 19, scope: !348)
!434 = !DILocation(line: 45, column: 10, scope: !435)
!435 = distinct !DILexicalBlock(scope: !348, file: !8, line: 45, column: 9)
!436 = !DILocation(line: 45, column: 24, scope: !435)
!437 = !DILocation(line: 45, column: 31, scope: !435)
!438 = !DILocation(line: 45, column: 34, scope: !439)
!439 = !DILexicalBlockFile(scope: !435, file: !8, discriminator: 1)
!440 = !DILocation(line: 45, column: 9, scope: !348)
!441 = !DILocation(line: 46, column: 9, scope: !435)
!442 = !DILocation(line: 47, column: 42, scope: !348)
!443 = !DILocation(line: 47, column: 36, scope: !348)
!444 = !DILocation(line: 47, column: 20, scope: !348)
!445 = !DILocation(line: 47, column: 18, scope: !348)
!446 = !DILocation(line: 47, column: 5, scope: !348)
!447 = !DILocation(line: 50, column: 12, scope: !348)
!448 = !DILocation(line: 51, column: 1, scope: !348)
!449 = !DILocation(line: 50, column: 5, scope: !348)
!450 = !DILocation(line: 54, column: 40, scope: !382)
!451 = !DILocation(line: 54, column: 52, scope: !382)
!452 = !DILocation(line: 54, column: 70, scope: !382)
!453 = !DILocation(line: 57, column: 5, scope: !382)
!454 = !DILocation(line: 57, column: 9, scope: !382)
!455 = !DILocation(line: 58, column: 5, scope: !382)
!456 = !DILocation(line: 58, column: 9, scope: !382)
!457 = !DILocation(line: 59, column: 11, scope: !458)
!458 = distinct !DILexicalBlock(scope: !382, file: !8, line: 59, column: 9)
!459 = !DILocation(line: 59, column: 19, scope: !458)
!460 = !DILocation(line: 59, column: 9, scope: !382)
!461 = !DILocation(line: 60, column: 13, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !8, line: 60, column: 13)
!463 = distinct !DILexicalBlock(scope: !458, file: !8, line: 59, column: 27)
!464 = !DILocation(line: 60, column: 19, scope: !462)
!465 = !DILocation(line: 60, column: 13, scope: !463)
!466 = !DILocation(line: 61, column: 29, scope: !467)
!467 = distinct !DILexicalBlock(scope: !462, file: !8, line: 60, column: 41)
!468 = !DILocation(line: 61, column: 13, scope: !467)
!469 = !DILocation(line: 63, column: 13, scope: !467)
!470 = !DILocation(line: 65, column: 40, scope: !463)
!471 = !DILocation(line: 65, column: 26, scope: !463)
!472 = !DILocation(line: 65, column: 21, scope: !463)
!473 = !DILocation(line: 65, column: 19, scope: !463)
!474 = !DILocation(line: 66, column: 14, scope: !475)
!475 = distinct !DILexicalBlock(scope: !463, file: !8, line: 66, column: 13)
!476 = !DILocation(line: 66, column: 24, scope: !475)
!477 = !DILocation(line: 66, column: 31, scope: !475)
!478 = !DILocation(line: 66, column: 34, scope: !479)
!479 = !DILexicalBlockFile(scope: !475, file: !8, discriminator: 1)
!480 = !DILocation(line: 66, column: 13, scope: !463)
!481 = !DILocation(line: 67, column: 13, scope: !475)
!482 = !DILocation(line: 68, column: 5, scope: !463)
!483 = !DILocation(line: 69, column: 14, scope: !484)
!484 = distinct !DILexicalBlock(scope: !458, file: !8, line: 69, column: 14)
!485 = !DILocation(line: 69, column: 20, scope: !484)
!486 = !DILocation(line: 69, column: 14, scope: !458)
!487 = !DILocation(line: 70, column: 25, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !8, line: 69, column: 42)
!489 = !DILocation(line: 70, column: 9, scope: !488)
!490 = !DILocation(line: 72, column: 9, scope: !488)
!491 = !DILocation(line: 74, column: 42, scope: !382)
!492 = !DILocation(line: 74, column: 50, scope: !382)
!493 = !DILocation(line: 74, column: 14, scope: !382)
!494 = !DILocation(line: 74, column: 12, scope: !382)
!495 = !DILocation(line: 75, column: 9, scope: !496)
!496 = distinct !DILexicalBlock(scope: !382, file: !8, line: 75, column: 9)
!497 = !DILocation(line: 75, column: 16, scope: !496)
!498 = !DILocation(line: 75, column: 9, scope: !382)
!499 = !DILocation(line: 76, column: 29, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !8, line: 75, column: 31)
!501 = !DILocation(line: 76, column: 13, scope: !500)
!502 = !DILocation(line: 78, column: 13, scope: !500)
!503 = !DILocation(line: 80, column: 12, scope: !382)
!504 = !DILocation(line: 80, column: 5, scope: !382)
!505 = !DILocation(line: 81, column: 1, scope: !382)
