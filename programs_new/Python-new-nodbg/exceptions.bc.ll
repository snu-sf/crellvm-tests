; ModuleID = './exceptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyBaseExceptionObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8 }
%union._gc_head = type { %struct.anon.0 }
%struct.anon.0 = type { %union._gc_head*, %union._gc_head*, i64 }
%struct.PyUnicodeErrorObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object*, %struct._object*, i64, i64, %struct._object* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyStopIterationObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object* }
%struct.PySystemExitObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object* }
%struct.PyImportErrorObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object*, %struct._object*, %struct._object* }
%struct.PyOSErrorObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i64 }
%struct.PySyntaxErrorObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@PyExc_EnvironmentError = global %struct._object* null, align 8
@PyExc_IOError = global %struct._object* null, align 8
@_PyExc_BaseException = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyBaseExceptionObject*)* @BaseException_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyBaseExceptionObject*)* @BaseException_str to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 1074021376, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.82, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @BaseException_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @BaseException_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([6 x %struct.PyGetSetDef], [6 x %struct.PyGetSetDef]* @BaseException_getset, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_BaseException = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BaseException, i32 0, i32 0, i32 0), align 8
@_PyExc_Exception = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.102, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_BaseException, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_Exception = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_Exception, i32 0, i32 0, i32 0), align 8
@_PyExc_TypeError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.103, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_TypeError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_TypeError, i32 0, i32 0, i32 0), align 8
@_PyExc_StopIteration = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i64 72, i64 0, void (%struct._object*)* bitcast (void (%struct.PyStopIterationObject*)* @StopIteration_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.104, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyStopIterationObject*, i32 (%struct._object*, i8*)*, i8*)* @StopIteration_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyStopIterationObject*)* @StopIteration_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @StopIteration_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyStopIterationObject*, %struct._object*, %struct._object*)* @StopIteration_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_StopIteration = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_StopIteration, i32 0, i32 0, i32 0), align 8
@_PyExc_GeneratorExit = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.107, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_BaseException, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_GeneratorExit = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_GeneratorExit, i32 0, i32 0, i32 0), align 8
@_PyExc_SystemExit = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i64 72, i64 0, void (%struct._object*)* bitcast (void (%struct.PySystemExitObject*)* @SystemExit_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.108, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PySystemExitObject*, i32 (%struct._object*, i8*)*, i8*)* @SystemExit_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PySystemExitObject*)* @SystemExit_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([2 x %struct.PyMemberDef], [2 x %struct.PyMemberDef]* @SystemExit_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_BaseException, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PySystemExitObject*, %struct._object*, %struct._object*)* @SystemExit_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_SystemExit = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SystemExit, i32 0, i32 0, i32 0), align 8
@_PyExc_KeyboardInterrupt = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.111, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_BaseException, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_KeyboardInterrupt = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_KeyboardInterrupt, i32 0, i32 0, i32 0), align 8
@_PyExc_ImportError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i64 88, i64 0, void (%struct._object*)* bitcast (void (%struct.PyImportErrorObject*)* @ImportError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyImportErrorObject*)* @ImportError_str to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.112, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyImportErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @ImportError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyImportErrorObject*)* @ImportError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([1 x %struct.PyMethodDef], [1 x %struct.PyMethodDef]* @ImportError_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @ImportError_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyImportErrorObject*, %struct._object*, %struct._object*)* @ImportError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ImportError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ImportError, i32 0, i32 0, i32 0), align 8
@_PyExc_OSError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyOSErrorObject*)* @OSError_str to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.119, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @OSError_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([5 x %struct.PyMemberDef], [5 x %struct.PyMemberDef]* @OSError_members, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @OSError_getset, i32 0, i32 0), %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @OSError_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_OSError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_OSError, i32 0, i32 0, i32 0), align 8
@_PyExc_BlockingIOError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.132, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_BlockingIOError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BlockingIOError, i32 0, i32 0, i32 0), align 8
@_PyExc_ConnectionError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.133, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ConnectionError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionError, i32 0, i32 0, i32 0), align 8
@_PyExc_ChildProcessError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.134, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ChildProcessError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ChildProcessError, i32 0, i32 0, i32 0), align 8
@_PyExc_BrokenPipeError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ConnectionError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_BrokenPipeError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BrokenPipeError, i32 0, i32 0, i32 0), align 8
@_PyExc_ConnectionAbortedError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.136, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ConnectionError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ConnectionAbortedError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionAbortedError, i32 0, i32 0, i32 0), align 8
@_PyExc_ConnectionRefusedError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.137, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ConnectionError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ConnectionRefusedError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionRefusedError, i32 0, i32 0, i32 0), align 8
@_PyExc_ConnectionResetError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.138, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ConnectionError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ConnectionResetError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionResetError, i32 0, i32 0, i32 0), align 8
@_PyExc_FileExistsError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.139, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_FileExistsError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FileExistsError, i32 0, i32 0, i32 0), align 8
@_PyExc_FileNotFoundError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_FileNotFoundError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FileNotFoundError, i32 0, i32 0, i32 0), align 8
@_PyExc_IsADirectoryError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.141, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_IsADirectoryError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_IsADirectoryError, i32 0, i32 0, i32 0), align 8
@_PyExc_NotADirectoryError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.142, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_NotADirectoryError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_NotADirectoryError, i32 0, i32 0, i32 0), align 8
@_PyExc_InterruptedError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.143, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_InterruptedError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_InterruptedError, i32 0, i32 0, i32 0), align 8
@_PyExc_PermissionError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.144, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_PermissionError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_PermissionError, i32 0, i32 0, i32 0), align 8
@_PyExc_ProcessLookupError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ProcessLookupError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ProcessLookupError, i32 0, i32 0, i32 0), align 8
@_PyExc_TimeoutError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyOSErrorObject*)* @OSError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.146, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @OSError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*)* @OSError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_OSError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_TimeoutError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_TimeoutError, i32 0, i32 0, i32 0), align 8
@_PyExc_EOFError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.147, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_EOFError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_EOFError, i32 0, i32 0, i32 0), align 8
@_PyExc_RuntimeError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.148, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_RuntimeError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_RuntimeError, i32 0, i32 0, i32 0), align 8
@_PyExc_NotImplementedError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.149, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_RuntimeError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_NotImplementedError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_NotImplementedError, i32 0, i32 0, i32 0), align 8
@_PyExc_NameError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.150, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_NameError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_NameError, i32 0, i32 0, i32 0), align 8
@_PyExc_UnboundLocalError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.151, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_NameError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_UnboundLocalError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnboundLocalError, i32 0, i32 0, i32 0), align 8
@_PyExc_AttributeError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.152, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_AttributeError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_AttributeError, i32 0, i32 0, i32 0), align 8
@_PyExc_SyntaxError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct.PySyntaxErrorObject*)* @SyntaxError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PySyntaxErrorObject*)* @SyntaxError_str to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PySyntaxErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @SyntaxError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PySyntaxErrorObject*)* @SyntaxError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([7 x %struct.PyMemberDef], [7 x %struct.PyMemberDef]* @SyntaxError_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PySyntaxErrorObject*, %struct._object*, %struct._object*)* @SyntaxError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_SyntaxError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SyntaxError, i32 0, i32 0, i32 0), align 8
@_PyExc_IndentationError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct.PySyntaxErrorObject*)* @SyntaxError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.167, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PySyntaxErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @SyntaxError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PySyntaxErrorObject*)* @SyntaxError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_SyntaxError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PySyntaxErrorObject*, %struct._object*, %struct._object*)* @SyntaxError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_IndentationError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_IndentationError, i32 0, i32 0, i32 0), align 8
@_PyExc_TabError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct.PySyntaxErrorObject*)* @SyntaxError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.168, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PySyntaxErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @SyntaxError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PySyntaxErrorObject*)* @SyntaxError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_IndentationError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PySyntaxErrorObject*, %struct._object*, %struct._object*)* @SyntaxError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_TabError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_TabError, i32 0, i32 0, i32 0), align 8
@_PyExc_LookupError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.169, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_LookupError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_LookupError, i32 0, i32 0, i32 0), align 8
@_PyExc_IndexError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.170, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_LookupError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_IndexError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_IndexError, i32 0, i32 0, i32 0), align 8
@_PyExc_KeyError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyBaseExceptionObject*)* @KeyError_str to %struct._object* (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.171, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_LookupError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_KeyError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_KeyError, i32 0, i32 0, i32 0), align 8
@_PyExc_ValueError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.172, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ValueError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ValueError, i32 0, i32 0, i32 0), align 8
@_PyExc_UnicodeError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.173, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ValueError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_UnicodeError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeError, i32 0, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"reason\00", align 1
@_PyExc_UnicodeEncodeError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyUnicodeErrorObject*)* @UnicodeError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @UnicodeEncodeError_str, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.177, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyUnicodeErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @UnicodeError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyUnicodeErrorObject*)* @UnicodeError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([6 x %struct.PyMemberDef], [6 x %struct.PyMemberDef]* @UnicodeError_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_UnicodeError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* @UnicodeEncodeError_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_UnicodeEncodeError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeEncodeError, i32 0, i32 0, i32 0), align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"su#nns\00", align 1
@_PyExc_UnicodeDecodeError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyUnicodeErrorObject*)* @UnicodeError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @UnicodeDecodeError_str, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.190, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyUnicodeErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @UnicodeError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyUnicodeErrorObject*)* @UnicodeError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([6 x %struct.PyMemberDef], [6 x %struct.PyMemberDef]* @UnicodeError_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_UnicodeError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* @UnicodeDecodeError_init, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_UnicodeDecodeError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeDecodeError, i32 0, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"sy#nns\00", align 1
@_PyExc_UnicodeTranslateError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), i64 104, i64 0, void (%struct._object*)* bitcast (void (%struct.PyUnicodeErrorObject*)* @UnicodeError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* @UnicodeTranslateError_str, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.194, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyUnicodeErrorObject*, i32 (%struct._object*, i8*)*, i8*)* @UnicodeError_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyUnicodeErrorObject*)* @UnicodeError_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([6 x %struct.PyMemberDef], [6 x %struct.PyMemberDef]* @UnicodeError_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_UnicodeError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyUnicodeErrorObject*, %struct._object*, %struct._object*)* @UnicodeTranslateError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_UnicodeTranslateError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeTranslateError, i32 0, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"u#nns\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Onns\00", align 1
@_PyExc_AssertionError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.200, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_AssertionError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_AssertionError, i32 0, i32 0, i32 0), align 8
@_PyExc_ArithmeticError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.201, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ArithmeticError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ArithmeticError, i32 0, i32 0, i32 0), align 8
@_PyExc_FloatingPointError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.202, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ArithmeticError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_FloatingPointError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FloatingPointError, i32 0, i32 0, i32 0), align 8
@_PyExc_OverflowError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.203, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ArithmeticError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_OverflowError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_OverflowError, i32 0, i32 0, i32 0), align 8
@_PyExc_ZeroDivisionError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.204, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_ArithmeticError, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ZeroDivisionError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ZeroDivisionError, i32 0, i32 0, i32 0), align 8
@_PyExc_SystemError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str.205, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_SystemError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SystemError, i32 0, i32 0, i32 0), align 8
@_PyExc_ReferenceError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.206, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ReferenceError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ReferenceError, i32 0, i32 0, i32 0), align 8
@_PyExc_MemoryError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @MemoryError_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.207, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @MemoryError_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_MemoryError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_MemoryError, i32 0, i32 0, i32 0), align 8
@_PyExc_BufferError = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.209, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_BufferError = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BufferError, i32 0, i32 0, i32 0), align 8
@_PyExc_Warning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.210, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Exception, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_Warning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_Warning, i32 0, i32 0, i32 0), align 8
@_PyExc_UserWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.211, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_UserWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UserWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_DeprecationWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.212, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_DeprecationWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_DeprecationWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_PendingDeprecationWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.213, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_PendingDeprecationWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_PendingDeprecationWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_SyntaxWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.214, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_SyntaxWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SyntaxWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_RuntimeWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.215, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_RuntimeWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_RuntimeWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_FutureWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.216, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_FutureWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FutureWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_ImportWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ImportWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ImportWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_UnicodeWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.218, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_UnicodeWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_BytesWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.219, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_BytesWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BytesWarning, i32 0, i32 0, i32 0), align 8
@_PyExc_ResourceWarning = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.PyBaseExceptionObject*)* @BaseException_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.220, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, i32 (%struct._object*, i8*)*, i8*)* @BaseException_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*)* @BaseException_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* @_PyExc_Warning, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 16, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @BaseException_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyExc_ResourceWarning = global %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ResourceWarning, i32 0, i32 0, i32 0), align 8
@PyExc_RecursionErrorInst = global %struct._object* null, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"exceptions bootstrapping error.\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"BaseException\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Module dictionary insertion problem.\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Exception\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"TypeError\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"StopIteration\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"GeneratorExit\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"SystemExit\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"KeyboardInterrupt\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ImportError\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"OSError\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"EnvironmentError\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"IOError\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"EOFError\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"RuntimeError\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"NotImplementedError\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"NameError\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"UnboundLocalError\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"AttributeError\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"SyntaxError\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"IndentationError\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"TabError\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"LookupError\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"IndexError\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"KeyError\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"ValueError\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"UnicodeError\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"UnicodeEncodeError\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"UnicodeDecodeError\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"UnicodeTranslateError\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"AssertionError\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"ArithmeticError\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"FloatingPointError\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"OverflowError\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"ZeroDivisionError\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"SystemError\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"ReferenceError\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"BufferError\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"MemoryError\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"UserWarning\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"DeprecationWarning\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"PendingDeprecationWarning\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"SyntaxWarning\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"RuntimeWarning\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"FutureWarning\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"ImportWarning\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"UnicodeWarning\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"BytesWarning\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"ResourceWarning\00", align 1
@errnomap = internal global %struct._object* null, align 8
@.str.57 = private unnamed_addr constant [54 x i8] c"Cannot allocate map from errnos to OSError subclasses\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"ConnectionError\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"BlockingIOError\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"errmap insertion problem.\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"BrokenPipeError\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ChildProcessError\00", align 1
@.str.63 = private unnamed_addr constant [23 x i8] c"ConnectionAbortedError\00", align 1
@.str.64 = private unnamed_addr constant [23 x i8] c"ConnectionRefusedError\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"ConnectionResetError\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"FileExistsError\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"FileNotFoundError\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"IsADirectoryError\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"NotADirectoryError\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"InterruptedError\00", align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"PermissionError\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"ProcessLookupError\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"TimeoutError\00", align 1
@.str.74 = private unnamed_addr constant [63 x i8] c"Cannot pre-allocate RuntimeError instance for recursion errors\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"maximum recursion depth exceeded\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"cannot allocate argument for RuntimeError pre-allocation\00", align 1
@.str.77 = private unnamed_addr constant [54 x i8] c"cannot allocate tuple for RuntimeError pre-allocation\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"init of pre-allocated RuntimeError failed\00", align 1
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.79 = private unnamed_addr constant [12 x i8] c"%U (%s: %S)\00", align 1
@.str.80 = private unnamed_addr constant [33 x i8] c"__traceback__ may not be deleted\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyTraceBack_Type = external global %struct._typeobject, align 8
@.str.81 = private unnamed_addr constant [42 x i8] c"__traceback__ must be a traceback or None\00", align 1
@.str.82 = private unnamed_addr constant [37 x i8] c"Common base class for all exceptions\00", align 1
@BaseException_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyBaseExceptionObject*)* @BaseException_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @BaseException_setstate, i32 8, i8* null }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.87, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @BaseException_with_traceback, i32 8, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @with_traceback_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@BaseException_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i32 0, i32 0), i32 14, i64 56, i32 0, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@BaseException_getset = internal global [6 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.90, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* @PyObject_GenericGetDict, i32 (%struct._object*, %struct._object*, i8*)* @PyObject_GenericSetDict, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyBaseExceptionObject*)* @BaseException_get_args to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*)* @BaseException_set_args to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyBaseExceptionObject*)* @BaseException_get_tb to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*)* @BaseException_set_tb to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._object*)* @BaseException_get_context to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @BaseException_set_context to i32 (%struct._object*, %struct._object*, i8*)*), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i32 0, i32 0), i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._object*)* @BaseException_get_cause to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct._object*, %struct._object*)* @BaseException_set_cause to i32 (%struct._object*, %struct._object*, i8*)*), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [5 x i8] c"%s%R\00", align 1
@.str.84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"with_traceback\00", align 1
@with_traceback_doc = internal global [82 x i8] c"Exception.with_traceback(tb) --\0A    set self.__traceback__ to tb and return self.\00", align 16
@.str.88 = private unnamed_addr constant [26 x i8] c"state is not a dictionary\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"__suppress_context__\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"__traceback__\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"__context__\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"exception context\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"__cause__\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"exception cause\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"args may not be deleted\00", align 1
@.str.98 = private unnamed_addr constant [31 x i8] c"__context__ may not be deleted\00", align 1
@.str.99 = private unnamed_addr constant [60 x i8] c"exception context must be None or derive from BaseException\00", align 1
@.str.100 = private unnamed_addr constant [29 x i8] c"__cause__ may not be deleted\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"exception cause must be None or derive from BaseException\00", align 1
@.str.102 = private unnamed_addr constant [47 x i8] c"Common base class for all non-exit exceptions.\00", align 1
@.str.103 = private unnamed_addr constant [29 x i8] c"Inappropriate argument type.\00", align 1
@.str.104 = private unnamed_addr constant [41 x i8] c"Signal the end from iterator.__next__().\00", align 1
@StopIteration_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 6, i64 64, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.106, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@.str.105 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"generator return value\00", align 1
@.str.107 = private unnamed_addr constant [31 x i8] c"Request that a generator exit.\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"Request to exit from the interpreter.\00", align 1
@SystemExit_members = internal global [2 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.109, i32 0, i32 0), i32 6, i64 64, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.110, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@.str.109 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"exception code\00", align 1
@.str.111 = private unnamed_addr constant [29 x i8] c"Program interrupted by user.\00", align 1
@.str.112 = private unnamed_addr constant [56 x i8] c"Import can't find module, or can't find name in module.\00", align 1
@ImportError_methods = internal global [1 x %struct.PyMethodDef] zeroinitializer, align 16
@ImportError_members = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i32 6, i64 64, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.114, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0), i32 6, i64 72, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0), i32 6, i64 80, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@.str.113 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"exception message\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"module name\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"module path\00", align 1
@.str.119 = private unnamed_addr constant [35 x i8] c"Base class for I/O related errors.\00", align 1
@OSError_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyOSErrorObject*)* @OSError_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@OSError_members = internal global [5 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.123, i32 0, i32 0), i32 6, i64 64, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.124, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.125, i32 0, i32 0), i32 6, i64 72, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.126, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 6, i64 80, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.128, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0), i32 6, i64 88, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.130, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@OSError_getset = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyOSErrorObject*, i8*)* @OSError_written_get to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, i8*)* @OSError_written_set to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@.str.120 = private unnamed_addr constant [24 x i8] c"[Errno %S] %S: %R -> %R\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"[Errno %S] %S: %R\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"[Errno %S] %S\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"POSIX exception code\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"strerror\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"exception strerror\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"exception filename\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"filename2\00", align 1
@.str.130 = private unnamed_addr constant [26 x i8] c"second exception filename\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"characters_written\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"I/O operation would block.\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"Connection error.\00", align 1
@.str.134 = private unnamed_addr constant [21 x i8] c"Child process error.\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"Broken pipe.\00", align 1
@.str.136 = private unnamed_addr constant [20 x i8] c"Connection aborted.\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"Connection refused.\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"Connection reset.\00", align 1
@.str.139 = private unnamed_addr constant [21 x i8] c"File already exists.\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"File not found.\00", align 1
@.str.141 = private unnamed_addr constant [39 x i8] c"Operation doesn't work on directories.\00", align 1
@.str.142 = private unnamed_addr constant [37 x i8] c"Operation only works on directories.\00", align 1
@.str.143 = private unnamed_addr constant [23 x i8] c"Interrupted by signal.\00", align 1
@.str.144 = private unnamed_addr constant [24 x i8] c"Not enough permissions.\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"Process not found.\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"Timeout expired.\00", align 1
@.str.147 = private unnamed_addr constant [25 x i8] c"Read beyond end of file.\00", align 1
@.str.148 = private unnamed_addr constant [28 x i8] c"Unspecified run-time error.\00", align 1
@.str.149 = private unnamed_addr constant [48 x i8] c"Method or function hasn't been implemented yet.\00", align 1
@.str.150 = private unnamed_addr constant [25 x i8] c"Name not found globally.\00", align 1
@.str.151 = private unnamed_addr constant [48 x i8] c"Local name referenced but not bound to a value.\00", align 1
@.str.152 = private unnamed_addr constant [21 x i8] c"Attribute not found.\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"Invalid syntax.\00", align 1
@SyntaxError_members = internal global [7 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.113, i32 0, i32 0), i32 6, i64 64, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.157, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 6, i64 72, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.128, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.158, i32 0, i32 0), i32 6, i64 80, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.159, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.160, i32 0, i32 0), i32 6, i64 88, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i32 0, i32 0), i32 6, i64 96, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.164, i32 0, i32 0), i32 6, i64 104, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.165, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@PyLong_Type = external global %struct._typeobject, align 8
@.str.154 = private unnamed_addr constant [18 x i8] c"%S (%U, line %ld)\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"%S (%U)\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"%S (line %ld)\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"exception msg\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"exception lineno\00", align 1
@.str.160 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"exception offset\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"exception text\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"print_file_and_line\00", align 1
@.str.165 = private unnamed_addr constant [30 x i8] c"exception print_file_and_line\00", align 1
@.str.166 = private unnamed_addr constant [25 x i8] c"tuple index out of range\00", align 1
@.str.167 = private unnamed_addr constant [22 x i8] c"Improper indentation.\00", align 1
@.str.168 = private unnamed_addr constant [37 x i8] c"Improper mixture of spaces and tabs.\00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"Base class for lookup errors.\00", align 1
@.str.170 = private unnamed_addr constant [29 x i8] c"Sequence index out of range.\00", align 1
@.str.171 = private unnamed_addr constant [23 x i8] c"Mapping key not found.\00", align 1
@.str.172 = private unnamed_addr constant [48 x i8] c"Inappropriate argument value (of correct type).\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"Unicode related error.\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"%.200s attribute not set\00", align 1
@.str.175 = private unnamed_addr constant [33 x i8] c"%.200s attribute must be unicode\00", align 1
@.str.176 = private unnamed_addr constant [31 x i8] c"%.200s attribute must be bytes\00", align 1
@.str.177 = private unnamed_addr constant [24 x i8] c"Unicode encoding error.\00", align 1
@UnicodeError_members = internal global [6 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 6, i64 64, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.182, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 6, i64 72, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.183, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.184, i32 0, i32 0), i32 19, i64 80, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.185, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.186, i32 0, i32 0), i32 19, i64 88, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.187, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i32 6, i64 96, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.188, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@.str.178 = private unnamed_addr constant [63 x i8] c"'%U' codec can't encode character '\5Cx%02x' in position %zd: %U\00", align 1
@.str.179 = private unnamed_addr constant [63 x i8] c"'%U' codec can't encode character '\5Cu%04x' in position %zd: %U\00", align 1
@.str.180 = private unnamed_addr constant [63 x i8] c"'%U' codec can't encode character '\5CU%08x' in position %zd: %U\00", align 1
@.str.181 = private unnamed_addr constant [59 x i8] c"'%U' codec can't encode characters in position %zd-%zd: %U\00", align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"exception encoding\00", align 1
@.str.183 = private unnamed_addr constant [17 x i8] c"exception object\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"exception start\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"exception end\00", align 1
@.str.188 = private unnamed_addr constant [17 x i8] c"exception reason\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"O!O!nnO!\00", align 1
@.str.190 = private unnamed_addr constant [24 x i8] c"Unicode decoding error.\00", align 1
@.str.191 = private unnamed_addr constant [56 x i8] c"'%U' codec can't decode byte 0x%02x in position %zd: %U\00", align 1
@.str.192 = private unnamed_addr constant [54 x i8] c"'%U' codec can't decode bytes in position %zd-%zd: %U\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"O!OnnO!\00", align 1
@.str.194 = private unnamed_addr constant [27 x i8] c"Unicode translation error.\00", align 1
@.str.195 = private unnamed_addr constant [55 x i8] c"can't translate character '\5Cx%02x' in position %zd: %U\00", align 1
@.str.196 = private unnamed_addr constant [55 x i8] c"can't translate character '\5Cu%04x' in position %zd: %U\00", align 1
@.str.197 = private unnamed_addr constant [55 x i8] c"can't translate character '\5CU%08x' in position %zd: %U\00", align 1
@.str.198 = private unnamed_addr constant [51 x i8] c"can't translate characters in position %zd-%zd: %U\00", align 1
@.str.199 = private unnamed_addr constant [7 x i8] c"O!nnO!\00", align 1
@.str.200 = private unnamed_addr constant [18 x i8] c"Assertion failed.\00", align 1
@.str.201 = private unnamed_addr constant [34 x i8] c"Base class for arithmetic errors.\00", align 1
@.str.202 = private unnamed_addr constant [33 x i8] c"Floating point operation failed.\00", align 1
@.str.203 = private unnamed_addr constant [36 x i8] c"Result too large to be represented.\00", align 1
@.str.204 = private unnamed_addr constant [60 x i8] c"Second argument to a division or modulo operation was zero.\00", align 1
@.str.205 = private unnamed_addr constant [176 x i8] c"Internal error in the Python interpreter.\0A\0APlease report this to the Python maintainer, along with the traceback,\0Athe Python version, and the hardware/OS platform and version.\00", align 1
@.str.206 = private unnamed_addr constant [46 x i8] c"Weak ref proxy used after referent went away.\00", align 1
@.str.207 = private unnamed_addr constant [15 x i8] c"Out of memory.\00", align 1
@memerrors_numfree = internal global i32 0, align 4
@memerrors_freelist = internal global %struct.PyBaseExceptionObject* null, align 8
@.str.208 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.209 = private unnamed_addr constant [14 x i8] c"Buffer error.\00", align 1
@.str.210 = private unnamed_addr constant [35 x i8] c"Base class for warning categories.\00", align 1
@.str.211 = private unnamed_addr constant [48 x i8] c"Base class for warnings generated by user code.\00", align 1
@.str.212 = private unnamed_addr constant [51 x i8] c"Base class for warnings about deprecated features.\00", align 1
@.str.213 = private unnamed_addr constant [79 x i8] c"Base class for warnings about features which will be deprecated\0Ain the future.\00", align 1
@.str.214 = private unnamed_addr constant [46 x i8] c"Base class for warnings about dubious syntax.\00", align 1
@.str.215 = private unnamed_addr constant [56 x i8] c"Base class for warnings about dubious runtime behavior.\00", align 1
@.str.216 = private unnamed_addr constant [86 x i8] c"Base class for warnings about constructs that will change semantically\0Ain the future.\00", align 1
@.str.217 = private unnamed_addr constant [66 x i8] c"Base class for warnings about probable mistakes in module imports\00", align 1
@.str.218 = private unnamed_addr constant [95 x i8] c"Base class for warnings about Unicode related problems, mostly\0Arelated to conversion problems.\00", align 1
@.str.219 = private unnamed_addr constant [124 x i8] c"Base class for warnings about bytes and buffer related problems, mostly\0Arelated to conversion from str or comparing to str.\00", align 1
@.str.220 = private unnamed_addr constant [46 x i8] c"Base class for warnings about resource usage.\00", align 1
@.str.221 = private unnamed_addr constant [41 x i8] c"Could not preallocate MemoryError object\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyException_GetTraceback(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %base_self = alloca %struct.PyBaseExceptionObject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  store %struct.PyBaseExceptionObject* %1, %struct.PyBaseExceptionObject** %base_self, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %base_self, align 8
  %traceback = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %traceback, align 8
  store %struct._object* %3, %struct._object** %_py_xincref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %base_self, align 8
  %traceback1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %traceback1, align 8
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define i32 @PyException_SetTraceback(%struct._object* %self, %struct._object* %tb) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %tb.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %tb, %struct._object** %tb.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  %2 = load %struct._object*, %struct._object** %tb.addr, align 8
  %call = call i32 @BaseException_set_tb(%struct.PyBaseExceptionObject* %1, %struct._object* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseException_set_tb(%struct.PyBaseExceptionObject* %self, %struct._object* %tb) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %tb.addr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  store %struct._object* %tb, %struct._object** %tb.addr, align 8
  %0 = load %struct._object*, %struct._object** %tb.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.80, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tb.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %tb.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %4, @PyTraceBack_Type
  br i1 %cmp2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.81, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false, %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %tb.addr, align 8
  store %struct._object* %6, %struct._object** %_py_xincref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %do.body.8

do.body.8:                                        ; preds = %do.end
  %10 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %traceback, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %12, null
  br i1 %cmp9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %do.body.8
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.11
  br label %if.end.17

if.else.15:                                       ; preds = %do.body.11
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %do.body.8
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  %20 = load %struct._object*, %struct._object** %tb.addr, align 8
  %21 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback21 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %21, i32 0, i32 3
  store %struct._object* %20, %struct._object** %traceback21, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.20, %if.then.3, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyException_GetCause(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %cause = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  %cause1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %1, i32 0, i32 5
  %2 = load %struct._object*, %struct._object** %cause1, align 8
  store %struct._object* %2, %struct._object** %cause, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %cause, align 8
  store %struct._object* %3, %struct._object** %_py_xincref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %cause, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define void @PyException_SetCause(%struct._object* %self, %struct._object* %cause) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %cause.addr = alloca %struct._object*, align 8
  %old_cause = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %cause, %struct._object** %cause.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  %cause1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %1, i32 0, i32 5
  %2 = load %struct._object*, %struct._object** %cause1, align 8
  store %struct._object* %2, %struct._object** %old_cause, align 8
  %3 = load %struct._object*, %struct._object** %cause.addr, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBaseExceptionObject*
  %cause2 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %5, i32 0, i32 5
  store %struct._object* %3, %struct._object** %cause2, align 8
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBaseExceptionObject*
  %suppress_context = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %7, i32 0, i32 6
  store i8 1, i8* %suppress_context, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct._object*, %struct._object** %old_cause, align 8
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %9, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyException_GetContext(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %context = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  %context1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %1, i32 0, i32 4
  %2 = load %struct._object*, %struct._object** %context1, align 8
  store %struct._object* %2, %struct._object** %context, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** %context, align 8
  store %struct._object* %3, %struct._object** %_py_xincref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %context, align 8
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define void @PyException_SetContext(%struct._object* %self, %struct._object* %context) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %context.addr = alloca %struct._object*, align 8
  %old_context = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %context, %struct._object** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  %context1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %1, i32 0, i32 4
  %2 = load %struct._object*, %struct._object** %context1, align 8
  store %struct._object* %2, %struct._object** %old_context, align 8
  %3 = load %struct._object*, %struct._object** %context.addr, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBaseExceptionObject*
  %context2 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %5, i32 0, i32 4
  store %struct._object* %3, %struct._object** %context2, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** %old_context, align 8
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %7, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeEncodeError_GetEncoding(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 7
  %2 = load %struct._object*, %struct._object** %encoding, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_unicode(%struct._object* %attr, i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %attr.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._object* %attr, %struct._object** %attr.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %attr.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.174, i32 0, i32 0), i8* %2)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %attr.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.175, i32 0, i32 0), i8* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %attr.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %attr.addr, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeDecodeError_GetEncoding(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 7
  %2 = load %struct._object*, %struct._object** %encoding, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeEncodeError_GetObject(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 8
  %2 = load %struct._object*, %struct._object** %object, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeDecodeError_GetObject(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 8
  %2 = load %struct._object*, %struct._object** %object, align 8
  %call = call %struct._object* @get_string(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_string(%struct._object* %attr, i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %attr.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._object* %attr, %struct._object** %attr.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %attr.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.174, i32 0, i32 0), i8* %2)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %attr.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 134217728
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.3, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %7 = load i8*, i8** %name.addr, align 8
  %call2 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.176, i32 0, i32 0), i8* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %attr.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %attr.addr, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.1, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeTranslateError_GetObject(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 8
  %2 = load %struct._object*, %struct._object** %object, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeEncodeError_GetStart(%struct._object* %exc, i64* %start) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64*, align 8
  %size = alloca i64, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 8
  %2 = load %struct._object*, %struct._object** %object, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %obj, align 8
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyUnicodeErrorObject*
  %start1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %5, i32 0, i32 9
  %6 = load i64, i64* %start1, align 8
  %7 = load i64*, i64** %start.addr, align 8
  store i64 %6, i64* %7, align 8
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 1
  %10 = load i64, i64* %length, align 8
  store i64 %10, i64* %size, align 8
  %11 = load i64*, i64** %start.addr, align 8
  %12 = load i64, i64* %11, align 8
  %cmp = icmp slt i64 %12, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %13 = load i64*, i64** %start.addr, align 8
  store i64 0, i64* %13, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %14 = load i64*, i64** %start.addr, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %size, align 8
  %cmp4 = icmp sge i64 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %17 = load i64, i64* %size, align 8
  %sub = sub i64 %17, 1
  %18 = load i64*, i64** %start.addr, align 8
  store i64 %sub, i64* %18, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %19 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeDecodeError_GetStart(%struct._object* %exc, i64* %start) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64*, align 8
  %size = alloca i64, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 8
  %2 = load %struct._object*, %struct._object** %object, align 8
  %call = call %struct._object* @get_string(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %obj, align 8
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %size, align 8
  %7 = load %struct._object*, %struct._object** %exc.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyUnicodeErrorObject*
  %start1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %8, i32 0, i32 9
  %9 = load i64, i64* %start1, align 8
  %10 = load i64*, i64** %start.addr, align 8
  store i64 %9, i64* %10, align 8
  %11 = load i64*, i64** %start.addr, align 8
  %12 = load i64, i64* %11, align 8
  %cmp = icmp slt i64 %12, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %13 = load i64*, i64** %start.addr, align 8
  store i64 0, i64* %13, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %14 = load i64*, i64** %start.addr, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %size, align 8
  %cmp4 = icmp sge i64 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %17 = load i64, i64* %size, align 8
  %sub = sub i64 %17, 1
  %18 = load i64*, i64** %start.addr, align 8
  store i64 %sub, i64* %18, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %19 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeTranslateError_GetStart(%struct._object* %exc, i64* %start) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load i64*, i64** %start.addr, align 8
  %call = call i32 @PyUnicodeEncodeError_GetStart(%struct._object* %0, i64* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeEncodeError_SetStart(%struct._object* %exc, i64 %start) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyUnicodeErrorObject*
  %start1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 9
  store i64 %0, i64* %start1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeDecodeError_SetStart(%struct._object* %exc, i64 %start) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyUnicodeErrorObject*
  %start1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 9
  store i64 %0, i64* %start1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeTranslateError_SetStart(%struct._object* %exc, i64 %start) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  %0 = load i64, i64* %start.addr, align 8
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyUnicodeErrorObject*
  %start1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 9
  store i64 %0, i64* %start1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %exc, i64* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._object*, align 8
  %end.addr = alloca i64*, align 8
  %size = alloca i64, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 8
  %2 = load %struct._object*, %struct._object** %object, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %obj, align 8
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %exc.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyUnicodeErrorObject*
  %end1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %5, i32 0, i32 10
  %6 = load i64, i64* %end1, align 8
  %7 = load i64*, i64** %end.addr, align 8
  store i64 %6, i64* %7, align 8
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 1
  %10 = load i64, i64* %length, align 8
  store i64 %10, i64* %size, align 8
  %11 = load i64*, i64** %end.addr, align 8
  %12 = load i64, i64* %11, align 8
  %cmp = icmp slt i64 %12, 1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %13 = load i64*, i64** %end.addr, align 8
  store i64 1, i64* %13, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %14 = load i64*, i64** %end.addr, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %size, align 8
  %cmp4 = icmp sgt i64 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %17 = load i64, i64* %size, align 8
  %18 = load i64*, i64** %end.addr, align 8
  store i64 %17, i64* %18, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %19 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeDecodeError_GetEnd(%struct._object* %exc, i64* %end) #0 {
entry:
  %retval = alloca i32, align 4
  %exc.addr = alloca %struct._object*, align 8
  %end.addr = alloca i64*, align 8
  %size = alloca i64, align 8
  %obj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64* %end, i64** %end.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 8
  %2 = load %struct._object*, %struct._object** %object, align 8
  %call = call %struct._object* @get_string(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %obj, align 8
  %3 = load %struct._object*, %struct._object** %obj, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %obj, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %size, align 8
  %7 = load %struct._object*, %struct._object** %exc.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyUnicodeErrorObject*
  %end1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %8, i32 0, i32 10
  %9 = load i64, i64* %end1, align 8
  %10 = load i64*, i64** %end.addr, align 8
  store i64 %9, i64* %10, align 8
  %11 = load i64*, i64** %end.addr, align 8
  %12 = load i64, i64* %11, align 8
  %cmp = icmp slt i64 %12, 1
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %13 = load i64*, i64** %end.addr, align 8
  store i64 1, i64* %13, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %14 = load i64*, i64** %end.addr, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %size, align 8
  %cmp4 = icmp sgt i64 %15, %16
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %17 = load i64, i64* %size, align 8
  %18 = load i64*, i64** %end.addr, align 8
  store i64 %17, i64* %18, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %19 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeTranslateError_GetEnd(%struct._object* %exc, i64* %start) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64* %start, i64** %start.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = load i64*, i64** %start.addr, align 8
  %call = call i32 @PyUnicodeEncodeError_GetEnd(%struct._object* %0, i64* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeEncodeError_SetEnd(%struct._object* %exc, i64 %end) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %end.addr = alloca i64, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyUnicodeErrorObject*
  %end1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 10
  store i64 %0, i64* %end1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeDecodeError_SetEnd(%struct._object* %exc, i64 %end) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %end.addr = alloca i64, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyUnicodeErrorObject*
  %end1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 10
  store i64 %0, i64* %end1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeTranslateError_SetEnd(%struct._object* %exc, i64 %end) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %end.addr = alloca i64, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  %0 = load i64, i64* %end.addr, align 8
  %1 = load %struct._object*, %struct._object** %exc.addr, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyUnicodeErrorObject*
  %end1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 10
  store i64 %0, i64* %end1, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeEncodeError_GetReason(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 11
  %2 = load %struct._object*, %struct._object** %reason, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeDecodeError_GetReason(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 11
  %2 = load %struct._object*, %struct._object** %reason, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeTranslateError_GetReason(%struct._object* %exc) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 11
  %2 = load %struct._object*, %struct._object** %reason, align 8
  %call = call %struct._object* @get_unicode(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeEncodeError_SetReason(%struct._object* %exc, i8* %reason) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %reason.addr = alloca i8*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i8* %reason, i8** %reason.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %reason1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 11
  %2 = load i8*, i8** %reason.addr, align 8
  %call = call i32 @set_unicodefromstring(%struct._object** %reason1, i8* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @set_unicodefromstring(%struct._object** %attr, i8* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %attr.addr = alloca %struct._object**, align 8
  %value.addr = alloca i8*, align 8
  %obj = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object** %attr, %struct._object*** %attr.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %obj, align 8
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object**, %struct._object*** %attr.addr, align 8
  %3 = load %struct._object*, %struct._object** %2, align 8
  store %struct._object* %3, %struct._object** %_py_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %do.body
  %5 = load %struct._object**, %struct._object*** %attr.addr, align 8
  store %struct._object* null, %struct._object** %5, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end.5

if.else:                                          ; preds = %do.body.2
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %obj, align 8
  %14 = load %struct._object**, %struct._object*** %attr.addr, align 8
  store %struct._object* %13, %struct._object** %14, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.7, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeDecodeError_SetReason(%struct._object* %exc, i8* %reason) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %reason.addr = alloca i8*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i8* %reason, i8** %reason.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %reason1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 11
  %2 = load i8*, i8** %reason.addr, align 8
  %call = call i32 @set_unicodefromstring(%struct._object** %reason1, i8* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @PyUnicodeTranslateError_SetReason(%struct._object* %exc, i8* %reason) #0 {
entry:
  %exc.addr = alloca %struct._object*, align 8
  %reason.addr = alloca i8*, align 8
  store %struct._object* %exc, %struct._object** %exc.addr, align 8
  store i8* %reason, i8** %reason.addr, align 8
  %0 = load %struct._object*, %struct._object** %exc.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  %reason1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %1, i32 0, i32 11
  %2 = load i8*, i8** %reason.addr, align 8
  %call = call i32 @set_unicodefromstring(%struct._object** %reason1, i8* %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeEncodeError_Create(i8* %encoding, i32* %object, i64 %length, i64 %start, i64 %end, i8* %reason) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %object.addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %reason.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i32* %object, i32** %object.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i8* %reason, i8** %reason.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %1 = load i8*, i8** %encoding.addr, align 8
  %2 = load i32*, i32** %object.addr, align 8
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i64, i64* %start.addr, align 8
  %5 = load i64, i64* %end.addr, align 8
  %6 = load i8*, i8** %reason.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %1, i32* %2, i64 %3, i64 %4, i64 %5, i8* %6)
  ret %struct._object* %call
}

declare %struct._object* @_PyObject_CallFunction_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeDecodeError_Create(i8* %encoding, i8* %object, i64 %length, i64 %start, i64 %end, i8* %reason) #0 {
entry:
  %encoding.addr = alloca i8*, align 8
  %object.addr = alloca i8*, align 8
  %length.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %reason.addr = alloca i8*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %object, i8** %object.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i8* %reason, i8** %reason.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %1 = load i8*, i8** %encoding.addr, align 8
  %2 = load i8*, i8** %object.addr, align 8
  %3 = load i64, i64* %length.addr, align 8
  %4 = load i64, i64* %start.addr, align 8
  %5 = load i64, i64* %end.addr, align 8
  %6 = load i8*, i8** %reason.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %1, i8* %2, i64 %3, i64 %4, i64 %5, i8* %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyUnicodeTranslateError_Create(i32* %object, i64 %length, i64 %start, i64 %end, i8* %reason) #0 {
entry:
  %object.addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %reason.addr = alloca i8*, align 8
  store i32* %object, i32** %object.addr, align 8
  store i64 %length, i64* %length.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i8* %reason, i8** %reason.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8
  %1 = load i32*, i32** %object.addr, align 8
  %2 = load i64, i64* %length.addr, align 8
  %3 = load i64, i64* %start.addr, align 8
  %4 = load i64, i64* %end.addr, align 8
  %5 = load i8*, i8** %reason.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32* %1, i64 %2, i64 %3, i64 %4, i8* %5)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyUnicodeTranslateError_Create(%struct._object* %object, i64 %start, i64 %end, i8* %reason) #0 {
entry:
  %object.addr = alloca %struct._object*, align 8
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %reason.addr = alloca i8*, align 8
  store %struct._object* %object, %struct._object** %object.addr, align 8
  store i64 %start, i64* %start.addr, align 8
  store i64 %end, i64* %end.addr, align 8
  store i8* %reason, i8** %reason.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8
  %1 = load %struct._object*, %struct._object** %object.addr, align 8
  %2 = load i64, i64* %start.addr, align 8
  %3 = load i64, i64* %end.addr, align 8
  %4 = load i8*, i8** %reason.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @_PyObject_CallFunction_SizeT(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object* %1, i64 %2, i64 %3, i8* %4)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define void @_PyExc_Init(%struct._object* %bltinmod) #0 {
entry:
  %bltinmod.addr = alloca %struct._object*, align 8
  %bdict = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp671 = alloca %struct._object*, align 8
  %_py_decref_tmp675 = alloca %struct._object*, align 8
  %_code = alloca %struct._object*, align 8
  %_py_decref_tmp865 = alloca %struct._object*, align 8
  %_code875 = alloca %struct._object*, align 8
  %_py_decref_tmp884 = alloca %struct._object*, align 8
  %_code894 = alloca %struct._object*, align 8
  %_py_decref_tmp903 = alloca %struct._object*, align 8
  %_code913 = alloca %struct._object*, align 8
  %_py_decref_tmp922 = alloca %struct._object*, align 8
  %_code936 = alloca %struct._object*, align 8
  %_py_decref_tmp945 = alloca %struct._object*, align 8
  %_code955 = alloca %struct._object*, align 8
  %_py_decref_tmp964 = alloca %struct._object*, align 8
  %_code978 = alloca %struct._object*, align 8
  %_py_decref_tmp987 = alloca %struct._object*, align 8
  %_code1001 = alloca %struct._object*, align 8
  %_py_decref_tmp1010 = alloca %struct._object*, align 8
  %_code1024 = alloca %struct._object*, align 8
  %_py_decref_tmp1033 = alloca %struct._object*, align 8
  %_code1047 = alloca %struct._object*, align 8
  %_py_decref_tmp1056 = alloca %struct._object*, align 8
  %_code1070 = alloca %struct._object*, align 8
  %_py_decref_tmp1079 = alloca %struct._object*, align 8
  %_code1093 = alloca %struct._object*, align 8
  %_py_decref_tmp1102 = alloca %struct._object*, align 8
  %_code1116 = alloca %struct._object*, align 8
  %_py_decref_tmp1125 = alloca %struct._object*, align 8
  %_code1139 = alloca %struct._object*, align 8
  %_py_decref_tmp1148 = alloca %struct._object*, align 8
  %_code1162 = alloca %struct._object*, align 8
  %_py_decref_tmp1171 = alloca %struct._object*, align 8
  %_code1185 = alloca %struct._object*, align 8
  %_py_decref_tmp1194 = alloca %struct._object*, align 8
  %_code1204 = alloca %struct._object*, align 8
  %_py_decref_tmp1213 = alloca %struct._object*, align 8
  %_code1227 = alloca %struct._object*, align 8
  %_py_decref_tmp1236 = alloca %struct._object*, align 8
  %_code1250 = alloca %struct._object*, align 8
  %_py_decref_tmp1259 = alloca %struct._object*, align 8
  %err_inst = alloca %struct.PyBaseExceptionObject*, align 8
  %args_tuple = alloca %struct._object*, align 8
  %exc_message = alloca %struct._object*, align 8
  %_py_decref_tmp1284 = alloca %struct._object*, align 8
  %_py_decref_tmp1299 = alloca %struct._object*, align 8
  store %struct._object* %bltinmod, %struct._object** %bltinmod.addr, align 8
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BaseException, i32 0, i32 19), align 8
  %and = and i64 %0, 4096
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end.2, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_BaseException)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct._object*, %struct._object** @PyExc_BaseException, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.2

if.end.2:                                         ; preds = %if.end, %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_Exception, i32 0, i32 19), align 8
  %and3 = and i64 %3, 4096
  %tobool4 = icmp ne i64 %and3, 0
  br i1 %tobool4, label %if.end.12, label %if.then.5

if.then.5:                                        ; preds = %if.end.2
  %call6 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_Exception)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.9:                                         ; preds = %if.then.5
  %4 = load %struct._object*, %struct._object** @PyExc_Exception, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt10, align 8
  %inc11 = add i64 %5, 1
  store i64 %inc11, i64* %ob_refcnt10, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.9, %if.end.2
  %6 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_TypeError, i32 0, i32 19), align 8
  %and13 = and i64 %6, 4096
  %tobool14 = icmp ne i64 %and13, 0
  br i1 %tobool14, label %if.end.22, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  %call16 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_TypeError)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.then.15
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.19:                                        ; preds = %if.then.15
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt20, align 8
  %inc21 = add i64 %8, 1
  store i64 %inc21, i64* %ob_refcnt20, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %if.end.12
  %9 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_StopIteration, i32 0, i32 19), align 8
  %and23 = and i64 %9, 4096
  %tobool24 = icmp ne i64 %and23, 0
  br i1 %tobool24, label %if.end.32, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  %call26 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_StopIteration)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.29:                                        ; preds = %if.then.25
  %10 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt30, align 8
  %inc31 = add i64 %11, 1
  store i64 %inc31, i64* %ob_refcnt30, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.29, %if.end.22
  %12 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_GeneratorExit, i32 0, i32 19), align 8
  %and33 = and i64 %12, 4096
  %tobool34 = icmp ne i64 %and33, 0
  br i1 %tobool34, label %if.end.42, label %if.then.35

if.then.35:                                       ; preds = %if.end.32
  %call36 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_GeneratorExit)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.35
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.39:                                        ; preds = %if.then.35
  %13 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt40, align 8
  %inc41 = add i64 %14, 1
  store i64 %inc41, i64* %ob_refcnt40, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.39, %if.end.32
  %15 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SystemExit, i32 0, i32 19), align 8
  %and43 = and i64 %15, 4096
  %tobool44 = icmp ne i64 %and43, 0
  br i1 %tobool44, label %if.end.52, label %if.then.45

if.then.45:                                       ; preds = %if.end.42
  %call46 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_SystemExit)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.45
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.49:                                        ; preds = %if.then.45
  %16 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt50, align 8
  %inc51 = add i64 %17, 1
  store i64 %inc51, i64* %ob_refcnt50, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.49, %if.end.42
  %18 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_KeyboardInterrupt, i32 0, i32 19), align 8
  %and53 = and i64 %18, 4096
  %tobool54 = icmp ne i64 %and53, 0
  br i1 %tobool54, label %if.end.62, label %if.then.55

