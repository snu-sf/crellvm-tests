; ModuleID = './itertoolsmodule.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.accumulateobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object* }
%struct.combinationsobject = type { %struct._object, %struct._object*, i64*, %struct._object*, i64, i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.cwrobject = type { %struct._object, %struct._object*, i64*, %struct._object*, i64, i32 }
%struct.cycleobject = type { %struct._object, %struct._object*, %struct._object*, i32 }
%struct.dropwhileobject = type { %struct._object, %struct._object*, %struct._object*, i64 }
%struct.takewhileobject = type { %struct._object, %struct._object*, %struct._object*, i64 }
%struct.isliceobject = type { %struct._object, %struct._object*, i64, i64, i64, i64 }
%struct.starmapobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.chainobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.compressobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.filterfalseobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.countobject = type { %struct._object, i64, %struct._object*, %struct._object* }
%struct.ziplongestobject = type { %struct._object, i64, i64, %struct._object*, %struct._object*, %struct._object* }
%struct.permutationsobject = type { %struct._object, %struct._object*, i64*, i64*, %struct._object*, i64, i32 }
%struct.productobject = type { %struct._object, %struct._object*, i64*, %struct._object*, i32 }
%struct.repeatobject = type { %struct._object, %struct._object*, i64 }
%struct.groupbyobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct._grouperobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.teeobject = type { %struct._object, %struct.teedataobject*, i32, %struct._object* }
%struct.teedataobject = type { %struct._object, %struct._object*, i32, %struct._object*, [57 x %struct._object*] }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }

