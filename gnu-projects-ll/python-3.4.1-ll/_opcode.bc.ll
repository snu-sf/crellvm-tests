; ModuleID = './_opcode.bc'
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
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @opcodemodule, i32 1013)
  ret %struct._object* %call
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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %return_value, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %oparg, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32* %opcode, %struct._object** %oparg)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %exit

if.end:                                           ; preds = %entry
  %1 = load %struct.PyModuleDef*, %struct.PyModuleDef** %module.addr, align 8
  %2 = load i32, i32* %opcode, align 4
  %3 = load %struct._object*, %struct._object** %oparg, align 8
  %call1 = call i32 @_opcode_stack_effect_impl(%struct.PyModuleDef* %1, i32 %2, %struct._object* %3)
  store i32 %call1, i32* %_return_value, align 4
  %4 = load i32, i32* %_return_value, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.5

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred()
  %tobool3 = icmp ne %struct._object* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %land.lhs.true
  br label %exit

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* %_return_value, align 4
  %conv = sext i32 %5 to i64
  %call6 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call6, %struct._object** %return_value, align 8
  br label %exit

exit:                                             ; preds = %if.end.5, %if.then.4, %if.then
  %6 = load %struct._object*, %struct._object** %return_value, align 8
  ret %struct._object* %6
}

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
  store %struct.PyModuleDef* %module, %struct.PyModuleDef** %module.addr, align 8
  store i32 %opcode, i32* %opcode.addr, align 4
  store %struct._object* %oparg, %struct._object** %oparg.addr, align 8
  store i32 0, i32* %oparg_int, align 4
  %0 = load i32, i32* %opcode.addr, align 4
  %cmp = icmp sge i32 %0, 90
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %oparg.addr, align 8
  %cmp1 = icmp eq %struct._object* %1, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %oparg.addr, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %3)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %oparg_int, align 4
  %4 = load i32, i32* %oparg_int, align 4
  %cmp3 = icmp eq i32 %4, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call5, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  br label %if.end.12

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %oparg.addr, align 8
  %cmp8 = icmp ne %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp8, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.else
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end.7
  %7 = load i32, i32* %opcode.addr, align 4
  %8 = load i32, i32* %oparg_int, align 4
  %call13 = call i32 @PyCompile_OpcodeStackEffect(i32 %7, i32 %8)
  store i32 %call13, i32* %effect, align 4
  %9 = load i32, i32* %effect, align 4
  %cmp14 = icmp eq i32 %9, 2147483647
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.12
  %11 = load i32, i32* %effect, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.16, %if.then.10, %if.then.6, %if.then.2
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

declare i32 @PyCompile_OpcodeStackEffect(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