if.then.55:                                       ; preds = %if.end.52
  %call56 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_KeyboardInterrupt)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.then.55
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.59:                                        ; preds = %if.then.55
  %19 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt60, align 8
  %inc61 = add i64 %20, 1
  store i64 %inc61, i64* %ob_refcnt60, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.59, %if.end.52
  %21 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ImportError, i32 0, i32 19), align 8
  %and63 = and i64 %21, 4096
  %tobool64 = icmp ne i64 %and63, 0
  br i1 %tobool64, label %if.end.72, label %if.then.65

if.then.65:                                       ; preds = %if.end.62
  %call66 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ImportError)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.65
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.69:                                        ; preds = %if.then.65
  %22 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt70, align 8
  %inc71 = add i64 %23, 1
  store i64 %inc71, i64* %ob_refcnt70, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.69, %if.end.62
  %24 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_OSError, i32 0, i32 19), align 8
  %and73 = and i64 %24, 4096
  %tobool74 = icmp ne i64 %and73, 0
  br i1 %tobool74, label %if.end.82, label %if.then.75

if.then.75:                                       ; preds = %if.end.72
  %call76 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_OSError)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.75
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.79:                                        ; preds = %if.then.75
  %25 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt80, align 8
  %inc81 = add i64 %26, 1
  store i64 %inc81, i64* %ob_refcnt80, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.79, %if.end.72
  %27 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_EOFError, i32 0, i32 19), align 8
  %and83 = and i64 %27, 4096
  %tobool84 = icmp ne i64 %and83, 0
  br i1 %tobool84, label %if.end.92, label %if.then.85

if.then.85:                                       ; preds = %if.end.82
  %call86 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_EOFError)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.then.85
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.89:                                        ; preds = %if.then.85
  %28 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt90, align 8
  %inc91 = add i64 %29, 1
  store i64 %inc91, i64* %ob_refcnt90, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.89, %if.end.82
  %30 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_RuntimeError, i32 0, i32 19), align 8
  %and93 = and i64 %30, 4096
  %tobool94 = icmp ne i64 %and93, 0
  br i1 %tobool94, label %if.end.102, label %if.then.95

if.then.95:                                       ; preds = %if.end.92
  %call96 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_RuntimeError)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.then.95
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.99:                                        ; preds = %if.then.95
  %31 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt100, align 8
  %inc101 = add i64 %32, 1
  store i64 %inc101, i64* %ob_refcnt100, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.99, %if.end.92
  %33 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_NotImplementedError, i32 0, i32 19), align 8
  %and103 = and i64 %33, 4096
  %tobool104 = icmp ne i64 %and103, 0
  br i1 %tobool104, label %if.end.112, label %if.then.105

if.then.105:                                      ; preds = %if.end.102
  %call106 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_NotImplementedError)
  %cmp107 = icmp slt i32 %call106, 0
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.then.105
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.109:                                       ; preds = %if.then.105
  %34 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt110, align 8
  %inc111 = add i64 %35, 1
  store i64 %inc111, i64* %ob_refcnt110, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.109, %if.end.102
  %36 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_NameError, i32 0, i32 19), align 8
  %and113 = and i64 %36, 4096
  %tobool114 = icmp ne i64 %and113, 0
  br i1 %tobool114, label %if.end.122, label %if.then.115

if.then.115:                                      ; preds = %if.end.112
  %call116 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_NameError)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.115
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.119:                                       ; preds = %if.then.115
  %37 = load %struct._object*, %struct._object** @PyExc_NameError, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt120, align 8
  %inc121 = add i64 %38, 1
  store i64 %inc121, i64* %ob_refcnt120, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.119, %if.end.112
  %39 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnboundLocalError, i32 0, i32 19), align 8
  %and123 = and i64 %39, 4096
  %tobool124 = icmp ne i64 %and123, 0
  br i1 %tobool124, label %if.end.132, label %if.then.125

if.then.125:                                      ; preds = %if.end.122
  %call126 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_UnboundLocalError)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %if.then.128, label %if.end.129

if.then.128:                                      ; preds = %if.then.125
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.129:                                       ; preds = %if.then.125
  %40 = load %struct._object*, %struct._object** @PyExc_UnboundLocalError, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt130, align 8
  %inc131 = add i64 %41, 1
  store i64 %inc131, i64* %ob_refcnt130, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.129, %if.end.122
  %42 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_AttributeError, i32 0, i32 19), align 8
  %and133 = and i64 %42, 4096
  %tobool134 = icmp ne i64 %and133, 0
  br i1 %tobool134, label %if.end.142, label %if.then.135

if.then.135:                                      ; preds = %if.end.132
  %call136 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_AttributeError)
  %cmp137 = icmp slt i32 %call136, 0
  br i1 %cmp137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.135
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.139:                                       ; preds = %if.then.135
  %43 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt140, align 8
  %inc141 = add i64 %44, 1
  store i64 %inc141, i64* %ob_refcnt140, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.139, %if.end.132
  %45 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SyntaxError, i32 0, i32 19), align 8
  %and143 = and i64 %45, 4096
  %tobool144 = icmp ne i64 %and143, 0
  br i1 %tobool144, label %if.end.152, label %if.then.145

if.then.145:                                      ; preds = %if.end.142
  %call146 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_SyntaxError)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.145
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.149:                                       ; preds = %if.then.145
  %46 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %ob_refcnt150 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt150, align 8
  %inc151 = add i64 %47, 1
  store i64 %inc151, i64* %ob_refcnt150, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.149, %if.end.142
  %48 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_IndentationError, i32 0, i32 19), align 8
  %and153 = and i64 %48, 4096
  %tobool154 = icmp ne i64 %and153, 0
  br i1 %tobool154, label %if.end.162, label %if.then.155

if.then.155:                                      ; preds = %if.end.152
  %call156 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_IndentationError)
  %cmp157 = icmp slt i32 %call156, 0
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.then.155
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.159:                                       ; preds = %if.then.155
  %49 = load %struct._object*, %struct._object** @PyExc_IndentationError, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt160, align 8
  %inc161 = add i64 %50, 1
  store i64 %inc161, i64* %ob_refcnt160, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.159, %if.end.152
  %51 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_TabError, i32 0, i32 19), align 8
  %and163 = and i64 %51, 4096
  %tobool164 = icmp ne i64 %and163, 0
  br i1 %tobool164, label %if.end.172, label %if.then.165

if.then.165:                                      ; preds = %if.end.162
  %call166 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_TabError)
  %cmp167 = icmp slt i32 %call166, 0
  br i1 %cmp167, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.165
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.169:                                       ; preds = %if.then.165
  %52 = load %struct._object*, %struct._object** @PyExc_TabError, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt170, align 8
  %inc171 = add i64 %53, 1
  store i64 %inc171, i64* %ob_refcnt170, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.169, %if.end.162
  %54 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_LookupError, i32 0, i32 19), align 8
  %and173 = and i64 %54, 4096
  %tobool174 = icmp ne i64 %and173, 0
  br i1 %tobool174, label %if.end.182, label %if.then.175

if.then.175:                                      ; preds = %if.end.172
  %call176 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_LookupError)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %if.then.175
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.179:                                       ; preds = %if.then.175
  %55 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt180, align 8
  %inc181 = add i64 %56, 1
  store i64 %inc181, i64* %ob_refcnt180, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.179, %if.end.172
  %57 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_IndexError, i32 0, i32 19), align 8
  %and183 = and i64 %57, 4096
  %tobool184 = icmp ne i64 %and183, 0
  br i1 %tobool184, label %if.end.192, label %if.then.185

if.then.185:                                      ; preds = %if.end.182
  %call186 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_IndexError)
  %cmp187 = icmp slt i32 %call186, 0
  br i1 %cmp187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.then.185
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.189:                                       ; preds = %if.then.185
  %58 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt190, align 8
  %inc191 = add i64 %59, 1
  store i64 %inc191, i64* %ob_refcnt190, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.189, %if.end.182
  %60 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_KeyError, i32 0, i32 19), align 8
  %and193 = and i64 %60, 4096
  %tobool194 = icmp ne i64 %and193, 0
  br i1 %tobool194, label %if.end.202, label %if.then.195

if.then.195:                                      ; preds = %if.end.192
  %call196 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_KeyError)
  %cmp197 = icmp slt i32 %call196, 0
  br i1 %cmp197, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.then.195
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.199:                                       ; preds = %if.then.195
  %61 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %ob_refcnt200 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt200, align 8
  %inc201 = add i64 %62, 1
  store i64 %inc201, i64* %ob_refcnt200, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.199, %if.end.192
  %63 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ValueError, i32 0, i32 19), align 8
  %and203 = and i64 %63, 4096
  %tobool204 = icmp ne i64 %and203, 0
  br i1 %tobool204, label %if.end.212, label %if.then.205

if.then.205:                                      ; preds = %if.end.202
  %call206 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ValueError)
  %cmp207 = icmp slt i32 %call206, 0
  br i1 %cmp207, label %if.then.208, label %if.end.209

if.then.208:                                      ; preds = %if.then.205
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.209:                                       ; preds = %if.then.205
  %64 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %ob_refcnt210 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt210, align 8
  %inc211 = add i64 %65, 1
  store i64 %inc211, i64* %ob_refcnt210, align 8
  br label %if.end.212

if.end.212:                                       ; preds = %if.end.209, %if.end.202
  %66 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeError, i32 0, i32 19), align 8
  %and213 = and i64 %66, 4096
  %tobool214 = icmp ne i64 %and213, 0
  br i1 %tobool214, label %if.end.222, label %if.then.215

if.then.215:                                      ; preds = %if.end.212
  %call216 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_UnicodeError)
  %cmp217 = icmp slt i32 %call216, 0
  br i1 %cmp217, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.then.215
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.219:                                       ; preds = %if.then.215
  %67 = load %struct._object*, %struct._object** @PyExc_UnicodeError, align 8
  %ob_refcnt220 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt220, align 8
  %inc221 = add i64 %68, 1
  store i64 %inc221, i64* %ob_refcnt220, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.219, %if.end.212
  %69 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeEncodeError, i32 0, i32 19), align 8
  %and223 = and i64 %69, 4096
  %tobool224 = icmp ne i64 %and223, 0
  br i1 %tobool224, label %if.end.232, label %if.then.225

if.then.225:                                      ; preds = %if.end.222
  %call226 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_UnicodeEncodeError)
  %cmp227 = icmp slt i32 %call226, 0
  br i1 %cmp227, label %if.then.228, label %if.end.229

if.then.228:                                      ; preds = %if.then.225
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.229:                                       ; preds = %if.then.225
  %70 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %ob_refcnt230 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt230, align 8
  %inc231 = add i64 %71, 1
  store i64 %inc231, i64* %ob_refcnt230, align 8
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.229, %if.end.222
  %72 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeDecodeError, i32 0, i32 19), align 8
  %and233 = and i64 %72, 4096
  %tobool234 = icmp ne i64 %and233, 0
  br i1 %tobool234, label %if.end.242, label %if.then.235

if.then.235:                                      ; preds = %if.end.232
  %call236 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_UnicodeDecodeError)
  %cmp237 = icmp slt i32 %call236, 0
  br i1 %cmp237, label %if.then.238, label %if.end.239

if.then.238:                                      ; preds = %if.then.235
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.239:                                       ; preds = %if.then.235
  %73 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %ob_refcnt240 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt240, align 8
  %inc241 = add i64 %74, 1
  store i64 %inc241, i64* %ob_refcnt240, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.239, %if.end.232
  %75 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeTranslateError, i32 0, i32 19), align 8
  %and243 = and i64 %75, 4096
  %tobool244 = icmp ne i64 %and243, 0
  br i1 %tobool244, label %if.end.252, label %if.then.245

if.then.245:                                      ; preds = %if.end.242
  %call246 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_UnicodeTranslateError)
  %cmp247 = icmp slt i32 %call246, 0
  br i1 %cmp247, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.then.245
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.249:                                       ; preds = %if.then.245
  %76 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8
  %ob_refcnt250 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 0
  %77 = load i64, i64* %ob_refcnt250, align 8
  %inc251 = add i64 %77, 1
  store i64 %inc251, i64* %ob_refcnt250, align 8
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.249, %if.end.242
  %78 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_AssertionError, i32 0, i32 19), align 8
  %and253 = and i64 %78, 4096
  %tobool254 = icmp ne i64 %and253, 0
  br i1 %tobool254, label %if.end.262, label %if.then.255

if.then.255:                                      ; preds = %if.end.252
  %call256 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_AssertionError)
  %cmp257 = icmp slt i32 %call256, 0
  br i1 %cmp257, label %if.then.258, label %if.end.259

if.then.258:                                      ; preds = %if.then.255
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.259:                                       ; preds = %if.then.255
  %79 = load %struct._object*, %struct._object** @PyExc_AssertionError, align 8
  %ob_refcnt260 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt260, align 8
  %inc261 = add i64 %80, 1
  store i64 %inc261, i64* %ob_refcnt260, align 8
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.259, %if.end.252
  %81 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ArithmeticError, i32 0, i32 19), align 8
  %and263 = and i64 %81, 4096
  %tobool264 = icmp ne i64 %and263, 0
  br i1 %tobool264, label %if.end.272, label %if.then.265

if.then.265:                                      ; preds = %if.end.262
  %call266 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ArithmeticError)
  %cmp267 = icmp slt i32 %call266, 0
  br i1 %cmp267, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %if.then.265
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.269:                                       ; preds = %if.then.265
  %82 = load %struct._object*, %struct._object** @PyExc_ArithmeticError, align 8
  %ob_refcnt270 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt270, align 8
  %inc271 = add i64 %83, 1
  store i64 %inc271, i64* %ob_refcnt270, align 8
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.269, %if.end.262
  %84 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FloatingPointError, i32 0, i32 19), align 8
  %and273 = and i64 %84, 4096
  %tobool274 = icmp ne i64 %and273, 0
  br i1 %tobool274, label %if.end.282, label %if.then.275

if.then.275:                                      ; preds = %if.end.272
  %call276 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_FloatingPointError)
  %cmp277 = icmp slt i32 %call276, 0
  br i1 %cmp277, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.then.275
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.279:                                       ; preds = %if.then.275
  %85 = load %struct._object*, %struct._object** @PyExc_FloatingPointError, align 8
  %ob_refcnt280 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt280, align 8
  %inc281 = add i64 %86, 1
  store i64 %inc281, i64* %ob_refcnt280, align 8
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.279, %if.end.272
  %87 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_OverflowError, i32 0, i32 19), align 8
  %and283 = and i64 %87, 4096
  %tobool284 = icmp ne i64 %and283, 0
  br i1 %tobool284, label %if.end.292, label %if.then.285

if.then.285:                                      ; preds = %if.end.282
  %call286 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_OverflowError)
  %cmp287 = icmp slt i32 %call286, 0
  br i1 %cmp287, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %if.then.285
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.289:                                       ; preds = %if.then.285
  %88 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %ob_refcnt290 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt290, align 8
  %inc291 = add i64 %89, 1
  store i64 %inc291, i64* %ob_refcnt290, align 8
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.289, %if.end.282
  %90 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ZeroDivisionError, i32 0, i32 19), align 8
  %and293 = and i64 %90, 4096
  %tobool294 = icmp ne i64 %and293, 0
  br i1 %tobool294, label %if.end.302, label %if.then.295

if.then.295:                                      ; preds = %if.end.292
  %call296 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ZeroDivisionError)
  %cmp297 = icmp slt i32 %call296, 0
  br i1 %cmp297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.then.295
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.299:                                       ; preds = %if.then.295
  %91 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  %ob_refcnt300 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt300, align 8
  %inc301 = add i64 %92, 1
  store i64 %inc301, i64* %ob_refcnt300, align 8
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.299, %if.end.292
  %93 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SystemError, i32 0, i32 19), align 8
  %and303 = and i64 %93, 4096
  %tobool304 = icmp ne i64 %and303, 0
  br i1 %tobool304, label %if.end.312, label %if.then.305

if.then.305:                                      ; preds = %if.end.302
  %call306 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_SystemError)
  %cmp307 = icmp slt i32 %call306, 0
  br i1 %cmp307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %if.then.305
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.309:                                       ; preds = %if.then.305
  %94 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %ob_refcnt310 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt310, align 8
  %inc311 = add i64 %95, 1
  store i64 %inc311, i64* %ob_refcnt310, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.309, %if.end.302
  %96 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ReferenceError, i32 0, i32 19), align 8
  %and313 = and i64 %96, 4096
  %tobool314 = icmp ne i64 %and313, 0
  br i1 %tobool314, label %if.end.322, label %if.then.315

if.then.315:                                      ; preds = %if.end.312
  %call316 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ReferenceError)
  %cmp317 = icmp slt i32 %call316, 0
  br i1 %cmp317, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %if.then.315
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.319:                                       ; preds = %if.then.315
  %97 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8
  %ob_refcnt320 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 0
  %98 = load i64, i64* %ob_refcnt320, align 8
  %inc321 = add i64 %98, 1
  store i64 %inc321, i64* %ob_refcnt320, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.319, %if.end.312
  %99 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BufferError, i32 0, i32 19), align 8
  %and323 = and i64 %99, 4096
  %tobool324 = icmp ne i64 %and323, 0
  br i1 %tobool324, label %if.end.332, label %if.then.325

if.then.325:                                      ; preds = %if.end.322
  %call326 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_BufferError)
  %cmp327 = icmp slt i32 %call326, 0
  br i1 %cmp327, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.then.325
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.329:                                       ; preds = %if.then.325
  %100 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %ob_refcnt330 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt330, align 8
  %inc331 = add i64 %101, 1
  store i64 %inc331, i64* %ob_refcnt330, align 8
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.329, %if.end.322
  %102 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_MemoryError, i32 0, i32 19), align 8
  %and333 = and i64 %102, 4096
  %tobool334 = icmp ne i64 %and333, 0
  br i1 %tobool334, label %if.end.342, label %if.then.335

if.then.335:                                      ; preds = %if.end.332
  %call336 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_MemoryError)
  %cmp337 = icmp slt i32 %call336, 0
  br i1 %cmp337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %if.then.335
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.339:                                       ; preds = %if.then.335
  %103 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  %ob_refcnt340 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt340, align 8
  %inc341 = add i64 %104, 1
  store i64 %inc341, i64* %ob_refcnt340, align 8
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.339, %if.end.332
  %105 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BufferError, i32 0, i32 19), align 8
  %and343 = and i64 %105, 4096
  %tobool344 = icmp ne i64 %and343, 0
  br i1 %tobool344, label %if.end.352, label %if.then.345

if.then.345:                                      ; preds = %if.end.342
  %call346 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_BufferError)
  %cmp347 = icmp slt i32 %call346, 0
  br i1 %cmp347, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %if.then.345
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.349:                                       ; preds = %if.then.345
  %106 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %ob_refcnt350 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 0
  %107 = load i64, i64* %ob_refcnt350, align 8
  %inc351 = add i64 %107, 1
  store i64 %inc351, i64* %ob_refcnt350, align 8
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.349, %if.end.342
  %108 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_Warning, i32 0, i32 19), align 8
  %and353 = and i64 %108, 4096
  %tobool354 = icmp ne i64 %and353, 0
  br i1 %tobool354, label %if.end.362, label %if.then.355

if.then.355:                                      ; preds = %if.end.352
  %call356 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_Warning)
  %cmp357 = icmp slt i32 %call356, 0
  br i1 %cmp357, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %if.then.355
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.359:                                       ; preds = %if.then.355
  %109 = load %struct._object*, %struct._object** @PyExc_Warning, align 8
  %ob_refcnt360 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt360, align 8
  %inc361 = add i64 %110, 1
  store i64 %inc361, i64* %ob_refcnt360, align 8
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.359, %if.end.352
  %111 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UserWarning, i32 0, i32 19), align 8
  %and363 = and i64 %111, 4096
  %tobool364 = icmp ne i64 %and363, 0
  br i1 %tobool364, label %if.end.372, label %if.then.365

if.then.365:                                      ; preds = %if.end.362
  %call366 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_UserWarning)
  %cmp367 = icmp slt i32 %call366, 0
  br i1 %cmp367, label %if.then.368, label %if.end.369

if.then.368:                                      ; preds = %if.then.365
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.369:                                       ; preds = %if.then.365
  %112 = load %struct._object*, %struct._object** @PyExc_UserWarning, align 8
  %ob_refcnt370 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt370, align 8
  %inc371 = add i64 %113, 1
  store i64 %inc371, i64* %ob_refcnt370, align 8
  br label %if.end.372

if.end.372:                                       ; preds = %if.end.369, %if.end.362
  %114 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_DeprecationWarning, i32 0, i32 19), align 8
  %and373 = and i64 %114, 4096
  %tobool374 = icmp ne i64 %and373, 0
  br i1 %tobool374, label %if.end.382, label %if.then.375

if.then.375:                                      ; preds = %if.end.372
  %call376 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_DeprecationWarning)
  %cmp377 = icmp slt i32 %call376, 0
  br i1 %cmp377, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.then.375
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.379:                                       ; preds = %if.then.375
  %115 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %ob_refcnt380 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt380, align 8
  %inc381 = add i64 %116, 1
  store i64 %inc381, i64* %ob_refcnt380, align 8
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.379, %if.end.372
  %117 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_PendingDeprecationWarning, i32 0, i32 19), align 8
  %and383 = and i64 %117, 4096
  %tobool384 = icmp ne i64 %and383, 0
  br i1 %tobool384, label %if.end.392, label %if.then.385

if.then.385:                                      ; preds = %if.end.382
  %call386 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_PendingDeprecationWarning)
  %cmp387 = icmp slt i32 %call386, 0
  br i1 %cmp387, label %if.then.388, label %if.end.389

if.then.388:                                      ; preds = %if.then.385
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.389:                                       ; preds = %if.then.385
  %118 = load %struct._object*, %struct._object** @PyExc_PendingDeprecationWarning, align 8
  %ob_refcnt390 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0
  %119 = load i64, i64* %ob_refcnt390, align 8
  %inc391 = add i64 %119, 1
  store i64 %inc391, i64* %ob_refcnt390, align 8
  br label %if.end.392

if.end.392:                                       ; preds = %if.end.389, %if.end.382
  %120 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_SyntaxWarning, i32 0, i32 19), align 8
  %and393 = and i64 %120, 4096
  %tobool394 = icmp ne i64 %and393, 0
  br i1 %tobool394, label %if.end.402, label %if.then.395

if.then.395:                                      ; preds = %if.end.392
  %call396 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_SyntaxWarning)
  %cmp397 = icmp slt i32 %call396, 0
  br i1 %cmp397, label %if.then.398, label %if.end.399

if.then.398:                                      ; preds = %if.then.395
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.399:                                       ; preds = %if.then.395
  %121 = load %struct._object*, %struct._object** @PyExc_SyntaxWarning, align 8
  %ob_refcnt400 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt400, align 8
  %inc401 = add i64 %122, 1
  store i64 %inc401, i64* %ob_refcnt400, align 8
  br label %if.end.402

if.end.402:                                       ; preds = %if.end.399, %if.end.392
  %123 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_RuntimeWarning, i32 0, i32 19), align 8
  %and403 = and i64 %123, 4096
  %tobool404 = icmp ne i64 %and403, 0
  br i1 %tobool404, label %if.end.412, label %if.then.405

if.then.405:                                      ; preds = %if.end.402
  %call406 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_RuntimeWarning)
  %cmp407 = icmp slt i32 %call406, 0
  br i1 %cmp407, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %if.then.405
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.409:                                       ; preds = %if.then.405
  %124 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %ob_refcnt410 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0
  %125 = load i64, i64* %ob_refcnt410, align 8
  %inc411 = add i64 %125, 1
  store i64 %inc411, i64* %ob_refcnt410, align 8
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.409, %if.end.402
  %126 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FutureWarning, i32 0, i32 19), align 8
  %and413 = and i64 %126, 4096
  %tobool414 = icmp ne i64 %and413, 0
  br i1 %tobool414, label %if.end.422, label %if.then.415

if.then.415:                                      ; preds = %if.end.412
  %call416 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_FutureWarning)
  %cmp417 = icmp slt i32 %call416, 0
  br i1 %cmp417, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %if.then.415
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.419:                                       ; preds = %if.then.415
  %127 = load %struct._object*, %struct._object** @PyExc_FutureWarning, align 8
  %ob_refcnt420 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt420, align 8
  %inc421 = add i64 %128, 1
  store i64 %inc421, i64* %ob_refcnt420, align 8
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.419, %if.end.412
  %129 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ImportWarning, i32 0, i32 19), align 8
  %and423 = and i64 %129, 4096
  %tobool424 = icmp ne i64 %and423, 0
  br i1 %tobool424, label %if.end.432, label %if.then.425

if.then.425:                                      ; preds = %if.end.422
  %call426 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ImportWarning)
  %cmp427 = icmp slt i32 %call426, 0
  br i1 %cmp427, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.then.425
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.429:                                       ; preds = %if.then.425
  %130 = load %struct._object*, %struct._object** @PyExc_ImportWarning, align 8
  %ob_refcnt430 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 0
  %131 = load i64, i64* %ob_refcnt430, align 8
  %inc431 = add i64 %131, 1
  store i64 %inc431, i64* %ob_refcnt430, align 8
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.429, %if.end.422
  %132 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_UnicodeWarning, i32 0, i32 19), align 8
  %and433 = and i64 %132, 4096
  %tobool434 = icmp ne i64 %and433, 0
  br i1 %tobool434, label %if.end.442, label %if.then.435

if.then.435:                                      ; preds = %if.end.432
  %call436 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_UnicodeWarning)
  %cmp437 = icmp slt i32 %call436, 0
  br i1 %cmp437, label %if.then.438, label %if.end.439

if.then.438:                                      ; preds = %if.then.435
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.439:                                       ; preds = %if.then.435
  %133 = load %struct._object*, %struct._object** @PyExc_UnicodeWarning, align 8
  %ob_refcnt440 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt440, align 8
  %inc441 = add i64 %134, 1
  store i64 %inc441, i64* %ob_refcnt440, align 8
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.439, %if.end.432
  %135 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BytesWarning, i32 0, i32 19), align 8
  %and443 = and i64 %135, 4096
  %tobool444 = icmp ne i64 %and443, 0
  br i1 %tobool444, label %if.end.452, label %if.then.445

if.then.445:                                      ; preds = %if.end.442
  %call446 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_BytesWarning)
  %cmp447 = icmp slt i32 %call446, 0
  br i1 %cmp447, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %if.then.445
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.449:                                       ; preds = %if.then.445
  %136 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8
  %ob_refcnt450 = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0
  %137 = load i64, i64* %ob_refcnt450, align 8
  %inc451 = add i64 %137, 1
  store i64 %inc451, i64* %ob_refcnt450, align 8
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.449, %if.end.442
  %138 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ResourceWarning, i32 0, i32 19), align 8
  %and453 = and i64 %138, 4096
  %tobool454 = icmp ne i64 %and453, 0
  br i1 %tobool454, label %if.end.462, label %if.then.455

if.then.455:                                      ; preds = %if.end.452
  %call456 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ResourceWarning)
  %cmp457 = icmp slt i32 %call456, 0
  br i1 %cmp457, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %if.then.455
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.459:                                       ; preds = %if.then.455
  %139 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8
  %ob_refcnt460 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 0
  %140 = load i64, i64* %ob_refcnt460, align 8
  %inc461 = add i64 %140, 1
  store i64 %inc461, i64* %ob_refcnt460, align 8
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.459, %if.end.452
  %141 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionError, i32 0, i32 19), align 8
  %and463 = and i64 %141, 4096
  %tobool464 = icmp ne i64 %and463, 0
  br i1 %tobool464, label %if.end.472, label %if.then.465

if.then.465:                                      ; preds = %if.end.462
  %call466 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ConnectionError)
  %cmp467 = icmp slt i32 %call466, 0
  br i1 %cmp467, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %if.then.465
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.469:                                       ; preds = %if.then.465
  %142 = load %struct._object*, %struct._object** @PyExc_ConnectionError, align 8
  %ob_refcnt470 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 0
  %143 = load i64, i64* %ob_refcnt470, align 8
  %inc471 = add i64 %143, 1
  store i64 %inc471, i64* %ob_refcnt470, align 8
  br label %if.end.472