@accumulate_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.accumulateobject*)* @accumulate_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @accumulate_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.accumulateobject*, i32 (%struct._object*, i8*)*, i8*)* @accumulate_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.accumulateobject*)* @accumulate_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @accumulate_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @accumulate_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@combinations_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.combinationsobject*)* @combinations_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([186 x i8], [186 x i8]* @combinations_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.combinationsobject*, i32 (%struct._object*, i8*)*, i8*)* @combinations_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.combinationsobject*)* @combinations_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @combinations_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @combinations_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@cwr_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.cwrobject*)* @cwr_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([272 x i8], [272 x i8]* @cwr_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.cwrobject*, i32 (%struct._object*, i8*)*, i8*)* @cwr_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.cwrobject*)* @cwr_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @cwr_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @cwr_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@cycle_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.cycleobject*)* @cycle_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @cycle_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.cycleobject*, i32 (%struct._object*, i8*)*, i8*)* @cycle_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.cycleobject*)* @cycle_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @cycle_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @cycle_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@dropwhile_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.dropwhileobject*)* @dropwhile_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([179 x i8], [179 x i8]* @dropwhile_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.dropwhileobject*, i32 (%struct._object*, i8*)*, i8*)* @dropwhile_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.dropwhileobject*)* @dropwhile_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @dropwhile_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @dropwhile_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@takewhile_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.takewhileobject*)* @takewhile_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([156 x i8], [156 x i8]* @takewhile_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.takewhileobject*, i32 (%struct._object*, i8*)*, i8*)* @takewhile_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.takewhileobject*)* @takewhile_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @takewhile_reduce_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @takewhile_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@islice_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.isliceobject*)* @islice_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([455 x i8], [455 x i8]* @islice_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.isliceobject*, i32 (%struct._object*, i8*)*, i8*)* @islice_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.isliceobject*)* @islice_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @islice_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @islice_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@starmap_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.starmapobject*)* @starmap_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @starmap_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.starmapobject*, i32 (%struct._object*, i8*)*, i8*)* @starmap_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.starmapobject*)* @starmap_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @starmap_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @starmap_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@chain_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.chainobject*)* @chain_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([227 x i8], [227 x i8]* @chain_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.chainobject*, i32 (%struct._object*, i8*)*, i8*)* @chain_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.chainobject*)* @chain_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @chain_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @chain_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@compress_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.compressobject*)* @compress_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @compress_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.compressobject*, i32 (%struct._object*, i8*)*, i8*)* @compress_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.compressobject*)* @compress_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @compress_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @compress_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@filterfalse_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.filterfalseobject*)* @filterfalse_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([184 x i8], [184 x i8]* @filterfalse_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.filterfalseobject*, i32 (%struct._object*, i8*)*, i8*)* @filterfalse_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.filterfalseobject*)* @filterfalse_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @filterfalse_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @filterfalse_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@count_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.countobject*)* @count_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.countobject*)* @count_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @count_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.countobject*, i32 (%struct._object*, i8*)*, i8*)* @count_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.countobject*)* @count_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @count_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @count_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@ziplongest_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.ziplongestobject*)* @zip_longest_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([505 x i8], [505 x i8]* @zip_longest_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.ziplongestobject*, i32 (%struct._object*, i8*)*, i8*)* @zip_longest_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.ziplongestobject*)* @zip_longest_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @zip_longest_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @zip_longest_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@permutations_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.70, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.permutationsobject*)* @permutations_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([194 x i8], [194 x i8]* @permutations_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.permutationsobject*, i32 (%struct._object*, i8*)*, i8*)* @permutations_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.permutationsobject*)* @permutations_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @permuations_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @permutations_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@product_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.productobject*)* @product_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([732 x i8], [732 x i8]* @product_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.productobject*, i32 (%struct._object*, i8*)*, i8*)* @product_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.productobject*)* @product_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @product_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @product_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@repeat_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.repeatobject*)* @repeat_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.repeatobject*)* @repeat_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @repeat_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.repeatobject*, i32 (%struct._object*, i8*)*, i8*)* @repeat_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.repeatobject*)* @repeat_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @repeat_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @repeat_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@groupby_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.91, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.groupbyobject*)* @groupby_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @groupby_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.groupbyobject*, i32 (%struct._object*, i8*)*, i8*)* @groupby_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.groupbyobject*)* @groupby_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @groupby_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @groupby_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_grouper_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct._grouperobject*)* @_grouper_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._grouperobject*, i32 (%struct._object*, i8*)*, i8*)* @_grouper_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._grouperobject*)* @_grouper_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @_grouper_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @_grouper_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@tee_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.teeobject*)* @tee_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @teeobject_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.teeobject*, i32 (%struct._object*, i8*)*, i8*)* @tee_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.teeobject*)* @tee_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 32, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.teeobject*)* @tee_next to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @tee_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @tee_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@teedataobject_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.104, i32 0, i32 0), i64 496, i64 0, void (%struct._object*)* bitcast (void (%struct.teedataobject*)* @teedataobject_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @teedataobject_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.teedataobject*, i32 (%struct._object*, i8*)*, i8*)* @teedataobject_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.teedataobject*)* @teedataobject_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @teedataobject_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @teedataobject_new, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyInit_itertools.typelist = private unnamed_addr constant [21 x %struct._typeobject*] [%struct._typeobject* @accumulate_type, %struct._typeobject* @combinations_type, %struct._typeobject* @cwr_type, %struct._typeobject* @cycle_type, %struct._typeobject* @dropwhile_type, %struct._typeobject* @takewhile_type, %struct._typeobject* @islice_type, %struct._typeobject* @starmap_type, %struct._typeobject* @chain_type, %struct._typeobject* @compress_type, %struct._typeobject* @filterfalse_type, %struct._typeobject* @count_type, %struct._typeobject* @ziplongest_type, %struct._typeobject* @permutations_type, %struct._typeobject* @product_type, %struct._typeobject* @repeat_type, %struct._typeobject* @groupby_type, %struct._typeobject* @_grouper_type, %struct._typeobject* @tee_type, %struct._typeobject* @teedataobject_type, %struct._typeobject* null], align 16
@PyType_Type = external global %struct._typeobject, align 8
@itertoolsmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0), i8* getelementptr inbounds ([1229 x i8], [1229 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [21 x i8] c"itertools.accumulate\00", align 1
@accumulate_doc = internal global [122 x i8] c"accumulate(iterable[, func]) --> accumulate object\0A\0AReturn series of accumulated sums (or other binary function results).\00", align 16
@accumulate_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.accumulateobject*)* @accumulate_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.accumulateobject*, %struct._object*)* @accumulate_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"__reduce__\00", align 1
@reduce_doc = internal global [39 x i8] c"Return state information for pickling.\00", align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"__setstate__\00", align 1
@setstate_doc = internal global [38 x i8] c"Set state information for unpickling.\00", align 16
@.str.3 = private unnamed_addr constant [7 x i8] c"O(OO)O\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@accumulate_new.kwargs = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* null], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"iterable\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"O|O:accumulate\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"itertools.combinations\00", align 1
@combinations_doc = internal global [186 x i8] c"combinations(iterable, r) --> combinations object\0A\0AReturn successive r-length combinations of elements in the iterable.\0A\0Acombinations(range(4), 3) --> (0,1,2), (0,1,3), (0,2,3), (1,2,3)\00", align 16
@combinations_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.combinationsobject*)* @combinations_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.combinationsobject*, %struct._object*)* @combinations_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.combinationsobject*, i8*)* @combinations_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.8 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof_doc = internal global [34 x i8] c"Returns size in memory, in bytes.\00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"O(On)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"O(()n)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"O(On)N\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.12 = private unnamed_addr constant [18 x i8] c"invalid arguments\00", align 1
@combinations_new.kwargs = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@.str.13 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"On:combinations\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"r must be non-negative\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"itertools.combinations_with_replacement\00", align 1
@cwr_doc = internal global [272 x i8] c"combinations_with_replacement(iterable, r) --> combinations_with_replacement object\0A\0AReturn successive r-length combinations of elements in the iterable\0Aallowing individual elements to have successive repeats.\0Acombinations_with_replacement('ABC', 2) --> AA AB AC BB BC CC\00", align 16
@cwr_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.cwrobject*)* @cwr_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.cwrobject*, %struct._object*)* @cwr_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.cwrobject*, i8*)* @cwr_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@cwr_new.kwargs = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@.str.17 = private unnamed_addr constant [33 x i8] c"On:combinations_with_replacement\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"itertools.cycle\00", align 1
@cycle_doc = internal global [130 x i8] c"cycle(iterable) --> cycle object\0A\0AReturn elements from the iterable until it is exhausted.\0AThen repeat the sequence indefinitely.\00", align 16
@cycle_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.cycleobject*)* @cycle_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.cycleobject*, %struct._object*)* @cycle_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyExc_StopIteration = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [9 x i8] c"O(O)(Oi)\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"cycle()\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"cycle\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"itertools.dropwhile\00", align 1
@dropwhile_doc = internal global [179 x i8] c"dropwhile(predicate, iterable) --> dropwhile object\0A\0ADrop items from the iterable while predicate(item) is true.\0AAfterwards, return every element until the iterable is exhausted.\00", align 16
@dropwhile_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dropwhileobject*)* @dropwhile_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.dropwhileobject*, %struct._object*)* @dropwhile_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [7 x i8] c"O(OO)l\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"dropwhile()\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"dropwhile\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"itertools.takewhile\00", align 1
@takewhile_doc = internal global [156 x i8] c"takewhile(predicate, iterable) --> takewhile object\0A\0AReturn successive entries from an iterable as long as the \0Apredicate evaluates to true for each entry.\00", align 16
@takewhile_reduce_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.takewhileobject*)* @takewhile_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.takewhileobject*, %struct._object*)* @takewhile_reduce_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [12 x i8] c"takewhile()\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"takewhile\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"itertools.islice\00", align 1
@islice_doc = internal global [455 x i8] c"islice(iterable, stop) --> islice object\0Aislice(iterable, start, stop[, step]) --> islice object\0A\0AReturn an iterator whose next() method returns selected values from an\0Aiterable.  If start is specified, will skip all preceding elements;\0Aotherwise, start defaults to zero.  Step defaults to one.  If\0Aspecified as another value, step determines how many values are \0Askipped between successive calls.  Works like a slice() on a list\0Abut returns an iterator.\00", align 16
@islice_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.isliceobject*)* @islice_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.isliceobject*, %struct._object*)* @islice_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.31 = private unnamed_addr constant [7 x i8] c"O(Nn)n\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"O(OnNn)n\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"islice()\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"islice\00", align 1
@.str.35 = private unnamed_addr constant [78 x i8] c"Stop argument for islice() must be None or an integer: 0 <= x <= sys.maxsize.\00", align 1
@.str.36 = private unnamed_addr constant [72 x i8] c"Indices for islice() must be None or an integer: 0 <= x <= sys.maxsize.\00", align 1
@.str.37 = private unnamed_addr constant [54 x i8] c"Step for islice() must be a positive integer or None.\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"itertools.starmap\00", align 1
@starmap_doc = internal global [174 x i8] c"starmap(function, sequence) --> starmap object\0A\0AReturn an iterator whose values are returned from the function evaluated\0Awith a argument tuple taken from the given sequence.\00", align 16
@starmap_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.starmapobject*)* @starmap_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.39 = private unnamed_addr constant [6 x i8] c"O(OO)\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"starmap()\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"starmap\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"itertools.chain\00", align 1
@chain_doc = internal global [227 x i8] c"chain(*iterables) --> chain object\0A\0AReturn a chain object whose .__next__() method returns elements from the\0Afirst iterable until it is exhausted, then elements from the next\0Aiterable, until all of the iterables are exhausted.\00", align 16
@chain_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._typeobject*, %struct._object*)* @chain_new_from_iterable to %struct._object* (%struct._object*, %struct._object*)*), i32 24, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @chain_from_iterable_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.chainobject*)* @chain_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.chainobject*, %struct._object*)* @chain_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [14 x i8] c"from_iterable\00", align 1
@chain_from_iterable_doc = internal global [134 x i8] c"chain.from_iterable(iterable) --> chain object\0A\0AAlternate chain() contructor taking a single iterable argument\0Athat evaluates lazily.\00", align 16
@.str.44 = private unnamed_addr constant [8 x i8] c"O()(OO)\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"O()(O)\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"O()\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"O|O\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"chain()\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"itertools.compress\00", align 1
@compress_doc = internal global [223 x i8] c"compress(data, selectors) --> iterator over selected data\0A\0AReturn data elements corresponding to true selector elements.\0AForms a shorter iterator from selected data elements using the\0Aselectors to choose the data elements.\00", align 16
@compress_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.compressobject*)* @compress_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@compress_new.kwargs = internal global [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* null], align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"selectors\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"OO:compress\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"itertools.filterfalse\00", align 1
@filterfalse_doc = internal global [184 x i8] c"filterfalse(function or None, sequence) --> filterfalse object\0A\0AReturn those items of sequence for which function(item) is false.\0AIf function is None, return the items that are false.\00", align 16
@filterfalse_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.filterfalseobject*)* @filterfalse_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@PyBool_Type = external global %struct._typeobject, align 8
@.str.54 = private unnamed_addr constant [14 x i8] c"filterfalse()\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"filterfalse\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"itertools.count\00", align 1
@count_doc = internal global [248 x i8] c"count(start=0, step=1) --> count object\0A\0AReturn a count object whose .__next__() method returns consecutive values.\0AEquivalent to:\0A\0A    def count(firstval=0, step=1):\0A        x = firstval\0A        while 1:\0A            yield x\0A            x += step\0A\00", align 16
@count_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.countobject*)* @count_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.57 = private unnamed_addr constant [11 x i8] c"count(%zd)\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"count(%R)\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"count(%R, %R)\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"O(n)\00", align 1
@count_new.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* null], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"|OO:count\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.64 = private unnamed_addr constant [21 x i8] c"a number is required\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"itertools.zip_longest\00", align 1
@zip_longest_doc = internal global [505 x i8] c"zip_longest(iter1 [,iter2 [...]], [fillvalue=None]) --> zip_longest object\0A\0AReturn an zip_longest object whose .__next__() method returns a tuple where\0Athe i-th element comes from the i-th iterable argument.  The .__next__()\0Amethod continues until the longest iterable in the argument sequence\0Ais exhausted and then it raises StopIteration.  When the shorter iterables\0Aare exhausted, the fillvalue is substituted in their place.  The fillvalue\0Adefaults to None or can be specified by a keyword argument.\0A\00", align 16
@zip_longest_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.ziplongestobject*)* @zip_longest_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.ziplongestobject*, %struct._object*)* @zip_longest_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.66 = private unnamed_addr constant [4 x i8] c"ONO\00", align 1
@PyDict_Type = external global %struct._typeobject, align 8
@.str.67 = private unnamed_addr constant [10 x i8] c"fillvalue\00", align 1
@.str.68 = private unnamed_addr constant [49 x i8] c"zip_longest() got an unexpected keyword argument\00", align 1
@.str.69 = private unnamed_addr constant [49 x i8] c"zip_longest argument #%zd must support iteration\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"itertools.permutations\00", align 1
@permutations_doc = internal global [194 x i8] c"permutations(iterable[, r]) --> permutations object\0A\0AReturn successive r-length permutations of elements in the iterable.\0A\0Apermutations(range(3), 2) --> (0,1), (0,2), (1,0), (1,2), (2,0), (2,1)\00", align 16
@permuations_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.permutationsobject*)* @permutations_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.permutationsobject*, %struct._object*)* @permutations_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.permutationsobject*, i8*)* @permutations_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.71 = private unnamed_addr constant [10 x i8] c"O(On)(NN)\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"O!O!\00", align 1
@permutations_new.kwargs = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* null], align 16
@.str.73 = private unnamed_addr constant [17 x i8] c"O|O:permutations\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"Expected int as r\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"itertools.product\00", align 1
@product_doc = internal global [732 x i8] c"product(*iterables, repeat=1) --> product object\0A\0ACartesian product of input iterables.  Equivalent to nested for-loops.\0A\0AFor example, product(A, B) returns the same as:  ((x,y) for x in A for y in B).\0AThe leftmost iterators are in the outermost for-loop, so the output tuples\0Acycle in a manner similar to an odometer (with the rightmost element changing\0Aon every iteration).\0A\0ATo compute the product of an iterable with itself, specify the number\0Aof repetitions with the optional repeat keyword argument. For example,\0Aproduct(A, repeat=4) means the same as product(A, A, A, A).\0A\0Aproduct('ab', range(3)) --> ('a',0) ('a',1) ('a',2) ('b',0) ('b',1) ('b',2)\0Aproduct((0,1), (0,1), (0,1)) --> (0,0,0) (0,0,1) (0,1,0) (0,1,1) (1,0,0) ...\00", align 16
@product_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.productobject*)* @product_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.productobject*, %struct._object*)* @product_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.productobject*, i8*)* @product_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @sizeof_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.76 = private unnamed_addr constant [6 x i8] c"O(())\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"OON\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@product_new.kwlist = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i32 0, i32 0), i8* null], align 16
@.str.80 = private unnamed_addr constant [11 x i8] c"|n:product\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"repeat argument cannot be negative\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"itertools.repeat\00", align 1
@repeat_doc = internal global [155 x i8] c"repeat(object [,times]) -> create an iterator which returns the object\0Afor the specified number of times.  If not specified, returns the object\0Aendlessly.\00", align 16
@repeat_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.repeatobject*)* @repeat_len to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @length_hint_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.repeatobject*)* @repeat_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.83 = private unnamed_addr constant [11 x i8] c"repeat(%R)\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"repeat(%R, %zd)\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"__length_hint__\00", align 1
@length_hint_doc = internal global [55 x i8] c"Private method returning an estimate of len(list(it)).\00", align 16
@.str.86 = private unnamed_addr constant [24 x i8] c"len() of unsized object\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"O(O)\00", align 1
@repeat_new.kwargs = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i8* null], align 16
@.str.88 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"times\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"O|n:repeat\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"itertools.groupby\00", align 1
@groupby_doc = internal global [123 x i8] c"groupby(iterable[, keyfunc]) -> create an iterator which returns\0A(key, sub-iterator) grouped by each value of key(value).\0A\00", align 16
@groupby_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.groupbyobject*)* @groupby_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.groupbyobject*, %struct._object*)* @groupby_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.92 = private unnamed_addr constant [11 x i8] c"O(OO)(OOO)\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"OOO\00", align 1
@groupby_new.kwargs = internal global [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i8* null], align 16
@.str.94 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"O|O:groupby\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"itertools._grouper\00", align 1
@_grouper_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._grouperobject*)* @_grouper_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.97 = private unnamed_addr constant [4 x i8] c"O!O\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"itertools._tee\00", align 1
@teeobject_doc = internal global [37 x i8] c"Iterator wrapped to make it copyable\00", align 16
@tee_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.teeobject*)* @tee_copy to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @teecopy_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.teeobject*)* @tee_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.teeobject*, %struct._object*)* @tee_setstate to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @setstate_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.99 = private unnamed_addr constant [9 x i8] c"__copy__\00", align 1
@teecopy_doc = internal global [33 x i8] c"Returns an independent iterator.\00", align 16
@.str.100 = private unnamed_addr constant [10 x i8] c"O(())(Oi)\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"O!i\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"Index out of range\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"_tee\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"itertools._tee_dataobject\00", align 1
@teedataobject_doc = internal global [47 x i8] c"Data container common to multiple tee objects.\00", align 16
@teedataobject_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.teedataobject*)* @teedataobject_reduce to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @reduce_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.105 = private unnamed_addr constant [7 x i8] c"O(ONO)\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"OO!O\00", align 1
@PyList_Type = external global %struct._typeobject, align 8
@.str.107 = private unnamed_addr constant [18 x i8] c"Invalid arguments\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"itertools\00", align 1
@module_doc = internal global [1229 x i8] c"Functional tools for creating and using iterators.\0A\0AInfinite iterators:\0Acount(start=0, step=1) --> start, start+step, start+2*step, ...\0Acycle(p) --> p0, p1, ... plast, p0, p1, ...\0Arepeat(elem [,n]) --> elem, elem, elem, ... endlessly or up to n times\0A\0AIterators terminating on the shortest input sequence:\0Aaccumulate(p[, func]) --> p0, p0+p1, p0+p1+p2\0Achain(p, q, ...) --> p0, p1, ... plast, q0, q1, ... \0Achain.from_iterable([p, q, ...]) --> p0, p1, ... plast, q0, q1, ... \0Acompress(data, selectors) --> (d[0] if s[0]), (d[1] if s[1]), ...\0Adropwhile(pred, seq) --> seq[n], seq[n+1], starting when pred fails\0Agroupby(iterable[, keyfunc]) --> sub-iterators grouped by value of keyfunc(v)\0Afilterfalse(pred, seq) --> elements of seq where pred(elem) is False\0Aislice(seq, [start,] stop [, step]) --> elements from\0A       seq[start:stop:step]\0Astarmap(fun, seq) --> fun(*seq[0]), fun(*seq[1]), ...\0Atee(it, n=2) --> (it1, it2 , ... itn) splits one iterator into n\0Atakewhile(pred, seq) --> seq[0], seq[1], until pred fails\0Azip_longest(p, q, ...) --> (p[0], q[0]), (p[1], q[1]), ... \0A\0ACombinatoric generators:\0Aproduct(p, q, ... [repeat=1]) --> cartesian product\0Apermutations(p[, r])\0Acombinations(p, r)\0Acombinations_with_replacement(p, r)\0A\00", align 16
@module_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.109, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @tee, i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @tee_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.109 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@tee_doc = internal global [57 x i8] c"tee(iterable, n=2) --> tuple of n independent iterators.\00", align 16
@tee.PyId___copy__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), %struct._object* null }, align 8
@.str.110 = private unnamed_addr constant [4 x i8] c"O|n\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"n must be >= 0\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_itertools() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %m = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %typelist = alloca [21 x %struct._typeobject*], align 16
  %0 = bitcast [21 x %struct._typeobject*]* %typelist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([21 x %struct._typeobject*]* @PyInit_itertools.typelist to i8*), i64 168, i32 16, i1 false)
  store %struct._typeobject* @PyType_Type, %struct._typeobject** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @teedataobject_type, i32 0, i32 0, i32 0, i32 1), align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @itertoolsmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %1 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr [21 x %struct._typeobject*], [21 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom
  %3 = load %struct._typeobject*, %struct._typeobject** %arrayidx, align 8
  %cmp1 = icmp ne %struct._typeobject* %3, null
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr [21 x %struct._typeobject*], [21 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom2
  %5 = load %struct._typeobject*, %struct._typeobject** %arrayidx3, align 8
  %call4 = call i32 @PyType_Ready(%struct._typeobject* %5)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr [21 x %struct._typeobject*], [21 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom8
  %7 = load %struct._typeobject*, %struct._typeobject** %arrayidx9, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 1
  %8 = load i8*, i8** %tp_name, align 8
  %call10 = call i8* @strchr(i8* %8, i32 46) #4
  store i8* %call10, i8** %name, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr [21 x %struct._typeobject*], [21 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom11
  %10 = load %struct._typeobject*, %struct._typeobject** %arrayidx12, align 8
  %11 = bitcast %struct._typeobject* %10 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load %struct._object*, %struct._object** %m, align 8
  %14 = load i8*, i8** %name, align 8
  %add.ptr = getelementptr i8, i8* %14, i64 1
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr [21 x %struct._typeobject*], [21 x %struct._typeobject*]* %typelist, i32 0, i64 %idxprom13
  %16 = load %struct._typeobject*, %struct._typeobject** %arrayidx14, align 8
  %17 = bitcast %struct._typeobject* %16 to %struct._object*
  %call15 = call i32 @PyModule_AddObject(%struct._object* %13, i8* %add.ptr, %struct._object* %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %18 = load i32, i32* %i, align 4
  %inc16 = add i32 %18, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyType_Ready(%struct._typeobject*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal void @accumulate_dealloc(%struct.accumulateobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.accumulateobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.accumulateobject* %lz, %struct.accumulateobject** %lz.addr, align 8
  %0 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %1 = bitcast %struct.accumulateobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %binop = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %binop, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %total, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %22 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %22, i32 0, i32 2
  %23 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %24, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %32 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %33 = bitcast %struct.accumulateobject* %32 to %struct._object*
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 38
  %35 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %36 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %37 = bitcast %struct.accumulateobject* %36 to i8*
  call void %35(i8* %37)
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @accumulate_traverse(%struct.accumulateobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.accumulateobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct.accumulateobject* %lz, %struct.accumulateobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %binop = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %binop, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %binop1 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %binop1, align 8
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
  %8 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %it, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %it9 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %it9, align 8
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
  %16 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %total, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total20 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %total20, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @accumulate_next(%struct.accumulateobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.accumulateobject*, align 8
  %val = alloca %struct._object*, align 8
  %oldtotal = alloca %struct._object*, align 8
  %newtotal = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct.accumulateobject* %lz, %struct.accumulateobject** %lz.addr, align 8
  %0 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* @PyIter_Next(%struct._object* %1)
  store %struct._object* %call, %struct._object** %val, align 8
  %2 = load %struct._object*, %struct._object** %val, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %total, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %val, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %val, align 8
  %8 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total3 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %8, i32 0, i32 1
  store %struct._object* %7, %struct._object** %total3, align 8
  %9 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total4 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %total4, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %binop = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %binop, align 8
  %cmp6 = icmp eq %struct._object* %12, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %13 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total8 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %total8, align 8
  %15 = load %struct._object*, %struct._object** %val, align 8
  %call9 = call %struct._object* @PyNumber_Add(%struct._object* %14, %struct._object* %15)
  store %struct._object* %call9, %struct._object** %newtotal, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end.5
  %16 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %binop10 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %16, i32 0, i32 3
  %17 = load %struct._object*, %struct._object** %binop10, align 8
  %18 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total11 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %total11, align 8
  %20 = load %struct._object*, %struct._object** %val, align 8
  %call12 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %17, %struct._object* %19, %struct._object* %20, i8* null)
  store %struct._object* %call12, %struct._object** %newtotal, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.7
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %21 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt14, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt14, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body
  br label %if.end.18

if.else.17:                                       ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %28 = load %struct._object*, %struct._object** %newtotal, align 8
  %cmp19 = icmp eq %struct._object* %28, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %do.end
  %29 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total22 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %29, i32 0, i32 1
  %30 = load %struct._object*, %struct._object** %total22, align 8
  store %struct._object* %30, %struct._object** %oldtotal, align 8
  %31 = load %struct._object*, %struct._object** %newtotal, align 8
  %32 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total23 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %32, i32 0, i32 1
  store %struct._object* %31, %struct._object** %total23, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.21
  %33 = load %struct._object*, %struct._object** %oldtotal, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp25, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %35, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %38(%struct._object* %39)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %40 = load %struct._object*, %struct._object** %newtotal, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt35, align 8
  %inc36 = add i64 %41, 1
  store i64 %inc36, i64* %ob_refcnt35, align 8
  %42 = load %struct._object*, %struct._object** %newtotal, align 8
  store %struct._object* %42, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.34, %if.then.20, %if.then.2, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @accumulate_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %binop = alloca %struct._object*, align 8
  %lz = alloca %struct.accumulateobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %binop, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @accumulate_new.kwargs, i32 0, i32 0), %struct._object** %iterable, %struct._object** %binop)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %it, align 8
  %3 = load %struct._object*, %struct._object** %it, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 36
  %5 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call4 = call %struct._object* %5(%struct._typeobject* %6, i64 0)
  %7 = bitcast %struct._object* %call4 to %struct.accumulateobject*
  store %struct.accumulateobject* %7, %struct.accumulateobject** %lz, align 8
  %8 = load %struct.accumulateobject*, %struct.accumulateobject** %lz, align 8
  %cmp5 = icmp eq %struct.accumulateobject* %8, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %9 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %16 = load %struct._object*, %struct._object** %binop, align 8
  %cmp11 = icmp ne %struct._object* %16, @_Py_NoneStruct
  br i1 %cmp11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %if.end.10
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %binop, align 8
  store %struct._object* %17, %struct._object** %_py_xincref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp14 = icmp ne %struct._object* %18, null
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %do.body.13
  %19 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %do.body.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %21 = load %struct._object*, %struct._object** %binop, align 8
  %22 = load %struct.accumulateobject*, %struct.accumulateobject** %lz, align 8
  %binop19 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %22, i32 0, i32 3
  store %struct._object* %21, %struct._object** %binop19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.18, %if.end.10
  %23 = load %struct.accumulateobject*, %struct.accumulateobject** %lz, align 8
  %total = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %23, i32 0, i32 1
  store %struct._object* null, %struct._object** %total, align 8
  %24 = load %struct._object*, %struct._object** %it, align 8
  %25 = load %struct.accumulateobject*, %struct.accumulateobject** %lz, align 8
  %it21 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %25, i32 0, i32 2
  store %struct._object* %24, %struct._object** %it21, align 8
  %26 = load %struct.accumulateobject*, %struct.accumulateobject** %lz, align 8
  %27 = bitcast %struct.accumulateobject* %26 to %struct._object*
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.20, %do.end, %if.then.2, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare void @PyObject_GC_Del(i8*) #2

declare void @PyObject_GC_UnTrack(i8*) #2

declare %struct._object* @PyIter_Next(%struct._object*) #2

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #2

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @accumulate_reduce(%struct.accumulateobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.accumulateobject*, align 8
  store %struct.accumulateobject* %lz, %struct.accumulateobject** %lz.addr, align 8
  %0 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %1 = bitcast %struct.accumulateobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %it, align 8
  %5 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %binop = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %binop, align 8
  %tobool = icmp ne %struct._object* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %binop1 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %binop1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %8, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %9 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %total, align 8
  %tobool2 = icmp ne %struct._object* %10, null
  br i1 %tobool2, label %cond.true.3, label %cond.false.5

cond.true.3:                                      ; preds = %cond.end
  %11 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total4 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %total4, align 8
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.3
  %cond7 = phi %struct._object* [ %12, %cond.true.3 ], [ @_Py_NoneStruct, %cond.false.5 ]
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %cond, %struct._object* %cond7)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @accumulate_setstate(%struct.accumulateobject* %lz, %struct._object* %state) #0 {
entry:
  %lz.addr = alloca %struct.accumulateobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.accumulateobject* %lz, %struct.accumulateobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %total, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total1 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %total1, align 8
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
  %11 = load %struct._object*, %struct._object** %state.addr, align 8
  %12 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total7 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %12, i32 0, i32 1
  store %struct._object* %11, %struct._object** %total7, align 8
  %13 = load %struct.accumulateobject*, %struct.accumulateobject** %lz.addr, align 8
  %total8 = getelementptr inbounds %struct.accumulateobject, %struct.accumulateobject* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %total8, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt9, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt9, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc10 = add i64 %16, 1
  store i64 %inc10, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare %struct._object* @Py_BuildValue(i8*, ...) #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #2

declare %struct._object* @PyObject_GetIter(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal void @combinations_dealloc(%struct.combinationsobject* %co) #0 {
entry:
  %co.addr = alloca %struct.combinationsobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.combinationsobject* %co, %struct.combinationsobject** %co.addr, align 8
  %0 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %1 = bitcast %struct.combinationsobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %pool = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %pool, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %result = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %indices = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %22, i32 0, i32 2
  %23 = load i64*, i64** %indices, align 8
  %cmp23 = icmp ne i64* %23, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %do.end.22
  %24 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %indices25 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %24, i32 0, i32 2
  %25 = load i64*, i64** %indices25, align 8
  %26 = bitcast i64* %25 to i8*
  call void @PyMem_Free(i8* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %do.end.22
  %27 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %28 = bitcast %struct.combinationsobject* %27 to %struct._object*
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 38
  %30 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %31 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %32 = bitcast %struct.combinationsobject* %31 to i8*
  call void %30(i8* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @combinations_traverse(%struct.combinationsobject* %co, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %co.addr = alloca %struct.combinationsobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.combinationsobject* %co, %struct.combinationsobject** %co.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %pool = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %pool1 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %pool1, align 8
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
  %8 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %result = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %result, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %result9 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %result9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @combinations_next(%struct.combinationsobject* %co) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %co.addr = alloca %struct.combinationsobject*, align 8
  %elem = alloca %struct._object*, align 8
  %oldelem = alloca %struct._object*, align 8
  %pool = alloca %struct._object*, align 8
  %indices = alloca i64*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %index = alloca i64, align 8
  %old_result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp79 = alloca %struct._object*, align 8
  store %struct.combinationsobject* %co, %struct.combinationsobject** %co.addr, align 8
  %0 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %pool1 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool1, align 8
  store %struct._object* %1, %struct._object** %pool, align 8
  %2 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %indices2 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %2, i32 0, i32 2
  %3 = load i64*, i64** %indices2, align 8
  store i64* %3, i64** %indices, align 8
  %4 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %result3 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %result3, align 8
  store %struct._object* %5, %struct._object** %result, align 8
  %6 = load %struct._object*, %struct._object** %pool, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %n, align 8
  %9 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %r4 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %9, i32 0, i32 4
  %10 = load i64, i64* %r4, align 8
  store i64 %10, i64* %r, align 8
  %11 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %stopped = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %11, i32 0, i32 5
  %12 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %14 = load i64, i64* %r, align 8
  %call = call %struct._object* @PyTuple_New(i64 %14)
  store %struct._object* %call, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp6 = icmp eq %struct._object* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  br label %empty

if.end.8:                                         ; preds = %if.then.5
  %16 = load %struct._object*, %struct._object** %result, align 8
  %17 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %result9 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %17, i32 0, i32 3
  store %struct._object* %16, %struct._object** %result9, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %r, align 8
  %cmp10 = icmp slt i64 %18, %19
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %i, align 8
  %21 = load i64*, i64** %indices, align 8
  %arrayidx = getelementptr i64, i64* %21, i64 %20
  %22 = load i64, i64* %arrayidx, align 8
  store i64 %22, i64* %index, align 8
  %23 = load i64, i64* %index, align 8
  %24 = load %struct._object*, %struct._object** %pool, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %25, i32 0, i32 1
  %arrayidx11 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %23
  %26 = load %struct._object*, %struct._object** %arrayidx11, align 8
  store %struct._object* %26, %struct._object** %elem, align 8
  %27 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %29 = load %struct._object*, %struct._object** %elem, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object*, %struct._object** %result, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item12 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx13 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item12, i32 0, i64 %30
  store %struct._object* %29, %struct._object** %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, i64* %i, align 8
  %inc14 = add i64 %33, 1
  store i64 %inc14, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.92

if.else:                                          ; preds = %if.end
  %34 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt15, align 8
  %cmp16 = icmp sgt i64 %35, 1
  br i1 %cmp16, label %if.then.17, label %if.end.40

if.then.17:                                       ; preds = %if.else
  %36 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %36, %struct._object** %old_result, align 8
  %37 = load i64, i64* %r, align 8
  %call18 = call %struct._object* @PyTuple_New(i64 %37)
  store %struct._object* %call18, %struct._object** %result, align 8
  %38 = load %struct._object*, %struct._object** %result, align 8
  %cmp19 = icmp eq %struct._object* %38, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.17
  br label %empty

if.end.21:                                        ; preds = %if.then.17
  %39 = load %struct._object*, %struct._object** %result, align 8
  %40 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %result22 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %40, i32 0, i32 3
  store %struct._object* %39, %struct._object** %result22, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.32, %if.end.21
  %41 = load i64, i64* %i, align 8
  %42 = load i64, i64* %r, align 8
  %cmp24 = icmp slt i64 %41, %42
  br i1 %cmp24, label %for.body.25, label %for.end.34

for.body.25:                                      ; preds = %for.cond.23
  %43 = load i64, i64* %i, align 8
  %44 = load %struct._object*, %struct._object** %old_result, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyTupleObject*
  %ob_item26 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %45, i32 0, i32 1
  %arrayidx27 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item26, i32 0, i64 %43
  %46 = load %struct._object*, %struct._object** %arrayidx27, align 8
  store %struct._object* %46, %struct._object** %elem, align 8
  %47 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt28, align 8
  %inc29 = add i64 %48, 1
  store i64 %inc29, i64* %ob_refcnt28, align 8
  %49 = load %struct._object*, %struct._object** %elem, align 8
  %50 = load i64, i64* %i, align 8
  %51 = load %struct._object*, %struct._object** %result, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 %50
  store %struct._object* %49, %struct._object** %arrayidx31, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.25
  %53 = load i64, i64* %i, align 8
  %inc33 = add i64 %53, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond.23

for.end.34:                                       ; preds = %for.cond.23
  br label %do.body

do.body:                                          ; preds = %for.end.34
  %54 = load %struct._object*, %struct._object** %old_result, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt35, align 8
  %dec = add i64 %56, -1
  store i64 %dec, i64* %ob_refcnt35, align 8
  %cmp36 = icmp ne i64 %dec, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body
  br label %if.end.39

if.else.38:                                       ; preds = %do.body
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %59(%struct._object* %60)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end

do.end:                                           ; preds = %if.end.39
  br label %if.end.40

if.end.40:                                        ; preds = %do.end, %if.else
  %61 = load i64, i64* %r, align 8
  %sub = sub i64 %61, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.47, %if.end.40
  %62 = load i64, i64* %i, align 8
  %cmp42 = icmp sge i64 %62, 0
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.41
  %63 = load i64, i64* %i, align 8
  %64 = load i64*, i64** %indices, align 8
  %arrayidx43 = getelementptr i64, i64* %64, i64 %63
  %65 = load i64, i64* %arrayidx43, align 8
  %66 = load i64, i64* %i, align 8
  %67 = load i64, i64* %n, align 8
  %add = add i64 %66, %67
  %68 = load i64, i64* %r, align 8
  %sub44 = sub i64 %add, %68
  %cmp45 = icmp eq i64 %65, %sub44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.41
  %69 = phi i1 [ false, %for.cond.41 ], [ %cmp45, %land.rhs ]
  br i1 %69, label %for.body.46, label %for.end.49

for.body.46:                                      ; preds = %land.end
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.46
  %70 = load i64, i64* %i, align 8
  %dec48 = add i64 %70, -1
  store i64 %dec48, i64* %i, align 8
  br label %for.cond.41

for.end.49:                                       ; preds = %land.end
  %71 = load i64, i64* %i, align 8
  %cmp50 = icmp slt i64 %71, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.end.49
  br label %empty

if.end.52:                                        ; preds = %for.end.49
  %72 = load i64, i64* %i, align 8
  %73 = load i64*, i64** %indices, align 8
  %arrayidx53 = getelementptr i64, i64* %73, i64 %72
  %74 = load i64, i64* %arrayidx53, align 8
  %inc54 = add i64 %74, 1
  store i64 %inc54, i64* %arrayidx53, align 8
  %75 = load i64, i64* %i, align 8
  %add55 = add i64 %75, 1
  store i64 %add55, i64* %j, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.63, %if.end.52
  %76 = load i64, i64* %j, align 8
  %77 = load i64, i64* %r, align 8
  %cmp57 = icmp slt i64 %76, %77
  br i1 %cmp57, label %for.body.58, label %for.end.65

for.body.58:                                      ; preds = %for.cond.56
  %78 = load i64, i64* %j, align 8
  %sub59 = sub i64 %78, 1
  %79 = load i64*, i64** %indices, align 8
  %arrayidx60 = getelementptr i64, i64* %79, i64 %sub59
  %80 = load i64, i64* %arrayidx60, align 8
  %add61 = add i64 %80, 1
  %81 = load i64, i64* %j, align 8
  %82 = load i64*, i64** %indices, align 8
  %arrayidx62 = getelementptr i64, i64* %82, i64 %81
  store i64 %add61, i64* %arrayidx62, align 8
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.58
  %83 = load i64, i64* %j, align 8
  %inc64 = add i64 %83, 1
  store i64 %inc64, i64* %j, align 8
  br label %for.cond.56

for.end.65:                                       ; preds = %for.cond.56
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.89, %for.end.65
  %84 = load i64, i64* %i, align 8
  %85 = load i64, i64* %r, align 8
  %cmp67 = icmp slt i64 %84, %85
  br i1 %cmp67, label %for.body.68, label %for.end.91

for.body.68:                                      ; preds = %for.cond.66
  %86 = load i64, i64* %i, align 8
  %87 = load i64*, i64** %indices, align 8
  %arrayidx69 = getelementptr i64, i64* %87, i64 %86
  %88 = load i64, i64* %arrayidx69, align 8
  store i64 %88, i64* %index, align 8
  %89 = load i64, i64* %index, align 8
  %90 = load %struct._object*, %struct._object** %pool, align 8
  %91 = bitcast %struct._object* %90 to %struct.PyTupleObject*
  %ob_item70 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %91, i32 0, i32 1
  %arrayidx71 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item70, i32 0, i64 %89
  %92 = load %struct._object*, %struct._object** %arrayidx71, align 8
  store %struct._object* %92, %struct._object** %elem, align 8
  %93 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt72, align 8
  %inc73 = add i64 %94, 1
  store i64 %inc73, i64* %ob_refcnt72, align 8
  %95 = load i64, i64* %i, align 8
  %96 = load %struct._object*, %struct._object** %result, align 8
  %97 = bitcast %struct._object* %96 to %struct.PyTupleObject*
  %ob_item74 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %97, i32 0, i32 1
  %arrayidx75 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item74, i32 0, i64 %95
  %98 = load %struct._object*, %struct._object** %arrayidx75, align 8
  store %struct._object* %98, %struct._object** %oldelem, align 8
  %99 = load %struct._object*, %struct._object** %elem, align 8
  %100 = load i64, i64* %i, align 8
  %101 = load %struct._object*, %struct._object** %result, align 8
  %102 = bitcast %struct._object* %101 to %struct.PyTupleObject*
  %ob_item76 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %102, i32 0, i32 1
  %arrayidx77 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item76, i32 0, i64 %100
  store %struct._object* %99, %struct._object** %arrayidx77, align 8
  br label %do.body.78

do.body.78:                                       ; preds = %for.body.68
  %103 = load %struct._object*, %struct._object** %oldelem, align 8
  store %struct._object* %103, %struct._object** %_py_decref_tmp79, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0
  %105 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %105, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.78
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  call void %108(%struct._object* %109)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %for.inc.89

for.inc.89:                                       ; preds = %do.end.88
  %110 = load i64, i64* %i, align 8
  %inc90 = add i64 %110, 1
  store i64 %inc90, i64* %i, align 8
  br label %for.cond.66

for.end.91:                                       ; preds = %for.cond.66
  br label %if.end.92

if.end.92:                                        ; preds = %for.end.91, %for.end
  %111 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0
  %112 = load i64, i64* %ob_refcnt93, align 8
  %inc94 = add i64 %112, 1
  store i64 %inc94, i64* %ob_refcnt93, align 8
  %113 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %113, %struct._object** %retval
  br label %return

empty:                                            ; preds = %if.then.51, %if.then.20, %if.then.7
  %114 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %stopped95 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %114, i32 0, i32 5
  store i32 1, i32* %stopped95, align 4
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %empty, %if.end.92, %if.then
  %115 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %115
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @combinations_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %co = alloca %struct.combinationsobject*, align 8
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %pool = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %indices = alloca i64*, align 8
  %i = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %pool, align 8
  store %struct._object* null, %struct._object** %iterable, align 8
  store i64* null, i64** %indices, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @combinations_new.kwargs, i32 0, i32 0), %struct._object** %iterable, i64* %r)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @PySequence_Tuple(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %pool, align 8
  %3 = load %struct._object*, %struct._object** %pool, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %error

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %pool, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  %7 = load i64, i64* %r, align 8
  %cmp4 = icmp slt i64 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %error

if.end.6:                                         ; preds = %if.end.3
  %9 = load i64, i64* %r, align 8
  %mul = mul i64 %9, 8
  %call7 = call i8* @PyMem_Malloc(i64 %mul)
  %10 = bitcast i8* %call7 to i64*
  store i64* %10, i64** %indices, align 8
  %11 = load i64*, i64** %indices, align 8
  %cmp8 = icmp eq i64* %11, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %call10 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.11:                                        ; preds = %if.end.6
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %r, align 8
  %cmp12 = icmp slt i64 %12, %13
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load i64*, i64** %indices, align 8
  %arrayidx = getelementptr i64, i64* %16, i64 %15
  store i64 %14, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i64, i64* %i, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 36
  %19 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %20 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call13 = call %struct._object* %19(%struct._typeobject* %20, i64 0)
  %21 = bitcast %struct._object* %call13 to %struct.combinationsobject*
  store %struct.combinationsobject* %21, %struct.combinationsobject** %co, align 8
  %22 = load %struct.combinationsobject*, %struct.combinationsobject** %co, align 8
  %cmp14 = icmp eq %struct.combinationsobject* %22, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  br label %error

if.end.16:                                        ; preds = %for.end
  %23 = load %struct._object*, %struct._object** %pool, align 8
  %24 = load %struct.combinationsobject*, %struct.combinationsobject** %co, align 8
  %pool17 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %24, i32 0, i32 1
  store %struct._object* %23, %struct._object** %pool17, align 8
  %25 = load i64*, i64** %indices, align 8
  %26 = load %struct.combinationsobject*, %struct.combinationsobject** %co, align 8
  %indices18 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %26, i32 0, i32 2
  store i64* %25, i64** %indices18, align 8
  %27 = load %struct.combinationsobject*, %struct.combinationsobject** %co, align 8
  %result = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %27, i32 0, i32 3
  store %struct._object* null, %struct._object** %result, align 8
  %28 = load i64, i64* %r, align 8
  %29 = load %struct.combinationsobject*, %struct.combinationsobject** %co, align 8
  %r19 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %29, i32 0, i32 4
  store i64 %28, i64* %r19, align 8
  %30 = load i64, i64* %r, align 8
  %31 = load i64, i64* %n, align 8
  %cmp20 = icmp sgt i64 %30, %31
  %cond = select i1 %cmp20, i32 1, i32 0
  %32 = load %struct.combinationsobject*, %struct.combinationsobject** %co, align 8
  %stopped = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %32, i32 0, i32 5
  store i32 %cond, i32* %stopped, align 4
  %33 = load %struct.combinationsobject*, %struct.combinationsobject** %co, align 8
  %34 = bitcast %struct.combinationsobject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.15, %if.then.9, %if.then.5, %if.then.2
  %35 = load i64*, i64** %indices, align 8
  %cmp21 = icmp ne i64* %35, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %error
  %36 = load i64*, i64** %indices, align 8
  %37 = bitcast i64* %36 to i8*
  call void @PyMem_Free(i8* %37)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %error
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %38 = load %struct._object*, %struct._object** %pool, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp24 = icmp ne %struct._object* %39, null
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %do.body
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body.26
  br label %if.end.29

if.else:                                          ; preds = %do.body.26
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  br label %if.end.30

if.end.30:                                        ; preds = %do.end, %do.body
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.31, %if.end.16, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

declare void @PyMem_Free(i8*) #2

declare %struct._object* @PyTuple_New(i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @combinations_reduce(%struct.combinationsobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.combinationsobject*, align 8
  %indices = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %index = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.combinationsobject* %lz, %struct.combinationsobject** %lz.addr, align 8
  %0 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %3 = bitcast %struct.combinationsobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %pool = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %pool, align 8
  %7 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %7, i32 0, i32 4
  %8 = load i64, i64* %r, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %stopped = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %9, i32 0, i32 5
  %10 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.1, label %if.else.5

if.then.1:                                        ; preds = %if.else
  %11 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %12 = bitcast %struct.combinationsobject* %11 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %14 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r3 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %14, i32 0, i32 4
  %15 = load i64, i64* %r3, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct._typeobject* %13, i64 %15)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %16 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r6 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %16, i32 0, i32 4
  %17 = load i64, i64* %r6, align 8
  %call7 = call %struct._object* @PyTuple_New(i64 %17)
  store %struct._object* %call7, %struct._object** %indices, align 8
  %18 = load %struct._object*, %struct._object** %indices, align 8
  %tobool8 = icmp ne %struct._object* %18, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else.5
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r10 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %20, i32 0, i32 4
  %21 = load i64, i64* %r10, align 8
  %cmp11 = icmp slt i64 %19, %21
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %indices12 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %23, i32 0, i32 2
  %24 = load i64*, i64** %indices12, align 8
  %arrayidx = getelementptr i64, i64* %24, i64 %22
  %25 = load i64, i64* %arrayidx, align 8
  %call13 = call %struct._object* @PyLong_FromSsize_t(i64 %25)
  store %struct._object* %call13, %struct._object** %index, align 8
  %26 = load %struct._object*, %struct._object** %index, align 8
  %tobool14 = icmp ne %struct._object* %26, null
  br i1 %tobool14, label %if.end.21, label %if.then.15

if.then.15:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %27 = load %struct._object*, %struct._object** %indices, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.20

if.else.18:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  %34 = load %struct._object*, %struct._object** %index, align 8
  %35 = load i64, i64* %i, align 8
  %36 = load %struct._object*, %struct._object** %indices, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %35
  store %struct._object* %34, %struct._object** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %38 = load i64, i64* %i, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %40 = bitcast %struct.combinationsobject* %39 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %42 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %pool24 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %42, i32 0, i32 1
  %43 = load %struct._object*, %struct._object** %pool24, align 8
  %44 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r25 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %44, i32 0, i32 4
  %45 = load i64, i64* %r25, align 8
  %46 = load %struct._object*, %struct._object** %indices, align 8
  %call26 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._typeobject* %41, %struct._object* %43, i64 %45, %struct._object* %46)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.9, %if.then.1, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @combinations_setstate(%struct.combinationsobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.combinationsobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %max = alloca i64, align 8
  %indexObject = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %element = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.combinationsobject* %lz, %struct.combinationsobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %pool = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %n, align 8
  %4 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %state.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size1, align 8
  %10 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %10, i32 0, i32 4
  %11 = load i64, i64* %r, align 8
  %cmp2 = icmp ne i64 %9, %11
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r3 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %14, i32 0, i32 4
  %15 = load i64, i64* %r3, align 8
  %cmp4 = icmp slt i64 %13, %15
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %17 = load %struct._object*, %struct._object** %state.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %16
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %19, %struct._object** %indexObject, align 8
  %20 = load %struct._object*, %struct._object** %indexObject, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %20)
  store i64 %call, i64* %index, align 8
  %21 = load i64, i64* %index, align 8
  %cmp5 = icmp eq i64 %21, -1
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %for.body
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %n, align 8
  %add = add i64 %22, %23
  %24 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r9 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %24, i32 0, i32 4
  %25 = load i64, i64* %r9, align 8
  %sub = sub i64 %add, %25
  store i64 %sub, i64* %max, align 8
  %26 = load i64, i64* %index, align 8
  %27 = load i64, i64* %max, align 8
  %cmp10 = icmp sgt i64 %26, %27
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %28 = load i64, i64* %max, align 8
  store i64 %28, i64* %index, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %29 = load i64, i64* %index, align 8
  %cmp13 = icmp slt i64 %29, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store i64 0, i64* %index, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %30 = load i64, i64* %index, align 8
  %31 = load i64, i64* %i, align 8
  %32 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %indices = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %32, i32 0, i32 2
  %33 = load i64*, i64** %indices, align 8
  %arrayidx16 = getelementptr i64, i64* %33, i64 %31
  store i64 %30, i64* %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %34 = load i64, i64* %i, align 8
  %inc = add i64 %34, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r17 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %35, i32 0, i32 4
  %36 = load i64, i64* %r17, align 8
  %call18 = call %struct._object* @PyTuple_New(i64 %36)
  store %struct._object* %call18, %struct._object** %result, align 8
  %37 = load %struct._object*, %struct._object** %result, align 8
  %cmp19 = icmp eq %struct._object* %37, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.34, %if.end.21
  %38 = load i64, i64* %i, align 8
  %39 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %r23 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %39, i32 0, i32 4
  %40 = load i64, i64* %r23, align 8
  %cmp24 = icmp slt i64 %38, %40
  br i1 %cmp24, label %for.body.25, label %for.end.36

for.body.25:                                      ; preds = %for.cond.22
  %41 = load i64, i64* %i, align 8
  %42 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %indices26 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %42, i32 0, i32 2
  %43 = load i64*, i64** %indices26, align 8
  %arrayidx27 = getelementptr i64, i64* %43, i64 %41
  %44 = load i64, i64* %arrayidx27, align 8
  %45 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %pool28 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %45, i32 0, i32 1
  %46 = load %struct._object*, %struct._object** %pool28, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyTupleObject*
  %ob_item29 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %47, i32 0, i32 1
  %arrayidx30 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item29, i32 0, i64 %44
  %48 = load %struct._object*, %struct._object** %arrayidx30, align 8
  store %struct._object* %48, %struct._object** %element, align 8
  %49 = load %struct._object*, %struct._object** %element, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt, align 8
  %inc31 = add i64 %50, 1
  store i64 %inc31, i64* %ob_refcnt, align 8
  %51 = load %struct._object*, %struct._object** %element, align 8
  %52 = load i64, i64* %i, align 8
  %53 = load %struct._object*, %struct._object** %result, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyTupleObject*
  %ob_item32 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %54, i32 0, i32 1
  %arrayidx33 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item32, i32 0, i64 %52
  store %struct._object* %51, %struct._object** %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.25
  %55 = load i64, i64* %i, align 8
  %inc35 = add i64 %55, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond.22

for.end.36:                                       ; preds = %for.cond.22
  br label %do.body

do.body:                                          ; preds = %for.end.36
  %56 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %result37 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %56, i32 0, i32 3
  %57 = load %struct._object*, %struct._object** %result37, align 8
  store %struct._object* %57, %struct._object** %_py_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp38 = icmp ne %struct._object* %58, null
  br i1 %cmp38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %do.body
  %59 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %result40 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %59, i32 0, i32 3
  store %struct._object* null, %struct._object** %result40, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.39
  %60 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt42, align 8
  %dec = add i64 %62, -1
  store i64 %dec, i64* %ob_refcnt42, align 8
  %cmp43 = icmp ne i64 %dec, 0
  br i1 %cmp43, label %if.then.44, label %if.else

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else:                                          ; preds = %do.body.41
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %65(%struct._object* %66)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.44
  br label %do.end

do.end:                                           ; preds = %if.end.46
  br label %if.end.47

if.end.47:                                        ; preds = %do.end, %do.body
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %67 = load %struct._object*, %struct._object** %result, align 8
  %68 = load %struct.combinationsobject*, %struct.combinationsobject** %lz.addr, align 8
  %result49 = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %68, i32 0, i32 3
  store %struct._object* %67, %struct._object** %result49, align 8
  %69 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc50 = add i64 %69, 1
  store i64 %inc50, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.then.20, %if.then.7, %if.then
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @combinations_sizeof(%struct.combinationsobject* %co, i8* %unused) #0 {
entry:
  %co.addr = alloca %struct.combinationsobject*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.combinationsobject* %co, %struct.combinationsobject** %co.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 56, i64* %res, align 8
  %0 = load %struct.combinationsobject*, %struct.combinationsobject** %co.addr, align 8
  %r = getelementptr inbounds %struct.combinationsobject, %struct.combinationsobject* %0, i32 0, i32 4
  %1 = load i64, i64* %r, align 8
  %mul = mul i64 %1, 8
  %2 = load i64, i64* %res, align 8
  %add = add i64 %2, %mul
  store i64 %add, i64* %res, align 8
  %3 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  ret %struct._object* %call
}

declare %struct._object* @PyLong_FromSsize_t(i64) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i64 @PyLong_AsSsize_t(%struct._object*) #2

declare %struct._object* @PyErr_Occurred() #2

declare %struct._object* @PySequence_Tuple(%struct._object*) #2

declare i8* @PyMem_Malloc(i64) #2

declare %struct._object* @PyErr_NoMemory() #2

; Function Attrs: nounwind uwtable
define internal void @cwr_dealloc(%struct.cwrobject* %co) #0 {
entry:
  %co.addr = alloca %struct.cwrobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.cwrobject* %co, %struct.cwrobject** %co.addr, align 8
  %0 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %1 = bitcast %struct.cwrobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %pool = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %pool, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %result = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %indices = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %22, i32 0, i32 2
  %23 = load i64*, i64** %indices, align 8
  %cmp23 = icmp ne i64* %23, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %do.end.22
  %24 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %indices25 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %24, i32 0, i32 2
  %25 = load i64*, i64** %indices25, align 8
  %26 = bitcast i64* %25 to i8*
  call void @PyMem_Free(i8* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %do.end.22
  %27 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %28 = bitcast %struct.cwrobject* %27 to %struct._object*
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 38
  %30 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %31 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %32 = bitcast %struct.cwrobject* %31 to i8*
  call void %30(i8* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cwr_traverse(%struct.cwrobject* %co, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %co.addr = alloca %struct.cwrobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.cwrobject* %co, %struct.cwrobject** %co.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %pool = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %pool1 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %pool1, align 8
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
  %8 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %result = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %result, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %result9 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %result9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cwr_next(%struct.cwrobject* %co) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %co.addr = alloca %struct.cwrobject*, align 8
  %elem = alloca %struct._object*, align 8
  %oldelem = alloca %struct._object*, align 8
  %pool = alloca %struct._object*, align 8
  %indices = alloca i64*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %i = alloca i64, align 8
  %index = alloca i64, align 8
  %old_result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  store %struct.cwrobject* %co, %struct.cwrobject** %co.addr, align 8
  %0 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %pool1 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool1, align 8
  store %struct._object* %1, %struct._object** %pool, align 8
  %2 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %indices2 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %2, i32 0, i32 2
  %3 = load i64*, i64** %indices2, align 8
  store i64* %3, i64** %indices, align 8
  %4 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %result3 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %result3, align 8
  store %struct._object* %5, %struct._object** %result, align 8
  %6 = load %struct._object*, %struct._object** %pool, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %7, i32 0, i32 1
  %8 = load i64, i64* %ob_size, align 8
  store i64 %8, i64* %n, align 8
  %9 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %r4 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %9, i32 0, i32 4
  %10 = load i64, i64* %r4, align 8
  store i64 %10, i64* %r, align 8
  %11 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %stopped = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %11, i32 0, i32 5
  %12 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %13, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %14 = load i64, i64* %r, align 8
  %call = call %struct._object* @PyTuple_New(i64 %14)
  store %struct._object* %call, %struct._object** %result, align 8
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp6 = icmp eq %struct._object* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.5
  br label %empty

if.end.8:                                         ; preds = %if.then.5
  %16 = load %struct._object*, %struct._object** %result, align 8
  %17 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %result9 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %17, i32 0, i32 3
  store %struct._object* %16, %struct._object** %result9, align 8
  %18 = load %struct._object*, %struct._object** %pool, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %20 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %20, %struct._object** %elem, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %21 = load i64, i64* %i, align 8
  %22 = load i64, i64* %r, align 8
  %cmp10 = icmp slt i64 %21, %22
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %25 = load %struct._object*, %struct._object** %elem, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load %struct._object*, %struct._object** %result, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyTupleObject*
  %ob_item11 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %28, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item11, i32 0, i64 %26
  store %struct._object* %25, %struct._object** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load i64, i64* %i, align 8
  %inc13 = add i64 %29, 1
  store i64 %inc13, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.79

if.else:                                          ; preds = %if.end
  %30 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt14, align 8
  %cmp15 = icmp sgt i64 %31, 1
  br i1 %cmp15, label %if.then.16, label %if.end.39

if.then.16:                                       ; preds = %if.else
  %32 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %32, %struct._object** %old_result, align 8
  %33 = load i64, i64* %r, align 8
  %call17 = call %struct._object* @PyTuple_New(i64 %33)
  store %struct._object* %call17, %struct._object** %result, align 8
  %34 = load %struct._object*, %struct._object** %result, align 8
  %cmp18 = icmp eq %struct._object* %34, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.16
  br label %empty

if.end.20:                                        ; preds = %if.then.16
  %35 = load %struct._object*, %struct._object** %result, align 8
  %36 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %result21 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %36, i32 0, i32 3
  store %struct._object* %35, %struct._object** %result21, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.31, %if.end.20
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %r, align 8
  %cmp23 = icmp slt i64 %37, %38
  br i1 %cmp23, label %for.body.24, label %for.end.33

for.body.24:                                      ; preds = %for.cond.22
  %39 = load i64, i64* %i, align 8
  %40 = load %struct._object*, %struct._object** %old_result, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*
  %ob_item25 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %41, i32 0, i32 1
  %arrayidx26 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item25, i32 0, i64 %39
  %42 = load %struct._object*, %struct._object** %arrayidx26, align 8
  store %struct._object* %42, %struct._object** %elem, align 8
  %43 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt27, align 8
  %inc28 = add i64 %44, 1
  store i64 %inc28, i64* %ob_refcnt27, align 8
  %45 = load %struct._object*, %struct._object** %elem, align 8
  %46 = load i64, i64* %i, align 8
  %47 = load %struct._object*, %struct._object** %result, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*
  %ob_item29 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1
  %arrayidx30 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item29, i32 0, i64 %46
  store %struct._object* %45, %struct._object** %arrayidx30, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.24
  %49 = load i64, i64* %i, align 8
  %inc32 = add i64 %49, 1
  store i64 %inc32, i64* %i, align 8
  br label %for.cond.22

for.end.33:                                       ; preds = %for.cond.22
  br label %do.body

do.body:                                          ; preds = %for.end.33
  %50 = load %struct._object*, %struct._object** %old_result, align 8
  store %struct._object* %50, %struct._object** %_py_decref_tmp, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt34, align 8
  %dec = add i64 %52, -1
  store i64 %dec, i64* %ob_refcnt34, align 8
  %cmp35 = icmp ne i64 %dec, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body
  br label %if.end.38

if.else.37:                                       ; preds = %do.body
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %55(%struct._object* %56)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end

do.end:                                           ; preds = %if.end.38
  br label %if.end.39

if.end.39:                                        ; preds = %do.end, %if.else
  %57 = load i64, i64* %r, align 8
  %sub = sub i64 %57, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.46, %if.end.39
  %58 = load i64, i64* %i, align 8
  %cmp41 = icmp sge i64 %58, 0
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.40
  %59 = load i64, i64* %i, align 8
  %60 = load i64*, i64** %indices, align 8
  %arrayidx42 = getelementptr i64, i64* %60, i64 %59
  %61 = load i64, i64* %arrayidx42, align 8
  %62 = load i64, i64* %n, align 8
  %sub43 = sub i64 %62, 1
  %cmp44 = icmp eq i64 %61, %sub43
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.40
  %63 = phi i1 [ false, %for.cond.40 ], [ %cmp44, %land.rhs ]
  br i1 %63, label %for.body.45, label %for.end.48

for.body.45:                                      ; preds = %land.end
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.45
  %64 = load i64, i64* %i, align 8
  %dec47 = add i64 %64, -1
  store i64 %dec47, i64* %i, align 8
  br label %for.cond.40

for.end.48:                                       ; preds = %land.end
  %65 = load i64, i64* %i, align 8
  %cmp49 = icmp slt i64 %65, 0
  br i1 %cmp49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.end.48
  br label %empty

if.end.51:                                        ; preds = %for.end.48
  %66 = load i64, i64* %i, align 8
  %67 = load i64*, i64** %indices, align 8
  %arrayidx52 = getelementptr i64, i64* %67, i64 %66
  %68 = load i64, i64* %arrayidx52, align 8
  %add = add i64 %68, 1
  store i64 %add, i64* %index, align 8
  %69 = load i64, i64* %index, align 8
  %70 = load %struct._object*, %struct._object** %pool, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyTupleObject*
  %ob_item53 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %71, i32 0, i32 1
  %arrayidx54 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item53, i32 0, i64 %69
  %72 = load %struct._object*, %struct._object** %arrayidx54, align 8
  store %struct._object* %72, %struct._object** %elem, align 8
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.76, %if.end.51
  %73 = load i64, i64* %i, align 8
  %74 = load i64, i64* %r, align 8
  %cmp56 = icmp slt i64 %73, %74
  br i1 %cmp56, label %for.body.57, label %for.end.78

for.body.57:                                      ; preds = %for.cond.55
  %75 = load i64, i64* %index, align 8
  %76 = load i64, i64* %i, align 8
  %77 = load i64*, i64** %indices, align 8
  %arrayidx58 = getelementptr i64, i64* %77, i64 %76
  store i64 %75, i64* %arrayidx58, align 8
  %78 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %79, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  %80 = load i64, i64* %i, align 8
  %81 = load %struct._object*, %struct._object** %result, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyTupleObject*
  %ob_item61 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %82, i32 0, i32 1
  %arrayidx62 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item61, i32 0, i64 %80
  %83 = load %struct._object*, %struct._object** %arrayidx62, align 8
  store %struct._object* %83, %struct._object** %oldelem, align 8
  %84 = load %struct._object*, %struct._object** %elem, align 8
  %85 = load i64, i64* %i, align 8
  %86 = load %struct._object*, %struct._object** %result, align 8
  %87 = bitcast %struct._object* %86 to %struct.PyTupleObject*
  %ob_item63 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %87, i32 0, i32 1
  %arrayidx64 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item63, i32 0, i64 %85
  store %struct._object* %84, %struct._object** %arrayidx64, align 8
  br label %do.body.65

do.body.65:                                       ; preds = %for.body.57
  %88 = load %struct._object*, %struct._object** %oldelem, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp66, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %90, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.65
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %93(%struct._object* %94)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %for.inc.76

for.inc.76:                                       ; preds = %do.end.75
  %95 = load i64, i64* %i, align 8
  %inc77 = add i64 %95, 1
  store i64 %inc77, i64* %i, align 8
  br label %for.cond.55

for.end.78:                                       ; preds = %for.cond.55
  br label %if.end.79

if.end.79:                                        ; preds = %for.end.78, %for.end
  %96 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 0
  %97 = load i64, i64* %ob_refcnt80, align 8
  %inc81 = add i64 %97, 1
  store i64 %inc81, i64* %ob_refcnt80, align 8
  %98 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %98, %struct._object** %retval
  br label %return

empty:                                            ; preds = %if.then.50, %if.then.19, %if.then.7
  %99 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %stopped82 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %99, i32 0, i32 5
  store i32 1, i32* %stopped82, align 4
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %empty, %if.end.79, %if.then
  %100 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %100
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cwr_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %co = alloca %struct.cwrobject*, align 8
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %pool = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %indices = alloca i64*, align 8
  %i = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %pool, align 8
  store %struct._object* null, %struct._object** %iterable, align 8
  store i64* null, i64** %indices, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @cwr_new.kwargs, i32 0, i32 0), %struct._object** %iterable, i64* %r)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @PySequence_Tuple(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %pool, align 8
  %3 = load %struct._object*, %struct._object** %pool, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %error

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %pool, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  %7 = load i64, i64* %r, align 8
  %cmp4 = icmp slt i64 %7, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %error

if.end.6:                                         ; preds = %if.end.3
  %9 = load i64, i64* %r, align 8
  %mul = mul i64 %9, 8
  %call7 = call i8* @PyMem_Malloc(i64 %mul)
  %10 = bitcast i8* %call7 to i64*
  store i64* %10, i64** %indices, align 8
  %11 = load i64*, i64** %indices, align 8
  %cmp8 = icmp eq i64* %11, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %call10 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.11:                                        ; preds = %if.end.6
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %r, align 8
  %cmp12 = icmp slt i64 %12, %13
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load i64*, i64** %indices, align 8
  %arrayidx = getelementptr i64, i64* %15, i64 %14
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 36
  %18 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %19 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call13 = call %struct._object* %18(%struct._typeobject* %19, i64 0)
  %20 = bitcast %struct._object* %call13 to %struct.cwrobject*
  store %struct.cwrobject* %20, %struct.cwrobject** %co, align 8
  %21 = load %struct.cwrobject*, %struct.cwrobject** %co, align 8
  %cmp14 = icmp eq %struct.cwrobject* %21, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end
  br label %error

if.end.16:                                        ; preds = %for.end
  %22 = load %struct._object*, %struct._object** %pool, align 8
  %23 = load %struct.cwrobject*, %struct.cwrobject** %co, align 8
  %pool17 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %23, i32 0, i32 1
  store %struct._object* %22, %struct._object** %pool17, align 8
  %24 = load i64*, i64** %indices, align 8
  %25 = load %struct.cwrobject*, %struct.cwrobject** %co, align 8
  %indices18 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %25, i32 0, i32 2
  store i64* %24, i64** %indices18, align 8
  %26 = load %struct.cwrobject*, %struct.cwrobject** %co, align 8
  %result = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %26, i32 0, i32 3
  store %struct._object* null, %struct._object** %result, align 8
  %27 = load i64, i64* %r, align 8
  %28 = load %struct.cwrobject*, %struct.cwrobject** %co, align 8
  %r19 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %28, i32 0, i32 4
  store i64 %27, i64* %r19, align 8
  %29 = load i64, i64* %n, align 8
  %tobool20 = icmp ne i64 %29, 0
  br i1 %tobool20, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.16
  %30 = load i64, i64* %r, align 8
  %tobool21 = icmp ne i64 %30, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.16
  %31 = phi i1 [ false, %if.end.16 ], [ %tobool21, %land.rhs ]
  %land.ext = zext i1 %31 to i32
  %32 = load %struct.cwrobject*, %struct.cwrobject** %co, align 8
  %stopped = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %32, i32 0, i32 5
  store i32 %land.ext, i32* %stopped, align 4
  %33 = load %struct.cwrobject*, %struct.cwrobject** %co, align 8
  %34 = bitcast %struct.cwrobject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.15, %if.then.9, %if.then.5, %if.then.2
  %35 = load i64*, i64** %indices, align 8
  %cmp22 = icmp ne i64* %35, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %error
  %36 = load i64*, i64** %indices, align 8
  %37 = bitcast i64* %36 to i8*
  call void @PyMem_Free(i8* %37)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %error
  br label %do.body

do.body:                                          ; preds = %if.end.24
  %38 = load %struct._object*, %struct._object** %pool, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp25 = icmp ne %struct._object* %39, null
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %do.body
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %42, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body.27
  br label %if.end.30

if.else:                                          ; preds = %do.body.27
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %45(%struct._object* %46)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.30
  br label %if.end.31

if.end.31:                                        ; preds = %do.end, %do.body
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.32, %land.end, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cwr_reduce(%struct.cwrobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.cwrobject*, align 8
  %indices = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %index = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.cwrobject* %lz, %struct.cwrobject** %lz.addr, align 8
  %0 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %3 = bitcast %struct.cwrobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %pool = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %pool, align 8
  %7 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %7, i32 0, i32 4
  %8 = load i64, i64* %r, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %stopped = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %9, i32 0, i32 5
  %10 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.1, label %if.else.5

if.then.1:                                        ; preds = %if.else
  %11 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %12 = bitcast %struct.cwrobject* %11 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %14 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r3 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %14, i32 0, i32 4
  %15 = load i64, i64* %r3, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct._typeobject* %13, i64 %15)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %16 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r6 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %16, i32 0, i32 4
  %17 = load i64, i64* %r6, align 8
  %call7 = call %struct._object* @PyTuple_New(i64 %17)
  store %struct._object* %call7, %struct._object** %indices, align 8
  %18 = load %struct._object*, %struct._object** %indices, align 8
  %tobool8 = icmp ne %struct._object* %18, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else.5
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load i64, i64* %i, align 8
  %20 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r10 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %20, i32 0, i32 4
  %21 = load i64, i64* %r10, align 8
  %cmp11 = icmp slt i64 %19, %21
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* %i, align 8
  %23 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %indices12 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %23, i32 0, i32 2
  %24 = load i64*, i64** %indices12, align 8
  %arrayidx = getelementptr i64, i64* %24, i64 %22
  %25 = load i64, i64* %arrayidx, align 8
  %call13 = call %struct._object* @PyLong_FromSsize_t(i64 %25)
  store %struct._object* %call13, %struct._object** %index, align 8
  %26 = load %struct._object*, %struct._object** %index, align 8
  %tobool14 = icmp ne %struct._object* %26, null
  br i1 %tobool14, label %if.end.21, label %if.then.15

if.then.15:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.15
  %27 = load %struct._object*, %struct._object** %indices, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.20

if.else.18:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.20
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %for.body
  %34 = load %struct._object*, %struct._object** %index, align 8
  %35 = load i64, i64* %i, align 8
  %36 = load %struct._object*, %struct._object** %indices, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1
  %arrayidx22 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %35
  store %struct._object* %34, %struct._object** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %38 = load i64, i64* %i, align 8
  %inc = add i64 %38, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %40 = bitcast %struct.cwrobject* %39 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %42 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %pool24 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %42, i32 0, i32 1
  %43 = load %struct._object*, %struct._object** %pool24, align 8
  %44 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r25 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %44, i32 0, i32 4
  %45 = load i64, i64* %r25, align 8
  %46 = load %struct._object*, %struct._object** %indices, align 8
  %call26 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._typeobject* %41, %struct._object* %43, i64 %45, %struct._object* %46)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.9, %if.then.1, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cwr_setstate(%struct.cwrobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.cwrobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %indexObject = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %element = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.cwrobject* %lz, %struct.cwrobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %state.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %4, i32 0, i32 1
  %5 = load i64, i64* %ob_size, align 8
  %6 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %6, i32 0, i32 4
  %7 = load i64, i64* %r, align 8
  %cmp1 = icmp ne i64 %5, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %pool = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %pool, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %11, i32 0, i32 1
  %12 = load i64, i64* %ob_size2, align 8
  store i64 %12, i64* %n, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r3 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %14, i32 0, i32 4
  %15 = load i64, i64* %r3, align 8
  %cmp4 = icmp slt i64 %13, %15
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %17 = load %struct._object*, %struct._object** %state.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %16
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %19, %struct._object** %indexObject, align 8
  %20 = load %struct._object*, %struct._object** %indexObject, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %20)
  store i64 %call, i64* %index, align 8
  %21 = load i64, i64* %index, align 8
  %cmp5 = icmp slt i64 %21, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %call6 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call6, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %for.body
  %22 = load i64, i64* %index, align 8
  %cmp9 = icmp slt i64 %22, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %index, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.8
  %23 = load i64, i64* %index, align 8
  %24 = load i64, i64* %n, align 8
  %sub = sub i64 %24, 1
  %cmp11 = icmp sgt i64 %23, %sub
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else
  %25 = load i64, i64* %n, align 8
  %sub13 = sub i64 %25, 1
  store i64 %sub13, i64* %index, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.10
  %26 = load i64, i64* %index, align 8
  %27 = load i64, i64* %i, align 8
  %28 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %indices = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %28, i32 0, i32 2
  %29 = load i64*, i64** %indices, align 8
  %arrayidx16 = getelementptr i64, i64* %29, i64 %27
  store i64 %26, i64* %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %30 = load i64, i64* %i, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r17 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %31, i32 0, i32 4
  %32 = load i64, i64* %r17, align 8
  %call18 = call %struct._object* @PyTuple_New(i64 %32)
  store %struct._object* %call18, %struct._object** %result, align 8
  %33 = load %struct._object*, %struct._object** %result, align 8
  %cmp19 = icmp eq %struct._object* %33, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.34, %if.end.21
  %34 = load i64, i64* %i, align 8
  %35 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %r23 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %35, i32 0, i32 4
  %36 = load i64, i64* %r23, align 8
  %cmp24 = icmp slt i64 %34, %36
  br i1 %cmp24, label %for.body.25, label %for.end.36

for.body.25:                                      ; preds = %for.cond.22
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %indices26 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %38, i32 0, i32 2
  %39 = load i64*, i64** %indices26, align 8
  %arrayidx27 = getelementptr i64, i64* %39, i64 %37
  %40 = load i64, i64* %arrayidx27, align 8
  %41 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %pool28 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %41, i32 0, i32 1
  %42 = load %struct._object*, %struct._object** %pool28, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyTupleObject*
  %ob_item29 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %43, i32 0, i32 1
  %arrayidx30 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item29, i32 0, i64 %40
  %44 = load %struct._object*, %struct._object** %arrayidx30, align 8
  store %struct._object* %44, %struct._object** %element, align 8
  %45 = load %struct._object*, %struct._object** %element, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt, align 8
  %inc31 = add i64 %46, 1
  store i64 %inc31, i64* %ob_refcnt, align 8
  %47 = load %struct._object*, %struct._object** %element, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load %struct._object*, %struct._object** %result, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyTupleObject*
  %ob_item32 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %50, i32 0, i32 1
  %arrayidx33 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item32, i32 0, i64 %48
  store %struct._object* %47, %struct._object** %arrayidx33, align 8
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.25
  %51 = load i64, i64* %i, align 8
  %inc35 = add i64 %51, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond.22

for.end.36:                                       ; preds = %for.cond.22
  br label %do.body

do.body:                                          ; preds = %for.end.36
  %52 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %result37 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %52, i32 0, i32 3
  %53 = load %struct._object*, %struct._object** %result37, align 8
  store %struct._object* %53, %struct._object** %_py_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp38 = icmp ne %struct._object* %54, null
  br i1 %cmp38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %do.body
  %55 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %result40 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %55, i32 0, i32 3
  store %struct._object* null, %struct._object** %result40, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %if.then.39
  %56 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt42, align 8
  %dec = add i64 %58, -1
  store i64 %dec, i64* %ob_refcnt42, align 8
  %cmp43 = icmp ne i64 %dec, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.47

if.else.45:                                       ; preds = %do.body.41
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %61(%struct._object* %62)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end

do.end:                                           ; preds = %if.end.47
  br label %if.end.48

if.end.48:                                        ; preds = %do.end, %do.body
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %63 = load %struct._object*, %struct._object** %result, align 8
  %64 = load %struct.cwrobject*, %struct.cwrobject** %lz.addr, align 8
  %result50 = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %64, i32 0, i32 3
  store %struct._object* %63, %struct._object** %result50, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc51 = add i64 %65, 1
  store i64 %inc51, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.49, %if.then.20, %if.then.7, %if.then
  %66 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %66
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cwr_sizeof(%struct.cwrobject* %co, i8* %unused) #0 {
entry:
  %co.addr = alloca %struct.cwrobject*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.cwrobject* %co, %struct.cwrobject** %co.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 56, i64* %res, align 8
  %0 = load %struct.cwrobject*, %struct.cwrobject** %co.addr, align 8
  %r = getelementptr inbounds %struct.cwrobject, %struct.cwrobject* %0, i32 0, i32 4
  %1 = load i64, i64* %r, align 8
  %mul = mul i64 %1, 8
  %2 = load i64, i64* %res, align 8
  %add = add i64 %2, %mul
  store i64 %add, i64* %res, align 8
  %3 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %3)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal void @cycle_dealloc(%struct.cycleobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.cycleobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.cycleobject* %lz, %struct.cycleobject** %lz.addr, align 8
  %0 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %1 = bitcast %struct.cycleobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %saved, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %23 = bitcast %struct.cycleobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %27 = bitcast %struct.cycleobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cycle_traverse(%struct.cycleobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.cycleobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.cycleobject* %lz, %struct.cycleobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  %8 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %saved, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved9 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %saved9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cycle_next(%struct.cycleobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.cycleobject*, align 8
  %item = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  store %struct.cycleobject* %lz, %struct.cycleobject** %lz.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %do.end.43
  %0 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it1, align 8
  %call = call %struct._object* @PyIter_Next(%struct._object* %1)
  store %struct._object* %call, %struct._object** %item, align 8
  %2 = load %struct._object*, %struct._object** %item, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %while.body
  %3 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %firstpass = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %3, i32 0, i32 3
  %4 = load i32, i32* %firstpass, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.8, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %saved, align 8
  %7 = load %struct._object*, %struct._object** %item, align 8
  %call2 = call i32 @PyList_Append(%struct._object* %6, %struct._object* %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %land.lhs.true
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %8 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.then
  %15 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %while.body
  %call10 = call %struct._object* @PyErr_Occurred()
  %tobool11 = icmp ne %struct._object* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.end.18

if.then.12:                                       ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call13 = call i32 @PyErr_ExceptionMatches(%struct._object* %16)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.then.12
  call void @PyErr_Clear()
  br label %if.end.17

if.else.16:                                       ; preds = %if.then.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.9
  %17 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved19 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %saved19, align 8
  %call20 = call i64 @PyList_Size(%struct._object* %18)
  %cmp21 = icmp eq i64 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %19 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved24 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %19, i32 0, i32 2
  %20 = load %struct._object*, %struct._object** %saved24, align 8
  %call25 = call %struct._object* @PyObject_GetIter(%struct._object* %20)
  store %struct._object* %call25, %struct._object** %it, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %cmp26 = icmp eq %struct._object* %21, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.23
  %22 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %it29 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %it29, align 8
  store %struct._object* %23, %struct._object** %tmp, align 8
  %24 = load %struct._object*, %struct._object** %it, align 8
  %25 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %it30 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %25, i32 0, i32 1
  store %struct._object* %24, %struct._object** %it30, align 8
  %26 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %firstpass31 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %26, i32 0, i32 3
  store i32 1, i32* %firstpass31, align 4
  br label %do.body.32

do.body.32:                                       ; preds = %if.end.28
  %27 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp34, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %29, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.32
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.32
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %32(%struct._object* %33)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %while.body

return:                                           ; preds = %if.then.27, %if.then.22, %if.else.16, %if.end.8, %do.end
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cycle_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %saved = alloca %struct._object*, align 8
  %lz = alloca %struct.cycleobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @cycle_type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i64 1, i64 1, %struct._object** %iterable)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %iterable, align 8
  %call5 = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call5, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call9, %struct._object** %saved, align 8
  %5 = load %struct._object*, %struct._object** %saved, align 8
  %cmp10 = icmp eq %struct._object* %5, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %6 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %13 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 36
  %14 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %15 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call16 = call %struct._object* %14(%struct._typeobject* %15, i64 0)
  %16 = bitcast %struct._object* %call16 to %struct.cycleobject*
  store %struct.cycleobject* %16, %struct.cycleobject** %lz, align 8
  %17 = load %struct.cycleobject*, %struct.cycleobject** %lz, align 8
  %cmp17 = icmp eq %struct.cycleobject* %17, null
  br i1 %cmp17, label %if.then.18, label %if.end.41

if.then.18:                                       ; preds = %if.end.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %18 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp20, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %20, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %23(%struct._object* %24)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %do.body.30

do.body.30:                                       ; preds = %do.end.29
  %25 = load %struct._object*, %struct._object** %saved, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp31, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %27, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %30(%struct._object* %31)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.15
  %32 = load %struct._object*, %struct._object** %it, align 8
  %33 = load %struct.cycleobject*, %struct.cycleobject** %lz, align 8
  %it42 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %33, i32 0, i32 1
  store %struct._object* %32, %struct._object** %it42, align 8
  %34 = load %struct._object*, %struct._object** %saved, align 8
  %35 = load %struct.cycleobject*, %struct.cycleobject** %lz, align 8
  %saved43 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %35, i32 0, i32 2
  store %struct._object* %34, %struct._object** %saved43, align 8
  %36 = load %struct.cycleobject*, %struct.cycleobject** %lz, align 8
  %firstpass = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %36, i32 0, i32 3
  store i32 0, i32* %firstpass, align 4
  %37 = load %struct.cycleobject*, %struct.cycleobject** %lz, align 8
  %38 = bitcast %struct.cycleobject* %37 to %struct._object*
  store %struct._object* %38, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.41, %do.end.40, %do.end, %if.then.7, %if.then.3, %if.then
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #2

declare i32 @PyErr_ExceptionMatches(%struct._object*) #2

declare void @PyErr_Clear() #2

declare i64 @PyList_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @cycle_reduce(%struct.cycleobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.cycleobject*, align 8
  store %struct.cycleobject* %lz, %struct.cycleobject** %lz.addr, align 8
  %0 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %1 = bitcast %struct.cycleobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %it, align 8
  %5 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %saved, align 8
  %7 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %firstpass = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %7, i32 0, i32 3
  %8 = load i32, i32* %firstpass, align 4
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, i32 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @cycle_setstate(%struct.cycleobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.cycleobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %saved = alloca %struct._object*, align 8
  %firstpass = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.cycleobject* %lz, %struct.cycleobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  store %struct._object* null, %struct._object** %saved, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._object** %saved, i32* %firstpass)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved1 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %saved1, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %4 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved3 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %4, i32 0, i32 2
  store %struct._object* null, %struct._object** %saved3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %saved, align 8
  %13 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved10 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %13, i32 0, i32 2
  store %struct._object* %12, %struct._object** %saved10, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %do.end.9
  %14 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %saved12 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %saved12, align 8
  store %struct._object* %15, %struct._object** %_py_xincref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp13 = icmp ne %struct._object* %16, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %do.body.11
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt15, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %do.body.11
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %19 = load i32, i32* %firstpass, align 4
  %cmp18 = icmp ne i32 %19, 0
  %conv = zext i1 %cmp18 to i32
  %20 = load %struct.cycleobject*, %struct.cycleobject** %lz.addr, align 8
  %firstpass19 = getelementptr inbounds %struct.cycleobject, %struct.cycleobject* %20, i32 0, i32 3
  store i32 %conv, i32* %firstpass19, align 4
  %21 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc20 = add i64 %21, 1
  store i64 %inc20, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.17, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #2

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare %struct._object* @PyList_New(i64) #2

; Function Attrs: nounwind uwtable
define internal void @dropwhile_dealloc(%struct.dropwhileobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.dropwhileobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.dropwhileobject* %lz, %struct.dropwhileobject** %lz.addr, align 8
  %0 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %1 = bitcast %struct.dropwhileobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %23 = bitcast %struct.dropwhileobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %27 = bitcast %struct.dropwhileobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @dropwhile_traverse(%struct.dropwhileobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.dropwhileobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.dropwhileobject* %lz, %struct.dropwhileobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  %8 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %func9 = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %func9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dropwhile_next(%struct.dropwhileobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.dropwhileobject*, align 8
  %item = alloca %struct._object*, align 8
  %good = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %ok = alloca i64, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store %struct.dropwhileobject* %lz, %struct.dropwhileobject** %lz.addr, align 8
  %0 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it1, align 8
  store %struct._object* %1, %struct._object** %it, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 26
  %4 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %4, %struct._object* (%struct._object*)** %iternext, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.46, %entry
  %5 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %5(%struct._object* %6)
  store %struct._object* %call, %struct._object** %item, align 8
  %7 = load %struct._object*, %struct._object** %item, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %8 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %start = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %8, i32 0, i32 3
  %9 = load i64, i64* %start, align 8
  %cmp2 = icmp eq i64 %9, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %func, align 8
  %13 = load %struct._object*, %struct._object** %item, align 8
  %call5 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %12, %struct._object* %13, i8* null)
  store %struct._object* %call5, %struct._object** %good, align 8
  %14 = load %struct._object*, %struct._object** %good, align 8
  %cmp6 = icmp eq %struct._object* %14, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.4
  %22 = load %struct._object*, %struct._object** %good, align 8
  %call13 = call i32 @PyObject_IsTrue(%struct._object* %22)
  %conv = sext i32 %call13 to i64
  store i64 %conv, i64* %ok, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.12
  %23 = load %struct._object*, %struct._object** %good, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp15, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %25, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.14
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.14
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %28(%struct._object* %29)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %30 = load i64, i64* %ok, align 8
  %cmp26 = icmp eq i64 %30, 0
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %do.end.25
  %31 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %start29 = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %31, i32 0, i32 3
  store i64 1, i64* %start29, align 8
  %32 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %do.end.25
  br label %do.body.31

do.body.31:                                       ; preds = %if.end.30
  %33 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp32, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %35, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.31
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.31
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %38(%struct._object* %39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %40 = load i64, i64* %ok, align 8
  %cmp43 = icmp slt i64 %40, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %do.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.46:                                        ; preds = %do.end.42
  br label %for.cond

return:                                           ; preds = %if.then.45, %if.then.28, %do.end, %if.then.3, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dropwhile_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %lz = alloca %struct.dropwhileobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @dropwhile_type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i64 2, i64 2, %struct._object** %func, %struct._object** %seq)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %call5 = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call5, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 36
  %6 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call9 = call %struct._object* %6(%struct._typeobject* %7, i64 0)
  %8 = bitcast %struct._object* %call9 to %struct.dropwhileobject*
  store %struct.dropwhileobject* %8, %struct.dropwhileobject** %lz, align 8
  %9 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz, align 8
  %cmp10 = icmp eq %struct.dropwhileobject* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %10 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %19 = load %struct._object*, %struct._object** %func, align 8
  %20 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz, align 8
  %func17 = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %func17, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %22 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz, align 8
  %it18 = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %22, i32 0, i32 2
  store %struct._object* %21, %struct._object** %it18, align 8
  %23 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz, align 8
  %start = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %23, i32 0, i32 3
  store i64 0, i64* %start, align 8
  %24 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz, align 8
  %25 = bitcast %struct.dropwhileobject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %do.end, %if.then.7, %if.then.3, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

declare i32 @PyObject_IsTrue(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @dropwhile_reduce(%struct.dropwhileobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.dropwhileobject*, align 8
  store %struct.dropwhileobject* %lz, %struct.dropwhileobject** %lz.addr, align 8
  %0 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %1 = bitcast %struct.dropwhileobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func, align 8
  %5 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %it, align 8
  %7 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %start = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %7, i32 0, i32 3
  %8 = load i64, i64* %start, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @dropwhile_setstate(%struct.dropwhileobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.dropwhileobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %start = alloca i32, align 4
  store %struct.dropwhileobject* %lz, %struct.dropwhileobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %0)
  store i32 %call, i32* %start, align 4
  %1 = load i32, i32* %start, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %start, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct.dropwhileobject*, %struct.dropwhileobject** %lz.addr, align 8
  %start1 = getelementptr inbounds %struct.dropwhileobject, %struct.dropwhileobject* %3, i32 0, i32 3
  store i64 %conv, i64* %start1, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal void @takewhile_dealloc(%struct.takewhileobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.takewhileobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.takewhileobject* %lz, %struct.takewhileobject** %lz.addr, align 8
  %0 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %1 = bitcast %struct.takewhileobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %23 = bitcast %struct.takewhileobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %27 = bitcast %struct.takewhileobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @takewhile_traverse(%struct.takewhileobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.takewhileobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.takewhileobject* %lz, %struct.takewhileobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  %8 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %func9 = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %func9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @takewhile_next(%struct.takewhileobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.takewhileobject*, align 8
  %item = alloca %struct._object*, align 8
  %good = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %ok = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.takewhileobject* %lz, %struct.takewhileobject** %lz.addr, align 8
  %0 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it1, align 8
  store %struct._object* %1, %struct._object** %it, align 8
  %2 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %stop = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %2, i32 0, i32 3
  %3 = load i64, i64* %stop, align 8
  %cmp = icmp eq i64 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 26
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  %7 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %6(%struct._object* %7)
  store %struct._object* %call, %struct._object** %item, align 8
  %8 = load %struct._object*, %struct._object** %item, align 8
  %cmp2 = icmp eq %struct._object* %8, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %func, align 8
  %11 = load %struct._object*, %struct._object** %item, align 8
  %call5 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %10, %struct._object* %11, i8* null)
  store %struct._object* %call5, %struct._object** %good, align 8
  %12 = load %struct._object*, %struct._object** %good, align 8
  %cmp6 = icmp eq %struct._object* %12, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %13 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.4
  %20 = load %struct._object*, %struct._object** %good, align 8
  %call13 = call i32 @PyObject_IsTrue(%struct._object* %20)
  %conv = sext i32 %call13 to i64
  store i64 %conv, i64* %ok, align 8
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.12
  %21 = load %struct._object*, %struct._object** %good, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp15, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %23, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.14
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.14
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %26(%struct._object* %27)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %28 = load i64, i64* %ok, align 8
  %cmp26 = icmp eq i64 %28, 1
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %do.end.25
  %29 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %do.end.25
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %30 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp31, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %32, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.30
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.30
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %35(%struct._object* %36)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  %37 = load i64, i64* %ok, align 8
  %cmp42 = icmp eq i64 %37, 0
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %do.end.41
  %38 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %stop45 = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %38, i32 0, i32 3
  store i64 1, i64* %stop45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %do.end.41
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.28, %do.end, %if.then.3, %if.then
  %39 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %39
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @takewhile_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %lz = alloca %struct.takewhileobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @takewhile_type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i64 2, i64 2, %struct._object** %func, %struct._object** %seq)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %call5 = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call5, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 36
  %6 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call9 = call %struct._object* %6(%struct._typeobject* %7, i64 0)
  %8 = bitcast %struct._object* %call9 to %struct.takewhileobject*
  store %struct.takewhileobject* %8, %struct.takewhileobject** %lz, align 8
  %9 = load %struct.takewhileobject*, %struct.takewhileobject** %lz, align 8
  %cmp10 = icmp eq %struct.takewhileobject* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %10 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %19 = load %struct._object*, %struct._object** %func, align 8
  %20 = load %struct.takewhileobject*, %struct.takewhileobject** %lz, align 8
  %func17 = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %func17, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %22 = load %struct.takewhileobject*, %struct.takewhileobject** %lz, align 8
  %it18 = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %22, i32 0, i32 2
  store %struct._object* %21, %struct._object** %it18, align 8
  %23 = load %struct.takewhileobject*, %struct.takewhileobject** %lz, align 8
  %stop = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %23, i32 0, i32 3
  store i64 0, i64* %stop, align 8
  %24 = load %struct.takewhileobject*, %struct.takewhileobject** %lz, align 8
  %25 = bitcast %struct.takewhileobject* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %do.end, %if.then.7, %if.then.3, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @takewhile_reduce(%struct.takewhileobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.takewhileobject*, align 8
  store %struct.takewhileobject* %lz, %struct.takewhileobject** %lz.addr, align 8
  %0 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %1 = bitcast %struct.takewhileobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func, align 8
  %5 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %it, align 8
  %7 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %stop = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %7, i32 0, i32 3
  %8 = load i64, i64* %stop, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6, i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @takewhile_reduce_setstate(%struct.takewhileobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.takewhileobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %stop = alloca i32, align 4
  store %struct.takewhileobject* %lz, %struct.takewhileobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %0)
  store i32 %call, i32* %stop, align 4
  %1 = load i32, i32* %stop, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %stop, align 4
  %conv = sext i32 %2 to i64
  %3 = load %struct.takewhileobject*, %struct.takewhileobject** %lz.addr, align 8
  %stop1 = getelementptr inbounds %struct.takewhileobject, %struct.takewhileobject* %3, i32 0, i32 3
  store i64 %conv, i64* %stop1, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal void @islice_dealloc(%struct.isliceobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.isliceobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.isliceobject* %lz, %struct.isliceobject** %lz.addr, align 8
  %0 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %1 = bitcast %struct.isliceobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %12 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %13 = bitcast %struct.isliceobject* %12 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %16 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %17 = bitcast %struct.isliceobject* %16 to i8*
  call void %15(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @islice_traverse(%struct.isliceobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.isliceobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.isliceobject* %lz, %struct.isliceobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @islice_next(%struct.isliceobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.isliceobject*, align 8
  %item = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %stop = alloca i64, align 8
  %oldnext = alloca i64, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  store %struct.isliceobject* %lz, %struct.isliceobject** %lz.addr, align 8
  %0 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it1, align 8
  store %struct._object* %1, %struct._object** %it, align 8
  %2 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %stop2 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %2, i32 0, i32 3
  %3 = load i64, i64* %stop2, align 8
  store i64 %3, i64* %stop, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 26
  %7 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %7, %struct._object* (%struct._object*)** %iternext, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %8 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %cnt = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %8, i32 0, i32 5
  %9 = load i64, i64* %cnt, align 8
  %10 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %next = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %10, i32 0, i32 2
  %11 = load i64, i64* %next, align 8
  %cmp3 = icmp slt i64 %9, %11
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %13 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %12(%struct._object* %13)
  store %struct._object* %call, %struct._object** %item, align 8
  %14 = load %struct._object*, %struct._object** %item, align 8
  %cmp4 = icmp eq %struct._object* %14, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %while.body
  br label %empty

if.end.6:                                         ; preds = %while.body
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %22 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %cnt11 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %22, i32 0, i32 5
  %23 = load i64, i64* %cnt11, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %cnt11, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i64, i64* %stop, align 8
  %cmp12 = icmp ne i64 %24, -1
  br i1 %cmp12, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %while.end
  %25 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %cnt13 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %25, i32 0, i32 5
  %26 = load i64, i64* %cnt13, align 8
  %27 = load i64, i64* %stop, align 8
  %cmp14 = icmp sge i64 %26, %27
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  br label %empty

if.end.16:                                        ; preds = %land.lhs.true, %while.end
  %28 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %29 = load %struct._object*, %struct._object** %it, align 8
  %call17 = call %struct._object* %28(%struct._object* %29)
  store %struct._object* %call17, %struct._object** %item, align 8
  %30 = load %struct._object*, %struct._object** %item, align 8
  %cmp18 = icmp eq %struct._object* %30, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  br label %empty

if.end.20:                                        ; preds = %if.end.16
  %31 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %cnt21 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %31, i32 0, i32 5
  %32 = load i64, i64* %cnt21, align 8
  %inc22 = add i64 %32, 1
  store i64 %inc22, i64* %cnt21, align 8
  %33 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %next23 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %33, i32 0, i32 2
  %34 = load i64, i64* %next23, align 8
  store i64 %34, i64* %oldnext, align 8
  %35 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %step = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %35, i32 0, i32 4
  %36 = load i64, i64* %step, align 8
  %37 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %next24 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %37, i32 0, i32 2
  %38 = load i64, i64* %next24, align 8
  %add = add i64 %38, %36
  store i64 %add, i64* %next24, align 8
  %39 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %next25 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %39, i32 0, i32 2
  %40 = load i64, i64* %next25, align 8
  %41 = load i64, i64* %oldnext, align 8
  %cmp26 = icmp slt i64 %40, %41
  br i1 %cmp26, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.20
  %42 = load i64, i64* %stop, align 8
  %cmp27 = icmp ne i64 %42, -1
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.33

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %43 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %next29 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %43, i32 0, i32 2
  %44 = load i64, i64* %next29, align 8
  %45 = load i64, i64* %stop, align 8
  %cmp30 = icmp sgt i64 %44, %45
  br i1 %cmp30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %land.lhs.true.28, %if.end.20
  %46 = load i64, i64* %stop, align 8
  %47 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %next32 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %47, i32 0, i32 2
  store i64 %46, i64* %next32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %land.lhs.true.28, %lor.lhs.false
  %48 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %48, %struct._object** %retval
  br label %return

empty:                                            ; preds = %if.then.19, %if.then.15, %if.then.5
  br label %do.body.34

do.body.34:                                       ; preds = %empty
  %49 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it35 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %49, i32 0, i32 1
  %50 = load %struct._object*, %struct._object** %it35, align 8
  store %struct._object* %50, %struct._object** %_py_tmp, align 8
  %51 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp36 = icmp ne %struct._object* %51, null
  br i1 %cmp36, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %do.body.34
  %52 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it38 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %52, i32 0, i32 1
  store %struct._object* null, %struct._object** %it38, align 8
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.37
  %53 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp40, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %55, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %58(%struct._object* %59)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %do.body.34
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.51, %if.end.33, %if.then
  %60 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %60
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @islice_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %start = alloca i64, align 8
  %stop = alloca i64, align 8
  %step = alloca i64, align 8
  %it = alloca %struct._object*, align 8
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %a3 = alloca %struct._object*, align 8
  %numargs = alloca i64, align 8
  %lz = alloca %struct.isliceobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 0, i64* %start, align 8
  store i64 -1, i64* %stop, align 8
  store i64 1, i64* %step, align 8
  store %struct._object* null, %struct._object** %a1, align 8
  store %struct._object* null, %struct._object** %a2, align 8
  store %struct._object* null, %struct._object** %a3, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @islice_type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i64 2, i64 4, %struct._object** %seq, %struct._object** %a1, %struct._object** %a2, %struct._object** %a3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %call5 = call i64 @PyTuple_Size(%struct._object* %3)
  store i64 %call5, i64* %numargs, align 8
  %4 = load i64, i64* %numargs, align 8
  %cmp6 = icmp eq i64 %4, 2
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %5 = load %struct._object*, %struct._object** %a1, align 8
  %cmp8 = icmp ne %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.then.7
  %6 = load %struct._object*, %struct._object** %a1, align 8
  %call10 = call i64 @PyLong_AsSsize_t(%struct._object* %6)
  store i64 %call10, i64* %stop, align 8
  %7 = load i64, i64* %stop, align 8
  %cmp11 = icmp eq i64 %7, -1
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.then.9
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool14 = icmp ne %struct._object* %call13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.12
  call void @PyErr_Clear()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.12
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.35, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.7
  br label %if.end.40

if.else:                                          ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %a1, align 8
  %cmp19 = icmp ne %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %a1, align 8
  %call21 = call i64 @PyLong_AsSsize_t(%struct._object* %10)
  store i64 %call21, i64* %start, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.else
  %11 = load i64, i64* %start, align 8
  %cmp23 = icmp eq i64 %11, -1
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.28

land.lhs.true.24:                                 ; preds = %if.end.22
  %call25 = call %struct._object* @PyErr_Occurred()
  %tobool26 = icmp ne %struct._object* %call25, null
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true.24
  call void @PyErr_Clear()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %land.lhs.true.24, %if.end.22
  %12 = load %struct._object*, %struct._object** %a2, align 8
  %cmp29 = icmp ne %struct._object* %12, @_Py_NoneStruct
  br i1 %cmp29, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %if.end.28
  %13 = load %struct._object*, %struct._object** %a2, align 8
  %call31 = call i64 @PyLong_AsSsize_t(%struct._object* %13)
  store i64 %call31, i64* %stop, align 8
  %14 = load i64, i64* %stop, align 8
  %cmp32 = icmp eq i64 %14, -1
  br i1 %cmp32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.then.30
  %call34 = call %struct._object* @PyErr_Occurred()
  %tobool35 = icmp ne %struct._object* %call34, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.33
  call void @PyErr_Clear()
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.33
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.35, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.30
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.28
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.18
  %16 = load i64, i64* %start, align 8
  %cmp41 = icmp slt i64 %16, 0
  br i1 %cmp41, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %17 = load i64, i64* %stop, align 8
  %cmp42 = icmp slt i64 %17, -1
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false, %if.end.40
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false
  %19 = load %struct._object*, %struct._object** %a3, align 8
  %cmp45 = icmp ne %struct._object* %19, null
  br i1 %cmp45, label %if.then.46, label %if.end.57

if.then.46:                                       ; preds = %if.end.44
  %20 = load %struct._object*, %struct._object** %a3, align 8
  %cmp47 = icmp ne %struct._object* %20, @_Py_NoneStruct
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.then.46
  %21 = load %struct._object*, %struct._object** %a3, align 8
  %call49 = call i64 @PyLong_AsSsize_t(%struct._object* %21)
  store i64 %call49, i64* %step, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.46
  %22 = load i64, i64* %step, align 8
  %cmp51 = icmp eq i64 %22, -1
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.56

land.lhs.true.52:                                 ; preds = %if.end.50
  %call53 = call %struct._object* @PyErr_Occurred()
  %tobool54 = icmp ne %struct._object* %call53, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.52
  call void @PyErr_Clear()
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.52, %if.end.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.44
  %23 = load i64, i64* %step, align 8
  %cmp58 = icmp slt i64 %23, 1
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %24 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.60:                                        ; preds = %if.end.57
  %25 = load %struct._object*, %struct._object** %seq, align 8
  %call61 = call %struct._object* @PyObject_GetIter(%struct._object* %25)
  store %struct._object* %call61, %struct._object** %it, align 8
  %26 = load %struct._object*, %struct._object** %it, align 8
  %cmp62 = icmp eq %struct._object* %26, null
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.64:                                        ; preds = %if.end.60
  %27 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 36
  %28 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %29 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call65 = call %struct._object* %28(%struct._typeobject* %29, i64 0)
  %30 = bitcast %struct._object* %call65 to %struct.isliceobject*
  store %struct.isliceobject* %30, %struct.isliceobject** %lz, align 8
  %31 = load %struct.isliceobject*, %struct.isliceobject** %lz, align 8
  %cmp66 = icmp eq %struct.isliceobject* %31, null
  br i1 %cmp66, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %if.end.64
  br label %do.body

do.body:                                          ; preds = %if.then.67
  %32 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %34, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp68 = icmp ne i64 %dec, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body
  br label %if.end.71

if.else.70:                                       ; preds = %do.body
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %37(%struct._object* %38)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end

do.end:                                           ; preds = %if.end.71
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.72:                                        ; preds = %if.end.64
  %39 = load %struct._object*, %struct._object** %it, align 8
  %40 = load %struct.isliceobject*, %struct.isliceobject** %lz, align 8
  %it73 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %40, i32 0, i32 1
  store %struct._object* %39, %struct._object** %it73, align 8
  %41 = load i64, i64* %start, align 8
  %42 = load %struct.isliceobject*, %struct.isliceobject** %lz, align 8
  %next = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %42, i32 0, i32 2
  store i64 %41, i64* %next, align 8
  %43 = load i64, i64* %stop, align 8
  %44 = load %struct.isliceobject*, %struct.isliceobject** %lz, align 8
  %stop74 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %44, i32 0, i32 3
  store i64 %43, i64* %stop74, align 8
  %45 = load i64, i64* %step, align 8
  %46 = load %struct.isliceobject*, %struct.isliceobject** %lz, align 8
  %step75 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %46, i32 0, i32 4
  store i64 %45, i64* %step75, align 8
  %47 = load %struct.isliceobject*, %struct.isliceobject** %lz, align 8
  %cnt = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %47, i32 0, i32 5
  store i64 0, i64* %cnt, align 8
  %48 = load %struct.isliceobject*, %struct.isliceobject** %lz, align 8
  %49 = bitcast %struct.isliceobject* %48 to %struct._object*
  store %struct._object* %49, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.72, %do.end, %if.then.63, %if.then.59, %if.then.43, %if.end.37, %if.end.16, %if.then.3, %if.then
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @islice_reduce(%struct.isliceobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.isliceobject*, align 8
  %stop = alloca %struct._object*, align 8
  %empty_list = alloca %struct._object*, align 8
  %empty_it = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.isliceobject* %lz, %struct.isliceobject** %lz.addr, align 8
  %0 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %empty_list, align 8
  %2 = load %struct._object*, %struct._object** %empty_list, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %empty_list, align 8
  %call3 = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call3, %struct._object** %empty_it, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %empty_list, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %empty_it, align 8
  %cmp7 = icmp eq %struct._object* %11, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %do.end
  %12 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %13 = bitcast %struct.isliceobject* %12 to %struct._object*
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %15 = load %struct._object*, %struct._object** %empty_it, align 8
  %call11 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), %struct._typeobject* %14, %struct._object* %15, i32 0, i32 0)
  store %struct._object* %call11, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %entry
  %16 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %stop13 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %16, i32 0, i32 3
  %17 = load i64, i64* %stop13, align 8
  %cmp14 = icmp eq i64 %17, -1
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* @_Py_NoneStruct, %struct._object** %stop, align 8
  %18 = load %struct._object*, %struct._object** %stop, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  br label %if.end.23

if.else.17:                                       ; preds = %if.end.12
  %20 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %stop18 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %20, i32 0, i32 3
  %21 = load i64, i64* %stop18, align 8
  %call19 = call %struct._object* @PyLong_FromSsize_t(i64 %21)
  store %struct._object* %call19, %struct._object** %stop, align 8
  %22 = load %struct._object*, %struct._object** %stop, align 8
  %cmp20 = icmp eq %struct._object* %22, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.else.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then.15
  %23 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %24 = bitcast %struct.isliceobject* %23 to %struct._object*
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %26 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %it25 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %26, i32 0, i32 1
  %27 = load %struct._object*, %struct._object** %it25, align 8
  %28 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %next = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %28, i32 0, i32 2
  %29 = load i64, i64* %next, align 8
  %30 = load %struct._object*, %struct._object** %stop, align 8
  %31 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %step = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %31, i32 0, i32 4
  %32 = load i64, i64* %step, align 8
  %33 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %cnt = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %33, i32 0, i32 5
  %34 = load i64, i64* %cnt, align 8
  %call26 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), %struct._typeobject* %25, %struct._object* %27, i64 %29, %struct._object* %30, i64 %32, i64 %34)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.21, %if.end.9, %if.then.8, %if.then.2
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @islice_setstate(%struct.isliceobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.isliceobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %cnt = alloca i64, align 8
  store %struct.isliceobject* %lz, %struct.isliceobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %0)
  store i64 %call, i64* %cnt, align 8
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i64, i64* %cnt, align 8
  %3 = load %struct.isliceobject*, %struct.isliceobject** %lz.addr, align 8
  %cnt2 = getelementptr inbounds %struct.isliceobject, %struct.isliceobject* %3, i32 0, i32 5
  store i64 %2, i64* %cnt2, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

declare i64 @PyTuple_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal void @starmap_dealloc(%struct.starmapobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.starmapobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.starmapobject* %lz, %struct.starmapobject** %lz.addr, align 8
  %0 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %1 = bitcast %struct.starmapobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %23 = bitcast %struct.starmapobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %27 = bitcast %struct.starmapobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @starmap_traverse(%struct.starmapobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.starmapobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.starmapobject* %lz, %struct.starmapobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  %8 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %func9 = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %func9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @starmap_next(%struct.starmapobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.starmapobject*, align 8
  %args = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %newargs = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct.starmapobject* %lz, %struct.starmapobject** %lz.addr, align 8
  %0 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it1, align 8
  store %struct._object* %1, %struct._object** %it, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 26
  %4 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  %5 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %4(%struct._object* %5)
  store %struct._object* %call, %struct._object** %args, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %cmp3 = icmp eq %struct._typeobject* %8, @PyTuple_Type
  br i1 %cmp3, label %if.end.13, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %args, align 8
  %call5 = call %struct._object* @PySequence_Tuple(%struct._object* %9)
  store %struct._object* %call5, %struct._object** %newargs, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %10 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %17 = load %struct._object*, %struct._object** %newargs, align 8
  %cmp10 = icmp eq %struct._object* %17, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %do.end
  %18 = load %struct._object*, %struct._object** %newargs, align 8
  store %struct._object* %18, %struct._object** %args, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %19 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %func, align 8
  %21 = load %struct._object*, %struct._object** %args, align 8
  %call14 = call %struct._object* @PyObject_Call(%struct._object* %20, %struct._object* %21, %struct._object* null)
  store %struct._object* %call14, %struct._object** %result, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.13
  %22 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp16, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %24, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %27(%struct._object* %28)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %29 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.25, %if.then.11, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @starmap_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %lz = alloca %struct.starmapobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @starmap_type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i64 2, i64 2, %struct._object** %func, %struct._object** %seq)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %call5 = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call5, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 36
  %6 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call9 = call %struct._object* %6(%struct._typeobject* %7, i64 0)
  %8 = bitcast %struct._object* %call9 to %struct.starmapobject*
  store %struct.starmapobject* %8, %struct.starmapobject** %lz, align 8
  %9 = load %struct.starmapobject*, %struct.starmapobject** %lz, align 8
  %cmp10 = icmp eq %struct.starmapobject* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %10 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %19 = load %struct._object*, %struct._object** %func, align 8
  %20 = load %struct.starmapobject*, %struct.starmapobject** %lz, align 8
  %func17 = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %func17, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %22 = load %struct.starmapobject*, %struct.starmapobject** %lz, align 8
  %it18 = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %22, i32 0, i32 2
  store %struct._object* %21, %struct._object** %it18, align 8
  %23 = load %struct.starmapobject*, %struct.starmapobject** %lz, align 8
  %24 = bitcast %struct.starmapobject* %23 to %struct._object*
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %do.end, %if.then.7, %if.then.3, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @starmap_reduce(%struct.starmapobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.starmapobject*, align 8
  store %struct.starmapobject* %lz, %struct.starmapobject** %lz.addr, align 8
  %0 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %1 = bitcast %struct.starmapobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func, align 8
  %5 = load %struct.starmapobject*, %struct.starmapobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.starmapobject, %struct.starmapobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal void @chain_dealloc(%struct.chainobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.chainobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.chainobject* %lz, %struct.chainobject** %lz.addr, align 8
  %0 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %1 = bitcast %struct.chainobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active = getelementptr inbounds %struct.chainobject, %struct.chainobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %active, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source = getelementptr inbounds %struct.chainobject, %struct.chainobject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %source, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %23 = bitcast %struct.chainobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %27 = bitcast %struct.chainobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @chain_traverse(%struct.chainobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.chainobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.chainobject* %lz, %struct.chainobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source = getelementptr inbounds %struct.chainobject, %struct.chainobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %source, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source1 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %source1, align 8
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
  %8 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active = getelementptr inbounds %struct.chainobject, %struct.chainobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %active, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active9 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %active9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @chain_next(%struct.chainobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.chainobject*, align 8
  %item = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_tmp68 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  store %struct.chainobject* %lz, %struct.chainobject** %lz.addr, align 8
  %0 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source = getelementptr inbounds %struct.chainobject, %struct.chainobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %source, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active = getelementptr inbounds %struct.chainobject, %struct.chainobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %active, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.53

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source3 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %source3, align 8
  %call = call %struct._object* @PyIter_Next(%struct._object* %5)
  store %struct._object* %call, %struct._object** %iterable, align 8
  %6 = load %struct._object*, %struct._object** %iterable, align 8
  %cmp4 = icmp eq %struct._object* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.16

if.then.5:                                        ; preds = %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.then.5
  %7 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source6 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %source6, align 8
  store %struct._object* %8, %struct._object** %_py_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp7 = icmp ne %struct._object* %9, null
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.body
  %10 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source9 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %10, i32 0, i32 1
  store %struct._object* null, %struct._object** %source9, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.8
  %11 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.2
  %18 = load %struct._object*, %struct._object** %iterable, align 8
  %call17 = call %struct._object* @PyObject_GetIter(%struct._object* %18)
  %19 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active18 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %19, i32 0, i32 2
  store %struct._object* %call17, %struct._object** %active18, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.16
  %20 = load %struct._object*, %struct._object** %iterable, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %22, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %25(%struct._object* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %27 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active30 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %27, i32 0, i32 2
  %28 = load %struct._object*, %struct._object** %active30, align 8
  %cmp31 = icmp eq %struct._object* %28, null
  br i1 %cmp31, label %if.then.32, label %if.end.52

if.then.32:                                       ; preds = %do.end.29
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %29 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source35 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %29, i32 0, i32 1
  %30 = load %struct._object*, %struct._object** %source35, align 8
  store %struct._object* %30, %struct._object** %_py_tmp34, align 8
  %31 = load %struct._object*, %struct._object** %_py_tmp34, align 8
  %cmp36 = icmp ne %struct._object* %31, null
  br i1 %cmp36, label %if.then.37, label %if.end.50

if.then.37:                                       ; preds = %do.body.33
  %32 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source38 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %32, i32 0, i32 1
  store %struct._object* null, %struct._object** %source38, align 8
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.37
  %33 = load %struct._object*, %struct._object** %_py_tmp34, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp40, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %35, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %38(%struct._object* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %do.body.33
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.52:                                        ; preds = %do.end.29
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end
  %40 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active54 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %40, i32 0, i32 2
  %41 = load %struct._object*, %struct._object** %active54, align 8
  %call55 = call %struct._object* @PyIter_Next(%struct._object* %41)
  store %struct._object* %call55, %struct._object** %item, align 8
  %42 = load %struct._object*, %struct._object** %item, align 8
  %cmp56 = icmp ne %struct._object* %42, null
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.53
  %43 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

if.end.58:                                        ; preds = %if.end.53
  %call59 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call59, null
  br i1 %tobool, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %if.end.58
  %44 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call61 = call i32 @PyErr_ExceptionMatches(%struct._object* %44)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.then.60
  call void @PyErr_Clear()
  br label %if.end.65

if.else.64:                                       ; preds = %if.then.60
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.63
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.58
  br label %do.body.67

do.body.67:                                       ; preds = %if.end.66
  %45 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active69 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %45, i32 0, i32 2
  %46 = load %struct._object*, %struct._object** %active69, align 8
  store %struct._object* %46, %struct._object** %_py_tmp68, align 8
  %47 = load %struct._object*, %struct._object** %_py_tmp68, align 8
  %cmp70 = icmp ne %struct._object* %47, null
  br i1 %cmp70, label %if.then.71, label %if.end.84

if.then.71:                                       ; preds = %do.body.67
  %48 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active72 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %48, i32 0, i32 2
  store %struct._object* null, %struct._object** %active72, align 8
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.71
  %49 = load %struct._object*, %struct._object** %_py_tmp68, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp74, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %51, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %54(%struct._object* %55)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.body.67
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  %56 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %call86 = call %struct._object* @chain_next(%struct.chainobject* %56)
  store %struct._object* %call86, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.85, %if.else.64, %if.then.57, %do.end.51, %do.end.15, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @chain_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %source = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @chain_type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %source, align 8
  %3 = load %struct._object*, %struct._object** %source, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %5 = load %struct._object*, %struct._object** %source, align 8
  %call5 = call %struct._object* @chain_new_internal(%struct._typeobject* %4, %struct._object* %5)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @chain_new_from_iterable(%struct._typeobject* %type, %struct._object* %arg) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %source = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %source, align 8
  %1 = load %struct._object*, %struct._object** %source, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %3 = load %struct._object*, %struct._object** %source, align 8
  %call1 = call %struct._object* @chain_new_internal(%struct._typeobject* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @chain_reduce(%struct.chainobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.chainobject*, align 8
  store %struct.chainobject* %lz, %struct.chainobject** %lz.addr, align 8
  %0 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source = getelementptr inbounds %struct.chainobject, %struct.chainobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %source, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %2 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active = getelementptr inbounds %struct.chainobject, %struct.chainobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %active, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %5 = bitcast %struct.chainobject* %4 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %7 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source3 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %source3, align 8
  %9 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active4 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %9, i32 0, i32 2
  %10 = load %struct._object*, %struct._object** %active4, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), %struct._typeobject* %6, %struct._object* %8, %struct._object* %10)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %11 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %12 = bitcast %struct.chainobject* %11 to %struct._object*
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %14 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source6 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %source6, align 8
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), %struct._typeobject* %13, %struct._object* %15)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.else.8:                                        ; preds = %entry
  %16 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %17 = bitcast %struct.chainobject* %16 to %struct._object*
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), %struct._typeobject* %18)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.else, %if.then.2
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @chain_setstate(%struct.chainobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.chainobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %source = alloca %struct._object*, align 8
  %active = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.chainobject* %lz, %struct.chainobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  store %struct._object* null, %struct._object** %active, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i32 0, i32 0), %struct._object** %source, %struct._object** %active)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source1 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %source1, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %4 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source3 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %4, i32 0, i32 1
  store %struct._object* null, %struct._object** %source3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %source, align 8
  %13 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source10 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %13, i32 0, i32 1
  store %struct._object* %12, %struct._object** %source10, align 8
  %14 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %source11 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %source11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt12, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.9
  %17 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active15 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %active15, align 8
  store %struct._object* %18, %struct._object** %_py_tmp14, align 8
  %19 = load %struct._object*, %struct._object** %_py_tmp14, align 8
  %cmp16 = icmp ne %struct._object* %19, null
  br i1 %cmp16, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %do.body.13
  %20 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active18 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %20, i32 0, i32 2
  store %struct._object* null, %struct._object** %active18, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.17
  %21 = load %struct._object*, %struct._object** %_py_tmp14, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %23, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %26(%struct._object* %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.13
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %28 = load %struct._object*, %struct._object** %active, align 8
  %29 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active32 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %29, i32 0, i32 2
  store %struct._object* %28, %struct._object** %active32, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.31
  %30 = load %struct.chainobject*, %struct.chainobject** %lz.addr, align 8
  %active34 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %30, i32 0, i32 2
  %31 = load %struct._object*, %struct._object** %active34, align 8
  store %struct._object* %31, %struct._object** %_py_xincref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %32, null
  br i1 %cmp35, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %do.body.33
  %33 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt37, align 8
  %inc38 = add i64 %34, 1
  store i64 %inc38, i64* %ob_refcnt37, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %do.body.33
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %35 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc41 = add i64 %35, 1
  store i64 %inc41, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.40, %if.then
  %36 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %36
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @chain_new_internal(%struct._typeobject* %type, %struct._object* %source) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %source.addr = alloca %struct._object*, align 8
  %lz = alloca %struct.chainobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %source, %struct._object** %source.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.chainobject*
  store %struct.chainobject* %3, %struct.chainobject** %lz, align 8
  %4 = load %struct.chainobject*, %struct.chainobject** %lz, align 8
  %cmp = icmp eq %struct.chainobject* %4, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %source.addr, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %12 = load %struct._object*, %struct._object** %source.addr, align 8
  %13 = load %struct.chainobject*, %struct.chainobject** %lz, align 8
  %source4 = getelementptr inbounds %struct.chainobject, %struct.chainobject* %13, i32 0, i32 1
  store %struct._object* %12, %struct._object** %source4, align 8
  %14 = load %struct.chainobject*, %struct.chainobject** %lz, align 8
  %active = getelementptr inbounds %struct.chainobject, %struct.chainobject* %14, i32 0, i32 2
  store %struct._object* null, %struct._object** %active, align 8
  %15 = load %struct.chainobject*, %struct.chainobject** %lz, align 8
  %16 = bitcast %struct.chainobject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.3, %do.end
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal void @compress_dealloc(%struct.compressobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.compressobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.compressobject* %lz, %struct.compressobject** %lz.addr, align 8
  %0 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %1 = bitcast %struct.compressobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %data = getelementptr inbounds %struct.compressobject, %struct.compressobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %selectors = getelementptr inbounds %struct.compressobject, %struct.compressobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %selectors, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %23 = bitcast %struct.compressobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %27 = bitcast %struct.compressobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @compress_traverse(%struct.compressobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.compressobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.compressobject* %lz, %struct.compressobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %data = getelementptr inbounds %struct.compressobject, %struct.compressobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %data, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %data1 = getelementptr inbounds %struct.compressobject, %struct.compressobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %data1, align 8
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
  %8 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %selectors = getelementptr inbounds %struct.compressobject, %struct.compressobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %selectors, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %selectors9 = getelementptr inbounds %struct.compressobject, %struct.compressobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %selectors9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @compress_next(%struct.compressobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.compressobject*, align 8
  %data = alloca %struct._object*, align 8
  %selectors = alloca %struct._object*, align 8
  %datum = alloca %struct._object*, align 8
  %selector = alloca %struct._object*, align 8
  %datanext = alloca %struct._object* (%struct._object*)*, align 8
  %selectornext = alloca %struct._object* (%struct._object*)*, align 8
  %ok = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp15 = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  store %struct.compressobject* %lz, %struct.compressobject** %lz.addr, align 8
  %0 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %data1 = getelementptr inbounds %struct.compressobject, %struct.compressobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %data1, align 8
  store %struct._object* %1, %struct._object** %data, align 8
  %2 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %selectors2 = getelementptr inbounds %struct.compressobject, %struct.compressobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %selectors2, align 8
  store %struct._object* %3, %struct._object** %selectors, align 8
  %4 = load %struct._object*, %struct._object** %data, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 26
  %6 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %6, %struct._object* (%struct._object*)** %datanext, align 8
  %7 = load %struct._object*, %struct._object** %selectors, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_iternext4 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 26
  %9 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext4, align 8
  store %struct._object* (%struct._object*)* %9, %struct._object* (%struct._object*)** %selectornext, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.41
  %10 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %datanext, align 8
  %11 = load %struct._object*, %struct._object** %data, align 8
  %call = call %struct._object* %10(%struct._object* %11)
  store %struct._object* %call, %struct._object** %datum, align 8
  %12 = load %struct._object*, %struct._object** %datum, align 8
  %cmp = icmp eq %struct._object* %12, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %while.body
  %13 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %selectornext, align 8
  %14 = load %struct._object*, %struct._object** %selectors, align 8
  %call5 = call %struct._object* %13(%struct._object* %14)
  store %struct._object* %call5, %struct._object** %selector, align 8
  %15 = load %struct._object*, %struct._object** %selector, align 8
  %cmp6 = icmp eq %struct._object* %15, null
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %16 = load %struct._object*, %struct._object** %datum, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %23 = load %struct._object*, %struct._object** %selector, align 8
  %call13 = call i32 @PyObject_IsTrue(%struct._object* %23)
  store i32 %call13, i32* %ok, align 4
  br label %do.body.14

do.body.14:                                       ; preds = %if.end.12
  %24 = load %struct._object*, %struct._object** %selector, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp15, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt16, align 8
  %dec17 = add i64 %26, -1
  store i64 %dec17, i64* %ob_refcnt16, align 8
  %cmp18 = icmp ne i64 %dec17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.14
  br label %if.end.23

if.else.20:                                       ; preds = %do.body.14
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc22 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp15, align 8
  call void %29(%struct._object* %30)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %31 = load i32, i32* %ok, align 4
  %cmp25 = icmp eq i32 %31, 1
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end.24
  %32 = load %struct._object*, %struct._object** %datum, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %do.end.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %33 = load %struct._object*, %struct._object** %datum, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp29, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %35, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.28
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.28
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %38(%struct._object* %39)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %40 = load i32, i32* %ok, align 4
  %cmp39 = icmp slt i32 %40, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %do.end.38
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %do.end.38
  br label %while.body

return:                                           ; preds = %if.then.40, %if.then.26, %do.end, %if.then
  %41 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %41
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @compress_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %seq1 = alloca %struct._object*, align 8
  %seq2 = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %selectors = alloca %struct._object*, align 8
  %lz = alloca %struct.compressobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp23 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %data, align 8
  store %struct._object* null, %struct._object** %selectors, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @compress_new.kwargs, i32 0, i32 0), %struct._object** %seq1, %struct._object** %seq2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %seq1, align 8
  %call1 = call %struct._object* @PyObject_GetIter(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %data, align 8
  %3 = load %struct._object*, %struct._object** %data, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %fail

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %seq2, align 8
  %call4 = call %struct._object* @PyObject_GetIter(%struct._object* %4)
  store %struct._object* %call4, %struct._object** %selectors, align 8
  %5 = load %struct._object*, %struct._object** %selectors, align 8
  %cmp5 = icmp eq %struct._object* %5, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  br label %fail

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 36
  %7 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %8 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call8 = call %struct._object* %7(%struct._typeobject* %8, i64 0)
  %9 = bitcast %struct._object* %call8 to %struct.compressobject*
  store %struct.compressobject* %9, %struct.compressobject** %lz, align 8
  %10 = load %struct.compressobject*, %struct.compressobject** %lz, align 8
  %cmp9 = icmp eq %struct.compressobject* %10, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  br label %fail

if.end.11:                                        ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** %data, align 8
  %12 = load %struct.compressobject*, %struct.compressobject** %lz, align 8
  %data12 = getelementptr inbounds %struct.compressobject, %struct.compressobject* %12, i32 0, i32 1
  store %struct._object* %11, %struct._object** %data12, align 8
  %13 = load %struct._object*, %struct._object** %selectors, align 8
  %14 = load %struct.compressobject*, %struct.compressobject** %lz, align 8
  %selectors13 = getelementptr inbounds %struct.compressobject, %struct.compressobject* %14, i32 0, i32 2
  store %struct._object* %13, %struct._object** %selectors13, align 8
  %15 = load %struct.compressobject*, %struct.compressobject** %lz, align 8
  %16 = bitcast %struct.compressobject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %retval
  br label %return

fail:                                             ; preds = %if.then.10, %if.then.6, %if.then.2
  br label %do.body

do.body:                                          ; preds = %fail
  %17 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %17, %struct._object** %_py_xdecref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp14 = icmp ne %struct._object* %18, null
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %do.body
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body.16
  br label %if.end.19

if.else:                                          ; preds = %do.body.16
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %do.body
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %26 = load %struct._object*, %struct._object** %selectors, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp23, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp23, align 8
  %cmp24 = icmp ne %struct._object* %27, null
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %do.body.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp23, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp27, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %30, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %33(%struct._object* %34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %do.body.22
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.38, %if.end.11, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @compress_reduce(%struct.compressobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.compressobject*, align 8
  store %struct.compressobject* %lz, %struct.compressobject** %lz.addr, align 8
  %0 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %1 = bitcast %struct.compressobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %data = getelementptr inbounds %struct.compressobject, %struct.compressobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %data, align 8
  %5 = load %struct.compressobject*, %struct.compressobject** %lz.addr, align 8
  %selectors = getelementptr inbounds %struct.compressobject, %struct.compressobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %selectors, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal void @filterfalse_dealloc(%struct.filterfalseobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.filterfalseobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.filterfalseobject* %lz, %struct.filterfalseobject** %lz.addr, align 8
  %0 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %1 = bitcast %struct.filterfalseobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %23 = bitcast %struct.filterfalseobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %27 = bitcast %struct.filterfalseobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @filterfalse_traverse(%struct.filterfalseobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.filterfalseobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.filterfalseobject* %lz, %struct.filterfalseobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  %8 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %func9 = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %func9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @filterfalse_next(%struct.filterfalseobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.filterfalseobject*, align 8
  %item = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %ok = alloca i64, align 8
  %iternext = alloca %struct._object* (%struct._object*)*, align 8
  %good = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  store %struct.filterfalseobject* %lz, %struct.filterfalseobject** %lz.addr, align 8
  %0 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %it1 = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %it1, align 8
  store %struct._object* %1, %struct._object** %it, align 8
  %2 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_iternext = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 26
  %4 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %tp_iternext, align 8
  store %struct._object* (%struct._object*)* %4, %struct._object* (%struct._object*)** %iternext, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.53, %entry
  %5 = load %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)** %iternext, align 8
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* %5(%struct._object* %6)
  store %struct._object* %call, %struct._object** %item, align 8
  %7 = load %struct._object*, %struct._object** %item, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %for.cond
  %8 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %cmp2 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp2, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %func3 = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %func3, align 8
  %cmp4 = icmp eq %struct._object* %11, getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBool_Type, i32 0, i32 0, i32 0)
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  %12 = load %struct._object*, %struct._object** %item, align 8
  %call6 = call i32 @PyObject_IsTrue(%struct._object* %12)
  %conv = sext i32 %call6 to i64
  store i64 %conv, i64* %ok, align 8
  br label %if.end.33

if.else:                                          ; preds = %lor.lhs.false
  %13 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %func7 = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %13, i32 0, i32 1
  %14 = load %struct._object*, %struct._object** %func7, align 8
  %15 = load %struct._object*, %struct._object** %item, align 8
  %call8 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %14, %struct._object* %15, i8* null)
  store %struct._object* %call8, %struct._object** %good, align 8
  %16 = load %struct._object*, %struct._object** %good, align 8
  %cmp9 = icmp eq %struct._object* %16, null
  br i1 %cmp9, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %17 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.17

if.else.15:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.else
  %24 = load %struct._object*, %struct._object** %good, align 8
  %call19 = call i32 @PyObject_IsTrue(%struct._object* %24)
  %conv20 = sext i32 %call19 to i64
  store i64 %conv20, i64* %ok, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.18
  %25 = load %struct._object*, %struct._object** %good, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp22, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %27, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %30(%struct._object* %31)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %if.then.5
  %32 = load i64, i64* %ok, align 8
  %cmp34 = icmp eq i64 %32, 0
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  %33 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.33
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %34 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp39, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %36, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.38
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.38
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %39(%struct._object* %40)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %41 = load i64, i64* %ok, align 8
  %cmp50 = icmp slt i64 %41, 0
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %do.end.49
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %do.end.49
  br label %for.cond

return:                                           ; preds = %if.then.52, %if.then.36, %do.end, %if.then
  %42 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %42
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @filterfalse_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %seq = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %lz = alloca %struct.filterfalseobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %cmp = icmp eq %struct._typeobject* %0, @filterfalse_type
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), %struct._object* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i64 2, i64 2, %struct._object** %func, %struct._object** %seq)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %seq, align 8
  %call5 = call %struct._object* @PyObject_GetIter(%struct._object* %3)
  store %struct._object* %call5, %struct._object** %it, align 8
  %4 = load %struct._object*, %struct._object** %it, align 8
  %cmp6 = icmp eq %struct._object* %4, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 36
  %6 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %7 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call9 = call %struct._object* %6(%struct._typeobject* %7, i64 0)
  %8 = bitcast %struct._object* %call9 to %struct.filterfalseobject*
  store %struct.filterfalseobject* %8, %struct.filterfalseobject** %lz, align 8
  %9 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz, align 8
  %cmp10 = icmp eq %struct.filterfalseobject* %9, null
  br i1 %cmp10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %if.end.8
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %10 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %17 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt16 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt16, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt16, align 8
  %19 = load %struct._object*, %struct._object** %func, align 8
  %20 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz, align 8
  %func17 = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %20, i32 0, i32 1
  store %struct._object* %19, %struct._object** %func17, align 8
  %21 = load %struct._object*, %struct._object** %it, align 8
  %22 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz, align 8
  %it18 = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %22, i32 0, i32 2
  store %struct._object* %21, %struct._object** %it18, align 8
  %23 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz, align 8
  %24 = bitcast %struct.filterfalseobject* %23 to %struct._object*
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %do.end, %if.then.7, %if.then.3, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @filterfalse_reduce(%struct.filterfalseobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.filterfalseobject*, align 8
  store %struct.filterfalseobject* %lz, %struct.filterfalseobject** %lz.addr, align 8
  %0 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %1 = bitcast %struct.filterfalseobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %func = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %func, align 8
  %5 = load %struct.filterfalseobject*, %struct.filterfalseobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.filterfalseobject, %struct.filterfalseobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal void @count_dealloc(%struct.countobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.countobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.countobject* %lz, %struct.countobject** %lz.addr, align 8
  %0 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %1 = bitcast %struct.countobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt = getelementptr inbounds %struct.countobject, %struct.countobject* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %long_cnt, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step = getelementptr inbounds %struct.countobject, %struct.countobject* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %long_step, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %23 = bitcast %struct.countobject* %22 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 38
  %25 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %26 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %27 = bitcast %struct.countobject* %26 to i8*
  call void %25(i8* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @count_repr(%struct.countobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.countobject*, align 8
  %step = alloca i64, align 8
  store %struct.countobject* %lz, %struct.countobject** %lz.addr, align 8
  %0 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %cnt = getelementptr inbounds %struct.countobject, %struct.countobject* %0, i32 0, i32 1
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp ne i64 %1, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %cnt1 = getelementptr inbounds %struct.countobject, %struct.countobject* %2, i32 0, i32 1
  %3 = load i64, i64* %cnt1, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i64 %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step = getelementptr inbounds %struct.countobject, %struct.countobject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %long_step, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 16777216
  %cmp2 = icmp ne i64 %and, 0
  br i1 %cmp2, label %if.then.3, label %if.end.14

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step4 = getelementptr inbounds %struct.countobject, %struct.countobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %long_step4, align 8
  %call5 = call i64 @PyLong_AsLong(%struct._object* %9)
  store i64 %call5, i64* %step, align 8
  %10 = load i64, i64* %step, align 8
  %cmp6 = icmp eq i64 %10, -1
  br i1 %cmp6, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.then.3
  %call7 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call7, null
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  call void @PyErr_Clear()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.then.3
  %11 = load i64, i64* %step, align 8
  %cmp10 = icmp eq i64 %11, 1
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %12 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt = getelementptr inbounds %struct.countobject, %struct.countobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %long_cnt, align 8
  %call12 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), %struct._object* %13)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end
  %14 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt15 = getelementptr inbounds %struct.countobject, %struct.countobject* %14, i32 0, i32 2
  %15 = load %struct._object*, %struct._object** %long_cnt15, align 8
  %16 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step16 = getelementptr inbounds %struct.countobject, %struct.countobject* %16, i32 0, i32 3
  %17 = load %struct._object*, %struct._object** %long_step16, align 8
  %call17 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), %struct._object* %15, %struct._object* %17)
  store %struct._object* %call17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

; Function Attrs: nounwind uwtable
define internal i32 @count_traverse(%struct.countobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.countobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.countobject* %lz, %struct.countobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt = getelementptr inbounds %struct.countobject, %struct.countobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %long_cnt, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt1 = getelementptr inbounds %struct.countobject, %struct.countobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %long_cnt1, align 8
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
  %8 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step = getelementptr inbounds %struct.countobject, %struct.countobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %long_step, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step9 = getelementptr inbounds %struct.countobject, %struct.countobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %long_step9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @count_next(%struct.countobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.countobject*, align 8
  store %struct.countobject* %lz, %struct.countobject** %lz.addr, align 8
  %0 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %cnt = getelementptr inbounds %struct.countobject, %struct.countobject* %0, i32 0, i32 1
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp eq i64 %1, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %call = call %struct._object* @count_nextlong(%struct.countobject* %2)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %cnt1 = getelementptr inbounds %struct.countobject, %struct.countobject* %3, i32 0, i32 1
  %4 = load i64, i64* %cnt1, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %cnt1, align 8
  %call2 = call %struct._object* @PyLong_FromSsize_t(i64 %4)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @count_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %lz = alloca %struct.countobject*, align 8
  %slow_mode = alloca i32, align 4
  %cnt = alloca i64, align 8
  %long_cnt = alloca %struct._object*, align 8
  %long_step = alloca %struct._object*, align 8
  %step = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 0, i32* %slow_mode, align 4
  store i64 0, i64* %cnt, align 8
  store %struct._object* null, %struct._object** %long_cnt, align 8
  store %struct._object* null, %struct._object** %long_step, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @count_new.kwlist, i32 0, i32 0), %struct._object** %long_cnt, %struct._object** %long_step)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %long_cnt, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %long_cnt, align 8
  %call1 = call i32 @PyNumber_Check(%struct._object* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.lhs.false, label %if.then.7

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %4 = load %struct._object*, %struct._object** %long_step, align 8
  %cmp3 = icmp ne %struct._object* %4, null
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.8

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %5 = load %struct._object*, %struct._object** %long_step, align 8
  %call5 = call i32 @PyNumber_Check(%struct._object* %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.4, %land.lhs.true
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.64, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.4, %lor.lhs.false
  %7 = load %struct._object*, %struct._object** %long_cnt, align 8
  %cmp9 = icmp ne %struct._object* %7, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct._object*, %struct._object** %long_cnt, align 8
  %call11 = call i64 @PyLong_AsSsize_t(%struct._object* %8)
  store i64 %call11, i64* %cnt, align 8
  %9 = load i64, i64* %cnt, align 8
  %cmp12 = icmp eq i64 %9, -1
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.16

land.lhs.true.13:                                 ; preds = %if.then.10
  %call14 = call %struct._object* @PyErr_Occurred()
  %tobool15 = icmp ne %struct._object* %call14, null
  br i1 %tobool15, label %if.then.18, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.13, %if.then.10
  %10 = load %struct._object*, %struct._object** %long_cnt, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 16777216
  %cmp17 = icmp ne i64 %and, 0
  br i1 %cmp17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %lor.lhs.false.16, %land.lhs.true.13
  call void @PyErr_Clear()
  store i32 1, i32* %slow_mode, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false.16
  %13 = load %struct._object*, %struct._object** %long_cnt, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.8
  store i64 0, i64* %cnt, align 8
  %call20 = call %struct._object* @PyLong_FromLong(i64 0)
  store %struct._object* %call20, %struct._object** %long_cnt, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.end.19
  %15 = load %struct._object*, %struct._object** %long_step, align 8
  %cmp22 = icmp eq %struct._object* %15, null
  br i1 %cmp22, label %if.then.23, label %if.else.34

if.then.23:                                       ; preds = %if.end.21
  %call24 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call24, %struct._object** %long_step, align 8
  %16 = load %struct._object*, %struct._object** %long_step, align 8
  %cmp25 = icmp eq %struct._object* %16, null
  br i1 %cmp25, label %if.then.26, label %if.end.33

if.then.26:                                       ; preds = %if.then.23
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %17 = load %struct._object*, %struct._object** %long_cnt, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt27, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt27, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body
  br label %if.end.32

if.else.30:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.23
  br label %if.end.37

if.else.34:                                       ; preds = %if.end.21
  %24 = load %struct._object*, %struct._object** %long_step, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt35, align 8
  %inc36 = add i64 %25, 1
  store i64 %inc36, i64* %ob_refcnt35, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.end.33
  %26 = load %struct._object*, %struct._object** %long_step, align 8
  %call38 = call i64 @PyLong_AsLong(%struct._object* %26)
  store i64 %call38, i64* %step, align 8
  %27 = load i64, i64* %step, align 8
  %cmp39 = icmp ne i64 %27, 1
  br i1 %cmp39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %if.end.37
  store i32 1, i32* %slow_mode, align 4
  %28 = load i64, i64* %step, align 8
  %cmp41 = icmp eq i64 %28, -1
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.46

land.lhs.true.42:                                 ; preds = %if.then.40
  %call43 = call %struct._object* @PyErr_Occurred()
  %tobool44 = icmp ne %struct._object* %call43, null
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.42
  call void @PyErr_Clear()
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.42, %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.37
  %29 = load i32, i32* %slow_mode, align 4
  %tobool48 = icmp ne i32 %29, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.47
  store i64 9223372036854775807, i64* %cnt, align 8
  br label %if.end.67

if.else.50:                                       ; preds = %if.end.47
  br label %do.body.51

do.body.51:                                       ; preds = %if.else.50
  %30 = load %struct._object*, %struct._object** %long_cnt, align 8
  store %struct._object* %30, %struct._object** %_py_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp52 = icmp ne %struct._object* %31, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.51
  store %struct._object* null, %struct._object** %long_cnt, align 8
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %32 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp55, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %34, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %37(%struct._object* %38)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.51
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %if.then.49
  %39 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 36
  %40 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %41 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call68 = call %struct._object* %40(%struct._typeobject* %41, i64 0)
  %42 = bitcast %struct._object* %call68 to %struct.countobject*
  store %struct.countobject* %42, %struct.countobject** %lz, align 8
  %43 = load %struct.countobject*, %struct.countobject** %lz, align 8
  %cmp69 = icmp eq %struct.countobject* %43, null
  br i1 %cmp69, label %if.then.70, label %if.end.87

if.then.70:                                       ; preds = %if.end.67
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %44 = load %struct._object*, %struct._object** %long_cnt, align 8
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp72 = icmp ne %struct._object* %45, null
  br i1 %cmp72, label %if.then.73, label %if.end.85

if.then.73:                                       ; preds = %do.body.71
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp75, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %48, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %51(%struct._object* %52)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %do.end.84, %do.body.71
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.67
  %53 = load i64, i64* %cnt, align 8
  %54 = load %struct.countobject*, %struct.countobject** %lz, align 8
  %cnt88 = getelementptr inbounds %struct.countobject, %struct.countobject* %54, i32 0, i32 1
  store i64 %53, i64* %cnt88, align 8
  %55 = load %struct._object*, %struct._object** %long_cnt, align 8
  %56 = load %struct.countobject*, %struct.countobject** %lz, align 8
  %long_cnt89 = getelementptr inbounds %struct.countobject, %struct.countobject* %56, i32 0, i32 2
  store %struct._object* %55, %struct._object** %long_cnt89, align 8
  %57 = load %struct._object*, %struct._object** %long_step, align 8
  %58 = load %struct.countobject*, %struct.countobject** %lz, align 8
  %long_step90 = getelementptr inbounds %struct.countobject, %struct.countobject* %58, i32 0, i32 3
  store %struct._object* %57, %struct._object** %long_step90, align 8
  %59 = load %struct.countobject*, %struct.countobject** %lz, align 8
  %60 = bitcast %struct.countobject* %59 to %struct._object*
  store %struct._object* %60, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.87, %do.end.86, %do.end, %if.then.7, %if.then
  %61 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %61
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #2

declare i64 @PyLong_AsLong(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @count_nextlong(%struct.countobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.countobject*, align 8
  %long_cnt = alloca %struct._object*, align 8
  %stepped_up = alloca %struct._object*, align 8
  store %struct.countobject* %lz, %struct.countobject** %lz.addr, align 8
  %0 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt1 = getelementptr inbounds %struct.countobject, %struct.countobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %long_cnt1, align 8
  store %struct._object* %1, %struct._object** %long_cnt, align 8
  %2 = load %struct._object*, %struct._object** %long_cnt, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyLong_FromSsize_t(i64 9223372036854775807)
  store %struct._object* %call, %struct._object** %long_cnt, align 8
  %3 = load %struct._object*, %struct._object** %long_cnt, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %4 = load %struct._object*, %struct._object** %long_cnt, align 8
  %5 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step = getelementptr inbounds %struct.countobject, %struct.countobject* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %long_step, align 8
  %call5 = call %struct._object* @PyNumber_Add(%struct._object* %4, %struct._object* %6)
  store %struct._object* %call5, %struct._object** %stepped_up, align 8
  %7 = load %struct._object*, %struct._object** %stepped_up, align 8
  %cmp6 = icmp eq %struct._object* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** %stepped_up, align 8
  %9 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt9 = getelementptr inbounds %struct.countobject, %struct.countobject* %9, i32 0, i32 2
  store %struct._object* %8, %struct._object** %long_cnt9, align 8
  %10 = load %struct._object*, %struct._object** %long_cnt, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @count_reduce(%struct.countobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.countobject*, align 8
  store %struct.countobject* %lz, %struct.countobject** %lz.addr, align 8
  %0 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %cnt = getelementptr inbounds %struct.countobject, %struct.countobject* %0, i32 0, i32 1
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp eq i64 %1, 9223372036854775807
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %3 = bitcast %struct.countobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_cnt = getelementptr inbounds %struct.countobject, %struct.countobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %long_cnt, align 8
  %7 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %long_step = getelementptr inbounds %struct.countobject, %struct.countobject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %long_step, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, %struct._object* %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %10 = bitcast %struct.countobject* %9 to %struct._object*
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8
  %12 = load %struct.countobject*, %struct.countobject** %lz.addr, align 8
  %cnt2 = getelementptr inbounds %struct.countobject, %struct.countobject* %12, i32 0, i32 1
  %13 = load i64, i64* %cnt2, align 8
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), %struct._typeobject* %11, i64 %13)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare i32 @PyNumber_Check(%struct._object*) #2

declare %struct._object* @PyLong_FromLong(i64) #2

; Function Attrs: nounwind uwtable
define internal void @zip_longest_dealloc(%struct.ziplongestobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.ziplongestobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.ziplongestobject* %lz, %struct.ziplongestobject** %lz.addr, align 8
  %0 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %1 = bitcast %struct.ziplongestobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %22 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %22, i32 0, i32 5
  %23 = load %struct._object*, %struct._object** %fillvalue, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %24, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %32 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %33 = bitcast %struct.ziplongestobject* %32 to %struct._object*
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 38
  %35 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %36 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %37 = bitcast %struct.ziplongestobject* %36 to i8*
  call void %35(i8* %37)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @zip_longest_traverse(%struct.ziplongestobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.ziplongestobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct.ziplongestobject* %lz, %struct.ziplongestobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %ittuple, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple1 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %ittuple1, align 8
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
  %8 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %8, i32 0, i32 4
  %9 = load %struct._object*, %struct._object** %result, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %result9 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %11, i32 0, i32 4
  %12 = load %struct._object*, %struct._object** %result9, align 8
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
  %16 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %16, i32 0, i32 5
  %17 = load %struct._object*, %struct._object** %fillvalue, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue20 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %19, i32 0, i32 5
  %20 = load %struct._object*, %struct._object** %fillvalue20, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zip_longest_next(%struct.ziplongestobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.ziplongestobject*, align 8
  %i = alloca i64, align 8
  %tuplesize = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %olditem = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp97 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  store %struct.ziplongestobject* %lz, %struct.ziplongestobject** %lz.addr, align 8
  %0 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %tuplesize1 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %0, i32 0, i32 1
  %1 = load i64, i64* %tuplesize1, align 8
  store i64 %1, i64* %tuplesize, align 8
  %2 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %result2 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %2, i32 0, i32 4
  %3 = load %struct._object*, %struct._object** %result2, align 8
  store %struct._object* %3, %struct._object** %result, align 8
  %4 = load i64, i64* %tuplesize, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %numactive = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %5, i32 0, i32 2
  %6 = load i64, i64* %numactive, align 8
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %cmp6 = icmp eq i64 %8, 1
  br i1 %cmp6, label %if.then.7, label %if.else.66

if.then.7:                                        ; preds = %if.end.5
  %9 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt8, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt8, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.7
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %tuplesize, align 8
  %cmp9 = icmp slt i64 %11, %12
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %14, i32 0, i32 3
  %15 = load %struct._object*, %struct._object** %ittuple, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %13
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %17, %struct._object** %it, align 8
  %18 = load %struct._object*, %struct._object** %it, align 8
  %cmp10 = icmp eq %struct._object* %18, null
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.body
  %19 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %19, i32 0, i32 5
  %20 = load %struct._object*, %struct._object** %fillvalue, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt12, align 8
  %inc13 = add i64 %21, 1
  store i64 %inc13, i64* %ob_refcnt12, align 8
  %22 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue14 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %22, i32 0, i32 5
  %23 = load %struct._object*, %struct._object** %fillvalue14, align 8
  store %struct._object* %23, %struct._object** %item, align 8
  br label %if.end.49

if.else:                                          ; preds = %for.body
  %24 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* @PyIter_Next(%struct._object* %24)
  store %struct._object* %call, %struct._object** %item, align 8
  %25 = load %struct._object*, %struct._object** %item, align 8
  %cmp15 = icmp eq %struct._object* %25, null
  br i1 %cmp15, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %if.else
  %26 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %numactive17 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %26, i32 0, i32 2
  %27 = load i64, i64* %numactive17, align 8
  %sub = sub i64 %27, 1
  store i64 %sub, i64* %numactive17, align 8
  %28 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %numactive18 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %28, i32 0, i32 2
  %29 = load i64, i64* %numactive18, align 8
  %cmp19 = icmp eq i64 %29, 0
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.16
  %call20 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call20, null
  br i1 %tobool, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %lor.lhs.false, %if.then.16
  %30 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %numactive22 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %30, i32 0, i32 2
  store i64 0, i64* %numactive22, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %31 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt23, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %ob_refcnt23, align 8
  %cmp24 = icmp ne i64 %dec, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else.26:                                       ; preds = %do.body
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %36(%struct._object* %37)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.28:                                       ; preds = %lor.lhs.false
  %38 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue29 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %38, i32 0, i32 5
  %39 = load %struct._object*, %struct._object** %fillvalue29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt30, align 8
  %inc31 = add i64 %40, 1
  store i64 %inc31, i64* %ob_refcnt30, align 8
  %41 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue32 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %41, i32 0, i32 5
  %42 = load %struct._object*, %struct._object** %fillvalue32, align 8
  store %struct._object* %42, %struct._object** %item, align 8
  %43 = load i64, i64* %i, align 8
  %44 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple33 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %44, i32 0, i32 3
  %45 = load %struct._object*, %struct._object** %ittuple33, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyTupleObject*
  %ob_item34 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %46, i32 0, i32 1
  %arrayidx35 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item34, i32 0, i64 %43
  store %struct._object* null, %struct._object** %arrayidx35, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %if.else.28
  %47 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp37, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %49, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %52(%struct._object* %53)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  br label %if.end.47

if.end.47:                                        ; preds = %do.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.11
  %54 = load i64, i64* %i, align 8
  %55 = load %struct._object*, %struct._object** %result, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyTupleObject*
  %ob_item50 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %56, i32 0, i32 1
  %arrayidx51 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item50, i32 0, i64 %54
  %57 = load %struct._object*, %struct._object** %arrayidx51, align 8
  store %struct._object* %57, %struct._object** %olditem, align 8
  %58 = load %struct._object*, %struct._object** %item, align 8
  %59 = load i64, i64* %i, align 8
  %60 = load %struct._object*, %struct._object** %result, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyTupleObject*
  %ob_item52 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %61, i32 0, i32 1
  %arrayidx53 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item52, i32 0, i64 %59
  store %struct._object* %58, %struct._object** %arrayidx53, align 8
  br label %do.body.54

do.body.54:                                       ; preds = %if.end.49
  %62 = load %struct._object*, %struct._object** %olditem, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp55, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %64, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %67(%struct._object* %68)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %for.inc

for.inc:                                          ; preds = %do.end.64
  %69 = load i64, i64* %i, align 8
  %inc65 = add i64 %69, 1
  store i64 %inc65, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.134

if.else.66:                                       ; preds = %if.end.5
  %70 = load i64, i64* %tuplesize, align 8
  %call67 = call %struct._object* @PyTuple_New(i64 %70)
  store %struct._object* %call67, %struct._object** %result, align 8
  %71 = load %struct._object*, %struct._object** %result, align 8
  %cmp68 = icmp eq %struct._object* %71, null
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.else.66
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.70:                                        ; preds = %if.else.66
  store i64 0, i64* %i, align 8
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.131, %if.end.70
  %72 = load i64, i64* %i, align 8
  %73 = load i64, i64* %tuplesize, align 8
  %cmp72 = icmp slt i64 %72, %73
  br i1 %cmp72, label %for.body.73, label %for.end.133

for.body.73:                                      ; preds = %for.cond.71
  %74 = load i64, i64* %i, align 8
  %75 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple74 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %75, i32 0, i32 3
  %76 = load %struct._object*, %struct._object** %ittuple74, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyTupleObject*
  %ob_item75 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %77, i32 0, i32 1
  %arrayidx76 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item75, i32 0, i64 %74
  %78 = load %struct._object*, %struct._object** %arrayidx76, align 8
  store %struct._object* %78, %struct._object** %it, align 8
  %79 = load %struct._object*, %struct._object** %it, align 8
  %cmp77 = icmp eq %struct._object* %79, null
  br i1 %cmp77, label %if.then.78, label %if.else.83

if.then.78:                                       ; preds = %for.body.73
  %80 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue79 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %80, i32 0, i32 5
  %81 = load %struct._object*, %struct._object** %fillvalue79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0
  %82 = load i64, i64* %ob_refcnt80, align 8
  %inc81 = add i64 %82, 1
  store i64 %inc81, i64* %ob_refcnt80, align 8
  %83 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue82 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %83, i32 0, i32 5
  %84 = load %struct._object*, %struct._object** %fillvalue82, align 8
  store %struct._object* %84, %struct._object** %item, align 8
  br label %if.end.128

if.else.83:                                       ; preds = %for.body.73
  %85 = load %struct._object*, %struct._object** %it, align 8
  %call84 = call %struct._object* @PyIter_Next(%struct._object* %85)
  store %struct._object* %call84, %struct._object** %item, align 8
  %86 = load %struct._object*, %struct._object** %item, align 8
  %cmp85 = icmp eq %struct._object* %86, null
  br i1 %cmp85, label %if.then.86, label %if.end.127

if.then.86:                                       ; preds = %if.else.83
  %87 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %numactive87 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %87, i32 0, i32 2
  %88 = load i64, i64* %numactive87, align 8
  %sub88 = sub i64 %88, 1
  store i64 %sub88, i64* %numactive87, align 8
  %89 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %numactive89 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %89, i32 0, i32 2
  %90 = load i64, i64* %numactive89, align 8
  %cmp90 = icmp eq i64 %90, 0
  br i1 %cmp90, label %if.then.94, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.then.86
  %call92 = call %struct._object* @PyErr_Occurred()
  %tobool93 = icmp ne %struct._object* %call92, null
  br i1 %tobool93, label %if.then.94, label %if.else.107

if.then.94:                                       ; preds = %lor.lhs.false.91, %if.then.86
  %91 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %numactive95 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %91, i32 0, i32 2
  store i64 0, i64* %numactive95, align 8
  br label %do.body.96

do.body.96:                                       ; preds = %if.then.94
  %92 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp97, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt98, align 8
  %dec99 = add i64 %94, -1
  store i64 %dec99, i64* %ob_refcnt98, align 8
  %cmp100 = icmp ne i64 %dec99, 0
  br i1 %cmp100, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %do.body.96
  br label %if.end.105

if.else.102:                                      ; preds = %do.body.96
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  %ob_type103 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type103, align 8
  %tp_dealloc104 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc104, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp97, align 8
  call void %97(%struct._object* %98)
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.102, %if.then.101
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.107:                                      ; preds = %lor.lhs.false.91
  %99 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue108 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %99, i32 0, i32 5
  %100 = load %struct._object*, %struct._object** %fillvalue108, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt109, align 8
  %inc110 = add i64 %101, 1
  store i64 %inc110, i64* %ob_refcnt109, align 8
  %102 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue111 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %102, i32 0, i32 5
  %103 = load %struct._object*, %struct._object** %fillvalue111, align 8
  store %struct._object* %103, %struct._object** %item, align 8
  %104 = load i64, i64* %i, align 8
  %105 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple112 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %105, i32 0, i32 3
  %106 = load %struct._object*, %struct._object** %ittuple112, align 8
  %107 = bitcast %struct._object* %106 to %struct.PyTupleObject*
  %ob_item113 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %107, i32 0, i32 1
  %arrayidx114 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item113, i32 0, i64 %104
  store %struct._object* null, %struct._object** %arrayidx114, align 8
  br label %do.body.115

do.body.115:                                      ; preds = %if.else.107
  %108 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp116, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %110, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.115
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.115
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %113(%struct._object* %114)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.else.83
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.then.78
  %115 = load %struct._object*, %struct._object** %item, align 8
  %116 = load i64, i64* %i, align 8
  %117 = load %struct._object*, %struct._object** %result, align 8
  %118 = bitcast %struct._object* %117 to %struct.PyTupleObject*
  %ob_item129 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %118, i32 0, i32 1
  %arrayidx130 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item129, i32 0, i64 %116
  store %struct._object* %115, %struct._object** %arrayidx130, align 8
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.128
  %119 = load i64, i64* %i, align 8
  %inc132 = add i64 %119, 1
  store i64 %inc132, i64* %i, align 8
  br label %for.cond.71

for.end.133:                                      ; preds = %for.cond.71
  br label %if.end.134

if.end.134:                                       ; preds = %for.end.133, %for.end
  %120 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %120, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.134, %do.end.106, %if.then.69, %do.end, %if.then.4, %if.then
  %121 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %121
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zip_longest_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %lz = alloca %struct.ziplongestobject*, align 8
  %i = alloca i64, align 8
  %ittuple = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %fillvalue = alloca %struct._object*, align 8
  %tuplesize = alloca i64, align 8
  %item = alloca %struct._object*, align 8
  %it = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp69 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %fillvalue, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call, i64* %tuplesize, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @PyDict_Type
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.10

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call3 = call i64 @PyDict_Size(%struct._object* %4)
  %cmp4 = icmp sgt i64 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true.2
  %5 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call5 = call %struct._object* @PyDict_GetItemString(%struct._object* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0))
  store %struct._object* %call5, %struct._object** %fillvalue, align 8
  %6 = load %struct._object*, %struct._object** %fillvalue, align 8
  %cmp6 = icmp eq %struct._object* %6, null
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call7 = call i64 @PyDict_Size(%struct._object* %7)
  %cmp8 = icmp sgt i64 %call7, 1
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %if.then
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.68, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %land.lhs.true.2, %land.lhs.true, %entry
  %9 = load i64, i64* %tuplesize, align 8
  %call11 = call %struct._object* @PyTuple_New(i64 %9)
  store %struct._object* %call11, %struct._object** %ittuple, align 8
  %10 = load %struct._object*, %struct._object** %ittuple, align 8
  %cmp12 = icmp eq %struct._object* %10, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %tuplesize, align 8
  %cmp15 = icmp slt i64 %11, %12
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %i, align 8
  %14 = load %struct._object*, %struct._object** %args.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %13
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %item, align 8
  %17 = load %struct._object*, %struct._object** %item, align 8
  %call16 = call %struct._object* @PyObject_GetIter(%struct._object* %17)
  store %struct._object* %call16, %struct._object** %it, align 8
  %18 = load %struct._object*, %struct._object** %it, align 8
  %cmp17 = icmp eq %struct._object* %18, null
  br i1 %cmp17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %for.body
  %19 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call19 = call i32 @PyErr_ExceptionMatches(%struct._object* %19)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.then.18
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %21 = load i64, i64* %i, align 8
  %add = add i64 %21, 1
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.69, i32 0, i32 0), i64 %add)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.18
  br label %do.body

do.body:                                          ; preds = %if.end.22
  %22 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body
  br label %if.end.26

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.24
  br label %do.end

do.end:                                           ; preds = %if.end.26
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.27:                                        ; preds = %for.body
  %29 = load %struct._object*, %struct._object** %it, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object*, %struct._object** %ittuple, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 %30
  store %struct._object* %29, %struct._object** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i64, i64* %tuplesize, align 8
  %call30 = call %struct._object* @PyTuple_New(i64 %34)
  store %struct._object* %call30, %struct._object** %result, align 8
  %35 = load %struct._object*, %struct._object** %result, align 8
  %cmp31 = icmp eq %struct._object* %35, null
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %for.end
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %36 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp34, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %38, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %41(%struct._object* %42)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.51, %if.end.44
  %43 = load i64, i64* %i, align 8
  %44 = load i64, i64* %tuplesize, align 8
  %cmp46 = icmp slt i64 %43, %44
  br i1 %cmp46, label %for.body.47, label %for.end.53

for.body.47:                                      ; preds = %for.cond.45
  %45 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc48 = add i64 %45, 1
  store i64 %inc48, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %46 = load i64, i64* %i, align 8
  %47 = load %struct._object*, %struct._object** %result, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*
  %ob_item49 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1
  %arrayidx50 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item49, i32 0, i64 %46
  store %struct._object* @_Py_NoneStruct, %struct._object** %arrayidx50, align 8
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.47
  %49 = load i64, i64* %i, align 8
  %inc52 = add i64 %49, 1
  store i64 %inc52, i64* %i, align 8
  br label %for.cond.45

for.end.53:                                       ; preds = %for.cond.45
  %50 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 36
  %51 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %52 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call54 = call %struct._object* %51(%struct._typeobject* %52, i64 0)
  %53 = bitcast %struct._object* %call54 to %struct.ziplongestobject*
  store %struct.ziplongestobject* %53, %struct.ziplongestobject** %lz, align 8
  %54 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz, align 8
  %cmp55 = icmp eq %struct.ziplongestobject* %54, null
  br i1 %cmp55, label %if.then.56, label %if.end.79

if.then.56:                                       ; preds = %for.end.53
  br label %do.body.57

do.body.57:                                       ; preds = %if.then.56
  %55 = load %struct._object*, %struct._object** %ittuple, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp58, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt59, align 8
  %dec60 = add i64 %57, -1
  store i64 %dec60, i64* %ob_refcnt59, align 8
  %cmp61 = icmp ne i64 %dec60, 0
  br i1 %cmp61, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66

if.else.63:                                       ; preds = %do.body.57
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8
  call void %60(%struct._object* %61)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  br label %do.body.68

do.body.68:                                       ; preds = %do.end.67
  %62 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp69, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt70, align 8
  %dec71 = add i64 %64, -1
  store i64 %dec71, i64* %ob_refcnt70, align 8
  %cmp72 = icmp ne i64 %dec71, 0
  br i1 %cmp72, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %do.body.68
  br label %if.end.77

if.else.74:                                       ; preds = %do.body.68
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  %ob_type75 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type75, align 8
  %tp_dealloc76 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc76, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp69, align 8
  call void %67(%struct._object* %68)
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.then.73
  br label %do.end.78

do.end.78:                                        ; preds = %if.end.77
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.79:                                        ; preds = %for.end.53
  %69 = load %struct._object*, %struct._object** %ittuple, align 8
  %70 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz, align 8
  %ittuple80 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %70, i32 0, i32 3
  store %struct._object* %69, %struct._object** %ittuple80, align 8
  %71 = load i64, i64* %tuplesize, align 8
  %72 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz, align 8
  %tuplesize81 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %72, i32 0, i32 1
  store i64 %71, i64* %tuplesize81, align 8
  %73 = load i64, i64* %tuplesize, align 8
  %74 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz, align 8
  %numactive = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %74, i32 0, i32 2
  store i64 %73, i64* %numactive, align 8
  %75 = load %struct._object*, %struct._object** %result, align 8
  %76 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz, align 8
  %result82 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %76, i32 0, i32 4
  store %struct._object* %75, %struct._object** %result82, align 8
  %77 = load %struct._object*, %struct._object** %fillvalue, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt83, align 8
  %inc84 = add i64 %78, 1
  store i64 %inc84, i64* %ob_refcnt83, align 8
  %79 = load %struct._object*, %struct._object** %fillvalue, align 8
  %80 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz, align 8
  %fillvalue85 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %80, i32 0, i32 5
  store %struct._object* %79, %struct._object** %fillvalue85, align 8
  %81 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz, align 8
  %82 = bitcast %struct.ziplongestobject* %81 to %struct._object*
  store %struct._object* %82, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.79, %do.end.78, %do.end.43, %do.end, %if.then.13, %if.then.9
  %83 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %83
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zip_longest_reduce(%struct.ziplongestobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.ziplongestobject*, align 8
  %i = alloca i32, align 4
  %args = alloca %struct._object*, align 8
  %elem = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ziplongestobject* %lz, %struct.ziplongestobject** %lz.addr, align 8
  %0 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %ittuple, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %call = call %struct._object* @PyTuple_New(i64 %3)
  store %struct._object* %call, %struct._object** %args, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %6 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple1 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %6, i32 0, i32 3
  %7 = load %struct._object*, %struct._object** %ittuple1, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size2, align 8
  %cmp3 = icmp slt i64 %conv, %9
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %ittuple5 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %ittuple5, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %14, %struct._object** %elem, align 8
  %15 = load %struct._object*, %struct._object** %elem, align 8
  %cmp6 = icmp eq %struct._object* %15, null
  br i1 %cmp6, label %if.then.8, label %if.else.18

if.then.8:                                        ; preds = %for.body
  %call9 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call9, %struct._object** %elem, align 8
  %16 = load %struct._object*, %struct._object** %elem, align 8
  %cmp10 = icmp eq %struct._object* %16, null
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.then.8
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %17 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.8
  br label %if.end.20

if.else.18:                                       ; preds = %for.body
  %24 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt19, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %ob_refcnt19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.18, %if.end.17
  %26 = load %struct._object*, %struct._object** %elem, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct._object*, %struct._object** %args, align 8
  %29 = bitcast %struct._object* %28 to %struct.PyTupleObject*
  %ob_item22 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %29, i32 0, i32 1
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item22, i32 0, i64 %idxprom21
  store %struct._object* %26, %struct._object** %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %30 = load i32, i32* %i, align 4
  %inc24 = add i32 %30, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %32 = bitcast %struct.ziplongestobject* %31 to %struct._object*
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %34 = load %struct._object*, %struct._object** %args, align 8
  %35 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %35, i32 0, i32 5
  %36 = load %struct._object*, %struct._object** %fillvalue, align 8
  %call26 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.66, i32 0, i32 0), %struct._typeobject* %33, %struct._object* %34, %struct._object* %36)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then
  %37 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %37
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zip_longest_setstate(%struct.ziplongestobject* %lz, %struct._object* %state) #0 {
entry:
  %lz.addr = alloca %struct.ziplongestobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.ziplongestobject* %lz, %struct.ziplongestobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %0, i32 0, i32 5
  %1 = load %struct._object*, %struct._object** %fillvalue, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue1 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %3, i32 0, i32 5
  store %struct._object* null, %struct._object** %fillvalue1, align 8
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
  %11 = load %struct._object*, %struct._object** %state.addr, align 8
  %12 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue7 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %12, i32 0, i32 5
  store %struct._object* %11, %struct._object** %fillvalue7, align 8
  %13 = load %struct.ziplongestobject*, %struct.ziplongestobject** %lz.addr, align 8
  %fillvalue8 = getelementptr inbounds %struct.ziplongestobject, %struct.ziplongestobject* %13, i32 0, i32 5
  %14 = load %struct._object*, %struct._object** %fillvalue8, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt9, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt9, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc10 = add i64 %16, 1
  store i64 %inc10, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

declare i64 @PySequence_Size(%struct._object*) #2

declare i64 @PyDict_Size(%struct._object*) #2

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @permutations_dealloc(%struct.permutationsobject* %po) #0 {
entry:
  %po.addr = alloca %struct.permutationsobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.permutationsobject* %po, %struct.permutationsobject** %po.addr, align 8
  %0 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %1 = bitcast %struct.permutationsobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %pool, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %indices = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %22, i32 0, i32 2
  %23 = load i64*, i64** %indices, align 8
  %24 = bitcast i64* %23 to i8*
  call void @PyMem_Free(i8* %24)
  %25 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %cycles = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %25, i32 0, i32 3
  %26 = load i64*, i64** %cycles, align 8
  %27 = bitcast i64* %26 to i8*
  call void @PyMem_Free(i8* %27)
  %28 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %29 = bitcast %struct.permutationsobject* %28 to %struct._object*
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 38
  %31 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %32 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %33 = bitcast %struct.permutationsobject* %32 to i8*
  call void %31(i8* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @permutations_traverse(%struct.permutationsobject* %po, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %po.addr = alloca %struct.permutationsobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.permutationsobject* %po, %struct.permutationsobject** %po.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool1 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %pool1, align 8
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
  %8 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %8, i32 0, i32 4
  %9 = load %struct._object*, %struct._object** %result, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result9 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %11, i32 0, i32 4
  %12 = load %struct._object*, %struct._object** %result9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @permutations_next(%struct.permutationsobject* %po) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %po.addr = alloca %struct.permutationsobject*, align 8
  %elem = alloca %struct._object*, align 8
  %oldelem = alloca %struct._object*, align 8
  %pool = alloca %struct._object*, align 8
  %indices = alloca i64*, align 8
  %cycles = alloca i64*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %k = alloca i64, align 8
  %index = alloca i64, align 8
  %old_result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  store %struct.permutationsobject* %po, %struct.permutationsobject** %po.addr, align 8
  %0 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool1 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool1, align 8
  store %struct._object* %1, %struct._object** %pool, align 8
  %2 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %indices2 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %2, i32 0, i32 2
  %3 = load i64*, i64** %indices2, align 8
  store i64* %3, i64** %indices, align 8
  %4 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %cycles3 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %4, i32 0, i32 3
  %5 = load i64*, i64** %cycles3, align 8
  store i64* %5, i64** %cycles, align 8
  %6 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result4 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %result4, align 8
  store %struct._object* %7, %struct._object** %result, align 8
  %8 = load %struct._object*, %struct._object** %pool, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %9, i32 0, i32 1
  %10 = load i64, i64* %ob_size, align 8
  store i64 %10, i64* %n, align 8
  %11 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r5 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %11, i32 0, i32 5
  %12 = load i64, i64* %r5, align 8
  store i64 %12, i64* %r, align 8
  %13 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %stopped = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %13, i32 0, i32 6
  %14 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %15, null
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %16 = load i64, i64* %r, align 8
  %call = call %struct._object* @PyTuple_New(i64 %16)
  store %struct._object* %call, %struct._object** %result, align 8
  %17 = load %struct._object*, %struct._object** %result, align 8
  %cmp7 = icmp eq %struct._object* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  br label %empty

if.end.9:                                         ; preds = %if.then.6
  %18 = load %struct._object*, %struct._object** %result, align 8
  %19 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result10 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %19, i32 0, i32 4
  store %struct._object* %18, %struct._object** %result10, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %20 = load i64, i64* %i, align 8
  %21 = load i64, i64* %r, align 8
  %cmp11 = icmp slt i64 %20, %21
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i64, i64* %i, align 8
  %23 = load i64*, i64** %indices, align 8
  %arrayidx = getelementptr i64, i64* %23, i64 %22
  %24 = load i64, i64* %arrayidx, align 8
  store i64 %24, i64* %index, align 8
  %25 = load i64, i64* %index, align 8
  %26 = load %struct._object*, %struct._object** %pool, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %27, i32 0, i32 1
  %arrayidx12 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %25
  %28 = load %struct._object*, %struct._object** %arrayidx12, align 8
  store %struct._object* %28, %struct._object** %elem, align 8
  %29 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %31 = load %struct._object*, %struct._object** %elem, align 8
  %32 = load i64, i64* %i, align 8
  %33 = load %struct._object*, %struct._object** %result, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyTupleObject*
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %34, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 %32
  store %struct._object* %31, %struct._object** %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i64, i64* %i, align 8
  %inc15 = add i64 %35, 1
  store i64 %inc15, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.108

if.else:                                          ; preds = %if.end
  %36 = load i64, i64* %n, align 8
  %cmp16 = icmp eq i64 %36, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.else
  br label %empty

if.end.18:                                        ; preds = %if.else
  %37 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt19, align 8
  %cmp20 = icmp sgt i64 %38, 1
  br i1 %cmp20, label %if.then.21, label %if.end.44

if.then.21:                                       ; preds = %if.end.18
  %39 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %39, %struct._object** %old_result, align 8
  %40 = load i64, i64* %r, align 8
  %call22 = call %struct._object* @PyTuple_New(i64 %40)
  store %struct._object* %call22, %struct._object** %result, align 8
  %41 = load %struct._object*, %struct._object** %result, align 8
  %cmp23 = icmp eq %struct._object* %41, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  br label %empty

if.end.25:                                        ; preds = %if.then.21
  %42 = load %struct._object*, %struct._object** %result, align 8
  %43 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result26 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %43, i32 0, i32 4
  store %struct._object* %42, %struct._object** %result26, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.36, %if.end.25
  %44 = load i64, i64* %i, align 8
  %45 = load i64, i64* %r, align 8
  %cmp28 = icmp slt i64 %44, %45
  br i1 %cmp28, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.27
  %46 = load i64, i64* %i, align 8
  %47 = load %struct._object*, %struct._object** %old_result, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 %46
  %49 = load %struct._object*, %struct._object** %arrayidx31, align 8
  store %struct._object* %49, %struct._object** %elem, align 8
  %50 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt32, align 8
  %inc33 = add i64 %51, 1
  store i64 %inc33, i64* %ob_refcnt32, align 8
  %52 = load %struct._object*, %struct._object** %elem, align 8
  %53 = load i64, i64* %i, align 8
  %54 = load %struct._object*, %struct._object** %result, align 8
  %55 = bitcast %struct._object* %54 to %struct.PyTupleObject*
  %ob_item34 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %55, i32 0, i32 1
  %arrayidx35 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item34, i32 0, i64 %53
  store %struct._object* %52, %struct._object** %arrayidx35, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %56 = load i64, i64* %i, align 8
  %inc37 = add i64 %56, 1
  store i64 %inc37, i64* %i, align 8
  br label %for.cond.27

for.end.38:                                       ; preds = %for.cond.27
  br label %do.body

do.body:                                          ; preds = %for.end.38
  %57 = load %struct._object*, %struct._object** %old_result, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt39, align 8
  %dec = add i64 %59, -1
  store i64 %dec, i64* %ob_refcnt39, align 8
  %cmp40 = icmp ne i64 %dec, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body
  br label %if.end.43

if.else.42:                                       ; preds = %do.body
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %62(%struct._object* %63)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end

do.end:                                           ; preds = %if.end.43
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %if.end.18
  %64 = load i64, i64* %r, align 8
  %sub = sub i64 %64, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.102, %if.end.44
  %65 = load i64, i64* %i, align 8
  %cmp46 = icmp sge i64 %65, 0
  br i1 %cmp46, label %for.body.47, label %for.end.104

for.body.47:                                      ; preds = %for.cond.45
  %66 = load i64, i64* %i, align 8
  %67 = load i64*, i64** %cycles, align 8
  %arrayidx48 = getelementptr i64, i64* %67, i64 %66
  %68 = load i64, i64* %arrayidx48, align 8
  %sub49 = sub i64 %68, 1
  store i64 %sub49, i64* %arrayidx48, align 8
  %69 = load i64, i64* %i, align 8
  %70 = load i64*, i64** %cycles, align 8
  %arrayidx50 = getelementptr i64, i64* %70, i64 %69
  %71 = load i64, i64* %arrayidx50, align 8
  %cmp51 = icmp eq i64 %71, 0
  br i1 %cmp51, label %if.then.52, label %if.else.67

if.then.52:                                       ; preds = %for.body.47
  %72 = load i64, i64* %i, align 8
  %73 = load i64*, i64** %indices, align 8
  %arrayidx53 = getelementptr i64, i64* %73, i64 %72
  %74 = load i64, i64* %arrayidx53, align 8
  store i64 %74, i64* %index, align 8
  %75 = load i64, i64* %i, align 8
  store i64 %75, i64* %j, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.60, %if.then.52
  %76 = load i64, i64* %j, align 8
  %77 = load i64, i64* %n, align 8
  %sub55 = sub i64 %77, 1
  %cmp56 = icmp slt i64 %76, %sub55
  br i1 %cmp56, label %for.body.57, label %for.end.62

for.body.57:                                      ; preds = %for.cond.54
  %78 = load i64, i64* %j, align 8
  %add = add i64 %78, 1
  %79 = load i64*, i64** %indices, align 8
  %arrayidx58 = getelementptr i64, i64* %79, i64 %add
  %80 = load i64, i64* %arrayidx58, align 8
  %81 = load i64, i64* %j, align 8
  %82 = load i64*, i64** %indices, align 8
  %arrayidx59 = getelementptr i64, i64* %82, i64 %81
  store i64 %80, i64* %arrayidx59, align 8
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.57
  %83 = load i64, i64* %j, align 8
  %inc61 = add i64 %83, 1
  store i64 %inc61, i64* %j, align 8
  br label %for.cond.54

for.end.62:                                       ; preds = %for.cond.54
  %84 = load i64, i64* %index, align 8
  %85 = load i64, i64* %n, align 8
  %sub63 = sub i64 %85, 1
  %86 = load i64*, i64** %indices, align 8
  %arrayidx64 = getelementptr i64, i64* %86, i64 %sub63
  store i64 %84, i64* %arrayidx64, align 8
  %87 = load i64, i64* %n, align 8
  %88 = load i64, i64* %i, align 8
  %sub65 = sub i64 %87, %88
  %89 = load i64, i64* %i, align 8
  %90 = load i64*, i64** %cycles, align 8
  %arrayidx66 = getelementptr i64, i64* %90, i64 %89
  store i64 %sub65, i64* %arrayidx66, align 8
  br label %if.end.101

if.else.67:                                       ; preds = %for.body.47
  %91 = load i64, i64* %i, align 8
  %92 = load i64*, i64** %cycles, align 8
  %arrayidx68 = getelementptr i64, i64* %92, i64 %91
  %93 = load i64, i64* %arrayidx68, align 8
  store i64 %93, i64* %j, align 8
  %94 = load i64, i64* %i, align 8
  %95 = load i64*, i64** %indices, align 8
  %arrayidx69 = getelementptr i64, i64* %95, i64 %94
  %96 = load i64, i64* %arrayidx69, align 8
  store i64 %96, i64* %index, align 8
  %97 = load i64, i64* %n, align 8
  %98 = load i64, i64* %j, align 8
  %sub70 = sub i64 %97, %98
  %99 = load i64*, i64** %indices, align 8
  %arrayidx71 = getelementptr i64, i64* %99, i64 %sub70
  %100 = load i64, i64* %arrayidx71, align 8
  %101 = load i64, i64* %i, align 8
  %102 = load i64*, i64** %indices, align 8
  %arrayidx72 = getelementptr i64, i64* %102, i64 %101
  store i64 %100, i64* %arrayidx72, align 8
  %103 = load i64, i64* %index, align 8
  %104 = load i64, i64* %n, align 8
  %105 = load i64, i64* %j, align 8
  %sub73 = sub i64 %104, %105
  %106 = load i64*, i64** %indices, align 8
  %arrayidx74 = getelementptr i64, i64* %106, i64 %sub73
  store i64 %103, i64* %arrayidx74, align 8
  %107 = load i64, i64* %i, align 8
  store i64 %107, i64* %k, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.98, %if.else.67
  %108 = load i64, i64* %k, align 8
  %109 = load i64, i64* %r, align 8
  %cmp76 = icmp slt i64 %108, %109
  br i1 %cmp76, label %for.body.77, label %for.end.100

for.body.77:                                      ; preds = %for.cond.75
  %110 = load i64, i64* %k, align 8
  %111 = load i64*, i64** %indices, align 8
  %arrayidx78 = getelementptr i64, i64* %111, i64 %110
  %112 = load i64, i64* %arrayidx78, align 8
  store i64 %112, i64* %index, align 8
  %113 = load i64, i64* %index, align 8
  %114 = load %struct._object*, %struct._object** %pool, align 8
  %115 = bitcast %struct._object* %114 to %struct.PyTupleObject*
  %ob_item79 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %115, i32 0, i32 1
  %arrayidx80 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item79, i32 0, i64 %113
  %116 = load %struct._object*, %struct._object** %arrayidx80, align 8
  store %struct._object* %116, %struct._object** %elem, align 8
  %117 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt81, align 8
  %inc82 = add i64 %118, 1
  store i64 %inc82, i64* %ob_refcnt81, align 8
  %119 = load i64, i64* %k, align 8
  %120 = load %struct._object*, %struct._object** %result, align 8
  %121 = bitcast %struct._object* %120 to %struct.PyTupleObject*
  %ob_item83 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %121, i32 0, i32 1
  %arrayidx84 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item83, i32 0, i64 %119
  %122 = load %struct._object*, %struct._object** %arrayidx84, align 8
  store %struct._object* %122, %struct._object** %oldelem, align 8
  %123 = load %struct._object*, %struct._object** %elem, align 8
  %124 = load i64, i64* %k, align 8
  %125 = load %struct._object*, %struct._object** %result, align 8
  %126 = bitcast %struct._object* %125 to %struct.PyTupleObject*
  %ob_item85 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %126, i32 0, i32 1
  %arrayidx86 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item85, i32 0, i64 %124
  store %struct._object* %123, %struct._object** %arrayidx86, align 8
  br label %do.body.87

do.body.87:                                       ; preds = %for.body.77
  %127 = load %struct._object*, %struct._object** %oldelem, align 8
  store %struct._object* %127, %struct._object** %_py_decref_tmp88, align 8
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 0
  %129 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %129, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.96

if.else.93:                                       ; preds = %do.body.87
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 4
  %132 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc95, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %132(%struct._object* %133)
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.97

do.end.97:                                        ; preds = %if.end.96
  br label %for.inc.98

for.inc.98:                                       ; preds = %do.end.97
  %134 = load i64, i64* %k, align 8
  %inc99 = add i64 %134, 1
  store i64 %inc99, i64* %k, align 8
  br label %for.cond.75

for.end.100:                                      ; preds = %for.cond.75
  br label %for.end.104

if.end.101:                                       ; preds = %for.end.62
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %135 = load i64, i64* %i, align 8
  %dec103 = add i64 %135, -1
  store i64 %dec103, i64* %i, align 8
  br label %for.cond.45

for.end.104:                                      ; preds = %for.end.100, %for.cond.45
  %136 = load i64, i64* %i, align 8
  %cmp105 = icmp slt i64 %136, 0
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %for.end.104
  br label %empty

if.end.107:                                       ; preds = %for.end.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %for.end
  %137 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt109, align 8
  %inc110 = add i64 %138, 1
  store i64 %inc110, i64* %ob_refcnt109, align 8
  %139 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %139, %struct._object** %retval
  br label %return

empty:                                            ; preds = %if.then.106, %if.then.24, %if.then.17, %if.then.8
  %140 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %stopped111 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %140, i32 0, i32 6
  store i32 1, i32* %stopped111, align 4
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %empty, %if.end.108, %if.then
  %141 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %141
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @permutations_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %po = alloca %struct.permutationsobject*, align 8
  %n = alloca i64, align 8
  %r = alloca i64, align 8
  %robj = alloca %struct._object*, align 8
  %pool = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %indices = alloca i64*, align 8
  %cycles = alloca i64*, align 8
  %i = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %robj, align 8
  store %struct._object* null, %struct._object** %pool, align 8
  store %struct._object* null, %struct._object** %iterable, align 8
  store i64* null, i64** %indices, align 8
  store i64* null, i64** %cycles, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.73, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @permutations_new.kwargs, i32 0, i32 0), %struct._object** %iterable, %struct._object** %robj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @PySequence_Tuple(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %pool, align 8
  %3 = load %struct._object*, %struct._object** %pool, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %error

if.end.3:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %pool, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %n, align 8
  %7 = load i64, i64* %n, align 8
  store i64 %7, i64* %r, align 8
  %8 = load %struct._object*, %struct._object** %robj, align 8
  %cmp4 = icmp ne %struct._object* %8, @_Py_NoneStruct
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %robj, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags, align 8
  %and = and i64 %11, 16777216
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i32 0, i32 0))
  br label %error

if.end.8:                                         ; preds = %if.then.5
  %13 = load %struct._object*, %struct._object** %robj, align 8
  %call9 = call i64 @PyLong_AsSsize_t(%struct._object* %13)
  store i64 %call9, i64* %r, align 8
  %14 = load i64, i64* %r, align 8
  %cmp10 = icmp eq i64 %14, -1
  br i1 %cmp10, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.8
  %call11 = call %struct._object* @PyErr_Occurred()
  %tobool12 = icmp ne %struct._object* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true
  br label %error

if.end.14:                                        ; preds = %land.lhs.true, %if.end.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.3
  %15 = load i64, i64* %r, align 8
  %cmp16 = icmp slt i64 %15, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0))
  br label %error

if.end.18:                                        ; preds = %if.end.15
  %17 = load i64, i64* %n, align 8
  %mul = mul i64 %17, 8
  %call19 = call i8* @PyMem_Malloc(i64 %mul)
  %18 = bitcast i8* %call19 to i64*
  store i64* %18, i64** %indices, align 8
  %19 = load i64, i64* %r, align 8
  %mul20 = mul i64 %19, 8
  %call21 = call i8* @PyMem_Malloc(i64 %mul20)
  %20 = bitcast i8* %call21 to i64*
  store i64* %20, i64** %cycles, align 8
  %21 = load i64*, i64** %indices, align 8
  %cmp22 = icmp eq i64* %21, null
  br i1 %cmp22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.18
  %22 = load i64*, i64** %cycles, align 8
  %cmp23 = icmp eq i64* %22, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.18
  %call25 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.26:                                        ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.26
  %23 = load i64, i64* %i, align 8
  %24 = load i64, i64* %n, align 8
  %cmp27 = icmp slt i64 %23, %24
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* %i, align 8
  %27 = load i64*, i64** %indices, align 8
  %arrayidx = getelementptr i64, i64* %27, i64 %26
  store i64 %25, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i64, i64* %i, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.32, %for.end
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %r, align 8
  %cmp29 = icmp slt i64 %29, %30
  br i1 %cmp29, label %for.body.30, label %for.end.34

for.body.30:                                      ; preds = %for.cond.28
  %31 = load i64, i64* %n, align 8
  %32 = load i64, i64* %i, align 8
  %sub = sub i64 %31, %32
  %33 = load i64, i64* %i, align 8
  %34 = load i64*, i64** %cycles, align 8
  %arrayidx31 = getelementptr i64, i64* %34, i64 %33
  store i64 %sub, i64* %arrayidx31, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.30
  %35 = load i64, i64* %i, align 8
  %inc33 = add i64 %35, 1
  store i64 %inc33, i64* %i, align 8
  br label %for.cond.28

for.end.34:                                       ; preds = %for.cond.28
  %36 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 36
  %37 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %38 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call35 = call %struct._object* %37(%struct._typeobject* %38, i64 0)
  %39 = bitcast %struct._object* %call35 to %struct.permutationsobject*
  store %struct.permutationsobject* %39, %struct.permutationsobject** %po, align 8
  %40 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %cmp36 = icmp eq %struct.permutationsobject* %40, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end.34
  br label %error

if.end.38:                                        ; preds = %for.end.34
  %41 = load %struct._object*, %struct._object** %pool, align 8
  %42 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %pool39 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %42, i32 0, i32 1
  store %struct._object* %41, %struct._object** %pool39, align 8
  %43 = load i64*, i64** %indices, align 8
  %44 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %indices40 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %44, i32 0, i32 2
  store i64* %43, i64** %indices40, align 8
  %45 = load i64*, i64** %cycles, align 8
  %46 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %cycles41 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %46, i32 0, i32 3
  store i64* %45, i64** %cycles41, align 8
  %47 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %result = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %47, i32 0, i32 4
  store %struct._object* null, %struct._object** %result, align 8
  %48 = load i64, i64* %r, align 8
  %49 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %r42 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %49, i32 0, i32 5
  store i64 %48, i64* %r42, align 8
  %50 = load i64, i64* %r, align 8
  %51 = load i64, i64* %n, align 8
  %cmp43 = icmp sgt i64 %50, %51
  %cond = select i1 %cmp43, i32 1, i32 0
  %52 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %stopped = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %52, i32 0, i32 6
  store i32 %cond, i32* %stopped, align 4
  %53 = load %struct.permutationsobject*, %struct.permutationsobject** %po, align 8
  %54 = bitcast %struct.permutationsobject* %53 to %struct._object*
  store %struct._object* %54, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.37, %if.then.24, %if.then.17, %if.then.13, %if.then.7, %if.then.2
  %55 = load i64*, i64** %indices, align 8
  %cmp44 = icmp ne i64* %55, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %error
  %56 = load i64*, i64** %indices, align 8
  %57 = bitcast i64* %56 to i8*
  call void @PyMem_Free(i8* %57)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %error
  %58 = load i64*, i64** %cycles, align 8
  %cmp47 = icmp ne i64* %58, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.46
  %59 = load i64*, i64** %cycles, align 8
  %60 = bitcast i64* %59 to i8*
  call void @PyMem_Free(i8* %60)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.46
  br label %do.body

do.body:                                          ; preds = %if.end.49
  %61 = load %struct._object*, %struct._object** %pool, align 8
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp, align 8
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp50 = icmp ne %struct._object* %62, null
  br i1 %cmp50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %do.body
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %65, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp53 = icmp ne i64 %dec, 0
  br i1 %cmp53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %do.body.52
  br label %if.end.56

if.else:                                          ; preds = %do.body.52
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %68(%struct._object* %69)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.54
  br label %do.end

do.end:                                           ; preds = %if.end.56
  br label %if.end.57

if.end.57:                                        ; preds = %do.end, %do.body
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.58, %if.end.38, %if.then
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @permutations_reduce(%struct.permutationsobject* %po) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %po.addr = alloca %struct.permutationsobject*, align 8
  %indices = alloca %struct._object*, align 8
  %cycles = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %index = alloca %struct._object*, align 8
  %index26 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  store %struct.permutationsobject* %po, %struct.permutationsobject** %po.addr, align 8
  %0 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %3 = bitcast %struct.permutationsobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %pool, align 8
  %7 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %7, i32 0, i32 5
  %8 = load i64, i64* %r, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %stopped = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %9, i32 0, i32 6
  %10 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.1, label %if.else.5

if.then.1:                                        ; preds = %if.else
  %11 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %12 = bitcast %struct.permutationsobject* %11 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %14 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r3 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %14, i32 0, i32 5
  %15 = load i64, i64* %r3, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct._typeobject* %13, i64 %15)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %indices, align 8
  store %struct._object* null, %struct._object** %cycles, align 8
  %16 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool6 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %pool6, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size, align 8
  store i64 %19, i64* %n, align 8
  %20 = load i64, i64* %n, align 8
  %call7 = call %struct._object* @PyTuple_New(i64 %20)
  store %struct._object* %call7, %struct._object** %indices, align 8
  %21 = load %struct._object*, %struct._object** %indices, align 8
  %cmp8 = icmp eq %struct._object* %21, null
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else.5
  br label %err

if.end:                                           ; preds = %if.else.5
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %22 = load i64, i64* %i, align 8
  %23 = load i64, i64* %n, align 8
  %cmp10 = icmp slt i64 %22, %23
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i64, i64* %i, align 8
  %25 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %indices11 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %25, i32 0, i32 2
  %26 = load i64*, i64** %indices11, align 8
  %arrayidx = getelementptr i64, i64* %26, i64 %24
  %27 = load i64, i64* %arrayidx, align 8
  %call12 = call %struct._object* @PyLong_FromSsize_t(i64 %27)
  store %struct._object* %call12, %struct._object** %index, align 8
  %28 = load %struct._object*, %struct._object** %index, align 8
  %tobool13 = icmp ne %struct._object* %28, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %for.body
  br label %err

if.end.15:                                        ; preds = %for.body
  %29 = load %struct._object*, %struct._object** %index, align 8
  %30 = load i64, i64* %i, align 8
  %31 = load %struct._object*, %struct._object** %indices, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %32, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %30
  store %struct._object* %29, %struct._object** %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %33 = load i64, i64* %i, align 8
  %inc = add i64 %33, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r17 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %34, i32 0, i32 5
  %35 = load i64, i64* %r17, align 8
  %call18 = call %struct._object* @PyTuple_New(i64 %35)
  store %struct._object* %call18, %struct._object** %cycles, align 8
  %36 = load %struct._object*, %struct._object** %cycles, align 8
  %cmp19 = icmp eq %struct._object* %36, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  br label %err

if.end.21:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.35, %if.end.21
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r23 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %38, i32 0, i32 5
  %39 = load i64, i64* %r23, align 8
  %cmp24 = icmp slt i64 %37, %39
  br i1 %cmp24, label %for.body.25, label %for.end.37

for.body.25:                                      ; preds = %for.cond.22
  %40 = load i64, i64* %i, align 8
  %41 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %cycles27 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %41, i32 0, i32 3
  %42 = load i64*, i64** %cycles27, align 8
  %arrayidx28 = getelementptr i64, i64* %42, i64 %40
  %43 = load i64, i64* %arrayidx28, align 8
  %call29 = call %struct._object* @PyLong_FromSsize_t(i64 %43)
  store %struct._object* %call29, %struct._object** %index26, align 8
  %44 = load %struct._object*, %struct._object** %index26, align 8
  %tobool30 = icmp ne %struct._object* %44, null
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %for.body.25
  br label %err

if.end.32:                                        ; preds = %for.body.25
  %45 = load %struct._object*, %struct._object** %index26, align 8
  %46 = load i64, i64* %i, align 8
  %47 = load %struct._object*, %struct._object** %cycles, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyTupleObject*
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %48, i32 0, i32 1
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 %46
  store %struct._object* %45, %struct._object** %arrayidx34, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.32
  %49 = load i64, i64* %i, align 8
  %inc36 = add i64 %49, 1
  store i64 %inc36, i64* %i, align 8
  br label %for.cond.22

for.end.37:                                       ; preds = %for.cond.22
  %50 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %51 = bitcast %struct.permutationsobject* %50 to %struct._object*
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %53 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool39 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %53, i32 0, i32 1
  %54 = load %struct._object*, %struct._object** %pool39, align 8
  %55 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r40 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %55, i32 0, i32 5
  %56 = load i64, i64* %r40, align 8
  %57 = load %struct._object*, %struct._object** %indices, align 8
  %58 = load %struct._object*, %struct._object** %cycles, align 8
  %call41 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), %struct._typeobject* %52, %struct._object* %54, i64 %56, %struct._object* %57, %struct._object* %58)
  store %struct._object* %call41, %struct._object** %retval
  br label %return

err:                                              ; preds = %if.then.31, %if.then.20, %if.then.14, %if.then.9
  br label %do.body

do.body:                                          ; preds = %err
  %59 = load %struct._object*, %struct._object** %indices, align 8
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp, align 8
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp42 = icmp ne %struct._object* %60, null
  br i1 %cmp42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %do.body
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %63, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp45 = icmp ne i64 %dec, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.44
  br label %if.end.49

if.else.47:                                       ; preds = %do.body.44
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %66(%struct._object* %67)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end

do.end:                                           ; preds = %if.end.49
  br label %if.end.50

if.end.50:                                        ; preds = %do.end, %do.body
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %68 = load %struct._object*, %struct._object** %cycles, align 8
  store %struct._object* %68, %struct._object** %_py_xdecref_tmp53, align 8
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  %cmp54 = icmp ne %struct._object* %69, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %do.body.52
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp53, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp57, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %72, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %75(%struct._object* %76)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.52
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.68, %for.end.37, %if.then.1, %if.then
  %77 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %77
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @permutations_setstate(%struct.permutationsobject* %po, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %po.addr = alloca %struct.permutationsobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %indices = alloca %struct._object*, align 8
  %cycles = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %indexObject = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %indexObject26 = alloca %struct._object*, align 8
  %index29 = alloca i64, align 8
  %element = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.permutationsobject* %po, %struct.permutationsobject** %po.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), %struct._typeobject* @PyTuple_Type, %struct._object** %indices, %struct._typeobject* @PyTuple_Type, %struct._object** %cycles)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %pool, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %n, align 8
  %5 = load %struct._object*, %struct._object** %indices, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size1, align 8
  %8 = load i64, i64* %n, align 8
  %cmp = icmp ne i64 %7, %8
  br i1 %cmp, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %cycles, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %10, i32 0, i32 1
  %11 = load i64, i64* %ob_size2, align 8
  %12 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %12, i32 0, i32 5
  %13 = load i64, i64* %r, align 8
  %cmp3 = icmp ne i64 %11, %13
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %15 = load i64, i64* %i, align 8
  %16 = load i64, i64* %n, align 8
  %cmp6 = icmp slt i64 %15, %16
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i64, i64* %i, align 8
  %18 = load %struct._object*, %struct._object** %indices, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %19, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %17
  %20 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %20, %struct._object** %indexObject, align 8
  %21 = load %struct._object*, %struct._object** %indexObject, align 8
  %call7 = call i64 @PyLong_AsSsize_t(%struct._object* %21)
  store i64 %call7, i64* %index, align 8
  %22 = load i64, i64* %index, align 8
  %cmp8 = icmp slt i64 %22, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %for.body
  %call9 = call %struct._object* @PyErr_Occurred()
  %tobool10 = icmp ne %struct._object* %call9, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %for.body
  %23 = load i64, i64* %index, align 8
  %cmp13 = icmp slt i64 %23, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.12
  store i64 0, i64* %index, align 8
  br label %if.end.19

if.else:                                          ; preds = %if.end.12
  %24 = load i64, i64* %index, align 8
  %25 = load i64, i64* %n, align 8
  %sub = sub i64 %25, 1
  %cmp15 = icmp sgt i64 %24, %sub
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.else
  %26 = load i64, i64* %n, align 8
  %sub17 = sub i64 %26, 1
  store i64 %sub17, i64* %index, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.else
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.14
  %27 = load i64, i64* %index, align 8
  %28 = load i64, i64* %i, align 8
  %29 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %indices20 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %29, i32 0, i32 2
  %30 = load i64*, i64** %indices20, align 8
  %arrayidx21 = getelementptr i64, i64* %30, i64 %28
  store i64 %27, i64* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %31 = load i64, i64* %i, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.48, %for.end
  %32 = load i64, i64* %i, align 8
  %33 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r23 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %33, i32 0, i32 5
  %34 = load i64, i64* %r23, align 8
  %cmp24 = icmp slt i64 %32, %34
  br i1 %cmp24, label %for.body.25, label %for.end.50

for.body.25:                                      ; preds = %for.cond.22
  %35 = load i64, i64* %i, align 8
  %36 = load %struct._object*, %struct._object** %cycles, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyTupleObject*
  %ob_item27 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %37, i32 0, i32 1
  %arrayidx28 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item27, i32 0, i64 %35
  %38 = load %struct._object*, %struct._object** %arrayidx28, align 8
  store %struct._object* %38, %struct._object** %indexObject26, align 8
  %39 = load %struct._object*, %struct._object** %indexObject26, align 8
  %call30 = call i64 @PyLong_AsSsize_t(%struct._object* %39)
  store i64 %call30, i64* %index29, align 8
  %40 = load i64, i64* %index29, align 8
  %cmp31 = icmp slt i64 %40, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.36

land.lhs.true.32:                                 ; preds = %for.body.25
  %call33 = call %struct._object* @PyErr_Occurred()
  %tobool34 = icmp ne %struct._object* %call33, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.32, %for.body.25
  %41 = load i64, i64* %index29, align 8
  %cmp37 = icmp slt i64 %41, 1
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.end.36
  store i64 1, i64* %index29, align 8
  br label %if.end.45

if.else.39:                                       ; preds = %if.end.36
  %42 = load i64, i64* %index29, align 8
  %43 = load i64, i64* %n, align 8
  %44 = load i64, i64* %i, align 8
  %sub40 = sub i64 %43, %44
  %cmp41 = icmp sgt i64 %42, %sub40
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.else.39
  %45 = load i64, i64* %n, align 8
  %46 = load i64, i64* %i, align 8
  %sub43 = sub i64 %45, %46
  store i64 %sub43, i64* %index29, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %if.else.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.38
  %47 = load i64, i64* %index29, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %cycles46 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %49, i32 0, i32 3
  %50 = load i64*, i64** %cycles46, align 8
  %arrayidx47 = getelementptr i64, i64* %50, i64 %48
  store i64 %47, i64* %arrayidx47, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.45
  %51 = load i64, i64* %i, align 8
  %inc49 = add i64 %51, 1
  store i64 %inc49, i64* %i, align 8
  br label %for.cond.22

for.end.50:                                       ; preds = %for.cond.22
  %52 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r51 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %52, i32 0, i32 5
  %53 = load i64, i64* %r51, align 8
  %call52 = call %struct._object* @PyTuple_New(i64 %53)
  store %struct._object* %call52, %struct._object** %result, align 8
  %54 = load %struct._object*, %struct._object** %result, align 8
  %cmp53 = icmp eq %struct._object* %54, null
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %for.end.50
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.55:                                        ; preds = %for.end.50
  store i64 0, i64* %i, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.68, %if.end.55
  %55 = load i64, i64* %i, align 8
  %56 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r57 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %56, i32 0, i32 5
  %57 = load i64, i64* %r57, align 8
  %cmp58 = icmp slt i64 %55, %57
  br i1 %cmp58, label %for.body.59, label %for.end.70

for.body.59:                                      ; preds = %for.cond.56
  %58 = load i64, i64* %i, align 8
  %59 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %indices60 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %59, i32 0, i32 2
  %60 = load i64*, i64** %indices60, align 8
  %arrayidx61 = getelementptr i64, i64* %60, i64 %58
  %61 = load i64, i64* %arrayidx61, align 8
  %62 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool62 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %62, i32 0, i32 1
  %63 = load %struct._object*, %struct._object** %pool62, align 8
  %64 = bitcast %struct._object* %63 to %struct.PyTupleObject*
  %ob_item63 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %64, i32 0, i32 1
  %arrayidx64 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item63, i32 0, i64 %61
  %65 = load %struct._object*, %struct._object** %arrayidx64, align 8
  store %struct._object* %65, %struct._object** %element, align 8
  %66 = load %struct._object*, %struct._object** %element, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt, align 8
  %inc65 = add i64 %67, 1
  store i64 %inc65, i64* %ob_refcnt, align 8
  %68 = load %struct._object*, %struct._object** %element, align 8
  %69 = load i64, i64* %i, align 8
  %70 = load %struct._object*, %struct._object** %result, align 8
  %71 = bitcast %struct._object* %70 to %struct.PyTupleObject*
  %ob_item66 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %71, i32 0, i32 1
  %arrayidx67 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item66, i32 0, i64 %69
  store %struct._object* %68, %struct._object** %arrayidx67, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.59
  %72 = load i64, i64* %i, align 8
  %inc69 = add i64 %72, 1
  store i64 %inc69, i64* %i, align 8
  br label %for.cond.56

for.end.70:                                       ; preds = %for.cond.56
  br label %do.body

do.body:                                          ; preds = %for.end.70
  %73 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result71 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %73, i32 0, i32 4
  %74 = load %struct._object*, %struct._object** %result71, align 8
  store %struct._object* %74, %struct._object** %_py_tmp, align 8
  %75 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp72 = icmp ne %struct._object* %75, null
  br i1 %cmp72, label %if.then.73, label %if.end.81

if.then.73:                                       ; preds = %do.body
  %76 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result74 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %76, i32 0, i32 4
  store %struct._object* null, %struct._object** %result74, align 8
  br label %do.body.75

do.body.75:                                       ; preds = %if.then.73
  %77 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %77, %struct._object** %_py_decref_tmp, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0
  %79 = load i64, i64* %ob_refcnt76, align 8
  %dec = add i64 %79, -1
  store i64 %dec, i64* %ob_refcnt76, align 8
  %cmp77 = icmp ne i64 %dec, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.75
  br label %if.end.80

if.else.79:                                       ; preds = %do.body.75
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %82(%struct._object* %83)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end

do.end:                                           ; preds = %if.end.80
  br label %if.end.81

if.end.81:                                        ; preds = %do.end, %do.body
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  %84 = load %struct._object*, %struct._object** %result, align 8
  %85 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %result83 = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %85, i32 0, i32 4
  store %struct._object* %84, %struct._object** %result83, align 8
  %86 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc84 = add i64 %86, 1
  store i64 %inc84, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.82, %if.then.54, %if.then.35, %if.then.11, %if.then.4, %if.then
  %87 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %87
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @permutations_sizeof(%struct.permutationsobject* %po, i8* %unused) #0 {
entry:
  %po.addr = alloca %struct.permutationsobject*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.permutationsobject* %po, %struct.permutationsobject** %po.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 64, i64* %res, align 8
  %0 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %pool = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pool, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %mul = mul i64 %3, 8
  %4 = load i64, i64* %res, align 8
  %add = add i64 %4, %mul
  store i64 %add, i64* %res, align 8
  %5 = load %struct.permutationsobject*, %struct.permutationsobject** %po.addr, align 8
  %r = getelementptr inbounds %struct.permutationsobject, %struct.permutationsobject* %5, i32 0, i32 5
  %6 = load i64, i64* %r, align 8
  %mul1 = mul i64 %6, 8
  %7 = load i64, i64* %res, align 8
  %add2 = add i64 %7, %mul1
  store i64 %add2, i64* %res, align 8
  %8 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %8)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal void @product_dealloc(%struct.productobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.productobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct.productobject* %lz, %struct.productobject** %lz.addr, align 8
  %0 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %1 = bitcast %struct.productobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools = getelementptr inbounds %struct.productobject, %struct.productobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %pools, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.productobject, %struct.productobject* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %22 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %indices = getelementptr inbounds %struct.productobject, %struct.productobject* %22, i32 0, i32 2
  %23 = load i64*, i64** %indices, align 8
  %cmp23 = icmp ne i64* %23, null
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %do.end.22
  %24 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %indices25 = getelementptr inbounds %struct.productobject, %struct.productobject* %24, i32 0, i32 2
  %25 = load i64*, i64** %indices25, align 8
  %26 = bitcast i64* %25 to i8*
  call void @PyMem_Free(i8* %26)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %do.end.22
  %27 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %28 = bitcast %struct.productobject* %27 to %struct._object*
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 38
  %30 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %31 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %32 = bitcast %struct.productobject* %31 to i8*
  call void %30(i8* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @product_traverse(%struct.productobject* %lz, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %lz.addr = alloca %struct.productobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.productobject* %lz, %struct.productobject** %lz.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools = getelementptr inbounds %struct.productobject, %struct.productobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pools, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools1 = getelementptr inbounds %struct.productobject, %struct.productobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %pools1, align 8
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
  %8 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.productobject, %struct.productobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %result, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result9 = getelementptr inbounds %struct.productobject, %struct.productobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %result9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @product_next(%struct.productobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.productobject*, align 8
  %pool = alloca %struct._object*, align 8
  %elem = alloca %struct._object*, align 8
  %oldelem = alloca %struct._object*, align 8
  %pools = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %npools = alloca i64, align 8
  %i = alloca i64, align 8
  %indices = alloca i64*, align 8
  %old_result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  store %struct.productobject* %lz, %struct.productobject** %lz.addr, align 8
  %0 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools1 = getelementptr inbounds %struct.productobject, %struct.productobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pools1, align 8
  store %struct._object* %1, %struct._object** %pools, align 8
  %2 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result2 = getelementptr inbounds %struct.productobject, %struct.productobject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %result2, align 8
  store %struct._object* %3, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %pools, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %npools, align 8
  %7 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %stopped = getelementptr inbounds %struct.productobject, %struct.productobject* %7, i32 0, i32 4
  %8 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %9, null
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load i64, i64* %npools, align 8
  %call = call %struct._object* @PyTuple_New(i64 %10)
  store %struct._object* %call, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %cmp4 = icmp eq %struct._object* %11, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.3
  br label %empty

if.end.6:                                         ; preds = %if.then.3
  %12 = load %struct._object*, %struct._object** %result, align 8
  %13 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result7 = getelementptr inbounds %struct.productobject, %struct.productobject* %13, i32 0, i32 3
  store %struct._object* %12, %struct._object** %result7, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %14 = load i64, i64* %i, align 8
  %15 = load i64, i64* %npools, align 8
  %cmp8 = icmp slt i64 %14, %15
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i64, i64* %i, align 8
  %17 = load %struct._object*, %struct._object** %pools, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %16
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %19, %struct._object** %pool, align 8
  %20 = load %struct._object*, %struct._object** %pool, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyVarObject*
  %ob_size9 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %21, i32 0, i32 1
  %22 = load i64, i64* %ob_size9, align 8
  %cmp10 = icmp eq i64 %22, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  br label %empty

if.end.12:                                        ; preds = %for.body
  %23 = load %struct._object*, %struct._object** %pool, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyTupleObject*
  %ob_item13 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %24, i32 0, i32 1
  %arrayidx14 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item13, i32 0, i64 0
  %25 = load %struct._object*, %struct._object** %arrayidx14, align 8
  store %struct._object* %25, %struct._object** %elem, align 8
  %26 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %28 = load %struct._object*, %struct._object** %elem, align 8
  %29 = load i64, i64* %i, align 8
  %30 = load %struct._object*, %struct._object** %result, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyTupleObject*
  %ob_item15 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %31, i32 0, i32 1
  %arrayidx16 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item15, i32 0, i64 %29
  store %struct._object* %28, %struct._object** %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %32 = load i64, i64* %i, align 8
  %inc17 = add i64 %32, 1
  store i64 %inc17, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.104

if.else:                                          ; preds = %if.end
  %33 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %indices18 = getelementptr inbounds %struct.productobject, %struct.productobject* %33, i32 0, i32 2
  %34 = load i64*, i64** %indices18, align 8
  store i64* %34, i64** %indices, align 8
  %35 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt19, align 8
  %cmp20 = icmp sgt i64 %36, 1
  br i1 %cmp20, label %if.then.21, label %if.end.44

if.then.21:                                       ; preds = %if.else
  %37 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %37, %struct._object** %old_result, align 8
  %38 = load i64, i64* %npools, align 8
  %call22 = call %struct._object* @PyTuple_New(i64 %38)
  store %struct._object* %call22, %struct._object** %result, align 8
  %39 = load %struct._object*, %struct._object** %result, align 8
  %cmp23 = icmp eq %struct._object* %39, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.21
  br label %empty

if.end.25:                                        ; preds = %if.then.21
  %40 = load %struct._object*, %struct._object** %result, align 8
  %41 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result26 = getelementptr inbounds %struct.productobject, %struct.productobject* %41, i32 0, i32 3
  store %struct._object* %40, %struct._object** %result26, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.36, %if.end.25
  %42 = load i64, i64* %i, align 8
  %43 = load i64, i64* %npools, align 8
  %cmp28 = icmp slt i64 %42, %43
  br i1 %cmp28, label %for.body.29, label %for.end.38

for.body.29:                                      ; preds = %for.cond.27
  %44 = load i64, i64* %i, align 8
  %45 = load %struct._object*, %struct._object** %old_result, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyTupleObject*
  %ob_item30 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %46, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item30, i32 0, i64 %44
  %47 = load %struct._object*, %struct._object** %arrayidx31, align 8
  store %struct._object* %47, %struct._object** %elem, align 8
  %48 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt32, align 8
  %inc33 = add i64 %49, 1
  store i64 %inc33, i64* %ob_refcnt32, align 8
  %50 = load %struct._object*, %struct._object** %elem, align 8
  %51 = load i64, i64* %i, align 8
  %52 = load %struct._object*, %struct._object** %result, align 8
  %53 = bitcast %struct._object* %52 to %struct.PyTupleObject*
  %ob_item34 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %53, i32 0, i32 1
  %arrayidx35 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item34, i32 0, i64 %51
  store %struct._object* %50, %struct._object** %arrayidx35, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.29
  %54 = load i64, i64* %i, align 8
  %inc37 = add i64 %54, 1
  store i64 %inc37, i64* %i, align 8
  br label %for.cond.27

for.end.38:                                       ; preds = %for.cond.27
  br label %do.body

do.body:                                          ; preds = %for.end.38
  %55 = load %struct._object*, %struct._object** %old_result, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt39, align 8
  %dec = add i64 %57, -1
  store i64 %dec, i64* %ob_refcnt39, align 8
  %cmp40 = icmp ne i64 %dec, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body
  br label %if.end.43

if.else.42:                                       ; preds = %do.body
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %60(%struct._object* %61)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end

do.end:                                           ; preds = %if.end.43
  br label %if.end.44

if.end.44:                                        ; preds = %do.end, %if.else
  %62 = load i64, i64* %npools, align 8
  %sub = sub i64 %62, 1
  store i64 %sub, i64* %i, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.98, %if.end.44
  %63 = load i64, i64* %i, align 8
  %cmp46 = icmp sge i64 %63, 0
  br i1 %cmp46, label %for.body.47, label %for.end.100

for.body.47:                                      ; preds = %for.cond.45
  %64 = load i64, i64* %i, align 8
  %65 = load %struct._object*, %struct._object** %pools, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyTupleObject*
  %ob_item48 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %66, i32 0, i32 1
  %arrayidx49 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item48, i32 0, i64 %64
  %67 = load %struct._object*, %struct._object** %arrayidx49, align 8
  store %struct._object* %67, %struct._object** %pool, align 8
  %68 = load i64, i64* %i, align 8
  %69 = load i64*, i64** %indices, align 8
  %arrayidx50 = getelementptr i64, i64* %69, i64 %68
  %70 = load i64, i64* %arrayidx50, align 8
  %inc51 = add i64 %70, 1
  store i64 %inc51, i64* %arrayidx50, align 8
  %71 = load i64, i64* %i, align 8
  %72 = load i64*, i64** %indices, align 8
  %arrayidx52 = getelementptr i64, i64* %72, i64 %71
  %73 = load i64, i64* %arrayidx52, align 8
  %74 = load %struct._object*, %struct._object** %pool, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyVarObject*
  %ob_size53 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %75, i32 0, i32 1
  %76 = load i64, i64* %ob_size53, align 8
  %cmp54 = icmp eq i64 %73, %76
  br i1 %cmp54, label %if.then.55, label %if.else.76

if.then.55:                                       ; preds = %for.body.47
  %77 = load i64, i64* %i, align 8
  %78 = load i64*, i64** %indices, align 8
  %arrayidx56 = getelementptr i64, i64* %78, i64 %77
  store i64 0, i64* %arrayidx56, align 8
  %79 = load %struct._object*, %struct._object** %pool, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyTupleObject*
  %ob_item57 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %80, i32 0, i32 1
  %arrayidx58 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item57, i32 0, i64 0
  %81 = load %struct._object*, %struct._object** %arrayidx58, align 8
  store %struct._object* %81, %struct._object** %elem, align 8
  %82 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt59, align 8
  %inc60 = add i64 %83, 1
  store i64 %inc60, i64* %ob_refcnt59, align 8
  %84 = load i64, i64* %i, align 8
  %85 = load %struct._object*, %struct._object** %result, align 8
  %86 = bitcast %struct._object* %85 to %struct.PyTupleObject*
  %ob_item61 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %86, i32 0, i32 1
  %arrayidx62 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item61, i32 0, i64 %84
  %87 = load %struct._object*, %struct._object** %arrayidx62, align 8
  store %struct._object* %87, %struct._object** %oldelem, align 8
  %88 = load %struct._object*, %struct._object** %elem, align 8
  %89 = load i64, i64* %i, align 8
  %90 = load %struct._object*, %struct._object** %result, align 8
  %91 = bitcast %struct._object* %90 to %struct.PyTupleObject*
  %ob_item63 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %91, i32 0, i32 1
  %arrayidx64 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item63, i32 0, i64 %89
  store %struct._object* %88, %struct._object** %arrayidx64, align 8
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.55
  %92 = load %struct._object*, %struct._object** %oldelem, align 8
  store %struct._object* %92, %struct._object** %_py_decref_tmp66, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 0
  %94 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %94, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.65
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 1
  %96 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %96, i32 0, i32 4
  %97 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %97(%struct._object* %98)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %if.end.97

if.else.76:                                       ; preds = %for.body.47
  %99 = load i64, i64* %i, align 8
  %100 = load i64*, i64** %indices, align 8
  %arrayidx77 = getelementptr i64, i64* %100, i64 %99
  %101 = load i64, i64* %arrayidx77, align 8
  %102 = load %struct._object*, %struct._object** %pool, align 8
  %103 = bitcast %struct._object* %102 to %struct.PyTupleObject*
  %ob_item78 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %103, i32 0, i32 1
  %arrayidx79 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item78, i32 0, i64 %101
  %104 = load %struct._object*, %struct._object** %arrayidx79, align 8
  store %struct._object* %104, %struct._object** %elem, align 8
  %105 = load %struct._object*, %struct._object** %elem, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt80, align 8
  %inc81 = add i64 %106, 1
  store i64 %inc81, i64* %ob_refcnt80, align 8
  %107 = load i64, i64* %i, align 8
  %108 = load %struct._object*, %struct._object** %result, align 8
  %109 = bitcast %struct._object* %108 to %struct.PyTupleObject*
  %ob_item82 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %109, i32 0, i32 1
  %arrayidx83 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item82, i32 0, i64 %107
  %110 = load %struct._object*, %struct._object** %arrayidx83, align 8
  store %struct._object* %110, %struct._object** %oldelem, align 8
  %111 = load %struct._object*, %struct._object** %elem, align 8
  %112 = load i64, i64* %i, align 8
  %113 = load %struct._object*, %struct._object** %result, align 8
  %114 = bitcast %struct._object* %113 to %struct.PyTupleObject*
  %ob_item84 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %114, i32 0, i32 1
  %arrayidx85 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item84, i32 0, i64 %112
  store %struct._object* %111, %struct._object** %arrayidx85, align 8
  br label %do.body.86

do.body.86:                                       ; preds = %if.else.76
  %115 = load %struct._object*, %struct._object** %oldelem, align 8
  store %struct._object* %115, %struct._object** %_py_decref_tmp87, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt88, align 8
  %dec89 = add i64 %117, -1
  store i64 %dec89, i64* %ob_refcnt88, align 8
  %cmp90 = icmp ne i64 %dec89, 0
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %do.body.86
  br label %if.end.95

if.else.92:                                       ; preds = %do.body.86
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  call void %120(%struct._object* %121)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %for.end.100

if.end.97:                                        ; preds = %do.end.75
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %122 = load i64, i64* %i, align 8
  %dec99 = add i64 %122, -1
  store i64 %dec99, i64* %i, align 8
  br label %for.cond.45

for.end.100:                                      ; preds = %do.end.96, %for.cond.45
  %123 = load i64, i64* %i, align 8
  %cmp101 = icmp slt i64 %123, 0
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %for.end.100
  br label %empty

if.end.103:                                       ; preds = %for.end.100
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %for.end
  %124 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 0
  %125 = load i64, i64* %ob_refcnt105, align 8
  %inc106 = add i64 %125, 1
  store i64 %inc106, i64* %ob_refcnt105, align 8
  %126 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %126, %struct._object** %retval
  br label %return

empty:                                            ; preds = %if.then.102, %if.then.24, %if.then.11, %if.then.5
  %127 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %stopped107 = getelementptr inbounds %struct.productobject, %struct.productobject* %127, i32 0, i32 4
  store i32 1, i32* %stopped107, align 4
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %empty, %if.end.104, %if.then
  %128 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %128
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @product_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %lz = alloca %struct.productobject*, align 8
  %nargs = alloca i64, align 8
  %npools = alloca i64, align 8
  %repeat = alloca i64, align 8
  %pools = alloca %struct._object*, align 8
  %indices = alloca i64*, align 8
  %i = alloca i64, align 8
  %kwlist = alloca [2 x i8*], align 16
  %tmpargs = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp10 = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %pool = alloca %struct._object*, align 8
  %pool46 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 1, i64* %repeat, align 8
  store %struct._object* null, %struct._object** %pools, align 8
  store i64* null, i64** %indices, align 8
  %0 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %cmp = icmp ne %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %1 = bitcast [2 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([2 x i8*]* @product_new.kwlist to i8*), i64 16, i32 16, i1 false)
  %call = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call, %struct._object** %tmpargs, align 8
  %2 = load %struct._object*, %struct._object** %tmpargs, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %tmpargs, align 8
  %4 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [2 x i8*], [2 x i8*]* %kwlist, i32 0, i32 0
  %call3 = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %3, %struct._object* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8** %arraydecay, i64* %repeat)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end.8, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %5 = load %struct._object*, %struct._object** %tmpargs, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %do.body.9

do.body.9:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %tmpargs, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp10, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt11, align 8
  %dec12 = add i64 %14, -1
  store i64 %dec12, i64* %ob_refcnt11, align 8
  %cmp13 = icmp ne i64 %dec12, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.9
  br label %if.end.18

if.else.15:                                       ; preds = %do.body.9
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8
  %tp_dealloc17 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc17, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp10, align 8
  call void %17(%struct._object* %18)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  %19 = load i64, i64* %repeat, align 8
  %cmp20 = icmp slt i64 %19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end.19
  %20 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %do.end.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %entry
  %21 = load i64, i64* %repeat, align 8
  %cmp24 = icmp eq i64 %21, 0
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  %22 = load %struct._object*, %struct._object** %args.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %24, %cond.false ]
  store i64 %cond, i64* %nargs, align 8
  %25 = load i64, i64* %nargs, align 8
  %26 = load i64, i64* %repeat, align 8
  %mul = mul i64 %25, %26
  store i64 %mul, i64* %npools, align 8
  %27 = load i64, i64* %npools, align 8
  %mul25 = mul i64 %27, 8
  %call26 = call i8* @PyMem_Malloc(i64 %mul25)
  %28 = bitcast i8* %call26 to i64*
  store i64* %28, i64** %indices, align 8
  %29 = load i64*, i64** %indices, align 8
  %cmp27 = icmp eq i64* %29, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %cond.end
  %call29 = call %struct._object* @PyErr_NoMemory()
  br label %error

if.end.30:                                        ; preds = %cond.end
  %30 = load i64, i64* %npools, align 8
  %call31 = call %struct._object* @PyTuple_New(i64 %30)
  store %struct._object* %call31, %struct._object** %pools, align 8
  %31 = load %struct._object*, %struct._object** %pools, align 8
  %cmp32 = icmp eq %struct._object* %31, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  br label %error

if.end.34:                                        ; preds = %if.end.30
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.34
  %32 = load i64, i64* %i, align 8
  %33 = load i64, i64* %nargs, align 8
  %cmp35 = icmp slt i64 %32, %33
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i64, i64* %i, align 8
  %35 = load %struct._object*, %struct._object** %args.addr, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %34
  %37 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %37, %struct._object** %item, align 8
  %38 = load %struct._object*, %struct._object** %item, align 8
  %call36 = call %struct._object* @PySequence_Tuple(%struct._object* %38)
  store %struct._object* %call36, %struct._object** %pool, align 8
  %39 = load %struct._object*, %struct._object** %pool, align 8
  %cmp37 = icmp eq %struct._object* %39, null
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %for.body
  br label %error

if.end.39:                                        ; preds = %for.body
  %40 = load %struct._object*, %struct._object** %pool, align 8
  %41 = load i64, i64* %i, align 8
  %42 = load %struct._object*, %struct._object** %pools, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyTupleObject*
  %ob_item40 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %43, i32 0, i32 1
  %arrayidx41 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item40, i32 0, i64 %41
  store %struct._object* %40, %struct._object** %arrayidx41, align 8
  %44 = load i64, i64* %i, align 8
  %45 = load i64*, i64** %indices, align 8
  %arrayidx42 = getelementptr i64, i64* %45, i64 %44
  store i64 0, i64* %arrayidx42, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %46 = load i64, i64* %i, align 8
  %inc = add i64 %46, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.54, %for.end
  %47 = load i64, i64* %i, align 8
  %48 = load i64, i64* %npools, align 8
  %cmp44 = icmp slt i64 %47, %48
  br i1 %cmp44, label %for.body.45, label %for.end.56

for.body.45:                                      ; preds = %for.cond.43
  %49 = load i64, i64* %i, align 8
  %50 = load i64, i64* %nargs, align 8
  %sub = sub i64 %49, %50
  %51 = load %struct._object*, %struct._object** %pools, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyTupleObject*
  %ob_item47 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %52, i32 0, i32 1
  %arrayidx48 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item47, i32 0, i64 %sub
  %53 = load %struct._object*, %struct._object** %arrayidx48, align 8
  store %struct._object* %53, %struct._object** %pool46, align 8
  %54 = load %struct._object*, %struct._object** %pool46, align 8
  %ob_refcnt49 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt49, align 8
  %inc50 = add i64 %55, 1
  store i64 %inc50, i64* %ob_refcnt49, align 8
  %56 = load %struct._object*, %struct._object** %pool46, align 8
  %57 = load i64, i64* %i, align 8
  %58 = load %struct._object*, %struct._object** %pools, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyTupleObject*
  %ob_item51 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %59, i32 0, i32 1
  %arrayidx52 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item51, i32 0, i64 %57
  store %struct._object* %56, %struct._object** %arrayidx52, align 8
  %60 = load i64, i64* %i, align 8
  %61 = load i64*, i64** %indices, align 8
  %arrayidx53 = getelementptr i64, i64* %61, i64 %60
  store i64 0, i64* %arrayidx53, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.45
  %62 = load i64, i64* %i, align 8
  %inc55 = add i64 %62, 1
  store i64 %inc55, i64* %i, align 8
  br label %for.cond.43

for.end.56:                                       ; preds = %for.cond.43
  %63 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 36
  %64 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %65 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call57 = call %struct._object* %64(%struct._typeobject* %65, i64 0)
  %66 = bitcast %struct._object* %call57 to %struct.productobject*
  store %struct.productobject* %66, %struct.productobject** %lz, align 8
  %67 = load %struct.productobject*, %struct.productobject** %lz, align 8
  %cmp58 = icmp eq %struct.productobject* %67, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.end.56
  br label %error

if.end.60:                                        ; preds = %for.end.56
  %68 = load %struct._object*, %struct._object** %pools, align 8
  %69 = load %struct.productobject*, %struct.productobject** %lz, align 8
  %pools61 = getelementptr inbounds %struct.productobject, %struct.productobject* %69, i32 0, i32 1
  store %struct._object* %68, %struct._object** %pools61, align 8
  %70 = load i64*, i64** %indices, align 8
  %71 = load %struct.productobject*, %struct.productobject** %lz, align 8
  %indices62 = getelementptr inbounds %struct.productobject, %struct.productobject* %71, i32 0, i32 2
  store i64* %70, i64** %indices62, align 8
  %72 = load %struct.productobject*, %struct.productobject** %lz, align 8
  %result = getelementptr inbounds %struct.productobject, %struct.productobject* %72, i32 0, i32 3
  store %struct._object* null, %struct._object** %result, align 8
  %73 = load %struct.productobject*, %struct.productobject** %lz, align 8
  %stopped = getelementptr inbounds %struct.productobject, %struct.productobject* %73, i32 0, i32 4
  store i32 0, i32* %stopped, align 4
  %74 = load %struct.productobject*, %struct.productobject** %lz, align 8
  %75 = bitcast %struct.productobject* %74 to %struct._object*
  store %struct._object* %75, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.59, %if.then.38, %if.then.33, %if.then.28
  %76 = load i64*, i64** %indices, align 8
  %cmp63 = icmp ne i64* %76, null
  br i1 %cmp63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %error
  %77 = load i64*, i64** %indices, align 8
  %78 = bitcast i64* %77 to i8*
  call void @PyMem_Free(i8* %78)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %error
  br label %do.body.66

do.body.66:                                       ; preds = %if.end.65
  %79 = load %struct._object*, %struct._object** %pools, align 8
  store %struct._object* %79, %struct._object** %_py_xdecref_tmp, align 8
  %80 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp67 = icmp ne %struct._object* %80, null
  br i1 %cmp67, label %if.then.68, label %if.end.80

if.then.68:                                       ; preds = %do.body.66
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.68
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp70, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %83, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.69
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.69
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %86(%struct._object* %87)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %do.end.79, %do.body.66
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.81, %if.end.60, %if.then.21, %do.end, %if.then.2
  %88 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %88
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @product_reduce(%struct.productobject* %lz) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.productobject*, align 8
  %indices = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %index = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.productobject* %lz, %struct.productobject** %lz.addr, align 8
  %0 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %stopped = getelementptr inbounds %struct.productobject, %struct.productobject* %0, i32 0, i32 4
  %1 = load i32, i32* %stopped, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %3 = bitcast %struct.productobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), %struct._typeobject* %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result = getelementptr inbounds %struct.productobject, %struct.productobject* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %6, null
  br i1 %cmp, label %if.then.1, label %if.else.4

if.then.1:                                        ; preds = %if.else
  %7 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %8 = bitcast %struct.productobject* %7 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %10 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools = getelementptr inbounds %struct.productobject, %struct.productobject* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %pools, align 8
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.77, i32 0, i32 0), %struct._typeobject* %9, %struct._object* %11)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %12 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools5 = getelementptr inbounds %struct.productobject, %struct.productobject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %pools5, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %14, i32 0, i32 1
  %15 = load i64, i64* %ob_size, align 8
  store i64 %15, i64* %n, align 8
  %16 = load i64, i64* %n, align 8
  %call6 = call %struct._object* @PyTuple_New(i64 %16)
  store %struct._object* %call6, %struct._object** %indices, align 8
  %17 = load %struct._object*, %struct._object** %indices, align 8
  %cmp7 = icmp eq %struct._object* %17, null
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i64, i64* %i, align 8
  %19 = load i64, i64* %n, align 8
  %cmp9 = icmp slt i64 %18, %19
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i64, i64* %i, align 8
  %21 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %indices10 = getelementptr inbounds %struct.productobject, %struct.productobject* %21, i32 0, i32 2
  %22 = load i64*, i64** %indices10, align 8
  %arrayidx = getelementptr i64, i64* %22, i64 %20
  %23 = load i64, i64* %arrayidx, align 8
  %call11 = call %struct._object* @PyLong_FromSsize_t(i64 %23)
  store %struct._object* %call11, %struct._object** %index, align 8
  %24 = load %struct._object*, %struct._object** %index, align 8
  %tobool12 = icmp ne %struct._object* %24, null
  br i1 %tobool12, label %if.end.19, label %if.then.13

if.then.13:                                       ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %25 = load %struct._object*, %struct._object** %indices, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body
  br label %if.end.18

if.else.16:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  %32 = load %struct._object*, %struct._object** %index, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load %struct._object*, %struct._object** %indices, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %35, i32 0, i32 1
  %arrayidx20 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %33
  store %struct._object* %32, %struct._object** %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %36 = load i64, i64* %i, align 8
  %inc = add i64 %36, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %38 = bitcast %struct.productobject* %37 to %struct._object*
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %40 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools22 = getelementptr inbounds %struct.productobject, %struct.productobject* %40, i32 0, i32 1
  %41 = load %struct._object*, %struct._object** %pools22, align 8
  %42 = load %struct._object*, %struct._object** %indices, align 8
  %call23 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i32 0, i32 0), %struct._typeobject* %39, %struct._object* %41, %struct._object* %42)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end, %if.then.8, %if.then.1, %if.then
  %43 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %43
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @product_setstate(%struct.productobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.productobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %n = alloca i64, align 8
  %i = alloca i64, align 8
  %indexObject = alloca %struct._object*, align 8
  %index = alloca i64, align 8
  %pool = alloca %struct._object*, align 8
  %element = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.productobject* %lz, %struct.productobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools = getelementptr inbounds %struct.productobject, %struct.productobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pools, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  store i64 %3, i64* %n, align 8
  %4 = load %struct._object*, %struct._object** %state.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct._object*, %struct._object** %state.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size1 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size1, align 8
  %10 = load i64, i64* %n, align 8
  %cmp2 = icmp ne i64 %9, %10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i64, i64* %i, align 8
  %13 = load i64, i64* %n, align 8
  %cmp3 = icmp slt i64 %12, %13
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i64, i64* %i, align 8
  %15 = load %struct._object*, %struct._object** %state.addr, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %16, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %14
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %17, %struct._object** %indexObject, align 8
  %18 = load %struct._object*, %struct._object** %indexObject, align 8
  %call = call i64 @PyLong_AsSsize_t(%struct._object* %18)
  store i64 %call, i64* %index, align 8
  %19 = load i64, i64* %index, align 8
  %cmp4 = icmp slt i64 %19, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %for.body
  %call5 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call5, null
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %for.body
  %20 = load i64, i64* %index, align 8
  %cmp8 = icmp slt i64 %20, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end.7
  store i64 0, i64* %index, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end.7
  %21 = load i64, i64* %index, align 8
  %22 = load i64, i64* %n, align 8
  %sub = sub i64 %22, 1
  %cmp10 = icmp sgt i64 %21, %sub
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.else
  %23 = load i64, i64* %n, align 8
  %sub12 = sub i64 %23, 1
  store i64 %sub12, i64* %index, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.else
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.9
  %24 = load i64, i64* %index, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %indices = getelementptr inbounds %struct.productobject, %struct.productobject* %26, i32 0, i32 2
  %27 = load i64*, i64** %indices, align 8
  %arrayidx15 = getelementptr i64, i64* %27, i64 %25
  store i64 %24, i64* %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %28 = load i64, i64* %i, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i64, i64* %n, align 8
  %call16 = call %struct._object* @PyTuple_New(i64 %29)
  store %struct._object* %call16, %struct._object** %result, align 8
  %30 = load %struct._object*, %struct._object** %result, align 8
  %tobool17 = icmp ne %struct._object* %30, null
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.end
  store i64 0, i64* %i, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.33, %if.end.19
  %31 = load i64, i64* %i, align 8
  %32 = load i64, i64* %n, align 8
  %cmp21 = icmp slt i64 %31, %32
  br i1 %cmp21, label %for.body.22, label %for.end.35

for.body.22:                                      ; preds = %for.cond.20
  %33 = load i64, i64* %i, align 8
  %34 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools23 = getelementptr inbounds %struct.productobject, %struct.productobject* %34, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %pools23, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item24 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx25 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item24, i32 0, i64 %33
  %37 = load %struct._object*, %struct._object** %arrayidx25, align 8
  store %struct._object* %37, %struct._object** %pool, align 8
  %38 = load i64, i64* %i, align 8
  %39 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %indices26 = getelementptr inbounds %struct.productobject, %struct.productobject* %39, i32 0, i32 2
  %40 = load i64*, i64** %indices26, align 8
  %arrayidx27 = getelementptr i64, i64* %40, i64 %38
  %41 = load i64, i64* %arrayidx27, align 8
  %42 = load %struct._object*, %struct._object** %pool, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyTupleObject*
  %ob_item28 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %43, i32 0, i32 1
  %arrayidx29 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item28, i32 0, i64 %41
  %44 = load %struct._object*, %struct._object** %arrayidx29, align 8
  store %struct._object* %44, %struct._object** %element, align 8
  %45 = load %struct._object*, %struct._object** %element, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt, align 8
  %inc30 = add i64 %46, 1
  store i64 %inc30, i64* %ob_refcnt, align 8
  %47 = load %struct._object*, %struct._object** %element, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load %struct._object*, %struct._object** %result, align 8
  %50 = bitcast %struct._object* %49 to %struct.PyTupleObject*
  %ob_item31 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %50, i32 0, i32 1
  %arrayidx32 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item31, i32 0, i64 %48
  store %struct._object* %47, %struct._object** %arrayidx32, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.22
  %51 = load i64, i64* %i, align 8
  %inc34 = add i64 %51, 1
  store i64 %inc34, i64* %i, align 8
  br label %for.cond.20

for.end.35:                                       ; preds = %for.cond.20
  br label %do.body

do.body:                                          ; preds = %for.end.35
  %52 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result36 = getelementptr inbounds %struct.productobject, %struct.productobject* %52, i32 0, i32 3
  %53 = load %struct._object*, %struct._object** %result36, align 8
  store %struct._object* %53, %struct._object** %_py_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp37 = icmp ne %struct._object* %54, null
  br i1 %cmp37, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %do.body
  %55 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result39 = getelementptr inbounds %struct.productobject, %struct.productobject* %55, i32 0, i32 3
  store %struct._object* null, %struct._object** %result39, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.38
  %56 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt41, align 8
  %dec = add i64 %58, -1
  store i64 %dec, i64* %ob_refcnt41, align 8
  %cmp42 = icmp ne i64 %dec, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.46

if.else.44:                                       ; preds = %do.body.40
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %61(%struct._object* %62)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end

do.end:                                           ; preds = %if.end.46
  br label %if.end.47

if.end.47:                                        ; preds = %do.end, %do.body
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %63 = load %struct._object*, %struct._object** %result, align 8
  %64 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %result49 = getelementptr inbounds %struct.productobject, %struct.productobject* %64, i32 0, i32 3
  store %struct._object* %63, %struct._object** %result49, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc50 = add i64 %65, 1
  store i64 %inc50, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.then.18, %if.then.6, %if.then
  %66 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %66
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @product_sizeof(%struct.productobject* %lz, i8* %unused) #0 {
entry:
  %lz.addr = alloca %struct.productobject*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.productobject* %lz, %struct.productobject** %lz.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 48, i64* %res, align 8
  %0 = load %struct.productobject*, %struct.productobject** %lz.addr, align 8
  %pools = getelementptr inbounds %struct.productobject, %struct.productobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %pools, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %2, i32 0, i32 1
  %3 = load i64, i64* %ob_size, align 8
  %mul = mul i64 %3, 8
  %4 = load i64, i64* %res, align 8
  %add = add i64 %4, %mul
  store i64 %add, i64* %res, align 8
  %5 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %5)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal void @repeat_dealloc(%struct.repeatobject* %ro) #0 {
entry:
  %ro.addr = alloca %struct.repeatobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.repeatobject* %ro, %struct.repeatobject** %ro.addr, align 8
  %0 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %1 = bitcast %struct.repeatobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %element, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %12 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %13 = bitcast %struct.repeatobject* %12 to %struct._object*
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %16 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %17 = bitcast %struct.repeatobject* %16 to i8*
  call void %15(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @repeat_repr(%struct.repeatobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.repeatobject*, align 8
  store %struct.repeatobject* %ro, %struct.repeatobject** %ro.addr, align 8
  %0 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %0, i32 0, i32 2
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %element, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.83, i32 0, i32 0), %struct._object* %3)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element1 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %element1, align 8
  %6 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt2 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %6, i32 0, i32 2
  %7 = load i64, i64* %cnt2, align 8
  %call3 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.84, i32 0, i32 0), %struct._object* %5, i64 %7)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal i32 @repeat_traverse(%struct.repeatobject* %ro, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ro.addr = alloca %struct.repeatobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.repeatobject* %ro, %struct.repeatobject** %ro.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %element, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element1 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %element1, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @repeat_next(%struct.repeatobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.repeatobject*, align 8
  store %struct.repeatobject* %ro, %struct.repeatobject** %ro.addr, align 8
  %0 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %0, i32 0, i32 2
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt1 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %2, i32 0, i32 2
  %3 = load i64, i64* %cnt1, align 8
  %cmp2 = icmp sgt i64 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt4 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %4, i32 0, i32 2
  %5 = load i64, i64* %cnt4, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %cnt4, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %6 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %element, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %9 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element6 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %element6, align 8
  store %struct._object* %10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @repeat_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %ro = alloca %struct.repeatobject*, align 8
  %element = alloca %struct._object*, align 8
  %cnt = alloca i64, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i64 -1, i64* %cnt, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @repeat_new.kwargs, i32 0, i32 0), %struct._object** %element, i64* %cnt)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i64 @PyTuple_Size(%struct._object* %2)
  %cmp = icmp eq i64 %call1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %3 = load i64, i64* %cnt, align 8
  %cmp2 = icmp slt i64 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  store i64 0, i64* %cnt, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 36
  %5 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %6 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call5 = call %struct._object* %5(%struct._typeobject* %6, i64 0)
  %7 = bitcast %struct._object* %call5 to %struct.repeatobject*
  store %struct.repeatobject* %7, %struct.repeatobject** %ro, align 8
  %8 = load %struct.repeatobject*, %struct.repeatobject** %ro, align 8
  %cmp6 = icmp eq %struct.repeatobject* %8, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %9 = load %struct._object*, %struct._object** %element, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %11 = load %struct._object*, %struct._object** %element, align 8
  %12 = load %struct.repeatobject*, %struct.repeatobject** %ro, align 8
  %element9 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %12, i32 0, i32 1
  store %struct._object* %11, %struct._object** %element9, align 8
  %13 = load i64, i64* %cnt, align 8
  %14 = load %struct.repeatobject*, %struct.repeatobject** %ro, align 8
  %cnt10 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %14, i32 0, i32 2
  store i64 %13, i64* %cnt10, align 8
  %15 = load %struct.repeatobject*, %struct.repeatobject** %ro, align 8
  %16 = bitcast %struct.repeatobject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @repeat_len(%struct.repeatobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.repeatobject*, align 8
  store %struct.repeatobject* %ro, %struct.repeatobject** %ro.addr, align 8
  %0 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %0, i32 0, i32 2
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp eq i64 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.86, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt1 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %3, i32 0, i32 2
  %4 = load i64, i64* %cnt1, align 8
  %call = call %struct._object* @PyLong_FromSize_t(i64 %4)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @repeat_reduce(%struct.repeatobject* %ro) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ro.addr = alloca %struct.repeatobject*, align 8
  store %struct.repeatobject* %ro, %struct.repeatobject** %ro.addr, align 8
  %0 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %0, i32 0, i32 2
  %1 = load i64, i64* %cnt, align 8
  %cmp = icmp sge i64 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %3 = bitcast %struct.repeatobject* %2 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %5 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %element, align 8
  %7 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %cnt1 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %7, i32 0, i32 2
  %8 = load i64, i64* %cnt1, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._typeobject* %4, %struct._object* %6, i64 %8)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %9 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %10 = bitcast %struct.repeatobject* %9 to %struct._object*
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %12 = load %struct.repeatobject*, %struct.repeatobject** %ro.addr, align 8
  %element3 = getelementptr inbounds %struct.repeatobject, %struct.repeatobject* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %element3, align 8
  %call4 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), %struct._typeobject* %11, %struct._object* %13)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @PyLong_FromSize_t(i64) #2

; Function Attrs: nounwind uwtable
define internal void @groupby_dealloc(%struct.groupbyobject* %gbo) #0 {
entry:
  %gbo.addr = alloca %struct.groupbyobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_xdecref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_xdecref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  store %struct.groupbyobject* %gbo, %struct.groupbyobject** %gbo.addr, align 8
  %0 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %1 = bitcast %struct.groupbyobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %it = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %keyfunc = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %keyfunc, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %22 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %tgtkey, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %24, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %32 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %32, i32 0, i32 4
  %33 = load %struct._object*, %struct._object** %currkey, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp41, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %34, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp45, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %37, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %40(%struct._object* %41)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.40
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %42 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currvalue = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %42, i32 0, i32 5
  %43 = load %struct._object*, %struct._object** %currvalue, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp58, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp58, align 8
  %cmp59 = icmp ne %struct._object* %44, null
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %do.body.57
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp58, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp62, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %47, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %50(%struct._object* %51)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.57
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %52 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %53 = bitcast %struct.groupbyobject* %52 to %struct._object*
  %ob_type74 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type74, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 38
  %55 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %56 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %57 = bitcast %struct.groupbyobject* %56 to i8*
  call void %55(i8* %57)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @groupby_traverse(%struct.groupbyobject* %gbo, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %gbo.addr = alloca %struct.groupbyobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  store %struct.groupbyobject* %gbo, %struct.groupbyobject** %gbo.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %it = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %it1 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  %8 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %keyfunc = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %keyfunc, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %keyfunc9 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %keyfunc9, align 8
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
  %16 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %16, i32 0, i32 3
  %17 = load %struct._object*, %struct._object** %tgtkey, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey20 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %19, i32 0, i32 3
  %20 = load %struct._object*, %struct._object** %tgtkey20, align 8
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
  %24 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %24, i32 0, i32 4
  %25 = load %struct._object*, %struct._object** %currkey, align 8
  %tobool28 = icmp ne %struct._object* %25, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %26 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %27 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey31 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %27, i32 0, i32 4
  %28 = load %struct._object*, %struct._object** %currkey31, align 8
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
  %32 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currvalue = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %32, i32 0, i32 5
  %33 = load %struct._object*, %struct._object** %currvalue, align 8
  %tobool39 = icmp ne %struct._object* %33, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %34 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %35 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currvalue42 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %35, i32 0, i32 5
  %36 = load %struct._object*, %struct._object** %currvalue42, align 8
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
define internal %struct._object* @groupby_next(%struct.groupbyobject* %gbo) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %gbo.addr = alloca %struct.groupbyobject*, align 8
  %newvalue = alloca %struct._object*, align 8
  %newkey = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %grouper = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %rcmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_xdecref_tmp57 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_xdecref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  store %struct.groupbyobject* %gbo, %struct.groupbyobject** %gbo.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end.73, %entry
  %0 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %currkey, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  br label %if.end.14

if.else:                                          ; preds = %for.cond
  %2 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %tgtkey, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  br label %for.end

if.else.3:                                        ; preds = %if.else
  %4 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey5 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %4, i32 0, i32 3
  %5 = load %struct._object*, %struct._object** %tgtkey5, align 8
  %6 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey6 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %currkey6, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %7, i32 2)
  store i32 %call, i32* %rcmp, align 4
  %8 = load i32, i32* %rcmp, align 4
  %cmp7 = icmp eq i32 %8, -1
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.else.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.9:                                        ; preds = %if.else.3
  %9 = load i32, i32* %rcmp, align 4
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else.9
  br label %for.end

if.end:                                           ; preds = %if.else.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then
  %10 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %it = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %10, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %it, align 8
  %call15 = call %struct._object* @PyIter_Next(%struct._object* %11)
  store %struct._object* %call15, %struct._object** %newvalue, align 8
  %12 = load %struct._object*, %struct._object** %newvalue, align 8
  %cmp16 = icmp eq %struct._object* %12, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %13 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %keyfunc = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %keyfunc, align 8
  %cmp19 = icmp eq %struct._object* %14, @_Py_NoneStruct
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.end.18
  %15 = load %struct._object*, %struct._object** %newvalue, align 8
  store %struct._object* %15, %struct._object** %newkey, align 8
  %16 = load %struct._object*, %struct._object** %newvalue, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.33

if.else.21:                                       ; preds = %if.end.18
  %18 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %keyfunc22 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %18, i32 0, i32 2
  %19 = load %struct._object*, %struct._object** %keyfunc22, align 8
  %20 = load %struct._object*, %struct._object** %newvalue, align 8
  %call23 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %19, %struct._object* %20, i8* null)
  store %struct._object* %call23, %struct._object** %newkey, align 8
  %21 = load %struct._object*, %struct._object** %newkey, align 8
  %cmp24 = icmp eq %struct._object* %21, null
  br i1 %cmp24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.else.21
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %22 = load %struct._object*, %struct._object** %newvalue, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt27, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt27, align 8
  %cmp28 = icmp ne i64 %dec, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body
  br label %if.end.31

if.else.30:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end

do.end:                                           ; preds = %if.end.31
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.else.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.20
  %29 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey34 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %29, i32 0, i32 4
  %30 = load %struct._object*, %struct._object** %currkey34, align 8
  store %struct._object* %30, %struct._object** %tmp, align 8
  %31 = load %struct._object*, %struct._object** %newkey, align 8
  %32 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey35 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %32, i32 0, i32 4
  store %struct._object* %31, %struct._object** %currkey35, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.33
  %33 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp38 = icmp ne %struct._object* %34, null
  br i1 %cmp38, label %if.then.39, label %if.end.52

if.then.39:                                       ; preds = %do.body.36
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp42, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt43, align 8
  %dec44 = add i64 %37, -1
  store i64 %dec44, i64* %ob_refcnt43, align 8
  %cmp45 = icmp ne i64 %dec44, 0
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %do.body.40
  br label %if.end.50

if.else.47:                                       ; preds = %do.body.40
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8
  call void %40(%struct._object* %41)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %if.end.52

if.end.52:                                        ; preds = %do.end.51, %do.body.36
  br label %do.end.53

do.end.53:                                        ; preds = %if.end.52
  %42 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currvalue = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %42, i32 0, i32 5
  %43 = load %struct._object*, %struct._object** %currvalue, align 8
  store %struct._object* %43, %struct._object** %tmp, align 8
  %44 = load %struct._object*, %struct._object** %newvalue, align 8
  %45 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currvalue54 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %45, i32 0, i32 5
  store %struct._object* %44, %struct._object** %currvalue54, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.53
  %46 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp57, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8
  %cmp58 = icmp ne %struct._object* %47, null
  br i1 %cmp58, label %if.then.59, label %if.end.72

if.then.59:                                       ; preds = %do.body.55
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp57, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp62, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %50, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.60
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.60
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %53(%struct._object* %54)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.55
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %if.then.2
  %55 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey74 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %55, i32 0, i32 4
  %56 = load %struct._object*, %struct._object** %currkey74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt75, align 8
  %inc76 = add i64 %57, 1
  store i64 %inc76, i64* %ob_refcnt75, align 8
  %58 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey77 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %58, i32 0, i32 3
  %59 = load %struct._object*, %struct._object** %tgtkey77, align 8
  store %struct._object* %59, %struct._object** %tmp, align 8
  %60 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey78 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %60, i32 0, i32 4
  %61 = load %struct._object*, %struct._object** %currkey78, align 8
  %62 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey79 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %62, i32 0, i32 3
  store %struct._object* %61, %struct._object** %tgtkey79, align 8
  br label %do.body.80

do.body.80:                                       ; preds = %for.end
  %63 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %63, %struct._object** %_py_xdecref_tmp82, align 8
  %64 = load %struct._object*, %struct._object** %_py_xdecref_tmp82, align 8
  %cmp83 = icmp ne %struct._object* %64, null
  br i1 %cmp83, label %if.then.84, label %if.end.97

if.then.84:                                       ; preds = %do.body.80
  br label %do.body.85

do.body.85:                                       ; preds = %if.then.84
  %65 = load %struct._object*, %struct._object** %_py_xdecref_tmp82, align 8
  store %struct._object* %65, %struct._object** %_py_decref_tmp87, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 0
  %67 = load i64, i64* %ob_refcnt88, align 8
  %dec89 = add i64 %67, -1
  store i64 %dec89, i64* %ob_refcnt88, align 8
  %cmp90 = icmp ne i64 %dec89, 0
  br i1 %cmp90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %do.body.85
  br label %if.end.95

if.else.92:                                       ; preds = %do.body.85
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  %ob_type93 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 1
  %69 = load %struct._typeobject*, %struct._typeobject** %ob_type93, align 8
  %tp_dealloc94 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i32 0, i32 4
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc94, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp87, align 8
  call void %70(%struct._object* %71)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.then.91
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %do.body.80
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  %72 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %73 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %tgtkey99 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %73, i32 0, i32 3
  %74 = load %struct._object*, %struct._object** %tgtkey99, align 8
  %call100 = call %struct._object* @_grouper_create(%struct.groupbyobject* %72, %struct._object* %74)
  store %struct._object* %call100, %struct._object** %grouper, align 8
  %75 = load %struct._object*, %struct._object** %grouper, align 8
  %cmp101 = icmp eq %struct._object* %75, null
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %do.end.98
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.103:                                       ; preds = %do.end.98
  %76 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo.addr, align 8
  %currkey104 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %76, i32 0, i32 4
  %77 = load %struct._object*, %struct._object** %currkey104, align 8
  %78 = load %struct._object*, %struct._object** %grouper, align 8
  %call105 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %77, %struct._object* %78)
  store %struct._object* %call105, %struct._object** %r, align 8
  br label %do.body.106

do.body.106:                                      ; preds = %if.end.103
  %79 = load %struct._object*, %struct._object** %grouper, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp108, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt109, align 8
  %dec110 = add i64 %81, -1
  store i64 %dec110, i64* %ob_refcnt109, align 8
  %cmp111 = icmp ne i64 %dec110, 0
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.106
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.106
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  call void %84(%struct._object* %85)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  %86 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %86, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.117, %if.then.102, %do.end, %if.then.17, %if.then.8
  %87 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %87
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @groupby_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %gbo = alloca %struct.groupbyobject*, align 8
  %it = alloca %struct._object*, align 8
  %keyfunc = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %keyfunc, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @groupby_new.kwargs, i32 0, i32 0), %struct._object** %it, %struct._object** %keyfunc)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 36
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %4 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call1 = call %struct._object* %3(%struct._typeobject* %4, i64 0)
  %5 = bitcast %struct._object* %call1 to %struct.groupbyobject*
  store %struct.groupbyobject* %5, %struct.groupbyobject** %gbo, align 8
  %6 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %cmp = icmp eq %struct.groupbyobject* %6, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %7 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %tgtkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %7, i32 0, i32 3
  store %struct._object* null, %struct._object** %tgtkey, align 8
  %8 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %8, i32 0, i32 4
  store %struct._object* null, %struct._object** %currkey, align 8
  %9 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currvalue = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %9, i32 0, i32 5
  store %struct._object* null, %struct._object** %currvalue, align 8
  %10 = load %struct._object*, %struct._object** %keyfunc, align 8
  %11 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %keyfunc4 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %11, i32 0, i32 2
  store %struct._object* %10, %struct._object** %keyfunc4, align 8
  %12 = load %struct._object*, %struct._object** %keyfunc, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load %struct._object*, %struct._object** %it, align 8
  %call5 = call %struct._object* @PyObject_GetIter(%struct._object* %14)
  %15 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %it6 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %15, i32 0, i32 1
  store %struct._object* %call5, %struct._object** %it6, align 8
  %16 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %it7 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %16, i32 0, i32 1
  %17 = load %struct._object*, %struct._object** %it7, align 8
  %cmp8 = icmp eq %struct._object* %17, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %18 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %19 = bitcast %struct.groupbyobject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt10, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt10, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.3
  %26 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %27 = bitcast %struct.groupbyobject* %26 to %struct._object*
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.14, %do.end, %if.then.2, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @_grouper_create(%struct.groupbyobject* %parent, %struct._object* %tgtkey) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %parent.addr = alloca %struct.groupbyobject*, align 8
  %tgtkey.addr = alloca %struct._object*, align 8
  %igo = alloca %struct._grouperobject*, align 8
  store %struct.groupbyobject* %parent, %struct.groupbyobject** %parent.addr, align 8
  store %struct._object* %tgtkey, %struct._object** %tgtkey.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @_grouper_type)
  %0 = bitcast %struct._object* %call to %struct._grouperobject*
  store %struct._grouperobject* %0, %struct._grouperobject** %igo, align 8
  %1 = load %struct._grouperobject*, %struct._grouperobject** %igo, align 8
  %cmp = icmp eq %struct._grouperobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.groupbyobject*, %struct.groupbyobject** %parent.addr, align 8
  %3 = bitcast %struct.groupbyobject* %2 to %struct._object*
  %4 = load %struct._grouperobject*, %struct._grouperobject** %igo, align 8
  %parent1 = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %4, i32 0, i32 1
  store %struct._object* %3, %struct._object** %parent1, align 8
  %5 = load %struct.groupbyobject*, %struct.groupbyobject** %parent.addr, align 8
  %6 = bitcast %struct.groupbyobject* %5 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %tgtkey.addr, align 8
  %9 = load %struct._grouperobject*, %struct._grouperobject** %igo, align 8
  %tgtkey2 = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %9, i32 0, i32 2
  store %struct._object* %8, %struct._object** %tgtkey2, align 8
  %10 = load %struct._object*, %struct._object** %tgtkey.addr, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt3, align 8
  %inc4 = add i64 %11, 1
  store i64 %inc4, i64* %ob_refcnt3, align 8
  %12 = load %struct._grouperobject*, %struct._grouperobject** %igo, align 8
  %13 = bitcast %struct._grouperobject* %12 to i8*
  call void @PyObject_GC_Track(i8* %13)
  %14 = load %struct._grouperobject*, %struct._grouperobject** %igo, align 8
  %15 = bitcast %struct._grouperobject* %14 to %struct._object*
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

declare %struct._object* @PyTuple_Pack(i64, ...) #2

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #2

declare void @PyObject_GC_Track(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @groupby_reduce(%struct.groupbyobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct.groupbyobject*, align 8
  %value = alloca %struct._object*, align 8
  store %struct.groupbyobject* %lz, %struct.groupbyobject** %lz.addr, align 8
  %0 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %tgtkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %tgtkey, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %2, i32 0, i32 4
  %3 = load %struct._object*, %struct._object** %currkey, align 8
  %tobool1 = icmp ne %struct._object* %3, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currvalue = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %4, i32 0, i32 5
  %5 = load %struct._object*, %struct._object** %currvalue, align 8
  %tobool3 = icmp ne %struct._object* %5, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %7 = bitcast %struct.groupbyobject* %6 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %9 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %it = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %9, i32 0, i32 1
  %10 = load %struct._object*, %struct._object** %it, align 8
  %11 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %keyfunc = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %keyfunc, align 8
  %13 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currkey4 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %13, i32 0, i32 4
  %14 = load %struct._object*, %struct._object** %currkey4, align 8
  %15 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currvalue5 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %15, i32 0, i32 5
  %16 = load %struct._object*, %struct._object** %currvalue5, align 8
  %17 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %tgtkey6 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %17, i32 0, i32 3
  %18 = load %struct._object*, %struct._object** %tgtkey6, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), %struct._typeobject* %8, %struct._object* %10, %struct._object* %12, %struct._object* %14, %struct._object* %16, %struct._object* %18)
  store %struct._object* %call, %struct._object** %value, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %19 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %20 = bitcast %struct.groupbyobject* %19 to %struct._object*
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %22 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %it8 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %22, i32 0, i32 1
  %23 = load %struct._object*, %struct._object** %it8, align 8
  %24 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %keyfunc9 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %24, i32 0, i32 2
  %25 = load %struct._object*, %struct._object** %keyfunc9, align 8
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._typeobject* %21, %struct._object* %23, %struct._object* %25)
  store %struct._object* %call10, %struct._object** %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = load %struct._object*, %struct._object** %value, align 8
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @groupby_setstate(%struct.groupbyobject* %lz, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %lz.addr = alloca %struct.groupbyobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %currkey = alloca %struct._object*, align 8
  %currvalue = alloca %struct._object*, align 8
  %tgtkey = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %_py_tmp37 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct.groupbyobject* %lz, %struct.groupbyobject** %lz.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), %struct._object** %currkey, %struct._object** %currvalue, %struct._object** %tgtkey)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currkey1 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %1, i32 0, i32 4
  %2 = load %struct._object*, %struct._object** %currkey1, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %4 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currkey3 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %4, i32 0, i32 4
  store %struct._object* null, %struct._object** %currkey3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %currkey, align 8
  %13 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currkey10 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %13, i32 0, i32 4
  store %struct._object* %12, %struct._object** %currkey10, align 8
  %14 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currkey11 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %14, i32 0, i32 4
  %15 = load %struct._object*, %struct._object** %currkey11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt12, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end.9
  %17 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currvalue15 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %17, i32 0, i32 5
  %18 = load %struct._object*, %struct._object** %currvalue15, align 8
  store %struct._object* %18, %struct._object** %_py_tmp14, align 8
  %19 = load %struct._object*, %struct._object** %_py_tmp14, align 8
  %cmp16 = icmp ne %struct._object* %19, null
  br i1 %cmp16, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %do.body.13
  %20 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currvalue18 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %20, i32 0, i32 5
  store %struct._object* null, %struct._object** %currvalue18, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.17
  %21 = load %struct._object*, %struct._object** %_py_tmp14, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp20, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %23, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %26(%struct._object* %27)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.13
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %28 = load %struct._object*, %struct._object** %currvalue, align 8
  %29 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currvalue32 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %29, i32 0, i32 5
  store %struct._object* %28, %struct._object** %currvalue32, align 8
  %30 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %currvalue33 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %30, i32 0, i32 5
  %31 = load %struct._object*, %struct._object** %currvalue33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt34, align 8
  %inc35 = add i64 %32, 1
  store i64 %inc35, i64* %ob_refcnt34, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %do.end.31
  %33 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %tgtkey38 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %33, i32 0, i32 3
  %34 = load %struct._object*, %struct._object** %tgtkey38, align 8
  store %struct._object* %34, %struct._object** %_py_tmp37, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp37, align 8
  %cmp39 = icmp ne %struct._object* %35, null
  br i1 %cmp39, label %if.then.40, label %if.end.53

if.then.40:                                       ; preds = %do.body.36
  %36 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %tgtkey41 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %36, i32 0, i32 3
  store %struct._object* null, %struct._object** %tgtkey41, align 8
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.40
  %37 = load %struct._object*, %struct._object** %_py_tmp37, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp43, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %39, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %42(%struct._object* %43)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %do.body.36
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  %44 = load %struct._object*, %struct._object** %tgtkey, align 8
  %45 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %tgtkey55 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %45, i32 0, i32 3
  store %struct._object* %44, %struct._object** %tgtkey55, align 8
  %46 = load %struct.groupbyobject*, %struct.groupbyobject** %lz.addr, align 8
  %tgtkey56 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %46, i32 0, i32 3
  %47 = load %struct._object*, %struct._object** %tgtkey56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt57, align 8
  %inc58 = add i64 %48, 1
  store i64 %inc58, i64* %ob_refcnt57, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc59 = add i64 %49, 1
  store i64 %inc59, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.54, %if.then
  %50 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %50
}

; Function Attrs: nounwind uwtable
define internal void @_grouper_dealloc(%struct._grouperobject* %igo) #0 {
entry:
  %igo.addr = alloca %struct._grouperobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp2 = alloca %struct._object*, align 8
  store %struct._grouperobject* %igo, %struct._grouperobject** %igo.addr, align 8
  %0 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %1 = bitcast %struct._grouperobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %parent = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %parent, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %10 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %tgtkey = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %tgtkey, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp2, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt3, align 8
  %dec4 = add i64 %13, -1
  store i64 %dec4, i64* %ob_refcnt3, align 8
  %cmp5 = icmp ne i64 %dec4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.1
  br label %if.end.10

if.else.7:                                        ; preds = %do.body.1
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  call void %16(%struct._object* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.6
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %18 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %19 = bitcast %struct._grouperobject* %18 to i8*
  call void @PyObject_GC_Del(i8* %19)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @_grouper_traverse(%struct._grouperobject* %igo, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %igo.addr = alloca %struct._grouperobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct._grouperobject* %igo, %struct._grouperobject** %igo.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %parent = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %parent, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %parent1 = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %parent1, align 8
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
  %8 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %tgtkey = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %tgtkey, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %tgtkey9 = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %tgtkey9, align 8
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
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_grouper_next(%struct._grouperobject* %igo) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %igo.addr = alloca %struct._grouperobject*, align 8
  %gbo = alloca %struct.groupbyobject*, align 8
  %newvalue = alloca %struct._object*, align 8
  %newkey = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %rcmp = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._grouperobject* %igo, %struct._grouperobject** %igo.addr, align 8
  %0 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %parent = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %parent, align 8
  %2 = bitcast %struct._object* %1 to %struct.groupbyobject*
  store %struct.groupbyobject* %2, %struct.groupbyobject** %gbo, align 8
  %3 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currvalue = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %3, i32 0, i32 5
  %4 = load %struct._object*, %struct._object** %currvalue, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %5 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %it = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* @PyIter_Next(%struct._object* %6)
  store %struct._object* %call, %struct._object** %newvalue, align 8
  %7 = load %struct._object*, %struct._object** %newvalue, align 8
  %cmp1 = icmp eq %struct._object* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %keyfunc = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %keyfunc, align 8
  %cmp3 = icmp eq %struct._object* %9, @_Py_NoneStruct
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %newvalue, align 8
  store %struct._object* %10, %struct._object** %newkey, align 8
  %11 = load %struct._object*, %struct._object** %newvalue, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end
  %13 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %keyfunc5 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %keyfunc5, align 8
  %15 = load %struct._object*, %struct._object** %newvalue, align 8
  %call6 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %14, %struct._object* %15, i8* null)
  store %struct._object* %call6, %struct._object** %newkey, align 8
  %16 = load %struct._object*, %struct._object** %newkey, align 8
  %cmp7 = icmp eq %struct._object* %16, null
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.8
  %17 = load %struct._object*, %struct._object** %newvalue, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.13

if.else.12:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.4
  %24 = load %struct._object*, %struct._object** %newkey, align 8
  %25 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currkey = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %25, i32 0, i32 4
  store %struct._object* %24, %struct._object** %currkey, align 8
  %26 = load %struct._object*, %struct._object** %newvalue, align 8
  %27 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currvalue16 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %27, i32 0, i32 5
  store %struct._object* %26, %struct._object** %currvalue16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %entry
  %28 = load %struct._grouperobject*, %struct._grouperobject** %igo.addr, align 8
  %tgtkey = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %28, i32 0, i32 2
  %29 = load %struct._object*, %struct._object** %tgtkey, align 8
  %30 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currkey18 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %30, i32 0, i32 4
  %31 = load %struct._object*, %struct._object** %currkey18, align 8
  %call19 = call i32 @PyObject_RichCompareBool(%struct._object* %29, %struct._object* %31, i32 2)
  store i32 %call19, i32* %rcmp, align 4
  %32 = load i32, i32* %rcmp, align 4
  %cmp20 = icmp sle i32 %32, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.17
  %33 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currvalue23 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %33, i32 0, i32 5
  %34 = load %struct._object*, %struct._object** %currvalue23, align 8
  store %struct._object* %34, %struct._object** %r, align 8
  %35 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currvalue24 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %35, i32 0, i32 5
  store %struct._object* null, %struct._object** %currvalue24, align 8
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.22
  %36 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currkey26 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %36, i32 0, i32 4
  %37 = load %struct._object*, %struct._object** %currkey26, align 8
  store %struct._object* %37, %struct._object** %_py_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp27 = icmp ne %struct._object* %38, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %39 = load %struct.groupbyobject*, %struct.groupbyobject** %gbo, align 8
  %currkey29 = getelementptr inbounds %struct.groupbyobject, %struct.groupbyobject* %39, i32 0, i32 4
  store %struct._object* null, %struct._object** %currkey29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %40 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp31, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %42, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %45(%struct._object* %46)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  %47 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %47, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.42, %if.then.21, %do.end, %if.then.2
  %48 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %48
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_grouper_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %parent = alloca %struct._object*, align 8
  %tgtkey = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0), %struct._typeobject* @groupby_type, %struct._object** %parent, %struct._object** %tgtkey)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %parent, align 8
  %2 = bitcast %struct._object* %1 to %struct.groupbyobject*
  %3 = load %struct._object*, %struct._object** %tgtkey, align 8
  %call1 = call %struct._object* @_grouper_create(%struct.groupbyobject* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_grouper_reduce(%struct._grouperobject* %lz) #0 {
entry:
  %lz.addr = alloca %struct._grouperobject*, align 8
  store %struct._grouperobject* %lz, %struct._grouperobject** %lz.addr, align 8
  %0 = load %struct._grouperobject*, %struct._grouperobject** %lz.addr, align 8
  %1 = bitcast %struct._grouperobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct._grouperobject*, %struct._grouperobject** %lz.addr, align 8
  %parent = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %parent, align 8
  %5 = load %struct._grouperobject*, %struct._grouperobject** %lz.addr, align 8
  %tgtkey = getelementptr inbounds %struct._grouperobject, %struct._grouperobject* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %tgtkey, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), %struct._typeobject* %2, %struct._object* %4, %struct._object* %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal void @tee_dealloc(%struct.teeobject* %to) #0 {
entry:
  %to.addr = alloca %struct.teeobject*, align 8
  store %struct.teeobject* %to, %struct.teeobject** %to.addr, align 8
  %0 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %1 = bitcast %struct.teeobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  %2 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %call = call i32 @tee_clear(%struct.teeobject* %2)
  %3 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %4 = bitcast %struct.teeobject* %3 to i8*
  call void @PyObject_GC_Del(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @tee_traverse(%struct.teeobject* %to, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %to.addr = alloca %struct.teeobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  store %struct.teeobject* %to, %struct.teeobject** %to.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj = getelementptr inbounds %struct.teeobject, %struct.teeobject* %0, i32 0, i32 1
  %1 = load %struct.teedataobject*, %struct.teedataobject** %dataobj, align 8
  %2 = bitcast %struct.teedataobject* %1 to %struct._object*
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %4 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj1 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %4, i32 0, i32 1
  %5 = load %struct.teedataobject*, %struct.teedataobject** %dataobj1, align 8
  %6 = bitcast %struct.teedataobject* %5 to %struct._object*
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %3(%struct._object* %6, i8* %7)
  store i32 %call, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @tee_clear(%struct.teeobject* %to) #0 {
entry:
  %to.addr = alloca %struct.teeobject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.teeobject* %to, %struct.teeobject** %to.addr, align 8
  %0 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %weakreflist = getelementptr inbounds %struct.teeobject, %struct.teeobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %3 = bitcast %struct.teeobject* %2 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %4 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj = getelementptr inbounds %struct.teeobject, %struct.teeobject* %4, i32 0, i32 1
  %5 = load %struct.teedataobject*, %struct.teedataobject** %dataobj, align 8
  %6 = bitcast %struct.teedataobject* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %_py_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp1 = icmp ne %struct._object* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %8 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj3 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %8, i32 0, i32 1
  store %struct.teedataobject* null, %struct.teedataobject** %dataobj3, align 8
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.2
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.4
  br label %if.end.7

if.else:                                          ; preds = %do.body.4
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  br label %if.end.8

if.end.8:                                         ; preds = %do.end, %do.body
  br label %do.end.9

do.end.9:                                         ; preds = %if.end.8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tee_next(%struct.teeobject* %to) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %to.addr = alloca %struct.teeobject*, align 8
  %value = alloca %struct._object*, align 8
  %link = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.teeobject* %to, %struct.teeobject** %to.addr, align 8
  %0 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %index = getelementptr inbounds %struct.teeobject, %struct.teeobject* %0, i32 0, i32 2
  %1 = load i32, i32* %index, align 4
  %cmp = icmp sge i32 %1, 57
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %2 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj = getelementptr inbounds %struct.teeobject, %struct.teeobject* %2, i32 0, i32 1
  %3 = load %struct.teedataobject*, %struct.teedataobject** %dataobj, align 8
  %call = call %struct._object* @teedataobject_jumplink(%struct.teedataobject* %3)
  store %struct._object* %call, %struct._object** %link, align 8
  %4 = load %struct._object*, %struct._object** %link, align 8
  %cmp1 = icmp eq %struct._object* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj3 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %5, i32 0, i32 1
  %6 = load %struct.teedataobject*, %struct.teedataobject** %dataobj3, align 8
  %7 = bitcast %struct.teedataobject* %6 to %struct._object*
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** %link, align 8
  %15 = bitcast %struct._object* %14 to %struct.teedataobject*
  %16 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj7 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %16, i32 0, i32 1
  store %struct.teedataobject* %15, %struct.teedataobject** %dataobj7, align 8
  %17 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %index8 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %17, i32 0, i32 2
  store i32 0, i32* %index8, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %do.end, %entry
  %18 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj10 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %18, i32 0, i32 1
  %19 = load %struct.teedataobject*, %struct.teedataobject** %dataobj10, align 8
  %20 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %index11 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %20, i32 0, i32 2
  %21 = load i32, i32* %index11, align 4
  %call12 = call %struct._object* @teedataobject_getitem(%struct.teedataobject* %19, i32 %21)
  store %struct._object* %call12, %struct._object** %value, align 8
  %22 = load %struct._object*, %struct._object** %value, align 8
  %cmp13 = icmp eq %struct._object* %22, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.9
  %23 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %index16 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %23, i32 0, i32 2
  %24 = load i32, i32* %index16, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %index16, align 4
  %25 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.14, %if.then.2
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tee_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), i64 1, i64 1, %struct._object** %iterable)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %iterable, align 8
  %call1 = call %struct._object* @tee_fromiterable(%struct._object* %1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @teedataobject_jumplink(%struct.teedataobject* %tdo) #0 {
entry:
  %tdo.addr = alloca %struct.teedataobject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.teedataobject* %tdo, %struct.teedataobject** %tdo.addr, align 8
  %0 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %nextlink, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %it = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* @teedataobject_newinternal(%struct._object* %3)
  %4 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink1 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %4, i32 0, i32 3
  store %struct._object* %call, %struct._object** %nextlink1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink2 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %nextlink2, align 8
  store %struct._object* %6, %struct._object** %_py_xincref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp3 = icmp ne %struct._object* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %10 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink6 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %nextlink6, align 8
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @teedataobject_getitem(%struct.teedataobject* %tdo, i32 %i) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %tdo.addr = alloca %struct.teedataobject*, align 8
  %i.addr = alloca i32, align 4
  %value = alloca %struct._object*, align 8
  store %struct.teedataobject* %tdo, %struct.teedataobject** %tdo.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %1 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %numread = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %1, i32 0, i32 2
  %2 = load i32, i32* %numread, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %4, i32 0, i32 4
  %arrayidx = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values, i32 0, i64 %idxprom
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %5, %struct._object** %value, align 8
  br label %if.end.7

if.else:                                          ; preds = %entry
  %6 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %it = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %it, align 8
  %call = call %struct._object* @PyIter_Next(%struct._object* %7)
  store %struct._object* %call, %struct._object** %value, align 8
  %8 = load %struct._object*, %struct._object** %value, align 8
  %cmp1 = icmp eq %struct._object* %8, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %9 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %numread3 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %9, i32 0, i32 2
  %10 = load i32, i32* %numread3, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %numread3, align 4
  %11 = load %struct._object*, %struct._object** %value, align 8
  %12 = load i32, i32* %i.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values5 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %13, i32 0, i32 4
  %arrayidx6 = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values5, i32 0, i64 %idxprom4
  store %struct._object* %11, %struct._object** %arrayidx6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %14 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc8 = add i64 %15, 1
  store i64 %inc8, i64* %ob_refcnt, align 8
  %16 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.2
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @teedataobject_newinternal(%struct._object* %it) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %it.addr = alloca %struct._object*, align 8
  %tdo = alloca %struct.teedataobject*, align 8
  store %struct._object* %it, %struct._object** %it.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @teedataobject_type)
  %0 = bitcast %struct._object* %call to %struct.teedataobject*
  store %struct.teedataobject* %0, %struct.teedataobject** %tdo, align 8
  %1 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %cmp = icmp eq %struct.teedataobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %numread = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %2, i32 0, i32 2
  store i32 0, i32* %numread, align 4
  %3 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %nextlink = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %3, i32 0, i32 3
  store %struct._object* null, %struct._object** %nextlink, align 8
  %4 = load %struct._object*, %struct._object** %it.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %it.addr, align 8
  %7 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %it1 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %7, i32 0, i32 1
  store %struct._object* %6, %struct._object** %it1, align 8
  %8 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %9 = bitcast %struct.teedataobject* %8 to i8*
  call void @PyObject_GC_Track(i8* %9)
  %10 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %11 = bitcast %struct.teedataobject* %10 to %struct._object*
  store %struct._object* %11, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tee_copy(%struct.teeobject* %to) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %to.addr = alloca %struct.teeobject*, align 8
  %newto = alloca %struct.teeobject*, align 8
  store %struct.teeobject* %to, %struct.teeobject** %to.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @tee_type)
  %0 = bitcast %struct._object* %call to %struct.teeobject*
  store %struct.teeobject* %0, %struct.teeobject** %newto, align 8
  %1 = load %struct.teeobject*, %struct.teeobject** %newto, align 8
  %cmp = icmp eq %struct.teeobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj = getelementptr inbounds %struct.teeobject, %struct.teeobject* %2, i32 0, i32 1
  %3 = load %struct.teedataobject*, %struct.teedataobject** %dataobj, align 8
  %4 = bitcast %struct.teedataobject* %3 to %struct._object*
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj1 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %6, i32 0, i32 1
  %7 = load %struct.teedataobject*, %struct.teedataobject** %dataobj1, align 8
  %8 = load %struct.teeobject*, %struct.teeobject** %newto, align 8
  %dataobj2 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %8, i32 0, i32 1
  store %struct.teedataobject* %7, %struct.teedataobject** %dataobj2, align 8
  %9 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %index = getelementptr inbounds %struct.teeobject, %struct.teeobject* %9, i32 0, i32 2
  %10 = load i32, i32* %index, align 4
  %11 = load %struct.teeobject*, %struct.teeobject** %newto, align 8
  %index3 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %11, i32 0, i32 2
  store i32 %10, i32* %index3, align 4
  %12 = load %struct.teeobject*, %struct.teeobject** %newto, align 8
  %weakreflist = getelementptr inbounds %struct.teeobject, %struct.teeobject* %12, i32 0, i32 3
  store %struct._object* null, %struct._object** %weakreflist, align 8
  %13 = load %struct.teeobject*, %struct.teeobject** %newto, align 8
  %14 = bitcast %struct.teeobject* %13 to i8*
  call void @PyObject_GC_Track(i8* %14)
  %15 = load %struct.teeobject*, %struct.teeobject** %newto, align 8
  %16 = bitcast %struct.teeobject* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tee_reduce(%struct.teeobject* %to) #0 {
entry:
  %to.addr = alloca %struct.teeobject*, align 8
  store %struct.teeobject* %to, %struct.teeobject** %to.addr, align 8
  %0 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %1 = bitcast %struct.teeobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %3 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj = getelementptr inbounds %struct.teeobject, %struct.teeobject* %3, i32 0, i32 1
  %4 = load %struct.teedataobject*, %struct.teedataobject** %dataobj, align 8
  %5 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %index = getelementptr inbounds %struct.teeobject, %struct.teeobject* %5, i32 0, i32 2
  %6 = load i32, i32* %index, align 4
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.100, i32 0, i32 0), %struct._typeobject* %2, %struct.teedataobject* %4, i32 %6)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tee_setstate(%struct.teeobject* %to, %struct._object* %state) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %to.addr = alloca %struct.teeobject*, align 8
  %state.addr = alloca %struct._object*, align 8
  %tdo = alloca %struct.teedataobject*, align 8
  %index = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.teeobject* %to, %struct.teeobject** %to.addr, align 8
  store %struct._object* %state, %struct._object** %state.addr, align 8
  %0 = load %struct._object*, %struct._object** %state.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), %struct._typeobject* @teedataobject_type, %struct.teedataobject** %tdo, i32* %index)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %index, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i32, i32* %index, align 4
  %cmp1 = icmp sgt i32 %2, 57
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.102, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %4 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj = getelementptr inbounds %struct.teeobject, %struct.teeobject* %4, i32 0, i32 1
  %5 = load %struct.teedataobject*, %struct.teedataobject** %dataobj, align 8
  %6 = bitcast %struct.teedataobject* %5 to %struct._object*
  store %struct._object* %6, %struct._object** %_py_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp4 = icmp ne %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.11

if.then.5:                                        ; preds = %do.body
  %8 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj6 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %8, i32 0, i32 1
  store %struct.teedataobject* null, %struct.teedataobject** %dataobj6, align 8
  br label %do.body.7

do.body.7:                                        ; preds = %if.then.5
  %9 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.10

if.else:                                          ; preds = %do.body.7
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
  br label %if.end.11

if.end.11:                                        ; preds = %do.end, %do.body
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %16 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %17 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj13 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %17, i32 0, i32 1
  store %struct.teedataobject* %16, %struct.teedataobject** %dataobj13, align 8
  %18 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %dataobj14 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %18, i32 0, i32 1
  %19 = load %struct.teedataobject*, %struct.teedataobject** %dataobj14, align 8
  %20 = bitcast %struct.teedataobject* %19 to %struct._object*
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt15, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %ob_refcnt15, align 8
  %22 = load i32, i32* %index, align 4
  %23 = load %struct.teeobject*, %struct.teeobject** %to.addr, align 8
  %index16 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %23, i32 0, i32 2
  store i32 %22, i32* %index16, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc17 = add i64 %24, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.12, %if.then.2, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tee_fromiterable(%struct._object* %iterable) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %iterable.addr = alloca %struct._object*, align 8
  %to = alloca %struct.teeobject*, align 8
  %it = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %iterable, %struct._object** %iterable.addr, align 8
  store %struct._object* null, %struct._object** %it, align 8
  %0 = load %struct._object*, %struct._object** %iterable.addr, align 8
  %call = call %struct._object* @PyObject_GetIter(%struct._object* %0)
  store %struct._object* %call, %struct._object** %it, align 8
  %1 = load %struct._object*, %struct._object** %it, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %it, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp1 = icmp eq %struct._typeobject* %3, @tee_type
  br i1 %cmp1, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %it, align 8
  %ob_type2 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type2, align 8
  %call3 = call i32 @PyType_IsSubtype(%struct._typeobject* %5, %struct._typeobject* @tee_type)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  %6 = load %struct._object*, %struct._object** %it, align 8
  %7 = bitcast %struct._object* %6 to %struct.teeobject*
  %call5 = call %struct._object* @tee_copy(%struct.teeobject* %7)
  %8 = bitcast %struct._object* %call5 to %struct.teeobject*
  store %struct.teeobject* %8, %struct.teeobject** %to, align 8
  br label %done