if.end.472:                                       ; preds = %if.end.469, %if.end.462
  %144 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BlockingIOError, i32 0, i32 19), align 8
  %and473 = and i64 %144, 4096
  %tobool474 = icmp ne i64 %and473, 0
  br i1 %tobool474, label %if.end.482, label %if.then.475

if.then.475:                                      ; preds = %if.end.472
  %call476 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_BlockingIOError)
  %cmp477 = icmp slt i32 %call476, 0
  br i1 %cmp477, label %if.then.478, label %if.end.479

if.then.478:                                      ; preds = %if.then.475
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.479:                                       ; preds = %if.then.475
  %145 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %ob_refcnt480 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 0
  %146 = load i64, i64* %ob_refcnt480, align 8
  %inc481 = add i64 %146, 1
  store i64 %inc481, i64* %ob_refcnt480, align 8
  br label %if.end.482

if.end.482:                                       ; preds = %if.end.479, %if.end.472
  %147 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BrokenPipeError, i32 0, i32 19), align 8
  %and483 = and i64 %147, 4096
  %tobool484 = icmp ne i64 %and483, 0
  br i1 %tobool484, label %if.end.492, label %if.then.485

if.then.485:                                      ; preds = %if.end.482
  %call486 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_BrokenPipeError)
  %cmp487 = icmp slt i32 %call486, 0
  br i1 %cmp487, label %if.then.488, label %if.end.489

if.then.488:                                      ; preds = %if.then.485
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.489:                                       ; preds = %if.then.485
  %148 = load %struct._object*, %struct._object** @PyExc_BrokenPipeError, align 8
  %ob_refcnt490 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 0
  %149 = load i64, i64* %ob_refcnt490, align 8
  %inc491 = add i64 %149, 1
  store i64 %inc491, i64* %ob_refcnt490, align 8
  br label %if.end.492

if.end.492:                                       ; preds = %if.end.489, %if.end.482
  %150 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ChildProcessError, i32 0, i32 19), align 8
  %and493 = and i64 %150, 4096
  %tobool494 = icmp ne i64 %and493, 0
  br i1 %tobool494, label %if.end.502, label %if.then.495

if.then.495:                                      ; preds = %if.end.492
  %call496 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ChildProcessError)
  %cmp497 = icmp slt i32 %call496, 0
  br i1 %cmp497, label %if.then.498, label %if.end.499

if.then.498:                                      ; preds = %if.then.495
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.499:                                       ; preds = %if.then.495
  %151 = load %struct._object*, %struct._object** @PyExc_ChildProcessError, align 8
  %ob_refcnt500 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt500, align 8
  %inc501 = add i64 %152, 1
  store i64 %inc501, i64* %ob_refcnt500, align 8
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.499, %if.end.492
  %153 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionAbortedError, i32 0, i32 19), align 8
  %and503 = and i64 %153, 4096
  %tobool504 = icmp ne i64 %and503, 0
  br i1 %tobool504, label %if.end.512, label %if.then.505

if.then.505:                                      ; preds = %if.end.502
  %call506 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ConnectionAbortedError)
  %cmp507 = icmp slt i32 %call506, 0
  br i1 %cmp507, label %if.then.508, label %if.end.509

if.then.508:                                      ; preds = %if.then.505
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.509:                                       ; preds = %if.then.505
  %154 = load %struct._object*, %struct._object** @PyExc_ConnectionAbortedError, align 8
  %ob_refcnt510 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt510, align 8
  %inc511 = add i64 %155, 1
  store i64 %inc511, i64* %ob_refcnt510, align 8
  br label %if.end.512

if.end.512:                                       ; preds = %if.end.509, %if.end.502
  %156 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionRefusedError, i32 0, i32 19), align 8
  %and513 = and i64 %156, 4096
  %tobool514 = icmp ne i64 %and513, 0
  br i1 %tobool514, label %if.end.522, label %if.then.515

if.then.515:                                      ; preds = %if.end.512
  %call516 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ConnectionRefusedError)
  %cmp517 = icmp slt i32 %call516, 0
  br i1 %cmp517, label %if.then.518, label %if.end.519

if.then.518:                                      ; preds = %if.then.515
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.519:                                       ; preds = %if.then.515
  %157 = load %struct._object*, %struct._object** @PyExc_ConnectionRefusedError, align 8
  %ob_refcnt520 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 0
  %158 = load i64, i64* %ob_refcnt520, align 8
  %inc521 = add i64 %158, 1
  store i64 %inc521, i64* %ob_refcnt520, align 8
  br label %if.end.522

if.end.522:                                       ; preds = %if.end.519, %if.end.512
  %159 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ConnectionResetError, i32 0, i32 19), align 8
  %and523 = and i64 %159, 4096
  %tobool524 = icmp ne i64 %and523, 0
  br i1 %tobool524, label %if.end.532, label %if.then.525

if.then.525:                                      ; preds = %if.end.522
  %call526 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ConnectionResetError)
  %cmp527 = icmp slt i32 %call526, 0
  br i1 %cmp527, label %if.then.528, label %if.end.529

if.then.528:                                      ; preds = %if.then.525
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.529:                                       ; preds = %if.then.525
  %160 = load %struct._object*, %struct._object** @PyExc_ConnectionResetError, align 8
  %ob_refcnt530 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 0
  %161 = load i64, i64* %ob_refcnt530, align 8
  %inc531 = add i64 %161, 1
  store i64 %inc531, i64* %ob_refcnt530, align 8
  br label %if.end.532

if.end.532:                                       ; preds = %if.end.529, %if.end.522
  %162 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FileExistsError, i32 0, i32 19), align 8
  %and533 = and i64 %162, 4096
  %tobool534 = icmp ne i64 %and533, 0
  br i1 %tobool534, label %if.end.542, label %if.then.535

if.then.535:                                      ; preds = %if.end.532
  %call536 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_FileExistsError)
  %cmp537 = icmp slt i32 %call536, 0
  br i1 %cmp537, label %if.then.538, label %if.end.539

if.then.538:                                      ; preds = %if.then.535
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.539:                                       ; preds = %if.then.535
  %163 = load %struct._object*, %struct._object** @PyExc_FileExistsError, align 8
  %ob_refcnt540 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 0
  %164 = load i64, i64* %ob_refcnt540, align 8
  %inc541 = add i64 %164, 1
  store i64 %inc541, i64* %ob_refcnt540, align 8
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.539, %if.end.532
  %165 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_FileNotFoundError, i32 0, i32 19), align 8
  %and543 = and i64 %165, 4096
  %tobool544 = icmp ne i64 %and543, 0
  br i1 %tobool544, label %if.end.552, label %if.then.545

if.then.545:                                      ; preds = %if.end.542
  %call546 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_FileNotFoundError)
  %cmp547 = icmp slt i32 %call546, 0
  br i1 %cmp547, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %if.then.545
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.549:                                       ; preds = %if.then.545
  %166 = load %struct._object*, %struct._object** @PyExc_FileNotFoundError, align 8
  %ob_refcnt550 = getelementptr inbounds %struct._object, %struct._object* %166, i32 0, i32 0
  %167 = load i64, i64* %ob_refcnt550, align 8
  %inc551 = add i64 %167, 1
  store i64 %inc551, i64* %ob_refcnt550, align 8
  br label %if.end.552

if.end.552:                                       ; preds = %if.end.549, %if.end.542
  %168 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_IsADirectoryError, i32 0, i32 19), align 8
  %and553 = and i64 %168, 4096
  %tobool554 = icmp ne i64 %and553, 0
  br i1 %tobool554, label %if.end.562, label %if.then.555

if.then.555:                                      ; preds = %if.end.552
  %call556 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_IsADirectoryError)
  %cmp557 = icmp slt i32 %call556, 0
  br i1 %cmp557, label %if.then.558, label %if.end.559

if.then.558:                                      ; preds = %if.then.555
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.559:                                       ; preds = %if.then.555
  %169 = load %struct._object*, %struct._object** @PyExc_IsADirectoryError, align 8
  %ob_refcnt560 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0
  %170 = load i64, i64* %ob_refcnt560, align 8
  %inc561 = add i64 %170, 1
  store i64 %inc561, i64* %ob_refcnt560, align 8
  br label %if.end.562

if.end.562:                                       ; preds = %if.end.559, %if.end.552
  %171 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_NotADirectoryError, i32 0, i32 19), align 8
  %and563 = and i64 %171, 4096
  %tobool564 = icmp ne i64 %and563, 0
  br i1 %tobool564, label %if.end.572, label %if.then.565

if.then.565:                                      ; preds = %if.end.562
  %call566 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_NotADirectoryError)
  %cmp567 = icmp slt i32 %call566, 0
  br i1 %cmp567, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %if.then.565
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.569:                                       ; preds = %if.then.565
  %172 = load %struct._object*, %struct._object** @PyExc_NotADirectoryError, align 8
  %ob_refcnt570 = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 0
  %173 = load i64, i64* %ob_refcnt570, align 8
  %inc571 = add i64 %173, 1
  store i64 %inc571, i64* %ob_refcnt570, align 8
  br label %if.end.572

if.end.572:                                       ; preds = %if.end.569, %if.end.562
  %174 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_InterruptedError, i32 0, i32 19), align 8
  %and573 = and i64 %174, 4096
  %tobool574 = icmp ne i64 %and573, 0
  br i1 %tobool574, label %if.end.582, label %if.then.575

if.then.575:                                      ; preds = %if.end.572
  %call576 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_InterruptedError)
  %cmp577 = icmp slt i32 %call576, 0
  br i1 %cmp577, label %if.then.578, label %if.end.579

if.then.578:                                      ; preds = %if.then.575
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.579:                                       ; preds = %if.then.575
  %175 = load %struct._object*, %struct._object** @PyExc_InterruptedError, align 8
  %ob_refcnt580 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 0
  %176 = load i64, i64* %ob_refcnt580, align 8
  %inc581 = add i64 %176, 1
  store i64 %inc581, i64* %ob_refcnt580, align 8
  br label %if.end.582

if.end.582:                                       ; preds = %if.end.579, %if.end.572
  %177 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_PermissionError, i32 0, i32 19), align 8
  %and583 = and i64 %177, 4096
  %tobool584 = icmp ne i64 %and583, 0
  br i1 %tobool584, label %if.end.592, label %if.then.585

if.then.585:                                      ; preds = %if.end.582
  %call586 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_PermissionError)
  %cmp587 = icmp slt i32 %call586, 0
  br i1 %cmp587, label %if.then.588, label %if.end.589

if.then.588:                                      ; preds = %if.then.585
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.589:                                       ; preds = %if.then.585
  %178 = load %struct._object*, %struct._object** @PyExc_PermissionError, align 8
  %ob_refcnt590 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt590, align 8
  %inc591 = add i64 %179, 1
  store i64 %inc591, i64* %ob_refcnt590, align 8
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.589, %if.end.582
  %180 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_ProcessLookupError, i32 0, i32 19), align 8
  %and593 = and i64 %180, 4096
  %tobool594 = icmp ne i64 %and593, 0
  br i1 %tobool594, label %if.end.602, label %if.then.595

if.then.595:                                      ; preds = %if.end.592
  %call596 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_ProcessLookupError)
  %cmp597 = icmp slt i32 %call596, 0
  br i1 %cmp597, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %if.then.595
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.599:                                       ; preds = %if.then.595
  %181 = load %struct._object*, %struct._object** @PyExc_ProcessLookupError, align 8
  %ob_refcnt600 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 0
  %182 = load i64, i64* %ob_refcnt600, align 8
  %inc601 = add i64 %182, 1
  store i64 %inc601, i64* %ob_refcnt600, align 8
  br label %if.end.602

if.end.602:                                       ; preds = %if.end.599, %if.end.592
  %183 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_TimeoutError, i32 0, i32 19), align 8
  %and603 = and i64 %183, 4096
  %tobool604 = icmp ne i64 %and603, 0
  br i1 %tobool604, label %if.end.612, label %if.then.605

if.then.605:                                      ; preds = %if.end.602
  %call606 = call i32 @PyType_Ready(%struct._typeobject* @_PyExc_TimeoutError)
  %cmp607 = icmp slt i32 %call606, 0
  br i1 %cmp607, label %if.then.608, label %if.end.609

if.then.608:                                      ; preds = %if.then.605
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.609:                                       ; preds = %if.then.605
  %184 = load %struct._object*, %struct._object** @PyExc_TimeoutError, align 8
  %ob_refcnt610 = getelementptr inbounds %struct._object, %struct._object* %184, i32 0, i32 0
  %185 = load i64, i64* %ob_refcnt610, align 8
  %inc611 = add i64 %185, 1
  store i64 %inc611, i64* %ob_refcnt610, align 8
  br label %if.end.612

if.end.612:                                       ; preds = %if.end.609, %if.end.602
  %186 = load %struct._object*, %struct._object** %bltinmod.addr, align 8
  %call613 = call %struct._object* @PyModule_GetDict(%struct._object* %186)
  store %struct._object* %call613, %struct._object** %bdict, align 8
  %187 = load %struct._object*, %struct._object** %bdict, align 8
  %cmp614 = icmp eq %struct._object* %187, null
  br i1 %cmp614, label %if.then.615, label %if.end.616

if.then.615:                                      ; preds = %if.end.612
  call void @Py_FatalError(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #5
  unreachable

if.end.616:                                       ; preds = %if.end.612
  %188 = load %struct._object*, %struct._object** %bdict, align 8
  %189 = load %struct._object*, %struct._object** @PyExc_BaseException, align 8
  %call617 = call i32 @PyDict_SetItemString(%struct._object* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %struct._object* %189)
  %tobool618 = icmp ne i32 %call617, 0
  br i1 %tobool618, label %if.then.619, label %if.end.620

if.then.619:                                      ; preds = %if.end.616
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.620:                                       ; preds = %if.end.616
  %190 = load %struct._object*, %struct._object** %bdict, align 8
  %191 = load %struct._object*, %struct._object** @PyExc_Exception, align 8
  %call621 = call i32 @PyDict_SetItemString(%struct._object* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), %struct._object* %191)
  %tobool622 = icmp ne i32 %call621, 0
  br i1 %tobool622, label %if.then.623, label %if.end.624

if.then.623:                                      ; preds = %if.end.620
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.624:                                       ; preds = %if.end.620
  %192 = load %struct._object*, %struct._object** %bdict, align 8
  %193 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call625 = call i32 @PyDict_SetItemString(%struct._object* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct._object* %193)
  %tobool626 = icmp ne i32 %call625, 0
  br i1 %tobool626, label %if.then.627, label %if.end.628

if.then.627:                                      ; preds = %if.end.624
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.628:                                       ; preds = %if.end.624
  %194 = load %struct._object*, %struct._object** %bdict, align 8
  %195 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call629 = call i32 @PyDict_SetItemString(%struct._object* %194, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), %struct._object* %195)
  %tobool630 = icmp ne i32 %call629, 0
  br i1 %tobool630, label %if.then.631, label %if.end.632

if.then.631:                                      ; preds = %if.end.628
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.632:                                       ; preds = %if.end.628
  %196 = load %struct._object*, %struct._object** %bdict, align 8
  %197 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8
  %call633 = call i32 @PyDict_SetItemString(%struct._object* %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), %struct._object* %197)
  %tobool634 = icmp ne i32 %call633, 0
  br i1 %tobool634, label %if.then.635, label %if.end.636

if.then.635:                                      ; preds = %if.end.632
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.636:                                       ; preds = %if.end.632
  %198 = load %struct._object*, %struct._object** %bdict, align 8
  %199 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  %call637 = call i32 @PyDict_SetItemString(%struct._object* %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), %struct._object* %199)
  %tobool638 = icmp ne i32 %call637, 0
  br i1 %tobool638, label %if.then.639, label %if.end.640

if.then.639:                                      ; preds = %if.end.636
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.640:                                       ; preds = %if.end.636
  %200 = load %struct._object*, %struct._object** %bdict, align 8
  %201 = load %struct._object*, %struct._object** @PyExc_KeyboardInterrupt, align 8
  %call641 = call i32 @PyDict_SetItemString(%struct._object* %200, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), %struct._object* %201)
  %tobool642 = icmp ne i32 %call641, 0
  br i1 %tobool642, label %if.then.643, label %if.end.644

if.then.643:                                      ; preds = %if.end.640
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.644:                                       ; preds = %if.end.640
  %202 = load %struct._object*, %struct._object** %bdict, align 8
  %203 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %call645 = call i32 @PyDict_SetItemString(%struct._object* %202, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), %struct._object* %203)
  %tobool646 = icmp ne i32 %call645, 0
  br i1 %tobool646, label %if.then.647, label %if.end.648

if.then.647:                                      ; preds = %if.end.644
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.648:                                       ; preds = %if.end.644
  %204 = load %struct._object*, %struct._object** %bdict, align 8
  %205 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call649 = call i32 @PyDict_SetItemString(%struct._object* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* %205)
  %tobool650 = icmp ne i32 %call649, 0
  br i1 %tobool650, label %if.then.651, label %if.end.652

if.then.651:                                      ; preds = %if.end.648
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.652:                                       ; preds = %if.end.648
  %206 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %ob_refcnt653 = getelementptr inbounds %struct._object, %struct._object* %206, i32 0, i32 0
  %207 = load i64, i64* %ob_refcnt653, align 8
  %inc654 = add i64 %207, 1
  store i64 %inc654, i64* %ob_refcnt653, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.652
  %208 = load %struct._object*, %struct._object** @PyExc_EnvironmentError, align 8
  store %struct._object* %208, %struct._object** %_py_xdecref_tmp, align 8
  %209 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp655 = icmp ne %struct._object* %209, null
  br i1 %cmp655, label %if.then.656, label %if.end.662

if.then.656:                                      ; preds = %do.body
  br label %do.body.657

do.body.657:                                      ; preds = %if.then.656
  %210 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %210, %struct._object** %_py_decref_tmp, align 8
  %211 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt658 = getelementptr inbounds %struct._object, %struct._object* %211, i32 0, i32 0
  %212 = load i64, i64* %ob_refcnt658, align 8
  %dec = add i64 %212, -1
  store i64 %dec, i64* %ob_refcnt658, align 8
  %cmp659 = icmp ne i64 %dec, 0
  br i1 %cmp659, label %if.then.660, label %if.else

if.then.660:                                      ; preds = %do.body.657
  br label %if.end.661

if.else:                                          ; preds = %do.body.657
  %213 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %213, i32 0, i32 1
  %214 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %214, i32 0, i32 4
  %215 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %215(%struct._object* %216)
  br label %if.end.661

if.end.661:                                       ; preds = %if.else, %if.then.660
  br label %do.end

do.end:                                           ; preds = %if.end.661
  br label %if.end.662

if.end.662:                                       ; preds = %do.end, %do.body
  br label %do.end.663

do.end.663:                                       ; preds = %if.end.662
  %217 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  store %struct._object* %217, %struct._object** @PyExc_EnvironmentError, align 8
  %218 = load %struct._object*, %struct._object** %bdict, align 8
  %219 = load %struct._object*, %struct._object** @PyExc_EnvironmentError, align 8
  %call664 = call i32 @PyDict_SetItemString(%struct._object* %218, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), %struct._object* %219)
  %tobool665 = icmp ne i32 %call664, 0
  br i1 %tobool665, label %if.then.666, label %if.end.667

if.then.666:                                      ; preds = %do.end.663
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.667:                                       ; preds = %do.end.663
  %220 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %ob_refcnt668 = getelementptr inbounds %struct._object, %struct._object* %220, i32 0, i32 0
  %221 = load i64, i64* %ob_refcnt668, align 8
  %inc669 = add i64 %221, 1
  store i64 %inc669, i64* %ob_refcnt668, align 8
  br label %do.body.670

do.body.670:                                      ; preds = %if.end.667
  %222 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  store %struct._object* %222, %struct._object** %_py_xdecref_tmp671, align 8
  %223 = load %struct._object*, %struct._object** %_py_xdecref_tmp671, align 8
  %cmp672 = icmp ne %struct._object* %223, null
  br i1 %cmp672, label %if.then.673, label %if.end.685

if.then.673:                                      ; preds = %do.body.670
  br label %do.body.674

do.body.674:                                      ; preds = %if.then.673
  %224 = load %struct._object*, %struct._object** %_py_xdecref_tmp671, align 8
  store %struct._object* %224, %struct._object** %_py_decref_tmp675, align 8
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp675, align 8
  %ob_refcnt676 = getelementptr inbounds %struct._object, %struct._object* %225, i32 0, i32 0
  %226 = load i64, i64* %ob_refcnt676, align 8
  %dec677 = add i64 %226, -1
  store i64 %dec677, i64* %ob_refcnt676, align 8
  %cmp678 = icmp ne i64 %dec677, 0
  br i1 %cmp678, label %if.then.679, label %if.else.680

if.then.679:                                      ; preds = %do.body.674
  br label %if.end.683

if.else.680:                                      ; preds = %do.body.674
  %227 = load %struct._object*, %struct._object** %_py_decref_tmp675, align 8
  %ob_type681 = getelementptr inbounds %struct._object, %struct._object* %227, i32 0, i32 1
  %228 = load %struct._typeobject*, %struct._typeobject** %ob_type681, align 8
  %tp_dealloc682 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %228, i32 0, i32 4
  %229 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc682, align 8
  %230 = load %struct._object*, %struct._object** %_py_decref_tmp675, align 8
  call void %229(%struct._object* %230)
  br label %if.end.683

if.end.683:                                       ; preds = %if.else.680, %if.then.679
  br label %do.end.684

do.end.684:                                       ; preds = %if.end.683
  br label %if.end.685

if.end.685:                                       ; preds = %do.end.684, %do.body.670
  br label %do.end.686

do.end.686:                                       ; preds = %if.end.685
  %231 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  store %struct._object* %231, %struct._object** @PyExc_IOError, align 8
  %232 = load %struct._object*, %struct._object** %bdict, align 8
  %233 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %call687 = call i32 @PyDict_SetItemString(%struct._object* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), %struct._object* %233)
  %tobool688 = icmp ne i32 %call687, 0
  br i1 %tobool688, label %if.then.689, label %if.end.690

if.then.689:                                      ; preds = %do.end.686
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.690:                                       ; preds = %do.end.686
  %234 = load %struct._object*, %struct._object** %bdict, align 8
  %235 = load %struct._object*, %struct._object** @PyExc_EOFError, align 8
  %call691 = call i32 @PyDict_SetItemString(%struct._object* %234, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), %struct._object* %235)
  %tobool692 = icmp ne i32 %call691, 0
  br i1 %tobool692, label %if.then.693, label %if.end.694

if.then.693:                                      ; preds = %if.end.690
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.694:                                       ; preds = %if.end.690
  %236 = load %struct._object*, %struct._object** %bdict, align 8
  %237 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  %call695 = call i32 @PyDict_SetItemString(%struct._object* %236, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), %struct._object* %237)
  %tobool696 = icmp ne i32 %call695, 0
  br i1 %tobool696, label %if.then.697, label %if.end.698

if.then.697:                                      ; preds = %if.end.694
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.698:                                       ; preds = %if.end.694
  %238 = load %struct._object*, %struct._object** %bdict, align 8
  %239 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  %call699 = call i32 @PyDict_SetItemString(%struct._object* %238, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), %struct._object* %239)
  %tobool700 = icmp ne i32 %call699, 0
  br i1 %tobool700, label %if.then.701, label %if.end.702

if.then.701:                                      ; preds = %if.end.698
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.702:                                       ; preds = %if.end.698
  %240 = load %struct._object*, %struct._object** %bdict, align 8
  %241 = load %struct._object*, %struct._object** @PyExc_NameError, align 8
  %call703 = call i32 @PyDict_SetItemString(%struct._object* %240, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), %struct._object* %241)
  %tobool704 = icmp ne i32 %call703, 0
  br i1 %tobool704, label %if.then.705, label %if.end.706

if.then.705:                                      ; preds = %if.end.702
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.706:                                       ; preds = %if.end.702
  %242 = load %struct._object*, %struct._object** %bdict, align 8
  %243 = load %struct._object*, %struct._object** @PyExc_UnboundLocalError, align 8
  %call707 = call i32 @PyDict_SetItemString(%struct._object* %242, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), %struct._object* %243)
  %tobool708 = icmp ne i32 %call707, 0
  br i1 %tobool708, label %if.then.709, label %if.end.710

if.then.709:                                      ; preds = %if.end.706
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.710:                                       ; preds = %if.end.706
  %244 = load %struct._object*, %struct._object** %bdict, align 8
  %245 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call711 = call i32 @PyDict_SetItemString(%struct._object* %244, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0), %struct._object* %245)
  %tobool712 = icmp ne i32 %call711, 0
  br i1 %tobool712, label %if.then.713, label %if.end.714

if.then.713:                                      ; preds = %if.end.710
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.714:                                       ; preds = %if.end.710
  %246 = load %struct._object*, %struct._object** %bdict, align 8
  %247 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %call715 = call i32 @PyDict_SetItemString(%struct._object* %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), %struct._object* %247)
  %tobool716 = icmp ne i32 %call715, 0
  br i1 %tobool716, label %if.then.717, label %if.end.718

if.then.717:                                      ; preds = %if.end.714
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.718:                                       ; preds = %if.end.714
  %248 = load %struct._object*, %struct._object** %bdict, align 8
  %249 = load %struct._object*, %struct._object** @PyExc_IndentationError, align 8
  %call719 = call i32 @PyDict_SetItemString(%struct._object* %248, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), %struct._object* %249)
  %tobool720 = icmp ne i32 %call719, 0
  br i1 %tobool720, label %if.then.721, label %if.end.722

if.then.721:                                      ; preds = %if.end.718
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.722:                                       ; preds = %if.end.718
  %250 = load %struct._object*, %struct._object** %bdict, align 8
  %251 = load %struct._object*, %struct._object** @PyExc_TabError, align 8
  %call723 = call i32 @PyDict_SetItemString(%struct._object* %250, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), %struct._object* %251)
  %tobool724 = icmp ne i32 %call723, 0
  br i1 %tobool724, label %if.then.725, label %if.end.726

if.then.725:                                      ; preds = %if.end.722
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.726:                                       ; preds = %if.end.722
  %252 = load %struct._object*, %struct._object** %bdict, align 8
  %253 = load %struct._object*, %struct._object** @PyExc_LookupError, align 8
  %call727 = call i32 @PyDict_SetItemString(%struct._object* %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), %struct._object* %253)
  %tobool728 = icmp ne i32 %call727, 0
  br i1 %tobool728, label %if.then.729, label %if.end.730

if.then.729:                                      ; preds = %if.end.726
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.730:                                       ; preds = %if.end.726
  %254 = load %struct._object*, %struct._object** %bdict, align 8
  %255 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  %call731 = call i32 @PyDict_SetItemString(%struct._object* %254, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i32 0, i32 0), %struct._object* %255)
  %tobool732 = icmp ne i32 %call731, 0
  br i1 %tobool732, label %if.then.733, label %if.end.734

if.then.733:                                      ; preds = %if.end.730
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.734:                                       ; preds = %if.end.730
  %256 = load %struct._object*, %struct._object** %bdict, align 8
  %257 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %call735 = call i32 @PyDict_SetItemString(%struct._object* %256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), %struct._object* %257)
  %tobool736 = icmp ne i32 %call735, 0
  br i1 %tobool736, label %if.then.737, label %if.end.738

if.then.737:                                      ; preds = %if.end.734
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.738:                                       ; preds = %if.end.734
  %258 = load %struct._object*, %struct._object** %bdict, align 8
  %259 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call739 = call i32 @PyDict_SetItemString(%struct._object* %258, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), %struct._object* %259)
  %tobool740 = icmp ne i32 %call739, 0
  br i1 %tobool740, label %if.then.741, label %if.end.742

if.then.741:                                      ; preds = %if.end.738
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.742:                                       ; preds = %if.end.738
  %260 = load %struct._object*, %struct._object** %bdict, align 8
  %261 = load %struct._object*, %struct._object** @PyExc_UnicodeError, align 8
  %call743 = call i32 @PyDict_SetItemString(%struct._object* %260, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), %struct._object* %261)
  %tobool744 = icmp ne i32 %call743, 0
  br i1 %tobool744, label %if.then.745, label %if.end.746

if.then.745:                                      ; preds = %if.end.742
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.746:                                       ; preds = %if.end.742
  %262 = load %struct._object*, %struct._object** %bdict, align 8
  %263 = load %struct._object*, %struct._object** @PyExc_UnicodeEncodeError, align 8
  %call747 = call i32 @PyDict_SetItemString(%struct._object* %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), %struct._object* %263)
  %tobool748 = icmp ne i32 %call747, 0
  br i1 %tobool748, label %if.then.749, label %if.end.750

if.then.749:                                      ; preds = %if.end.746
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.750:                                       ; preds = %if.end.746
  %264 = load %struct._object*, %struct._object** %bdict, align 8
  %265 = load %struct._object*, %struct._object** @PyExc_UnicodeDecodeError, align 8
  %call751 = call i32 @PyDict_SetItemString(%struct._object* %264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i32 0, i32 0), %struct._object* %265)
  %tobool752 = icmp ne i32 %call751, 0
  br i1 %tobool752, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %if.end.750
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.754:                                       ; preds = %if.end.750
  %266 = load %struct._object*, %struct._object** %bdict, align 8
  %267 = load %struct._object*, %struct._object** @PyExc_UnicodeTranslateError, align 8
  %call755 = call i32 @PyDict_SetItemString(%struct._object* %266, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), %struct._object* %267)
  %tobool756 = icmp ne i32 %call755, 0
  br i1 %tobool756, label %if.then.757, label %if.end.758

if.then.757:                                      ; preds = %if.end.754
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.758:                                       ; preds = %if.end.754
  %268 = load %struct._object*, %struct._object** %bdict, align 8
  %269 = load %struct._object*, %struct._object** @PyExc_AssertionError, align 8
  %call759 = call i32 @PyDict_SetItemString(%struct._object* %268, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), %struct._object* %269)
  %tobool760 = icmp ne i32 %call759, 0
  br i1 %tobool760, label %if.then.761, label %if.end.762

if.then.761:                                      ; preds = %if.end.758
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.762:                                       ; preds = %if.end.758
  %270 = load %struct._object*, %struct._object** %bdict, align 8
  %271 = load %struct._object*, %struct._object** @PyExc_ArithmeticError, align 8
  %call763 = call i32 @PyDict_SetItemString(%struct._object* %270, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), %struct._object* %271)
  %tobool764 = icmp ne i32 %call763, 0
  br i1 %tobool764, label %if.then.765, label %if.end.766

if.then.765:                                      ; preds = %if.end.762
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.766:                                       ; preds = %if.end.762
  %272 = load %struct._object*, %struct._object** %bdict, align 8
  %273 = load %struct._object*, %struct._object** @PyExc_FloatingPointError, align 8
  %call767 = call i32 @PyDict_SetItemString(%struct._object* %272, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), %struct._object* %273)
  %tobool768 = icmp ne i32 %call767, 0
  br i1 %tobool768, label %if.then.769, label %if.end.770

if.then.769:                                      ; preds = %if.end.766
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.770:                                       ; preds = %if.end.766
  %274 = load %struct._object*, %struct._object** %bdict, align 8
  %275 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  %call771 = call i32 @PyDict_SetItemString(%struct._object* %274, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), %struct._object* %275)
  %tobool772 = icmp ne i32 %call771, 0
  br i1 %tobool772, label %if.then.773, label %if.end.774

if.then.773:                                      ; preds = %if.end.770
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.774:                                       ; preds = %if.end.770
  %276 = load %struct._object*, %struct._object** %bdict, align 8
  %277 = load %struct._object*, %struct._object** @PyExc_ZeroDivisionError, align 8
  %call775 = call i32 @PyDict_SetItemString(%struct._object* %276, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), %struct._object* %277)
  %tobool776 = icmp ne i32 %call775, 0
  br i1 %tobool776, label %if.then.777, label %if.end.778

if.then.777:                                      ; preds = %if.end.774
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.778:                                       ; preds = %if.end.774
  %278 = load %struct._object*, %struct._object** %bdict, align 8
  %279 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %call779 = call i32 @PyDict_SetItemString(%struct._object* %278, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), %struct._object* %279)
  %tobool780 = icmp ne i32 %call779, 0
  br i1 %tobool780, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %if.end.778
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.782:                                       ; preds = %if.end.778
  %280 = load %struct._object*, %struct._object** %bdict, align 8
  %281 = load %struct._object*, %struct._object** @PyExc_ReferenceError, align 8
  %call783 = call i32 @PyDict_SetItemString(%struct._object* %280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), %struct._object* %281)
  %tobool784 = icmp ne i32 %call783, 0
  br i1 %tobool784, label %if.then.785, label %if.end.786

if.then.785:                                      ; preds = %if.end.782
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.786:                                       ; preds = %if.end.782
  %282 = load %struct._object*, %struct._object** %bdict, align 8
  %283 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %call787 = call i32 @PyDict_SetItemString(%struct._object* %282, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), %struct._object* %283)
  %tobool788 = icmp ne i32 %call787, 0
  br i1 %tobool788, label %if.then.789, label %if.end.790

if.then.789:                                      ; preds = %if.end.786
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.790:                                       ; preds = %if.end.786
  %284 = load %struct._object*, %struct._object** %bdict, align 8
  %285 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  %call791 = call i32 @PyDict_SetItemString(%struct._object* %284, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), %struct._object* %285)
  %tobool792 = icmp ne i32 %call791, 0
  br i1 %tobool792, label %if.then.793, label %if.end.794

if.then.793:                                      ; preds = %if.end.790
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.794:                                       ; preds = %if.end.790
  %286 = load %struct._object*, %struct._object** %bdict, align 8
  %287 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8
  %call795 = call i32 @PyDict_SetItemString(%struct._object* %286, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), %struct._object* %287)
  %tobool796 = icmp ne i32 %call795, 0
  br i1 %tobool796, label %if.then.797, label %if.end.798

if.then.797:                                      ; preds = %if.end.794
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.798:                                       ; preds = %if.end.794
  %288 = load %struct._object*, %struct._object** %bdict, align 8
  %289 = load %struct._object*, %struct._object** @PyExc_Warning, align 8
  %call799 = call i32 @PyDict_SetItemString(%struct._object* %288, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0), %struct._object* %289)
  %tobool800 = icmp ne i32 %call799, 0
  br i1 %tobool800, label %if.then.801, label %if.end.802

if.then.801:                                      ; preds = %if.end.798
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.802:                                       ; preds = %if.end.798
  %290 = load %struct._object*, %struct._object** %bdict, align 8
  %291 = load %struct._object*, %struct._object** @PyExc_UserWarning, align 8
  %call803 = call i32 @PyDict_SetItemString(%struct._object* %290, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), %struct._object* %291)
  %tobool804 = icmp ne i32 %call803, 0
  br i1 %tobool804, label %if.then.805, label %if.end.806

if.then.805:                                      ; preds = %if.end.802
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.806:                                       ; preds = %if.end.802
  %292 = load %struct._object*, %struct._object** %bdict, align 8
  %293 = load %struct._object*, %struct._object** @PyExc_DeprecationWarning, align 8
  %call807 = call i32 @PyDict_SetItemString(%struct._object* %292, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.48, i32 0, i32 0), %struct._object* %293)
  %tobool808 = icmp ne i32 %call807, 0
  br i1 %tobool808, label %if.then.809, label %if.end.810

if.then.809:                                      ; preds = %if.end.806
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.810:                                       ; preds = %if.end.806
  %294 = load %struct._object*, %struct._object** %bdict, align 8
  %295 = load %struct._object*, %struct._object** @PyExc_PendingDeprecationWarning, align 8
  %call811 = call i32 @PyDict_SetItemString(%struct._object* %294, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), %struct._object* %295)
  %tobool812 = icmp ne i32 %call811, 0
  br i1 %tobool812, label %if.then.813, label %if.end.814

if.then.813:                                      ; preds = %if.end.810
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.814:                                       ; preds = %if.end.810
  %296 = load %struct._object*, %struct._object** %bdict, align 8
  %297 = load %struct._object*, %struct._object** @PyExc_SyntaxWarning, align 8
  %call815 = call i32 @PyDict_SetItemString(%struct._object* %296, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), %struct._object* %297)
  %tobool816 = icmp ne i32 %call815, 0
  br i1 %tobool816, label %if.then.817, label %if.end.818

if.then.817:                                      ; preds = %if.end.814
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.818:                                       ; preds = %if.end.814
  %298 = load %struct._object*, %struct._object** %bdict, align 8
  %299 = load %struct._object*, %struct._object** @PyExc_RuntimeWarning, align 8
  %call819 = call i32 @PyDict_SetItemString(%struct._object* %298, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0), %struct._object* %299)
  %tobool820 = icmp ne i32 %call819, 0
  br i1 %tobool820, label %if.then.821, label %if.end.822

if.then.821:                                      ; preds = %if.end.818
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.822:                                       ; preds = %if.end.818
  %300 = load %struct._object*, %struct._object** %bdict, align 8
  %301 = load %struct._object*, %struct._object** @PyExc_FutureWarning, align 8
  %call823 = call i32 @PyDict_SetItemString(%struct._object* %300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i32 0, i32 0), %struct._object* %301)
  %tobool824 = icmp ne i32 %call823, 0
  br i1 %tobool824, label %if.then.825, label %if.end.826

if.then.825:                                      ; preds = %if.end.822
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.826:                                       ; preds = %if.end.822
  %302 = load %struct._object*, %struct._object** %bdict, align 8
  %303 = load %struct._object*, %struct._object** @PyExc_ImportWarning, align 8
  %call827 = call i32 @PyDict_SetItemString(%struct._object* %302, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), %struct._object* %303)
  %tobool828 = icmp ne i32 %call827, 0
  br i1 %tobool828, label %if.then.829, label %if.end.830

if.then.829:                                      ; preds = %if.end.826
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.830:                                       ; preds = %if.end.826
  %304 = load %struct._object*, %struct._object** %bdict, align 8
  %305 = load %struct._object*, %struct._object** @PyExc_UnicodeWarning, align 8
  %call831 = call i32 @PyDict_SetItemString(%struct._object* %304, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), %struct._object* %305)
  %tobool832 = icmp ne i32 %call831, 0
  br i1 %tobool832, label %if.then.833, label %if.end.834

if.then.833:                                      ; preds = %if.end.830
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.834:                                       ; preds = %if.end.830
  %306 = load %struct._object*, %struct._object** %bdict, align 8
  %307 = load %struct._object*, %struct._object** @PyExc_BytesWarning, align 8
  %call835 = call i32 @PyDict_SetItemString(%struct._object* %306, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.55, i32 0, i32 0), %struct._object* %307)
  %tobool836 = icmp ne i32 %call835, 0
  br i1 %tobool836, label %if.then.837, label %if.end.838