if.end.6:                                         ; preds = %lor.lhs.false
  %call7 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @tee_type)
  %9 = bitcast %struct._object* %call7 to %struct.teeobject*
  store %struct.teeobject* %9, %struct.teeobject** %to, align 8
  %10 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %cmp8 = icmp eq %struct.teeobject* %10, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  br label %done

if.end.10:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %it, align 8
  %call11 = call %struct._object* @teedataobject_newinternal(%struct._object* %11)
  %12 = bitcast %struct._object* %call11 to %struct.teedataobject*
  %13 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %dataobj = getelementptr inbounds %struct.teeobject, %struct.teeobject* %13, i32 0, i32 1
  store %struct.teedataobject* %12, %struct.teedataobject** %dataobj, align 8
  %14 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %dataobj12 = getelementptr inbounds %struct.teeobject, %struct.teeobject* %14, i32 0, i32 1
  %15 = load %struct.teedataobject*, %struct.teedataobject** %dataobj12, align 8
  %tobool13 = icmp ne %struct.teedataobject* %15, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.10
  %16 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %17 = bitcast %struct.teeobject* %16 to i8*
  call void @PyObject_GC_Del(i8* %17)
  store %struct.teeobject* null, %struct.teeobject** %to, align 8
  br label %done

if.end.15:                                        ; preds = %if.end.10
  %18 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %index = getelementptr inbounds %struct.teeobject, %struct.teeobject* %18, i32 0, i32 2
  store i32 0, i32* %index, align 4
  %19 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %weakreflist = getelementptr inbounds %struct.teeobject, %struct.teeobject* %19, i32 0, i32 3
  store %struct._object* null, %struct._object** %weakreflist, align 8
  %20 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %21 = bitcast %struct.teeobject* %20 to i8*
  call void @PyObject_GC_Track(i8* %21)
  br label %done

done:                                             ; preds = %if.end.15, %if.then.14, %if.then.9, %if.then.4
  br label %do.body

do.body:                                          ; preds = %done
  %22 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp16 = icmp ne %struct._object* %23, null
  br i1 %cmp16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %do.body
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.18
  br label %if.end.22

if.else:                                          ; preds = %do.body.18
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type21 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type21, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %do.body
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %31 = load %struct.teeobject*, %struct.teeobject** %to, align 8
  %32 = bitcast %struct.teeobject* %31 to %struct._object*
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.24, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #2

; Function Attrs: nounwind uwtable
define internal void @teedataobject_dealloc(%struct.teedataobject* %tdo) #0 {
entry:
  %tdo.addr = alloca %struct.teedataobject*, align 8
  store %struct.teedataobject* %tdo, %struct.teedataobject** %tdo.addr, align 8
  %0 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %1 = bitcast %struct.teedataobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  %2 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %call = call i32 @teedataobject_clear(%struct.teedataobject* %2)
  %3 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %4 = bitcast %struct.teedataobject* %3 to i8*
  call void @PyObject_GC_Del(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @teedataobject_traverse(%struct.teedataobject* %tdo, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %tdo.addr = alloca %struct.teedataobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret21 = alloca i32, align 4
  store %struct.teedataobject* %tdo, %struct.teedataobject** %tdo.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %it = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %it1 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %it1, align 8
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %numread = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %9, i32 0, i32 2
  %10 = load i32, i32* %numread, align 4
  %cmp = icmp slt i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.5

do.body.5:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %12, i32 0, i32 4
  %arrayidx = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values, i32 0, i64 %idxprom
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  %tobool6 = icmp ne %struct._object* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.16

if.then.7:                                        ; preds = %do.body.5
  %14 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values10 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %16, i32 0, i32 4
  %arrayidx11 = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values10, i32 0, i64 %idxprom9
  %17 = load %struct._object*, %struct._object** %arrayidx11, align 8
  %18 = load i8*, i8** %arg.addr, align 8
  %call12 = call i32 %14(%struct._object* %17, i8* %18)
  store i32 %call12, i32* %vret8, align 4
  %19 = load i32, i32* %vret8, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.7
  %20 = load i32, i32* %vret8, align 4
  store i32 %20, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.7
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %do.body.5
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %for.inc

for.inc:                                          ; preds = %do.end.17
  %21 = load i32, i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.18

do.body.18:                                       ; preds = %for.end
  %22 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %nextlink, align 8
  %tobool19 = icmp ne %struct._object* %23, null
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %do.body.18
  %24 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %25 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink22 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %25, i32 0, i32 3
  %26 = load %struct._object*, %struct._object** %nextlink22, align 8
  %27 = load i8*, i8** %arg.addr, align 8
  %call23 = call i32 %24(%struct._object* %26, i8* %27)
  store i32 %call23, i32* %vret21, align 4
  %28 = load i32, i32* %vret21, align 4
  %tobool24 = icmp ne i32 %28, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.20
  %29 = load i32, i32* %vret21, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %do.body.18
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.28, %if.then.25, %if.then.14, %if.then.3
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @teedataobject_clear(%struct.teedataobject* %tdo) #0 {
entry:
  %tdo.addr = alloca %struct.teedataobject*, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct.teedataobject* %tdo, %struct.teedataobject** %tdo.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %it = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.7

if.then:                                          ; preds = %do.body
  %3 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %it2 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %3, i32 0, i32 1
  store %struct._object* null, %struct._object** %it2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.8
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %numread = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %12, i32 0, i32 2
  %13 = load i32, i32* %numread, align 4
  %cmp9 = icmp slt i32 %11, %13
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.10

do.body.10:                                       ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %15, i32 0, i32 4
  %arrayidx = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values, i32 0, i64 %idxprom
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %16, %struct._object** %_py_tmp12, align 8
  %17 = load %struct._object*, %struct._object** %_py_tmp12, align 8
  %cmp13 = icmp ne %struct._object* %17, null
  br i1 %cmp13, label %if.then.14, label %if.end.30

if.then.14:                                       ; preds = %do.body.10
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values16 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %19, i32 0, i32 4
  %arrayidx17 = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values16, i32 0, i64 %idxprom15
  store %struct._object* null, %struct._object** %arrayidx17, align 8
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.14
  %20 = load %struct._object*, %struct._object** %_py_tmp12, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %22, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.18
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.18
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %25(%struct._object* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29, %do.body.10
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %for.inc

for.inc:                                          ; preds = %do.end.31
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %28, i32 0, i32 3
  %29 = load %struct._object*, %struct._object** %nextlink, align 8
  store %struct._object* %29, %struct._object** %tmp, align 8
  %30 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink32 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %30, i32 0, i32 3
  store %struct._object* null, %struct._object** %nextlink32, align 8
  %31 = load %struct._object*, %struct._object** %tmp, align 8
  call void @teedataobject_safe_decref(%struct._object* %31)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @teedataobject_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %tdo = alloca %struct.teedataobject*, align 8
  %it = alloca %struct._object*, align 8
  %values = alloca %struct._object*, align 8
  %next = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), %struct._object** %it, %struct._typeobject* @PyList_Type, %struct._object** %values, %struct._object** %next)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %it, align 8
  %call1 = call %struct._object* @teedataobject_newinternal(%struct._object* %1)
  %2 = bitcast %struct._object* %call1 to %struct.teedataobject*
  store %struct.teedataobject* %2, %struct.teedataobject** %tdo, align 8
  %3 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %tobool2 = icmp ne %struct.teedataobject* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %values, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  store i64 %6, i64* %len, align 8
  %7 = load i64, i64* %len, align 8
  %cmp = icmp sgt i64 %7, 57
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  br label %err

if.end.6:                                         ; preds = %if.end.4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %len, align 8
  %cmp7 = icmp slt i64 %8, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, i64* %i, align 8
  %11 = load %struct._object*, %struct._object** %values, align 8
  %12 = bitcast %struct._object* %11 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %12, i32 0, i32 1
  %13 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %13, i64 %10
  %14 = load %struct._object*, %struct._object** %arrayidx, align 8
  %15 = load i64, i64* %i, align 8
  %16 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %values8 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %16, i32 0, i32 4
  %arrayidx9 = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values8, i32 0, i64 %15
  store %struct._object* %14, %struct._object** %arrayidx9, align 8
  %17 = load i64, i64* %i, align 8
  %18 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %values10 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %18, i32 0, i32 4
  %arrayidx11 = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values10, i32 0, i64 %17
  %19 = load %struct._object*, %struct._object** %arrayidx11, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i64, i64* %i, align 8
  %inc12 = add i64 %21, 1
  store i64 %inc12, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load i64, i64* %len, align 8
  %conv = trunc i64 %22 to i32
  %23 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %numread = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %23, i32 0, i32 2
  store i32 %conv, i32* %numread, align 4
  %24 = load i64, i64* %len, align 8
  %cmp13 = icmp eq i64 %24, 57
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.end
  %25 = load %struct._object*, %struct._object** %next, align 8
  %cmp16 = icmp ne %struct._object* %25, @_Py_NoneStruct
  br i1 %cmp16, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.then.15
  %26 = load %struct._object*, %struct._object** %next, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp19 = icmp ne %struct._typeobject* %27, @teedataobject_type
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.18
  br label %err

if.end.22:                                        ; preds = %if.then.18
  %28 = load %struct._object*, %struct._object** %next, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt23, align 8
  %inc24 = add i64 %29, 1
  store i64 %inc24, i64* %ob_refcnt23, align 8
  %30 = load %struct._object*, %struct._object** %next, align 8
  %31 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %nextlink = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %31, i32 0, i32 3
  store %struct._object* %30, %struct._object** %nextlink, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %if.then.15
  br label %if.end.30

if.else:                                          ; preds = %for.end
  %32 = load %struct._object*, %struct._object** %next, align 8
  %cmp26 = icmp ne %struct._object* %32, @_Py_NoneStruct
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.else
  br label %err

if.end.29:                                        ; preds = %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.25
  %33 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %34 = bitcast %struct.teedataobject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %retval
  br label %return

err:                                              ; preds = %if.then.28, %if.then.21, %if.then.5
  br label %do.body

do.body:                                          ; preds = %err
  %35 = load %struct.teedataobject*, %struct.teedataobject** %tdo, align 8
  %36 = bitcast %struct.teedataobject* %35 to %struct._object*
  store %struct._object* %36, %struct._object** %_py_xdecref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp31 = icmp ne %struct._object* %37, null
  br i1 %cmp31, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %do.body
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt35, align 8
  %dec = add i64 %40, -1
  store i64 %dec, i64* %ob_refcnt35, align 8
  %cmp36 = icmp ne i64 %dec, 0
  br i1 %cmp36, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.34
  br label %if.end.41

if.else.39:                                       ; preds = %do.body.34
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %43(%struct._object* %44)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end

do.end:                                           ; preds = %if.end.41
  br label %if.end.42

if.end.42:                                        ; preds = %do.end, %do.body
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  %45 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.43, %if.end.30, %if.then.3, %if.then
  %46 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %46
}