if.then.837:                                      ; preds = %if.end.834
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.838:                                       ; preds = %if.end.834
  %308 = load %struct._object*, %struct._object** %bdict, align 8
  %309 = load %struct._object*, %struct._object** @PyExc_ResourceWarning, align 8
  %call839 = call i32 @PyDict_SetItemString(%struct._object* %308, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), %struct._object* %309)
  %tobool840 = icmp ne i32 %call839, 0
  br i1 %tobool840, label %if.then.841, label %if.end.842

if.then.841:                                      ; preds = %if.end.838
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.842:                                       ; preds = %if.end.838
  %310 = load %struct._object*, %struct._object** @errnomap, align 8
  %tobool843 = icmp ne %struct._object* %310, null
  br i1 %tobool843, label %if.end.849, label %if.then.844

if.then.844:                                      ; preds = %if.end.842
  %call845 = call %struct._object* @PyDict_New()
  store %struct._object* %call845, %struct._object** @errnomap, align 8
  %311 = load %struct._object*, %struct._object** @errnomap, align 8
  %tobool846 = icmp ne %struct._object* %311, null
  br i1 %tobool846, label %if.end.848, label %if.then.847

if.then.847:                                      ; preds = %if.then.844
  call void @Py_FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i32 0, i32 0)) #5
  unreachable

if.end.848:                                       ; preds = %if.then.844
  br label %if.end.849

if.end.849:                                       ; preds = %if.end.848, %if.end.842
  %312 = load %struct._object*, %struct._object** %bdict, align 8
  %313 = load %struct._object*, %struct._object** @PyExc_ConnectionError, align 8
  %call850 = call i32 @PyDict_SetItemString(%struct._object* %312, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), %struct._object* %313)
  %tobool851 = icmp ne i32 %call850, 0
  br i1 %tobool851, label %if.then.852, label %if.end.853

if.then.852:                                      ; preds = %if.end.849
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.853:                                       ; preds = %if.end.849
  %314 = load %struct._object*, %struct._object** %bdict, align 8
  %315 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call854 = call i32 @PyDict_SetItemString(%struct._object* %314, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.59, i32 0, i32 0), %struct._object* %315)
  %tobool855 = icmp ne i32 %call854, 0
  br i1 %tobool855, label %if.then.856, label %if.end.857

if.then.856:                                      ; preds = %if.end.853
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.857:                                       ; preds = %if.end.853
  %call858 = call %struct._object* @PyLong_FromLong(i64 11)
  store %struct._object* %call858, %struct._object** %_code, align 8
  %316 = load %struct._object*, %struct._object** %_code, align 8
  %tobool859 = icmp ne %struct._object* %316, null
  br i1 %tobool859, label %lor.lhs.false, label %if.then.862

lor.lhs.false:                                    ; preds = %if.end.857
  %317 = load %struct._object*, %struct._object** @errnomap, align 8
  %318 = load %struct._object*, %struct._object** %_code, align 8
  %319 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call860 = call i32 @PyDict_SetItem(%struct._object* %317, %struct._object* %318, %struct._object* %319)
  %tobool861 = icmp ne i32 %call860, 0
  br i1 %tobool861, label %if.then.862, label %if.end.863

if.then.862:                                      ; preds = %lor.lhs.false, %if.end.857
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.863:                                       ; preds = %lor.lhs.false
  br label %do.body.864

do.body.864:                                      ; preds = %if.end.863
  %320 = load %struct._object*, %struct._object** %_code, align 8
  store %struct._object* %320, %struct._object** %_py_decref_tmp865, align 8
  %321 = load %struct._object*, %struct._object** %_py_decref_tmp865, align 8
  %ob_refcnt866 = getelementptr inbounds %struct._object, %struct._object* %321, i32 0, i32 0
  %322 = load i64, i64* %ob_refcnt866, align 8
  %dec867 = add i64 %322, -1
  store i64 %dec867, i64* %ob_refcnt866, align 8
  %cmp868 = icmp ne i64 %dec867, 0
  br i1 %cmp868, label %if.then.869, label %if.else.870

if.then.869:                                      ; preds = %do.body.864
  br label %if.end.873

if.else.870:                                      ; preds = %do.body.864
  %323 = load %struct._object*, %struct._object** %_py_decref_tmp865, align 8
  %ob_type871 = getelementptr inbounds %struct._object, %struct._object* %323, i32 0, i32 1
  %324 = load %struct._typeobject*, %struct._typeobject** %ob_type871, align 8
  %tp_dealloc872 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %324, i32 0, i32 4
  %325 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc872, align 8
  %326 = load %struct._object*, %struct._object** %_py_decref_tmp865, align 8
  call void %325(%struct._object* %326)
  br label %if.end.873

if.end.873:                                       ; preds = %if.else.870, %if.then.869
  br label %do.end.874

do.end.874:                                       ; preds = %if.end.873
  %call876 = call %struct._object* @PyLong_FromLong(i64 114)
  store %struct._object* %call876, %struct._object** %_code875, align 8
  %327 = load %struct._object*, %struct._object** %_code875, align 8
  %tobool877 = icmp ne %struct._object* %327, null
  br i1 %tobool877, label %lor.lhs.false.878, label %if.then.881

lor.lhs.false.878:                                ; preds = %do.end.874
  %328 = load %struct._object*, %struct._object** @errnomap, align 8
  %329 = load %struct._object*, %struct._object** %_code875, align 8
  %330 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call879 = call i32 @PyDict_SetItem(%struct._object* %328, %struct._object* %329, %struct._object* %330)
  %tobool880 = icmp ne i32 %call879, 0
  br i1 %tobool880, label %if.then.881, label %if.end.882

if.then.881:                                      ; preds = %lor.lhs.false.878, %do.end.874
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.882:                                       ; preds = %lor.lhs.false.878
  br label %do.body.883

do.body.883:                                      ; preds = %if.end.882
  %331 = load %struct._object*, %struct._object** %_code875, align 8
  store %struct._object* %331, %struct._object** %_py_decref_tmp884, align 8
  %332 = load %struct._object*, %struct._object** %_py_decref_tmp884, align 8
  %ob_refcnt885 = getelementptr inbounds %struct._object, %struct._object* %332, i32 0, i32 0
  %333 = load i64, i64* %ob_refcnt885, align 8
  %dec886 = add i64 %333, -1
  store i64 %dec886, i64* %ob_refcnt885, align 8
  %cmp887 = icmp ne i64 %dec886, 0
  br i1 %cmp887, label %if.then.888, label %if.else.889

if.then.888:                                      ; preds = %do.body.883
  br label %if.end.892

if.else.889:                                      ; preds = %do.body.883
  %334 = load %struct._object*, %struct._object** %_py_decref_tmp884, align 8
  %ob_type890 = getelementptr inbounds %struct._object, %struct._object* %334, i32 0, i32 1
  %335 = load %struct._typeobject*, %struct._typeobject** %ob_type890, align 8
  %tp_dealloc891 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %335, i32 0, i32 4
  %336 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc891, align 8
  %337 = load %struct._object*, %struct._object** %_py_decref_tmp884, align 8
  call void %336(%struct._object* %337)
  br label %if.end.892

if.end.892:                                       ; preds = %if.else.889, %if.then.888
  br label %do.end.893

do.end.893:                                       ; preds = %if.end.892
  %call895 = call %struct._object* @PyLong_FromLong(i64 115)
  store %struct._object* %call895, %struct._object** %_code894, align 8
  %338 = load %struct._object*, %struct._object** %_code894, align 8
  %tobool896 = icmp ne %struct._object* %338, null
  br i1 %tobool896, label %lor.lhs.false.897, label %if.then.900

lor.lhs.false.897:                                ; preds = %do.end.893
  %339 = load %struct._object*, %struct._object** @errnomap, align 8
  %340 = load %struct._object*, %struct._object** %_code894, align 8
  %341 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call898 = call i32 @PyDict_SetItem(%struct._object* %339, %struct._object* %340, %struct._object* %341)
  %tobool899 = icmp ne i32 %call898, 0
  br i1 %tobool899, label %if.then.900, label %if.end.901

if.then.900:                                      ; preds = %lor.lhs.false.897, %do.end.893
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.901:                                       ; preds = %lor.lhs.false.897
  br label %do.body.902

do.body.902:                                      ; preds = %if.end.901
  %342 = load %struct._object*, %struct._object** %_code894, align 8
  store %struct._object* %342, %struct._object** %_py_decref_tmp903, align 8
  %343 = load %struct._object*, %struct._object** %_py_decref_tmp903, align 8
  %ob_refcnt904 = getelementptr inbounds %struct._object, %struct._object* %343, i32 0, i32 0
  %344 = load i64, i64* %ob_refcnt904, align 8
  %dec905 = add i64 %344, -1
  store i64 %dec905, i64* %ob_refcnt904, align 8
  %cmp906 = icmp ne i64 %dec905, 0
  br i1 %cmp906, label %if.then.907, label %if.else.908

if.then.907:                                      ; preds = %do.body.902
  br label %if.end.911

if.else.908:                                      ; preds = %do.body.902
  %345 = load %struct._object*, %struct._object** %_py_decref_tmp903, align 8
  %ob_type909 = getelementptr inbounds %struct._object, %struct._object* %345, i32 0, i32 1
  %346 = load %struct._typeobject*, %struct._typeobject** %ob_type909, align 8
  %tp_dealloc910 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %346, i32 0, i32 4
  %347 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc910, align 8
  %348 = load %struct._object*, %struct._object** %_py_decref_tmp903, align 8
  call void %347(%struct._object* %348)
  br label %if.end.911

if.end.911:                                       ; preds = %if.else.908, %if.then.907
  br label %do.end.912

do.end.912:                                       ; preds = %if.end.911
  %call914 = call %struct._object* @PyLong_FromLong(i64 11)
  store %struct._object* %call914, %struct._object** %_code913, align 8
  %349 = load %struct._object*, %struct._object** %_code913, align 8
  %tobool915 = icmp ne %struct._object* %349, null
  br i1 %tobool915, label %lor.lhs.false.916, label %if.then.919

lor.lhs.false.916:                                ; preds = %do.end.912
  %350 = load %struct._object*, %struct._object** @errnomap, align 8
  %351 = load %struct._object*, %struct._object** %_code913, align 8
  %352 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %call917 = call i32 @PyDict_SetItem(%struct._object* %350, %struct._object* %351, %struct._object* %352)
  %tobool918 = icmp ne i32 %call917, 0
  br i1 %tobool918, label %if.then.919, label %if.end.920

if.then.919:                                      ; preds = %lor.lhs.false.916, %do.end.912
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.920:                                       ; preds = %lor.lhs.false.916
  br label %do.body.921

do.body.921:                                      ; preds = %if.end.920
  %353 = load %struct._object*, %struct._object** %_code913, align 8
  store %struct._object* %353, %struct._object** %_py_decref_tmp922, align 8
  %354 = load %struct._object*, %struct._object** %_py_decref_tmp922, align 8
  %ob_refcnt923 = getelementptr inbounds %struct._object, %struct._object* %354, i32 0, i32 0
  %355 = load i64, i64* %ob_refcnt923, align 8
  %dec924 = add i64 %355, -1
  store i64 %dec924, i64* %ob_refcnt923, align 8
  %cmp925 = icmp ne i64 %dec924, 0
  br i1 %cmp925, label %if.then.926, label %if.else.927

if.then.926:                                      ; preds = %do.body.921
  br label %if.end.930

if.else.927:                                      ; preds = %do.body.921
  %356 = load %struct._object*, %struct._object** %_py_decref_tmp922, align 8
  %ob_type928 = getelementptr inbounds %struct._object, %struct._object* %356, i32 0, i32 1
  %357 = load %struct._typeobject*, %struct._typeobject** %ob_type928, align 8
  %tp_dealloc929 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %357, i32 0, i32 4
  %358 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc929, align 8
  %359 = load %struct._object*, %struct._object** %_py_decref_tmp922, align 8
  call void %358(%struct._object* %359)
  br label %if.end.930

if.end.930:                                       ; preds = %if.else.927, %if.then.926
  br label %do.end.931

do.end.931:                                       ; preds = %if.end.930
  %360 = load %struct._object*, %struct._object** %bdict, align 8
  %361 = load %struct._object*, %struct._object** @PyExc_BrokenPipeError, align 8
  %call932 = call i32 @PyDict_SetItemString(%struct._object* %360, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), %struct._object* %361)
  %tobool933 = icmp ne i32 %call932, 0
  br i1 %tobool933, label %if.then.934, label %if.end.935

if.then.934:                                      ; preds = %do.end.931
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.935:                                       ; preds = %do.end.931
  %call937 = call %struct._object* @PyLong_FromLong(i64 32)
  store %struct._object* %call937, %struct._object** %_code936, align 8
  %362 = load %struct._object*, %struct._object** %_code936, align 8
  %tobool938 = icmp ne %struct._object* %362, null
  br i1 %tobool938, label %lor.lhs.false.939, label %if.then.942

lor.lhs.false.939:                                ; preds = %if.end.935
  %363 = load %struct._object*, %struct._object** @errnomap, align 8
  %364 = load %struct._object*, %struct._object** %_code936, align 8
  %365 = load %struct._object*, %struct._object** @PyExc_BrokenPipeError, align 8
  %call940 = call i32 @PyDict_SetItem(%struct._object* %363, %struct._object* %364, %struct._object* %365)
  %tobool941 = icmp ne i32 %call940, 0
  br i1 %tobool941, label %if.then.942, label %if.end.943

if.then.942:                                      ; preds = %lor.lhs.false.939, %if.end.935
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.943:                                       ; preds = %lor.lhs.false.939
  br label %do.body.944

do.body.944:                                      ; preds = %if.end.943
  %366 = load %struct._object*, %struct._object** %_code936, align 8
  store %struct._object* %366, %struct._object** %_py_decref_tmp945, align 8
  %367 = load %struct._object*, %struct._object** %_py_decref_tmp945, align 8
  %ob_refcnt946 = getelementptr inbounds %struct._object, %struct._object* %367, i32 0, i32 0
  %368 = load i64, i64* %ob_refcnt946, align 8
  %dec947 = add i64 %368, -1
  store i64 %dec947, i64* %ob_refcnt946, align 8
  %cmp948 = icmp ne i64 %dec947, 0
  br i1 %cmp948, label %if.then.949, label %if.else.950

if.then.949:                                      ; preds = %do.body.944
  br label %if.end.953

if.else.950:                                      ; preds = %do.body.944
  %369 = load %struct._object*, %struct._object** %_py_decref_tmp945, align 8
  %ob_type951 = getelementptr inbounds %struct._object, %struct._object* %369, i32 0, i32 1
  %370 = load %struct._typeobject*, %struct._typeobject** %ob_type951, align 8
  %tp_dealloc952 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %370, i32 0, i32 4
  %371 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc952, align 8
  %372 = load %struct._object*, %struct._object** %_py_decref_tmp945, align 8
  call void %371(%struct._object* %372)
  br label %if.end.953

if.end.953:                                       ; preds = %if.else.950, %if.then.949
  br label %do.end.954

do.end.954:                                       ; preds = %if.end.953
  %call956 = call %struct._object* @PyLong_FromLong(i64 108)
  store %struct._object* %call956, %struct._object** %_code955, align 8
  %373 = load %struct._object*, %struct._object** %_code955, align 8
  %tobool957 = icmp ne %struct._object* %373, null
  br i1 %tobool957, label %lor.lhs.false.958, label %if.then.961

lor.lhs.false.958:                                ; preds = %do.end.954
  %374 = load %struct._object*, %struct._object** @errnomap, align 8
  %375 = load %struct._object*, %struct._object** %_code955, align 8
  %376 = load %struct._object*, %struct._object** @PyExc_BrokenPipeError, align 8
  %call959 = call i32 @PyDict_SetItem(%struct._object* %374, %struct._object* %375, %struct._object* %376)
  %tobool960 = icmp ne i32 %call959, 0
  br i1 %tobool960, label %if.then.961, label %if.end.962

if.then.961:                                      ; preds = %lor.lhs.false.958, %do.end.954
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.962:                                       ; preds = %lor.lhs.false.958
  br label %do.body.963

do.body.963:                                      ; preds = %if.end.962
  %377 = load %struct._object*, %struct._object** %_code955, align 8
  store %struct._object* %377, %struct._object** %_py_decref_tmp964, align 8
  %378 = load %struct._object*, %struct._object** %_py_decref_tmp964, align 8
  %ob_refcnt965 = getelementptr inbounds %struct._object, %struct._object* %378, i32 0, i32 0
  %379 = load i64, i64* %ob_refcnt965, align 8
  %dec966 = add i64 %379, -1
  store i64 %dec966, i64* %ob_refcnt965, align 8
  %cmp967 = icmp ne i64 %dec966, 0
  br i1 %cmp967, label %if.then.968, label %if.else.969

if.then.968:                                      ; preds = %do.body.963
  br label %if.end.972

if.else.969:                                      ; preds = %do.body.963
  %380 = load %struct._object*, %struct._object** %_py_decref_tmp964, align 8
  %ob_type970 = getelementptr inbounds %struct._object, %struct._object* %380, i32 0, i32 1
  %381 = load %struct._typeobject*, %struct._typeobject** %ob_type970, align 8
  %tp_dealloc971 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %381, i32 0, i32 4
  %382 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc971, align 8
  %383 = load %struct._object*, %struct._object** %_py_decref_tmp964, align 8
  call void %382(%struct._object* %383)
  br label %if.end.972

if.end.972:                                       ; preds = %if.else.969, %if.then.968
  br label %do.end.973

do.end.973:                                       ; preds = %if.end.972
  %384 = load %struct._object*, %struct._object** %bdict, align 8
  %385 = load %struct._object*, %struct._object** @PyExc_ChildProcessError, align 8
  %call974 = call i32 @PyDict_SetItemString(%struct._object* %384, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), %struct._object* %385)
  %tobool975 = icmp ne i32 %call974, 0
  br i1 %tobool975, label %if.then.976, label %if.end.977

if.then.976:                                      ; preds = %do.end.973
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.977:                                       ; preds = %do.end.973
  %call979 = call %struct._object* @PyLong_FromLong(i64 10)
  store %struct._object* %call979, %struct._object** %_code978, align 8
  %386 = load %struct._object*, %struct._object** %_code978, align 8
  %tobool980 = icmp ne %struct._object* %386, null
  br i1 %tobool980, label %lor.lhs.false.981, label %if.then.984

lor.lhs.false.981:                                ; preds = %if.end.977
  %387 = load %struct._object*, %struct._object** @errnomap, align 8
  %388 = load %struct._object*, %struct._object** %_code978, align 8
  %389 = load %struct._object*, %struct._object** @PyExc_ChildProcessError, align 8
  %call982 = call i32 @PyDict_SetItem(%struct._object* %387, %struct._object* %388, %struct._object* %389)
  %tobool983 = icmp ne i32 %call982, 0
  br i1 %tobool983, label %if.then.984, label %if.end.985

if.then.984:                                      ; preds = %lor.lhs.false.981, %if.end.977
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.985:                                       ; preds = %lor.lhs.false.981
  br label %do.body.986

do.body.986:                                      ; preds = %if.end.985
  %390 = load %struct._object*, %struct._object** %_code978, align 8
  store %struct._object* %390, %struct._object** %_py_decref_tmp987, align 8
  %391 = load %struct._object*, %struct._object** %_py_decref_tmp987, align 8
  %ob_refcnt988 = getelementptr inbounds %struct._object, %struct._object* %391, i32 0, i32 0
  %392 = load i64, i64* %ob_refcnt988, align 8
  %dec989 = add i64 %392, -1
  store i64 %dec989, i64* %ob_refcnt988, align 8
  %cmp990 = icmp ne i64 %dec989, 0
  br i1 %cmp990, label %if.then.991, label %if.else.992

if.then.991:                                      ; preds = %do.body.986
  br label %if.end.995

if.else.992:                                      ; preds = %do.body.986
  %393 = load %struct._object*, %struct._object** %_py_decref_tmp987, align 8
  %ob_type993 = getelementptr inbounds %struct._object, %struct._object* %393, i32 0, i32 1
  %394 = load %struct._typeobject*, %struct._typeobject** %ob_type993, align 8
  %tp_dealloc994 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %394, i32 0, i32 4
  %395 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc994, align 8
  %396 = load %struct._object*, %struct._object** %_py_decref_tmp987, align 8
  call void %395(%struct._object* %396)
  br label %if.end.995

if.end.995:                                       ; preds = %if.else.992, %if.then.991
  br label %do.end.996

do.end.996:                                       ; preds = %if.end.995
  %397 = load %struct._object*, %struct._object** %bdict, align 8
  %398 = load %struct._object*, %struct._object** @PyExc_ConnectionAbortedError, align 8
  %call997 = call i32 @PyDict_SetItemString(%struct._object* %397, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.63, i32 0, i32 0), %struct._object* %398)
  %tobool998 = icmp ne i32 %call997, 0
  br i1 %tobool998, label %if.then.999, label %if.end.1000

if.then.999:                                      ; preds = %do.end.996
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1000:                                      ; preds = %do.end.996
  %call1002 = call %struct._object* @PyLong_FromLong(i64 103)
  store %struct._object* %call1002, %struct._object** %_code1001, align 8
  %399 = load %struct._object*, %struct._object** %_code1001, align 8
  %tobool1003 = icmp ne %struct._object* %399, null
  br i1 %tobool1003, label %lor.lhs.false.1004, label %if.then.1007

lor.lhs.false.1004:                               ; preds = %if.end.1000
  %400 = load %struct._object*, %struct._object** @errnomap, align 8
  %401 = load %struct._object*, %struct._object** %_code1001, align 8
  %402 = load %struct._object*, %struct._object** @PyExc_ConnectionAbortedError, align 8
  %call1005 = call i32 @PyDict_SetItem(%struct._object* %400, %struct._object* %401, %struct._object* %402)
  %tobool1006 = icmp ne i32 %call1005, 0
  br i1 %tobool1006, label %if.then.1007, label %if.end.1008

if.then.1007:                                     ; preds = %lor.lhs.false.1004, %if.end.1000
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1008:                                      ; preds = %lor.lhs.false.1004
  br label %do.body.1009

do.body.1009:                                     ; preds = %if.end.1008
  %403 = load %struct._object*, %struct._object** %_code1001, align 8
  store %struct._object* %403, %struct._object** %_py_decref_tmp1010, align 8
  %404 = load %struct._object*, %struct._object** %_py_decref_tmp1010, align 8
  %ob_refcnt1011 = getelementptr inbounds %struct._object, %struct._object* %404, i32 0, i32 0
  %405 = load i64, i64* %ob_refcnt1011, align 8
  %dec1012 = add i64 %405, -1
  store i64 %dec1012, i64* %ob_refcnt1011, align 8
  %cmp1013 = icmp ne i64 %dec1012, 0
  br i1 %cmp1013, label %if.then.1014, label %if.else.1015

if.then.1014:                                     ; preds = %do.body.1009
  br label %if.end.1018

if.else.1015:                                     ; preds = %do.body.1009
  %406 = load %struct._object*, %struct._object** %_py_decref_tmp1010, align 8
  %ob_type1016 = getelementptr inbounds %struct._object, %struct._object* %406, i32 0, i32 1
  %407 = load %struct._typeobject*, %struct._typeobject** %ob_type1016, align 8
  %tp_dealloc1017 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %407, i32 0, i32 4
  %408 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1017, align 8
  %409 = load %struct._object*, %struct._object** %_py_decref_tmp1010, align 8
  call void %408(%struct._object* %409)
  br label %if.end.1018

if.end.1018:                                      ; preds = %if.else.1015, %if.then.1014
  br label %do.end.1019

do.end.1019:                                      ; preds = %if.end.1018
  %410 = load %struct._object*, %struct._object** %bdict, align 8
  %411 = load %struct._object*, %struct._object** @PyExc_ConnectionRefusedError, align 8
  %call1020 = call i32 @PyDict_SetItemString(%struct._object* %410, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.64, i32 0, i32 0), %struct._object* %411)
  %tobool1021 = icmp ne i32 %call1020, 0
  br i1 %tobool1021, label %if.then.1022, label %if.end.1023

if.then.1022:                                     ; preds = %do.end.1019
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1023:                                      ; preds = %do.end.1019
  %call1025 = call %struct._object* @PyLong_FromLong(i64 111)
  store %struct._object* %call1025, %struct._object** %_code1024, align 8
  %412 = load %struct._object*, %struct._object** %_code1024, align 8
  %tobool1026 = icmp ne %struct._object* %412, null
  br i1 %tobool1026, label %lor.lhs.false.1027, label %if.then.1030

lor.lhs.false.1027:                               ; preds = %if.end.1023
  %413 = load %struct._object*, %struct._object** @errnomap, align 8
  %414 = load %struct._object*, %struct._object** %_code1024, align 8
  %415 = load %struct._object*, %struct._object** @PyExc_ConnectionRefusedError, align 8
  %call1028 = call i32 @PyDict_SetItem(%struct._object* %413, %struct._object* %414, %struct._object* %415)
  %tobool1029 = icmp ne i32 %call1028, 0
  br i1 %tobool1029, label %if.then.1030, label %if.end.1031

if.then.1030:                                     ; preds = %lor.lhs.false.1027, %if.end.1023
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1031:                                      ; preds = %lor.lhs.false.1027
  br label %do.body.1032

do.body.1032:                                     ; preds = %if.end.1031
  %416 = load %struct._object*, %struct._object** %_code1024, align 8
  store %struct._object* %416, %struct._object** %_py_decref_tmp1033, align 8
  %417 = load %struct._object*, %struct._object** %_py_decref_tmp1033, align 8
  %ob_refcnt1034 = getelementptr inbounds %struct._object, %struct._object* %417, i32 0, i32 0
  %418 = load i64, i64* %ob_refcnt1034, align 8
  %dec1035 = add i64 %418, -1
  store i64 %dec1035, i64* %ob_refcnt1034, align 8
  %cmp1036 = icmp ne i64 %dec1035, 0
  br i1 %cmp1036, label %if.then.1037, label %if.else.1038

if.then.1037:                                     ; preds = %do.body.1032
  br label %if.end.1041

if.else.1038:                                     ; preds = %do.body.1032
  %419 = load %struct._object*, %struct._object** %_py_decref_tmp1033, align 8
  %ob_type1039 = getelementptr inbounds %struct._object, %struct._object* %419, i32 0, i32 1
  %420 = load %struct._typeobject*, %struct._typeobject** %ob_type1039, align 8
  %tp_dealloc1040 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %420, i32 0, i32 4
  %421 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1040, align 8
  %422 = load %struct._object*, %struct._object** %_py_decref_tmp1033, align 8
  call void %421(%struct._object* %422)
  br label %if.end.1041

if.end.1041:                                      ; preds = %if.else.1038, %if.then.1037
  br label %do.end.1042

do.end.1042:                                      ; preds = %if.end.1041
  %423 = load %struct._object*, %struct._object** %bdict, align 8
  %424 = load %struct._object*, %struct._object** @PyExc_ConnectionResetError, align 8
  %call1043 = call i32 @PyDict_SetItemString(%struct._object* %423, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.65, i32 0, i32 0), %struct._object* %424)
  %tobool1044 = icmp ne i32 %call1043, 0
  br i1 %tobool1044, label %if.then.1045, label %if.end.1046

if.then.1045:                                     ; preds = %do.end.1042
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1046:                                      ; preds = %do.end.1042
  %call1048 = call %struct._object* @PyLong_FromLong(i64 104)
  store %struct._object* %call1048, %struct._object** %_code1047, align 8
  %425 = load %struct._object*, %struct._object** %_code1047, align 8
  %tobool1049 = icmp ne %struct._object* %425, null
  br i1 %tobool1049, label %lor.lhs.false.1050, label %if.then.1053

lor.lhs.false.1050:                               ; preds = %if.end.1046
  %426 = load %struct._object*, %struct._object** @errnomap, align 8
  %427 = load %struct._object*, %struct._object** %_code1047, align 8
  %428 = load %struct._object*, %struct._object** @PyExc_ConnectionResetError, align 8
  %call1051 = call i32 @PyDict_SetItem(%struct._object* %426, %struct._object* %427, %struct._object* %428)
  %tobool1052 = icmp ne i32 %call1051, 0
  br i1 %tobool1052, label %if.then.1053, label %if.end.1054

if.then.1053:                                     ; preds = %lor.lhs.false.1050, %if.end.1046
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1054:                                      ; preds = %lor.lhs.false.1050
  br label %do.body.1055

do.body.1055:                                     ; preds = %if.end.1054
  %429 = load %struct._object*, %struct._object** %_code1047, align 8
  store %struct._object* %429, %struct._object** %_py_decref_tmp1056, align 8
  %430 = load %struct._object*, %struct._object** %_py_decref_tmp1056, align 8
  %ob_refcnt1057 = getelementptr inbounds %struct._object, %struct._object* %430, i32 0, i32 0
  %431 = load i64, i64* %ob_refcnt1057, align 8
  %dec1058 = add i64 %431, -1
  store i64 %dec1058, i64* %ob_refcnt1057, align 8
  %cmp1059 = icmp ne i64 %dec1058, 0
  br i1 %cmp1059, label %if.then.1060, label %if.else.1061

if.then.1060:                                     ; preds = %do.body.1055
  br label %if.end.1064

if.else.1061:                                     ; preds = %do.body.1055
  %432 = load %struct._object*, %struct._object** %_py_decref_tmp1056, align 8
  %ob_type1062 = getelementptr inbounds %struct._object, %struct._object* %432, i32 0, i32 1
  %433 = load %struct._typeobject*, %struct._typeobject** %ob_type1062, align 8
  %tp_dealloc1063 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %433, i32 0, i32 4
  %434 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1063, align 8
  %435 = load %struct._object*, %struct._object** %_py_decref_tmp1056, align 8
  call void %434(%struct._object* %435)
  br label %if.end.1064

if.end.1064:                                      ; preds = %if.else.1061, %if.then.1060
  br label %do.end.1065

do.end.1065:                                      ; preds = %if.end.1064
  %436 = load %struct._object*, %struct._object** %bdict, align 8
  %437 = load %struct._object*, %struct._object** @PyExc_FileExistsError, align 8
  %call1066 = call i32 @PyDict_SetItemString(%struct._object* %436, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), %struct._object* %437)
  %tobool1067 = icmp ne i32 %call1066, 0
  br i1 %tobool1067, label %if.then.1068, label %if.end.1069

if.then.1068:                                     ; preds = %do.end.1065
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1069:                                      ; preds = %do.end.1065
  %call1071 = call %struct._object* @PyLong_FromLong(i64 17)
  store %struct._object* %call1071, %struct._object** %_code1070, align 8
  %438 = load %struct._object*, %struct._object** %_code1070, align 8
  %tobool1072 = icmp ne %struct._object* %438, null
  br i1 %tobool1072, label %lor.lhs.false.1073, label %if.then.1076

lor.lhs.false.1073:                               ; preds = %if.end.1069
  %439 = load %struct._object*, %struct._object** @errnomap, align 8
  %440 = load %struct._object*, %struct._object** %_code1070, align 8
  %441 = load %struct._object*, %struct._object** @PyExc_FileExistsError, align 8
  %call1074 = call i32 @PyDict_SetItem(%struct._object* %439, %struct._object* %440, %struct._object* %441)
  %tobool1075 = icmp ne i32 %call1074, 0
  br i1 %tobool1075, label %if.then.1076, label %if.end.1077

if.then.1076:                                     ; preds = %lor.lhs.false.1073, %if.end.1069
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1077:                                      ; preds = %lor.lhs.false.1073
  br label %do.body.1078

do.body.1078:                                     ; preds = %if.end.1077
  %442 = load %struct._object*, %struct._object** %_code1070, align 8
  store %struct._object* %442, %struct._object** %_py_decref_tmp1079, align 8
  %443 = load %struct._object*, %struct._object** %_py_decref_tmp1079, align 8
  %ob_refcnt1080 = getelementptr inbounds %struct._object, %struct._object* %443, i32 0, i32 0
  %444 = load i64, i64* %ob_refcnt1080, align 8
  %dec1081 = add i64 %444, -1
  store i64 %dec1081, i64* %ob_refcnt1080, align 8
  %cmp1082 = icmp ne i64 %dec1081, 0
  br i1 %cmp1082, label %if.then.1083, label %if.else.1084

if.then.1083:                                     ; preds = %do.body.1078
  br label %if.end.1087

if.else.1084:                                     ; preds = %do.body.1078
  %445 = load %struct._object*, %struct._object** %_py_decref_tmp1079, align 8
  %ob_type1085 = getelementptr inbounds %struct._object, %struct._object* %445, i32 0, i32 1
  %446 = load %struct._typeobject*, %struct._typeobject** %ob_type1085, align 8
  %tp_dealloc1086 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %446, i32 0, i32 4
  %447 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1086, align 8
  %448 = load %struct._object*, %struct._object** %_py_decref_tmp1079, align 8
  call void %447(%struct._object* %448)
  br label %if.end.1087

if.end.1087:                                      ; preds = %if.else.1084, %if.then.1083
  br label %do.end.1088

do.end.1088:                                      ; preds = %if.end.1087
  %449 = load %struct._object*, %struct._object** %bdict, align 8
  %450 = load %struct._object*, %struct._object** @PyExc_FileNotFoundError, align 8
  %call1089 = call i32 @PyDict_SetItemString(%struct._object* %449, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), %struct._object* %450)
  %tobool1090 = icmp ne i32 %call1089, 0
  br i1 %tobool1090, label %if.then.1091, label %if.end.1092

if.then.1091:                                     ; preds = %do.end.1088
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1092:                                      ; preds = %do.end.1088
  %call1094 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call1094, %struct._object** %_code1093, align 8
  %451 = load %struct._object*, %struct._object** %_code1093, align 8
  %tobool1095 = icmp ne %struct._object* %451, null
  br i1 %tobool1095, label %lor.lhs.false.1096, label %if.then.1099

lor.lhs.false.1096:                               ; preds = %if.end.1092
  %452 = load %struct._object*, %struct._object** @errnomap, align 8
  %453 = load %struct._object*, %struct._object** %_code1093, align 8
  %454 = load %struct._object*, %struct._object** @PyExc_FileNotFoundError, align 8
  %call1097 = call i32 @PyDict_SetItem(%struct._object* %452, %struct._object* %453, %struct._object* %454)
  %tobool1098 = icmp ne i32 %call1097, 0
  br i1 %tobool1098, label %if.then.1099, label %if.end.1100

if.then.1099:                                     ; preds = %lor.lhs.false.1096, %if.end.1092
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1100:                                      ; preds = %lor.lhs.false.1096
  br label %do.body.1101

do.body.1101:                                     ; preds = %if.end.1100
  %455 = load %struct._object*, %struct._object** %_code1093, align 8
  store %struct._object* %455, %struct._object** %_py_decref_tmp1102, align 8
  %456 = load %struct._object*, %struct._object** %_py_decref_tmp1102, align 8
  %ob_refcnt1103 = getelementptr inbounds %struct._object, %struct._object* %456, i32 0, i32 0
  %457 = load i64, i64* %ob_refcnt1103, align 8
  %dec1104 = add i64 %457, -1
  store i64 %dec1104, i64* %ob_refcnt1103, align 8
  %cmp1105 = icmp ne i64 %dec1104, 0
  br i1 %cmp1105, label %if.then.1106, label %if.else.1107

if.then.1106:                                     ; preds = %do.body.1101
  br label %if.end.1110

if.else.1107:                                     ; preds = %do.body.1101
  %458 = load %struct._object*, %struct._object** %_py_decref_tmp1102, align 8
  %ob_type1108 = getelementptr inbounds %struct._object, %struct._object* %458, i32 0, i32 1
  %459 = load %struct._typeobject*, %struct._typeobject** %ob_type1108, align 8
  %tp_dealloc1109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %459, i32 0, i32 4
  %460 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1109, align 8
  %461 = load %struct._object*, %struct._object** %_py_decref_tmp1102, align 8
  call void %460(%struct._object* %461)
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.else.1107, %if.then.1106
  br label %do.end.1111

do.end.1111:                                      ; preds = %if.end.1110
  %462 = load %struct._object*, %struct._object** %bdict, align 8
  %463 = load %struct._object*, %struct._object** @PyExc_IsADirectoryError, align 8
  %call1112 = call i32 @PyDict_SetItemString(%struct._object* %462, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), %struct._object* %463)
  %tobool1113 = icmp ne i32 %call1112, 0
  br i1 %tobool1113, label %if.then.1114, label %if.end.1115

if.then.1114:                                     ; preds = %do.end.1111
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1115:                                      ; preds = %do.end.1111
  %call1117 = call %struct._object* @PyLong_FromLong(i64 21)
  store %struct._object* %call1117, %struct._object** %_code1116, align 8
  %464 = load %struct._object*, %struct._object** %_code1116, align 8
  %tobool1118 = icmp ne %struct._object* %464, null
  br i1 %tobool1118, label %lor.lhs.false.1119, label %if.then.1122

lor.lhs.false.1119:                               ; preds = %if.end.1115
  %465 = load %struct._object*, %struct._object** @errnomap, align 8
  %466 = load %struct._object*, %struct._object** %_code1116, align 8
  %467 = load %struct._object*, %struct._object** @PyExc_IsADirectoryError, align 8
  %call1120 = call i32 @PyDict_SetItem(%struct._object* %465, %struct._object* %466, %struct._object* %467)
  %tobool1121 = icmp ne i32 %call1120, 0
  br i1 %tobool1121, label %if.then.1122, label %if.end.1123

if.then.1122:                                     ; preds = %lor.lhs.false.1119, %if.end.1115
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1123:                                      ; preds = %lor.lhs.false.1119
  br label %do.body.1124

do.body.1124:                                     ; preds = %if.end.1123
  %468 = load %struct._object*, %struct._object** %_code1116, align 8
  store %struct._object* %468, %struct._object** %_py_decref_tmp1125, align 8
  %469 = load %struct._object*, %struct._object** %_py_decref_tmp1125, align 8
  %ob_refcnt1126 = getelementptr inbounds %struct._object, %struct._object* %469, i32 0, i32 0
  %470 = load i64, i64* %ob_refcnt1126, align 8
  %dec1127 = add i64 %470, -1
  store i64 %dec1127, i64* %ob_refcnt1126, align 8
  %cmp1128 = icmp ne i64 %dec1127, 0
  br i1 %cmp1128, label %if.then.1129, label %if.else.1130

if.then.1129:                                     ; preds = %do.body.1124
  br label %if.end.1133

if.else.1130:                                     ; preds = %do.body.1124
  %471 = load %struct._object*, %struct._object** %_py_decref_tmp1125, align 8
  %ob_type1131 = getelementptr inbounds %struct._object, %struct._object* %471, i32 0, i32 1
  %472 = load %struct._typeobject*, %struct._typeobject** %ob_type1131, align 8
  %tp_dealloc1132 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %472, i32 0, i32 4
  %473 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1132, align 8
  %474 = load %struct._object*, %struct._object** %_py_decref_tmp1125, align 8
  call void %473(%struct._object* %474)
  br label %if.end.1133