; Function Attrs: nounwind uwtable
define internal void @teedataobject_safe_decref(%struct._object* %obj) #0 {
entry:
  %obj.addr = alloca %struct._object*, align 8
  %nextlink = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %2, @teedataobject_type
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %cmp1 = icmp eq i64 %4, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %5 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct._object*, %struct._object** %obj.addr, align 8
  %7 = bitcast %struct._object* %6 to %struct.teedataobject*
  %nextlink2 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %7, i32 0, i32 3
  %8 = load %struct._object*, %struct._object** %nextlink2, align 8
  store %struct._object* %8, %struct._object** %nextlink, align 8
  %9 = load %struct._object*, %struct._object** %obj.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.teedataobject*
  %nextlink3 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %10, i32 0, i32 3
  store %struct._object* null, %struct._object** %nextlink3, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %11 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type6 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type6, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %nextlink, align 8
  store %struct._object* %18, %struct._object** %obj.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %do.body.7

do.body.7:                                        ; preds = %while.end
  %19 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %20, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.7
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp11, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %23, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %26(%struct._object* %27)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.7
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @teedataobject_reduce(%struct.teedataobject* %tdo) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %tdo.addr = alloca %struct.teedataobject*, align 8
  %i = alloca i32, align 4
  %values = alloca %struct._object*, align 8
  store %struct.teedataobject* %tdo, %struct.teedataobject** %tdo.addr, align 8
  %0 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %numread = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %0, i32 0, i32 2
  %1 = load i32, i32* %numread, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call, %struct._object** %values, align 8
  %2 = load %struct._object*, %struct._object** %values, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %numread1 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %4, i32 0, i32 2
  %5 = load i32, i32* %numread1, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values3 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %7, i32 0, i32 4
  %arrayidx = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values3, i32 0, i64 %idxprom
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %values5 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %11, i32 0, i32 4
  %arrayidx6 = getelementptr [57 x %struct._object*], [57 x %struct._object*]* %values5, i32 0, i64 %idxprom4
  %12 = load %struct._object*, %struct._object** %arrayidx6, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct._object*, %struct._object** %values, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %15, i32 0, i32 1
  %16 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx8 = getelementptr %struct._object*, %struct._object** %16, i64 %idxprom7
  store %struct._object* %12, %struct._object** %arrayidx8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc9 = add i32 %17, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %19 = bitcast %struct.teedataobject* %18 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %21 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %it = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %it, align 8
  %23 = load %struct._object*, %struct._object** %values, align 8
  %24 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %24, i32 0, i32 3
  %25 = load %struct._object*, %struct._object** %nextlink, align 8
  %tobool10 = icmp ne %struct._object* %25, null
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %26 = load %struct.teedataobject*, %struct.teedataobject** %tdo.addr, align 8
  %nextlink11 = getelementptr inbounds %struct.teedataobject, %struct.teedataobject* %26, i32 0, i32 3
  %27 = load %struct._object*, %struct._object** %nextlink11, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %27, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  %call12 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), %struct._typeobject* %20, %struct._object* %22, %struct._object* %23, %struct._object* %cond)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @tee(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %n = alloca i64, align 8
  %it = alloca %struct._object*, align 8
  %iterable = alloca %struct._object*, align 8
  %copyable = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 2, i64* %n, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0), %struct._object** %iterable, i64* %n)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %n, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.111, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load i64, i64* %n, align 8
  %call3 = call %struct._object* @PyTuple_New(i64 %3)
  store %struct._object* %call3, %struct._object** %result, align 8
  %4 = load %struct._object*, %struct._object** %result, align 8
  %cmp4 = icmp eq %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %5 = load i64, i64* %n, align 8
  %cmp7 = icmp eq i64 %5, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %6 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %6, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %7 = load %struct._object*, %struct._object** %iterable, align 8
  %call10 = call %struct._object* @PyObject_GetIter(%struct._object* %7)
  store %struct._object* %call10, %struct._object** %it, align 8
  %8 = load %struct._object*, %struct._object** %it, align 8
  %cmp11 = icmp eq %struct._object* %8, null
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.then.12
  %9 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** %it, align 8
  %call17 = call i32 @_PyObject_HasAttrId(%struct._object* %16, %struct._Py_Identifier* @tee.PyId___copy__)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else.46, label %if.then.19

if.then.19:                                       ; preds = %if.end.16
  %17 = load %struct._object*, %struct._object** %it, align 8
  %call20 = call %struct._object* @tee_fromiterable(%struct._object* %17)
  store %struct._object* %call20, %struct._object** %copyable, align 8
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.19
  %18 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp22, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %20, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %23(%struct._object* %24)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %25 = load %struct._object*, %struct._object** %copyable, align 8
  %cmp32 = icmp eq %struct._object* %25, null
  br i1 %cmp32, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %do.end.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %26 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp35, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %28, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %31(%struct._object* %32)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.45:                                        ; preds = %do.end.31
  br label %if.end.47

if.else.46:                                       ; preds = %if.end.16
  %33 = load %struct._object*, %struct._object** %it, align 8
  store %struct._object* %33, %struct._object** %copyable, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.46, %if.end.45
  %34 = load %struct._object*, %struct._object** %copyable, align 8
  %35 = load %struct._object*, %struct._object** %result, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %36, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %34, %struct._object** %arrayidx, align 8
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.47
  %37 = load i64, i64* %i, align 8
  %38 = load i64, i64* %n, align 8
  %cmp48 = icmp slt i64 %37, %38
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct._object*, %struct._object** %copyable, align 8
  %call49 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %39, %struct._Py_Identifier* @tee.PyId___copy__, i8* null)
  store %struct._object* %call49, %struct._object** %copyable, align 8
  %40 = load %struct._object*, %struct._object** %copyable, align 8
  %cmp50 = icmp eq %struct._object* %40, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %for.body
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %41 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp53, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %43, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %46(%struct._object* %47)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.63:                                        ; preds = %for.body
  %48 = load %struct._object*, %struct._object** %copyable, align 8
  %49 = load i64, i64* %i, align 8
  %50 = load %struct._object*, %struct._object** %result, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyTupleObject*
  %ob_item64 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %51, i32 0, i32 1
  %arrayidx65 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item64, i32 0, i64 %49
  store %struct._object* %48, %struct._object** %arrayidx65, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.63
  %52 = load i64, i64* %i, align 8
  %inc = add i64 %52, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %53, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.62, %do.end.44, %do.end, %if.then.8, %if.then.5, %if.then.1, %if.then
  %54 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %54
}

declare i32 @_PyObject_HasAttrId(%struct._object*, %struct._Py_Identifier*) #2

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