if.end.1133:                                      ; preds = %if.else.1130, %if.then.1129
  br label %do.end.1134

do.end.1134:                                      ; preds = %if.end.1133
  %475 = load %struct._object*, %struct._object** %bdict, align 8
  %476 = load %struct._object*, %struct._object** @PyExc_NotADirectoryError, align 8
  %call1135 = call i32 @PyDict_SetItemString(%struct._object* %475, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), %struct._object* %476)
  %tobool1136 = icmp ne i32 %call1135, 0
  br i1 %tobool1136, label %if.then.1137, label %if.end.1138

if.then.1137:                                     ; preds = %do.end.1134
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1138:                                      ; preds = %do.end.1134
  %call1140 = call %struct._object* @PyLong_FromLong(i64 20)
  store %struct._object* %call1140, %struct._object** %_code1139, align 8
  %477 = load %struct._object*, %struct._object** %_code1139, align 8
  %tobool1141 = icmp ne %struct._object* %477, null
  br i1 %tobool1141, label %lor.lhs.false.1142, label %if.then.1145

lor.lhs.false.1142:                               ; preds = %if.end.1138
  %478 = load %struct._object*, %struct._object** @errnomap, align 8
  %479 = load %struct._object*, %struct._object** %_code1139, align 8
  %480 = load %struct._object*, %struct._object** @PyExc_NotADirectoryError, align 8
  %call1143 = call i32 @PyDict_SetItem(%struct._object* %478, %struct._object* %479, %struct._object* %480)
  %tobool1144 = icmp ne i32 %call1143, 0
  br i1 %tobool1144, label %if.then.1145, label %if.end.1146

if.then.1145:                                     ; preds = %lor.lhs.false.1142, %if.end.1138
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1146:                                      ; preds = %lor.lhs.false.1142
  br label %do.body.1147

do.body.1147:                                     ; preds = %if.end.1146
  %481 = load %struct._object*, %struct._object** %_code1139, align 8
  store %struct._object* %481, %struct._object** %_py_decref_tmp1148, align 8
  %482 = load %struct._object*, %struct._object** %_py_decref_tmp1148, align 8
  %ob_refcnt1149 = getelementptr inbounds %struct._object, %struct._object* %482, i32 0, i32 0
  %483 = load i64, i64* %ob_refcnt1149, align 8
  %dec1150 = add i64 %483, -1
  store i64 %dec1150, i64* %ob_refcnt1149, align 8
  %cmp1151 = icmp ne i64 %dec1150, 0
  br i1 %cmp1151, label %if.then.1152, label %if.else.1153

if.then.1152:                                     ; preds = %do.body.1147
  br label %if.end.1156

if.else.1153:                                     ; preds = %do.body.1147
  %484 = load %struct._object*, %struct._object** %_py_decref_tmp1148, align 8
  %ob_type1154 = getelementptr inbounds %struct._object, %struct._object* %484, i32 0, i32 1
  %485 = load %struct._typeobject*, %struct._typeobject** %ob_type1154, align 8
  %tp_dealloc1155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %485, i32 0, i32 4
  %486 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1155, align 8
  %487 = load %struct._object*, %struct._object** %_py_decref_tmp1148, align 8
  call void %486(%struct._object* %487)
  br label %if.end.1156

if.end.1156:                                      ; preds = %if.else.1153, %if.then.1152
  br label %do.end.1157

do.end.1157:                                      ; preds = %if.end.1156
  %488 = load %struct._object*, %struct._object** %bdict, align 8
  %489 = load %struct._object*, %struct._object** @PyExc_InterruptedError, align 8
  %call1158 = call i32 @PyDict_SetItemString(%struct._object* %488, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), %struct._object* %489)
  %tobool1159 = icmp ne i32 %call1158, 0
  br i1 %tobool1159, label %if.then.1160, label %if.end.1161

if.then.1160:                                     ; preds = %do.end.1157
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1161:                                      ; preds = %do.end.1157
  %call1163 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call1163, %struct._object** %_code1162, align 8
  %490 = load %struct._object*, %struct._object** %_code1162, align 8
  %tobool1164 = icmp ne %struct._object* %490, null
  br i1 %tobool1164, label %lor.lhs.false.1165, label %if.then.1168

lor.lhs.false.1165:                               ; preds = %if.end.1161
  %491 = load %struct._object*, %struct._object** @errnomap, align 8
  %492 = load %struct._object*, %struct._object** %_code1162, align 8
  %493 = load %struct._object*, %struct._object** @PyExc_InterruptedError, align 8
  %call1166 = call i32 @PyDict_SetItem(%struct._object* %491, %struct._object* %492, %struct._object* %493)
  %tobool1167 = icmp ne i32 %call1166, 0
  br i1 %tobool1167, label %if.then.1168, label %if.end.1169

if.then.1168:                                     ; preds = %lor.lhs.false.1165, %if.end.1161
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1169:                                      ; preds = %lor.lhs.false.1165
  br label %do.body.1170

do.body.1170:                                     ; preds = %if.end.1169
  %494 = load %struct._object*, %struct._object** %_code1162, align 8
  store %struct._object* %494, %struct._object** %_py_decref_tmp1171, align 8
  %495 = load %struct._object*, %struct._object** %_py_decref_tmp1171, align 8
  %ob_refcnt1172 = getelementptr inbounds %struct._object, %struct._object* %495, i32 0, i32 0
  %496 = load i64, i64* %ob_refcnt1172, align 8
  %dec1173 = add i64 %496, -1
  store i64 %dec1173, i64* %ob_refcnt1172, align 8
  %cmp1174 = icmp ne i64 %dec1173, 0
  br i1 %cmp1174, label %if.then.1175, label %if.else.1176

if.then.1175:                                     ; preds = %do.body.1170
  br label %if.end.1179

if.else.1176:                                     ; preds = %do.body.1170
  %497 = load %struct._object*, %struct._object** %_py_decref_tmp1171, align 8
  %ob_type1177 = getelementptr inbounds %struct._object, %struct._object* %497, i32 0, i32 1
  %498 = load %struct._typeobject*, %struct._typeobject** %ob_type1177, align 8
  %tp_dealloc1178 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %498, i32 0, i32 4
  %499 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1178, align 8
  %500 = load %struct._object*, %struct._object** %_py_decref_tmp1171, align 8
  call void %499(%struct._object* %500)
  br label %if.end.1179

if.end.1179:                                      ; preds = %if.else.1176, %if.then.1175
  br label %do.end.1180

do.end.1180:                                      ; preds = %if.end.1179
  %501 = load %struct._object*, %struct._object** %bdict, align 8
  %502 = load %struct._object*, %struct._object** @PyExc_PermissionError, align 8
  %call1181 = call i32 @PyDict_SetItemString(%struct._object* %501, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i32 0, i32 0), %struct._object* %502)
  %tobool1182 = icmp ne i32 %call1181, 0
  br i1 %tobool1182, label %if.then.1183, label %if.end.1184

if.then.1183:                                     ; preds = %do.end.1180
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1184:                                      ; preds = %do.end.1180
  %call1186 = call %struct._object* @PyLong_FromLong(i64 13)
  store %struct._object* %call1186, %struct._object** %_code1185, align 8
  %503 = load %struct._object*, %struct._object** %_code1185, align 8
  %tobool1187 = icmp ne %struct._object* %503, null
  br i1 %tobool1187, label %lor.lhs.false.1188, label %if.then.1191

lor.lhs.false.1188:                               ; preds = %if.end.1184
  %504 = load %struct._object*, %struct._object** @errnomap, align 8
  %505 = load %struct._object*, %struct._object** %_code1185, align 8
  %506 = load %struct._object*, %struct._object** @PyExc_PermissionError, align 8
  %call1189 = call i32 @PyDict_SetItem(%struct._object* %504, %struct._object* %505, %struct._object* %506)
  %tobool1190 = icmp ne i32 %call1189, 0
  br i1 %tobool1190, label %if.then.1191, label %if.end.1192

if.then.1191:                                     ; preds = %lor.lhs.false.1188, %if.end.1184
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1192:                                      ; preds = %lor.lhs.false.1188
  br label %do.body.1193

do.body.1193:                                     ; preds = %if.end.1192
  %507 = load %struct._object*, %struct._object** %_code1185, align 8
  store %struct._object* %507, %struct._object** %_py_decref_tmp1194, align 8
  %508 = load %struct._object*, %struct._object** %_py_decref_tmp1194, align 8
  %ob_refcnt1195 = getelementptr inbounds %struct._object, %struct._object* %508, i32 0, i32 0
  %509 = load i64, i64* %ob_refcnt1195, align 8
  %dec1196 = add i64 %509, -1
  store i64 %dec1196, i64* %ob_refcnt1195, align 8
  %cmp1197 = icmp ne i64 %dec1196, 0
  br i1 %cmp1197, label %if.then.1198, label %if.else.1199

if.then.1198:                                     ; preds = %do.body.1193
  br label %if.end.1202

if.else.1199:                                     ; preds = %do.body.1193
  %510 = load %struct._object*, %struct._object** %_py_decref_tmp1194, align 8
  %ob_type1200 = getelementptr inbounds %struct._object, %struct._object* %510, i32 0, i32 1
  %511 = load %struct._typeobject*, %struct._typeobject** %ob_type1200, align 8
  %tp_dealloc1201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %511, i32 0, i32 4
  %512 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1201, align 8
  %513 = load %struct._object*, %struct._object** %_py_decref_tmp1194, align 8
  call void %512(%struct._object* %513)
  br label %if.end.1202

if.end.1202:                                      ; preds = %if.else.1199, %if.then.1198
  br label %do.end.1203

do.end.1203:                                      ; preds = %if.end.1202
  %call1205 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call1205, %struct._object** %_code1204, align 8
  %514 = load %struct._object*, %struct._object** %_code1204, align 8
  %tobool1206 = icmp ne %struct._object* %514, null
  br i1 %tobool1206, label %lor.lhs.false.1207, label %if.then.1210

lor.lhs.false.1207:                               ; preds = %do.end.1203
  %515 = load %struct._object*, %struct._object** @errnomap, align 8
  %516 = load %struct._object*, %struct._object** %_code1204, align 8
  %517 = load %struct._object*, %struct._object** @PyExc_PermissionError, align 8
  %call1208 = call i32 @PyDict_SetItem(%struct._object* %515, %struct._object* %516, %struct._object* %517)
  %tobool1209 = icmp ne i32 %call1208, 0
  br i1 %tobool1209, label %if.then.1210, label %if.end.1211

if.then.1210:                                     ; preds = %lor.lhs.false.1207, %do.end.1203
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1211:                                      ; preds = %lor.lhs.false.1207
  br label %do.body.1212

do.body.1212:                                     ; preds = %if.end.1211
  %518 = load %struct._object*, %struct._object** %_code1204, align 8
  store %struct._object* %518, %struct._object** %_py_decref_tmp1213, align 8
  %519 = load %struct._object*, %struct._object** %_py_decref_tmp1213, align 8
  %ob_refcnt1214 = getelementptr inbounds %struct._object, %struct._object* %519, i32 0, i32 0
  %520 = load i64, i64* %ob_refcnt1214, align 8
  %dec1215 = add i64 %520, -1
  store i64 %dec1215, i64* %ob_refcnt1214, align 8
  %cmp1216 = icmp ne i64 %dec1215, 0
  br i1 %cmp1216, label %if.then.1217, label %if.else.1218

if.then.1217:                                     ; preds = %do.body.1212
  br label %if.end.1221

if.else.1218:                                     ; preds = %do.body.1212
  %521 = load %struct._object*, %struct._object** %_py_decref_tmp1213, align 8
  %ob_type1219 = getelementptr inbounds %struct._object, %struct._object* %521, i32 0, i32 1
  %522 = load %struct._typeobject*, %struct._typeobject** %ob_type1219, align 8
  %tp_dealloc1220 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %522, i32 0, i32 4
  %523 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1220, align 8
  %524 = load %struct._object*, %struct._object** %_py_decref_tmp1213, align 8
  call void %523(%struct._object* %524)
  br label %if.end.1221

if.end.1221:                                      ; preds = %if.else.1218, %if.then.1217
  br label %do.end.1222

do.end.1222:                                      ; preds = %if.end.1221
  %525 = load %struct._object*, %struct._object** %bdict, align 8
  %526 = load %struct._object*, %struct._object** @PyExc_ProcessLookupError, align 8
  %call1223 = call i32 @PyDict_SetItemString(%struct._object* %525, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0), %struct._object* %526)
  %tobool1224 = icmp ne i32 %call1223, 0
  br i1 %tobool1224, label %if.then.1225, label %if.end.1226

if.then.1225:                                     ; preds = %do.end.1222
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1226:                                      ; preds = %do.end.1222
  %call1228 = call %struct._object* @PyLong_FromLong(i64 3)
  store %struct._object* %call1228, %struct._object** %_code1227, align 8
  %527 = load %struct._object*, %struct._object** %_code1227, align 8
  %tobool1229 = icmp ne %struct._object* %527, null
  br i1 %tobool1229, label %lor.lhs.false.1230, label %if.then.1233

lor.lhs.false.1230:                               ; preds = %if.end.1226
  %528 = load %struct._object*, %struct._object** @errnomap, align 8
  %529 = load %struct._object*, %struct._object** %_code1227, align 8
  %530 = load %struct._object*, %struct._object** @PyExc_ProcessLookupError, align 8
  %call1231 = call i32 @PyDict_SetItem(%struct._object* %528, %struct._object* %529, %struct._object* %530)
  %tobool1232 = icmp ne i32 %call1231, 0
  br i1 %tobool1232, label %if.then.1233, label %if.end.1234

if.then.1233:                                     ; preds = %lor.lhs.false.1230, %if.end.1226
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1234:                                      ; preds = %lor.lhs.false.1230
  br label %do.body.1235

do.body.1235:                                     ; preds = %if.end.1234
  %531 = load %struct._object*, %struct._object** %_code1227, align 8
  store %struct._object* %531, %struct._object** %_py_decref_tmp1236, align 8
  %532 = load %struct._object*, %struct._object** %_py_decref_tmp1236, align 8
  %ob_refcnt1237 = getelementptr inbounds %struct._object, %struct._object* %532, i32 0, i32 0
  %533 = load i64, i64* %ob_refcnt1237, align 8
  %dec1238 = add i64 %533, -1
  store i64 %dec1238, i64* %ob_refcnt1237, align 8
  %cmp1239 = icmp ne i64 %dec1238, 0
  br i1 %cmp1239, label %if.then.1240, label %if.else.1241

if.then.1240:                                     ; preds = %do.body.1235
  br label %if.end.1244

if.else.1241:                                     ; preds = %do.body.1235
  %534 = load %struct._object*, %struct._object** %_py_decref_tmp1236, align 8
  %ob_type1242 = getelementptr inbounds %struct._object, %struct._object* %534, i32 0, i32 1
  %535 = load %struct._typeobject*, %struct._typeobject** %ob_type1242, align 8
  %tp_dealloc1243 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %535, i32 0, i32 4
  %536 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1243, align 8
  %537 = load %struct._object*, %struct._object** %_py_decref_tmp1236, align 8
  call void %536(%struct._object* %537)
  br label %if.end.1244

if.end.1244:                                      ; preds = %if.else.1241, %if.then.1240
  br label %do.end.1245

do.end.1245:                                      ; preds = %if.end.1244
  %538 = load %struct._object*, %struct._object** %bdict, align 8
  %539 = load %struct._object*, %struct._object** @PyExc_TimeoutError, align 8
  %call1246 = call i32 @PyDict_SetItemString(%struct._object* %538, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.73, i32 0, i32 0), %struct._object* %539)
  %tobool1247 = icmp ne i32 %call1246, 0
  br i1 %tobool1247, label %if.then.1248, label %if.end.1249

if.then.1248:                                     ; preds = %do.end.1245
  call void @Py_FatalError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0)) #5
  unreachable

if.end.1249:                                      ; preds = %do.end.1245
  %call1251 = call %struct._object* @PyLong_FromLong(i64 110)
  store %struct._object* %call1251, %struct._object** %_code1250, align 8
  %540 = load %struct._object*, %struct._object** %_code1250, align 8
  %tobool1252 = icmp ne %struct._object* %540, null
  br i1 %tobool1252, label %lor.lhs.false.1253, label %if.then.1256

lor.lhs.false.1253:                               ; preds = %if.end.1249
  %541 = load %struct._object*, %struct._object** @errnomap, align 8
  %542 = load %struct._object*, %struct._object** %_code1250, align 8
  %543 = load %struct._object*, %struct._object** @PyExc_TimeoutError, align 8
  %call1254 = call i32 @PyDict_SetItem(%struct._object* %541, %struct._object* %542, %struct._object* %543)
  %tobool1255 = icmp ne i32 %call1254, 0
  br i1 %tobool1255, label %if.then.1256, label %if.end.1257

if.then.1256:                                     ; preds = %lor.lhs.false.1253, %if.end.1249
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.60, i32 0, i32 0)) #5
  unreachable

if.end.1257:                                      ; preds = %lor.lhs.false.1253
  br label %do.body.1258

do.body.1258:                                     ; preds = %if.end.1257
  %544 = load %struct._object*, %struct._object** %_code1250, align 8
  store %struct._object* %544, %struct._object** %_py_decref_tmp1259, align 8
  %545 = load %struct._object*, %struct._object** %_py_decref_tmp1259, align 8
  %ob_refcnt1260 = getelementptr inbounds %struct._object, %struct._object* %545, i32 0, i32 0
  %546 = load i64, i64* %ob_refcnt1260, align 8
  %dec1261 = add i64 %546, -1
  store i64 %dec1261, i64* %ob_refcnt1260, align 8
  %cmp1262 = icmp ne i64 %dec1261, 0
  br i1 %cmp1262, label %if.then.1263, label %if.else.1264

if.then.1263:                                     ; preds = %do.body.1258
  br label %if.end.1267

if.else.1264:                                     ; preds = %do.body.1258
  %547 = load %struct._object*, %struct._object** %_py_decref_tmp1259, align 8
  %ob_type1265 = getelementptr inbounds %struct._object, %struct._object* %547, i32 0, i32 1
  %548 = load %struct._typeobject*, %struct._typeobject** %ob_type1265, align 8
  %tp_dealloc1266 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %548, i32 0, i32 4
  %549 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1266, align 8
  %550 = load %struct._object*, %struct._object** %_py_decref_tmp1259, align 8
  call void %549(%struct._object* %550)
  br label %if.end.1267

if.end.1267:                                      ; preds = %if.else.1264, %if.then.1263
  br label %do.end.1268

do.end.1268:                                      ; preds = %if.end.1267
  call void @preallocate_memerrors()
  %551 = load %struct._object*, %struct._object** @PyExc_RecursionErrorInst, align 8
  %tobool1269 = icmp ne %struct._object* %551, null
  br i1 %tobool1269, label %if.end.1310, label %if.then.1270

if.then.1270:                                     ; preds = %do.end.1268
  %call1271 = call %struct._object* @BaseException_new(%struct._typeobject* @_PyExc_RuntimeError, %struct._object* null, %struct._object* null)
  store %struct._object* %call1271, %struct._object** @PyExc_RecursionErrorInst, align 8
  %552 = load %struct._object*, %struct._object** @PyExc_RecursionErrorInst, align 8
  %tobool1272 = icmp ne %struct._object* %552, null
  br i1 %tobool1272, label %if.else.1274, label %if.then.1273

if.then.1273:                                     ; preds = %if.then.1270
  call void @Py_FatalError(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.74, i32 0, i32 0)) #5
  unreachable

if.else.1274:                                     ; preds = %if.then.1270
  %553 = load %struct._object*, %struct._object** @PyExc_RecursionErrorInst, align 8
  %554 = bitcast %struct._object* %553 to %struct.PyBaseExceptionObject*
  store %struct.PyBaseExceptionObject* %554, %struct.PyBaseExceptionObject** %err_inst, align 8
  %call1275 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.75, i32 0, i32 0))
  store %struct._object* %call1275, %struct._object** %exc_message, align 8
  %555 = load %struct._object*, %struct._object** %exc_message, align 8
  %tobool1276 = icmp ne %struct._object* %555, null
  br i1 %tobool1276, label %if.end.1278, label %if.then.1277

if.then.1277:                                     ; preds = %if.else.1274
  call void @Py_FatalError(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.76, i32 0, i32 0)) #5
  unreachable

if.end.1278:                                      ; preds = %if.else.1274
  %556 = load %struct._object*, %struct._object** %exc_message, align 8
  %call1279 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 1, %struct._object* %556)
  store %struct._object* %call1279, %struct._object** %args_tuple, align 8
  %557 = load %struct._object*, %struct._object** %args_tuple, align 8
  %tobool1280 = icmp ne %struct._object* %557, null
  br i1 %tobool1280, label %if.end.1282, label %if.then.1281

if.then.1281:                                     ; preds = %if.end.1278
  call void @Py_FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.77, i32 0, i32 0)) #5
  unreachable

if.end.1282:                                      ; preds = %if.end.1278
  br label %do.body.1283

do.body.1283:                                     ; preds = %if.end.1282
  %558 = load %struct._object*, %struct._object** %exc_message, align 8
  store %struct._object* %558, %struct._object** %_py_decref_tmp1284, align 8
  %559 = load %struct._object*, %struct._object** %_py_decref_tmp1284, align 8
  %ob_refcnt1285 = getelementptr inbounds %struct._object, %struct._object* %559, i32 0, i32 0
  %560 = load i64, i64* %ob_refcnt1285, align 8
  %dec1286 = add i64 %560, -1
  store i64 %dec1286, i64* %ob_refcnt1285, align 8
  %cmp1287 = icmp ne i64 %dec1286, 0
  br i1 %cmp1287, label %if.then.1288, label %if.else.1289

if.then.1288:                                     ; preds = %do.body.1283
  br label %if.end.1292

if.else.1289:                                     ; preds = %do.body.1283
  %561 = load %struct._object*, %struct._object** %_py_decref_tmp1284, align 8
  %ob_type1290 = getelementptr inbounds %struct._object, %struct._object* %561, i32 0, i32 1
  %562 = load %struct._typeobject*, %struct._typeobject** %ob_type1290, align 8
  %tp_dealloc1291 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %562, i32 0, i32 4
  %563 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1291, align 8
  %564 = load %struct._object*, %struct._object** %_py_decref_tmp1284, align 8
  call void %563(%struct._object* %564)
  br label %if.end.1292

if.end.1292:                                      ; preds = %if.else.1289, %if.then.1288
  br label %do.end.1293

do.end.1293:                                      ; preds = %if.end.1292
  %565 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %err_inst, align 8
  %566 = load %struct._object*, %struct._object** %args_tuple, align 8
  %call1294 = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %565, %struct._object* %566, %struct._object* null)
  %tobool1295 = icmp ne i32 %call1294, 0
  br i1 %tobool1295, label %if.then.1296, label %if.end.1297

if.then.1296:                                     ; preds = %do.end.1293
  call void @Py_FatalError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.78, i32 0, i32 0)) #5
  unreachable

if.end.1297:                                      ; preds = %do.end.1293
  br label %do.body.1298

do.body.1298:                                     ; preds = %if.end.1297
  %567 = load %struct._object*, %struct._object** %args_tuple, align 8
  store %struct._object* %567, %struct._object** %_py_decref_tmp1299, align 8
  %568 = load %struct._object*, %struct._object** %_py_decref_tmp1299, align 8
  %ob_refcnt1300 = getelementptr inbounds %struct._object, %struct._object* %568, i32 0, i32 0
  %569 = load i64, i64* %ob_refcnt1300, align 8
  %dec1301 = add i64 %569, -1
  store i64 %dec1301, i64* %ob_refcnt1300, align 8
  %cmp1302 = icmp ne i64 %dec1301, 0
  br i1 %cmp1302, label %if.then.1303, label %if.else.1304

if.then.1303:                                     ; preds = %do.body.1298
  br label %if.end.1307

if.else.1304:                                     ; preds = %do.body.1298
  %570 = load %struct._object*, %struct._object** %_py_decref_tmp1299, align 8
  %ob_type1305 = getelementptr inbounds %struct._object, %struct._object* %570, i32 0, i32 1
  %571 = load %struct._typeobject*, %struct._typeobject** %ob_type1305, align 8
  %tp_dealloc1306 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %571, i32 0, i32 4
  %572 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1306, align 8
  %573 = load %struct._object*, %struct._object** %_py_decref_tmp1299, align 8
  call void %572(%struct._object* %573)
  br label %if.end.1307

if.end.1307:                                      ; preds = %if.else.1304, %if.then.1303
  br label %do.end.1308

do.end.1308:                                      ; preds = %if.end.1307
  br label %if.end.1309

if.end.1309:                                      ; preds = %do.end.1308
  br label %if.end.1310

if.end.1310:                                      ; preds = %if.end.1309, %do.end.1268
  ret void
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @preallocate_memerrors() #0 {
entry:
  %i = alloca i32, align 4
  %errors = alloca [16 x %struct._object*], align 16
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  %2 = bitcast %struct._object* %1 to %struct._typeobject*
  %call = call %struct._object* @MemoryError_new(%struct._typeobject* %2, %struct._object* null, %struct._object* null)
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [16 x %struct._object*], [16 x %struct._object*]* %errors, i32 0, i64 %idxprom
  store %struct._object* %call, %struct._object** %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr [16 x %struct._object*], [16 x %struct._object*]* %errors, i32 0, i64 %idxprom1
  %5 = load %struct._object*, %struct._object** %arrayidx2, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  call void @Py_FatalError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.221, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.11, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %7, 16
  br i1 %cmp4, label %for.body.5, label %for.end.13

for.body.5:                                       ; preds = %for.cond.3
  br label %do.body

do.body:                                          ; preds = %for.body.5
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr [16 x %struct._object*], [16 x %struct._object*]* %errors, i32 0, i64 %idxprom6
  %9 = load %struct._object*, %struct._object** %arrayidx7, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %for.inc.11

for.inc.11:                                       ; preds = %do.end
  %16 = load i32, i32* %i, align 4
  %inc12 = add i32 %16, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.3

for.end.13:                                       ; preds = %for.cond.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.PyBaseExceptionObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.PyBaseExceptionObject*
  store %struct.PyBaseExceptionObject* %3, %struct.PyBaseExceptionObject** %self, align 8
  %4 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %tobool = icmp ne %struct.PyBaseExceptionObject* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %dict = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %5, i32 0, i32 1
  store %struct._object* null, %struct._object** %dict, align 8
  %6 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %context = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %6, i32 0, i32 4
  store %struct._object* null, %struct._object** %context, align 8
  %7 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %cause = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %7, i32 0, i32 5
  store %struct._object* null, %struct._object** %cause, align 8
  %8 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %traceback = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %8, i32 0, i32 3
  store %struct._object* null, %struct._object** %traceback, align 8
  %9 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %suppress_context = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %9, i32 0, i32 6
  store i8 0, i8* %suppress_context, align 1
  %10 = load %struct._object*, %struct._object** %args.addr, align 8
  %tobool1 = icmp ne %struct._object* %10, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %args.addr, align 8
  %12 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %args3 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %12, i32 0, i32 2
  store %struct._object* %11, %struct._object** %args3, align 8
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %15 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %16 = bitcast %struct.PyBaseExceptionObject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyTuple_New(i64 0)
  %17 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %args6 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %17, i32 0, i32 2
  store %struct._object* %call5, %struct._object** %args6, align 8
  %18 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %args7 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %18, i32 0, i32 2
  %19 = load %struct._object*, %struct._object** %args7, align 8
  %tobool8 = icmp ne %struct._object* %19, null
  br i1 %tobool8, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %20 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %21 = bitcast %struct.PyBaseExceptionObject* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt10, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt10, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body
  br label %if.end.12

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.4
  %28 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %29 = bitcast %struct.PyBaseExceptionObject* %28 to %struct._object*
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.13, %do.end, %if.then.2, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @BaseException_init(%struct.PyBaseExceptionObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %1 = bitcast %struct.PyBaseExceptionObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1
  %3 = load i8*, i8** %tp_name, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* %3, %struct._object* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %args1, align 8
  store %struct._object* %6, %struct._object** %tmp, align 8
  %7 = load %struct._object*, %struct._object** %args.addr, align 8
  %8 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args2 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %8, i32 0, i32 2
  store %struct._object* %7, %struct._object** %args2, align 8
  %9 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args3 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %args3, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %13, null
  br i1 %cmp, label %if.then.5, label %if.end.13

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt8, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt8, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body.6
  br label %if.end.12

if.else:                                          ; preds = %do.body.6
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.12
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %do.body
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.14, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define void @_PyExc_Fini() #0 {
entry:
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_RecursionErrorInst, align 8
  store %struct._object* %0, %struct._object** %_py_tmp, align 8
  %1 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  store %struct._object* null, %struct._object** @PyExc_RecursionErrorInst, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  call void @free_preallocated_memerrors()
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %9 = load %struct._object*, %struct._object** @errnomap, align 8
  store %struct._object* %9, %struct._object** %_py_tmp7, align 8
  %10 = load %struct._object*, %struct._object** %_py_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  store %struct._object* null, %struct._object** @errnomap, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** %_py_tmp7, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp11, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %13, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %16(%struct._object* %17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_preallocated_memerrors() #0 {
entry:
  %self = alloca %struct._object*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %cmp = icmp ne %struct.PyBaseExceptionObject* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %2 = bitcast %struct.PyBaseExceptionObject* %1 to %struct._object*
  store %struct._object* %2, %struct._object** %self, align 8
  %3 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %dict = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %dict, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyBaseExceptionObject*
  store %struct.PyBaseExceptionObject* %5, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %6 = load %struct._object*, %struct._object** %self, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 38
  %8 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %9 = load %struct._object*, %struct._object** %self, align 8
  %10 = bitcast %struct._object* %9 to i8*
  call void %8(i8* %10)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyErr_TrySetFromCause(i8* %format, ...) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %format.addr = alloca i8*, align 8
  %msg_prefix = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %caught_type = alloca %struct._typeobject*, align 8
  %dictptr = alloca %struct._object**, align 8
  %instance_args = alloca %struct._object*, align 8
  %num_args = alloca i64, align 8
  %caught_type_size = alloca i64, align 8
  %base_exc_size = alloca i64, align 8
  %new_exc = alloca %struct._object*, align 8
  %new_val = alloca %struct._object*, align 8
  %new_tb = alloca %struct._object*, align 8
  %vargs = alloca [1 x %struct.__va_list_tag], align 16
  %same_basic_size = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store i8* %format, i8** %format.addr, align 8
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %val, %struct._object** %tb)
  %0 = load %struct._object*, %struct._object** %exc, align 8
  %1 = bitcast %struct._object* %0 to %struct._typeobject*
  store %struct._typeobject* %1, %struct._typeobject** %caught_type, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %caught_type, align 8
  %tp_basicsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 2
  %3 = load i64, i64* %tp_basicsize, align 8
  store i64 %3, i64* %caught_type_size, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BaseException, i32 0, i32 2), align 8
  store i64 %4, i64* %base_exc_size, align 8
  %5 = load i64, i64* %caught_type_size, align 8
  %6 = load i64, i64* %base_exc_size, align 8
  %cmp = icmp eq i64 %5, %6
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %7 = load %struct._typeobject*, %struct._typeobject** %caught_type, align 8
  %tp_weaklistoffset = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 24
  %8 = load i64, i64* %tp_weaklistoffset, align 8
  %cmp1 = icmp sgt i64 %8, 0
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %9 = load i64, i64* %caught_type_size, align 8
  %10 = load i64, i64* %base_exc_size, align 8
  %add = add i64 %10, 8
  %cmp2 = icmp eq i64 %9, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %11 = phi i1 [ false, %lor.rhs ], [ %cmp2, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %12 = phi i1 [ true, %entry ], [ %11, %land.end ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* %same_basic_size, align 4
  %13 = load %struct._typeobject*, %struct._typeobject** %caught_type, align 8
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 35
  %14 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8
  %cmp3 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %14, bitcast (i32 (%struct.PyBaseExceptionObject*, %struct._object*, %struct._object*)* @BaseException_init to i32 (%struct._object*, %struct._object*, %struct._object*)*)
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %15 = load %struct._typeobject*, %struct._typeobject** %caught_type, align 8
  %tp_new = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 37
  %16 = load %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** %tp_new, align 8
  %cmp4 = icmp ne %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* %16, @BaseException_new
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %17 = load i32, i32* %same_basic_size, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %lor.lhs.false.6, label %if.then

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.5
  %18 = load %struct._typeobject*, %struct._typeobject** %caught_type, align 8
  %tp_itemsize = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 3
  %19 = load i64, i64* %tp_itemsize, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @_PyExc_BaseException, i32 0, i32 3), align 8
  %cmp7 = icmp ne i64 %19, %20
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.5, %lor.lhs.false, %lor.end
  %21 = load %struct._object*, %struct._object** %exc, align 8
  %22 = load %struct._object*, %struct._object** %val, align 8
  %23 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %21, %struct._object* %22, %struct._object* %23)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.6
  call void @PyErr_NormalizeException(%struct._object** %exc, %struct._object** %val, %struct._object** %tb)
  %24 = load %struct._object*, %struct._object** %val, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyBaseExceptionObject*
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %25, i32 0, i32 2
  %26 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %26, %struct._object** %instance_args, align 8
  %27 = load %struct._object*, %struct._object** %instance_args, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %28, i32 0, i32 1
  %29 = load i64, i64* %ob_size, align 8
  store i64 %29, i64* %num_args, align 8
  %30 = load i64, i64* %num_args, align 8
  %cmp8 = icmp sgt i64 %30, 1
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %if.end
  %31 = load i64, i64* %num_args, align 8
  %cmp10 = icmp eq i64 %31, 1
  br i1 %cmp10, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %lor.lhs.false.9
  %32 = load %struct._object*, %struct._object** %instance_args, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %33, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %34 = load %struct._object*, %struct._object** %arrayidx, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp11 = icmp eq %struct._typeobject* %35, @PyUnicode_Type
  br i1 %cmp11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true, %if.end
  %36 = load %struct._object*, %struct._object** %exc, align 8
  %37 = load %struct._object*, %struct._object** %val, align 8
  %38 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %36, %struct._object* %37, %struct._object* %38)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %lor.lhs.false.9
  %39 = load %struct._object*, %struct._object** %val, align 8
  %call = call %struct._object** @_PyObject_GetDictPtr(%struct._object* %39)
  store %struct._object** %call, %struct._object*** %dictptr, align 8
  %40 = load %struct._object**, %struct._object*** %dictptr, align 8
  %cmp14 = icmp ne %struct._object** %40, null
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.21

land.lhs.true.15:                                 ; preds = %if.end.13
  %41 = load %struct._object**, %struct._object*** %dictptr, align 8
  %42 = load %struct._object*, %struct._object** %41, align 8
  %cmp16 = icmp ne %struct._object* %42, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %land.lhs.true.15
  %43 = load %struct._object**, %struct._object*** %dictptr, align 8
  %44 = load %struct._object*, %struct._object** %43, align 8
  %call18 = call i64 @PyObject_Size(%struct._object* %44)
  %cmp19 = icmp sgt i64 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  %45 = load %struct._object*, %struct._object** %exc, align 8
  %46 = load %struct._object*, %struct._object** %val, align 8
  %47 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %45, %struct._object* %46, %struct._object* %47)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.17, %land.lhs.true.15, %if.end.13
  %48 = load %struct._object*, %struct._object** %tb, align 8
  %cmp22 = icmp ne %struct._object* %48, null
  br i1 %cmp22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.21
  %49 = load %struct._object*, %struct._object** %val, align 8
  %50 = load %struct._object*, %struct._object** %tb, align 8
  %call24 = call i32 @PyException_SetTraceback(%struct._object* %49, %struct._object* %50)
  br label %do.body

do.body:                                          ; preds = %if.then.23
  %51 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %53, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  br label %if.end.28

if.else:                                          ; preds = %do.body
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %56(%struct._object* %57)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.28
  br label %if.end.29

if.end.29:                                        ; preds = %do.end, %if.end.21
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay30 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay30)
  %58 = load i8*, i8** %format.addr, align 8
  %arraydecay31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %call32 = call %struct._object* @PyUnicode_FromFormatV(i8* %58, %struct.__va_list_tag* %arraydecay31)
  store %struct._object* %call32, %struct._object** %msg_prefix, align 8
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %vargs, i32 0, i32 0
  %arraydecay3334 = bitcast %struct.__va_list_tag* %arraydecay33 to i8*
  call void @llvm.va_end(i8* %arraydecay3334)
  %59 = load %struct._object*, %struct._object** %msg_prefix, align 8
  %cmp35 = icmp eq %struct._object* %59, null
  br i1 %cmp35, label %if.then.36, label %if.end.59

if.then.36:                                       ; preds = %if.end.29
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %60 = load %struct._object*, %struct._object** %exc, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp38, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %62, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %65(%struct._object* %66)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %67 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp49, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %69, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %72(%struct._object* %73)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.29
  %74 = load %struct._object*, %struct._object** %exc, align 8
  %75 = load %struct._object*, %struct._object** %msg_prefix, align 8
  %76 = load %struct._object*, %struct._object** %val, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 1
  %78 = load i8*, i8** %tp_name, align 8
  %79 = load %struct._object*, %struct._object** %val, align 8
  %call61 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %74, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), %struct._object* %75, i8* %78, %struct._object* %79)
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.59
  %80 = load %struct._object*, %struct._object** %exc, align 8
  store %struct._object* %80, %struct._object** %_py_decref_tmp63, align 8
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %82, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %do.body.62
  br label %if.end.71

if.else.68:                                       ; preds = %do.body.62
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 1
  %84 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %84, i32 0, i32 4
  %85 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %85(%struct._object* %86)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.68, %if.then.67
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %87 = load %struct._object*, %struct._object** %msg_prefix, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp74, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %89, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %92(%struct._object* %93)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  call void @PyErr_Fetch(%struct._object** %new_exc, %struct._object** %new_val, %struct._object** %new_tb)
  call void @PyErr_NormalizeException(%struct._object** %new_exc, %struct._object** %new_val, %struct._object** %new_tb)
  %94 = load %struct._object*, %struct._object** %new_val, align 8
  %95 = load %struct._object*, %struct._object** %val, align 8
  call void @PyException_SetCause(%struct._object* %94, %struct._object* %95)
  %96 = load %struct._object*, %struct._object** %new_exc, align 8
  %97 = load %struct._object*, %struct._object** %new_val, align 8
  %98 = load %struct._object*, %struct._object** %new_tb, align 8
  call void @PyErr_Restore(%struct._object* %96, %struct._object* %97, %struct._object* %98)
  %99 = load %struct._object*, %struct._object** %new_val, align 8
  store %struct._object* %99, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.83, %do.end.58, %if.then.20, %if.then.12, %if.then
  %100 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %100
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object** @_PyObject_GetDictPtr(%struct._object*) #1

declare i64 @PyObject_Size(%struct._object*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare %struct._object* @PyUnicode_FromFormatV(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @BaseException_dealloc(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %1 = bitcast %struct.PyBaseExceptionObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %14)
  %15 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %16 = bitcast %struct.PyBaseExceptionObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 38
  %18 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %19 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %20 = bitcast %struct.PyBaseExceptionObject* %19 to %struct._object*
  %21 = bitcast %struct._object* %20 to i8*
  call void %18(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_repr(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %name = alloca i8*, align 8
  %dot = alloca i8*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %1 = bitcast %struct.PyBaseExceptionObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1
  %3 = load i8*, i8** %tp_name, align 8
  store i8* %3, i8** %name, align 8
  %4 = load i8*, i8** %name, align 8
  %call = call i8* @strrchr(i8* %4, i32 46) #6
  store i8* %call, i8** %dot, align 8
  %5 = load i8*, i8** %dot, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %dot, align 8
  %add.ptr = getelementptr i8, i8* %6, i64 1
  store i8* %add.ptr, i8** %name, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %name, align 8
  %8 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %args, align 8
  %call1 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i8* %7, %struct._object* %9)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_str(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  switch i64 %3, label %sw.default [
    i64 0, label %sw.bb
    i64 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args2 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %args2, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call3 = call %struct._object* @PyObject_Str(%struct._object* %7)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %8 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args4 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %args4, align 8
  %call5 = call %struct._object* @PyObject_Str(%struct._object* %9)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.1, %sw.bb
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @BaseException_traverse(%struct.PyBaseExceptionObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %dict, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %dict1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %args, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args9 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %args9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %16, i32 0, i32 3
  %17 = load %struct._object*, %struct._object** %traceback, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback20 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %19, i32 0, i32 3
  %20 = load %struct._object*, %struct._object** %traceback20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %24 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %cause = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %24, i32 0, i32 5
  %25 = load %struct._object*, %struct._object** %cause, align 8
  %tobool28 = icmp ne %struct._object* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %cause31 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %27, i32 0, i32 5
  %28 = load %struct._object*, %struct._object** %cause31, align 8
  %29 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %26(%struct._object* %28, i8* %29)
  store i32 %call32, i32* %vret30, align 4
  %30 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %30, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %31 = load i32, i32* %vret30, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %32 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %context = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %32, i32 0, i32 4
  %33 = load %struct._object*, %struct._object** %context, align 8
  %tobool39 = icmp ne %struct._object* %33, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %34 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %35 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %context42 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %35, i32 0, i32 4
  %36 = load %struct._object*, %struct._object** %context42, align 8
  %37 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 %34(%struct._object* %36, i8* %37)
  store i32 %call43, i32* %vret41, align 4
  %38 = load i32, i32* %vret41, align 4
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %39 = load i32, i32* %vret41, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.then.45, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseException_clear(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %dict, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %dict1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %dict1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args11 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %14, i32 0, i32 2
  store %struct._object* null, %struct._object** %args11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %22 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %traceback, align 8
  store %struct._object* %23, %struct._object** %_py_tmp26, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %25 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback29 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %25, i32 0, i32 3
  store %struct._object* null, %struct._object** %traceback29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %33 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %cause = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %33, i32 0, i32 5
  %34 = load %struct._object*, %struct._object** %cause, align 8
  store %struct._object* %34, %struct._object** %_py_tmp44, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %35, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %36 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %cause47 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %36, i32 0, i32 5
  store %struct._object* null, %struct._object** %cause47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp49, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %39, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %42(%struct._object* %43)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %44 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %context = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %44, i32 0, i32 4
  %45 = load %struct._object*, %struct._object** %context, align 8
  store %struct._object* %45, %struct._object** %_py_tmp62, align 8
  %46 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %46, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.61
  %47 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %context65 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %47, i32 0, i32 4
  store %struct._object* null, %struct._object** %context65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %48 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp67, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %50, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %53(%struct._object* %54)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.61
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyObject_Str(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_reduce(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %dict, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %5 = bitcast %struct.PyBaseExceptionObject* %4 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %7 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args2 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %7, i32 0, i32 2
  %8 = load %struct._object*, %struct._object** %args2, align 8
  %9 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %dict3 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %dict3, align 8
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._typeobject* %6, %struct._object* %8, %struct._object* %10)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %12 = bitcast %struct.PyBaseExceptionObject* %11 to %struct._object*
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %14 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args5 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %args5, align 8
  %call6 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._typeobject* %13, %struct._object* %15)
  store %struct._object* %call6, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_setstate(%struct._object* %self, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %state.addr = alloca %struct._object*, align 8
  %d_key = alloca %struct._object*, align 8
  %d_value = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  store i64 0, i64* %i, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %cmp = icmp ne %struct._object* %0, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 536870912
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.88, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %if.end
  %5 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 @PyDict_Next(%struct._object* %5, i64* %i, %struct._object** %d_key, %struct._object** %d_value)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct._object*, %struct._object** %self.addr, align 8
  %7 = load %struct._object*, %struct._object** %d_key, align 8
  %8 = load %struct._object*, %struct._object** %d_value, align 8
  %call3 = call i32 @PyObject_SetAttr(%struct._object* %6, %struct._object* %7, %struct._object* %8)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.7

if.end.7:                                         ; preds = %while.end, %entry
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_with_traceback(%struct._object* %self, %struct._object* %tb) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %tb.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %tb, %struct._object** %tb.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = load %struct._object*, %struct._object** %tb.addr, align 8
  %call = call i32 @PyException_SetTraceback(%struct._object* %0, %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  store %struct._object* %4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

declare i32 @PyObject_SetAttr(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GenericGetDict(%struct._object*, i8*) #1

declare i32 @PyObject_GenericSetDict(%struct._object*, %struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_get_args(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %args1, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc2 = add i64 %5, 1
  store i64 %inc2, i64* %ob_refcnt, align 8
  %6 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args3 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %args3, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseException_set_args(%struct.PyBaseExceptionObject* %self, %struct._object* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %val.addr = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  store %struct._object* %val, %struct._object** %val.addr, align 8
  %0 = load %struct._object*, %struct._object** %val.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.97, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %val.addr, align 8
  %call = call %struct._object* @PySequence_Tuple(%struct._object* %2)
  store %struct._object* %call, %struct._object** %seq, align 8
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.2
  %4 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %do.body
  %7 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args5 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %7, i32 0, i32 2
  store %struct._object* null, %struct._object** %args5, align 8
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.4
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %15 = load %struct._object*, %struct._object** %seq, align 8
  %16 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args12 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %16, i32 0, i32 2
  store %struct._object* %15, %struct._object** %args12, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.11, %if.then.1, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_get_tb(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %traceback, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %traceback1, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc2 = add i64 %5, 1
  store i64 %inc2, i64* %ob_refcnt, align 8
  %6 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %traceback3 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %traceback3, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_get_context(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyException_GetContext(%struct._object* %0)
  store %struct._object* %call, %struct._object** %res, align 8
  %1 = load %struct._object*, %struct._object** %res, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseException_set_context(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.98, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %arg.addr, align 8
  br label %if.end.7

if.else.3:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 1073741824
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %if.else.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.99, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  %10 = load %struct._object*, %struct._object** %arg.addr, align 8
  call void @PyException_SetContext(%struct._object* %9, %struct._object* %10)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.5, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @BaseException_get_cause(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call %struct._object* @PyException_GetCause(%struct._object* %0)
  store %struct._object* %call, %struct._object** %res, align 8
  %1 = load %struct._object*, %struct._object** %res, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal i32 @BaseException_set_cause(%struct._object* %self, %struct._object* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.100, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp1 = icmp eq %struct._object* %2, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %arg.addr, align 8
  br label %if.end.7

if.else.3:                                        ; preds = %if.else
  %3 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 1073741824
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.else.6, label %if.then.5

if.then.5:                                        ; preds = %if.else.3
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.101, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.else.6:                                        ; preds = %if.else.3
  %7 = load %struct._object*, %struct._object** %arg.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.6
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  %10 = load %struct._object*, %struct._object** %arg.addr, align 8
  call void @PyException_SetCause(%struct._object* %9, %struct._object* %10)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.5, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare %struct._object* @PySequence_Tuple(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @StopIteration_dealloc(%struct.PyStopIterationObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStopIterationObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyStopIterationObject* %self, %struct.PyStopIterationObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %1 = bitcast %struct.PyStopIterationObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %call = call i32 @StopIteration_clear(%struct.PyStopIterationObject* %14)
  %15 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %16 = bitcast %struct.PyStopIterationObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 38
  %18 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %19 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %20 = bitcast %struct.PyStopIterationObject* %19 to %struct._object*
  %21 = bitcast %struct._object* %20 to i8*
  call void %18(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @StopIteration_traverse(%struct.PyStopIterationObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyStopIterationObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.PyStopIterationObject* %self, %struct.PyStopIterationObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %value = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %value, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %value1 = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %3, i32 0, i32 7
  %4 = load %struct._object*, %struct._object** %value1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %8 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %9 = bitcast %struct.PyStopIterationObject* %8 to %struct.PyBaseExceptionObject*
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call5 = call i32 @BaseException_traverse(%struct.PyBaseExceptionObject* %9, i32 (%struct._object*, i8*)* %10, i8* %11)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @StopIteration_clear(%struct.PyStopIterationObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyStopIterationObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStopIterationObject* %self, %struct.PyStopIterationObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %value = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %value1 = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %3, i32 0, i32 7
  store %struct._object* null, %struct._object** %value1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %11 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %12 = bitcast %struct.PyStopIterationObject* %11 to %struct.PyBaseExceptionObject*
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @StopIteration_init(%struct.PyStopIterationObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyStopIterationObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %value = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyStopIterationObject* %self, %struct.PyStopIterationObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %size, align 8
  %3 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %4 = bitcast %struct.PyStopIterationObject* %3 to %struct.PyBaseExceptionObject*
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %4, %struct._object* %5, %struct._object* %6)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %value1 = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %7, i32 0, i32 7
  %8 = load %struct._object*, %struct._object** %value1, align 8
  store %struct._object* %8, %struct._object** %_py_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp2 = icmp ne %struct._object* %9, null
  br i1 %cmp2, label %if.then.3, label %if.end.9

if.then.3:                                        ; preds = %do.body
  %10 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %value4 = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %10, i32 0, i32 7
  store %struct._object* null, %struct._object** %value4, align 8
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.3
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body.5
  br label %if.end.8

if.else:                                          ; preds = %do.body.5
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %18 = load i64, i64* %size, align 8
  %cmp11 = icmp sgt i64 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.end.10
  %19 = load %struct._object*, %struct._object** %args.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %21 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %21, %struct._object** %value, align 8
  br label %if.end.14

if.else.13:                                       ; preds = %do.end.10
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  %22 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt15, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %ob_refcnt15, align 8
  %24 = load %struct._object*, %struct._object** %value, align 8
  %25 = load %struct.PyStopIterationObject*, %struct.PyStopIterationObject** %self.addr, align 8
  %value16 = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %25, i32 0, i32 7
  store %struct._object* %24, %struct._object** %value16, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal void @SystemExit_dealloc(%struct.PySystemExitObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PySystemExitObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PySystemExitObject* %self, %struct.PySystemExitObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %1 = bitcast %struct.PySystemExitObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %call = call i32 @SystemExit_clear(%struct.PySystemExitObject* %14)
  %15 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %16 = bitcast %struct.PySystemExitObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 38
  %18 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %19 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %20 = bitcast %struct.PySystemExitObject* %19 to %struct._object*
  %21 = bitcast %struct._object* %20 to i8*
  call void %18(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @SystemExit_traverse(%struct.PySystemExitObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PySystemExitObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.PySystemExitObject* %self, %struct.PySystemExitObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %code, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code1 = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %3, i32 0, i32 7
  %4 = load %struct._object*, %struct._object** %code1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %8 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %9 = bitcast %struct.PySystemExitObject* %8 to %struct.PyBaseExceptionObject*
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call5 = call i32 @BaseException_traverse(%struct.PyBaseExceptionObject* %9, i32 (%struct._object*, i8*)* %10, i8* %11)
  store i32 %call5, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @SystemExit_clear(%struct.PySystemExitObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PySystemExitObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySystemExitObject* %self, %struct.PySystemExitObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code1 = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %3, i32 0, i32 7
  store %struct._object* null, %struct._object** %code1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %11 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %12 = bitcast %struct.PySystemExitObject* %11 to %struct.PyBaseExceptionObject*
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %12)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @SystemExit_init(%struct.PySystemExitObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PySystemExitObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySystemExitObject* %self, %struct.PySystemExitObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %size, align 8
  %3 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %4 = bitcast %struct.PySystemExitObject* %3 to %struct.PyBaseExceptionObject*
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %4, %struct._object* %5, %struct._object* %6)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %size, align 8
  %cmp1 = icmp eq i64 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %8 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %8, i32 0, i32 7
  %9 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %9, %struct._object** %_py_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp4 = icmp ne %struct._object* %10, null
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %do.body
  %11 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code6 = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %11, i32 0, i32 7
  store %struct._object* null, %struct._object** %code6, align 8
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.5
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %19 = load i64, i64* %size, align 8
  %cmp13 = icmp eq i64 %19, 1
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %do.end.12
  %20 = load %struct._object*, %struct._object** %args.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %21, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %22 = load %struct._object*, %struct._object** %arrayidx, align 8
  %23 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code15 = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %23, i32 0, i32 7
  store %struct._object* %22, %struct._object** %code15, align 8
  br label %if.end.18

if.else.16:                                       ; preds = %do.end.12
  %24 = load %struct._object*, %struct._object** %args.addr, align 8
  %25 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code17 = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %25, i32 0, i32 7
  store %struct._object* %24, %struct._object** %code17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  %26 = load %struct.PySystemExitObject*, %struct.PySystemExitObject** %self.addr, align 8
  %code19 = getelementptr inbounds %struct.PySystemExitObject, %struct.PySystemExitObject* %26, i32 0, i32 7
  %27 = load %struct._object*, %struct._object** %code19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt20, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ob_refcnt20, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.2, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal void @ImportError_dealloc(%struct.PyImportErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyImportErrorObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyImportErrorObject* %self, %struct.PyImportErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %1 = bitcast %struct.PyImportErrorObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %call = call i32 @ImportError_clear(%struct.PyImportErrorObject* %14)
  %15 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %16 = bitcast %struct.PyImportErrorObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 38
  %18 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %19 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %20 = bitcast %struct.PyImportErrorObject* %19 to %struct._object*
  %21 = bitcast %struct._object* %20 to i8*
  call void %18(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ImportError_str(%struct.PyImportErrorObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyImportErrorObject*, align 8
  store %struct.PyImportErrorObject* %self, %struct.PyImportErrorObject** %self.addr, align 8
  %0 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %msg, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg1 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %2, i32 0, i32 7
  %3 = load %struct._object*, %struct._object** %msg1, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %4, @PyUnicode_Type
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg2 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %5, i32 0, i32 7
  %6 = load %struct._object*, %struct._object** %msg2, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg3 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %8, i32 0, i32 7
  %9 = load %struct._object*, %struct._object** %msg3, align 8
  store %struct._object* %9, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %11 = bitcast %struct.PyImportErrorObject* %10 to %struct.PyBaseExceptionObject*
  %call = call %struct._object* @BaseException_str(%struct.PyBaseExceptionObject* %11)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal i32 @ImportError_traverse(%struct.PyImportErrorObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyImportErrorObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct.PyImportErrorObject* %self, %struct.PyImportErrorObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %msg, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg1 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %3, i32 0, i32 7
  %4 = load %struct._object*, %struct._object** %msg1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %8, i32 0, i32 8
  %9 = load %struct._object*, %struct._object** %name, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name9 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %name9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %16, i32 0, i32 9
  %17 = load %struct._object*, %struct._object** %path, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path20 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %19, i32 0, i32 9
  %20 = load %struct._object*, %struct._object** %path20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %24 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %25 = bitcast %struct.PyImportErrorObject* %24 to %struct.PyBaseExceptionObject*
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load i8*, i8** %arg.addr, align 8
  %call27 = call i32 @BaseException_traverse(%struct.PyBaseExceptionObject* %25, i32 (%struct._object*, i8*)* %26, i8* %27)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @ImportError_clear(%struct.PyImportErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyImportErrorObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.PyImportErrorObject* %self, %struct.PyImportErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %msg, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg1 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %3, i32 0, i32 7
  store %struct._object* null, %struct._object** %msg1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name11 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %14, i32 0, i32 8
  store %struct._object* null, %struct._object** %name11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %22 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %22, i32 0, i32 9
  %23 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %23, %struct._object** %_py_tmp26, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %25 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path29 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %25, i32 0, i32 9
  store %struct._object* null, %struct._object** %path29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %33 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %34 = bitcast %struct.PyImportErrorObject* %33 to %struct.PyBaseExceptionObject*
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %34)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @ImportError_init(%struct.PyImportErrorObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyImportErrorObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %msg = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %_py_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  store %struct.PyImportErrorObject* %self, %struct.PyImportErrorObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %msg, align 8
  store %struct._object* null, %struct._object** %name, align 8
  store %struct._object* null, %struct._object** %path, align 8
  %0 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @PyDict_GetItemString(%struct._object* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %name, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %tobool1 = icmp ne %struct._object* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name3 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %3, i32 0, i32 8
  %4 = load %struct._object*, %struct._object** %name3, align 8
  store %struct._object* %4, %struct._object** %_py_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %do.body
  %6 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name5 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %6, i32 0, i32 8
  store %struct._object* null, %struct._object** %name5, align 8
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.4
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end

if.else:                                          ; preds = %do.body.6
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %do.body
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  %14 = load %struct._object*, %struct._object** %name, align 8
  %15 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name11 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %15, i32 0, i32 8
  store %struct._object* %14, %struct._object** %name11, align 8
  %16 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %name12 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %16, i32 0, i32 8
  %17 = load %struct._object*, %struct._object** %name12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt13, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt13, align 8
  %19 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call14 = call i32 @PyDict_DelItemString(%struct._object* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.115, i32 0, i32 0))
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %do.end.10
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %do.end.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then
  %20 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call19 = call %struct._object* @PyDict_GetItemString(%struct._object* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0))
  store %struct._object* %call19, %struct._object** %path, align 8
  %21 = load %struct._object*, %struct._object** %path, align 8
  %tobool20 = icmp ne %struct._object* %21, null
  br i1 %tobool20, label %if.then.21, label %if.end.49

if.then.21:                                       ; preds = %if.end.18
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %22 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path24 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %22, i32 0, i32 9
  %23 = load %struct._object*, %struct._object** %path24, align 8
  store %struct._object* %23, %struct._object** %_py_tmp23, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp23, align 8
  %cmp25 = icmp ne %struct._object* %24, null
  br i1 %cmp25, label %if.then.26, label %if.end.39

if.then.26:                                       ; preds = %do.body.22
  %25 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path27 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %25, i32 0, i32 9
  store %struct._object* null, %struct._object** %path27, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.26
  %26 = load %struct._object*, %struct._object** %_py_tmp23, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp29, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %28, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %31(%struct._object* %32)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %if.end.39

if.end.39:                                        ; preds = %do.end.38, %do.body.22
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %33 = load %struct._object*, %struct._object** %path, align 8
  %34 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path41 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %34, i32 0, i32 9
  store %struct._object* %33, %struct._object** %path41, align 8
  %35 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %path42 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %35, i32 0, i32 9
  %36 = load %struct._object*, %struct._object** %path42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt43, align 8
  %inc44 = add i64 %37, 1
  store i64 %inc44, i64* %ob_refcnt43, align 8
  %38 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call45 = call i32 @PyDict_DelItemString(%struct._object* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0))
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.end.40
  store i32 -1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %do.end.40
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.18
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %entry
  %39 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %40 = bitcast %struct.PyImportErrorObject* %39 to %struct.PyBaseExceptionObject*
  %41 = load %struct._object*, %struct._object** %args.addr, align 8
  %42 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call51 = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %40, %struct._object* %41, %struct._object* %42)
  %cmp52 = icmp eq i32 %call51, -1
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.50
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.50
  %43 = load %struct._object*, %struct._object** %args.addr, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %44, i32 0, i32 1
  %45 = load i64, i64* %ob_size, align 8
  %cmp55 = icmp ne i64 %45, 1
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.54
  %46 = load %struct._object*, %struct._object** %args.addr, align 8
  %call58 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i64 1, i64 1, %struct._object** %msg)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %if.end.57
  store i32 -1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.57
  br label %do.body.62

do.body.62:                                       ; preds = %if.end.61
  %47 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg64 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %47, i32 0, i32 7
  %48 = load %struct._object*, %struct._object** %msg64, align 8
  store %struct._object* %48, %struct._object** %_py_tmp63, align 8
  %49 = load %struct._object*, %struct._object** %_py_tmp63, align 8
  %cmp65 = icmp ne %struct._object* %49, null
  br i1 %cmp65, label %if.then.66, label %if.end.79

if.then.66:                                       ; preds = %do.body.62
  %50 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg67 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %50, i32 0, i32 7
  store %struct._object* null, %struct._object** %msg67, align 8
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.66
  %51 = load %struct._object*, %struct._object** %_py_tmp63, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp69, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %53, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %56(%struct._object* %57)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %if.end.79

if.end.79:                                        ; preds = %do.end.78, %do.body.62
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  %58 = load %struct._object*, %struct._object** %msg, align 8
  %59 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg81 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %59, i32 0, i32 7
  store %struct._object* %58, %struct._object** %msg81, align 8
  %60 = load %struct.PyImportErrorObject*, %struct.PyImportErrorObject** %self.addr, align 8
  %msg82 = getelementptr inbounds %struct.PyImportErrorObject, %struct.PyImportErrorObject* %60, i32 0, i32 7
  %61 = load %struct._object*, %struct._object** %msg82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt83, align 8
  %inc84 = add i64 %62, 1
  store i64 %inc84, i64* %ob_refcnt83, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.80, %if.then.60, %if.then.56, %if.then.53, %if.then.47, %if.then.16
  %63 = load i32, i32* %retval
  ret i32 %63
}

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #1

declare i32 @PyDict_DelItemString(%struct._object*, i8*) #1

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

; Function Attrs: nounwind uwtable
define internal void @OSError_dealloc(%struct.PyOSErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %1 = bitcast %struct.PyOSErrorObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %call = call i32 @OSError_clear(%struct.PyOSErrorObject* %14)
  %15 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %16 = bitcast %struct.PyOSErrorObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 38
  %18 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %19 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %20 = bitcast %struct.PyOSErrorObject* %19 to %struct._object*
  %21 = bitcast %struct._object* %20 to i8*
  call void %18(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @OSError_str(%struct.PyOSErrorObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  %0 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %0, i32 0, i32 9
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename2 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %2, i32 0, i32 10
  %3 = load %struct._object*, %struct._object** %filename2, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %4, i32 0, i32 7
  %5 = load %struct._object*, %struct._object** %myerrno, align 8
  %tobool3 = icmp ne %struct._object* %5, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %6 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno4 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %6, i32 0, i32 7
  %7 = load %struct._object*, %struct._object** %myerrno4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %7, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %8 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %8, i32 0, i32 8
  %9 = load %struct._object*, %struct._object** %strerror, align 8
  %tobool5 = icmp ne %struct._object* %9, null
  br i1 %tobool5, label %cond.true.6, label %cond.false.8

cond.true.6:                                      ; preds = %cond.end
  %10 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror7 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %10, i32 0, i32 8
  %11 = load %struct._object*, %struct._object** %strerror7, align 8
  br label %cond.end.9

cond.false.8:                                     ; preds = %cond.end
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.8, %cond.true.6
  %cond10 = phi %struct._object* [ %11, %cond.true.6 ], [ @_Py_NoneStruct, %cond.false.8 ]
  %12 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename11 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %12, i32 0, i32 9
  %13 = load %struct._object*, %struct._object** %filename11, align 8
  %14 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename212 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %14, i32 0, i32 10
  %15 = load %struct._object*, %struct._object** %filename212, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.120, i32 0, i32 0), %struct._object* %cond, %struct._object* %cond10, %struct._object* %13, %struct._object* %15)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %16 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno13 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %16, i32 0, i32 7
  %17 = load %struct._object*, %struct._object** %myerrno13, align 8
  %tobool14 = icmp ne %struct._object* %17, null
  br i1 %tobool14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %if.else
  %18 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno16 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %18, i32 0, i32 7
  %19 = load %struct._object*, %struct._object** %myerrno16, align 8
  br label %cond.end.18

cond.false.17:                                    ; preds = %if.else
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi %struct._object* [ %19, %cond.true.15 ], [ @_Py_NoneStruct, %cond.false.17 ]
  %20 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror20 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %20, i32 0, i32 8
  %21 = load %struct._object*, %struct._object** %strerror20, align 8
  %tobool21 = icmp ne %struct._object* %21, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.18
  %22 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror23 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %22, i32 0, i32 8
  %23 = load %struct._object*, %struct._object** %strerror23, align 8
  br label %cond.end.25

cond.false.24:                                    ; preds = %cond.end.18
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.24, %cond.true.22
  %cond26 = phi %struct._object* [ %23, %cond.true.22 ], [ @_Py_NoneStruct, %cond.false.24 ]
  %24 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename27 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %24, i32 0, i32 9
  %25 = load %struct._object*, %struct._object** %filename27, align 8
  %call28 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.121, i32 0, i32 0), %struct._object* %cond19, %struct._object* %cond26, %struct._object* %25)
  store %struct._object* %call28, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %26 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno29 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %26, i32 0, i32 7
  %27 = load %struct._object*, %struct._object** %myerrno29, align 8
  %tobool30 = icmp ne %struct._object* %27, null
  br i1 %tobool30, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %if.end
  %28 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror31 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %28, i32 0, i32 8
  %29 = load %struct._object*, %struct._object** %strerror31, align 8
  %tobool32 = icmp ne %struct._object* %29, null
  br i1 %tobool32, label %if.then.33, label %if.end.49

if.then.33:                                       ; preds = %land.lhs.true
  %30 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno34 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %30, i32 0, i32 7
  %31 = load %struct._object*, %struct._object** %myerrno34, align 8
  %tobool35 = icmp ne %struct._object* %31, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %if.then.33
  %32 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno37 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %32, i32 0, i32 7
  %33 = load %struct._object*, %struct._object** %myerrno37, align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.then.33
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi %struct._object* [ %33, %cond.true.36 ], [ @_Py_NoneStruct, %cond.false.38 ]
  %34 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror41 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %34, i32 0, i32 8
  %35 = load %struct._object*, %struct._object** %strerror41, align 8
  %tobool42 = icmp ne %struct._object* %35, null
  br i1 %tobool42, label %cond.true.43, label %cond.false.45

cond.true.43:                                     ; preds = %cond.end.39
  %36 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror44 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %36, i32 0, i32 8
  %37 = load %struct._object*, %struct._object** %strerror44, align 8
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.end.39
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.43
  %cond47 = phi %struct._object* [ %37, %cond.true.43 ], [ @_Py_NoneStruct, %cond.false.45 ]
  %call48 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.122, i32 0, i32 0), %struct._object* %cond40, %struct._object* %cond47)
  store %struct._object* %call48, %struct._object** %retval
  br label %return

if.end.49:                                        ; preds = %land.lhs.true, %if.end
  %38 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %39 = bitcast %struct.PyOSErrorObject* %38 to %struct.PyBaseExceptionObject*
  %call50 = call %struct._object* @BaseException_str(%struct.PyBaseExceptionObject* %39)
  store %struct._object* %call50, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.49, %cond.end.46, %cond.end.25, %cond.end.9
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

; Function Attrs: nounwind uwtable
define internal i32 @OSError_traverse(%struct.PyOSErrorObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %myerrno, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno1 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %3, i32 0, i32 7
  %4 = load %struct._object*, %struct._object** %myerrno1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %8, i32 0, i32 8
  %9 = load %struct._object*, %struct._object** %strerror, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror9 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %strerror9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %16, i32 0, i32 9
  %17 = load %struct._object*, %struct._object** %filename, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename20 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %19, i32 0, i32 9
  %20 = load %struct._object*, %struct._object** %filename20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %24 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename2 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %24, i32 0, i32 10
  %25 = load %struct._object*, %struct._object** %filename2, align 8
  %tobool28 = icmp ne %struct._object* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename231 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %27, i32 0, i32 10
  %28 = load %struct._object*, %struct._object** %filename231, align 8
  %29 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %26(%struct._object* %28, i8* %29)
  store i32 %call32, i32* %vret30, align 4
  %30 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %30, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %31 = load i32, i32* %vret30, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  %32 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %33 = bitcast %struct.PyOSErrorObject* %32 to %struct.PyBaseExceptionObject*
  %34 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %35 = load i8*, i8** %arg.addr, align 8
  %call38 = call i32 @BaseException_traverse(%struct.PyBaseExceptionObject* %33, i32 (%struct._object*, i8*)* %34, i8* %35)
  store i32 %call38, i32* %retval
  br label %return

return:                                           ; preds = %do.end.37, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @OSError_clear(%struct.PyOSErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %myerrno, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno1 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %3, i32 0, i32 7
  store %struct._object* null, %struct._object** %myerrno1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %strerror, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror11 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %14, i32 0, i32 8
  store %struct._object* null, %struct._object** %strerror11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %22 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %22, i32 0, i32 9
  %23 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %23, %struct._object** %_py_tmp26, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %25 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename29 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %25, i32 0, i32 9
  store %struct._object* null, %struct._object** %filename29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %33 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename2 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %33, i32 0, i32 10
  %34 = load %struct._object*, %struct._object** %filename2, align 8
  store %struct._object* %34, %struct._object** %_py_tmp44, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %35, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %36 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename247 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %36, i32 0, i32 10
  store %struct._object* null, %struct._object** %filename247, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp49, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %39, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %42(%struct._object* %43)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  %44 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %45 = bitcast %struct.PyOSErrorObject* %44 to %struct.PyBaseExceptionObject*
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %45)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @OSError_init(%struct.PyOSErrorObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %myerrno = alloca %struct._object*, align 8
  %strerror = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %filename2 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %myerrno, align 8
  store %struct._object* null, %struct._object** %strerror, align 8
  store %struct._object* null, %struct._object** %filename, align 8
  store %struct._object* null, %struct._object** %filename2, align 8
  %0 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %1 = bitcast %struct.PyOSErrorObject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call = call i32 @oserror_use_init(%struct._typeobject* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %4 = bitcast %struct.PyOSErrorObject* %3 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %tp_name, align 8
  %7 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call2 = call i32 @_PyArg_NoKeywords(i8* %6, %struct._object* %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %call6 = call i32 @oserror_parse_args(%struct._object** %args.addr, %struct._object** %myerrno, %struct._object** %strerror, %struct._object** %filename, %struct._object** %filename2)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  br label %error

if.end.9:                                         ; preds = %if.end.5
  %10 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %11 = load %struct._object*, %struct._object** %myerrno, align 8
  %12 = load %struct._object*, %struct._object** %strerror, align 8
  %13 = load %struct._object*, %struct._object** %filename, align 8
  %14 = load %struct._object*, %struct._object** %filename2, align 8
  %call10 = call i32 @oserror_init(%struct.PyOSErrorObject* %10, %struct._object** %args.addr, %struct._object* %11, %struct._object* %12, %struct._object* %13, %struct._object* %14)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %error

if.end.13:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.12, %if.then.8
  br label %do.body

do.body:                                          ; preds = %error
  %15 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %15, %struct._object** %_py_xdecref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %16, null
  br i1 %cmp, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %17 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt16, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt16, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.15
  br label %if.end.20

if.else:                                          ; preds = %do.body.15
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %if.end.21

if.end.21:                                        ; preds = %do.end, %do.body
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.22, %if.end.13, %if.then.4, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @OSError_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.PyOSErrorObject*, align 8
  %myerrno = alloca %struct._object*, align 8
  %strerror = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %filename2 = alloca %struct._object*, align 8
  %newtype = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  %_py_xdecref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp76 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct.PyOSErrorObject* null, %struct.PyOSErrorObject** %self, align 8
  store %struct._object* null, %struct._object** %myerrno, align 8
  store %struct._object* null, %struct._object** %strerror, align 8
  store %struct._object* null, %struct._object** %filename, align 8
  store %struct._object* null, %struct._object** %filename2, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 0
  %1 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call i32 @oserror_use_init(%struct._typeobject* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.23, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %tp_name, align 8
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call1 = call i32 @_PyArg_NoKeywords(i8* %4, %struct._object* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  br label %error

if.end:                                           ; preds = %if.then
  %call4 = call i32 @oserror_parse_args(%struct._object** %args.addr, %struct._object** %myerrno, %struct._object** %strerror, %struct._object** %filename, %struct._object** %filename2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %error

if.end.7:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %myerrno, align 8
  %tobool8 = icmp ne %struct._object* %6, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** %myerrno, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 16777216
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %land.lhs.true.9, label %if.end.22

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** @errnomap, align 8
  %tobool10 = icmp ne %struct._object* %10, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.22

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %11 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %12 = bitcast %struct._typeobject* %11 to %struct._object*
  %13 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %cmp12 = icmp eq %struct._object* %12, %13
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %land.lhs.true.11
  %14 = load %struct._object*, %struct._object** @errnomap, align 8
  %15 = load %struct._object*, %struct._object** %myerrno, align 8
  %call14 = call %struct._object* @PyDict_GetItem(%struct._object* %14, %struct._object* %15)
  store %struct._object* %call14, %struct._object** %newtype, align 8
  %16 = load %struct._object*, %struct._object** %newtype, align 8
  %tobool15 = icmp ne %struct._object* %16, null
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.13
  %17 = load %struct._object*, %struct._object** %newtype, align 8
  %18 = bitcast %struct._object* %17 to %struct._typeobject*
  store %struct._typeobject* %18, %struct._typeobject** %type.addr, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.then.13
  %call17 = call %struct._object* @PyErr_Occurred()
  %tobool18 = icmp ne %struct._object* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.else
  br label %error

if.end.20:                                        ; preds = %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %if.end.7
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %19 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 36
  %20 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %21 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call24 = call %struct._object* %20(%struct._typeobject* %21, i64 0)
  %22 = bitcast %struct._object* %call24 to %struct.PyOSErrorObject*
  store %struct.PyOSErrorObject* %22, %struct.PyOSErrorObject** %self, align 8
  %23 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %tobool25 = icmp ne %struct.PyOSErrorObject* %23, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.23
  br label %error

if.end.27:                                        ; preds = %if.end.23
  %24 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %dict = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %24, i32 0, i32 1
  store %struct._object* null, %struct._object** %dict, align 8
  %25 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %context = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %25, i32 0, i32 4
  store %struct._object* null, %struct._object** %context, align 8
  %26 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %cause = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %26, i32 0, i32 5
  store %struct._object* null, %struct._object** %cause, align 8
  %27 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %traceback = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %27, i32 0, i32 3
  store %struct._object* null, %struct._object** %traceback, align 8
  %28 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %written = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %28, i32 0, i32 11
  store i64 -1, i64* %written, align 8
  %29 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call28 = call i32 @oserror_use_init(%struct._typeobject* %29)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.else.35, label %if.then.30

if.then.30:                                       ; preds = %if.end.27
  %30 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %31 = load %struct._object*, %struct._object** %myerrno, align 8
  %32 = load %struct._object*, %struct._object** %strerror, align 8
  %33 = load %struct._object*, %struct._object** %filename, align 8
  %34 = load %struct._object*, %struct._object** %filename2, align 8
  %call31 = call i32 @oserror_init(%struct.PyOSErrorObject* %30, %struct._object** %args.addr, %struct._object* %31, %struct._object* %32, %struct._object* %33, %struct._object* %34)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.30
  br label %error

if.end.34:                                        ; preds = %if.then.30
  br label %if.end.42

if.else.35:                                       ; preds = %if.end.27
  %call36 = call %struct._object* @PyTuple_New(i64 0)
  %35 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %args37 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %35, i32 0, i32 2
  store %struct._object* %call36, %struct._object** %args37, align 8
  %36 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %args38 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %36, i32 0, i32 2
  %37 = load %struct._object*, %struct._object** %args38, align 8
  %cmp39 = icmp eq %struct._object* %37, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.else.35
  br label %error

if.end.41:                                        ; preds = %if.else.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.34
  br label %do.body

do.body:                                          ; preds = %if.end.42
  %38 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp43 = icmp ne %struct._object* %39, null
  br i1 %cmp43, label %if.then.44, label %if.end.52

if.then.44:                                       ; preds = %do.body
  br label %do.body.45

do.body.45:                                       ; preds = %if.then.44
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt46, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %ob_refcnt46, align 8
  %cmp47 = icmp ne i64 %dec, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.45
  br label %if.end.51

if.else.49:                                       ; preds = %do.body.45
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end

do.end:                                           ; preds = %if.end.51
  br label %if.end.52

if.end.52:                                        ; preds = %do.end, %do.body
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %47 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %48 = bitcast %struct.PyOSErrorObject* %47 to %struct._object*
  store %struct._object* %48, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.40, %if.then.33, %if.then.26, %if.then.19, %if.then.6, %if.then.3
  br label %do.body.54

do.body.54:                                       ; preds = %error
  %49 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %49, %struct._object** %_py_xdecref_tmp55, align 8
  %50 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8
  %cmp56 = icmp ne %struct._object* %50, null
  br i1 %cmp56, label %if.then.57, label %if.end.69

if.then.57:                                       ; preds = %do.body.54
  br label %do.body.58

do.body.58:                                       ; preds = %if.then.57
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp55, align 8
  store %struct._object* %51, %struct._object** %_py_decref_tmp59, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %53, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %56(%struct._object* %57)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %if.end.69

if.end.69:                                        ; preds = %do.end.68, %do.body.54
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %58 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self, align 8
  %59 = bitcast %struct.PyOSErrorObject* %58 to %struct._object*
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp72, align 8
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp72, align 8
  %cmp73 = icmp ne %struct._object* %60, null
  br i1 %cmp73, label %if.then.74, label %if.end.86

if.then.74:                                       ; preds = %do.body.71
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.74
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp72, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp76, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt77, align 8
  %dec78 = add i64 %63, -1
  store i64 %dec78, i64* %ob_refcnt77, align 8
  %cmp79 = icmp ne i64 %dec78, 0
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.75
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.75
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp76, align 8
  call void %66(%struct._object* %67)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.body.71
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.87, %do.end.53
  %68 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %68
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @OSError_reduce(%struct.PyOSErrorObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %args = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %size = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  %0 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %args1 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args1, align 8
  store %struct._object* %1, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %res, align 8
  %2 = load %struct._object*, %struct._object** %args, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %4, 2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %5, i32 0, i32 9
  %6 = load %struct._object*, %struct._object** %filename, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename2 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %7, i32 0, i32 10
  %8 = load %struct._object*, %struct._object** %filename2, align 8
  %tobool3 = icmp ne %struct._object* %8, null
  %cond = select i1 %tobool3, i32 5, i32 3
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %size, align 8
  %9 = load i64, i64* %size, align 8
  %call = call %struct._object* @PyTuple_New(i64 %9)
  store %struct._object* %call, %struct._object** %args, align 8
  %10 = load %struct._object*, %struct._object** %args, align 8
  %tobool4 = icmp ne %struct._object* %10, null
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %args6 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %args6, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %14, %struct._object** %tmp, align 8
  %15 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %17 = load %struct._object*, %struct._object** %tmp, align 8
  %18 = load %struct._object*, %struct._object** %args, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item7 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx8 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item7, i32 0, i64 0
  store %struct._object* %17, %struct._object** %arrayidx8, align 8
  %20 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %args9 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %20, i32 0, i32 2
  %21 = load %struct._object*, %struct._object** %args9, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyTupleObject*
  %ob_item10 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %22, i32 0, i32 1
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item10, i32 0, i64 1
  %23 = load %struct._object*, %struct._object** %arrayidx11, align 8
  store %struct._object* %23, %struct._object** %tmp, align 8
  %24 = load %struct._object*, %struct._object** %tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt12, align 8
  %inc13 = add i64 %25, 1
  store i64 %inc13, i64* %ob_refcnt12, align 8
  %26 = load %struct._object*, %struct._object** %tmp, align 8
  %27 = load %struct._object*, %struct._object** %args, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item14 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx15 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item14, i32 0, i64 1
  store %struct._object* %26, %struct._object** %arrayidx15, align 8
  %29 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename16 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %29, i32 0, i32 9
  %30 = load %struct._object*, %struct._object** %filename16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt17, align 8
  %inc18 = add i64 %31, 1
  store i64 %inc18, i64* %ob_refcnt17, align 8
  %32 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename19 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %32, i32 0, i32 9
  %33 = load %struct._object*, %struct._object** %filename19, align 8
  %34 = load %struct._object*, %struct._object** %args, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*
  %ob_item20 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item20, i32 0, i64 2
  store %struct._object* %33, %struct._object** %arrayidx21, align 8
  %36 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename222 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %36, i32 0, i32 10
  %37 = load %struct._object*, %struct._object** %filename222, align 8
  %tobool23 = icmp ne %struct._object* %37, null
  br i1 %tobool23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.end
  %38 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc25 = add i64 %38, 1
  store i64 %inc25, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %39 = load %struct._object*, %struct._object** %args, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyTupleObject*
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %40, i32 0, i32 1
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 3
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx27, align 8
  %41 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename228 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %41, i32 0, i32 10
  %42 = load %struct._object*, %struct._object** %filename228, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt29, align 8
  %inc30 = add i64 %43, 1
  store i64 %inc30, i64* %ob_refcnt29, align 8
  %44 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename231 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %44, i32 0, i32 10
  %45 = load %struct._object*, %struct._object** %filename231, align 8
  %46 = load %struct._object*, %struct._object** %args, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyTupleObject*
  %ob_item32 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %47, i32 0, i32 1
  %arrayidx33 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item32, i32 0, i64 4
  store %struct._object* %45, %struct._object** %arrayidx33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.24, %if.end
  br label %if.end.37

if.else:                                          ; preds = %land.lhs.true, %entry
  %48 = load %struct._object*, %struct._object** %args, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt35, align 8
  %inc36 = add i64 %49, 1
  store i64 %inc36, i64* %ob_refcnt35, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.end.34
  %50 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %50, i32 0, i32 1
  %51 = load %struct._object*, %struct._object** %dict, align 8
  %tobool38 = icmp ne %struct._object* %51, null
  br i1 %tobool38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %if.end.37
  %52 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %53 = bitcast %struct.PyOSErrorObject* %52 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %55 = load %struct._object*, %struct._object** %args, align 8
  %56 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %dict40 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %56, i32 0, i32 1
  %57 = load %struct._object*, %struct._object** %dict40, align 8
  %call41 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._typeobject* %54, %struct._object* %55, %struct._object* %57)
  store %struct._object* %call41, %struct._object** %res, align 8
  br label %if.end.45

if.else.42:                                       ; preds = %if.end.37
  %58 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %59 = bitcast %struct.PyOSErrorObject* %58 to %struct._object*
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %61 = load %struct._object*, %struct._object** %args, align 8
  %call44 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._typeobject* %60, %struct._object* %61)
  store %struct._object* %call44, %struct._object** %res, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.39
  br label %do.body

do.body:                                          ; preds = %if.end.45
  %62 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt47, align 8
  %dec = add i64 %64, -1
  store i64 %dec, i64* %ob_refcnt47, align 8
  %cmp48 = icmp ne i64 %dec, 0
  br i1 %cmp48, label %if.then.50, label %if.else.51

if.then.50:                                       ; preds = %do.body
  br label %if.end.53

if.else.51:                                       ; preds = %do.body
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %67(%struct._object* %68)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.then.50
  br label %do.end

do.end:                                           ; preds = %if.end.53
  %69 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %69, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @OSError_written_get(%struct.PyOSErrorObject* %self, i8* %context) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %context.addr = alloca i8*, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %written = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %0, i32 0, i32 11
  %1 = load i64, i64* %written, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.131, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %written1 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %3, i32 0, i32 11
  %4 = load i64, i64* %written1, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @OSError_written_set(%struct.PyOSErrorObject* %self, %struct._object* %arg, i8* %context) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %context.addr = alloca i8*, align 8
  %n = alloca i64, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call = call i64 @PyNumber_AsSsize_t(%struct._object* %0, %struct._object* %1)
  store i64 %call, i64* %n, align 8
  %2 = load i64, i64* %n, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i64, i64* %n, align 8
  %4 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %written = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %4, i32 0, i32 11
  store i64 %3, i64* %written, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i64 @PyNumber_AsSsize_t(%struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal i32 @oserror_use_init(%struct._typeobject* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._typeobject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 35
  %1 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8
  %cmp = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %1, bitcast (i32 (%struct.PyOSErrorObject*, %struct._object*, %struct._object*)* @OSError_init to i32 (%struct._object*, %struct._object*, %struct._object*)*)
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_new = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 37
  %3 = load %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** %tp_new, align 8
  %cmp1 = icmp eq %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* %3, @OSError_new
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @oserror_parse_args(%struct._object** %p_args, %struct._object** %myerrno, %struct._object** %strerror, %struct._object** %filename, %struct._object** %filename2) #0 {
entry:
  %retval = alloca i32, align 4
  %p_args.addr = alloca %struct._object**, align 8
  %myerrno.addr = alloca %struct._object**, align 8
  %strerror.addr = alloca %struct._object**, align 8
  %filename.addr = alloca %struct._object**, align 8
  %filename2.addr = alloca %struct._object**, align 8
  %nargs = alloca i64, align 8
  %args = alloca %struct._object*, align 8
  %_winerror = alloca %struct._object*, align 8
  %winerror = alloca %struct._object**, align 8
  store %struct._object** %p_args, %struct._object*** %p_args.addr, align 8
  store %struct._object** %myerrno, %struct._object*** %myerrno.addr, align 8
  store %struct._object** %strerror, %struct._object*** %strerror.addr, align 8
  store %struct._object** %filename, %struct._object*** %filename.addr, align 8
  store %struct._object** %filename2, %struct._object*** %filename2.addr, align 8
  %0 = load %struct._object**, %struct._object*** %p_args.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  store %struct._object* %1, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %_winerror, align 8
  store %struct._object** %_winerror, %struct._object*** %winerror, align 8
  %2 = load %struct._object*, %struct._object** %args, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %nargs, align 8
  %5 = load i64, i64* %nargs, align 8
  %cmp = icmp sge i64 %5, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %entry
  %6 = load i64, i64* %nargs, align 8
  %cmp1 = icmp sle i64 %6, 5
  br i1 %cmp1, label %if.then, label %if.end.3

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct._object*, %struct._object** %args, align 8
  %8 = load %struct._object**, %struct._object*** %myerrno.addr, align 8
  %9 = load %struct._object**, %struct._object*** %strerror.addr, align 8
  %10 = load %struct._object**, %struct._object*** %filename.addr, align 8
  %11 = load %struct._object**, %struct._object*** %winerror, align 8
  %12 = load %struct._object**, %struct._object*** %filename2.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i64 2, i64 5, %struct._object** %8, %struct._object** %9, %struct._object** %10, %struct._object** %11, %struct._object** %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @oserror_init(%struct.PyOSErrorObject* %self, %struct._object** %p_args, %struct._object* %myerrno, %struct._object* %strerror, %struct._object* %filename, %struct._object* %filename2) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyOSErrorObject*, align 8
  %p_args.addr = alloca %struct._object**, align 8
  %myerrno.addr = alloca %struct._object*, align 8
  %strerror.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %filename2.addr = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %nargs = alloca i64, align 8
  %subslice = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp47 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  store %struct.PyOSErrorObject* %self, %struct.PyOSErrorObject** %self.addr, align 8
  store %struct._object** %p_args, %struct._object*** %p_args.addr, align 8
  store %struct._object* %myerrno, %struct._object** %myerrno.addr, align 8
  store %struct._object* %strerror, %struct._object** %strerror.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store %struct._object* %filename2, %struct._object** %filename2.addr, align 8
  %0 = load %struct._object**, %struct._object*** %p_args.addr, align 8
  %1 = load %struct._object*, %struct._object** %0, align 8
  store %struct._object* %1, %struct._object** %args, align 8
  %2 = load %struct._object*, %struct._object** %args, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %nargs, align 8
  %5 = load %struct._object*, %struct._object** %filename.addr, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp = icmp ne %struct._object* %6, @_Py_NoneStruct
  br i1 %cmp, label %if.then, label %if.end.37

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %8 = bitcast %struct.PyOSErrorObject* %7 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %10 = load %struct._object*, %struct._object** @PyExc_BlockingIOError, align 8
  %11 = bitcast %struct._object* %10 to %struct._typeobject*
  %cmp1 = icmp eq %struct._typeobject* %9, %11
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %if.then
  %12 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call = call i32 @PyNumber_Check(%struct._object* %12)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true.2
  %13 = load %struct._object*, %struct._object** %filename.addr, align 8
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call5 = call i64 @PyNumber_AsSsize_t(%struct._object* %13, %struct._object* %14)
  %15 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %written = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %15, i32 0, i32 11
  store i64 %call5, i64* %written, align 8
  %16 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %written6 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %16, i32 0, i32 11
  %17 = load i64, i64* %written6, align 8
  %cmp7 = icmp eq i64 %17, -1
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %if.then.4
  %call9 = call %struct._object* @PyErr_Occurred()
  %tobool10 = icmp ne %struct._object* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %land.lhs.true.8
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.8, %if.then.4
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true.2, %if.then
  %18 = load %struct._object*, %struct._object** %filename.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %20 = load %struct._object*, %struct._object** %filename.addr, align 8
  %21 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename12 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %21, i32 0, i32 9
  store %struct._object* %20, %struct._object** %filename12, align 8
  %22 = load %struct._object*, %struct._object** %filename2.addr, align 8
  %tobool13 = icmp ne %struct._object* %22, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.20

land.lhs.true.14:                                 ; preds = %if.else
  %23 = load %struct._object*, %struct._object** %filename2.addr, align 8
  %cmp15 = icmp ne %struct._object* %23, @_Py_NoneStruct
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %land.lhs.true.14
  %24 = load %struct._object*, %struct._object** %filename2.addr, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt17, align 8
  %inc18 = add i64 %25, 1
  store i64 %inc18, i64* %ob_refcnt17, align 8
  %26 = load %struct._object*, %struct._object** %filename2.addr, align 8
  %27 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %filename219 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %27, i32 0, i32 10
  store %struct._object* %26, %struct._object** %filename219, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %land.lhs.true.14, %if.else
  %28 = load i64, i64* %nargs, align 8
  %cmp21 = icmp sge i64 %28, 2
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.35

land.lhs.true.22:                                 ; preds = %if.end.20
  %29 = load i64, i64* %nargs, align 8
  %cmp23 = icmp sle i64 %29, 5
  br i1 %cmp23, label %if.then.24, label %if.end.35

if.then.24:                                       ; preds = %land.lhs.true.22
  %30 = load %struct._object*, %struct._object** %args, align 8
  %call25 = call %struct._object* @PyTuple_GetSlice(%struct._object* %30, i64 0, i64 2)
  store %struct._object* %call25, %struct._object** %subslice, align 8
  %31 = load %struct._object*, %struct._object** %subslice, align 8
  %tobool26 = icmp ne %struct._object* %31, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  store i32 -1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.24
  br label %do.body

do.body:                                          ; preds = %if.end.28
  %32 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt29, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt29, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body
  br label %if.end.34

if.else.32:                                       ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end

do.end:                                           ; preds = %if.end.34
  %39 = load %struct._object*, %struct._object** %subslice, align 8
  store %struct._object* %39, %struct._object** %args, align 8
  %40 = load %struct._object**, %struct._object*** %p_args.addr, align 8
  store %struct._object* %39, %struct._object** %40, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %do.end, %land.lhs.true.22, %if.end.20
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %land.lhs.true, %entry
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %41 = load %struct._object*, %struct._object** %myerrno.addr, align 8
  store %struct._object* %41, %struct._object** %_py_xincref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp39 = icmp ne %struct._object* %42, null
  br i1 %cmp39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %do.body.38
  %43 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt41, align 8
  %inc42 = add i64 %44, 1
  store i64 %inc42, i64* %ob_refcnt41, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %do.body.38
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %45 = load %struct._object*, %struct._object** %myerrno.addr, align 8
  %46 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %myerrno45 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %46, i32 0, i32 7
  store %struct._object* %45, %struct._object** %myerrno45, align 8
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.44
  %47 = load %struct._object*, %struct._object** %strerror.addr, align 8
  store %struct._object* %47, %struct._object** %_py_xincref_tmp47, align 8
  %48 = load %struct._object*, %struct._object** %_py_xincref_tmp47, align 8
  %cmp48 = icmp ne %struct._object* %48, null
  br i1 %cmp48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %do.body.46
  %49 = load %struct._object*, %struct._object** %_py_xincref_tmp47, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt50, align 8
  %inc51 = add i64 %50, 1
  store i64 %inc51, i64* %ob_refcnt50, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %do.body.46
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %51 = load %struct._object*, %struct._object** %strerror.addr, align 8
  %52 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %strerror54 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %52, i32 0, i32 8
  store %struct._object* %51, %struct._object** %strerror54, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.53
  %53 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %args56 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %53, i32 0, i32 2
  %54 = load %struct._object*, %struct._object** %args56, align 8
  store %struct._object* %54, %struct._object** %_py_tmp, align 8
  %55 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp57 = icmp ne %struct._object* %55, null
  br i1 %cmp57, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %do.body.55
  %56 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %args59 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %56, i32 0, i32 2
  store %struct._object* null, %struct._object** %args59, align 8
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.58
  %57 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp61, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %59, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %62(%struct._object* %63)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.body.55
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  %64 = load %struct._object*, %struct._object** %args, align 8
  %65 = load %struct.PyOSErrorObject*, %struct.PyOSErrorObject** %self.addr, align 8
  %args73 = getelementptr inbounds %struct.PyOSErrorObject, %struct.PyOSErrorObject* %65, i32 0, i32 2
  store %struct._object* %64, %struct._object** %args73, align 8
  store %struct._object* null, %struct._object** %args, align 8
  %66 = load %struct._object**, %struct._object*** %p_args.addr, align 8
  store %struct._object* null, %struct._object** %66, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.72, %if.then.27, %if.then.11
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i32 @PyNumber_Check(%struct._object*) #1

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @SyntaxError_dealloc(%struct.PySyntaxErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PySyntaxErrorObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PySyntaxErrorObject* %self, %struct.PySyntaxErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %1 = bitcast %struct.PySyntaxErrorObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %call = call i32 @SyntaxError_clear(%struct.PySyntaxErrorObject* %14)
  %15 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %16 = bitcast %struct.PySyntaxErrorObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 38
  %18 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %19 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %20 = bitcast %struct.PySyntaxErrorObject* %19 to %struct._object*
  %21 = bitcast %struct._object* %20 to i8*
  call void %18(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @SyntaxError_str(%struct.PySyntaxErrorObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PySyntaxErrorObject*, align 8
  %have_lineno = alloca i32, align 4
  %filename = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %overflow = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PySyntaxErrorObject* %self, %struct.PySyntaxErrorObject** %self.addr, align 8
  store i32 0, i32* %have_lineno, align 4
  %0 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename1 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %0, i32 0, i32 8
  %1 = load %struct._object*, %struct._object** %filename1, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename2 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %2, i32 0, i32 8
  %3 = load %struct._object*, %struct._object** %filename2, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename3 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %6, i32 0, i32 8
  %7 = load %struct._object*, %struct._object** %filename3, align 8
  %call = call %struct._object* @my_basename(%struct._object* %7)
  store %struct._object* %call, %struct._object** %filename, align 8
  %8 = load %struct._object*, %struct._object** %filename, align 8
  %cmp4 = icmp eq %struct._object* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct._object* null, %struct._object** %filename, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %9 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %9, i32 0, i32 9
  %10 = load %struct._object*, %struct._object** %lineno, align 8
  %cmp7 = icmp ne %struct._object* %10, null
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.6
  %11 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno8 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %11, i32 0, i32 9
  %12 = load %struct._object*, %struct._object** %lineno8, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %cmp10 = icmp eq %struct._typeobject* %13, @PyLong_Type
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.6
  %14 = phi i1 [ false, %if.end.6 ], [ %cmp10, %land.rhs ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %have_lineno, align 4
  %15 = load %struct._object*, %struct._object** %filename, align 8
  %tobool11 = icmp ne %struct._object* %15, null
  br i1 %tobool11, label %if.end.18, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.end
  %16 = load i32, i32* %have_lineno, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.end.18, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.12
  %17 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %17, i32 0, i32 7
  %18 = load %struct._object*, %struct._object** %msg, align 8
  %tobool15 = icmp ne %struct._object* %18, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %19 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg16 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %19, i32 0, i32 7
  %20 = load %struct._object*, %struct._object** %msg16, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %20, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %call17 = call %struct._object* @PyObject_Str(%struct._object* %cond)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.12, %land.end
  %21 = load %struct._object*, %struct._object** %filename, align 8
  %tobool19 = icmp ne %struct._object* %21, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.else.33

land.lhs.true.20:                                 ; preds = %if.end.18
  %22 = load i32, i32* %have_lineno, align 4
  %tobool21 = icmp ne i32 %22, 0
  br i1 %tobool21, label %if.then.22, label %if.else.33

if.then.22:                                       ; preds = %land.lhs.true.20
  %23 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg23 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %23, i32 0, i32 7
  %24 = load %struct._object*, %struct._object** %msg23, align 8
  %tobool24 = icmp ne %struct._object* %24, null
  br i1 %tobool24, label %cond.true.25, label %cond.false.27

cond.true.25:                                     ; preds = %if.then.22
  %25 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg26 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %25, i32 0, i32 7
  %26 = load %struct._object*, %struct._object** %msg26, align 8
  br label %cond.end.28

cond.false.27:                                    ; preds = %if.then.22
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.false.27, %cond.true.25
  %cond29 = phi %struct._object* [ %26, %cond.true.25 ], [ @_Py_NoneStruct, %cond.false.27 ]
  %27 = load %struct._object*, %struct._object** %filename, align 8
  %28 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno30 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %28, i32 0, i32 9
  %29 = load %struct._object*, %struct._object** %lineno30, align 8
  %call31 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %29, i32* %overflow)
  %call32 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.154, i32 0, i32 0), %struct._object* %cond29, %struct._object* %27, i64 %call31)
  store %struct._object* %call32, %struct._object** %result, align 8
  br label %if.end.56

if.else.33:                                       ; preds = %land.lhs.true.20, %if.end.18
  %30 = load %struct._object*, %struct._object** %filename, align 8
  %tobool34 = icmp ne %struct._object* %30, null
  br i1 %tobool34, label %if.then.35, label %if.else.44

if.then.35:                                       ; preds = %if.else.33
  %31 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg36 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %31, i32 0, i32 7
  %32 = load %struct._object*, %struct._object** %msg36, align 8
  %tobool37 = icmp ne %struct._object* %32, null
  br i1 %tobool37, label %cond.true.38, label %cond.false.40

cond.true.38:                                     ; preds = %if.then.35
  %33 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg39 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %33, i32 0, i32 7
  %34 = load %struct._object*, %struct._object** %msg39, align 8
  br label %cond.end.41

cond.false.40:                                    ; preds = %if.then.35
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.false.40, %cond.true.38
  %cond42 = phi %struct._object* [ %34, %cond.true.38 ], [ @_Py_NoneStruct, %cond.false.40 ]
  %35 = load %struct._object*, %struct._object** %filename, align 8
  %call43 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), %struct._object* %cond42, %struct._object* %35)
  store %struct._object* %call43, %struct._object** %result, align 8
  br label %if.end.55

if.else.44:                                       ; preds = %if.else.33
  %36 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg45 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %36, i32 0, i32 7
  %37 = load %struct._object*, %struct._object** %msg45, align 8
  %tobool46 = icmp ne %struct._object* %37, null
  br i1 %tobool46, label %cond.true.47, label %cond.false.49

cond.true.47:                                     ; preds = %if.else.44
  %38 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg48 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %38, i32 0, i32 7
  %39 = load %struct._object*, %struct._object** %msg48, align 8
  br label %cond.end.50

cond.false.49:                                    ; preds = %if.else.44
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.false.49, %cond.true.47
  %cond51 = phi %struct._object* [ %39, %cond.true.47 ], [ @_Py_NoneStruct, %cond.false.49 ]
  %40 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno52 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %40, i32 0, i32 9
  %41 = load %struct._object*, %struct._object** %lineno52, align 8
  %call53 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %41, i32* %overflow)
  %call54 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.156, i32 0, i32 0), %struct._object* %cond51, i64 %call53)
  store %struct._object* %call54, %struct._object** %result, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %cond.end.50, %cond.end.41
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %cond.end.28
  br label %do.body

do.body:                                          ; preds = %if.end.56
  %42 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp57 = icmp ne %struct._object* %43, null
  br i1 %cmp57, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %do.body
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %46, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp60 = icmp ne i64 %dec, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.59
  br label %if.end.64

if.else.62:                                       ; preds = %do.body.59
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %49(%struct._object* %50)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end

do.end:                                           ; preds = %if.end.64
  br label %if.end.65

if.end.65:                                        ; preds = %do.end, %do.body
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %51 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %51, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.66, %cond.end, %if.then.5
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal i32 @SyntaxError_traverse(%struct.PySyntaxErrorObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PySyntaxErrorObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  %vret52 = alloca i32, align 4
  store %struct.PySyntaxErrorObject* %self, %struct.PySyntaxErrorObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %msg, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg1 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %3, i32 0, i32 7
  %4 = load %struct._object*, %struct._object** %msg1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %8, i32 0, i32 8
  %9 = load %struct._object*, %struct._object** %filename, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename9 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %filename9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %16, i32 0, i32 9
  %17 = load %struct._object*, %struct._object** %lineno, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno20 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %19, i32 0, i32 9
  %20 = load %struct._object*, %struct._object** %lineno20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %24 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %24, i32 0, i32 10
  %25 = load %struct._object*, %struct._object** %offset, align 8
  %tobool28 = icmp ne %struct._object* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset31 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %27, i32 0, i32 10
  %28 = load %struct._object*, %struct._object** %offset31, align 8
  %29 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %26(%struct._object* %28, i8* %29)
  store i32 %call32, i32* %vret30, align 4
  %30 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %30, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %31 = load i32, i32* %vret30, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %32 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %32, i32 0, i32 11
  %33 = load %struct._object*, %struct._object** %text, align 8
  %tobool39 = icmp ne %struct._object* %33, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %34 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %35 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text42 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %35, i32 0, i32 11
  %36 = load %struct._object*, %struct._object** %text42, align 8
  %37 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 %34(%struct._object* %36, i8* %37)
  store i32 %call43, i32* %vret41, align 4
  %38 = load i32, i32* %vret41, align 4
  %tobool44 = icmp ne i32 %38, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %39 = load i32, i32* %vret41, align 4
  store i32 %39, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %40 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %print_file_and_line = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %40, i32 0, i32 12
  %41 = load %struct._object*, %struct._object** %print_file_and_line, align 8
  %tobool50 = icmp ne %struct._object* %41, null
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.49
  %42 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %43 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %print_file_and_line53 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %43, i32 0, i32 12
  %44 = load %struct._object*, %struct._object** %print_file_and_line53, align 8
  %45 = load i8*, i8** %arg.addr, align 8
  %call54 = call i32 %42(%struct._object* %44, i8* %45)
  store i32 %call54, i32* %vret52, align 4
  %46 = load i32, i32* %vret52, align 4
  %tobool55 = icmp ne i32 %46, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %47 = load i32, i32* %vret52, align 4
  store i32 %47, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.49
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %48 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %49 = bitcast %struct.PySyntaxErrorObject* %48 to %struct.PyBaseExceptionObject*
  %50 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %51 = load i8*, i8** %arg.addr, align 8
  %call60 = call i32 @BaseException_traverse(%struct.PyBaseExceptionObject* %49, i32 (%struct._object*, i8*)* %50, i8* %51)
  store i32 %call60, i32* %retval
  br label %return

return:                                           ; preds = %do.end.59, %if.then.56, %if.then.45, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @SyntaxError_clear(%struct.PySyntaxErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PySyntaxErrorObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  store %struct.PySyntaxErrorObject* %self, %struct.PySyntaxErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %msg, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg1 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %3, i32 0, i32 7
  store %struct._object* null, %struct._object** %msg1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename11 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %14, i32 0, i32 8
  store %struct._object* null, %struct._object** %filename11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %22 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %22, i32 0, i32 9
  %23 = load %struct._object*, %struct._object** %lineno, align 8
  store %struct._object* %23, %struct._object** %_py_tmp26, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %25 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno29 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %25, i32 0, i32 9
  store %struct._object* null, %struct._object** %lineno29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %33 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %33, i32 0, i32 10
  %34 = load %struct._object*, %struct._object** %offset, align 8
  store %struct._object* %34, %struct._object** %_py_tmp44, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %35, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %36 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset47 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %36, i32 0, i32 10
  store %struct._object* null, %struct._object** %offset47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp49, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %39, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %42(%struct._object* %43)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %44 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %44, i32 0, i32 11
  %45 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %45, %struct._object** %_py_tmp62, align 8
  %46 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %46, null
  br i1 %cmp63, label %if.then.64, label %if.end.77

if.then.64:                                       ; preds = %do.body.61
  %47 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text65 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %47, i32 0, i32 11
  store %struct._object* null, %struct._object** %text65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %if.then.64
  %48 = load %struct._object*, %struct._object** %_py_tmp62, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp67, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %50, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %53(%struct._object* %54)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %do.body.61
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  br label %do.body.79

do.body.79:                                       ; preds = %do.end.78
  %55 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %print_file_and_line = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %55, i32 0, i32 12
  %56 = load %struct._object*, %struct._object** %print_file_and_line, align 8
  store %struct._object* %56, %struct._object** %_py_tmp80, align 8
  %57 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  %cmp81 = icmp ne %struct._object* %57, null
  br i1 %cmp81, label %if.then.82, label %if.end.95

if.then.82:                                       ; preds = %do.body.79
  %58 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %print_file_and_line83 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %58, i32 0, i32 12
  store %struct._object* null, %struct._object** %print_file_and_line83, align 8
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.82
  %59 = load %struct._object*, %struct._object** %_py_tmp80, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp85, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %61, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %64(%struct._object* %65)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.79
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  %66 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %67 = bitcast %struct.PySyntaxErrorObject* %66 to %struct.PyBaseExceptionObject*
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %67)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @SyntaxError_init(%struct.PySyntaxErrorObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PySyntaxErrorObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %info = alloca %struct._object*, align 8
  %lenargs = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_tmp63 = alloca %struct._object*, align 8
  %_py_decref_tmp68 = alloca %struct._object*, align 8
  %_py_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_tmp111 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  %_py_decref_tmp135 = alloca %struct._object*, align 8
  store %struct.PySyntaxErrorObject* %self, %struct.PySyntaxErrorObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %info, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %lenargs, align 8
  %3 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %4 = bitcast %struct.PySyntaxErrorObject* %3 to %struct.PyBaseExceptionObject*
  %5 = load %struct._object*, %struct._object** %args.addr, align 8
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %4, %struct._object* %5, %struct._object* %6)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %lenargs, align 8
  %cmp1 = icmp sge i64 %7, 1
  br i1 %cmp1, label %if.then.2, label %if.end.15

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %8 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %8, i32 0, i32 7
  %9 = load %struct._object*, %struct._object** %msg, align 8
  store %struct._object* %9, %struct._object** %_py_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp3 = icmp ne %struct._object* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.10

if.then.4:                                        ; preds = %do.body
  %11 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg5 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %11, i32 0, i32 7
  store %struct._object* null, %struct._object** %msg5, align 8
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.4
  %12 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %19 = load %struct._object*, %struct._object** %args.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %20, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %21 = load %struct._object*, %struct._object** %arrayidx, align 8
  %22 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg12 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %22, i32 0, i32 7
  store %struct._object* %21, %struct._object** %msg12, align 8
  %23 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %msg13 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %23, i32 0, i32 7
  %24 = load %struct._object*, %struct._object** %msg13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt14, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %ob_refcnt14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %do.end.11, %if.end
  %26 = load i64, i64* %lenargs, align 8
  %cmp16 = icmp eq i64 %26, 2
  br i1 %cmp16, label %if.then.17, label %if.end.145

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct._object*, %struct._object** %args.addr, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item18 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx19 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item18, i32 0, i64 1
  %29 = load %struct._object*, %struct._object** %arrayidx19, align 8
  store %struct._object* %29, %struct._object** %info, align 8
  %30 = load %struct._object*, %struct._object** %info, align 8
  %call20 = call %struct._object* @PySequence_Tuple(%struct._object* %30)
  store %struct._object* %call20, %struct._object** %info, align 8
  %31 = load %struct._object*, %struct._object** %info, align 8
  %tobool = icmp ne %struct._object* %31, null
  br i1 %tobool, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %if.then.17
  store i32 -1, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.17
  %32 = load %struct._object*, %struct._object** %info, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyVarObject*
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %33, i32 0, i32 1
  %34 = load i64, i64* %ob_size23, align 8
  %cmp24 = icmp ne i64 %34, 4
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.end.22
  %35 = load %struct._object*, %struct._object** @PyExc_IndexError, align 8
  call void @PyErr_SetString(%struct._object* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.166, i32 0, i32 0))
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %36 = load %struct._object*, %struct._object** %info, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp27, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %38, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %41(%struct._object* %42)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.end.22
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %43 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %43, i32 0, i32 8
  %44 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %44, %struct._object** %_py_tmp39, align 8
  %45 = load %struct._object*, %struct._object** %_py_tmp39, align 8
  %cmp40 = icmp ne %struct._object* %45, null
  br i1 %cmp40, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %do.body.38
  %46 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename42 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %46, i32 0, i32 8
  store %struct._object* null, %struct._object** %filename42, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.41
  %47 = load %struct._object*, %struct._object** %_py_tmp39, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp44, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %49, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %52(%struct._object* %53)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.body.38
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %54 = load %struct._object*, %struct._object** %info, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyTupleObject*
  %ob_item56 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %55, i32 0, i32 1
  %arrayidx57 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item56, i32 0, i64 0
  %56 = load %struct._object*, %struct._object** %arrayidx57, align 8
  %57 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename58 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %57, i32 0, i32 8
  store %struct._object* %56, %struct._object** %filename58, align 8
  %58 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %filename59 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %58, i32 0, i32 8
  %59 = load %struct._object*, %struct._object** %filename59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt60, align 8
  %inc61 = add i64 %60, 1
  store i64 %inc61, i64* %ob_refcnt60, align 8
  br label %do.body.62

do.body.62:                                       ; preds = %do.end.55
  %61 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %61, i32 0, i32 9
  %62 = load %struct._object*, %struct._object** %lineno, align 8
  store %struct._object* %62, %struct._object** %_py_tmp63, align 8
  %63 = load %struct._object*, %struct._object** %_py_tmp63, align 8
  %cmp64 = icmp ne %struct._object* %63, null
  br i1 %cmp64, label %if.then.65, label %if.end.78

if.then.65:                                       ; preds = %do.body.62
  %64 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno66 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %64, i32 0, i32 9
  store %struct._object* null, %struct._object** %lineno66, align 8
  br label %do.body.67

do.body.67:                                       ; preds = %if.then.65
  %65 = load %struct._object*, %struct._object** %_py_tmp63, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp68, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt69, align 8
  %dec70 = add i64 %67, -1
  store i64 %dec70, i64* %ob_refcnt69, align 8
  %cmp71 = icmp ne i64 %dec70, 0
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %do.body.67
  br label %if.end.76

if.else.73:                                       ; preds = %do.body.67
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_dealloc75 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc75, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp68, align 8
  call void %70(%struct._object* %71)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.72
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %if.end.78

if.end.78:                                        ; preds = %do.end.77, %do.body.62
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  %72 = load %struct._object*, %struct._object** %info, align 8
  %73 = bitcast %struct._object* %72 to %struct.PyTupleObject*
  %ob_item80 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %73, i32 0, i32 1
  %arrayidx81 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item80, i32 0, i64 1
  %74 = load %struct._object*, %struct._object** %arrayidx81, align 8
  %75 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno82 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %75, i32 0, i32 9
  store %struct._object* %74, %struct._object** %lineno82, align 8
  %76 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %lineno83 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %76, i32 0, i32 9
  %77 = load %struct._object*, %struct._object** %lineno83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt84, align 8
  %inc85 = add i64 %78, 1
  store i64 %inc85, i64* %ob_refcnt84, align 8
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.79
  %79 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %79, i32 0, i32 10
  %80 = load %struct._object*, %struct._object** %offset, align 8
  store %struct._object* %80, %struct._object** %_py_tmp87, align 8
  %81 = load %struct._object*, %struct._object** %_py_tmp87, align 8
  %cmp88 = icmp ne %struct._object* %81, null
  br i1 %cmp88, label %if.then.89, label %if.end.102

if.then.89:                                       ; preds = %do.body.86
  %82 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset90 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %82, i32 0, i32 10
  store %struct._object* null, %struct._object** %offset90, align 8
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.89
  %83 = load %struct._object*, %struct._object** %_py_tmp87, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp92, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %85, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %88(%struct._object* %89)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %if.end.102

if.end.102:                                       ; preds = %do.end.101, %do.body.86
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %90 = load %struct._object*, %struct._object** %info, align 8
  %91 = bitcast %struct._object* %90 to %struct.PyTupleObject*
  %ob_item104 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %91, i32 0, i32 1
  %arrayidx105 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item104, i32 0, i64 2
  %92 = load %struct._object*, %struct._object** %arrayidx105, align 8
  %93 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset106 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %93, i32 0, i32 10
  store %struct._object* %92, %struct._object** %offset106, align 8
  %94 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %offset107 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %94, i32 0, i32 10
  %95 = load %struct._object*, %struct._object** %offset107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt108, align 8
  %inc109 = add i64 %96, 1
  store i64 %inc109, i64* %ob_refcnt108, align 8
  br label %do.body.110

do.body.110:                                      ; preds = %do.end.103
  %97 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %97, i32 0, i32 11
  %98 = load %struct._object*, %struct._object** %text, align 8
  store %struct._object* %98, %struct._object** %_py_tmp111, align 8
  %99 = load %struct._object*, %struct._object** %_py_tmp111, align 8
  %cmp112 = icmp ne %struct._object* %99, null
  br i1 %cmp112, label %if.then.113, label %if.end.126

if.then.113:                                      ; preds = %do.body.110
  %100 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text114 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %100, i32 0, i32 11
  store %struct._object* null, %struct._object** %text114, align 8
  br label %do.body.115

do.body.115:                                      ; preds = %if.then.113
  %101 = load %struct._object*, %struct._object** %_py_tmp111, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp116, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %103, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.115
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.115
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %106(%struct._object* %107)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.body.110
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  %108 = load %struct._object*, %struct._object** %info, align 8
  %109 = bitcast %struct._object* %108 to %struct.PyTupleObject*
  %ob_item128 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %109, i32 0, i32 1
  %arrayidx129 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item128, i32 0, i64 3
  %110 = load %struct._object*, %struct._object** %arrayidx129, align 8
  %111 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text130 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %111, i32 0, i32 11
  store %struct._object* %110, %struct._object** %text130, align 8
  %112 = load %struct.PySyntaxErrorObject*, %struct.PySyntaxErrorObject** %self.addr, align 8
  %text131 = getelementptr inbounds %struct.PySyntaxErrorObject, %struct.PySyntaxErrorObject* %112, i32 0, i32 11
  %113 = load %struct._object*, %struct._object** %text131, align 8
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt132, align 8
  %inc133 = add i64 %114, 1
  store i64 %inc133, i64* %ob_refcnt132, align 8
  br label %do.body.134

do.body.134:                                      ; preds = %do.end.127
  %115 = load %struct._object*, %struct._object** %info, align 8
  store %struct._object* %115, %struct._object** %_py_decref_tmp135, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt136, align 8
  %dec137 = add i64 %117, -1
  store i64 %dec137, i64* %ob_refcnt136, align 8
  %cmp138 = icmp ne i64 %dec137, 0
  br i1 %cmp138, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %do.body.134
  br label %if.end.143

if.else.140:                                      ; preds = %do.body.134
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  call void %120(%struct._object* %121)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %if.end.145

if.end.145:                                       ; preds = %do.end.144, %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.145, %do.end.36, %if.then.21, %if.then
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @my_basename(%struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %offset = alloca i64, align 8
  %kind = alloca i32, align 4
  %data = alloca i8*, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 3
  %2 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %tobool1 = icmp ne i32 %cond, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct._object*, %struct._object** %name.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %state2 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon* %state2 to i32*
  %bf.load3 = load i32, i32* %6, align 4
  %bf.lshr4 = lshr i32 %bf.load3, 2
  %bf.clear5 = and i32 %bf.lshr4, 7
  store i32 %bf.clear5, i32* %kind, align 4
  %7 = load %struct._object*, %struct._object** %name.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state6 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state6 to i32*
  %bf.load7 = load i32, i32* %9, align 4
  %bf.lshr8 = lshr i32 %bf.load7, 5
  %bf.clear9 = and i32 %bf.lshr8, 1
  %tobool10 = icmp ne i32 %bf.clear9, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.22

cond.true.11:                                     ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %name.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %state12 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3
  %12 = bitcast %struct.anon* %state12 to i32*
  %bf.load13 = load i32, i32* %12, align 4
  %bf.lshr14 = lshr i32 %bf.load13, 6
  %bf.clear15 = and i32 %bf.lshr14, 1
  %tobool16 = icmp ne i32 %bf.clear15, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.true.11
  %13 = load %struct._object*, %struct._object** %name.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 1
  %15 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.20

cond.false.18:                                    ; preds = %cond.true.11
  %16 = load %struct._object*, %struct._object** %name.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyCompactUnicodeObject*
  %add.ptr19 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %17, i64 1
  %18 = bitcast %struct.PyCompactUnicodeObject* %add.ptr19 to i8*
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.18, %cond.true.17
  %cond21 = phi i8* [ %15, %cond.true.17 ], [ %18, %cond.false.18 ]
  br label %cond.end.24

cond.false.22:                                    ; preds = %if.end
  %19 = load %struct._object*, %struct._object** %name.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyUnicodeObject*
  %data23 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %20, i32 0, i32 1
  %any = bitcast %union.anon* %data23 to i8**
  %21 = load i8*, i8** %any, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.22, %cond.end.20
  %cond25 = phi i8* [ %cond21, %cond.end.20 ], [ %21, %cond.false.22 ]
  store i8* %cond25, i8** %data, align 8
  %22 = load %struct._object*, %struct._object** %name.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 1
  %24 = load i64, i64* %length, align 8
  store i64 %24, i64* %size, align 8
  store i64 0, i64* %offset, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.24
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %size, align 8
  %cmp = icmp slt i64 %25, %26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %kind, align 4
  %cmp26 = icmp eq i32 %27, 1
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %29 = load i8*, i8** %data, align 8
  %arrayidx = getelementptr i8, i8* %29, i64 %28
  %30 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %30 to i32
  br label %cond.end.38

cond.false.28:                                    ; preds = %for.body
  %31 = load i32, i32* %kind, align 4
  %cmp29 = icmp eq i32 %31, 2
  br i1 %cmp29, label %cond.true.31, label %cond.false.34

cond.true.31:                                     ; preds = %cond.false.28
  %32 = load i64, i64* %i, align 8
  %33 = load i8*, i8** %data, align 8
  %34 = bitcast i8* %33 to i16*
  %arrayidx32 = getelementptr i16, i16* %34, i64 %32
  %35 = load i16, i16* %arrayidx32, align 2
  %conv33 = zext i16 %35 to i32
  br label %cond.end.36

cond.false.34:                                    ; preds = %cond.false.28
  %36 = load i64, i64* %i, align 8
  %37 = load i8*, i8** %data, align 8
  %38 = bitcast i8* %37 to i32*
  %arrayidx35 = getelementptr i32, i32* %38, i64 %36
  %39 = load i32, i32* %arrayidx35, align 4
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.34, %cond.true.31
  %cond37 = phi i32 [ %conv33, %cond.true.31 ], [ %39, %cond.false.34 ]
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.end.36, %cond.true.27
  %cond39 = phi i32 [ %conv, %cond.true.27 ], [ %cond37, %cond.end.36 ]
  %cmp40 = icmp eq i32 %cond39, 47
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %cond.end.38
  %40 = load i64, i64* %i, align 8
  %add = add i64 %40, 1
  store i64 %add, i64* %offset, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %cond.end.38
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %41 = load i64, i64* %i, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load i64, i64* %offset, align 8
  %cmp44 = icmp ne i64 %42, 0
  br i1 %cmp44, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %for.end
  %43 = load %struct._object*, %struct._object** %name.addr, align 8
  %44 = load i64, i64* %offset, align 8
  %45 = load i64, i64* %size, align 8
  %call47 = call %struct._object* @PyUnicode_Substring(%struct._object* %43, i64 %44, i64 %45)
  store %struct._object* %call47, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %for.end
  %46 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt, align 8
  %inc48 = add i64 %47, 1
  store i64 %inc48, i64* %ob_refcnt, align 8
  %48 = load %struct._object*, %struct._object** %name.addr, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.46, %if.then
  %49 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %49
}

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @KeyError_str(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %cmp = icmp eq i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %args1 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %args1, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  %call = call %struct._object* @PyObject_Repr(%struct._object* %7)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %call2 = call %struct._object* @BaseException_str(%struct.PyBaseExceptionObject* %8)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

declare %struct._object* @PyObject_Repr(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @UnicodeError_dealloc(%struct.PyUnicodeErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyUnicodeErrorObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyUnicodeErrorObject* %self, %struct.PyUnicodeErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %1 = bitcast %struct.PyUnicodeErrorObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %call = call i32 @UnicodeError_clear(%struct.PyUnicodeErrorObject* %14)
  %15 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %16 = bitcast %struct.PyUnicodeErrorObject* %15 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 38
  %18 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %19 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %20 = bitcast %struct.PyUnicodeErrorObject* %19 to %struct._object*
  %21 = bitcast %struct._object* %20 to i8*
  call void %18(i8* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @UnicodeEncodeError_str(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %uself = alloca %struct.PyUnicodeErrorObject*, align 8
  %result = alloca %struct._object*, align 8
  %reason_str = alloca %struct._object*, align 8
  %encoding_str = alloca %struct._object*, align 8
  %badchar = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  store %struct.PyUnicodeErrorObject* %1, %struct.PyUnicodeErrorObject** %uself, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %reason_str, align 8
  store %struct._object* null, %struct._object** %encoding_str, align 8
  %2 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 8
  %3 = load %struct._object*, %struct._object** %object, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %4, i32 0, i32 11
  %5 = load %struct._object*, %struct._object** %reason, align 8
  %call1 = call %struct._object* @PyObject_Str(%struct._object* %5)
  store %struct._object* %call1, %struct._object** %reason_str, align 8
  %6 = load %struct._object*, %struct._object** %reason_str, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %done

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %7, i32 0, i32 7
  %8 = load %struct._object*, %struct._object** %encoding, align 8
  %call4 = call %struct._object* @PyObject_Str(%struct._object* %8)
  store %struct._object* %call4, %struct._object** %encoding_str, align 8
  %9 = load %struct._object*, %struct._object** %encoding_str, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %done

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %10, i32 0, i32 9
  %11 = load i64, i64* %start, align 8
  %12 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object8 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %12, i32 0, i32 8
  %13 = load %struct._object*, %struct._object** %object8, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 1
  %15 = load i64, i64* %length, align 8
  %cmp9 = icmp slt i64 %11, %15
  br i1 %cmp9, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.end.7
  %16 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %end = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %16, i32 0, i32 10
  %17 = load i64, i64* %end, align 8
  %18 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start10 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %18, i32 0, i32 9
  %19 = load i64, i64* %start10, align 8
  %add = add i64 %19, 1
  %cmp11 = icmp eq i64 %17, %add
  br i1 %cmp11, label %if.then.12, label %if.else.25

if.then.12:                                       ; preds = %land.lhs.true
  %20 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object13 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %20, i32 0, i32 8
  %21 = load %struct._object*, %struct._object** %object13, align 8
  %22 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start14 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %22, i32 0, i32 9
  %23 = load i64, i64* %start14, align 8
  %call15 = call i32 @PyUnicode_ReadChar(%struct._object* %21, i64 %23)
  store i32 %call15, i32* %badchar, align 4
  %24 = load i32, i32* %badchar, align 4
  %cmp16 = icmp ule i32 %24, 255
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.12
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.178, i32 0, i32 0), i8** %fmt, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.12
  %25 = load i32, i32* %badchar, align 4
  %cmp18 = icmp ule i32 %25, 65535
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.179, i32 0, i32 0), i8** %fmt, align 8
  br label %if.end.21

if.else.20:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.180, i32 0, i32 0), i8** %fmt, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.17
  %26 = load i8*, i8** %fmt, align 8
  %27 = load %struct._object*, %struct._object** %encoding_str, align 8
  %28 = load i32, i32* %badchar, align 4
  %29 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start23 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %29, i32 0, i32 9
  %30 = load i64, i64* %start23, align 8
  %31 = load %struct._object*, %struct._object** %reason_str, align 8
  %call24 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* %26, %struct._object* %27, i32 %28, i64 %30, %struct._object* %31)
  store %struct._object* %call24, %struct._object** %result, align 8
  br label %if.end.29

if.else.25:                                       ; preds = %land.lhs.true, %if.end.7
  %32 = load %struct._object*, %struct._object** %encoding_str, align 8
  %33 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start26 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %33, i32 0, i32 9
  %34 = load i64, i64* %start26, align 8
  %35 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %end27 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %35, i32 0, i32 10
  %36 = load i64, i64* %end27, align 8
  %sub = sub i64 %36, 1
  %37 = load %struct._object*, %struct._object** %reason_str, align 8
  %call28 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.181, i32 0, i32 0), %struct._object* %32, i64 %34, i64 %sub, %struct._object* %37)
  store %struct._object* %call28, %struct._object** %result, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.25, %if.end.22
  br label %done

done:                                             ; preds = %if.end.29, %if.then.6, %if.then.2
  br label %do.body

do.body:                                          ; preds = %done
  %38 = load %struct._object*, %struct._object** %reason_str, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp30 = icmp ne %struct._object* %39, null
  br i1 %cmp30, label %if.then.31, label %if.end.37

if.then.31:                                       ; preds = %do.body
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp33 = icmp ne i64 %dec, 0
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.32
  br label %if.end.36

if.else.35:                                       ; preds = %do.body.32
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end

do.end:                                           ; preds = %if.end.36
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %do.body
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %47 = load %struct._object*, %struct._object** %encoding_str, align 8
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp40, align 8
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp40, align 8
  %cmp41 = icmp ne %struct._object* %48, null
  br i1 %cmp41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %do.body.39
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp40, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp44, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %51, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.52

if.else.49:                                       ; preds = %do.body.43
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc51, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %54(%struct._object* %55)
  br label %if.end.52

if.end.52:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  br label %if.end.54

if.end.54:                                        ; preds = %do.end.53, %do.body.39
  br label %do.end.55

do.end.55:                                        ; preds = %if.end.54
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.55, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

; Function Attrs: nounwind uwtable
define internal i32 @UnicodeError_traverse(%struct.PyUnicodeErrorObject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyUnicodeErrorObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct.PyUnicodeErrorObject* %self, %struct.PyUnicodeErrorObject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %encoding, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %encoding1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %3, i32 0, i32 7
  %4 = load %struct._object*, %struct._object** %encoding1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %8, i32 0, i32 8
  %9 = load %struct._object*, %struct._object** %object, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object9 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %object9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %16, i32 0, i32 11
  %17 = load %struct._object*, %struct._object** %reason, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason20 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %19, i32 0, i32 11
  %20 = load %struct._object*, %struct._object** %reason20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  %24 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %25 = bitcast %struct.PyUnicodeErrorObject* %24 to %struct.PyBaseExceptionObject*
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load i8*, i8** %arg.addr, align 8
  %call27 = call i32 @BaseException_traverse(%struct.PyBaseExceptionObject* %25, i32 (%struct._object*, i8*)* %26, i8* %27)
  store i32 %call27, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @UnicodeError_clear(%struct.PyUnicodeErrorObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyUnicodeErrorObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.PyUnicodeErrorObject* %self, %struct.PyUnicodeErrorObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %encoding, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %encoding1 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %3, i32 0, i32 7
  store %struct._object* null, %struct._object** %encoding1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %11, i32 0, i32 8
  %12 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object11 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %14, i32 0, i32 8
  store %struct._object* null, %struct._object** %object11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %22 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %22, i32 0, i32 11
  %23 = load %struct._object*, %struct._object** %reason, align 8
  store %struct._object* %23, %struct._object** %_py_tmp26, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %25 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason29 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %25, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %33 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %34 = bitcast %struct.PyUnicodeErrorObject* %33 to %struct.PyBaseExceptionObject*
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %34)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @UnicodeEncodeError_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %err = alloca %struct.PyUnicodeErrorObject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp11 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %1, %struct._object* %2, %struct._object* %3)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyUnicodeErrorObject*
  store %struct.PyUnicodeErrorObject* %5, %struct.PyUnicodeErrorObject** %err, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %6, i32 0, i32 7
  %7 = load %struct._object*, %struct._object** %encoding, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %9 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %encoding3 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %9, i32 0, i32 7
  store %struct._object* null, %struct._object** %encoding3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  %17 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %17, i32 0, i32 8
  %18 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %18, %struct._object** %_py_tmp11, align 8
  %19 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  %cmp12 = icmp ne %struct._object* %19, null
  br i1 %cmp12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %do.body.10
  %20 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %object14 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %20, i32 0, i32 8
  store %struct._object* null, %struct._object** %object14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.13
  %21 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp16, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %23, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %26(%struct._object* %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %do.body.10
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %28 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %28, i32 0, i32 11
  %29 = load %struct._object*, %struct._object** %reason, align 8
  store %struct._object* %29, %struct._object** %_py_tmp29, align 8
  %30 = load %struct._object*, %struct._object** %_py_tmp29, align 8
  %cmp30 = icmp ne %struct._object* %30, null
  br i1 %cmp30, label %if.then.31, label %if.end.44

if.then.31:                                       ; preds = %do.body.28
  %31 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %reason32 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %31, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason32, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.31
  %32 = load %struct._object*, %struct._object** %_py_tmp29, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp34, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %34, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %37(%struct._object* %38)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.body.28
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %39 = load %struct._object*, %struct._object** %args.addr, align 8
  %40 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %encoding46 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %40, i32 0, i32 7
  %41 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %object47 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %41, i32 0, i32 8
  %42 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %start = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %42, i32 0, i32 9
  %43 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %end = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %43, i32 0, i32 10
  %44 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %reason48 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %44, i32 0, i32 11
  %call49 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.189, i32 0, i32 0), %struct._typeobject* @PyUnicode_Type, %struct._object** %encoding46, %struct._typeobject* @PyUnicode_Type, %struct._object** %object47, i64* %start, i64* %end, %struct._typeobject* @PyUnicode_Type, %struct._object** %reason48)
  %tobool = icmp ne i32 %call49, 0
  br i1 %tobool, label %if.end.54, label %if.then.50

if.then.50:                                       ; preds = %do.end.45
  %45 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %reason51 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %45, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason51, align 8
  %46 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %object52 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %46, i32 0, i32 8
  store %struct._object* null, %struct._object** %object52, align 8
  %47 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %encoding53 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %47, i32 0, i32 7
  store %struct._object* null, %struct._object** %encoding53, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %do.end.45
  %48 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %object55 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %48, i32 0, i32 8
  %49 = load %struct._object*, %struct._object** %object55, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %50, i32 0, i32 3
  %51 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %51, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool56 = icmp ne i32 %bf.clear, 0
  br i1 %tobool56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.54
  br label %cond.end

cond.false:                                       ; preds = %if.end.54
  %52 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %object57 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %52, i32 0, i32 8
  %53 = load %struct._object*, %struct._object** %object57, align 8
  %call58 = call i32 @_PyUnicode_Ready(%struct._object* %53)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call58, %cond.false ]
  %cmp59 = icmp slt i32 %cond, -1
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %cond.end
  %54 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %encoding61 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %54, i32 0, i32 7
  store %struct._object* null, %struct._object** %encoding61, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %cond.end
  %55 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %encoding63 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %55, i32 0, i32 7
  %56 = load %struct._object*, %struct._object** %encoding63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt64, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %ob_refcnt64, align 8
  %58 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %object65 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %58, i32 0, i32 8
  %59 = load %struct._object*, %struct._object** %object65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt66, align 8
  %inc67 = add i64 %60, 1
  store i64 %inc67, i64* %ob_refcnt66, align 8
  %61 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %err, align 8
  %reason68 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %61, i32 0, i32 11
  %62 = load %struct._object*, %struct._object** %reason68, align 8
  %ob_refcnt69 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt69, align 8
  %inc70 = add i64 %63, 1
  store i64 %inc70, i64* %ob_refcnt69, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %if.then.60, %if.then.50, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare i32 @PyUnicode_ReadChar(%struct._object*, i64) #1

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @UnicodeDecodeError_str(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %uself = alloca %struct.PyUnicodeErrorObject*, align 8
  %result = alloca %struct._object*, align 8
  %reason_str = alloca %struct._object*, align 8
  %encoding_str = alloca %struct._object*, align 8
  %byte = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp33 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  store %struct.PyUnicodeErrorObject* %1, %struct.PyUnicodeErrorObject** %uself, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %reason_str, align 8
  store %struct._object* null, %struct._object** %encoding_str, align 8
  %2 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 8
  %3 = load %struct._object*, %struct._object** %object, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %4, i32 0, i32 11
  %5 = load %struct._object*, %struct._object** %reason, align 8
  %call1 = call %struct._object* @PyObject_Str(%struct._object* %5)
  store %struct._object* %call1, %struct._object** %reason_str, align 8
  %6 = load %struct._object*, %struct._object** %reason_str, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %done

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %7, i32 0, i32 7
  %8 = load %struct._object*, %struct._object** %encoding, align 8
  %call4 = call %struct._object* @PyObject_Str(%struct._object* %8)
  store %struct._object* %call4, %struct._object** %encoding_str, align 8
  %9 = load %struct._object*, %struct._object** %encoding_str, align 8
  %cmp5 = icmp eq %struct._object* %9, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %done

if.end.7:                                         ; preds = %if.end.3
  %10 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %10, i32 0, i32 9
  %11 = load i64, i64* %start, align 8
  %12 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object8 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %12, i32 0, i32 8
  %13 = load %struct._object*, %struct._object** %object8, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  %cmp9 = icmp slt i64 %11, %15
  br i1 %cmp9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.7
  %16 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %end = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %16, i32 0, i32 10
  %17 = load i64, i64* %end, align 8
  %18 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start10 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %18, i32 0, i32 9
  %19 = load i64, i64* %start10, align 8
  %add = add i64 %19, 1
  %cmp11 = icmp eq i64 %17, %add
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %land.lhs.true
  %20 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start13 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %20, i32 0, i32 9
  %21 = load i64, i64* %start13, align 8
  %22 = load %struct._object*, %struct._object** %self.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyUnicodeErrorObject*
  %object14 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %23, i32 0, i32 8
  %24 = load %struct._object*, %struct._object** %object14, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %25, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %arrayidx = getelementptr i8, i8* %arraydecay, i64 %21
  %26 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %26 to i32
  %and = and i32 %conv, 255
  store i32 %and, i32* %byte, align 4
  %27 = load %struct._object*, %struct._object** %encoding_str, align 8
  %28 = load i32, i32* %byte, align 4
  %29 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start15 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %29, i32 0, i32 9
  %30 = load i64, i64* %start15, align 8
  %31 = load %struct._object*, %struct._object** %reason_str, align 8
  %call16 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.191, i32 0, i32 0), %struct._object* %27, i32 %28, i64 %30, %struct._object* %31)
  store %struct._object* %call16, %struct._object** %result, align 8
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true, %if.end.7
  %32 = load %struct._object*, %struct._object** %encoding_str, align 8
  %33 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start17 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %33, i32 0, i32 9
  %34 = load i64, i64* %start17, align 8
  %35 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %end18 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %35, i32 0, i32 10
  %36 = load i64, i64* %end18, align 8
  %sub = sub i64 %36, 1
  %37 = load %struct._object*, %struct._object** %reason_str, align 8
  %call19 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.192, i32 0, i32 0), %struct._object* %32, i64 %34, i64 %sub, %struct._object* %37)
  store %struct._object* %call19, %struct._object** %result, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.12
  br label %done

done:                                             ; preds = %if.end.20, %if.then.6, %if.then.2
  br label %do.body

do.body:                                          ; preds = %done
  %38 = load %struct._object*, %struct._object** %reason_str, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp21 = icmp ne %struct._object* %39, null
  br i1 %cmp21, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %do.body
  br label %do.body.24

do.body.24:                                       ; preds = %if.then.23
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.24
  br label %if.end.29

if.else.28:                                       ; preds = %do.body.24
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  br label %if.end.30

if.end.30:                                        ; preds = %do.end, %do.body
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %do.body.32

do.body.32:                                       ; preds = %do.end.31
  %47 = load %struct._object*, %struct._object** %encoding_str, align 8
  store %struct._object* %47, %struct._object** %_py_xdecref_tmp33, align 8
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp33, align 8
  %cmp34 = icmp ne %struct._object* %48, null
  br i1 %cmp34, label %if.then.36, label %if.end.49

if.then.36:                                       ; preds = %do.body.32
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %49 = load %struct._object*, %struct._object** %_py_xdecref_tmp33, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp38, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %51, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.37
  br label %if.end.47

if.else.44:                                       ; preds = %do.body.37
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc46 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc46, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %54(%struct._object* %55)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %do.end.48, %do.body.32
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %56 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %56, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.50, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

; Function Attrs: nounwind uwtable
define internal i32 @UnicodeDecodeError_init(%struct._object* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ude = alloca %struct.PyUnicodeErrorObject*, align 8
  %data = alloca i8*, align 8
  %size = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp11 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyBaseExceptionObject*
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %1, %struct._object* %2, %struct._object* %3)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %self.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyUnicodeErrorObject*
  store %struct.PyUnicodeErrorObject* %5, %struct.PyUnicodeErrorObject** %ude, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %encoding = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %6, i32 0, i32 7
  %7 = load %struct._object*, %struct._object** %encoding, align 8
  store %struct._object* %7, %struct._object** %_py_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %9 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %encoding3 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %9, i32 0, i32 7
  store %struct._object* null, %struct._object** %encoding3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  %17 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %17, i32 0, i32 8
  %18 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %18, %struct._object** %_py_tmp11, align 8
  %19 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  %cmp12 = icmp ne %struct._object* %19, null
  br i1 %cmp12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %do.body.10
  %20 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object14 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %20, i32 0, i32 8
  store %struct._object* null, %struct._object** %object14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.13
  %21 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp16, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %23, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %26(%struct._object* %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %do.body.10
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %28 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %28, i32 0, i32 11
  %29 = load %struct._object*, %struct._object** %reason, align 8
  store %struct._object* %29, %struct._object** %_py_tmp29, align 8
  %30 = load %struct._object*, %struct._object** %_py_tmp29, align 8
  %cmp30 = icmp ne %struct._object* %30, null
  br i1 %cmp30, label %if.then.31, label %if.end.44

if.then.31:                                       ; preds = %do.body.28
  %31 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %reason32 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %31, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason32, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.31
  %32 = load %struct._object*, %struct._object** %_py_tmp29, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp34, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %34, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %37(%struct._object* %38)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.body.28
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  %39 = load %struct._object*, %struct._object** %args.addr, align 8
  %40 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %encoding46 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %40, i32 0, i32 7
  %41 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object47 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %41, i32 0, i32 8
  %42 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %start = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %42, i32 0, i32 9
  %43 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %end = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %43, i32 0, i32 10
  %44 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %reason48 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %44, i32 0, i32 11
  %call49 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.193, i32 0, i32 0), %struct._typeobject* @PyUnicode_Type, %struct._object** %encoding46, %struct._object** %object47, i64* %start, i64* %end, %struct._typeobject* @PyUnicode_Type, %struct._object** %reason48)
  %tobool = icmp ne i32 %call49, 0
  br i1 %tobool, label %if.end.54, label %if.then.50

if.then.50:                                       ; preds = %do.end.45
  %45 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %reason51 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %45, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason51, align 8
  %46 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object52 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %46, i32 0, i32 8
  store %struct._object* null, %struct._object** %object52, align 8
  %47 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %encoding53 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %47, i32 0, i32 7
  store %struct._object* null, %struct._object** %encoding53, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %do.end.45
  %48 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object55 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %48, i32 0, i32 8
  %49 = load %struct._object*, %struct._object** %object55, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 19
  %51 = load i64, i64* %tp_flags, align 8
  %and = and i64 %51, 134217728
  %cmp57 = icmp ne i64 %and, 0
  br i1 %cmp57, label %if.else.69, label %if.then.58

if.then.58:                                       ; preds = %if.end.54
  %52 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object59 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %52, i32 0, i32 8
  %53 = load %struct._object*, %struct._object** %object59, align 8
  %call60 = call i32 @PyObject_AsReadBuffer(%struct._object* %53, i8** %data, i64* %size)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.66

if.then.62:                                       ; preds = %if.then.58
  %54 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %reason63 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %54, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason63, align 8
  %55 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object64 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %55, i32 0, i32 8
  store %struct._object* null, %struct._object** %object64, align 8
  %56 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %encoding65 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %56, i32 0, i32 7
  store %struct._object* null, %struct._object** %encoding65, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.then.58
  %57 = load i8*, i8** %data, align 8
  %58 = load i64, i64* %size, align 8
  %call67 = call %struct._object* @PyBytes_FromStringAndSize(i8* %57, i64 %58)
  %59 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object68 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %59, i32 0, i32 8
  store %struct._object* %call67, %struct._object** %object68, align 8
  br label %if.end.72

if.else.69:                                       ; preds = %if.end.54
  %60 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %object70 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %60, i32 0, i32 8
  %61 = load %struct._object*, %struct._object** %object70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt71, align 8
  %inc = add i64 %62, 1
  store i64 %inc, i64* %ob_refcnt71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.end.66
  %63 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %encoding73 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %63, i32 0, i32 7
  %64 = load %struct._object*, %struct._object** %encoding73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt74, align 8
  %inc75 = add i64 %65, 1
  store i64 %inc75, i64* %ob_refcnt74, align 8
  %66 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %ude, align 8
  %reason76 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %66, i32 0, i32 11
  %67 = load %struct._object*, %struct._object** %reason76, align 8
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0
  %68 = load i64, i64* %ob_refcnt77, align 8
  %inc78 = add i64 %68, 1
  store i64 %inc78, i64* %ob_refcnt77, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.then.62, %if.then.50, %if.then
  %69 = load i32, i32* %retval
  ret i32 %69
}

declare i32 @PyObject_AsReadBuffer(%struct._object*, i8**, i64*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @UnicodeTranslateError_str(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %uself = alloca %struct.PyUnicodeErrorObject*, align 8
  %result = alloca %struct._object*, align 8
  %reason_str = alloca %struct._object*, align 8
  %badchar = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeErrorObject*
  store %struct.PyUnicodeErrorObject* %1, %struct.PyUnicodeErrorObject** %uself, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %reason_str, align 8
  %2 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %2, i32 0, i32 8
  %3 = load %struct._object*, %struct._object** %object, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.84, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %4, i32 0, i32 11
  %5 = load %struct._object*, %struct._object** %reason, align 8
  %call1 = call %struct._object* @PyObject_Str(%struct._object* %5)
  store %struct._object* %call1, %struct._object** %reason_str, align 8
  %6 = load %struct._object*, %struct._object** %reason_str, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %done

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %7, i32 0, i32 9
  %8 = load i64, i64* %start, align 8
  %9 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object4 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %9, i32 0, i32 8
  %10 = load %struct._object*, %struct._object** %object4, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 1
  %12 = load i64, i64* %length, align 8
  %cmp5 = icmp slt i64 %8, %12
  br i1 %cmp5, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.end.3
  %13 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %end = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %13, i32 0, i32 10
  %14 = load i64, i64* %end, align 8
  %15 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start6 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %15, i32 0, i32 9
  %16 = load i64, i64* %start6, align 8
  %add = add i64 %16, 1
  %cmp7 = icmp eq i64 %14, %add
  br i1 %cmp7, label %if.then.8, label %if.else.21

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %object9 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %17, i32 0, i32 8
  %18 = load %struct._object*, %struct._object** %object9, align 8
  %19 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start10 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %19, i32 0, i32 9
  %20 = load i64, i64* %start10, align 8
  %call11 = call i32 @PyUnicode_ReadChar(%struct._object* %18, i64 %20)
  store i32 %call11, i32* %badchar, align 4
  %21 = load i32, i32* %badchar, align 4
  %cmp12 = icmp ule i32 %21, 255
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.195, i32 0, i32 0), i8** %fmt, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.then.8
  %22 = load i32, i32* %badchar, align 4
  %cmp14 = icmp ule i32 %22, 65535
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.196, i32 0, i32 0), i8** %fmt, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %if.else
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.197, i32 0, i32 0), i8** %fmt, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.13
  %23 = load i8*, i8** %fmt, align 8
  %24 = load i32, i32* %badchar, align 4
  %25 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start19 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %25, i32 0, i32 9
  %26 = load i64, i64* %start19, align 8
  %27 = load %struct._object*, %struct._object** %reason_str, align 8
  %call20 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* %23, i32 %24, i64 %26, %struct._object* %27)
  store %struct._object* %call20, %struct._object** %result, align 8
  br label %if.end.25

if.else.21:                                       ; preds = %land.lhs.true, %if.end.3
  %28 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %start22 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %28, i32 0, i32 9
  %29 = load i64, i64* %start22, align 8
  %30 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %uself, align 8
  %end23 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %30, i32 0, i32 10
  %31 = load i64, i64* %end23, align 8
  %sub = sub i64 %31, 1
  %32 = load %struct._object*, %struct._object** %reason_str, align 8
  %call24 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.198, i32 0, i32 0), i64 %29, i64 %sub, %struct._object* %32)
  store %struct._object* %call24, %struct._object** %result, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.21, %if.end.18
  br label %done

done:                                             ; preds = %if.end.25, %if.then.2
  br label %do.body

do.body:                                          ; preds = %done
  %33 = load %struct._object*, %struct._object** %reason_str, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp26 = icmp ne %struct._object* %34, null
  br i1 %cmp26, label %if.then.27, label %if.end.33

if.then.27:                                       ; preds = %do.body
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.28
  br label %if.end.32

if.else.31:                                       ; preds = %do.body.28
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.32
  br label %if.end.33

if.end.33:                                        ; preds = %do.end, %do.body
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %42 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %42, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.34, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal i32 @UnicodeTranslateError_init(%struct.PyUnicodeErrorObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.PyUnicodeErrorObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp11 = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct.PyUnicodeErrorObject* %self, %struct.PyUnicodeErrorObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %1 = bitcast %struct.PyUnicodeErrorObject* %0 to %struct.PyBaseExceptionObject*
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %3 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @BaseException_init(%struct.PyBaseExceptionObject* %1, %struct._object* %2, %struct._object* %3)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %4, i32 0, i32 8
  %5 = load %struct._object*, %struct._object** %object, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %7 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object3 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %7, i32 0, i32 8
  store %struct._object* null, %struct._object** %object3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  br label %do.body.10

do.body.10:                                       ; preds = %do.end.9
  %15 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %15, i32 0, i32 11
  %16 = load %struct._object*, %struct._object** %reason, align 8
  store %struct._object* %16, %struct._object** %_py_tmp11, align 8
  %17 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  %cmp12 = icmp ne %struct._object* %17, null
  br i1 %cmp12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %do.body.10
  %18 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason14 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %18, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.13
  %19 = load %struct._object*, %struct._object** %_py_tmp11, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp16, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %21, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %24(%struct._object* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %do.end.25, %do.body.10
  br label %do.end.27

do.end.27:                                        ; preds = %if.end.26
  %26 = load %struct._object*, %struct._object** %args.addr, align 8
  %27 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object28 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %27, i32 0, i32 8
  %28 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %start = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %28, i32 0, i32 9
  %29 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %end = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %29, i32 0, i32 10
  %30 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason29 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %30, i32 0, i32 11
  %call30 = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.199, i32 0, i32 0), %struct._typeobject* @PyUnicode_Type, %struct._object** %object28, i64* %start, i64* %end, %struct._typeobject* @PyUnicode_Type, %struct._object** %reason29)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %do.end.27
  %31 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason32 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %31, i32 0, i32 11
  store %struct._object* null, %struct._object** %reason32, align 8
  %32 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object33 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %32, i32 0, i32 8
  store %struct._object* null, %struct._object** %object33, align 8
  store i32 -1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %do.end.27
  %33 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %object35 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %33, i32 0, i32 8
  %34 = load %struct._object*, %struct._object** %object35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt36, align 8
  %inc = add i64 %35, 1
  store i64 %inc, i64* %ob_refcnt36, align 8
  %36 = load %struct.PyUnicodeErrorObject*, %struct.PyUnicodeErrorObject** %self.addr, align 8
  %reason37 = getelementptr inbounds %struct.PyUnicodeErrorObject, %struct.PyUnicodeErrorObject* %36, i32 0, i32 11
  %37 = load %struct._object*, %struct._object** %reason37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt38, align 8
  %inc39 = add i64 %38, 1
  store i64 %inc39, i64* %ob_refcnt38, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.31, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal void @MemoryError_dealloc(%struct.PyBaseExceptionObject* %self) #0 {
entry:
  %self.addr = alloca %struct.PyBaseExceptionObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct.PyBaseExceptionObject* %self, %struct.PyBaseExceptionObject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %1 = bitcast %struct.PyBaseExceptionObject* %0 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %1, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %2 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %2 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %3 = load i64, i64* %gc_refs, align 8
  %and = and i64 %3, 1
  %or = or i64 %and, -4
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %4 to %struct.anon.0*
  %gc_refs3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %5 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %5 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc4, i32 0, i32 0
  %6 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %7 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc5, i32 0, i32 1
  %8 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %8 to %struct.anon.0*
  %gc_next7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc6, i32 0, i32 0
  store %union._gc_head* %6, %union._gc_head** %gc_next7, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %9 to %struct.anon.0*
  %gc_prev9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc8, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %11 to %struct.anon.0*
  %gc_next11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc10, i32 0, i32 0
  %12 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %12 to %struct.anon.0*
  %gc_prev13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc12, i32 0, i32 1
  store %union._gc_head* %10, %union._gc_head** %gc_prev13, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %13 to %struct.anon.0*
  %gc_next15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %14 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %call = call i32 @BaseException_clear(%struct.PyBaseExceptionObject* %14)
  %15 = load i32, i32* @memerrors_numfree, align 4
  %cmp = icmp sge i32 %15, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.end.16
  %16 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %17 = bitcast %struct.PyBaseExceptionObject* %16 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 38
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %20 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %21 = bitcast %struct.PyBaseExceptionObject* %20 to %struct._object*
  %22 = bitcast %struct._object* %21 to i8*
  call void %19(i8* %22)
  br label %if.end

if.else:                                          ; preds = %do.end.16
  %23 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %24 = bitcast %struct.PyBaseExceptionObject* %23 to %struct._object*
  %25 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  %dict = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %25, i32 0, i32 1
  store %struct._object* %24, %struct._object** %dict, align 8
  %26 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self.addr, align 8
  store %struct.PyBaseExceptionObject* %26, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %27 = load i32, i32* @memerrors_numfree, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* @memerrors_numfree, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @MemoryError_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.PyBaseExceptionObject*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %1 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  %2 = bitcast %struct._object* %1 to %struct._typeobject*
  %cmp = icmp ne %struct._typeobject* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call %struct._object* @BaseException_new(%struct._typeobject* %3, %struct._object* %4, %struct._object* %5)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %cmp1 = icmp eq %struct.PyBaseExceptionObject* %6, null
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %8 = load %struct._object*, %struct._object** %args.addr, align 8
  %9 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call3 = call %struct._object* @BaseException_new(%struct._typeobject* %7, %struct._object* %8, %struct._object* %9)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  store %struct.PyBaseExceptionObject* %10, %struct.PyBaseExceptionObject** %self, align 8
  %call5 = call %struct._object* @PyTuple_New(i64 0)
  %11 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %args6 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %11, i32 0, i32 2
  store %struct._object* %call5, %struct._object** %args6, align 8
  %12 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %args7 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %args7, align 8
  %cmp8 = icmp eq %struct._object* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %14 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %dict = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %dict, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyBaseExceptionObject*
  store %struct.PyBaseExceptionObject* %16, %struct.PyBaseExceptionObject** @memerrors_freelist, align 8
  %17 = load i32, i32* @memerrors_numfree, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* @memerrors_numfree, align 4
  %18 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %dict11 = getelementptr inbounds %struct.PyBaseExceptionObject, %struct.PyBaseExceptionObject* %18, i32 0, i32 1
  store %struct._object* null, %struct._object** %dict11, align 8
  %19 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %20 = bitcast %struct.PyBaseExceptionObject* %19 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  store i64 1, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %21 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %22 = bitcast %struct.PyBaseExceptionObject* %21 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %22, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %23 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %23 to %struct.anon.0*
  %gc_refs = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc, i32 0, i32 2
  %24 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %24, 1
  %cmp12 = icmp ne i64 %shr, -2
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.208, i32 0, i32 0)) #5
  unreachable

if.end.14:                                        ; preds = %do.body
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  %25 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc16 = bitcast %union._gc_head* %25 to %struct.anon.0*
  %gc_refs17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc16, i32 0, i32 2
  %26 = load i64, i64* %gc_refs17, align 8
  %and = and i64 %26, 1
  %or = or i64 %and, -6
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc18 = bitcast %union._gc_head* %27 to %struct.anon.0*
  %gc_refs19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc18, i32 0, i32 2
  store i64 %or, i64* %gc_refs19, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.15
  %28 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc20 = bitcast %union._gc_head* %29 to %struct.anon.0*
  %gc_next = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc20, i32 0, i32 0
  store %union._gc_head* %28, %union._gc_head** %gc_next, align 8
  %30 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc21 = bitcast %union._gc_head* %30 to %struct.anon.0*
  %gc_prev = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc21, i32 0, i32 1
  %31 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %32 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc22 = bitcast %union._gc_head* %32 to %struct.anon.0*
  %gc_prev23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc22, i32 0, i32 1
  store %union._gc_head* %31, %union._gc_head** %gc_prev23, align 8
  %33 = load %union._gc_head*, %union._gc_head** %g, align 8
  %34 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc24 = bitcast %union._gc_head* %34 to %struct.anon.0*
  %gc_prev25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc24, i32 0, i32 1
  %35 = load %union._gc_head*, %union._gc_head** %gc_prev25, align 8
  %gc26 = bitcast %union._gc_head* %35 to %struct.anon.0*
  %gc_next27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc26, i32 0, i32 0
  store %union._gc_head* %33, %union._gc_head** %gc_next27, align 8
  %36 = load %union._gc_head*, %union._gc_head** %g, align 8
  %37 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc28 = bitcast %union._gc_head* %37 to %struct.anon.0*
  %gc_prev29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %gc28, i32 0, i32 1
  store %union._gc_head* %36, %union._gc_head** %gc_prev29, align 8
  br label %do.end.30

do.end.30:                                        ; preds = %do.end
  %38 = load %struct.PyBaseExceptionObject*, %struct.PyBaseExceptionObject** %self, align 8
  %39 = bitcast %struct.PyBaseExceptionObject* %38 to %struct._object*
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.30, %if.then.9, %if.then.2, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
