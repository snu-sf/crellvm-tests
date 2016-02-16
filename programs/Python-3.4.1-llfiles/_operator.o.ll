; ModuleID = '_operator.o.bc'
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.itemgetterobject = type { %struct._object, i64, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.attrgetterobject = type { %struct._object, i64, %struct._object* }
%struct.methodcallerobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object* }

@operatormodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([333 x i8], [333 x i8]* @operator_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([51 x %struct.PyMethodDef], [51 x %struct.PyMethodDef]* @operator_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@itemgetter_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.141, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.itemgetterobject*)* @itemgetter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.itemgetterobject*, %struct._object*, %struct._object*)* @itemgetter_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([244 x i8], [244 x i8]* @itemgetter_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.itemgetterobject*, i32 (%struct._object*, i8*)*, i8*)* @itemgetter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @itemgetter_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str = private unnamed_addr constant [11 x i8] c"itemgetter\00", align 1
@attrgetter_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.143, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.attrgetterobject*)* @attrgetter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.attrgetterobject*, %struct._object*, %struct._object*)* @attrgetter_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @attrgetter_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.attrgetterobject*, i32 (%struct._object*, i8*)*, i8*)* @attrgetter_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @attrgetter_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"attrgetter\00", align 1
@methodcaller_type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.146, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.methodcallerobject*)* @methodcaller_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.methodcallerobject*, %struct._object*, %struct._object*)* @methodcaller_call to %struct._object* (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([274 x i8], [274 x i8]* @methodcaller_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.methodcallerobject*, i32 (%struct._object*, i8*)*, i8*)* @methodcaller_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @methodcaller_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"methodcaller\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"_operator\00", align 1
@operator_doc = internal global [333 x i8] c"Operator interface.\0A\0AThis module exports a set of functions implemented in C corresponding\0Ato the intrinsic operators of Python.  For example, operator.add(x, y)\0Ais equivalent to the expression x+y.  The function names are those\0Aused for special methods; variants without leading and trailing\0A'__' are also provided for convenience.\00", align 16
@operator_methods = internal global [51 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @truth, i32 8, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_contains, i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @indexOf, i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @countOf, i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.11, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @is_, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @is_not, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_index, i32 8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_add, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_sub, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_mul, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_floordiv, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_truediv, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_mod, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_neg, i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_pos, i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_abs, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_inv, i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.37, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_invert, i32 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_lshift, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.41, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_rshift, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_not_, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_and_, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.47, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_xor, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_or_, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_iadd, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_isub, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_imul, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_ifloordiv, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.59, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_itruediv, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.61, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_imod, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.63, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_ilshift, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_irshift, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.67, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_iand, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.69, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_ixor, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.71, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_ior, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.73, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_concat, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.75, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_iconcat, i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.77, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_getitem, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.79, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_setitem, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.81, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_delitem, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.83, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_pow, i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_ipow, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_lt, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.89, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_le, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.91, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_eq, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.93, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_ne, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.95, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_gt, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.97, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @op_ge, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.99, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @compare_digest, i32 1, i8* getelementptr inbounds ([465 x i8], [465 x i8]* @compare_digest__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @length_hint, i32 1, i8* getelementptr inbounds ([316 x i8], [316 x i8]* @length_hint__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [6 x i8] c"truth\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"truth(a) -- Return True if a is true, False otherwise.\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"contains\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"contains(a, b) -- Same as b in a (note reversed operands).\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"indexOf\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"indexOf(a, b) -- Return the first index of b in a.\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"countOf\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"countOf(a, b) -- Return the number of times b occurs in a.\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"is_\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"is_(a, b) -- Same as a is b.\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"is_not\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"is_not(a, b) -- Same as a is not b.\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"index(a) -- Same as a.__index__()\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"add(a, b) -- Same as a + b.\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"sub(a, b) -- Same as a - b.\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"mul(a, b) -- Same as a * b.\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"floordiv\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"floordiv(a, b) -- Same as a // b.\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"truediv\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"truediv(a, b) -- Same as a / b.\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"mod(a, b) -- Same as a % b.\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"neg(a) -- Same as -a.\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"pos\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"pos(a) -- Same as +a.\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"abs(a) -- Same as abs(a).\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"inv\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"inv(a) -- Same as ~a.\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"invert\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"invert(a) -- Same as ~a.\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"lshift\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"lshift(a, b) -- Same as a << b.\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"rshift\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"rshift(a, b) -- Same as a >> b.\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"not_\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"not_(a) -- Same as not a.\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"and_\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"and_(a, b) -- Same as a & b.\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"xor(a, b) -- Same as a ^ b.\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"or_\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"or_(a, b) -- Same as a | b.\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"iadd\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"a = iadd(a, b) -- Same as a += b.\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"isub\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"a = isub(a, b) -- Same as a -= b.\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"imul\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"a = imul(a, b) -- Same as a *= b.\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"ifloordiv\00", align 1
@.str.59 = private unnamed_addr constant [40 x i8] c"a = ifloordiv(a, b) -- Same as a //= b.\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"itruediv\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"a = itruediv(a, b) -- Same as a /= b\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"imod\00", align 1
@.str.63 = private unnamed_addr constant [34 x i8] c"a = imod(a, b) -- Same as a %= b.\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"ilshift\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"a = ilshift(a, b) -- Same as a <<= b.\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"irshift\00", align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"a = irshift(a, b) -- Same as a >>= b.\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"iand\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"a = iand(a, b) -- Same as a &= b.\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"ixor\00", align 1
@.str.71 = private unnamed_addr constant [34 x i8] c"a = ixor(a, b) -- Same as a ^= b.\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"a = ior(a, b) -- Same as a |= b.\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"concat\00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"concat(a, b) -- Same as a + b, for a and b sequences.\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"iconcat\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"a = iconcat(a, b) -- Same as a += b, for a and b sequences.\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"getitem\00", align 1
@.str.79 = private unnamed_addr constant [31 x i8] c"getitem(a, b) -- Same as a[b].\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"setitem\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"setitem(a, b, c) -- Same as a[b] = c.\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"delitem\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"delitem(a, b) -- Same as del a[b].\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"pow\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"pow(a, b) -- Same as a ** b.\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"ipow\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"a = ipow(a, b) -- Same as a **= b.\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"lt\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"lt(a, b) -- Same as a<b.\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.91 = private unnamed_addr constant [26 x i8] c"le(a, b) -- Same as a<=b.\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@.str.93 = private unnamed_addr constant [26 x i8] c"eq(a, b) -- Same as a==b.\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"ne(a, b) -- Same as a!=b.\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"gt\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"gt(a, b) -- Same as a>b.\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"ge(a, b) -- Same as a>=b.\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"_compare_digest\00", align 1
@compare_digest__doc__ = internal global [465 x i8] c"compare_digest(a, b) -> bool\0A\0AReturn 'a == b'.  This function uses an approach designed to prevent\0Atiming analysis, making it appropriate for cryptography.\0Aa and b must both be of the same type: either str (ASCII only),\0Aor any type that supports the buffer protocol (e.g. bytes).\0A\0ANote: If a and b are of different lengths, or if an error occurs,\0Aa timing attack could theoretically reveal information about the\0Atypes and lengths of a and b--but not their values.\0A\00", align 16
@.str.101 = private unnamed_addr constant [12 x i8] c"length_hint\00", align 1
@length_hint__doc__ = internal global [316 x i8] c"length_hint(obj, default=0) -> int\0AReturn an estimate of the number of items in obj.\0AThis is useful for presizing containers when building from an\0Aiterable.\0A\0AIf the object supports len(), the result will be\0Aexact. Otherwise, it may over- or under-estimate by an\0Aarbitrary amount. The result will be an integer >= 0.\00", align 16
@.str.102 = private unnamed_addr constant [12 x i8] c"op_contains\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.103 = private unnamed_addr constant [7 x i8] c"op_add\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"op_sub\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"op_mul\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"op_floordiv\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"op_truediv\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"op_mod\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"op_lshift\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"op_rshift\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"op_and_\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"op_xor\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"op_or_\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"op_iadd\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"op_isub\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c"op_imul\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"op_ifloordiv\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"op_itruediv\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"op_imod\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"op_ilshift\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"op_irshift\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"op_iand\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"op_ixor\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"op_ior\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"op_concat\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"op_iconcat\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"op_getitem\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"op_setitem\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.129 = private unnamed_addr constant [11 x i8] c"op_delitem\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"op_lt\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"op_le\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"op_eq\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"op_ne\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"op_gt\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"op_ge\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"OO:compare_digest\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.137 = private unnamed_addr constant [61 x i8] c"comparing strings with non-ASCII characters is not supported\00", align 1
@.str.138 = private unnamed_addr constant [76 x i8] c"unsupported operand types(s) or combination of types: '%.100s' and '%.100s'\00", align 1
@PyExc_BufferError = external global %struct._object*, align 8
@.str.139 = private unnamed_addr constant [32 x i8] c"Buffer must be single dimension\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"O|n:length_hint\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"operator.itemgetter\00", align 1
@itemgetter_doc = internal global [244 x i8] c"itemgetter(item, ...) --> itemgetter object\0A\0AReturn a callable object that fetches the given item(s) from its operand.\0AAfter f = itemgetter(2), the call f(r) returns r[2].\0AAfter g = itemgetter(2, 5, 3), the call g(r) returns (r[2], r[5], r[3])\00", align 16
@.str.142 = private unnamed_addr constant [13 x i8] c"itemgetter()\00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"operator.attrgetter\00", align 1
@attrgetter_doc = internal global [362 x i8] c"attrgetter(attr, ...) --> attrgetter object\0A\0AReturn a callable object that fetches the given attribute(s) from its operand.\0AAfter f = attrgetter('name'), the call f(r) returns r.name.\0AAfter g = attrgetter('name', 'date'), the call g(r) returns (r.name, r.date).\0AAfter h = attrgetter('name.first', 'name.last'), the call h(r) returns\0A(r.name.first, r.name.last).\00", align 16
@PyTuple_Type = external global %struct._typeobject, align 8
@.str.144 = private unnamed_addr constant [13 x i8] c"attrgetter()\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"attribute name must be a string\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"operator.methodcaller\00", align 1
@methodcaller_doc = internal global [274 x i8] c"methodcaller(name, ...) --> methodcaller object\0A\0AReturn a callable object that calls the given method on its operand.\0AAfter f = methodcaller('name'), the call f(r) returns r.name().\0AAfter g = methodcaller('name', 'date', foo=1), the call g(r) returns\0Ar.name('date', foo=1).\00", align 16
@.str.147 = private unnamed_addr constant [58 x i8] c"methodcaller needs at least one argument, the method name\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__operator() #0 {
entry:
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @operatormodule, i32 1013) #1, !dbg !1040
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !443, metadata !1041), !dbg !1042
  %cmp = icmp eq %struct._object* %call, null, !dbg !1043
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1045

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @itemgetter_type) #1, !dbg !1046
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1048
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !1049

if.end.4:                                         ; preds = %if.end
  %0 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1050, !tbaa !1051
  %inc = add i64 %0, 1, !dbg !1050
  store i64 %inc, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1050, !tbaa !1051
  %call5 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @itemgetter_type, i64 0, i32 0, i32 0)) #1, !dbg !1057
  %call6 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @attrgetter_type) #1, !dbg !1058
  %cmp7 = icmp slt i32 %call6, 0, !dbg !1060
  br i1 %cmp7, label %cleanup, label %if.end.9, !dbg !1061

if.end.9:                                         ; preds = %if.end.4
  %1 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1062, !tbaa !1051
  %inc10 = add i64 %1, 1, !dbg !1062
  store i64 %inc10, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1062, !tbaa !1051
  %call11 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @attrgetter_type, i64 0, i32 0, i32 0)) #1, !dbg !1063
  %call12 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @methodcaller_type) #1, !dbg !1064
  %cmp13 = icmp slt i32 %call12, 0, !dbg !1066
  br i1 %cmp13, label %cleanup, label %if.end.15, !dbg !1067

if.end.15:                                        ; preds = %if.end.9
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1068, !tbaa !1051
  %inc16 = add i64 %2, 1, !dbg !1068
  store i64 %inc16, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1068, !tbaa !1051
  %call17 = tail call i32 @PyModule_AddObject(%struct._object* %call, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @methodcaller_type, i64 0, i32 0, i32 0)) #1, !dbg !1069
  br label %cleanup, !dbg !1070

cleanup:                                          ; preds = %if.end.9, %if.end.4, %if.end, %entry, %if.end.15
  %retval.0 = phi %struct._object* [ %call, %if.end.15 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end.4 ], [ null, %if.end.9 ]
  ret %struct._object* %retval.0, !dbg !1071
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

declare i32 @PyType_Ready(%struct._typeobject*) #2

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @truth(%struct._object* nocapture readnone %s, %struct._object* %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !446, metadata !1041), !dbg !1072
  tail call void @llvm.dbg.value(metadata %struct._object* %a1, i64 0, metadata !447, metadata !1041), !dbg !1072
  %call = tail call i32 @PyObject_IsTrue(%struct._object* %a1) #1, !dbg !1073
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !448, metadata !1041), !dbg !1072
  %cmp = icmp eq i32 %call, -1, !dbg !1073
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1072

if.end:                                           ; preds = %entry
  %conv = sext i32 %call to i64, !dbg !1073
  %call2 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #1, !dbg !1075
  br label %cleanup, !dbg !1072

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1077
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_contains(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !451, metadata !1041), !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !452, metadata !1041), !dbg !1080
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1080
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1080
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1080
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !453, metadata !1041), !dbg !1080
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !454, metadata !1041), !dbg !1080
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1081
  %tobool = icmp eq i32 %call, 0, !dbg !1081
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1080

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !453, metadata !1041), !dbg !1080
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1083, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !454, metadata !1041), !dbg !1080
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1083, !tbaa !1086
  %call1 = call i32 @PySequence_Contains(%struct._object* %2, %struct._object* %3) #1, !dbg !1083
  call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !455, metadata !1041), !dbg !1080
  %cmp = icmp eq i32 %call1, -1, !dbg !1083
  br i1 %cmp, label %cleanup, label %if.end.4, !dbg !1080

if.end.4:                                         ; preds = %if.end
  %conv = sext i32 %call1 to i64, !dbg !1083
  %call5 = call %struct._object* @PyBool_FromLong(i64 %conv) #1, !dbg !1087
  br label %cleanup, !dbg !1080

cleanup:                                          ; preds = %if.end, %entry, %if.end.4
  %retval.0 = phi %struct._object* [ %call5, %if.end.4 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1089
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1089
  ret %struct._object* %retval.0, !dbg !1089
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @indexOf(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !458, metadata !1041), !dbg !1093
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !459, metadata !1041), !dbg !1093
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1093
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1093
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1093
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1093
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !460, metadata !1041), !dbg !1093
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !461, metadata !1041), !dbg !1093
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1094
  %tobool = icmp eq i32 %call, 0, !dbg !1094
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1093

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !460, metadata !1041), !dbg !1093
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1096, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !461, metadata !1041), !dbg !1093
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1096, !tbaa !1086
  %call1 = call i64 @PySequence_Index(%struct._object* %2, %struct._object* %3) #1, !dbg !1096
  call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !462, metadata !1041), !dbg !1093
  %cmp = icmp eq i64 %call1, -1, !dbg !1096
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !1093

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %call1) #1, !dbg !1099
  br label %cleanup, !dbg !1093

cleanup:                                          ; preds = %if.end, %entry, %if.end.3
  %retval.0 = phi %struct._object* [ %call4, %if.end.3 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1101
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1101
  ret %struct._object* %retval.0, !dbg !1101
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @countOf(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !465, metadata !1041), !dbg !1105
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !466, metadata !1041), !dbg !1105
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1105
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1105
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1105
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1105
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !467, metadata !1041), !dbg !1105
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !468, metadata !1041), !dbg !1105
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1106
  %tobool = icmp eq i32 %call, 0, !dbg !1106
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1105

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !467, metadata !1041), !dbg !1105
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1108, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !468, metadata !1041), !dbg !1105
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1108, !tbaa !1086
  %call1 = call i64 @PySequence_Count(%struct._object* %2, %struct._object* %3) #1, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !469, metadata !1041), !dbg !1105
  %cmp = icmp eq i64 %call1, -1, !dbg !1108
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !1105

if.end.3:                                         ; preds = %if.end
  %call4 = call %struct._object* @PyLong_FromSsize_t(i64 %call1) #1, !dbg !1111
  br label %cleanup, !dbg !1105

cleanup:                                          ; preds = %if.end, %entry, %if.end.3
  %retval.0 = phi %struct._object* [ %call4, %if.end.3 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1113
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1113
  ret %struct._object* %retval.0, !dbg !1113
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !472, metadata !1041), !dbg !1117
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !473, metadata !1041), !dbg !1118
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1119
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1119
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1119
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1119
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !476, metadata !1041), !dbg !1120
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !474, metadata !1041), !dbg !1121
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !475, metadata !1041), !dbg !1122
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1123
  %tobool = icmp eq i32 %call, 0, !dbg !1123
  br i1 %tobool, label %if.end, label %if.then, !dbg !1125

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !474, metadata !1041), !dbg !1121
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1126, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !475, metadata !1041), !dbg !1122
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1128, !tbaa !1086
  %cmp = icmp eq %struct._object* %2, %3, !dbg !1129
  %cond = select i1 %cmp, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1130
  call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !476, metadata !1041), !dbg !1120
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %cond, i64 0, i32 0, !dbg !1131
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1131, !tbaa !1051
  %inc = add i64 %4, 1, !dbg !1131
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1131, !tbaa !1051
  br label %if.end, !dbg !1132

if.end:                                           ; preds = %entry, %if.then
  %result.0 = phi %struct._object* [ %cond, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1133
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1133
  ret %struct._object* %result.0, !dbg !1134
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @is_not(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !479, metadata !1041), !dbg !1135
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !480, metadata !1041), !dbg !1136
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1137
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1137
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1137
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !483, metadata !1041), !dbg !1138
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !481, metadata !1041), !dbg !1139
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !482, metadata !1041), !dbg !1140
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1141
  %tobool = icmp eq i32 %call, 0, !dbg !1141
  br i1 %tobool, label %if.end, label %if.then, !dbg !1143

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !481, metadata !1041), !dbg !1139
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1144, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !482, metadata !1041), !dbg !1140
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1146, !tbaa !1086
  %cmp = icmp ne %struct._object* %2, %3, !dbg !1147
  %cond = select i1 %cmp, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), !dbg !1148
  call void @llvm.dbg.value(metadata %struct._object* %cond, i64 0, metadata !483, metadata !1041), !dbg !1138
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %cond, i64 0, i32 0, !dbg !1149
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1149, !tbaa !1051
  %inc = add i64 %4, 1, !dbg !1149
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1149, !tbaa !1051
  br label %if.end, !dbg !1150

if.end:                                           ; preds = %entry, %if.then
  %result.0 = phi %struct._object* [ %cond, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1151
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1151
  ret %struct._object* %result.0, !dbg !1152
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_index(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !486, metadata !1041), !dbg !1153
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !487, metadata !1041), !dbg !1154
  %call = tail call %struct._object* @PyNumber_Index(%struct._object* %a) #1, !dbg !1155
  ret %struct._object* %call, !dbg !1156
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_add(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !490, metadata !1041), !dbg !1157
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !491, metadata !1041), !dbg !1157
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1157
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1157
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1157
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1157
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !492, metadata !1041), !dbg !1157
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !493, metadata !1041), !dbg !1157
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.103, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1158
  %tobool = icmp eq i32 %call, 0, !dbg !1158
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1157

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !492, metadata !1041), !dbg !1157
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1160, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !493, metadata !1041), !dbg !1157
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1160, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Add(%struct._object* %2, %struct._object* %3) #1, !dbg !1160
  br label %cleanup, !dbg !1157

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1162
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1162
  ret %struct._object* %retval.0, !dbg !1162
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_sub(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !496, metadata !1041), !dbg !1165
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !497, metadata !1041), !dbg !1165
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1165
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1165
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1165
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1165
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !498, metadata !1041), !dbg !1165
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !499, metadata !1041), !dbg !1165
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1166
  %tobool = icmp eq i32 %call, 0, !dbg !1166
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1165

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !498, metadata !1041), !dbg !1165
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1168, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !499, metadata !1041), !dbg !1165
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1168, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Subtract(%struct._object* %2, %struct._object* %3) #1, !dbg !1168
  br label %cleanup, !dbg !1165

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1170
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1170
  ret %struct._object* %retval.0, !dbg !1170
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_mul(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !502, metadata !1041), !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !503, metadata !1041), !dbg !1173
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1173
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1173
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1173
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !504, metadata !1041), !dbg !1173
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !505, metadata !1041), !dbg !1173
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1174
  %tobool = icmp eq i32 %call, 0, !dbg !1174
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1173

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !504, metadata !1041), !dbg !1173
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1176, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !505, metadata !1041), !dbg !1173
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1176, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Multiply(%struct._object* %2, %struct._object* %3) #1, !dbg !1176
  br label %cleanup, !dbg !1173

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1178
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1178
  ret %struct._object* %retval.0, !dbg !1178
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_floordiv(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !508, metadata !1041), !dbg !1181
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !509, metadata !1041), !dbg !1181
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1181
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1181
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1181
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !510, metadata !1041), !dbg !1181
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !511, metadata !1041), !dbg !1181
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1182
  %tobool = icmp eq i32 %call, 0, !dbg !1182
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1181

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !510, metadata !1041), !dbg !1181
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1184, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !511, metadata !1041), !dbg !1181
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1184, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_FloorDivide(%struct._object* %2, %struct._object* %3) #1, !dbg !1184
  br label %cleanup, !dbg !1181

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1186
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1186
  ret %struct._object* %retval.0, !dbg !1186
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_truediv(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !514, metadata !1041), !dbg !1189
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !515, metadata !1041), !dbg !1189
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1189
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1189
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1189
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !516, metadata !1041), !dbg !1189
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !517, metadata !1041), !dbg !1189
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1190
  %tobool = icmp eq i32 %call, 0, !dbg !1190
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1189

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !516, metadata !1041), !dbg !1189
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1192, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !517, metadata !1041), !dbg !1189
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1192, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_TrueDivide(%struct._object* %2, %struct._object* %3) #1, !dbg !1192
  br label %cleanup, !dbg !1189

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1194
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1194
  ret %struct._object* %retval.0, !dbg !1194
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_mod(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !520, metadata !1041), !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !521, metadata !1041), !dbg !1197
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1197
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1197
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !522, metadata !1041), !dbg !1197
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !523, metadata !1041), !dbg !1197
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1198
  %tobool = icmp eq i32 %call, 0, !dbg !1198
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1197

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !522, metadata !1041), !dbg !1197
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1200, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !523, metadata !1041), !dbg !1197
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1200, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Remainder(%struct._object* %2, %struct._object* %3) #1, !dbg !1200
  br label %cleanup, !dbg !1197

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1202
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1202
  ret %struct._object* %retval.0, !dbg !1202
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_neg(%struct._object* nocapture readnone %s, %struct._object* %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !526, metadata !1041), !dbg !1205
  tail call void @llvm.dbg.value(metadata %struct._object* %a1, i64 0, metadata !527, metadata !1041), !dbg !1205
  %call = tail call %struct._object* @PyNumber_Negative(%struct._object* %a1) #1, !dbg !1205
  ret %struct._object* %call, !dbg !1205
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_pos(%struct._object* nocapture readnone %s, %struct._object* %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !530, metadata !1041), !dbg !1206
  tail call void @llvm.dbg.value(metadata %struct._object* %a1, i64 0, metadata !531, metadata !1041), !dbg !1206
  %call = tail call %struct._object* @PyNumber_Positive(%struct._object* %a1) #1, !dbg !1206
  ret %struct._object* %call, !dbg !1206
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_abs(%struct._object* nocapture readnone %s, %struct._object* %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !534, metadata !1041), !dbg !1207
  tail call void @llvm.dbg.value(metadata %struct._object* %a1, i64 0, metadata !535, metadata !1041), !dbg !1207
  %call = tail call %struct._object* @PyNumber_Absolute(%struct._object* %a1) #1, !dbg !1207
  ret %struct._object* %call, !dbg !1207
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_inv(%struct._object* nocapture readnone %s, %struct._object* %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !538, metadata !1041), !dbg !1208
  tail call void @llvm.dbg.value(metadata %struct._object* %a1, i64 0, metadata !539, metadata !1041), !dbg !1208
  %call = tail call %struct._object* @PyNumber_Invert(%struct._object* %a1) #1, !dbg !1208
  ret %struct._object* %call, !dbg !1208
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_invert(%struct._object* nocapture readnone %s, %struct._object* %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !542, metadata !1041), !dbg !1209
  tail call void @llvm.dbg.value(metadata %struct._object* %a1, i64 0, metadata !543, metadata !1041), !dbg !1209
  %call = tail call %struct._object* @PyNumber_Invert(%struct._object* %a1) #1, !dbg !1209
  ret %struct._object* %call, !dbg !1209
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_lshift(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !546, metadata !1041), !dbg !1210
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !547, metadata !1041), !dbg !1210
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1210
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1210
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1210
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1210
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !548, metadata !1041), !dbg !1210
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !549, metadata !1041), !dbg !1210
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1211
  %tobool = icmp eq i32 %call, 0, !dbg !1211
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1210

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !548, metadata !1041), !dbg !1210
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1213, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !549, metadata !1041), !dbg !1210
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1213, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Lshift(%struct._object* %2, %struct._object* %3) #1, !dbg !1213
  br label %cleanup, !dbg !1210

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1215
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1215
  ret %struct._object* %retval.0, !dbg !1215
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_rshift(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !552, metadata !1041), !dbg !1218
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !553, metadata !1041), !dbg !1218
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1218
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1218
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1218
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1218
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !554, metadata !1041), !dbg !1218
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !555, metadata !1041), !dbg !1218
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1219
  %tobool = icmp eq i32 %call, 0, !dbg !1219
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1218

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !554, metadata !1041), !dbg !1218
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1221, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !555, metadata !1041), !dbg !1218
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1221, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Rshift(%struct._object* %2, %struct._object* %3) #1, !dbg !1221
  br label %cleanup, !dbg !1218

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1223
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1223
  ret %struct._object* %retval.0, !dbg !1223
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_not_(%struct._object* nocapture readnone %s, %struct._object* %a1) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !558, metadata !1041), !dbg !1226
  tail call void @llvm.dbg.value(metadata %struct._object* %a1, i64 0, metadata !559, metadata !1041), !dbg !1226
  %call = tail call i32 @PyObject_Not(%struct._object* %a1) #1, !dbg !1227
  tail call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !560, metadata !1041), !dbg !1226
  %cmp = icmp eq i32 %call, -1, !dbg !1227
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1226

if.end:                                           ; preds = %entry
  %conv = sext i32 %call to i64, !dbg !1227
  %call2 = tail call %struct._object* @PyBool_FromLong(i64 %conv) #1, !dbg !1229
  br label %cleanup, !dbg !1226

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call2, %if.end ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !1231
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_and_(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !563, metadata !1041), !dbg !1234
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !564, metadata !1041), !dbg !1234
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1234
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1234
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1234
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1234
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !565, metadata !1041), !dbg !1234
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !566, metadata !1041), !dbg !1234
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1235
  %tobool = icmp eq i32 %call, 0, !dbg !1235
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1234

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !565, metadata !1041), !dbg !1234
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1237, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !566, metadata !1041), !dbg !1234
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1237, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_And(%struct._object* %2, %struct._object* %3) #1, !dbg !1237
  br label %cleanup, !dbg !1234

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1239
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1239
  ret %struct._object* %retval.0, !dbg !1239
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_xor(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !569, metadata !1041), !dbg !1242
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !570, metadata !1041), !dbg !1242
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1242
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1242
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1242
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1242
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !571, metadata !1041), !dbg !1242
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !572, metadata !1041), !dbg !1242
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.112, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1243
  %tobool = icmp eq i32 %call, 0, !dbg !1243
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1242

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !571, metadata !1041), !dbg !1242
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1245, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !572, metadata !1041), !dbg !1242
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1245, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Xor(%struct._object* %2, %struct._object* %3) #1, !dbg !1245
  br label %cleanup, !dbg !1242

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1247
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1247
  ret %struct._object* %retval.0, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_or_(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !575, metadata !1041), !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !576, metadata !1041), !dbg !1250
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1250
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1250
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !577, metadata !1041), !dbg !1250
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !578, metadata !1041), !dbg !1250
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1251
  %tobool = icmp eq i32 %call, 0, !dbg !1251
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1250

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !577, metadata !1041), !dbg !1250
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1253, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !578, metadata !1041), !dbg !1250
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1253, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Or(%struct._object* %2, %struct._object* %3) #1, !dbg !1253
  br label %cleanup, !dbg !1250

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1255
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1255
  ret %struct._object* %retval.0, !dbg !1255
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iadd(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !581, metadata !1041), !dbg !1258
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !582, metadata !1041), !dbg !1258
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1258
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1258
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1258
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1258
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !583, metadata !1041), !dbg !1258
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !584, metadata !1041), !dbg !1258
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.114, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1259
  %tobool = icmp eq i32 %call, 0, !dbg !1259
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1258

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !583, metadata !1041), !dbg !1258
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1261, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !584, metadata !1041), !dbg !1258
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1261, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceAdd(%struct._object* %2, %struct._object* %3) #1, !dbg !1261
  br label %cleanup, !dbg !1258

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1263
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1263
  ret %struct._object* %retval.0, !dbg !1263
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_isub(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !587, metadata !1041), !dbg !1266
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !588, metadata !1041), !dbg !1266
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1266
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1266
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1266
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1266
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !589, metadata !1041), !dbg !1266
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !590, metadata !1041), !dbg !1266
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1267
  %tobool = icmp eq i32 %call, 0, !dbg !1267
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1266

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !589, metadata !1041), !dbg !1266
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1269, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !590, metadata !1041), !dbg !1266
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1269, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceSubtract(%struct._object* %2, %struct._object* %3) #1, !dbg !1269
  br label %cleanup, !dbg !1266

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1271
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1271
  ret %struct._object* %retval.0, !dbg !1271
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_imul(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !593, metadata !1041), !dbg !1274
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !594, metadata !1041), !dbg !1274
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1274
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1274
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1274
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1274
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !595, metadata !1041), !dbg !1274
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !596, metadata !1041), !dbg !1274
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.116, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1275
  %tobool = icmp eq i32 %call, 0, !dbg !1275
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1274

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !595, metadata !1041), !dbg !1274
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1277, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !596, metadata !1041), !dbg !1274
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1277, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceMultiply(%struct._object* %2, %struct._object* %3) #1, !dbg !1277
  br label %cleanup, !dbg !1274

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1279
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1279
  ret %struct._object* %retval.0, !dbg !1279
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ifloordiv(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !599, metadata !1041), !dbg !1282
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !600, metadata !1041), !dbg !1282
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1282
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1282
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1282
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1282
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !601, metadata !1041), !dbg !1282
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !602, metadata !1041), !dbg !1282
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1283
  %tobool = icmp eq i32 %call, 0, !dbg !1283
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1282

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !601, metadata !1041), !dbg !1282
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1285, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !602, metadata !1041), !dbg !1282
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1285, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object* %2, %struct._object* %3) #1, !dbg !1285
  br label %cleanup, !dbg !1282

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1287
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1287
  ret %struct._object* %retval.0, !dbg !1287
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_itruediv(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !605, metadata !1041), !dbg !1290
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !606, metadata !1041), !dbg !1290
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1290
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1290
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1290
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1290
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !607, metadata !1041), !dbg !1290
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !608, metadata !1041), !dbg !1290
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1291
  %tobool = icmp eq i32 %call, 0, !dbg !1291
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1290

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !607, metadata !1041), !dbg !1290
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1293, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !608, metadata !1041), !dbg !1290
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1293, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object* %2, %struct._object* %3) #1, !dbg !1293
  br label %cleanup, !dbg !1290

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1295
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1295
  ret %struct._object* %retval.0, !dbg !1295
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_imod(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !611, metadata !1041), !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !612, metadata !1041), !dbg !1298
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1298
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1298
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !613, metadata !1041), !dbg !1298
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !614, metadata !1041), !dbg !1298
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1299
  %tobool = icmp eq i32 %call, 0, !dbg !1299
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1298

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !613, metadata !1041), !dbg !1298
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1301, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !614, metadata !1041), !dbg !1298
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1301, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceRemainder(%struct._object* %2, %struct._object* %3) #1, !dbg !1301
  br label %cleanup, !dbg !1298

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1303
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1303
  ret %struct._object* %retval.0, !dbg !1303
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ilshift(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !617, metadata !1041), !dbg !1306
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !618, metadata !1041), !dbg !1306
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1306
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1306
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1306
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1306
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !619, metadata !1041), !dbg !1306
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !620, metadata !1041), !dbg !1306
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1307
  %tobool = icmp eq i32 %call, 0, !dbg !1307
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1306

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !619, metadata !1041), !dbg !1306
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1309, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !620, metadata !1041), !dbg !1306
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1309, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceLshift(%struct._object* %2, %struct._object* %3) #1, !dbg !1309
  br label %cleanup, !dbg !1306

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1311
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1311
  ret %struct._object* %retval.0, !dbg !1311
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_irshift(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !623, metadata !1041), !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !624, metadata !1041), !dbg !1314
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1314
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1314
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1314
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !625, metadata !1041), !dbg !1314
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !626, metadata !1041), !dbg !1314
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1315
  %tobool = icmp eq i32 %call, 0, !dbg !1315
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1314

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !625, metadata !1041), !dbg !1314
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1317, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !626, metadata !1041), !dbg !1314
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1317, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceRshift(%struct._object* %2, %struct._object* %3) #1, !dbg !1317
  br label %cleanup, !dbg !1314

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1319
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1319
  ret %struct._object* %retval.0, !dbg !1319
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iand(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !629, metadata !1041), !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !630, metadata !1041), !dbg !1322
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1322
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1322
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1322
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !631, metadata !1041), !dbg !1322
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !632, metadata !1041), !dbg !1322
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.122, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1323
  %tobool = icmp eq i32 %call, 0, !dbg !1323
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1322

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !631, metadata !1041), !dbg !1322
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1325, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !632, metadata !1041), !dbg !1322
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1325, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceAnd(%struct._object* %2, %struct._object* %3) #1, !dbg !1325
  br label %cleanup, !dbg !1322

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1327
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1327
  ret %struct._object* %retval.0, !dbg !1327
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ixor(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !635, metadata !1041), !dbg !1330
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !636, metadata !1041), !dbg !1330
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1330
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1330
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1330
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1330
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !637, metadata !1041), !dbg !1330
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !638, metadata !1041), !dbg !1330
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1331
  %tobool = icmp eq i32 %call, 0, !dbg !1331
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1330

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !637, metadata !1041), !dbg !1330
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1333, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !638, metadata !1041), !dbg !1330
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1333, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceXor(%struct._object* %2, %struct._object* %3) #1, !dbg !1333
  br label %cleanup, !dbg !1330

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1335
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1335
  ret %struct._object* %retval.0, !dbg !1335
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ior(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !641, metadata !1041), !dbg !1338
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !642, metadata !1041), !dbg !1338
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1338
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1338
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1338
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1338
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !643, metadata !1041), !dbg !1338
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !644, metadata !1041), !dbg !1338
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1339
  %tobool = icmp eq i32 %call, 0, !dbg !1339
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1338

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !643, metadata !1041), !dbg !1338
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1341, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !644, metadata !1041), !dbg !1338
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1341, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %2, %struct._object* %3) #1, !dbg !1341
  br label %cleanup, !dbg !1338

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1343
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1343
  ret %struct._object* %retval.0, !dbg !1343
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_concat(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !647, metadata !1041), !dbg !1346
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !648, metadata !1041), !dbg !1346
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1346
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1346
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1346
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1346
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !649, metadata !1041), !dbg !1346
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !650, metadata !1041), !dbg !1346
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1347
  %tobool = icmp eq i32 %call, 0, !dbg !1347
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1346

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !649, metadata !1041), !dbg !1346
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1349, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !650, metadata !1041), !dbg !1346
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1349, !tbaa !1086
  %call1 = call %struct._object* @PySequence_Concat(%struct._object* %2, %struct._object* %3) #1, !dbg !1349
  br label %cleanup, !dbg !1346

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1351
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1351
  ret %struct._object* %retval.0, !dbg !1351
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_iconcat(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !653, metadata !1041), !dbg !1354
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !654, metadata !1041), !dbg !1354
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1354
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1354
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1354
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1354
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !655, metadata !1041), !dbg !1354
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !656, metadata !1041), !dbg !1354
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1355
  %tobool = icmp eq i32 %call, 0, !dbg !1355
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1354

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !655, metadata !1041), !dbg !1354
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1357, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !656, metadata !1041), !dbg !1354
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1357, !tbaa !1086
  %call1 = call %struct._object* @PySequence_InPlaceConcat(%struct._object* %2, %struct._object* %3) #1, !dbg !1357
  br label %cleanup, !dbg !1354

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1359
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1359
  ret %struct._object* %retval.0, !dbg !1359
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_getitem(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !659, metadata !1041), !dbg !1362
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !660, metadata !1041), !dbg !1362
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1362
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1362
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1362
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1362
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !661, metadata !1041), !dbg !1362
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !662, metadata !1041), !dbg !1362
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.127, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1363
  %tobool = icmp eq i32 %call, 0, !dbg !1363
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1362

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !661, metadata !1041), !dbg !1362
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1365, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !662, metadata !1041), !dbg !1362
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1365, !tbaa !1086
  %call1 = call %struct._object* @PyObject_GetItem(%struct._object* %2, %struct._object* %3) #1, !dbg !1365
  br label %cleanup, !dbg !1362

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1367
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1367
  ret %struct._object* %retval.0, !dbg !1367
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_setitem(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  %a3 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !665, metadata !1041), !dbg !1370
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !666, metadata !1041), !dbg !1370
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1370
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1370
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1370
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1370
  %2 = bitcast %struct._object** %a3 to i8*, !dbg !1370
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1370
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !667, metadata !1041), !dbg !1370
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !668, metadata !1041), !dbg !1370
  tail call void @llvm.dbg.value(metadata %struct._object** %a3, i64 0, metadata !669, metadata !1041), !dbg !1370
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i64 0, i64 0), i64 3, i64 3, %struct._object** nonnull %a1, %struct._object** nonnull %a2, %struct._object** nonnull %a3) #1, !dbg !1371
  %tobool = icmp eq i32 %call, 0, !dbg !1371
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1370

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !667, metadata !1041), !dbg !1370
  %3 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1373, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !668, metadata !1041), !dbg !1370
  %4 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1373, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a3, i64 0, metadata !669, metadata !1041), !dbg !1370
  %5 = load %struct._object*, %struct._object** %a3, align 8, !dbg !1373, !tbaa !1086
  %call1 = call i32 @PyObject_SetItem(%struct._object* %3, %struct._object* %4, %struct._object* %5) #1, !dbg !1373
  %cmp = icmp eq i32 %call1, -1, !dbg !1373
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !1370

if.end.3:                                         ; preds = %if.end
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1376, !tbaa !1051
  %inc = add i64 %6, 1, !dbg !1376
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1376, !tbaa !1051
  br label %cleanup, !dbg !1370

cleanup:                                          ; preds = %if.end, %entry, %if.end.3
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.3 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1378
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1378
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1378
  ret %struct._object* %retval.0, !dbg !1378
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_delitem(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !672, metadata !1041), !dbg !1382
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !673, metadata !1041), !dbg !1382
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1382
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1382
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1382
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1382
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !674, metadata !1041), !dbg !1382
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !675, metadata !1041), !dbg !1382
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.129, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1383
  %tobool = icmp eq i32 %call, 0, !dbg !1383
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1382

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !674, metadata !1041), !dbg !1382
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1385, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !675, metadata !1041), !dbg !1382
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1385, !tbaa !1086
  %call1 = call i32 @PyObject_DelItem(%struct._object* %2, %struct._object* %3) #1, !dbg !1385
  %cmp = icmp eq i32 %call1, -1, !dbg !1385
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !1382

if.end.3:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1388, !tbaa !1051
  %inc = add i64 %4, 1, !dbg !1388
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1388, !tbaa !1051
  br label %cleanup, !dbg !1382

cleanup:                                          ; preds = %if.end, %entry, %if.end.3
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.3 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1390
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1390
  ret %struct._object* %retval.0, !dbg !1390
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_pow(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !678, metadata !1041), !dbg !1394
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !679, metadata !1041), !dbg !1395
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1396
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1396
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1396
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1396
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !680, metadata !1041), !dbg !1397
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !681, metadata !1041), !dbg !1398
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.84, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1399
  %tobool = icmp eq i32 %call, 0, !dbg !1399
  br i1 %tobool, label %cleanup, label %if.then, !dbg !1401

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !680, metadata !1041), !dbg !1397
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1402, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !681, metadata !1041), !dbg !1398
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1403, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_Power(%struct._object* %2, %struct._object* %3, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1404
  br label %cleanup, !dbg !1405

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct._object* [ %call1, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1406
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1406
  ret %struct._object* %retval.0, !dbg !1406
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ipow(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !684, metadata !1041), !dbg !1407
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !685, metadata !1041), !dbg !1408
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1409
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1409
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1409
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1409
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !686, metadata !1041), !dbg !1410
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !687, metadata !1041), !dbg !1411
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1412
  %tobool = icmp eq i32 %call, 0, !dbg !1412
  br i1 %tobool, label %cleanup, label %if.then, !dbg !1414

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !686, metadata !1041), !dbg !1410
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1415, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !687, metadata !1041), !dbg !1411
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1416, !tbaa !1086
  %call1 = call %struct._object* @PyNumber_InPlacePower(%struct._object* %2, %struct._object* %3, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1417
  br label %cleanup, !dbg !1418

cleanup:                                          ; preds = %entry, %if.then
  %retval.0 = phi %struct._object* [ %call1, %if.then ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1419
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1419
  ret %struct._object* %retval.0, !dbg !1419
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_lt(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !690, metadata !1041), !dbg !1420
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !691, metadata !1041), !dbg !1420
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1420
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1420
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1420
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !692, metadata !1041), !dbg !1420
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !693, metadata !1041), !dbg !1420
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.130, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1421
  %tobool = icmp eq i32 %call, 0, !dbg !1421
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1420

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !692, metadata !1041), !dbg !1420
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1423, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !693, metadata !1041), !dbg !1420
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1423, !tbaa !1086
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %2, %struct._object* %3, i32 0) #1, !dbg !1423
  br label %cleanup, !dbg !1420

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1425
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1425
  ret %struct._object* %retval.0, !dbg !1425
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_le(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !696, metadata !1041), !dbg !1428
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !697, metadata !1041), !dbg !1428
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1428
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1428
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1428
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1428
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !698, metadata !1041), !dbg !1428
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !699, metadata !1041), !dbg !1428
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1429
  %tobool = icmp eq i32 %call, 0, !dbg !1429
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1428

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !698, metadata !1041), !dbg !1428
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1431, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !699, metadata !1041), !dbg !1428
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1431, !tbaa !1086
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %2, %struct._object* %3, i32 1) #1, !dbg !1431
  br label %cleanup, !dbg !1428

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1433
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1433
  ret %struct._object* %retval.0, !dbg !1433
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_eq(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !702, metadata !1041), !dbg !1436
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !703, metadata !1041), !dbg !1436
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1436
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1436
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1436
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1436
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !704, metadata !1041), !dbg !1436
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !705, metadata !1041), !dbg !1436
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.132, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1437
  %tobool = icmp eq i32 %call, 0, !dbg !1437
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1436

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !704, metadata !1041), !dbg !1436
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1439, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !705, metadata !1041), !dbg !1436
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1439, !tbaa !1086
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %2, %struct._object* %3, i32 2) #1, !dbg !1439
  br label %cleanup, !dbg !1436

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1441
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1441
  ret %struct._object* %retval.0, !dbg !1441
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ne(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !708, metadata !1041), !dbg !1444
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !709, metadata !1041), !dbg !1444
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1444
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1444
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1444
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1444
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !710, metadata !1041), !dbg !1444
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !711, metadata !1041), !dbg !1444
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1445
  %tobool = icmp eq i32 %call, 0, !dbg !1445
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1444

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !710, metadata !1041), !dbg !1444
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1447, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !711, metadata !1041), !dbg !1444
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1447, !tbaa !1086
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %2, %struct._object* %3, i32 3) #1, !dbg !1447
  br label %cleanup, !dbg !1444

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1449
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1449
  ret %struct._object* %retval.0, !dbg !1449
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_gt(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !714, metadata !1041), !dbg !1452
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !715, metadata !1041), !dbg !1452
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1452
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1452
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1452
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1452
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !716, metadata !1041), !dbg !1452
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !717, metadata !1041), !dbg !1452
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1453
  %tobool = icmp eq i32 %call, 0, !dbg !1453
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1452

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !716, metadata !1041), !dbg !1452
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1455, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !717, metadata !1041), !dbg !1452
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1455, !tbaa !1086
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %2, %struct._object* %3, i32 4) #1, !dbg !1455
  br label %cleanup, !dbg !1452

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1457
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1457
  ret %struct._object* %retval.0, !dbg !1457
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @op_ge(%struct._object* nocapture readnone %s, %struct._object* %a) #0 {
entry:
  %a1 = alloca %struct._object*, align 8
  %a2 = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %s, i64 0, metadata !720, metadata !1041), !dbg !1460
  tail call void @llvm.dbg.value(metadata %struct._object* %a, i64 0, metadata !721, metadata !1041), !dbg !1460
  %0 = bitcast %struct._object** %a1 to i8*, !dbg !1460
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1460
  %1 = bitcast %struct._object** %a2 to i8*, !dbg !1460
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1460
  tail call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !722, metadata !1041), !dbg !1460
  tail call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !723, metadata !1041), !dbg !1460
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %a, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i64 0, i64 0), i64 2, i64 2, %struct._object** nonnull %a1, %struct._object** nonnull %a2) #1, !dbg !1461
  %tobool = icmp eq i32 %call, 0, !dbg !1461
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1460

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a1, i64 0, metadata !722, metadata !1041), !dbg !1460
  %2 = load %struct._object*, %struct._object** %a1, align 8, !dbg !1463, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a2, i64 0, metadata !723, metadata !1041), !dbg !1460
  %3 = load %struct._object*, %struct._object** %a2, align 8, !dbg !1463, !tbaa !1086
  %call1 = call %struct._object* @PyObject_RichCompare(%struct._object* %2, %struct._object* %3, i32 5) #1, !dbg !1463
  br label %cleanup, !dbg !1460

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1465
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1465
  ret %struct._object* %retval.0, !dbg !1465
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @compare_digest(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %length.i.129 = alloca i64, align 8
  %length.i = alloca i64, align 8
  %a = alloca %struct._object*, align 8
  %b = alloca %struct._object*, align 8
  %view_a = alloca %struct.bufferinfo, align 8
  %view_b = alloca %struct.bufferinfo, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !726, metadata !1041), !dbg !1468
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !727, metadata !1041), !dbg !1469
  %0 = bitcast %struct._object** %a to i8*, !dbg !1470
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1470
  %1 = bitcast %struct._object** %b to i8*, !dbg !1470
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1470
  tail call void @llvm.dbg.value(metadata %struct._object** %a, i64 0, metadata !728, metadata !1041), !dbg !1471
  tail call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.136, i64 0, i64 0), %struct._object** nonnull %a, %struct._object** nonnull %b) #1, !dbg !1473
  %tobool = icmp eq i32 %call, 0, !dbg !1473
  br i1 %tobool, label %cleanup.123, label %if.end, !dbg !1475

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %a, i64 0, metadata !728, metadata !1041), !dbg !1471
  %2 = load %struct._object*, %struct._object** %a, align 8, !dbg !1476, !tbaa !1086
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i64 0, i32 1, !dbg !1479
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1476, !tbaa !1480
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !1479
  %4 = load i64, i64* %tp_flags, align 8, !dbg !1479, !tbaa !1481
  %and = and i64 %4, 268435456, !dbg !1479
  %cmp = icmp eq i64 %and, 0, !dbg !1479
  br i1 %cmp, label %if.else, label %land.lhs.true, !dbg !1485

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %5 = load %struct._object*, %struct._object** %b, align 8, !dbg !1486, !tbaa !1086
  %ob_type1 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1486
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type1, align 8, !dbg !1486, !tbaa !1480
  %tp_flags2 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 19, !dbg !1486
  %7 = load i64, i64* %tp_flags2, align 8, !dbg !1486, !tbaa !1481
  %and3 = and i64 %7, 268435456, !dbg !1486
  %cmp4 = icmp eq i64 %and3, 0, !dbg !1486
  br i1 %cmp4, label %if.else, label %if.then.5, !dbg !1488

if.then.5:                                        ; preds = %land.lhs.true
  %state = getelementptr inbounds %struct._object, %struct._object* %2, i64 2, !dbg !1489
  %8 = bitcast %struct._object* %state to i32*, !dbg !1489
  %bf.load = load i32, i32* %8, align 4, !dbg !1489
  %bf.clear = and i32 %bf.load, 128, !dbg !1489
  %tobool6 = icmp eq i32 %bf.clear, 0, !dbg !1489
  br i1 %tobool6, label %cond.false, label %lor.lhs.false, !dbg !1489

cond.false:                                       ; preds = %if.then.5
  %call7 = call i32 @_PyUnicode_Ready(%struct._object* %2) #1, !dbg !1492
  %phitmp = icmp eq i32 %call7, -1, !dbg !1492
  br i1 %phitmp, label %cleanup.123, label %cond.false.lor.lhs.false_crit_edge, !dbg !1494

cond.false.lor.lhs.false_crit_edge:               ; preds = %cond.false
  %.pre = load %struct._object*, %struct._object** %b, align 8, !dbg !1495, !tbaa !1086
  br label %lor.lhs.false, !dbg !1494

lor.lhs.false:                                    ; preds = %cond.false.lor.lhs.false_crit_edge, %if.then.5
  %9 = phi %struct._object* [ %.pre, %cond.false.lor.lhs.false_crit_edge ], [ %5, %if.then.5 ], !dbg !1495
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %state9 = getelementptr inbounds %struct._object, %struct._object* %9, i64 2, !dbg !1495
  %10 = bitcast %struct._object* %state9 to i32*, !dbg !1495
  %bf.load10 = load i32, i32* %10, align 4, !dbg !1495
  %bf.clear12 = and i32 %bf.load10, 128, !dbg !1495
  %tobool13 = icmp eq i32 %bf.clear12, 0, !dbg !1495
  br i1 %tobool13, label %cond.false.15, label %if.end.21, !dbg !1495

cond.false.15:                                    ; preds = %lor.lhs.false
  %call16 = call i32 @_PyUnicode_Ready(%struct._object* %9) #1, !dbg !1497
  %phitmp128 = icmp eq i32 %call16, -1, !dbg !1497
  br i1 %phitmp128, label %cleanup.123, label %if.end.21, !dbg !1499

if.end.21:                                        ; preds = %lor.lhs.false, %cond.false.15
  call void @llvm.dbg.value(metadata %struct._object** %a, i64 0, metadata !728, metadata !1041), !dbg !1471
  %11 = load %struct._object*, %struct._object** %a, align 8, !dbg !1500, !tbaa !1086
  %state22 = getelementptr inbounds %struct._object, %struct._object* %11, i64 2, !dbg !1500
  %12 = bitcast %struct._object* %state22 to i32*, !dbg !1500
  %bf.load23 = load i32, i32* %12, align 4, !dbg !1500
  %bf.clear25 = and i32 %bf.load23, 64, !dbg !1500
  %tobool26 = icmp eq i32 %bf.clear25, 0, !dbg !1500
  br i1 %tobool26, label %if.then.33, label %lor.lhs.false.27, !dbg !1502

lor.lhs.false.27:                                 ; preds = %if.end.21
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %13 = bitcast %struct._object** %b to %struct.PyASCIIObject**, !dbg !1503
  %14 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %13, align 8, !dbg !1505, !tbaa !1086
  %15 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 0, i32 3, i32 0, !dbg !1503
  %bf.load29 = load i32, i32* %15, align 4, !dbg !1503
  %bf.clear31 = and i32 %bf.load29, 64, !dbg !1503
  %tobool32 = icmp eq i32 %bf.clear31, 0, !dbg !1503
  %16 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 0, i32 0, !dbg !1506
  br i1 %tobool32, label %if.then.33, label %if.end.34, !dbg !1507

if.then.33:                                       ; preds = %lor.lhs.false.27, %if.end.21
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1508, !tbaa !1086
  call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.137, i64 0, i64 0)) #1, !dbg !1510
  br label %cleanup.123, !dbg !1511

if.end.34:                                        ; preds = %lor.lhs.false.27
  %bf.clear38 = and i32 %bf.load23, 32, !dbg !1512
  %tobool39 = icmp eq i32 %bf.clear38, 0, !dbg !1512
  br i1 %tobool39, label %cond.false.51, label %cond.true.40, !dbg !1512

cond.true.40:                                     ; preds = %if.end.34
  %add.ptr = getelementptr %struct._object, %struct._object* %11, i64 3, !dbg !1513
  %18 = bitcast %struct._object* %add.ptr to i8*, !dbg !1513
  br label %cond.end.52, !dbg !1515

cond.false.51:                                    ; preds = %if.end.34
  %data = getelementptr inbounds %struct._object, %struct._object* %11, i64 4, i32 1, !dbg !1517
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !1517
  %19 = load i8*, i8** %any, align 8, !dbg !1517, !tbaa !1086
  br label %cond.end.52, !dbg !1517

cond.end.52:                                      ; preds = %cond.true.40, %cond.false.51
  %cond53 = phi i8* [ %19, %cond.false.51 ], [ %18, %cond.true.40 ], !dbg !1512
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %state54 = getelementptr inbounds %struct._object, %struct._object* %16, i64 2, !dbg !1506
  %20 = bitcast %struct._object* %state54 to i32*, !dbg !1506
  %bf.load55 = load i32, i32* %20, align 4, !dbg !1506
  %bf.clear57 = and i32 %bf.load55, 32, !dbg !1506
  %tobool58 = icmp eq i32 %bf.clear57, 0, !dbg !1506
  br i1 %tobool58, label %cond.false.71, label %cond.true.59, !dbg !1506

cond.true.59:                                     ; preds = %cond.end.52
  %bf.clear63 = and i32 %bf.load55, 64, !dbg !1519
  %tobool64 = icmp ne i32 %bf.clear63, 0, !dbg !1519
  %add.ptr66 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 1, i32 0, !dbg !1520
  %21 = bitcast %struct._object* %add.ptr66 to i8*, !dbg !1520
  %add.ptr68 = getelementptr %struct._object, %struct._object* %16, i64 4, i32 1, !dbg !1521
  %22 = bitcast %struct._typeobject** %add.ptr68 to i8*, !dbg !1521
  %cond70 = select i1 %tobool64, i8* %21, i8* %22, !dbg !1519
  br label %cond.end.74, !dbg !1519

cond.false.71:                                    ; preds = %cond.end.52
  %data72 = getelementptr inbounds %struct._object, %struct._object* %16, i64 4, i32 1, !dbg !1523
  %any73 = bitcast %struct._typeobject** %data72 to i8**, !dbg !1523
  %23 = load i8*, i8** %any73, align 8, !dbg !1523, !tbaa !1086
  br label %cond.end.74, !dbg !1523

cond.end.74:                                      ; preds = %cond.true.59, %cond.false.71
  %cond75 = phi i8* [ %23, %cond.false.71 ], [ %cond70, %cond.true.59 ], !dbg !1506
  call void @llvm.dbg.value(metadata %struct._object** %a, i64 0, metadata !728, metadata !1041), !dbg !1471
  %24 = getelementptr inbounds %struct._object, %struct._object* %11, i64 1, i32 0, !dbg !1524
  %25 = load i64, i64* %24, align 8, !dbg !1524, !tbaa !1525
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %length76 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 0, i32 1, !dbg !1505
  %26 = load i64, i64* %length76, align 8, !dbg !1505, !tbaa !1525
  call void @llvm.dbg.value(metadata i8* %cond53, i64 0, metadata !739, metadata !1041) #1, !dbg !1528
  call void @llvm.dbg.value(metadata i8* %cond75, i64 0, metadata !740, metadata !1041) #1, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %25, i64 0, metadata !741, metadata !1041) #1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !742, metadata !1041) #1, !dbg !1532
  %length.i.0.length.0.length.0..sroa_cast = bitcast i64* %length.i to i8*, !dbg !1533
  call void @llvm.lifetime.start(i64 8, i8* %length.i.0.length.0.length.0..sroa_cast), !dbg !1533
  call void @llvm.dbg.value(metadata i64 %26, i64 0, metadata !743, metadata !1041) #1, !dbg !1534
  store volatile i64 %26, i64* %length.i, align 8, !dbg !1535
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !745, metadata !1041) #1, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %cond75, i64 0, metadata !746, metadata !1041) #1, !dbg !1537
  call void @llvm.dbg.value(metadata i64* %length.i, i64 0, metadata !743, metadata !1041) #1, !dbg !1534
  %length.i.0.length.0.length.0..i = load volatile i64, i64* %length.i, align 8, !dbg !1538
  call void @llvm.dbg.value(metadata i8* %cond53, i64 0, metadata !745, metadata !1041) #1, !dbg !1536
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !748, metadata !1041) #1, !dbg !1540
  call void @llvm.dbg.value(metadata i64* %length.i, i64 0, metadata !743, metadata !1041) #1, !dbg !1534
  %length.i.0.length.0.length.0.17.i = load volatile i64, i64* %length.i, align 8, !dbg !1541
  %cmp1.i = icmp eq i64 %length.i.0.length.0.length.0.17.i, %25, !dbg !1543
  call void @llvm.dbg.value(metadata i8* %cond75, i64 0, metadata !745, metadata !1041) #1, !dbg !1536
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !748, metadata !1041) #1, !dbg !1540
  %27 = zext i1 %cmp1.i to i8, !dbg !1544
  %result.1.i = xor i8 %27, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64* %length.i, i64 0, metadata !743, metadata !1041) #1, !dbg !1534
  %length.i.0.length.0.length.0.18.25.i = load volatile i64, i64* %length.i, align 8, !dbg !1545
  %cmp4.26.i = icmp sgt i64 %length.i.0.length.0.length.0.18.25.i, 0, !dbg !1548
  br i1 %cmp4.26.i, label %for.body.lr.ph.i, label %_tscmp.exit, !dbg !1549

for.body.lr.ph.i:                                 ; preds = %cond.end.74
  %cmp.i = icmp eq i64 %length.i.0.length.0.length.0..i, %25, !dbg !1550
  %a..i = select i1 %cmp.i, i8* %cond53, i8* null, !dbg !1551
  %left.1.i = select i1 %cmp1.i, i8* %a..i, i8* %cond75, !dbg !1544
  br label %for.body.i, !dbg !1549

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %result.230.i = phi i8 [ %result.1.i, %for.body.lr.ph.i ], [ %or23.i, %for.body.i ], !dbg !1552
  %i.029.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i ], !dbg !1552
  %right.028.i = phi i8* [ %cond75, %for.body.lr.ph.i ], [ %incdec.ptr5.i, %for.body.i ], !dbg !1552
  %left.227.i = phi i8* [ %left.1.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i ], !dbg !1552
  %incdec.ptr.i = getelementptr i8, i8* %left.227.i, i64 1, !dbg !1553
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !745, metadata !1041) #1, !dbg !1536
  %28 = load volatile i8, i8* %left.227.i, align 1, !dbg !1555, !tbaa !1556
  %incdec.ptr5.i = getelementptr i8, i8* %right.028.i, i64 1, !dbg !1557
  call void @llvm.dbg.value(metadata i8* %incdec.ptr5.i, i64 0, metadata !746, metadata !1041) #1, !dbg !1537
  %29 = load volatile i8, i8* %right.028.i, align 1, !dbg !1558, !tbaa !1556
  %xor22.i = xor i8 %29, %28, !dbg !1559
  %or23.i = or i8 %xor22.i, %result.230.i, !dbg !1560
  call void @llvm.dbg.value(metadata i8 %or23.i, i64 0, metadata !748, metadata !1041) #1, !dbg !1540
  %inc.i = add i64 %i.029.i, 1, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !747, metadata !1041) #1, !dbg !1562
  call void @llvm.dbg.value(metadata i64* %length.i, i64 0, metadata !743, metadata !1041) #1, !dbg !1534
  %length.i.0.length.0.length.0.18.i = load volatile i64, i64* %length.i, align 8, !dbg !1545
  %cmp4.i = icmp slt i64 %inc.i, %length.i.0.length.0.length.0.18.i, !dbg !1548
  br i1 %cmp4.i, label %for.body.i, label %_tscmp.exit.loopexit, !dbg !1549

_tscmp.exit.loopexit:                             ; preds = %for.body.i
  %or23.i.lcssa = phi i8 [ %or23.i, %for.body.i ]
  br label %_tscmp.exit, !dbg !1563

_tscmp.exit:                                      ; preds = %_tscmp.exit.loopexit, %cond.end.74
  %result.2.lcssa.i = phi i8 [ %result.1.i, %cond.end.74 ], [ %or23.i.lcssa, %_tscmp.exit.loopexit ], !dbg !1552
  %cmp10.i = icmp eq i8 %result.2.lcssa.i, 0, !dbg !1563
  %conv11.i = zext i1 %cmp10.i to i64, !dbg !1563
  call void @llvm.lifetime.end(i64 8, i8* %length.i.0.length.0.length.0..sroa_cast), !dbg !1564
  br label %if.end.121, !dbg !1565

if.else:                                          ; preds = %land.lhs.true, %if.end
  %30 = bitcast %struct.bufferinfo* %view_a to i8*, !dbg !1566
  call void @llvm.lifetime.start(i64 80, i8* %30) #1, !dbg !1566
  %31 = bitcast %struct.bufferinfo* %view_b to i8*, !dbg !1567
  call void @llvm.lifetime.start(i64 80, i8* %31) #1, !dbg !1567
  call void @llvm.dbg.value(metadata %struct._object** %a, i64 0, metadata !728, metadata !1041), !dbg !1471
  %tp_as_buffer = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 18, !dbg !1568
  %32 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer, align 8, !dbg !1568, !tbaa !1569
  %cmp79 = icmp eq %struct.PyBufferProcs* %32, null, !dbg !1568
  br i1 %cmp79, label %land.lhs.true.84, label %land.rhs, !dbg !1568

land.rhs:                                         ; preds = %if.else
  %bf_getbuffer = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %32, i64 0, i32 0, !dbg !1570
  %33 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer, align 8, !dbg !1570, !tbaa !1572
  %cmp82 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %33, null, !dbg !1570
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.101, !dbg !1574

land.lhs.true.84:                                 ; preds = %land.rhs, %if.else
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %34 = load %struct._object*, %struct._object** %b, align 8, !dbg !1575, !tbaa !1086
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %34, i64 0, i32 1, !dbg !1576
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !1575, !tbaa !1480
  %tp_as_buffer86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 18, !dbg !1576
  %36 = load %struct.PyBufferProcs*, %struct.PyBufferProcs** %tp_as_buffer86, align 8, !dbg !1576, !tbaa !1569
  %cmp87 = icmp eq %struct.PyBufferProcs* %36, null, !dbg !1576
  br i1 %cmp87, label %if.then.96, label %land.rhs.88, !dbg !1576

land.rhs.88:                                      ; preds = %land.lhs.true.84
  %bf_getbuffer91 = getelementptr inbounds %struct.PyBufferProcs, %struct.PyBufferProcs* %36, i64 0, i32 0, !dbg !1578
  %37 = load i32 (%struct._object*, %struct.bufferinfo*, i32)*, i32 (%struct._object*, %struct.bufferinfo*, i32)** %bf_getbuffer91, align 8, !dbg !1578, !tbaa !1572
  %cmp92 = icmp eq i32 (%struct._object*, %struct.bufferinfo*, i32)* %37, null, !dbg !1578
  br i1 %cmp92, label %if.then.96, label %if.end.101, !dbg !1580

if.then.96:                                       ; preds = %land.rhs.88, %land.lhs.true.84
  %38 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1581, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %a, i64 0, metadata !728, metadata !1041), !dbg !1471
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 1, !dbg !1582
  %39 = load i8*, i8** %tp_name, align 8, !dbg !1582, !tbaa !1583
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %tp_name99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i64 0, i32 1, !dbg !1584
  %40 = load i8*, i8** %tp_name99, align 8, !dbg !1584, !tbaa !1583
  %call100 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %38, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.138, i64 0, i64 0), i8* %39, i8* %40) #1, !dbg !1585
  br label %cleanup.thread, !dbg !1586

if.end.101:                                       ; preds = %land.rhs.88, %land.rhs
  call void @llvm.dbg.value(metadata %struct._object** %a, i64 0, metadata !728, metadata !1041), !dbg !1471
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_a, i64 0, metadata !731, metadata !1041), !dbg !1587
  %call102 = call i32 @PyObject_GetBuffer(%struct._object* %2, %struct.bufferinfo* nonnull %view_a, i32 0) #1, !dbg !1588
  %cmp103 = icmp eq i32 %call102, -1, !dbg !1590
  br i1 %cmp103, label %cleanup.thread, label %if.end.105, !dbg !1591

if.end.105:                                       ; preds = %if.end.101
  %ndim = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i64 0, i32 5, !dbg !1592
  %41 = load i32, i32* %ndim, align 4, !dbg !1592, !tbaa !1594
  %cmp106 = icmp sgt i32 %41, 1, !dbg !1596
  br i1 %cmp106, label %if.then.107, label %if.end.108, !dbg !1597

if.then.107:                                      ; preds = %if.end.105
  %42 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !1598, !tbaa !1086
  call void @PyErr_SetString(%struct._object* %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.139, i64 0, i64 0)) #1, !dbg !1600
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_a, i64 0, metadata !731, metadata !1041), !dbg !1587
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view_a) #1, !dbg !1601
  br label %cleanup.thread, !dbg !1602

if.end.108:                                       ; preds = %if.end.105
  call void @llvm.dbg.value(metadata %struct._object** %b, i64 0, metadata !729, metadata !1041), !dbg !1472
  %43 = load %struct._object*, %struct._object** %b, align 8, !dbg !1603, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_b, i64 0, metadata !734, metadata !1041), !dbg !1605
  %call109 = call i32 @PyObject_GetBuffer(%struct._object* %43, %struct.bufferinfo* nonnull %view_b, i32 0) #1, !dbg !1606
  %cmp110 = icmp eq i32 %call109, -1, !dbg !1607
  br i1 %cmp110, label %if.then.111, label %if.end.112, !dbg !1608

if.then.111:                                      ; preds = %if.end.108
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_a, i64 0, metadata !731, metadata !1041), !dbg !1587
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view_a) #1, !dbg !1609
  br label %cleanup.thread, !dbg !1611

if.end.112:                                       ; preds = %if.end.108
  %ndim113 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i64 0, i32 5, !dbg !1612
  %44 = load i32, i32* %ndim113, align 4, !dbg !1612, !tbaa !1594
  %cmp114 = icmp sgt i32 %44, 1, !dbg !1614
  br i1 %cmp114, label %if.then.115, label %if.end.116, !dbg !1615

if.then.115:                                      ; preds = %if.end.112
  %45 = load %struct._object*, %struct._object** @PyExc_BufferError, align 8, !dbg !1616, !tbaa !1086
  call void @PyErr_SetString(%struct._object* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.139, i64 0, i64 0)) #1, !dbg !1618
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_a, i64 0, metadata !731, metadata !1041), !dbg !1587
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view_a) #1, !dbg !1619
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_b, i64 0, metadata !734, metadata !1041), !dbg !1605
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view_b) #1, !dbg !1620
  br label %cleanup.thread, !dbg !1621

if.end.116:                                       ; preds = %if.end.112
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i64 0, i32 0, !dbg !1622
  %46 = load i8*, i8** %buf, align 8, !dbg !1622, !tbaa !1623
  %buf117 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i64 0, i32 0, !dbg !1624
  %47 = load i8*, i8** %buf117, align 8, !dbg !1624, !tbaa !1623
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_a, i64 0, i32 2, !dbg !1625
  %48 = load i64, i64* %len, align 8, !dbg !1625, !tbaa !1626
  %len118 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view_b, i64 0, i32 2, !dbg !1627
  %49 = load i64, i64* %len118, align 8, !dbg !1627, !tbaa !1626
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !739, metadata !1041) #1, !dbg !1628
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !740, metadata !1041) #1, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %48, i64 0, metadata !741, metadata !1041) #1, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !742, metadata !1041) #1, !dbg !1632
  %length.i.129.0.length.0.length.0..sroa_cast = bitcast i64* %length.i.129 to i8*, !dbg !1633
  call void @llvm.lifetime.start(i64 8, i8* %length.i.129.0.length.0.length.0..sroa_cast), !dbg !1633
  call void @llvm.dbg.value(metadata i64 %49, i64 0, metadata !743, metadata !1041) #1, !dbg !1634
  store volatile i64 %49, i64* %length.i.129, align 8, !dbg !1635
  call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !745, metadata !1041) #1, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !746, metadata !1041) #1, !dbg !1637
  call void @llvm.dbg.value(metadata i64* %length.i.129, i64 0, metadata !743, metadata !1041) #1, !dbg !1634
  %length.i.129.0.length.0.length.0..i.131 = load volatile i64, i64* %length.i.129, align 8, !dbg !1638
  call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !745, metadata !1041) #1, !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, i64 0, metadata !748, metadata !1041) #1, !dbg !1639
  call void @llvm.dbg.value(metadata i64* %length.i.129, i64 0, metadata !743, metadata !1041) #1, !dbg !1634
  %length.i.129.0.length.0.length.0.17.i.132 = load volatile i64, i64* %length.i.129, align 8, !dbg !1640
  %cmp1.i.133 = icmp eq i64 %length.i.129.0.length.0.length.0.17.i.132, %48, !dbg !1641
  call void @llvm.dbg.value(metadata i8* %47, i64 0, metadata !745, metadata !1041) #1, !dbg !1636
  call void @llvm.dbg.value(metadata i8 1, i64 0, metadata !748, metadata !1041) #1, !dbg !1639
  %50 = zext i1 %cmp1.i.133 to i8, !dbg !1642
  %result.1.i.134 = xor i8 %50, 1, !dbg !1642
  call void @llvm.dbg.value(metadata i64* %length.i.129, i64 0, metadata !743, metadata !1041) #1, !dbg !1634
  %length.i.129.0.length.0.length.0.18.25.i.135 = load volatile i64, i64* %length.i.129, align 8, !dbg !1643
  %cmp4.26.i.136 = icmp sgt i64 %length.i.129.0.length.0.length.0.18.25.i.135, 0, !dbg !1644
  br i1 %cmp4.26.i.136, label %for.body.lr.ph.i.140, label %cleanup, !dbg !1645

for.body.lr.ph.i.140:                             ; preds = %if.end.116
  %cmp.i.137 = icmp eq i64 %length.i.129.0.length.0.length.0..i.131, %48, !dbg !1646
  %a..i.138 = select i1 %cmp.i.137, i8* %46, i8* null, !dbg !1647
  %left.1.i.139 = select i1 %cmp1.i.133, i8* %a..i.138, i8* %47, !dbg !1642
  br label %for.body.i.152, !dbg !1645

for.body.i.152:                                   ; preds = %for.body.i.152, %for.body.lr.ph.i.140
  %result.230.i.141 = phi i8 [ %result.1.i.134, %for.body.lr.ph.i.140 ], [ %or23.i.148, %for.body.i.152 ], !dbg !1648
  %i.029.i.142 = phi i64 [ 0, %for.body.lr.ph.i.140 ], [ %inc.i.149, %for.body.i.152 ], !dbg !1648
  %right.028.i.143 = phi i8* [ %47, %for.body.lr.ph.i.140 ], [ %incdec.ptr5.i.146, %for.body.i.152 ], !dbg !1648
  %left.227.i.144 = phi i8* [ %left.1.i.139, %for.body.lr.ph.i.140 ], [ %incdec.ptr.i.145, %for.body.i.152 ], !dbg !1648
  %incdec.ptr.i.145 = getelementptr i8, i8* %left.227.i.144, i64 1, !dbg !1649
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i.145, i64 0, metadata !745, metadata !1041) #1, !dbg !1636
  %51 = load volatile i8, i8* %left.227.i.144, align 1, !dbg !1650, !tbaa !1556
  %incdec.ptr5.i.146 = getelementptr i8, i8* %right.028.i.143, i64 1, !dbg !1651
  call void @llvm.dbg.value(metadata i8* %incdec.ptr5.i.146, i64 0, metadata !746, metadata !1041) #1, !dbg !1637
  %52 = load volatile i8, i8* %right.028.i.143, align 1, !dbg !1652, !tbaa !1556
  %xor22.i.147 = xor i8 %52, %51, !dbg !1653
  %or23.i.148 = or i8 %xor22.i.147, %result.230.i.141, !dbg !1654
  call void @llvm.dbg.value(metadata i8 %or23.i.148, i64 0, metadata !748, metadata !1041) #1, !dbg !1639
  %inc.i.149 = add i64 %i.029.i.142, 1, !dbg !1655
  call void @llvm.dbg.value(metadata i64 %inc.i.149, i64 0, metadata !747, metadata !1041) #1, !dbg !1656
  call void @llvm.dbg.value(metadata i64* %length.i.129, i64 0, metadata !743, metadata !1041) #1, !dbg !1634
  %length.i.129.0.length.0.length.0.18.i.150 = load volatile i64, i64* %length.i.129, align 8, !dbg !1643
  %cmp4.i.151 = icmp slt i64 %inc.i.149, %length.i.129.0.length.0.length.0.18.i.150, !dbg !1644
  br i1 %cmp4.i.151, label %for.body.i.152, label %cleanup.loopexit, !dbg !1645

cleanup.thread:                                   ; preds = %if.then.96, %if.then.107, %if.then.111, %if.then.115, %if.end.101
  call void @llvm.lifetime.end(i64 80, i8* %31) #1, !dbg !1657
  call void @llvm.lifetime.end(i64 80, i8* %30) #1, !dbg !1657
  br label %cleanup.123

cleanup.loopexit:                                 ; preds = %for.body.i.152
  %or23.i.148.lcssa = phi i8 [ %or23.i.148, %for.body.i.152 ]
  br label %cleanup, !dbg !1658

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.116
  %result.2.lcssa.i.153 = phi i8 [ %result.1.i.134, %if.end.116 ], [ %or23.i.148.lcssa, %cleanup.loopexit ], !dbg !1648
  %cmp10.i.154 = icmp eq i8 %result.2.lcssa.i.153, 0, !dbg !1658
  %conv11.i.155 = zext i1 %cmp10.i.154 to i64, !dbg !1658
  call void @llvm.lifetime.end(i64 8, i8* %length.i.129.0.length.0.length.0..sroa_cast), !dbg !1659
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_a, i64 0, metadata !731, metadata !1041), !dbg !1587
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view_a) #1, !dbg !1660
  call void @llvm.dbg.value(metadata %struct.bufferinfo* %view_b, i64 0, metadata !734, metadata !1041), !dbg !1605
  call void @PyBuffer_Release(%struct.bufferinfo* nonnull %view_b) #1, !dbg !1661
  call void @llvm.lifetime.end(i64 80, i8* %31) #1, !dbg !1657
  call void @llvm.lifetime.end(i64 80, i8* %30) #1, !dbg !1657
  br label %if.end.121

if.end.121:                                       ; preds = %cleanup, %_tscmp.exit
  %rc.1 = phi i64 [ %conv11.i, %_tscmp.exit ], [ %conv11.i.155, %cleanup ]
  %call122 = call %struct._object* @PyBool_FromLong(i64 %rc.1) #1, !dbg !1662
  br label %cleanup.123, !dbg !1663

cleanup.123:                                      ; preds = %cleanup.thread, %cond.false, %cond.false.15, %entry, %if.end.121, %if.then.33
  %retval.1 = phi %struct._object* [ %call122, %if.end.121 ], [ null, %if.then.33 ], [ null, %entry ], [ null, %cond.false.15 ], [ null, %cond.false ], [ null, %cleanup.thread ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1664
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1664
  ret %struct._object* %retval.1, !dbg !1664
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @length_hint(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  %defaultvalue = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !751, metadata !1041), !dbg !1665
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !752, metadata !1041), !dbg !1666
  %0 = bitcast %struct._object** %obj to i8*, !dbg !1667
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1667
  %1 = bitcast i64* %defaultvalue to i8*, !dbg !1668
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1668
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !754, metadata !1041), !dbg !1669
  store i64 0, i64* %defaultvalue, align 8, !dbg !1669, !tbaa !1670
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !753, metadata !1041), !dbg !1671
  tail call void @llvm.dbg.value(metadata i64* %defaultvalue, i64 0, metadata !754, metadata !1041), !dbg !1669
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.140, i64 0, i64 0), %struct._object** nonnull %obj, i64* nonnull %defaultvalue) #1, !dbg !1672
  %tobool = icmp eq i32 %call, 0, !dbg !1672
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1674

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !753, metadata !1041), !dbg !1671
  %2 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1675, !tbaa !1086
  call void @llvm.dbg.value(metadata i64* %defaultvalue, i64 0, metadata !754, metadata !1041), !dbg !1669
  %3 = load i64, i64* %defaultvalue, align 8, !dbg !1676, !tbaa !1670
  %call1 = call i64 @PyObject_LengthHint(%struct._object* %2, i64 %3) #1, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %call1, i64 0, metadata !755, metadata !1041), !dbg !1678
  %cmp = icmp eq i64 %call1, -1, !dbg !1679
  br i1 %cmp, label %land.lhs.true, label %if.end.5, !dbg !1681

land.lhs.true:                                    ; preds = %if.end
  %call2 = call %struct._object* @PyErr_Occurred() #1, !dbg !1682
  %tobool3 = icmp eq %struct._object* %call2, null, !dbg !1682
  br i1 %tobool3, label %if.end.5, label %cleanup, !dbg !1684

if.end.5:                                         ; preds = %land.lhs.true, %if.end
  %call6 = call %struct._object* @PyLong_FromSsize_t(i64 %call1) #1, !dbg !1685
  br label %cleanup, !dbg !1686

cleanup:                                          ; preds = %land.lhs.true, %entry, %if.end.5
  %retval.0 = phi %struct._object* [ %call6, %if.end.5 ], [ null, %entry ], [ null, %land.lhs.true ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1687
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1687
  ret %struct._object* %retval.0, !dbg !1687
}

declare i32 @PyObject_IsTrue(%struct._object*) #2

declare %struct._object* @PyBool_FromLong(i64) #2

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #2

declare i32 @PySequence_Contains(%struct._object*, %struct._object*) #2

declare i64 @PySequence_Index(%struct._object*, %struct._object*) #2

declare %struct._object* @PyLong_FromSsize_t(i64) #2

declare i64 @PySequence_Count(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Index(%struct._object*) #2

declare %struct._object* @PyNumber_Add(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Subtract(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Multiply(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_FloorDivide(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_TrueDivide(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Remainder(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Negative(%struct._object*) #2

declare %struct._object* @PyNumber_Positive(%struct._object*) #2

declare %struct._object* @PyNumber_Absolute(%struct._object*) #2

declare %struct._object* @PyNumber_Invert(%struct._object*) #2

declare %struct._object* @PyNumber_Lshift(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Rshift(%struct._object*, %struct._object*) #2

declare i32 @PyObject_Not(%struct._object*) #2

declare %struct._object* @PyNumber_And(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Xor(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Or(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceAdd(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceSubtract(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceMultiply(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceFloorDivide(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceTrueDivide(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceRemainder(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceLshift(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceRshift(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceAnd(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceXor(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlaceOr(%struct._object*, %struct._object*) #2

declare %struct._object* @PySequence_Concat(%struct._object*, %struct._object*) #2

declare %struct._object* @PySequence_InPlaceConcat(%struct._object*, %struct._object*) #2

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #2

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #2

declare i32 @PyObject_DelItem(%struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_Power(%struct._object*, %struct._object*, %struct._object*) #2

declare %struct._object* @PyNumber_InPlacePower(%struct._object*, %struct._object*, %struct._object*) #2

declare %struct._object* @PyObject_RichCompare(%struct._object*, %struct._object*, i32) #2

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare i32 @_PyUnicode_Ready(%struct._object*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #2

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #2

declare void @PyBuffer_Release(%struct.bufferinfo*) #2

declare i64 @PyObject_LengthHint(%struct._object*, i64) #2

declare %struct._object* @PyErr_Occurred() #2

; Function Attrs: nounwind uwtable
define internal void @itemgetter_dealloc(%struct.itemgetterobject* %ig) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.itemgetterobject* %ig, i64 0, metadata !760, metadata !1041), !dbg !1688
  %0 = bitcast %struct.itemgetterobject* %ig to i8*, !dbg !1689
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !1690
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %ig, i64 0, i32 2, !dbg !1691
  %1 = load %struct._object*, %struct._object** %item, align 8, !dbg !1691, !tbaa !1693
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !761, metadata !1041), !dbg !1691
  %cmp = icmp eq %struct._object* %1, null, !dbg !1695
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !1696

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !763, metadata !1041), !dbg !1697
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1699
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1699, !tbaa !1051
  %dec = add i64 %2, -1, !dbg !1699
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1699, !tbaa !1051
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1699
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !1701

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1702
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1702, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1702
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1702, !tbaa !1704
  tail call void %4(%struct._object* %1) #1, !dbg !1702
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  tail call void @PyObject_GC_Del(i8* %0) #1, !dbg !1705
  ret void, !dbg !1706
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @itemgetter_call(%struct.itemgetterobject* nocapture readonly %ig, %struct._object* %args, %struct._object* nocapture readnone %kw) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.itemgetterobject* %ig, i64 0, metadata !770, metadata !1041), !dbg !1707
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !771, metadata !1041), !dbg !1708
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !772, metadata !1041), !dbg !1709
  %0 = bitcast %struct._object** %obj to i8*, !dbg !1710
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1710
  %nitems1 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %ig, i64 0, i32 1, !dbg !1711
  %1 = load i64, i64* %nitems1, align 8, !dbg !1711, !tbaa !1712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !776, metadata !1041), !dbg !1713
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !773, metadata !1041), !dbg !1714
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %obj) #1, !dbg !1715
  %tobool = icmp eq i32 %call, 0, !dbg !1715
  br i1 %tobool, label %cleanup.22, label %if.end, !dbg !1717

if.end:                                           ; preds = %entry
  %cmp = icmp eq i64 %1, 1, !dbg !1718
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !1720

if.then.2:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !773, metadata !1041), !dbg !1714
  %2 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1721, !tbaa !1086
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %ig, i64 0, i32 2, !dbg !1722
  %3 = load %struct._object*, %struct._object** %item, align 8, !dbg !1722, !tbaa !1693
  %call3 = call %struct._object* @PyObject_GetItem(%struct._object* %2, %struct._object* %3) #1, !dbg !1723
  br label %cleanup.22, !dbg !1724

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyTuple_New(i64 %1) #1, !dbg !1725
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !774, metadata !1041), !dbg !1726
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1727
  br i1 %cmp6, label %cleanup.22, label %for.cond.preheader, !dbg !1729

for.cond.preheader:                               ; preds = %if.end.4
  %cmp9.45 = icmp sgt i64 %1, 0, !dbg !1730
  br i1 %cmp9.45, label %for.body.lr.ph, label %cleanup.22, !dbg !1731

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %item11 = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %ig, i64 0, i32 2, !dbg !1732
  %4 = bitcast %struct._object** %item11 to %struct.PyTupleObject**, !dbg !1732
  %ob_item19 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 1, i32 1, !dbg !1733
  %5 = bitcast %struct._typeobject** %ob_item19 to [1 x %struct._object*]*, !dbg !1733
  br label %for.body, !dbg !1731

for.body:                                         ; preds = %for.body.lr.ph, %if.end.18
  %i.046 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end.18 ]
  %6 = load %struct.PyTupleObject*, %struct.PyTupleObject** %4, align 8, !dbg !1732, !tbaa !1693
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %6, i64 0, i32 1, i64 %i.046, !dbg !1732
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1732, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !777, metadata !1041), !dbg !1734
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !773, metadata !1041), !dbg !1714
  %8 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1735, !tbaa !1086
  %call12 = call %struct._object* @PyObject_GetItem(%struct._object* %8, %struct._object* %7) #1, !dbg !1736
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !781, metadata !1041), !dbg !1737
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !1738
  br i1 %cmp13, label %do.body, label %if.end.18, !dbg !1739

do.body:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !782, metadata !1041), !dbg !1740
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1742
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1742, !tbaa !1051
  %dec = add i64 %9, -1, !dbg !1742
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1742, !tbaa !1051
  %cmp15 = icmp eq i64 %dec, 0, !dbg !1742
  br i1 %cmp15, label %if.else, label %cleanup.22, !dbg !1744

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1745
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1745, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1745
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1745, !tbaa !1704
  call void %11(%struct._object* %call5) #1, !dbg !1745
  br label %cleanup.22

if.end.18:                                        ; preds = %for.body
  %arrayidx20 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %5, i64 0, i64 %i.046, !dbg !1733
  store %struct._object* %call12, %struct._object** %arrayidx20, align 8, !dbg !1733, !tbaa !1086
  %inc = add nuw nsw i64 %i.046, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !775, metadata !1041), !dbg !1748
  %cmp9 = icmp slt i64 %inc, %1, !dbg !1730
  br i1 %cmp9, label %for.body, label %cleanup.22.loopexit, !dbg !1731

cleanup.22.loopexit:                              ; preds = %if.end.18
  br label %cleanup.22, !dbg !1749

cleanup.22:                                       ; preds = %cleanup.22.loopexit, %for.cond.preheader, %do.body, %if.else, %if.end.4, %entry, %if.then.2
  %retval.2 = phi %struct._object* [ %call3, %if.then.2 ], [ null, %entry ], [ null, %if.end.4 ], [ null, %if.else ], [ null, %do.body ], [ %call5, %for.cond.preheader ], [ %call5, %cleanup.22.loopexit ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1749
  ret %struct._object* %retval.2, !dbg !1749
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @itemgetter_traverse(%struct.itemgetterobject* nocapture readonly %ig, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.itemgetterobject* %ig, i64 0, metadata !790, metadata !1041), !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !791, metadata !1041), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !792, metadata !1041), !dbg !1752
  %item = getelementptr inbounds %struct.itemgetterobject, %struct.itemgetterobject* %ig, i64 0, i32 2, !dbg !1753
  %0 = load %struct._object*, %struct._object** %item, align 8, !dbg !1753, !tbaa !1693
  %tobool = icmp eq %struct._object* %0, null, !dbg !1753
  br i1 %tobool, label %do.end, label %if.then, !dbg !1755

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1756
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !793, metadata !1041), !dbg !1756
  %tobool2 = icmp eq i32 %call, 0, !dbg !1758
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !1760

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1761
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @itemgetter_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %item = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !803, metadata !1041), !dbg !1762
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !804, metadata !1041), !dbg !1763
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !805, metadata !1041), !dbg !1764
  %0 = bitcast %struct._object** %item to i8*, !dbg !1765
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1765
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.142, i64 0, i64 0), %struct._object* %kwds) #1, !dbg !1766
  %tobool = icmp eq i32 %call, 0, !dbg !1766
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1768

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1769
  %2 = load i64, i64* %1, align 8, !dbg !1769, !tbaa !1770
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !808, metadata !1041), !dbg !1771
  %cmp = icmp slt i64 %2, 2, !dbg !1772
  br i1 %cmp, label %if.then.1, label %if.else, !dbg !1774

if.then.1:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !807, metadata !1041), !dbg !1775
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %item) #1, !dbg !1776
  %tobool3 = icmp eq i32 %call2, 0, !dbg !1776
  br i1 %tobool3, label %cleanup, label %if.end.6, !dbg !1779

if.else:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !807, metadata !1041), !dbg !1775
  store %struct._object* %args, %struct._object** %item, align 8, !dbg !1780, !tbaa !1086
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.1, %if.else
  %call7 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @itemgetter_type) #1, !dbg !1781
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !1782
  br i1 %cmp8, label %cleanup, label %if.end.10, !dbg !1784

if.end.10:                                        ; preds = %if.end.6
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !807, metadata !1041), !dbg !1775
  %3 = load %struct._object*, %struct._object** %item, align 8, !dbg !1785, !tbaa !1086
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1785
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1785, !tbaa !1051
  %inc = add i64 %4, 1, !dbg !1785
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1785, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !807, metadata !1041), !dbg !1775
  %5 = ptrtoint %struct._object* %3 to i64, !dbg !1786
  %item11 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 1, i32 1, !dbg !1787
  %6 = bitcast %struct._typeobject** %item11 to i64*, !dbg !1788
  store i64 %5, i64* %6, align 8, !dbg !1788, !tbaa !1693
  %7 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 1, i32 0, !dbg !1789
  store i64 %2, i64* %7, align 8, !dbg !1790, !tbaa !1712
  %8 = bitcast %struct._object* %call7 to i8*, !dbg !1791
  call void @PyObject_GC_Track(i8* %8) #1, !dbg !1792
  br label %cleanup, !dbg !1793

cleanup:                                          ; preds = %if.end.6, %if.then.1, %entry, %if.end.10
  %retval.0 = phi %struct._object* [ %call7, %if.end.10 ], [ null, %entry ], [ null, %if.then.1 ], [ null, %if.end.6 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1794
  ret %struct._object* %retval.0, !dbg !1794
}

declare void @PyObject_GC_UnTrack(i8*) #2

declare void @PyObject_GC_Del(i8*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #2

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #2

declare void @PyObject_GC_Track(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @attrgetter_dealloc(%struct.attrgetterobject* %ag) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.attrgetterobject* %ag, i64 0, metadata !813, metadata !1041), !dbg !1795
  %0 = bitcast %struct.attrgetterobject* %ag to i8*, !dbg !1796
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !1797
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %ag, i64 0, i32 2, !dbg !1798
  %1 = load %struct._object*, %struct._object** %attr, align 8, !dbg !1798, !tbaa !1693
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !814, metadata !1041), !dbg !1798
  %cmp = icmp eq %struct._object* %1, null, !dbg !1800
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !1801

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !816, metadata !1041), !dbg !1802
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1804
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1804, !tbaa !1051
  %dec = add i64 %2, -1, !dbg !1804
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1804, !tbaa !1051
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1804
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !1806

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1807
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1807, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1807
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1807, !tbaa !1704
  tail call void %4(%struct._object* %1) #1, !dbg !1807
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  tail call void @PyObject_GC_Del(i8* %0) #1, !dbg !1809
  ret void, !dbg !1810
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @attrgetter_call(%struct.attrgetterobject* nocapture readonly %ag, %struct._object* %args, %struct._object* nocapture readnone %kw) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.attrgetterobject* %ag, i64 0, metadata !823, metadata !1041), !dbg !1811
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !824, metadata !1041), !dbg !1812
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !825, metadata !1041), !dbg !1813
  %0 = bitcast %struct._object** %obj to i8*, !dbg !1814
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1814
  %nattrs1 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %ag, i64 0, i32 1, !dbg !1815
  %1 = load i64, i64* %nattrs1, align 8, !dbg !1815, !tbaa !1712
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !829, metadata !1041), !dbg !1816
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !826, metadata !1041), !dbg !1817
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %obj) #1, !dbg !1818
  %tobool = icmp eq i32 %call, 0, !dbg !1818
  br i1 %tobool, label %cleanup.25, label %if.end, !dbg !1820

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %nattrs1, align 8, !dbg !1821, !tbaa !1712
  %cmp = icmp eq i64 %2, 1, !dbg !1823
  br i1 %cmp, label %if.then.3, label %if.end.5, !dbg !1824

if.then.3:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !826, metadata !1041), !dbg !1817
  %3 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1825, !tbaa !1086
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %ag, i64 0, i32 2, !dbg !1826
  %4 = bitcast %struct._object** %attr to %struct.PyTupleObject**, !dbg !1826
  %5 = load %struct.PyTupleObject*, %struct.PyTupleObject** %4, align 8, !dbg !1826, !tbaa !1693
  %arrayidx = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %5, i64 0, i32 1, i64 0, !dbg !1826
  %6 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1826, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !841, metadata !1041) #1, !dbg !1827
  call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !842, metadata !1041) #1, !dbg !1829
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1830
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1830, !tbaa !1480
  %cmp.i = icmp eq %struct._typeobject* %7, @PyTuple_Type, !dbg !1830
  br i1 %cmp.i, label %if.then.i, label %if.else.12.i, !dbg !1831

if.then.i:                                        ; preds = %if.then.3
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !844, metadata !1041) #1, !dbg !1832
  %8 = getelementptr inbounds %struct._object, %struct._object* %6, i64 1, i32 0, !dbg !1833
  %9 = load i64, i64* %8, align 8, !dbg !1833, !tbaa !1770
  call void @llvm.dbg.value(metadata i64 %9, i64 0, metadata !847, metadata !1041) #1, !dbg !1834
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1835
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1835, !tbaa !1051
  %inc.i = add i64 %10, 1, !dbg !1835
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1835, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !844, metadata !1041) #1, !dbg !1832
  %cmp1.39.i = icmp sgt i64 %9, 0, !dbg !1836
  br i1 %cmp1.39.i, label %for.body.lr.ph.i, label %if.end.17.i, !dbg !1837

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %ob_item.i = getelementptr inbounds %struct._object, %struct._object* %6, i64 1, i32 1, !dbg !1838
  %11 = bitcast %struct._typeobject** %ob_item.i to [1 x %struct._object*]*, !dbg !1838
  br label %for.body.i, !dbg !1837

for.cond.i:                                       ; preds = %if.end.i
  %cmp1.i = icmp slt i64 %inc9.i, %9, !dbg !1836
  br i1 %cmp1.i, label %for.body.i, label %if.end.17.i.loopexit, !dbg !1837

for.body.i:                                       ; preds = %for.cond.i, %for.body.lr.ph.i
  %obj.addr.041.i = phi %struct._object* [ %3, %for.body.lr.ph.i ], [ %call.i, %for.cond.i ], !dbg !1839
  %name_idx.040.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %inc9.i, %for.cond.i ], !dbg !1839
  %arrayidx.i = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %11, i64 0, i64 %name_idx.040.i, !dbg !1838
  %12 = load %struct._object*, %struct._object** %arrayidx.i, align 8, !dbg !1838, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !848, metadata !1041) #1, !dbg !1840
  %call.i = call %struct._object* @PyObject_GetAttr(%struct._object* %obj.addr.041.i, %struct._object* %12) #1, !dbg !1841
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !843, metadata !1041) #1, !dbg !1842
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !849, metadata !1041) #1, !dbg !1843
  %ob_refcnt2.i = getelementptr inbounds %struct._object, %struct._object* %obj.addr.041.i, i64 0, i32 0, !dbg !1845
  %13 = load i64, i64* %ob_refcnt2.i, align 8, !dbg !1845, !tbaa !1051
  %dec.i = add i64 %13, -1, !dbg !1845
  store i64 %dec.i, i64* %ob_refcnt2.i, align 8, !dbg !1845, !tbaa !1051
  %cmp3.i = icmp eq i64 %dec.i, 0, !dbg !1845
  br i1 %cmp3.i, label %if.else.i, label %if.end.i, !dbg !1847

if.else.i:                                        ; preds = %for.body.i
  %ob_type5.i = getelementptr inbounds %struct._object, %struct._object* %obj.addr.041.i, i64 0, i32 1, !dbg !1848
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type5.i, align 8, !dbg !1848, !tbaa !1480
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1848
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1848, !tbaa !1704
  call void %15(%struct._object* %obj.addr.041.i) #1, !dbg !1848
  br label %if.end.i, !dbg !1839

if.end.i:                                         ; preds = %if.else.i, %for.body.i
  %cmp6.i = icmp eq %struct._object* %call.i, null, !dbg !1850
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !841, metadata !1041) #1, !dbg !1827
  %inc9.i = add nuw nsw i64 %name_idx.040.i, 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %inc9.i, i64 0, metadata !844, metadata !1041) #1, !dbg !1832
  br i1 %cmp6.i, label %cleanup.25.loopexit, label %for.cond.i, !dbg !1853

if.else.12.i:                                     ; preds = %if.then.3
  %call13.i = call %struct._object* @PyObject_GetAttr(%struct._object* %3, %struct._object* %6) #1, !dbg !1854
  call void @llvm.dbg.value(metadata %struct._object* %call13.i, i64 0, metadata !843, metadata !1041) #1, !dbg !1842
  %cmp14.i = icmp eq %struct._object* %call13.i, null, !dbg !1856
  br i1 %cmp14.i, label %cleanup.25, label %if.end.17.i, !dbg !1858

if.end.17.i.loopexit:                             ; preds = %for.cond.i
  %call.i.lcssa104 = phi %struct._object* [ %call.i, %for.cond.i ]
  br label %if.end.17.i, !dbg !1859

if.end.17.i:                                      ; preds = %if.end.17.i.loopexit, %if.else.12.i, %if.then.i
  %obj.addr.1.i = phi %struct._object* [ %call13.i, %if.else.12.i ], [ %3, %if.then.i ], [ %call.i.lcssa104, %if.end.17.i.loopexit ], !dbg !1839
  br label %cleanup.25, !dbg !1859

if.end.5:                                         ; preds = %if.end
  %call6 = call %struct._object* @PyTuple_New(i64 %1) #1, !dbg !1860
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !827, metadata !1041), !dbg !1861
  %cmp7 = icmp eq %struct._object* %call6, null, !dbg !1862
  br i1 %cmp7, label %cleanup.25, label %for.cond.preheader, !dbg !1864

for.cond.preheader:                               ; preds = %if.end.5
  %cmp10.88 = icmp sgt i64 %1, 0, !dbg !1865
  br i1 %cmp10.88, label %for.body.lr.ph, label %cleanup.25, !dbg !1866

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %attr12 = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %ag, i64 0, i32 2, !dbg !1867
  %16 = bitcast %struct._object** %attr12 to %struct.PyTupleObject**, !dbg !1867
  %ob_item22 = getelementptr inbounds %struct._object, %struct._object* %call6, i64 1, i32 1, !dbg !1868
  %17 = bitcast %struct._typeobject** %ob_item22 to [1 x %struct._object*]*, !dbg !1868
  br label %for.body, !dbg !1866

for.body:                                         ; preds = %for.body.lr.ph, %if.end.21
  %i.089 = phi i64 [ 0, %for.body.lr.ph ], [ %inc, %if.end.21 ]
  %18 = load %struct.PyTupleObject*, %struct.PyTupleObject** %16, align 8, !dbg !1867, !tbaa !1693
  %arrayidx14 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %18, i64 0, i32 1, i64 %i.089, !dbg !1867
  %19 = load %struct._object*, %struct._object** %arrayidx14, align 8, !dbg !1867, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !830, metadata !1041), !dbg !1869
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !826, metadata !1041), !dbg !1817
  %20 = load %struct._object*, %struct._object** %obj, align 8, !dbg !1870, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %20, i64 0, metadata !841, metadata !1041) #1, !dbg !1871
  call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !842, metadata !1041) #1, !dbg !1873
  %ob_type.i.48 = getelementptr inbounds %struct._object, %struct._object* %19, i64 0, i32 1, !dbg !1874
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.48, align 8, !dbg !1874, !tbaa !1480
  %cmp.i.49 = icmp eq %struct._typeobject* %21, @PyTuple_Type, !dbg !1874
  br i1 %cmp.i.49, label %if.then.i.53, label %if.else.12.i.74, !dbg !1875

if.then.i.53:                                     ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !844, metadata !1041) #1, !dbg !1876
  %22 = getelementptr inbounds %struct._object, %struct._object* %19, i64 1, i32 0, !dbg !1877
  %23 = load i64, i64* %22, align 8, !dbg !1877, !tbaa !1770
  call void @llvm.dbg.value(metadata i64 %23, i64 0, metadata !847, metadata !1041) #1, !dbg !1878
  %ob_refcnt.i.50 = getelementptr inbounds %struct._object, %struct._object* %20, i64 0, i32 0, !dbg !1879
  %24 = load i64, i64* %ob_refcnt.i.50, align 8, !dbg !1879, !tbaa !1051
  %inc.i.51 = add i64 %24, 1, !dbg !1879
  store i64 %inc.i.51, i64* %ob_refcnt.i.50, align 8, !dbg !1879, !tbaa !1051
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !844, metadata !1041) #1, !dbg !1876
  %cmp1.39.i.52 = icmp sgt i64 %23, 0, !dbg !1880
  br i1 %cmp1.39.i.52, label %for.body.lr.ph.i.55, label %if.end.21, !dbg !1881

for.body.lr.ph.i.55:                              ; preds = %if.then.i.53
  %ob_item.i.54 = getelementptr inbounds %struct._object, %struct._object* %19, i64 1, i32 1, !dbg !1882
  %25 = bitcast %struct._typeobject** %ob_item.i.54 to [1 x %struct._object*]*, !dbg !1882
  br label %for.body.i.65, !dbg !1881

for.cond.i.57:                                    ; preds = %if.end.i.71
  %cmp1.i.56 = icmp slt i64 %inc9.i.70, %23, !dbg !1880
  br i1 %cmp1.i.56, label %for.body.i.65, label %if.end.21.loopexit, !dbg !1881

for.body.i.65:                                    ; preds = %for.cond.i.57, %for.body.lr.ph.i.55
  %obj.addr.041.i.58 = phi %struct._object* [ %20, %for.body.lr.ph.i.55 ], [ %call.i.61, %for.cond.i.57 ], !dbg !1883
  %name_idx.040.i.59 = phi i64 [ 0, %for.body.lr.ph.i.55 ], [ %inc9.i.70, %for.cond.i.57 ], !dbg !1883
  %arrayidx.i.60 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %25, i64 0, i64 %name_idx.040.i.59, !dbg !1882
  %26 = load %struct._object*, %struct._object** %arrayidx.i.60, align 8, !dbg !1882, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %26, i64 0, metadata !848, metadata !1041) #1, !dbg !1884
  %call.i.61 = call %struct._object* @PyObject_GetAttr(%struct._object* %obj.addr.041.i.58, %struct._object* %26) #1, !dbg !1885
  call void @llvm.dbg.value(metadata %struct._object* %call.i.61, i64 0, metadata !843, metadata !1041) #1, !dbg !1886
  call void @llvm.dbg.value(metadata %struct._object* %call.i.61, i64 0, metadata !849, metadata !1041) #1, !dbg !1887
  %ob_refcnt2.i.62 = getelementptr inbounds %struct._object, %struct._object* %obj.addr.041.i.58, i64 0, i32 0, !dbg !1888
  %27 = load i64, i64* %ob_refcnt2.i.62, align 8, !dbg !1888, !tbaa !1051
  %dec.i.63 = add i64 %27, -1, !dbg !1888
  store i64 %dec.i.63, i64* %ob_refcnt2.i.62, align 8, !dbg !1888, !tbaa !1051
  %cmp3.i.64 = icmp eq i64 %dec.i.63, 0, !dbg !1888
  br i1 %cmp3.i.64, label %if.else.i.68, label %if.end.i.71, !dbg !1889

if.else.i.68:                                     ; preds = %for.body.i.65
  %ob_type5.i.66 = getelementptr inbounds %struct._object, %struct._object* %obj.addr.041.i.58, i64 0, i32 1, !dbg !1890
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type5.i.66, align 8, !dbg !1890, !tbaa !1480
  %tp_dealloc.i.67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !1890
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.67, align 8, !dbg !1890, !tbaa !1704
  call void %29(%struct._object* %obj.addr.041.i.58) #1, !dbg !1890
  br label %if.end.i.71, !dbg !1883

if.end.i.71:                                      ; preds = %if.else.i.68, %for.body.i.65
  %cmp6.i.69 = icmp eq %struct._object* %call.i.61, null, !dbg !1891
  call void @llvm.dbg.value(metadata %struct._object* %call.i.61, i64 0, metadata !841, metadata !1041) #1, !dbg !1871
  %inc9.i.70 = add nuw nsw i64 %name_idx.040.i.59, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %inc9.i.70, i64 0, metadata !844, metadata !1041) #1, !dbg !1876
  br i1 %cmp6.i.69, label %do.body.loopexit, label %for.cond.i.57, !dbg !1893

if.else.12.i.74:                                  ; preds = %for.body
  %call13.i.72 = call %struct._object* @PyObject_GetAttr(%struct._object* %20, %struct._object* %19) #1, !dbg !1894
  call void @llvm.dbg.value(metadata %struct._object* %call13.i.72, i64 0, metadata !843, metadata !1041) #1, !dbg !1886
  %cmp14.i.73 = icmp eq %struct._object* %call13.i.72, null, !dbg !1895
  br i1 %cmp14.i.73, label %do.body.loopexit100, label %if.end.21, !dbg !1896

do.body.loopexit:                                 ; preds = %if.end.i.71
  br label %do.body, !dbg !1897

do.body.loopexit100:                              ; preds = %if.else.12.i.74
  br label %do.body, !dbg !1897

do.body:                                          ; preds = %do.body.loopexit100, %do.body.loopexit
  call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !835, metadata !1041), !dbg !1897
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 0, !dbg !1899
  %30 = load i64, i64* %ob_refcnt, align 8, !dbg !1899, !tbaa !1051
  %dec = add i64 %30, -1, !dbg !1899
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1899, !tbaa !1051
  %cmp18 = icmp eq i64 %dec, 0, !dbg !1899
  br i1 %cmp18, label %if.else, label %cleanup.25, !dbg !1901

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call6, i64 0, i32 1, !dbg !1902
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1902, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !1902
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1902, !tbaa !1704
  call void %32(%struct._object* %call6) #1, !dbg !1902
  br label %cleanup.25

if.end.21.loopexit:                               ; preds = %for.cond.i.57
  %call.i.61.lcssa105 = phi %struct._object* [ %call.i.61, %for.cond.i.57 ]
  br label %if.end.21, !dbg !1868

if.end.21:                                        ; preds = %if.end.21.loopexit, %if.else.12.i.74, %if.then.i.53
  %obj.addr.1.i.75.ph = phi %struct._object* [ %20, %if.then.i.53 ], [ %call13.i.72, %if.else.12.i.74 ], [ %call.i.61.lcssa105, %if.end.21.loopexit ]
  %arrayidx23 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %17, i64 0, i64 %i.089, !dbg !1868
  store %struct._object* %obj.addr.1.i.75.ph, %struct._object** %arrayidx23, align 8, !dbg !1868, !tbaa !1086
  %inc = add nuw nsw i64 %i.089, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %inc, i64 0, metadata !828, metadata !1041), !dbg !1905
  %cmp10 = icmp slt i64 %inc, %1, !dbg !1865
  br i1 %cmp10, label %for.body, label %cleanup.25.loopexit101, !dbg !1866

cleanup.25.loopexit:                              ; preds = %if.end.i
  br label %cleanup.25, !dbg !1906

cleanup.25.loopexit101:                           ; preds = %if.end.21
  br label %cleanup.25, !dbg !1906

cleanup.25:                                       ; preds = %cleanup.25.loopexit101, %cleanup.25.loopexit, %for.cond.preheader, %if.end.17.i, %if.else.12.i, %do.body, %if.else, %if.end.5, %entry
  %retval.2 = phi %struct._object* [ null, %entry ], [ null, %if.end.5 ], [ null, %if.else ], [ null, %do.body ], [ %obj.addr.1.i, %if.end.17.i ], [ null, %if.else.12.i ], [ %call6, %for.cond.preheader ], [ null, %cleanup.25.loopexit ], [ %call6, %cleanup.25.loopexit101 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1906
  ret %struct._object* %retval.2, !dbg !1906
}

; Function Attrs: nounwind uwtable
define internal i32 @attrgetter_traverse(%struct.attrgetterobject* nocapture readonly %ag, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.attrgetterobject* %ag, i64 0, metadata !858, metadata !1041), !dbg !1907
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !859, metadata !1041), !dbg !1908
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !860, metadata !1041), !dbg !1909
  %attr = getelementptr inbounds %struct.attrgetterobject, %struct.attrgetterobject* %ag, i64 0, i32 2, !dbg !1910
  %0 = load %struct._object*, %struct._object** %attr, align 8, !dbg !1910, !tbaa !1693
  %tobool = icmp eq %struct._object* %0, null, !dbg !1910
  br i1 %tobool, label %do.end, label %if.then, !dbg !1912

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1913
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !861, metadata !1041), !dbg !1913
  %tobool2 = icmp eq i32 %call, 0, !dbg !1915
  br i1 %tobool2, label %do.end, label %return

do.end:                                           ; preds = %entry, %if.then
  br label %return, !dbg !1917

return:                                           ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1918
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @attrgetter_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %attr = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %attr_chain_item = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !867, metadata !1041), !dbg !1919
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !868, metadata !1041), !dbg !1920
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !869, metadata !1041), !dbg !1921
  %0 = bitcast %struct._object** %attr to i8*, !dbg !1922
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1922
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.144, i64 0, i64 0), %struct._object* %kwds) #1, !dbg !1923
  %tobool = icmp eq i32 %call, 0, !dbg !1923
  br i1 %tobool, label %cleanup.242, label %if.end, !dbg !1925

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !1926
  %2 = load i64, i64* %1, align 8, !dbg !1926, !tbaa !1770
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !872, metadata !1041), !dbg !1927
  %cmp = icmp slt i64 %2, 2, !dbg !1928
  br i1 %cmp, label %if.then.1, label %if.end.6, !dbg !1930

if.then.1:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %call2 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %attr) #1, !dbg !1932
  %tobool3 = icmp eq i32 %call2, 0, !dbg !1932
  br i1 %tobool3, label %cleanup.242, label %if.end.6, !dbg !1935

if.end.6:                                         ; preds = %if.then.1, %if.end
  %call7 = call %struct._object* @PyTuple_New(i64 %2) #1, !dbg !1936
  call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !871, metadata !1041), !dbg !1931
  store %struct._object* %call7, %struct._object** %attr, align 8, !dbg !1937, !tbaa !1086
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !1938
  br i1 %cmp8, label %cleanup.242, label %for.cond.preheader, !dbg !1940

for.cond.preheader:                               ; preds = %if.end.6
  %cmp11.386 = icmp sgt i64 %2, 0, !dbg !1941
  br i1 %cmp11.386, label %for.body.lr.ph, label %for.end.221, !dbg !1942

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %3 = bitcast %struct._object** %item to i8*, !dbg !1943
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !1944
  %4 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !1944
  %5 = bitcast %struct._object** %item to i64*, !dbg !1945
  %6 = bitcast %struct._object** %attr to %struct.PyTupleObject**, !dbg !1945
  %7 = bitcast %struct._object** %attr_chain_item to i8*, !dbg !1947
  %8 = bitcast %struct._object** %attr_chain_item to i64*, !dbg !1948
  br label %for.body, !dbg !1942

for.body:                                         ; preds = %for.body.lr.ph, %for.inc.219
  %idx.0387 = phi i64 [ 0, %for.body.lr.ph ], [ %inc220, %for.inc.219 ]
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1943
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %4, i64 0, i64 %idx.0387, !dbg !1944
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !1944, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !875, metadata !1041), !dbg !1949
  store %struct._object* %9, %struct._object** %item, align 8, !dbg !1949, !tbaa !1086
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1950
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1950, !tbaa !1480
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !1950
  %11 = load i64, i64* %tp_flags, align 8, !dbg !1950, !tbaa !1481
  %and = and i64 %11, 268435456, !dbg !1950
  %cmp12 = icmp eq i64 %and, 0, !dbg !1950
  br i1 %cmp12, label %if.then.13, label %if.end.18, !dbg !1951

if.then.13:                                       ; preds = %for.body
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1952, !tbaa !1086
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.145, i64 0, i64 0)) #1, !dbg !1953
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %13 = load %struct._object*, %struct._object** %attr, align 8, !dbg !1954, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !883, metadata !1041), !dbg !1954
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 0, !dbg !1956
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1956, !tbaa !1051
  %dec = add i64 %14, -1, !dbg !1956
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1956, !tbaa !1051
  %cmp14 = icmp eq i64 %dec, 0, !dbg !1956
  br i1 %cmp14, label %if.else, label %cleanup.212.thread, !dbg !1958

if.else:                                          ; preds = %if.then.13
  %ob_type16 = getelementptr inbounds %struct._object, %struct._object* %13, i64 0, i32 1, !dbg !1959
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type16, align 8, !dbg !1959, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 4, !dbg !1959
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1959, !tbaa !1704
  call void %16(%struct._object* %13) #1, !dbg !1959
  br label %cleanup.212.thread

if.end.18:                                        ; preds = %for.body
  %state = getelementptr inbounds %struct._object, %struct._object* %9, i64 2, !dbg !1961
  %17 = bitcast %struct._object* %state to i32*, !dbg !1961
  %bf.load = load i32, i32* %17, align 4, !dbg !1961
  %bf.clear = and i32 %bf.load, 128, !dbg !1961
  %tobool19 = icmp eq i32 %bf.clear, 0, !dbg !1961
  br i1 %tobool19, label %cond.end, label %if.end.35, !dbg !1961

cond.end:                                         ; preds = %if.end.18
  %call20 = call i32 @_PyUnicode_Ready(%struct._object* %9) #1, !dbg !1962
  %tobool21 = icmp eq i32 %call20, 0, !dbg !1964
  br i1 %tobool21, label %cond.end.if.end.35_crit_edge, label %do.body.23, !dbg !1967

cond.end.if.end.35_crit_edge:                     ; preds = %cond.end
  %.pre = load %struct._object*, %struct._object** %item, align 8, !dbg !1968, !tbaa !1086
  %state36.phi.trans.insert = getelementptr inbounds %struct._object, %struct._object* %.pre, i64 2, !dbg !1969
  %.phi.trans.insert = bitcast %struct._object* %state36.phi.trans.insert to i32*, !dbg !1969
  %bf.load37.pre = load i32, i32* %.phi.trans.insert, align 4, !dbg !1969
  br label %if.end.35, !dbg !1967

do.body.23:                                       ; preds = %cond.end
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %18 = load %struct._object*, %struct._object** %attr, align 8, !dbg !1970, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %18, i64 0, metadata !887, metadata !1041), !dbg !1970
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 0, !dbg !1972
  %19 = load i64, i64* %ob_refcnt25, align 8, !dbg !1972, !tbaa !1051
  %dec26 = add i64 %19, -1, !dbg !1972
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !1972, !tbaa !1051
  %cmp27 = icmp eq i64 %dec26, 0, !dbg !1972
  br i1 %cmp27, label %if.else.29, label %cleanup.212.thread, !dbg !1974

if.else.29:                                       ; preds = %do.body.23
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !1975
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !1975, !tbaa !1480
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !1975
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !1975, !tbaa !1704
  call void %21(%struct._object* %18) #1, !dbg !1975
  br label %cleanup.212.thread

if.end.35:                                        ; preds = %cond.end.if.end.35_crit_edge, %if.end.18
  %bf.load37 = phi i32 [ %bf.load37.pre, %cond.end.if.end.35_crit_edge ], [ %bf.load, %if.end.18 ], !dbg !1969
  %22 = phi %struct._object* [ %.pre, %cond.end.if.end.35_crit_edge ], [ %9, %if.end.18 ], !dbg !1977
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !875, metadata !1041), !dbg !1949
  %23 = getelementptr inbounds %struct._object, %struct._object* %22, i64 1, i32 0, !dbg !1968
  %24 = load i64, i64* %23, align 8, !dbg !1968, !tbaa !1525
  call void @llvm.dbg.value(metadata i64 %24, i64 0, metadata !879, metadata !1041), !dbg !1978
  %bf.lshr38 = lshr i32 %bf.load37, 2, !dbg !1969
  %bf.clear39 = and i32 %bf.lshr38, 7, !dbg !1969
  call void @llvm.dbg.value(metadata i32 %bf.clear39, i64 0, metadata !881, metadata !1041), !dbg !1979
  %bf.clear43 = and i32 %bf.load37, 32, !dbg !1980
  %tobool44 = icmp eq i32 %bf.clear43, 0, !dbg !1980
  br i1 %tobool44, label %cond.false.56, label %cond.true.45, !dbg !1980

cond.true.45:                                     ; preds = %if.end.35
  %bf.clear49 = and i32 %bf.load37, 64, !dbg !1981
  %tobool50 = icmp ne i32 %bf.clear49, 0, !dbg !1981
  %add.ptr = getelementptr %struct._object, %struct._object* %22, i64 3, !dbg !1983
  %25 = bitcast %struct._object* %add.ptr to i8*, !dbg !1983
  %add.ptr53 = getelementptr %struct._object, %struct._object* %22, i64 4, i32 1, !dbg !1985
  %26 = bitcast %struct._typeobject** %add.ptr53 to i8*, !dbg !1985
  %cond55 = select i1 %tobool50, i8* %25, i8* %26, !dbg !1981
  br label %cond.end.58, !dbg !1981

cond.false.56:                                    ; preds = %if.end.35
  %data57 = getelementptr inbounds %struct._object, %struct._object* %22, i64 4, i32 1, !dbg !1987
  %any = bitcast %struct._typeobject** %data57 to i8**, !dbg !1987
  %27 = load i8*, i8** %any, align 8, !dbg !1987, !tbaa !1086
  br label %cond.end.58, !dbg !1987

cond.end.58:                                      ; preds = %cond.true.45, %cond.false.56
  %cond59 = phi i8* [ %27, %cond.false.56 ], [ %cond55, %cond.true.45 ], !dbg !1980
  call void @llvm.dbg.value(metadata i8* %cond59, i64 0, metadata !880, metadata !1041), !dbg !1989
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !882, metadata !1041), !dbg !1990
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !874, metadata !1041), !dbg !1991
  %cmp61.342 = icmp sgt i64 %24, 0, !dbg !1992
  br i1 %cmp61.342, label %for.body.62.lr.ph, label %if.then.85, !dbg !1995

for.body.62.lr.ph:                                ; preds = %cond.end.58
  %28 = bitcast i8* %cond59 to i32*, !dbg !1996
  %29 = bitcast i8* %cond59 to i16*, !dbg !2000
  switch i32 %bf.clear39, label %cond.end.76.preheader [
    i32 1, label %cond.end.76.us.preheader
    i32 2, label %cond.end.76.us354.preheader
  ]

cond.end.76.us354.preheader:                      ; preds = %for.body.62.lr.ph
  %backedge.overflow460 = icmp eq i64 %24, 0
  br i1 %backedge.overflow460, label %cond.end.76.us354.preheader501, label %overflow.checked465, !dbg !2000

cond.end.76.us354.preheader501:                   ; preds = %middle.block462, %cond.end.76.us354.preheader
  %char_idx.0344.us.346.ph = phi i64 [ 0, %cond.end.76.us354.preheader ], [ %resume.val472, %middle.block462 ]
  %dot_count.0343.us.347.ph = phi i32 [ 0, %cond.end.76.us354.preheader ], [ %62, %middle.block462 ]
  br label %cond.end.76.us354, !dbg !2000

overflow.checked465:                              ; preds = %cond.end.76.us354.preheader
  %n.vec468 = and i64 %24, -8, !dbg !2002
  %cmp.zero470 = icmp eq i64 %n.vec468, 0, !dbg !2002
  br i1 %cmp.zero470, label %middle.block462, label %vector.body461.preheader, !dbg !2000

vector.body461.preheader:                         ; preds = %overflow.checked465
  %30 = add i64 %24, -8, !dbg !2000
  %31 = lshr i64 %30, 3, !dbg !2000
  %32 = and i64 %31, 1, !dbg !2000
  %lcmp.mod = icmp eq i64 %32, 0, !dbg !2000
  br i1 %lcmp.mod, label %vector.body461.prol, label %vector.body461.preheader.split, !dbg !2000

vector.body461.prol:                              ; preds = %vector.body461.preheader
  %33 = bitcast i8* %cond59 to <4 x i16>*, !dbg !2000
  %wide.load484.prol = load <4 x i16>, <4 x i16>* %33, align 2, !dbg !2000, !tbaa !2003
  %34 = getelementptr i8, i8* %cond59, i64 8, !dbg !2000
  %35 = bitcast i8* %34 to <4 x i16>*, !dbg !2000
  %wide.load485.prol = load <4 x i16>, <4 x i16>* %35, align 2, !dbg !2000, !tbaa !2003
  %36 = icmp eq <4 x i16> %wide.load484.prol, <i16 46, i16 46, i16 46, i16 46>, !dbg !2005
  %37 = icmp eq <4 x i16> %wide.load485.prol, <i16 46, i16 46, i16 46, i16 46>, !dbg !2005
  %38 = zext <4 x i1> %36 to <4 x i32>, !dbg !2008
  %39 = zext <4 x i1> %37 to <4 x i32>, !dbg !2008
  br label %vector.body461.preheader.split, !dbg !2002

vector.body461.preheader.split:                   ; preds = %vector.body461.prol, %vector.body461.preheader
  %.lcssa503.unr = phi <4 x i32> [ undef, %vector.body461.preheader ], [ %39, %vector.body461.prol ]
  %.lcssa.unr = phi <4 x i32> [ undef, %vector.body461.preheader ], [ %38, %vector.body461.prol ]
  %index464.unr = phi i64 [ 0, %vector.body461.preheader ], [ 8, %vector.body461.prol ]
  %vec.phi482.unr = phi <4 x i32> [ zeroinitializer, %vector.body461.preheader ], [ %38, %vector.body461.prol ]
  %vec.phi483.unr = phi <4 x i32> [ zeroinitializer, %vector.body461.preheader ], [ %39, %vector.body461.prol ]
  %40 = icmp eq i64 %31, 0, !dbg !2000
  br i1 %40, label %middle.block462.loopexit, label %vector.body461.preheader.split.split, !dbg !2000

vector.body461.preheader.split.split:             ; preds = %vector.body461.preheader.split
  br label %vector.body461, !dbg !2000

vector.body461:                                   ; preds = %vector.body461, %vector.body461.preheader.split.split
  %index464 = phi i64 [ %index464.unr, %vector.body461.preheader.split.split ], [ %index.next477.1, %vector.body461 ], !dbg !2002
  %vec.phi482 = phi <4 x i32> [ %vec.phi482.unr, %vector.body461.preheader.split.split ], [ %59, %vector.body461 ]
  %vec.phi483 = phi <4 x i32> [ %vec.phi483.unr, %vector.body461.preheader.split.split ], [ %60, %vector.body461 ]
  %41 = getelementptr i16, i16* %29, i64 %index464, !dbg !2000
  %42 = bitcast i16* %41 to <4 x i16>*, !dbg !2000
  %wide.load484 = load <4 x i16>, <4 x i16>* %42, align 2, !dbg !2000, !tbaa !2003
  %43 = getelementptr i16, i16* %41, i64 4, !dbg !2000
  %44 = bitcast i16* %43 to <4 x i16>*, !dbg !2000
  %wide.load485 = load <4 x i16>, <4 x i16>* %44, align 2, !dbg !2000, !tbaa !2003
  %45 = icmp eq <4 x i16> %wide.load484, <i16 46, i16 46, i16 46, i16 46>, !dbg !2005
  %46 = icmp eq <4 x i16> %wide.load485, <i16 46, i16 46, i16 46, i16 46>, !dbg !2005
  %47 = zext <4 x i1> %45 to <4 x i32>, !dbg !2008
  %48 = zext <4 x i1> %46 to <4 x i32>, !dbg !2008
  %49 = add <4 x i32> %47, %vec.phi482, !dbg !2008
  %50 = add <4 x i32> %48, %vec.phi483, !dbg !2008
  %index.next477 = add i64 %index464, 8, !dbg !2002
  %51 = getelementptr i16, i16* %29, i64 %index.next477, !dbg !2000
  %52 = bitcast i16* %51 to <4 x i16>*, !dbg !2000
  %wide.load484.1 = load <4 x i16>, <4 x i16>* %52, align 2, !dbg !2000, !tbaa !2003
  %53 = getelementptr i16, i16* %51, i64 4, !dbg !2000
  %54 = bitcast i16* %53 to <4 x i16>*, !dbg !2000
  %wide.load485.1 = load <4 x i16>, <4 x i16>* %54, align 2, !dbg !2000, !tbaa !2003
  %55 = icmp eq <4 x i16> %wide.load484.1, <i16 46, i16 46, i16 46, i16 46>, !dbg !2005
  %56 = icmp eq <4 x i16> %wide.load485.1, <i16 46, i16 46, i16 46, i16 46>, !dbg !2005
  %57 = zext <4 x i1> %55 to <4 x i32>, !dbg !2008
  %58 = zext <4 x i1> %56 to <4 x i32>, !dbg !2008
  %59 = add <4 x i32> %57, %49, !dbg !2008
  %60 = add <4 x i32> %58, %50, !dbg !2008
  %index.next477.1 = add i64 %index464, 16, !dbg !2002
  %61 = icmp eq i64 %index.next477.1, %n.vec468, !dbg !2002
  br i1 %61, label %middle.block462.loopexit.unr-lcssa, label %vector.body461, !dbg !2002, !llvm.loop !2009

middle.block462.loopexit.unr-lcssa:               ; preds = %vector.body461
  %.lcssa516 = phi <4 x i32> [ %60, %vector.body461 ]
  %.lcssa515 = phi <4 x i32> [ %59, %vector.body461 ]
  br label %middle.block462.loopexit, !dbg !2008

middle.block462.loopexit:                         ; preds = %vector.body461.preheader.split, %middle.block462.loopexit.unr-lcssa
  %.lcssa503 = phi <4 x i32> [ %.lcssa503.unr, %vector.body461.preheader.split ], [ %.lcssa516, %middle.block462.loopexit.unr-lcssa ]
  %.lcssa = phi <4 x i32> [ %.lcssa.unr, %vector.body461.preheader.split ], [ %.lcssa515, %middle.block462.loopexit.unr-lcssa ]
  br label %middle.block462, !dbg !2008

middle.block462:                                  ; preds = %middle.block462.loopexit, %overflow.checked465
  %resume.val472 = phi i64 [ 0, %overflow.checked465 ], [ %n.vec468, %middle.block462.loopexit ]
  %rdx.vec.exit.phi488 = phi <4 x i32> [ zeroinitializer, %overflow.checked465 ], [ %.lcssa, %middle.block462.loopexit ], !dbg !2008
  %rdx.vec.exit.phi489 = phi <4 x i32> [ zeroinitializer, %overflow.checked465 ], [ %.lcssa503, %middle.block462.loopexit ], !dbg !2008
  %bin.rdx490 = add <4 x i32> %rdx.vec.exit.phi489, %rdx.vec.exit.phi488, !dbg !2008
  %rdx.shuf491 = shufflevector <4 x i32> %bin.rdx490, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !2008
  %bin.rdx492 = add <4 x i32> %bin.rdx490, %rdx.shuf491, !dbg !2008
  %rdx.shuf493 = shufflevector <4 x i32> %bin.rdx492, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !2008
  %bin.rdx494 = add <4 x i32> %bin.rdx492, %rdx.shuf493, !dbg !2008
  %62 = extractelement <4 x i32> %bin.rdx494, i32 0, !dbg !2008
  %cmp.n476 = icmp eq i64 %24, %resume.val472
  br i1 %cmp.n476, label %for.end, label %cond.end.76.us354.preheader501, !dbg !2000

cond.end.76.us.preheader:                         ; preds = %for.body.62.lr.ph
  %backedge.overflow424 = icmp eq i64 %24, 0
  br i1 %backedge.overflow424, label %cond.end.76.us.preheader499, label %overflow.checked429, !dbg !2012

cond.end.76.us.preheader499:                      ; preds = %middle.block426, %cond.end.76.us.preheader
  %char_idx.0344.us.ph = phi i64 [ 0, %cond.end.76.us.preheader ], [ %resume.val436, %middle.block426 ]
  %dot_count.0343.us.ph = phi i32 [ 0, %cond.end.76.us.preheader ], [ %95, %middle.block426 ]
  br label %cond.end.76.us, !dbg !2012

overflow.checked429:                              ; preds = %cond.end.76.us.preheader
  %n.vec432 = and i64 %24, -8, !dbg !2002
  %cmp.zero434 = icmp eq i64 %n.vec432, 0, !dbg !2002
  br i1 %cmp.zero434, label %middle.block426, label %vector.body425.preheader, !dbg !2012

vector.body425.preheader:                         ; preds = %overflow.checked429
  %63 = add i64 %24, -8, !dbg !2012
  %64 = lshr i64 %63, 3, !dbg !2012
  %65 = and i64 %64, 1, !dbg !2012
  %lcmp.mod512 = icmp eq i64 %65, 0, !dbg !2012
  br i1 %lcmp.mod512, label %vector.body425.prol, label %vector.body425.preheader.split, !dbg !2012

vector.body425.prol:                              ; preds = %vector.body425.preheader
  %66 = bitcast i8* %cond59 to <4 x i8>*, !dbg !2012
  %wide.load448.prol = load <4 x i8>, <4 x i8>* %66, align 1, !dbg !2012, !tbaa !1556
  %67 = getelementptr i8, i8* %cond59, i64 4, !dbg !2012
  %68 = bitcast i8* %67 to <4 x i8>*, !dbg !2012
  %wide.load449.prol = load <4 x i8>, <4 x i8>* %68, align 1, !dbg !2012, !tbaa !1556
  %69 = icmp eq <4 x i8> %wide.load448.prol, <i8 46, i8 46, i8 46, i8 46>, !dbg !2005
  %70 = icmp eq <4 x i8> %wide.load449.prol, <i8 46, i8 46, i8 46, i8 46>, !dbg !2005
  %71 = zext <4 x i1> %69 to <4 x i32>, !dbg !2008
  %72 = zext <4 x i1> %70 to <4 x i32>, !dbg !2008
  br label %vector.body425.preheader.split, !dbg !2002

vector.body425.preheader.split:                   ; preds = %vector.body425.prol, %vector.body425.preheader
  %.lcssa505.unr = phi <4 x i32> [ undef, %vector.body425.preheader ], [ %72, %vector.body425.prol ]
  %.lcssa504.unr = phi <4 x i32> [ undef, %vector.body425.preheader ], [ %71, %vector.body425.prol ]
  %index428.unr = phi i64 [ 0, %vector.body425.preheader ], [ 8, %vector.body425.prol ]
  %vec.phi446.unr = phi <4 x i32> [ zeroinitializer, %vector.body425.preheader ], [ %71, %vector.body425.prol ]
  %vec.phi447.unr = phi <4 x i32> [ zeroinitializer, %vector.body425.preheader ], [ %72, %vector.body425.prol ]
  %73 = icmp eq i64 %64, 0, !dbg !2012
  br i1 %73, label %middle.block426.loopexit, label %vector.body425.preheader.split.split, !dbg !2012

vector.body425.preheader.split.split:             ; preds = %vector.body425.preheader.split
  br label %vector.body425, !dbg !2012

vector.body425:                                   ; preds = %vector.body425, %vector.body425.preheader.split.split
  %index428 = phi i64 [ %index428.unr, %vector.body425.preheader.split.split ], [ %index.next441.1, %vector.body425 ], !dbg !2002
  %vec.phi446 = phi <4 x i32> [ %vec.phi446.unr, %vector.body425.preheader.split.split ], [ %92, %vector.body425 ]
  %vec.phi447 = phi <4 x i32> [ %vec.phi447.unr, %vector.body425.preheader.split.split ], [ %93, %vector.body425 ]
  %74 = getelementptr i8, i8* %cond59, i64 %index428, !dbg !2012
  %75 = bitcast i8* %74 to <4 x i8>*, !dbg !2012
  %wide.load448 = load <4 x i8>, <4 x i8>* %75, align 1, !dbg !2012, !tbaa !1556
  %76 = getelementptr i8, i8* %74, i64 4, !dbg !2012
  %77 = bitcast i8* %76 to <4 x i8>*, !dbg !2012
  %wide.load449 = load <4 x i8>, <4 x i8>* %77, align 1, !dbg !2012, !tbaa !1556
  %78 = icmp eq <4 x i8> %wide.load448, <i8 46, i8 46, i8 46, i8 46>, !dbg !2005
  %79 = icmp eq <4 x i8> %wide.load449, <i8 46, i8 46, i8 46, i8 46>, !dbg !2005
  %80 = zext <4 x i1> %78 to <4 x i32>, !dbg !2008
  %81 = zext <4 x i1> %79 to <4 x i32>, !dbg !2008
  %82 = add <4 x i32> %80, %vec.phi446, !dbg !2008
  %83 = add <4 x i32> %81, %vec.phi447, !dbg !2008
  %index.next441 = add i64 %index428, 8, !dbg !2002
  %84 = getelementptr i8, i8* %cond59, i64 %index.next441, !dbg !2012
  %85 = bitcast i8* %84 to <4 x i8>*, !dbg !2012
  %wide.load448.1 = load <4 x i8>, <4 x i8>* %85, align 1, !dbg !2012, !tbaa !1556
  %86 = getelementptr i8, i8* %84, i64 4, !dbg !2012
  %87 = bitcast i8* %86 to <4 x i8>*, !dbg !2012
  %wide.load449.1 = load <4 x i8>, <4 x i8>* %87, align 1, !dbg !2012, !tbaa !1556
  %88 = icmp eq <4 x i8> %wide.load448.1, <i8 46, i8 46, i8 46, i8 46>, !dbg !2005
  %89 = icmp eq <4 x i8> %wide.load449.1, <i8 46, i8 46, i8 46, i8 46>, !dbg !2005
  %90 = zext <4 x i1> %88 to <4 x i32>, !dbg !2008
  %91 = zext <4 x i1> %89 to <4 x i32>, !dbg !2008
  %92 = add <4 x i32> %90, %82, !dbg !2008
  %93 = add <4 x i32> %91, %83, !dbg !2008
  %index.next441.1 = add i64 %index428, 16, !dbg !2002
  %94 = icmp eq i64 %index.next441.1, %n.vec432, !dbg !2002
  br i1 %94, label %middle.block426.loopexit.unr-lcssa, label %vector.body425, !dbg !2002, !llvm.loop !2014

middle.block426.loopexit.unr-lcssa:               ; preds = %vector.body425
  %.lcssa518 = phi <4 x i32> [ %93, %vector.body425 ]
  %.lcssa517 = phi <4 x i32> [ %92, %vector.body425 ]
  br label %middle.block426.loopexit, !dbg !2008

middle.block426.loopexit:                         ; preds = %vector.body425.preheader.split, %middle.block426.loopexit.unr-lcssa
  %.lcssa505 = phi <4 x i32> [ %.lcssa505.unr, %vector.body425.preheader.split ], [ %.lcssa518, %middle.block426.loopexit.unr-lcssa ]
  %.lcssa504 = phi <4 x i32> [ %.lcssa504.unr, %vector.body425.preheader.split ], [ %.lcssa517, %middle.block426.loopexit.unr-lcssa ]
  br label %middle.block426, !dbg !2008

middle.block426:                                  ; preds = %middle.block426.loopexit, %overflow.checked429
  %resume.val436 = phi i64 [ 0, %overflow.checked429 ], [ %n.vec432, %middle.block426.loopexit ]
  %rdx.vec.exit.phi452 = phi <4 x i32> [ zeroinitializer, %overflow.checked429 ], [ %.lcssa504, %middle.block426.loopexit ], !dbg !2008
  %rdx.vec.exit.phi453 = phi <4 x i32> [ zeroinitializer, %overflow.checked429 ], [ %.lcssa505, %middle.block426.loopexit ], !dbg !2008
  %bin.rdx454 = add <4 x i32> %rdx.vec.exit.phi453, %rdx.vec.exit.phi452, !dbg !2008
  %rdx.shuf455 = shufflevector <4 x i32> %bin.rdx454, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !2008
  %bin.rdx456 = add <4 x i32> %bin.rdx454, %rdx.shuf455, !dbg !2008
  %rdx.shuf457 = shufflevector <4 x i32> %bin.rdx456, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !2008
  %bin.rdx458 = add <4 x i32> %bin.rdx456, %rdx.shuf457, !dbg !2008
  %95 = extractelement <4 x i32> %bin.rdx458, i32 0, !dbg !2008
  %cmp.n440 = icmp eq i64 %24, %resume.val436
  br i1 %cmp.n440, label %for.end, label %cond.end.76.us.preheader499, !dbg !2012

cond.end.76.preheader:                            ; preds = %for.body.62.lr.ph
  %backedge.overflow = icmp eq i64 %24, 0
  br i1 %backedge.overflow, label %cond.end.76.preheader498, label %overflow.checked, !dbg !1996

cond.end.76.preheader498:                         ; preds = %middle.block, %cond.end.76.preheader
  %char_idx.0344.ph = phi i64 [ 0, %cond.end.76.preheader ], [ %resume.val, %middle.block ]
  %dot_count.0343.ph = phi i32 [ 0, %cond.end.76.preheader ], [ %128, %middle.block ]
  br label %cond.end.76, !dbg !1996

overflow.checked:                                 ; preds = %cond.end.76.preheader
  %n.vec = and i64 %24, -8, !dbg !2002
  %cmp.zero = icmp eq i64 %n.vec, 0, !dbg !2002
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader, !dbg !1996

vector.body.preheader:                            ; preds = %overflow.checked
  %96 = add i64 %24, -8, !dbg !1996
  %97 = lshr i64 %96, 3, !dbg !1996
  %98 = and i64 %97, 1, !dbg !1996
  %lcmp.mod514 = icmp eq i64 %98, 0, !dbg !1996
  br i1 %lcmp.mod514, label %vector.body.prol, label %vector.body.preheader.split, !dbg !1996

vector.body.prol:                                 ; preds = %vector.body.preheader
  %99 = bitcast i8* %cond59 to <4 x i32>*, !dbg !1996
  %wide.load.prol = load <4 x i32>, <4 x i32>* %99, align 4, !dbg !1996, !tbaa !2015
  %100 = getelementptr i8, i8* %cond59, i64 16, !dbg !1996
  %101 = bitcast i8* %100 to <4 x i32>*, !dbg !1996
  %wide.load417.prol = load <4 x i32>, <4 x i32>* %101, align 4, !dbg !1996, !tbaa !2015
  %102 = icmp eq <4 x i32> %wide.load.prol, <i32 46, i32 46, i32 46, i32 46>, !dbg !2005
  %103 = icmp eq <4 x i32> %wide.load417.prol, <i32 46, i32 46, i32 46, i32 46>, !dbg !2005
  %104 = zext <4 x i1> %102 to <4 x i32>, !dbg !2008
  %105 = zext <4 x i1> %103 to <4 x i32>, !dbg !2008
  br label %vector.body.preheader.split, !dbg !2002

vector.body.preheader.split:                      ; preds = %vector.body.prol, %vector.body.preheader
  %.lcssa507.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %105, %vector.body.prol ]
  %.lcssa506.unr = phi <4 x i32> [ undef, %vector.body.preheader ], [ %104, %vector.body.prol ]
  %index.unr = phi i64 [ 0, %vector.body.preheader ], [ 8, %vector.body.prol ]
  %vec.phi.unr = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %104, %vector.body.prol ]
  %vec.phi416.unr = phi <4 x i32> [ zeroinitializer, %vector.body.preheader ], [ %105, %vector.body.prol ]
  %106 = icmp eq i64 %97, 0, !dbg !1996
  br i1 %106, label %middle.block.loopexit, label %vector.body.preheader.split.split, !dbg !1996

vector.body.preheader.split.split:                ; preds = %vector.body.preheader.split
  br label %vector.body, !dbg !1996

vector.body:                                      ; preds = %vector.body, %vector.body.preheader.split.split
  %index = phi i64 [ %index.unr, %vector.body.preheader.split.split ], [ %index.next.1, %vector.body ], !dbg !2002
  %vec.phi = phi <4 x i32> [ %vec.phi.unr, %vector.body.preheader.split.split ], [ %125, %vector.body ]
  %vec.phi416 = phi <4 x i32> [ %vec.phi416.unr, %vector.body.preheader.split.split ], [ %126, %vector.body ]
  %107 = getelementptr i32, i32* %28, i64 %index, !dbg !1996
  %108 = bitcast i32* %107 to <4 x i32>*, !dbg !1996
  %wide.load = load <4 x i32>, <4 x i32>* %108, align 4, !dbg !1996, !tbaa !2015
  %109 = getelementptr i32, i32* %107, i64 4, !dbg !1996
  %110 = bitcast i32* %109 to <4 x i32>*, !dbg !1996
  %wide.load417 = load <4 x i32>, <4 x i32>* %110, align 4, !dbg !1996, !tbaa !2015
  %111 = icmp eq <4 x i32> %wide.load, <i32 46, i32 46, i32 46, i32 46>, !dbg !2005
  %112 = icmp eq <4 x i32> %wide.load417, <i32 46, i32 46, i32 46, i32 46>, !dbg !2005
  %113 = zext <4 x i1> %111 to <4 x i32>, !dbg !2008
  %114 = zext <4 x i1> %112 to <4 x i32>, !dbg !2008
  %115 = add <4 x i32> %113, %vec.phi, !dbg !2008
  %116 = add <4 x i32> %114, %vec.phi416, !dbg !2008
  %index.next = add i64 %index, 8, !dbg !2002
  %117 = getelementptr i32, i32* %28, i64 %index.next, !dbg !1996
  %118 = bitcast i32* %117 to <4 x i32>*, !dbg !1996
  %wide.load.1 = load <4 x i32>, <4 x i32>* %118, align 4, !dbg !1996, !tbaa !2015
  %119 = getelementptr i32, i32* %117, i64 4, !dbg !1996
  %120 = bitcast i32* %119 to <4 x i32>*, !dbg !1996
  %wide.load417.1 = load <4 x i32>, <4 x i32>* %120, align 4, !dbg !1996, !tbaa !2015
  %121 = icmp eq <4 x i32> %wide.load.1, <i32 46, i32 46, i32 46, i32 46>, !dbg !2005
  %122 = icmp eq <4 x i32> %wide.load417.1, <i32 46, i32 46, i32 46, i32 46>, !dbg !2005
  %123 = zext <4 x i1> %121 to <4 x i32>, !dbg !2008
  %124 = zext <4 x i1> %122 to <4 x i32>, !dbg !2008
  %125 = add <4 x i32> %123, %115, !dbg !2008
  %126 = add <4 x i32> %124, %116, !dbg !2008
  %index.next.1 = add i64 %index, 16, !dbg !2002
  %127 = icmp eq i64 %index.next.1, %n.vec, !dbg !2002
  br i1 %127, label %middle.block.loopexit.unr-lcssa, label %vector.body, !dbg !2002, !llvm.loop !2016

middle.block.loopexit.unr-lcssa:                  ; preds = %vector.body
  %.lcssa520 = phi <4 x i32> [ %126, %vector.body ]
  %.lcssa519 = phi <4 x i32> [ %125, %vector.body ]
  br label %middle.block.loopexit, !dbg !2008

middle.block.loopexit:                            ; preds = %vector.body.preheader.split, %middle.block.loopexit.unr-lcssa
  %.lcssa507 = phi <4 x i32> [ %.lcssa507.unr, %vector.body.preheader.split ], [ %.lcssa520, %middle.block.loopexit.unr-lcssa ]
  %.lcssa506 = phi <4 x i32> [ %.lcssa506.unr, %vector.body.preheader.split ], [ %.lcssa519, %middle.block.loopexit.unr-lcssa ]
  br label %middle.block, !dbg !2008

middle.block:                                     ; preds = %middle.block.loopexit, %overflow.checked
  %resume.val = phi i64 [ 0, %overflow.checked ], [ %n.vec, %middle.block.loopexit ]
  %rdx.vec.exit.phi = phi <4 x i32> [ zeroinitializer, %overflow.checked ], [ %.lcssa506, %middle.block.loopexit ], !dbg !2008
  %rdx.vec.exit.phi420 = phi <4 x i32> [ zeroinitializer, %overflow.checked ], [ %.lcssa507, %middle.block.loopexit ], !dbg !2008
  %bin.rdx = add <4 x i32> %rdx.vec.exit.phi420, %rdx.vec.exit.phi, !dbg !2008
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !2008
  %bin.rdx421 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !2008
  %rdx.shuf422 = shufflevector <4 x i32> %bin.rdx421, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !2008
  %bin.rdx423 = add <4 x i32> %bin.rdx421, %rdx.shuf422, !dbg !2008
  %128 = extractelement <4 x i32> %bin.rdx423, i32 0, !dbg !2008
  %cmp.n = icmp eq i64 %24, %resume.val
  br i1 %cmp.n, label %for.end, label %cond.end.76.preheader498, !dbg !1996

cond.end.76.us:                                   ; preds = %cond.end.76.us.preheader499, %cond.end.76.us
  %char_idx.0344.us = phi i64 [ %inc82.us, %cond.end.76.us ], [ %char_idx.0344.us.ph, %cond.end.76.us.preheader499 ]
  %dot_count.0343.us = phi i32 [ %inc.dot_count.0.us, %cond.end.76.us ], [ %dot_count.0343.us.ph, %cond.end.76.us.preheader499 ]
  %arrayidx65.us = getelementptr i8, i8* %cond59, i64 %char_idx.0344.us, !dbg !2012
  %129 = load i8, i8* %arrayidx65.us, align 1, !dbg !2012, !tbaa !1556
  %cmp78.us = icmp eq i8 %129, 46, !dbg !2005
  %inc.us = zext i1 %cmp78.us to i32, !dbg !2008
  %inc.dot_count.0.us = add i32 %inc.us, %dot_count.0343.us, !dbg !2008
  %inc82.us = add nuw nsw i64 %char_idx.0344.us, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %inc82.us, i64 0, metadata !874, metadata !1041), !dbg !1991
  %exitcond = icmp eq i64 %inc82.us, %24, !dbg !1995
  br i1 %exitcond, label %for.end.loopexit500, label %cond.end.76.us, !dbg !1995, !llvm.loop !2017

cond.end.76.us354:                                ; preds = %cond.end.76.us354.preheader501, %cond.end.76.us354
  %char_idx.0344.us.346 = phi i64 [ %inc82.us.359, %cond.end.76.us354 ], [ %char_idx.0344.us.346.ph, %cond.end.76.us354.preheader501 ]
  %dot_count.0343.us.347 = phi i32 [ %inc.dot_count.0.us.358, %cond.end.76.us354 ], [ %dot_count.0343.us.347.ph, %cond.end.76.us354.preheader501 ]
  %arrayidx70.us.349 = getelementptr i16, i16* %29, i64 %char_idx.0344.us.346, !dbg !2000
  %130 = load i16, i16* %arrayidx70.us.349, align 2, !dbg !2000, !tbaa !2003
  %cmp78.us.356 = icmp eq i16 %130, 46, !dbg !2005
  %inc.us.357 = zext i1 %cmp78.us.356 to i32, !dbg !2008
  %inc.dot_count.0.us.358 = add i32 %inc.us.357, %dot_count.0343.us.347, !dbg !2008
  %inc82.us.359 = add nuw nsw i64 %char_idx.0344.us.346, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %inc82.us.359, i64 0, metadata !874, metadata !1041), !dbg !1991
  %cmp61.us.360 = icmp slt i64 %inc82.us.359, %24, !dbg !1992
  br i1 %cmp61.us.360, label %cond.end.76.us354, label %for.end.loopexit502, !dbg !1995, !llvm.loop !2019

cond.end.76:                                      ; preds = %cond.end.76.preheader498, %cond.end.76
  %char_idx.0344 = phi i64 [ %inc82, %cond.end.76 ], [ %char_idx.0344.ph, %cond.end.76.preheader498 ]
  %dot_count.0343 = phi i32 [ %inc.dot_count.0, %cond.end.76 ], [ %dot_count.0343.ph, %cond.end.76.preheader498 ]
  %arrayidx73 = getelementptr i32, i32* %28, i64 %char_idx.0344, !dbg !1996
  %131 = load i32, i32* %arrayidx73, align 4, !dbg !1996, !tbaa !2015
  %cmp78 = icmp eq i32 %131, 46, !dbg !2005
  %inc = zext i1 %cmp78 to i32, !dbg !2008
  %inc.dot_count.0 = add i32 %inc, %dot_count.0343, !dbg !2008
  %inc82 = add nuw nsw i64 %char_idx.0344, 1, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %inc82, i64 0, metadata !874, metadata !1041), !dbg !1991
  %cmp61 = icmp slt i64 %inc82, %24, !dbg !1992
  br i1 %cmp61, label %cond.end.76, label %for.end.loopexit, !dbg !1995, !llvm.loop !2020

for.end.loopexit:                                 ; preds = %cond.end.76
  %inc.dot_count.0.lcssa = phi i32 [ %inc.dot_count.0, %cond.end.76 ]
  br label %for.end, !dbg !2021

for.end.loopexit500:                              ; preds = %cond.end.76.us
  %inc.dot_count.0.us.lcssa = phi i32 [ %inc.dot_count.0.us, %cond.end.76.us ]
  br label %for.end, !dbg !2021

for.end.loopexit502:                              ; preds = %cond.end.76.us354
  %inc.dot_count.0.us.358.lcssa = phi i32 [ %inc.dot_count.0.us.358, %cond.end.76.us354 ]
  br label %for.end, !dbg !2021

for.end:                                          ; preds = %for.end.loopexit502, %for.end.loopexit500, %for.end.loopexit, %middle.block462, %middle.block426, %middle.block
  %dot_count.0.lcssa = phi i32 [ %128, %middle.block ], [ %95, %middle.block426 ], [ %62, %middle.block462 ], [ %inc.dot_count.0.lcssa, %for.end.loopexit ], [ %inc.dot_count.0.us.lcssa, %for.end.loopexit500 ], [ %inc.dot_count.0.us.358.lcssa, %for.end.loopexit502 ]
  %cmp83 = icmp eq i32 %dot_count.0.lcssa, 0, !dbg !2021
  br i1 %cmp83, label %if.then.85, label %if.else.90, !dbg !2022

if.then.85:                                       ; preds = %cond.end.58, %for.end
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !875, metadata !1041), !dbg !1949
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %22, i64 0, i32 0, !dbg !1977
  %132 = load i64, i64* %ob_refcnt86, align 8, !dbg !1977, !tbaa !1051
  %inc87 = add i64 %132, 1, !dbg !1977
  store i64 %inc87, i64* %ob_refcnt86, align 8, !dbg !1977, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !875, metadata !1041), !dbg !1949
  call void @PyUnicode_InternInPlace(%struct._object** nonnull %item) #1, !dbg !2023
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !875, metadata !1041), !dbg !1949
  %133 = load i64, i64* %5, align 8, !dbg !1945, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %134 = load %struct.PyTupleObject*, %struct.PyTupleObject** %6, align 8, !dbg !1945, !tbaa !1086
  %arrayidx89 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %134, i64 0, i32 1, i64 %idx.0387, !dbg !1945
  %135 = bitcast %struct._object** %arrayidx89 to i64*, !dbg !1945
  store i64 %133, i64* %135, align 8, !dbg !1945, !tbaa !1086
  br label %for.inc.219, !dbg !2024

if.else.90:                                       ; preds = %for.end
  %add = add i32 %dot_count.0.lcssa, 1, !dbg !2025
  %conv91 = sext i32 %add to i64, !dbg !2026
  %call92 = call %struct._object* @PyTuple_New(i64 %conv91) #1, !dbg !2027
  call void @llvm.dbg.value(metadata %struct._object* %call92, i64 0, metadata !891, metadata !1041), !dbg !2028
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1947
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !895, metadata !1041), !dbg !2029
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !896, metadata !1041), !dbg !2030
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !897, metadata !1041), !dbg !2031
  %cmp93 = icmp eq %struct._object* %call92, null, !dbg !2032
  br i1 %cmp93, label %do.body.96, label %for.cond.110.preheader, !dbg !2033

for.cond.110.preheader:                           ; preds = %if.else.90
  %cmp111.380 = icmp sgt i32 %dot_count.0.lcssa, 0, !dbg !2034
  br i1 %cmp111.380, label %while.cond.preheader.lr.ph, label %for.end.171, !dbg !2035

while.cond.preheader.lr.ph:                       ; preds = %for.cond.110.preheader
  %136 = bitcast i8* %cond59 to i32*, !dbg !2036
  %137 = bitcast i8* %cond59 to i16*, !dbg !2038
  %ob_item165 = getelementptr inbounds %struct._object, %struct._object* %call92, i64 1, i32 1, !dbg !2040
  %138 = bitcast %struct._typeobject** %ob_item165 to [1 x %struct._object*]*, !dbg !2040
  br label %while.cond.preheader, !dbg !2035

do.body.96:                                       ; preds = %if.else.90
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %139 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2041, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %139, i64 0, metadata !898, metadata !1041), !dbg !2041
  %ob_refcnt98 = getelementptr inbounds %struct._object, %struct._object* %139, i64 0, i32 0, !dbg !2043
  %140 = load i64, i64* %ob_refcnt98, align 8, !dbg !2043, !tbaa !1051
  %dec99 = add i64 %140, -1, !dbg !2043
  store i64 %dec99, i64* %ob_refcnt98, align 8, !dbg !2043, !tbaa !1051
  %cmp100 = icmp eq i64 %dec99, 0, !dbg !2043
  br i1 %cmp100, label %if.else.103, label %cleanup.thread, !dbg !2045

if.else.103:                                      ; preds = %do.body.96
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %139, i64 0, i32 1, !dbg !2046
  %141 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8, !dbg !2046, !tbaa !1480
  %tp_dealloc105 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %141, i64 0, i32 4, !dbg !2046
  %142 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc105, align 8, !dbg !2046, !tbaa !1704
  call void %142(%struct._object* %139) #1, !dbg !2046
  br label %cleanup.thread

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %if.end.164
  %dot_count.2383 = phi i32 [ %dot_count.0.lcssa, %while.cond.preheader.lr.ph ], [ %dec170, %if.end.164 ]
  %attr_chain_idx.0382 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %inc167, %if.end.164 ]
  %unibuff_till.0381 = phi i64 [ 0, %while.cond.preheader.lr.ph ], [ %add168, %if.end.164 ]
  switch i32 %bf.clear39, label %cond.end.129.preheader [
    i32 1, label %cond.end.129.us.preheader
    i32 2, label %cond.end.129.us373.preheader
  ]

cond.end.129.us373.preheader:                     ; preds = %while.cond.preheader
  br label %cond.end.129.us373, !dbg !2038

cond.end.129.us.preheader:                        ; preds = %while.cond.preheader
  br label %cond.end.129.us, !dbg !2048

cond.end.129.preheader:                           ; preds = %while.cond.preheader
  br label %cond.end.129, !dbg !2036

cond.end.129.us:                                  ; preds = %cond.end.129.us.preheader, %cond.end.129.us
  %unibuff_till.1.us = phi i64 [ %inc133.us, %cond.end.129.us ], [ %unibuff_till.0381, %cond.end.129.us.preheader ]
  %arrayidx117.us = getelementptr i8, i8* %cond59, i64 %unibuff_till.1.us, !dbg !2048
  %143 = load i8, i8* %arrayidx117.us, align 1, !dbg !2048, !tbaa !1556
  %cmp131.us = icmp eq i8 %143, 46, !dbg !2050
  %inc133.us = add i64 %unibuff_till.1.us, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %inc133.us, i64 0, metadata !896, metadata !1041), !dbg !2030
  br i1 %cmp131.us, label %while.end.loopexit496, label %cond.end.129.us, !dbg !2055

cond.end.129.us373:                               ; preds = %cond.end.129.us373.preheader, %cond.end.129.us373
  %unibuff_till.1.us.366 = phi i64 [ %inc133.us.376, %cond.end.129.us373 ], [ %unibuff_till.0381, %cond.end.129.us373.preheader ]
  %arrayidx123.us.368 = getelementptr i16, i16* %137, i64 %unibuff_till.1.us.366, !dbg !2038
  %144 = load i16, i16* %arrayidx123.us.368, align 2, !dbg !2038, !tbaa !2003
  %cmp131.us.375 = icmp eq i16 %144, 46, !dbg !2050
  %inc133.us.376 = add i64 %unibuff_till.1.us.366, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %inc133.us.376, i64 0, metadata !896, metadata !1041), !dbg !2030
  br i1 %cmp131.us.375, label %while.end.loopexit497, label %cond.end.129.us373, !dbg !2055

cond.end.129:                                     ; preds = %cond.end.129.preheader, %cond.end.129
  %unibuff_till.1 = phi i64 [ %inc133, %cond.end.129 ], [ %unibuff_till.0381, %cond.end.129.preheader ]
  %arrayidx126 = getelementptr i32, i32* %136, i64 %unibuff_till.1, !dbg !2036
  %145 = load i32, i32* %arrayidx126, align 4, !dbg !2036, !tbaa !2015
  %cmp131 = icmp eq i32 %145, 46, !dbg !2050
  %inc133 = add i64 %unibuff_till.1, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i64 %inc133, i64 0, metadata !896, metadata !1041), !dbg !2030
  br i1 %cmp131, label %while.end.loopexit, label %cond.end.129, !dbg !2055

while.end.loopexit:                               ; preds = %cond.end.129
  %unibuff_till.1.lcssa521 = phi i64 [ %unibuff_till.1, %cond.end.129 ]
  br label %while.end, !dbg !1949

while.end.loopexit496:                            ; preds = %cond.end.129.us
  %unibuff_till.1.us.lcssa = phi i64 [ %unibuff_till.1.us, %cond.end.129.us ]
  br label %while.end, !dbg !1949

while.end.loopexit497:                            ; preds = %cond.end.129.us373
  %unibuff_till.1.us.366.lcssa = phi i64 [ %unibuff_till.1.us.366, %cond.end.129.us373 ]
  br label %while.end, !dbg !1949

while.end:                                        ; preds = %while.end.loopexit497, %while.end.loopexit496, %while.end.loopexit
  %unibuff_till.1.lcssa = phi i64 [ %unibuff_till.1.lcssa521, %while.end.loopexit ], [ %unibuff_till.1.us.lcssa, %while.end.loopexit496 ], [ %unibuff_till.1.us.366.lcssa, %while.end.loopexit497 ]
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !875, metadata !1041), !dbg !1949
  %146 = load %struct._object*, %struct._object** %item, align 8, !dbg !2056, !tbaa !1086
  %call134 = call %struct._object* @PyUnicode_Substring(%struct._object* %146, i64 %unibuff_till.0381, i64 %unibuff_till.1.lcssa) #1, !dbg !2057
  call void @llvm.dbg.value(metadata %struct._object* %call134, i64 0, metadata !894, metadata !1041), !dbg !2058
  store %struct._object* %call134, %struct._object** %attr_chain_item, align 8, !dbg !2059, !tbaa !1086
  %cmp135 = icmp eq %struct._object* %call134, null, !dbg !2060
  br i1 %cmp135, label %do.body.138, label %if.end.164, !dbg !2061

do.body.138:                                      ; preds = %while.end
  %call92.lcssa522 = phi %struct._object* [ %call92, %while.end ]
  call void @llvm.dbg.value(metadata %struct._object* %call92, i64 0, metadata !902, metadata !1041), !dbg !2062
  %ob_refcnt140 = getelementptr inbounds %struct._object, %struct._object* %call92.lcssa522, i64 0, i32 0, !dbg !2064
  %147 = load i64, i64* %ob_refcnt140, align 8, !dbg !2064, !tbaa !1051
  %dec141 = add i64 %147, -1, !dbg !2064
  store i64 %dec141, i64* %ob_refcnt140, align 8, !dbg !2064, !tbaa !1051
  %cmp142 = icmp eq i64 %dec141, 0, !dbg !2064
  br i1 %cmp142, label %if.else.145, label %if.end.148, !dbg !2066

if.else.145:                                      ; preds = %do.body.138
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %call92.lcssa522, i64 0, i32 1, !dbg !2067
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8, !dbg !2067, !tbaa !1480
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i64 0, i32 4, !dbg !2067
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8, !dbg !2067, !tbaa !1704
  call void %149(%struct._object* %call92.lcssa522) #1, !dbg !2067
  br label %if.end.148

if.end.148:                                       ; preds = %do.body.138, %if.else.145
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %150 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2069, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %150, i64 0, metadata !909, metadata !1041), !dbg !2069
  %ob_refcnt153 = getelementptr inbounds %struct._object, %struct._object* %150, i64 0, i32 0, !dbg !2071
  %151 = load i64, i64* %ob_refcnt153, align 8, !dbg !2071, !tbaa !1051
  %dec154 = add i64 %151, -1, !dbg !2071
  store i64 %dec154, i64* %ob_refcnt153, align 8, !dbg !2071, !tbaa !1051
  %cmp155 = icmp eq i64 %dec154, 0, !dbg !2071
  br i1 %cmp155, label %if.else.158, label %cleanup.thread, !dbg !2073

if.else.158:                                      ; preds = %if.end.148
  %ob_type159 = getelementptr inbounds %struct._object, %struct._object* %150, i64 0, i32 1, !dbg !2074
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type159, align 8, !dbg !2074, !tbaa !1480
  %tp_dealloc160 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i64 0, i32 4, !dbg !2074
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc160, align 8, !dbg !2074, !tbaa !1704
  call void %153(%struct._object* %150) #1, !dbg !2074
  br label %cleanup.thread

if.end.164:                                       ; preds = %while.end
  call void @llvm.dbg.value(metadata %struct._object** %attr_chain_item, i64 0, metadata !894, metadata !1041), !dbg !2058
  call void @PyUnicode_InternInPlace(%struct._object** nonnull %attr_chain_item) #1, !dbg !2076
  call void @llvm.dbg.value(metadata %struct._object** %attr_chain_item, i64 0, metadata !894, metadata !1041), !dbg !2058
  %154 = load i64, i64* %8, align 8, !dbg !2040, !tbaa !1086
  %arrayidx166 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %138, i64 0, i64 %attr_chain_idx.0382, !dbg !2040
  %155 = bitcast %struct._object** %arrayidx166 to i64*, !dbg !2040
  store i64 %154, i64* %155, align 8, !dbg !2040, !tbaa !1086
  %inc167 = add nuw nsw i64 %attr_chain_idx.0382, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %inc167, i64 0, metadata !897, metadata !1041), !dbg !2031
  %add168 = add i64 %unibuff_till.1.lcssa, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %add168, i64 0, metadata !895, metadata !1041), !dbg !2029
  call void @llvm.dbg.value(metadata i64 %add168, i64 0, metadata !896, metadata !1041), !dbg !2030
  %dec170 = add nsw i32 %dot_count.2383, -1, !dbg !2079
  call void @llvm.dbg.value(metadata i32 %dec170, i64 0, metadata !882, metadata !1041), !dbg !1990
  %cmp111 = icmp sgt i32 %dot_count.2383, 1, !dbg !2034
  br i1 %cmp111, label %while.cond.preheader, label %for.end.171.loopexit, !dbg !2035

for.end.171.loopexit:                             ; preds = %if.end.164
  %add168.lcssa = phi i64 [ %add168, %if.end.164 ]
  %inc167.lcssa = phi i64 [ %inc167, %if.end.164 ]
  br label %for.end.171, !dbg !1949

for.end.171:                                      ; preds = %for.end.171.loopexit, %for.cond.110.preheader
  %attr_chain_idx.0.lcssa = phi i64 [ 0, %for.cond.110.preheader ], [ %inc167.lcssa, %for.end.171.loopexit ]
  %unibuff_till.0.lcssa = phi i64 [ 0, %for.cond.110.preheader ], [ %add168.lcssa, %for.end.171.loopexit ]
  call void @llvm.dbg.value(metadata %struct._object** %item, i64 0, metadata !875, metadata !1041), !dbg !1949
  %156 = load %struct._object*, %struct._object** %item, align 8, !dbg !2080, !tbaa !1086
  %call172 = call %struct._object* @PyUnicode_Substring(%struct._object* %156, i64 %unibuff_till.0.lcssa, i64 %24) #1, !dbg !2081
  call void @llvm.dbg.value(metadata %struct._object* %call172, i64 0, metadata !894, metadata !1041), !dbg !2058
  store %struct._object* %call172, %struct._object** %attr_chain_item, align 8, !dbg !2082, !tbaa !1086
  %cmp173 = icmp eq %struct._object* %call172, null, !dbg !2083
  br i1 %cmp173, label %do.body.176, label %cleanup, !dbg !2084

do.body.176:                                      ; preds = %for.end.171
  %call92.lcssa523 = phi %struct._object* [ %call92, %for.end.171 ]
  call void @llvm.dbg.value(metadata %struct._object* %call92, i64 0, metadata !911, metadata !1041), !dbg !2085
  %ob_refcnt178 = getelementptr inbounds %struct._object, %struct._object* %call92.lcssa523, i64 0, i32 0, !dbg !2087
  %157 = load i64, i64* %ob_refcnt178, align 8, !dbg !2087, !tbaa !1051
  %dec179 = add i64 %157, -1, !dbg !2087
  store i64 %dec179, i64* %ob_refcnt178, align 8, !dbg !2087, !tbaa !1051
  %cmp180 = icmp eq i64 %dec179, 0, !dbg !2087
  br i1 %cmp180, label %if.else.183, label %if.end.186, !dbg !2089

if.else.183:                                      ; preds = %do.body.176
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %call92.lcssa523, i64 0, i32 1, !dbg !2090
  %158 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8, !dbg !2090, !tbaa !1480
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %158, i64 0, i32 4, !dbg !2090
  %159 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8, !dbg !2090, !tbaa !1704
  call void %159(%struct._object* %call92.lcssa523) #1, !dbg !2090
  br label %if.end.186

if.end.186:                                       ; preds = %do.body.176, %if.else.183
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %160 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2092, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %160, i64 0, metadata !915, metadata !1041), !dbg !2092
  %ob_refcnt191 = getelementptr inbounds %struct._object, %struct._object* %160, i64 0, i32 0, !dbg !2094
  %161 = load i64, i64* %ob_refcnt191, align 8, !dbg !2094, !tbaa !1051
  %dec192 = add i64 %161, -1, !dbg !2094
  store i64 %dec192, i64* %ob_refcnt191, align 8, !dbg !2094, !tbaa !1051
  %cmp193 = icmp eq i64 %dec192, 0, !dbg !2094
  br i1 %cmp193, label %if.else.196, label %cleanup.thread, !dbg !2096

if.else.196:                                      ; preds = %if.end.186
  %ob_type197 = getelementptr inbounds %struct._object, %struct._object* %160, i64 0, i32 1, !dbg !2097
  %162 = load %struct._typeobject*, %struct._typeobject** %ob_type197, align 8, !dbg !2097, !tbaa !1480
  %tp_dealloc198 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %162, i64 0, i32 4, !dbg !2097
  %163 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc198, align 8, !dbg !2097, !tbaa !1704
  call void %163(%struct._object* %160) #1, !dbg !2097
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.body.96, %if.else.103, %if.end.148, %if.else.158, %if.end.186, %if.else.196
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !2099
  br label %cleanup.212.thread

cleanup:                                          ; preds = %for.end.171
  call void @llvm.dbg.value(metadata %struct._object** %attr_chain_item, i64 0, metadata !894, metadata !1041), !dbg !2058
  call void @PyUnicode_InternInPlace(%struct._object** nonnull %attr_chain_item) #1, !dbg !2101
  call void @llvm.dbg.value(metadata %struct._object** %attr_chain_item, i64 0, metadata !894, metadata !1041), !dbg !2058
  %164 = load i64, i64* %8, align 8, !dbg !1948, !tbaa !1086
  %ob_item203 = getelementptr inbounds %struct._object, %struct._object* %call92, i64 1, i32 1, !dbg !1948
  %165 = bitcast %struct._typeobject** %ob_item203 to [1 x %struct._object*]*, !dbg !1948
  %arrayidx204 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %165, i64 0, i64 %attr_chain_idx.0.lcssa, !dbg !1948
  %166 = bitcast %struct._object** %arrayidx204 to i64*, !dbg !1948
  store i64 %164, i64* %166, align 8, !dbg !1948, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  %167 = load %struct.PyTupleObject*, %struct.PyTupleObject** %6, align 8, !dbg !2102, !tbaa !1086
  %arrayidx206 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %167, i64 0, i32 1, i64 %idx.0387, !dbg !2102
  store %struct._object* %call92, %struct._object** %arrayidx206, align 8, !dbg !2102, !tbaa !1086
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !2099
  br label %for.inc.219

cleanup.212.thread:                               ; preds = %if.then.13, %if.else, %do.body.23, %if.else.29, %cleanup.thread
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !2103
  br label %cleanup.242

for.inc.219:                                      ; preds = %cleanup, %if.then.85
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !2103
  %inc220 = add nuw nsw i64 %idx.0387, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %inc220, i64 0, metadata !873, metadata !1041), !dbg !2106
  %cmp11 = icmp slt i64 %inc220, %2, !dbg !1941
  br i1 %cmp11, label %for.body, label %for.end.221.loopexit, !dbg !1942

for.end.221.loopexit:                             ; preds = %for.inc.219
  br label %for.end.221, !dbg !2107

for.end.221:                                      ; preds = %for.end.221.loopexit, %for.cond.preheader
  %call222 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @attrgetter_type) #1, !dbg !2107
  %cmp223 = icmp eq %struct._object* %call222, null, !dbg !2108
  call void @llvm.dbg.value(metadata %struct._object** %attr, i64 0, metadata !871, metadata !1041), !dbg !1931
  br i1 %cmp223, label %do.body.226, label %if.end.239, !dbg !2109

do.body.226:                                      ; preds = %for.end.221
  %168 = load %struct._object*, %struct._object** %attr, align 8, !dbg !2110, !tbaa !1086
  call void @llvm.dbg.value(metadata %struct._object* %168, i64 0, metadata !917, metadata !1041), !dbg !2110
  %ob_refcnt228 = getelementptr inbounds %struct._object, %struct._object* %168, i64 0, i32 0, !dbg !2112
  %169 = load i64, i64* %ob_refcnt228, align 8, !dbg !2112, !tbaa !1051
  %dec229 = add i64 %169, -1, !dbg !2112
  store i64 %dec229, i64* %ob_refcnt228, align 8, !dbg !2112, !tbaa !1051
  %cmp230 = icmp eq i64 %dec229, 0, !dbg !2112
  br i1 %cmp230, label %if.else.233, label %cleanup.242, !dbg !2114

if.else.233:                                      ; preds = %do.body.226
  %ob_type234 = getelementptr inbounds %struct._object, %struct._object* %168, i64 0, i32 1, !dbg !2115
  %170 = load %struct._typeobject*, %struct._typeobject** %ob_type234, align 8, !dbg !2115, !tbaa !1480
  %tp_dealloc235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %170, i64 0, i32 4, !dbg !2115
  %171 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8, !dbg !2115, !tbaa !1704
  call void %171(%struct._object* %168) #1, !dbg !2115
  br label %cleanup.242

if.end.239:                                       ; preds = %for.end.221
  %172 = bitcast %struct._object** %attr to i64*, !dbg !2117
  %173 = load i64, i64* %172, align 8, !dbg !2117, !tbaa !1086
  %attr240 = getelementptr inbounds %struct._object, %struct._object* %call222, i64 1, i32 1, !dbg !2118
  %174 = bitcast %struct._typeobject** %attr240 to i64*, !dbg !2119
  store i64 %173, i64* %174, align 8, !dbg !2119, !tbaa !1693
  %175 = getelementptr inbounds %struct._object, %struct._object* %call222, i64 1, i32 0, !dbg !2120
  store i64 %2, i64* %175, align 8, !dbg !2121, !tbaa !1712
  %176 = bitcast %struct._object* %call222 to i8*, !dbg !2122
  call void @PyObject_GC_Track(i8* %176) #1, !dbg !2123
  br label %cleanup.242, !dbg !2124

cleanup.242:                                      ; preds = %cleanup.212.thread, %if.else.233, %do.body.226, %if.end.6, %if.then.1, %entry, %if.end.239
  %retval.4 = phi %struct._object* [ %call222, %if.end.239 ], [ null, %entry ], [ null, %if.then.1 ], [ null, %if.end.6 ], [ null, %do.body.226 ], [ null, %if.else.233 ], [ null, %cleanup.212.thread ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2125
  ret %struct._object* %retval.4, !dbg !2125
}

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #2

declare void @PyUnicode_InternInPlace(%struct._object**) #2

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal void @methodcaller_dealloc(%struct.methodcallerobject* %mc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.methodcallerobject* %mc, i64 0, metadata !925, metadata !1041), !dbg !2126
  %0 = bitcast %struct.methodcallerobject* %mc to i8*, !dbg !2127
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !2128
  %name = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 1, !dbg !2129
  %1 = load %struct._object*, %struct._object** %name, align 8, !dbg !2129, !tbaa !2131
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !926, metadata !1041), !dbg !2129
  %cmp = icmp eq %struct._object* %1, null, !dbg !2133
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !2134

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !928, metadata !1041), !dbg !2135
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !2137
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2137, !tbaa !1051
  %dec = add i64 %2, -1, !dbg !2137
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2137, !tbaa !1051
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2137
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !2139

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !2140
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2140, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !2140
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2140, !tbaa !1704
  tail call void %4(%struct._object* %1) #1, !dbg !2140
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  %args = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 2, !dbg !2142
  %5 = load %struct._object*, %struct._object** %args, align 8, !dbg !2142, !tbaa !2144
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !931, metadata !1041), !dbg !2142
  %cmp9 = icmp eq %struct._object* %5, null, !dbg !2145
  br i1 %cmp9, label %if.end.23, label %do.body.11, !dbg !2146

do.body.11:                                       ; preds = %if.end.4
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !933, metadata !1041), !dbg !2147
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !2149
  %6 = load i64, i64* %ob_refcnt13, align 8, !dbg !2149, !tbaa !1051
  %dec14 = add i64 %6, -1, !dbg !2149
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !2149, !tbaa !1051
  %cmp15 = icmp eq i64 %dec14, 0, !dbg !2149
  br i1 %cmp15, label %if.else.17, label %if.end.23, !dbg !2151

if.else.17:                                       ; preds = %do.body.11
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !2152
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !2152, !tbaa !1480
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !2152
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !2152, !tbaa !1704
  tail call void %8(%struct._object* %5) #1, !dbg !2152
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.17, %do.body.11, %if.end.4
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 3, !dbg !2154
  %9 = load %struct._object*, %struct._object** %kwds, align 8, !dbg !2154, !tbaa !2156
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !936, metadata !1041), !dbg !2154
  %cmp28 = icmp eq %struct._object* %9, null, !dbg !2157
  br i1 %cmp28, label %if.end.42, label %do.body.30, !dbg !2158

do.body.30:                                       ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !938, metadata !1041), !dbg !2159
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !2161
  %10 = load i64, i64* %ob_refcnt32, align 8, !dbg !2161, !tbaa !1051
  %dec33 = add i64 %10, -1, !dbg !2161
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !2161, !tbaa !1051
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !2161
  br i1 %cmp34, label %if.else.36, label %if.end.42, !dbg !2163

if.else.36:                                       ; preds = %do.body.30
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !2164
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !2164, !tbaa !1480
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2164
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !2164, !tbaa !1704
  tail call void %12(%struct._object* %9) #1, !dbg !2164
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %do.body.30, %if.end.23
  tail call void @PyObject_GC_Del(i8* %0) #1, !dbg !2166
  ret void, !dbg !2167
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @methodcaller_call(%struct.methodcallerobject* nocapture readonly %mc, %struct._object* %args, %struct._object* nocapture readnone %kw) #0 {
entry:
  %obj = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.methodcallerobject* %mc, i64 0, metadata !945, metadata !1041), !dbg !2168
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !946, metadata !1041), !dbg !2169
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !947, metadata !1041), !dbg !2170
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2171
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2171
  tail call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !949, metadata !1041), !dbg !2172
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 1, i64 1, %struct._object** nonnull %obj) #1, !dbg !2173
  %tobool = icmp eq i32 %call, 0, !dbg !2173
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2175

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %obj, i64 0, metadata !949, metadata !1041), !dbg !2172
  %1 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2176, !tbaa !1086
  %name = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 1, !dbg !2177
  %2 = load %struct._object*, %struct._object** %name, align 8, !dbg !2177, !tbaa !2131
  %call1 = call %struct._object* @PyObject_GetAttr(%struct._object* %1, %struct._object* %2) #1, !dbg !2178
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !948, metadata !1041), !dbg !2179
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2180
  br i1 %cmp, label %cleanup, label %if.end.3, !dbg !2182

if.end.3:                                         ; preds = %if.end
  %args4 = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 2, !dbg !2183
  %3 = load %struct._object*, %struct._object** %args4, align 8, !dbg !2183, !tbaa !2144
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 3, !dbg !2184
  %4 = load %struct._object*, %struct._object** %kwds, align 8, !dbg !2184, !tbaa !2156
  %call5 = call %struct._object* @PyObject_Call(%struct._object* %call1, %struct._object* %3, %struct._object* %4) #1, !dbg !2185
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !950, metadata !1041), !dbg !2186
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !951, metadata !1041), !dbg !2187
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2189
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2189, !tbaa !1051
  %dec = add i64 %5, -1, !dbg !2189
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2189, !tbaa !1051
  %cmp6 = icmp eq i64 %dec, 0, !dbg !2189
  br i1 %cmp6, label %if.else, label %cleanup, !dbg !2191

if.else:                                          ; preds = %if.end.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2192
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2192, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2192
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2192, !tbaa !1704
  call void %7(%struct._object* %call1) #1, !dbg !2192
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.3, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ %call5, %if.end.3 ], [ %call5, %if.else ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2194
  ret %struct._object* %retval.0, !dbg !2194
}

; Function Attrs: nounwind uwtable
define internal i32 @methodcaller_traverse(%struct.methodcallerobject* nocapture readonly %mc, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.methodcallerobject* %mc, i64 0, metadata !957, metadata !1041), !dbg !2195
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !958, metadata !1041), !dbg !2196
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !959, metadata !1041), !dbg !2197
  %args = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 2, !dbg !2198
  %0 = load %struct._object*, %struct._object** %args, align 8, !dbg !2198, !tbaa !2144
  %tobool = icmp eq %struct._object* %0, null, !dbg !2198
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !2200

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !2201
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !960, metadata !1041), !dbg !2201
  %tobool2 = icmp eq i32 %call, 0, !dbg !2203
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %kwds = getelementptr inbounds %struct.methodcallerobject, %struct.methodcallerobject* %mc, i64 0, i32 3, !dbg !2205
  %1 = load %struct._object*, %struct._object** %kwds, align 8, !dbg !2205, !tbaa !2156
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !2205
  br i1 %tobool6, label %do.end.18, label %if.then.7, !dbg !2207

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !964, metadata !1041), !dbg !2208
  %tobool11 = icmp eq i32 %call10, 0, !dbg !2210
  br i1 %tobool11, label %do.end.18, label %return

do.end.18:                                        ; preds = %do.body.5, %if.then.7
  br label %return, !dbg !2212

return:                                           ; preds = %if.then.7, %if.then, %do.end.18
  %retval.3 = phi i32 [ 0, %do.end.18 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.3, !dbg !2213
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @methodcaller_new(%struct._typeobject* nocapture readnone %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !970, metadata !1041), !dbg !2214
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !971, metadata !1041), !dbg !2215
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !972, metadata !1041), !dbg !2216
  %0 = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 0, !dbg !2217
  %1 = load i64, i64* %0, align 8, !dbg !2217, !tbaa !1770
  %cmp = icmp slt i64 %1, 1, !dbg !2219
  br i1 %cmp, label %if.then, label %if.end, !dbg !2220

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2221, !tbaa !1086
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.147, i64 0, i64 0)) #1, !dbg !2223
  br label %cleanup, !dbg !2224

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* @_PyObject_GC_New(%struct._typeobject* nonnull @methodcaller_type) #1, !dbg !2225
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2226
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !2228

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %0, align 8, !dbg !2229, !tbaa !1770
  %call5 = tail call %struct._object* @PyTuple_GetSlice(%struct._object* %args, i64 1, i64 %3) #1, !dbg !2230
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !975, metadata !1041), !dbg !2231
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !2232
  br i1 %cmp6, label %do.body, label %if.end.11, !dbg !2233

do.body:                                          ; preds = %if.end.3
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !976, metadata !1041), !dbg !2234
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2236
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2236, !tbaa !1051
  %dec = add i64 %4, -1, !dbg !2236
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2236, !tbaa !1051
  %cmp8 = icmp eq i64 %dec, 0, !dbg !2236
  br i1 %cmp8, label %if.else, label %cleanup, !dbg !2238

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2239
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2239, !tbaa !1480
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2239
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2239, !tbaa !1704
  tail call void %6(%struct._object* %call) #1, !dbg !2239
  br label %cleanup

if.end.11:                                        ; preds = %if.end.3
  %args12 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !2241
  %7 = bitcast %struct._typeobject** %args12 to %struct._object**, !dbg !2241
  store %struct._object* %call5, %struct._object** %7, align 8, !dbg !2242, !tbaa !2144
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %args, i64 1, i32 1, !dbg !2243
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !2243
  %8 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !2243, !tbaa !1086
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !974, metadata !1041), !dbg !2244
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !2245
  %9 = load i64, i64* %ob_refcnt13, align 8, !dbg !2245, !tbaa !1051
  %inc = add i64 %9, 1, !dbg !2245
  store i64 %inc, i64* %ob_refcnt13, align 8, !dbg !2245, !tbaa !1051
  %name14 = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !2246
  %10 = bitcast %struct._object* %name14 to %struct._object**, !dbg !2246
  store %struct._object* %8, %struct._object** %10, align 8, !dbg !2247, !tbaa !2131
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !980, metadata !1041), !dbg !2248
  %cmp16 = icmp eq %struct._object* %kwds, null, !dbg !2250
  br i1 %cmp16, label %if.end.20, label %if.then.17, !dbg !2252

if.then.17:                                       ; preds = %if.end.11
  %ob_refcnt18 = getelementptr inbounds %struct._object, %struct._object* %kwds, i64 0, i32 0, !dbg !2253
  %11 = load i64, i64* %ob_refcnt18, align 8, !dbg !2253, !tbaa !1051
  %inc19 = add i64 %11, 1, !dbg !2253
  store i64 %inc19, i64* %ob_refcnt18, align 8, !dbg !2253, !tbaa !1051
  br label %if.end.20, !dbg !2253

if.end.20:                                        ; preds = %if.end.11, %if.then.17
  %kwds23 = getelementptr inbounds %struct._object, %struct._object* %call, i64 2, !dbg !2255
  %12 = bitcast %struct._object* %kwds23 to %struct._object**, !dbg !2255
  store %struct._object* %kwds, %struct._object** %12, align 8, !dbg !2256, !tbaa !2156
  %13 = bitcast %struct._object* %call to i8*, !dbg !2257
  tail call void @PyObject_GC_Track(i8* %13) #1, !dbg !2258
  br label %cleanup, !dbg !2259

cleanup:                                          ; preds = %if.else, %do.body, %if.end, %if.end.20, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call, %if.end.20 ], [ null, %if.end ], [ null, %do.body ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !2260
}

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #2

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1037, !1038}
!llvm.ident = !{!1039}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !10, subprograms: !438, globals: !982)
!1 = !DIFile(filename: "./Modules/_operator.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !4, line: 451, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!7 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!8 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!9 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!10 = !{!11, !12, !350, !368, !376, !395, !397, !401, !409, !410, !394, !417, !419, !421, !423, !430}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !14, line: 109, baseType: !15)
!14 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !14, line: 105, size: 128, align: 64, elements: !16)
!16 = !{!17, !25}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !15, file: !14, line: 107, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !19, line: 177, baseType: !20)
!19 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !21, line: 102, baseType: !22)
!21 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !23, line: 181, baseType: !24)
!23 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!24 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !15, file: !14, line: 108, baseType: !26, size: 64, align: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !14, line: 334, size: 3200, align: 64, elements: !28)
!28 = !{!29, !35, !39, !40, !41, !46, !109, !114, !119, !120, !125, !177, !208, !220, !226, !227, !228, !230, !232, !263, !264, !265, !274, !275, !280, !281, !283, !285, !295, !298, !316, !317, !318, !320, !322, !323, !325, !330, !335, !340, !341, !342, !343, !344, !345, !346, !347, !349}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !27, file: !14, line: 335, baseType: !30, size: 192, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !14, line: 114, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 111, size: 192, align: 64, elements: !32)
!32 = !{!33, !34}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !31, file: !14, line: 112, baseType: !13, size: 128, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !31, file: !14, line: 113, baseType: !18, size: 64, align: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !27, file: !14, line: 336, baseType: !36, size: 64, align: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !27, file: !14, line: 337, baseType: !18, size: 64, align: 64, offset: 320)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !27, file: !14, line: 341, baseType: !42, size: 64, align: 64, offset: 384)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !14, line: 308, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !12}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !27, file: !14, line: 342, baseType: !47, size: 64, align: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !14, line: 314, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !12, !52, !51}
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !21, line: 48, baseType: !54)
!54 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !55, line: 246, size: 1728, align: 64, elements: !56)
!55 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!56 = !{!57, !58, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !78, !79, !80, !81, !83, !85, !87, !91, !94, !96, !97, !98, !99, !100, !104, !105}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !54, file: !55, line: 247, baseType: !51, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !54, file: !55, line: 252, baseType: !59, size: 64, align: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !54, file: !55, line: 253, baseType: !59, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !54, file: !55, line: 254, baseType: !59, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !54, file: !55, line: 255, baseType: !59, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !54, file: !55, line: 256, baseType: !59, size: 64, align: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !54, file: !55, line: 257, baseType: !59, size: 64, align: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !54, file: !55, line: 258, baseType: !59, size: 64, align: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !54, file: !55, line: 259, baseType: !59, size: 64, align: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !54, file: !55, line: 261, baseType: !59, size: 64, align: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !54, file: !55, line: 262, baseType: !59, size: 64, align: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !54, file: !55, line: 263, baseType: !59, size: 64, align: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !54, file: !55, line: 265, baseType: !71, size: 64, align: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !55, line: 161, size: 192, align: 64, elements: !73)
!73 = !{!74, !75, !77}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !72, file: !55, line: 162, baseType: !71, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !72, file: !55, line: 163, baseType: !76, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !72, file: !55, line: 167, baseType: !51, size: 32, align: 32, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !54, file: !55, line: 267, baseType: !76, size: 64, align: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !54, file: !55, line: 269, baseType: !51, size: 32, align: 32, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !54, file: !55, line: 273, baseType: !51, size: 32, align: 32, offset: 928)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !54, file: !55, line: 275, baseType: !82, size: 64, align: 64, offset: 960)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !23, line: 140, baseType: !24)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !54, file: !55, line: 279, baseType: !84, size: 16, align: 16, offset: 1024)
!84 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !54, file: !55, line: 280, baseType: !86, size: 8, align: 8, offset: 1040)
!86 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !54, file: !55, line: 281, baseType: !88, size: 8, align: 8, offset: 1048)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 8, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 1)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !54, file: !55, line: 285, baseType: !92, size: 64, align: 64, offset: 1088)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !55, line: 155, baseType: null)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !54, file: !55, line: 294, baseType: !95, size: 64, align: 64, offset: 1152)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !23, line: 141, baseType: !24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !54, file: !55, line: 303, baseType: !11, size: 64, align: 64, offset: 1216)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !54, file: !55, line: 304, baseType: !11, size: 64, align: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !54, file: !55, line: 305, baseType: !11, size: 64, align: 64, offset: 1344)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !54, file: !55, line: 306, baseType: !11, size: 64, align: 64, offset: 1408)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !54, file: !55, line: 307, baseType: !101, size: 64, align: 64, offset: 1472)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 62, baseType: !103)
!102 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!103 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !54, file: !55, line: 309, baseType: !51, size: 32, align: 32, offset: 1536)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !54, file: !55, line: 311, baseType: !106, size: 160, align: 8, offset: 1568)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 20)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !27, file: !14, line: 343, baseType: !110, size: 64, align: 64, offset: 512)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !14, line: 316, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!12, !12, !59}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !27, file: !14, line: 344, baseType: !115, size: 64, align: 64, offset: 576)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !14, line: 318, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!51, !12, !59, !12}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !27, file: !14, line: 345, baseType: !11, size: 64, align: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !27, file: !14, line: 346, baseType: !121, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !14, line: 320, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!12, !12}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !27, file: !14, line: 350, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !14, line: 278, baseType: !128)
!128 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 236, size: 2176, align: 64, elements: !129)
!129 = !{!130, !135, !136, !137, !138, !139, !144, !146, !147, !148, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !128, file: !14, line: 241, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !14, line: 166, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!12, !12, !12}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !128, file: !14, line: 242, baseType: !131, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !128, file: !14, line: 243, baseType: !131, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !128, file: !14, line: 244, baseType: !131, size: 64, align: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !128, file: !14, line: 245, baseType: !131, size: 64, align: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !128, file: !14, line: 246, baseType: !140, size: 64, align: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !14, line: 167, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!12, !12, !12, !12}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !128, file: !14, line: 247, baseType: !145, size: 64, align: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !14, line: 165, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !128, file: !14, line: 248, baseType: !145, size: 64, align: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !128, file: !14, line: 249, baseType: !145, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !128, file: !14, line: 250, baseType: !149, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !14, line: 168, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!51, !12}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !128, file: !14, line: 251, baseType: !145, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !128, file: !14, line: 252, baseType: !131, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !128, file: !14, line: 253, baseType: !131, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !128, file: !14, line: 254, baseType: !131, size: 64, align: 64, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !128, file: !14, line: 255, baseType: !131, size: 64, align: 64, offset: 896)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !128, file: !14, line: 256, baseType: !131, size: 64, align: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !128, file: !14, line: 257, baseType: !145, size: 64, align: 64, offset: 1024)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !128, file: !14, line: 258, baseType: !11, size: 64, align: 64, offset: 1088)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !128, file: !14, line: 259, baseType: !145, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !128, file: !14, line: 261, baseType: !131, size: 64, align: 64, offset: 1216)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !128, file: !14, line: 262, baseType: !131, size: 64, align: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !128, file: !14, line: 263, baseType: !131, size: 64, align: 64, offset: 1344)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !128, file: !14, line: 264, baseType: !131, size: 64, align: 64, offset: 1408)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !128, file: !14, line: 265, baseType: !140, size: 64, align: 64, offset: 1472)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !128, file: !14, line: 266, baseType: !131, size: 64, align: 64, offset: 1536)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !128, file: !14, line: 267, baseType: !131, size: 64, align: 64, offset: 1600)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !128, file: !14, line: 268, baseType: !131, size: 64, align: 64, offset: 1664)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !128, file: !14, line: 269, baseType: !131, size: 64, align: 64, offset: 1728)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !128, file: !14, line: 270, baseType: !131, size: 64, align: 64, offset: 1792)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !128, file: !14, line: 272, baseType: !131, size: 64, align: 64, offset: 1856)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !128, file: !14, line: 273, baseType: !131, size: 64, align: 64, offset: 1920)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !128, file: !14, line: 274, baseType: !131, size: 64, align: 64, offset: 1984)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !128, file: !14, line: 275, baseType: !131, size: 64, align: 64, offset: 2048)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !128, file: !14, line: 277, baseType: !145, size: 64, align: 64, offset: 2112)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !27, file: !14, line: 351, baseType: !178, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !14, line: 292, baseType: !180)
!180 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 280, size: 640, align: 64, elements: !181)
!181 = !{!182, !187, !188, !193, !194, !195, !200, !201, !206, !207}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !180, file: !14, line: 281, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !14, line: 169, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!18, !12}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !180, file: !14, line: 282, baseType: !131, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !180, file: !14, line: 283, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !14, line: 170, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!12, !12, !18}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !180, file: !14, line: 284, baseType: !189, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !180, file: !14, line: 285, baseType: !11, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !180, file: !14, line: 286, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !14, line: 172, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!51, !12, !18, !12}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !180, file: !14, line: 287, baseType: !11, size: 64, align: 64, offset: 384)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !180, file: !14, line: 288, baseType: !202, size: 64, align: 64, offset: 448)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !14, line: 231, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!51, !12, !12}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !180, file: !14, line: 290, baseType: !131, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !180, file: !14, line: 291, baseType: !189, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !27, file: !14, line: 352, baseType: !209, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !14, line: 298, baseType: !211)
!211 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 294, size: 192, align: 64, elements: !212)
!212 = !{!213, !214, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !211, file: !14, line: 295, baseType: !183, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !211, file: !14, line: 296, baseType: !131, size: 64, align: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !211, file: !14, line: 297, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !14, line: 174, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!51, !12, !12, !12}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !27, file: !14, line: 356, baseType: !221, size: 64, align: 64, offset: 960)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !14, line: 321, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!225, !12}
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !19, line: 186, baseType: !18)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !27, file: !14, line: 357, baseType: !140, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !27, file: !14, line: 358, baseType: !121, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !27, file: !14, line: 359, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !14, line: 317, baseType: !132)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !27, file: !14, line: 360, baseType: !231, size: 64, align: 64, offset: 1216)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !14, line: 319, baseType: !217)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !27, file: !14, line: 363, baseType: !233, size: 64, align: 64, offset: 1280)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !14, line: 304, baseType: !235)
!235 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 301, size: 128, align: 64, elements: !236)
!236 = !{!237, !258}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !235, file: !14, line: 302, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !14, line: 193, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!51, !12, !242, !51}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !14, line: 191, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !14, line: 178, size: 640, align: 64, elements: !245)
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !255, !256, !257}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !14, line: 179, baseType: !11, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !244, file: !14, line: 180, baseType: !12, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !14, line: 181, baseType: !18, size: 64, align: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !244, file: !14, line: 182, baseType: !18, size: 64, align: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !244, file: !14, line: 184, baseType: !51, size: 32, align: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !244, file: !14, line: 185, baseType: !51, size: 32, align: 32, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !244, file: !14, line: 186, baseType: !59, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !244, file: !14, line: 187, baseType: !254, size: 64, align: 64, offset: 384)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !244, file: !14, line: 188, baseType: !254, size: 64, align: 64, offset: 448)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !244, file: !14, line: 189, baseType: !254, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !244, file: !14, line: 190, baseType: !11, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !235, file: !14, line: 303, baseType: !259, size: 64, align: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !14, line: 194, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !12, !242}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !27, file: !14, line: 366, baseType: !103, size: 64, align: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !27, file: !14, line: 368, baseType: !36, size: 64, align: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !27, file: !14, line: 372, baseType: !266, size: 64, align: 64, offset: 1472)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !14, line: 233, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!51, !12, !270, !11}
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !14, line: 232, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!51, !12, !11}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !27, file: !14, line: 375, baseType: !149, size: 64, align: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !27, file: !14, line: 379, baseType: !276, size: 64, align: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !14, line: 322, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!12, !12, !12, !51}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !27, file: !14, line: 382, baseType: !18, size: 64, align: 64, offset: 1664)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !27, file: !14, line: 385, baseType: !282, size: 64, align: 64, offset: 1728)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !14, line: 323, baseType: !122)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !27, file: !14, line: 386, baseType: !284, size: 64, align: 64, offset: 1792)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !14, line: 324, baseType: !122)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !27, file: !14, line: 389, baseType: !286, size: 64, align: 64, offset: 1856)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !288, line: 40, size: 256, align: 64, elements: !289)
!288 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!289 = !{!290, !291, !293, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !287, file: !288, line: 41, baseType: !36, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !287, file: !288, line: 42, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !288, line: 18, baseType: !132)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !287, file: !288, line: 43, baseType: !51, size: 32, align: 32, offset: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !287, file: !288, line: 45, baseType: !36, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !27, file: !14, line: 390, baseType: !296, size: 64, align: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !14, line: 390, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !27, file: !14, line: 391, baseType: !299, size: 64, align: 64, offset: 1984)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !301, line: 11, size: 320, align: 64, elements: !302)
!301 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!302 = !{!303, !304, !309, !314, !315}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 12, baseType: !59, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !300, file: !301, line: 13, baseType: !305, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !301, line: 8, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!12, !12, !11}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !300, file: !301, line: 14, baseType: !310, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !301, line: 9, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!51, !12, !12, !11}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !300, file: !301, line: 15, baseType: !59, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !300, file: !301, line: 16, baseType: !11, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !27, file: !14, line: 392, baseType: !26, size: 64, align: 64, offset: 2048)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !27, file: !14, line: 393, baseType: !12, size: 64, align: 64, offset: 2112)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !27, file: !14, line: 394, baseType: !319, size: 64, align: 64, offset: 2176)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !14, line: 325, baseType: !141)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !27, file: !14, line: 395, baseType: !321, size: 64, align: 64, offset: 2240)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !14, line: 326, baseType: !217)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !27, file: !14, line: 396, baseType: !18, size: 64, align: 64, offset: 2304)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !27, file: !14, line: 397, baseType: !324, size: 64, align: 64, offset: 2368)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !14, line: 327, baseType: !217)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !27, file: !14, line: 398, baseType: !326, size: 64, align: 64, offset: 2432)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !14, line: 329, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!12, !26, !18}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !27, file: !14, line: 399, baseType: !331, size: 64, align: 64, offset: 2496)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !14, line: 328, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!12, !26, !12, !12}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !27, file: !14, line: 400, baseType: !336, size: 64, align: 64, offset: 2560)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !14, line: 307, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !11}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !27, file: !14, line: 401, baseType: !149, size: 64, align: 64, offset: 2624)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !27, file: !14, line: 402, baseType: !12, size: 64, align: 64, offset: 2688)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !27, file: !14, line: 403, baseType: !12, size: 64, align: 64, offset: 2752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !27, file: !14, line: 404, baseType: !12, size: 64, align: 64, offset: 2816)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !27, file: !14, line: 405, baseType: !12, size: 64, align: 64, offset: 2880)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !27, file: !14, line: 406, baseType: !12, size: 64, align: 64, offset: 2944)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !27, file: !14, line: 407, baseType: !42, size: 64, align: 64, offset: 3008)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !27, file: !14, line: 410, baseType: !348, size: 32, align: 32, offset: 3072)
!348 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !27, file: !14, line: 412, baseType: !42, size: 64, align: 64, offset: 3136)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !4, line: 351, baseType: !352)
!352 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 217, size: 384, align: 64, elements: !353)
!353 = !{!354, !355, !356, !357, !365}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !352, file: !4, line: 291, baseType: !13, size: 128, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !352, file: !4, line: 292, baseType: !18, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !352, file: !4, line: 293, baseType: !225, size: 64, align: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !352, file: !4, line: 349, baseType: !358, size: 32, align: 32, offset: 256)
!358 = !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !4, line: 294, size: 32, align: 32, elements: !359)
!359 = !{!360, !361, !362, !363, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !358, file: !4, line: 303, baseType: !348, size: 2, align: 32)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !358, file: !4, line: 331, baseType: !348, size: 3, align: 32, offset: 2)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !358, file: !4, line: 336, baseType: !348, size: 1, align: 32, offset: 5)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !358, file: !4, line: 340, baseType: !348, size: 1, align: 32, offset: 6)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !358, file: !4, line: 345, baseType: !348, size: 1, align: 32, offset: 7)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !352, file: !4, line: 350, baseType: !366, size: 64, align: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 90, baseType: !51)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !4, line: 363, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 356, size: 576, align: 64, elements: !371)
!371 = !{!372, !373, !374, !375}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !370, file: !4, line: 357, baseType: !351, size: 384, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !370, file: !4, line: 358, baseType: !18, size: 64, align: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !370, file: !4, line: 360, baseType: !59, size: 64, align: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !370, file: !4, line: 361, baseType: !18, size: 64, align: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !4, line: 376, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 368, size: 640, align: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !378, file: !4, line: 369, baseType: !369, size: 576, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !378, file: !4, line: 375, baseType: !382, size: 64, align: 64, offset: 576)
!382 = !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !4, line: 370, size: 64, align: 64, elements: !383)
!383 = !{!384, !385, !389, !392}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !382, file: !4, line: 371, baseType: !11, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !382, file: !4, line: 372, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !4, line: 134, baseType: !388)
!388 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !382, file: !4, line: 373, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !4, line: 129, baseType: !84)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !382, file: !4, line: 374, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !4, line: 121, baseType: !348)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !388)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !403, line: 33, baseType: !404)
!403 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!404 = !DICompositeType(tag: DW_TAG_structure_type, file: !403, line: 25, size: 256, align: 64, elements: !405)
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !404, file: !403, line: 26, baseType: !30, size: 192, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !404, file: !403, line: 27, baseType: !408, size: 64, align: 64, offset: 192)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 64, align: 64, elements: !89)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "itemgetterobject", file: !1, line: 404, baseType: !412)
!412 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 400, size: 256, align: 64, elements: !413)
!413 = !{!414, !415, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !412, file: !1, line: 401, baseType: !13, size: 128, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "nitems", scope: !412, file: !1, line: 402, baseType: !18, size: 64, align: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !412, file: !1, line: 403, baseType: !12, size: 64, align: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "attrgetterobject", file: !1, line: 541, baseType: !425)
!425 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 537, size: 256, align: 64, elements: !426)
!426 = !{!427, !428, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !425, file: !1, line: 538, baseType: !13, size: 128, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nattrs", scope: !425, file: !1, line: 539, baseType: !18, size: 64, align: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !425, file: !1, line: 540, baseType: !12, size: 64, align: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "methodcallerobject", file: !1, line: 796, baseType: !432)
!432 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 791, size: 320, align: 64, elements: !433)
!433 = !{!434, !435, !436, !437}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !432, file: !1, line: 792, baseType: !13, size: 128, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !1, line: 793, baseType: !12, size: 64, align: 64, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !432, file: !1, line: 794, baseType: !12, size: 64, align: 64, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "kwds", scope: !432, file: !1, line: 795, baseType: !12, size: 64, align: 64, offset: 256)
!438 = !{!439, !444, !449, !456, !463, !470, !477, !484, !488, !494, !500, !506, !512, !518, !524, !528, !532, !536, !540, !544, !550, !556, !561, !567, !573, !579, !585, !591, !597, !603, !609, !615, !621, !627, !633, !639, !645, !651, !657, !663, !670, !676, !682, !688, !694, !700, !706, !712, !718, !724, !735, !749, !756, !766, !786, !797, !809, !819, !839, !854, !865, !921, !941, !953, !968}
!439 = !DISubprogram(name: "PyInit__operator", scope: !1, file: !1, line: 936, type: !440, isLocal: false, isDefinition: true, scopeLine: 937, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__operator, variables: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!12}
!442 = !{!443}
!443 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !439, file: !1, line: 938, type: !12)
!444 = !DISubprogram(name: "truth", scope: !1, file: !1, line: 68, type: !133, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @truth, variables: !445)
!445 = !{!446, !447, !448}
!446 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !444, file: !1, line: 68, type: !12)
!447 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !444, file: !1, line: 68, type: !12)
!448 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !444, file: !1, line: 68, type: !24)
!449 = !DISubprogram(name: "op_contains", scope: !1, file: !1, line: 99, type: !133, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_contains, variables: !450)
!450 = !{!451, !452, !453, !454, !455}
!451 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !449, file: !1, line: 99, type: !12)
!452 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !449, file: !1, line: 99, type: !12)
!453 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !449, file: !1, line: 99, type: !12)
!454 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !449, file: !1, line: 99, type: !12)
!455 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !449, file: !1, line: 99, type: !24)
!456 = !DISubprogram(name: "indexOf", scope: !1, file: !1, line: 100, type: !133, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @indexOf, variables: !457)
!457 = !{!458, !459, !460, !461, !462}
!458 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !456, file: !1, line: 100, type: !12)
!459 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !456, file: !1, line: 100, type: !12)
!460 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !456, file: !1, line: 100, type: !12)
!461 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !456, file: !1, line: 100, type: !12)
!462 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !456, file: !1, line: 100, type: !18)
!463 = !DISubprogram(name: "countOf", scope: !1, file: !1, line: 101, type: !133, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @countOf, variables: !464)
!464 = !{!465, !466, !467, !468, !469}
!465 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !463, file: !1, line: 101, type: !12)
!466 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !463, file: !1, line: 101, type: !12)
!467 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !463, file: !1, line: 101, type: !12)
!468 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !463, file: !1, line: 101, type: !12)
!469 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !463, file: !1, line: 101, type: !18)
!470 = !DISubprogram(name: "is_", scope: !1, file: !1, line: 137, type: !133, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @is_, variables: !471)
!471 = !{!472, !473, !474, !475, !476}
!472 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !470, file: !1, line: 137, type: !12)
!473 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !470, file: !1, line: 137, type: !12)
!474 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !470, file: !1, line: 139, type: !12)
!475 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !470, file: !1, line: 139, type: !12)
!476 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !470, file: !1, line: 139, type: !12)
!477 = !DISubprogram(name: "is_not", scope: !1, file: !1, line: 148, type: !133, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @is_not, variables: !478)
!478 = !{!479, !480, !481, !482, !483}
!479 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !477, file: !1, line: 148, type: !12)
!480 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !477, file: !1, line: 148, type: !12)
!481 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !477, file: !1, line: 150, type: !12)
!482 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !477, file: !1, line: 150, type: !12)
!483 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !477, file: !1, line: 150, type: !12)
!484 = !DISubprogram(name: "op_index", scope: !1, file: !1, line: 131, type: !133, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_index, variables: !485)
!485 = !{!486, !487}
!486 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !484, file: !1, line: 131, type: !12)
!487 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !484, file: !1, line: 131, type: !12)
!488 = !DISubprogram(name: "op_add", scope: !1, file: !1, line: 69, type: !133, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_add, variables: !489)
!489 = !{!490, !491, !492, !493}
!490 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !488, file: !1, line: 69, type: !12)
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !488, file: !1, line: 69, type: !12)
!492 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !488, file: !1, line: 69, type: !12)
!493 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !488, file: !1, line: 69, type: !12)
!494 = !DISubprogram(name: "op_sub", scope: !1, file: !1, line: 70, type: !133, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_sub, variables: !495)
!495 = !{!496, !497, !498, !499}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !494, file: !1, line: 70, type: !12)
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !494, file: !1, line: 70, type: !12)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !494, file: !1, line: 70, type: !12)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !494, file: !1, line: 70, type: !12)
!500 = !DISubprogram(name: "op_mul", scope: !1, file: !1, line: 71, type: !133, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_mul, variables: !501)
!501 = !{!502, !503, !504, !505}
!502 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !500, file: !1, line: 71, type: !12)
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !500, file: !1, line: 71, type: !12)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !500, file: !1, line: 71, type: !12)
!505 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !500, file: !1, line: 71, type: !12)
!506 = !DISubprogram(name: "op_floordiv", scope: !1, file: !1, line: 72, type: !133, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_floordiv, variables: !507)
!507 = !{!508, !509, !510, !511}
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !506, file: !1, line: 72, type: !12)
!509 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !506, file: !1, line: 72, type: !12)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !506, file: !1, line: 72, type: !12)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !506, file: !1, line: 72, type: !12)
!512 = !DISubprogram(name: "op_truediv", scope: !1, file: !1, line: 73, type: !133, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_truediv, variables: !513)
!513 = !{!514, !515, !516, !517}
!514 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !512, file: !1, line: 73, type: !12)
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !512, file: !1, line: 73, type: !12)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !512, file: !1, line: 73, type: !12)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !512, file: !1, line: 73, type: !12)
!518 = !DISubprogram(name: "op_mod", scope: !1, file: !1, line: 74, type: !133, isLocal: true, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_mod, variables: !519)
!519 = !{!520, !521, !522, !523}
!520 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !518, file: !1, line: 74, type: !12)
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !518, file: !1, line: 74, type: !12)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !518, file: !1, line: 74, type: !12)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !518, file: !1, line: 74, type: !12)
!524 = !DISubprogram(name: "op_neg", scope: !1, file: !1, line: 75, type: !133, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_neg, variables: !525)
!525 = !{!526, !527}
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !524, file: !1, line: 75, type: !12)
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !524, file: !1, line: 75, type: !12)
!528 = !DISubprogram(name: "op_pos", scope: !1, file: !1, line: 76, type: !133, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_pos, variables: !529)
!529 = !{!530, !531}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !528, file: !1, line: 76, type: !12)
!531 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !528, file: !1, line: 76, type: !12)
!532 = !DISubprogram(name: "op_abs", scope: !1, file: !1, line: 77, type: !133, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_abs, variables: !533)
!533 = !{!534, !535}
!534 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !532, file: !1, line: 77, type: !12)
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !532, file: !1, line: 77, type: !12)
!536 = !DISubprogram(name: "op_inv", scope: !1, file: !1, line: 78, type: !133, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_inv, variables: !537)
!537 = !{!538, !539}
!538 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !536, file: !1, line: 78, type: !12)
!539 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !536, file: !1, line: 78, type: !12)
!540 = !DISubprogram(name: "op_invert", scope: !1, file: !1, line: 79, type: !133, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_invert, variables: !541)
!541 = !{!542, !543}
!542 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !540, file: !1, line: 79, type: !12)
!543 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !540, file: !1, line: 79, type: !12)
!544 = !DISubprogram(name: "op_lshift", scope: !1, file: !1, line: 80, type: !133, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_lshift, variables: !545)
!545 = !{!546, !547, !548, !549}
!546 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !544, file: !1, line: 80, type: !12)
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !544, file: !1, line: 80, type: !12)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !544, file: !1, line: 80, type: !12)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !544, file: !1, line: 80, type: !12)
!550 = !DISubprogram(name: "op_rshift", scope: !1, file: !1, line: 81, type: !133, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_rshift, variables: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !550, file: !1, line: 81, type: !12)
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !550, file: !1, line: 81, type: !12)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !550, file: !1, line: 81, type: !12)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !550, file: !1, line: 81, type: !12)
!556 = !DISubprogram(name: "op_not_", scope: !1, file: !1, line: 82, type: !133, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_not_, variables: !557)
!557 = !{!558, !559, !560}
!558 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !556, file: !1, line: 82, type: !12)
!559 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a1", arg: 2, scope: !556, file: !1, line: 82, type: !12)
!560 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !556, file: !1, line: 82, type: !24)
!561 = !DISubprogram(name: "op_and_", scope: !1, file: !1, line: 83, type: !133, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_and_, variables: !562)
!562 = !{!563, !564, !565, !566}
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !561, file: !1, line: 83, type: !12)
!564 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !561, file: !1, line: 83, type: !12)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !561, file: !1, line: 83, type: !12)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !561, file: !1, line: 83, type: !12)
!567 = !DISubprogram(name: "op_xor", scope: !1, file: !1, line: 84, type: !133, isLocal: true, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_xor, variables: !568)
!568 = !{!569, !570, !571, !572}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !567, file: !1, line: 84, type: !12)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !567, file: !1, line: 84, type: !12)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !567, file: !1, line: 84, type: !12)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !567, file: !1, line: 84, type: !12)
!573 = !DISubprogram(name: "op_or_", scope: !1, file: !1, line: 85, type: !133, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_or_, variables: !574)
!574 = !{!575, !576, !577, !578}
!575 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !573, file: !1, line: 85, type: !12)
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !573, file: !1, line: 85, type: !12)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !573, file: !1, line: 85, type: !12)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !573, file: !1, line: 85, type: !12)
!579 = !DISubprogram(name: "op_iadd", scope: !1, file: !1, line: 86, type: !133, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_iadd, variables: !580)
!580 = !{!581, !582, !583, !584}
!581 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !579, file: !1, line: 86, type: !12)
!582 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !579, file: !1, line: 86, type: !12)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !579, file: !1, line: 86, type: !12)
!584 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !579, file: !1, line: 86, type: !12)
!585 = !DISubprogram(name: "op_isub", scope: !1, file: !1, line: 87, type: !133, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_isub, variables: !586)
!586 = !{!587, !588, !589, !590}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !585, file: !1, line: 87, type: !12)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !585, file: !1, line: 87, type: !12)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !585, file: !1, line: 87, type: !12)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !585, file: !1, line: 87, type: !12)
!591 = !DISubprogram(name: "op_imul", scope: !1, file: !1, line: 88, type: !133, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_imul, variables: !592)
!592 = !{!593, !594, !595, !596}
!593 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !591, file: !1, line: 88, type: !12)
!594 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !591, file: !1, line: 88, type: !12)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !591, file: !1, line: 88, type: !12)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !591, file: !1, line: 88, type: !12)
!597 = !DISubprogram(name: "op_ifloordiv", scope: !1, file: !1, line: 89, type: !133, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ifloordiv, variables: !598)
!598 = !{!599, !600, !601, !602}
!599 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !597, file: !1, line: 89, type: !12)
!600 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !597, file: !1, line: 89, type: !12)
!601 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !597, file: !1, line: 89, type: !12)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !597, file: !1, line: 89, type: !12)
!603 = !DISubprogram(name: "op_itruediv", scope: !1, file: !1, line: 90, type: !133, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_itruediv, variables: !604)
!604 = !{!605, !606, !607, !608}
!605 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !603, file: !1, line: 90, type: !12)
!606 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !603, file: !1, line: 90, type: !12)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !603, file: !1, line: 90, type: !12)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !603, file: !1, line: 90, type: !12)
!609 = !DISubprogram(name: "op_imod", scope: !1, file: !1, line: 91, type: !133, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_imod, variables: !610)
!610 = !{!611, !612, !613, !614}
!611 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !609, file: !1, line: 91, type: !12)
!612 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !609, file: !1, line: 91, type: !12)
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !609, file: !1, line: 91, type: !12)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !609, file: !1, line: 91, type: !12)
!615 = !DISubprogram(name: "op_ilshift", scope: !1, file: !1, line: 92, type: !133, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ilshift, variables: !616)
!616 = !{!617, !618, !619, !620}
!617 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !615, file: !1, line: 92, type: !12)
!618 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !615, file: !1, line: 92, type: !12)
!619 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !615, file: !1, line: 92, type: !12)
!620 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !615, file: !1, line: 92, type: !12)
!621 = !DISubprogram(name: "op_irshift", scope: !1, file: !1, line: 93, type: !133, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_irshift, variables: !622)
!622 = !{!623, !624, !625, !626}
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !621, file: !1, line: 93, type: !12)
!624 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !621, file: !1, line: 93, type: !12)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !621, file: !1, line: 93, type: !12)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !621, file: !1, line: 93, type: !12)
!627 = !DISubprogram(name: "op_iand", scope: !1, file: !1, line: 94, type: !133, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_iand, variables: !628)
!628 = !{!629, !630, !631, !632}
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !627, file: !1, line: 94, type: !12)
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !627, file: !1, line: 94, type: !12)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !627, file: !1, line: 94, type: !12)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !627, file: !1, line: 94, type: !12)
!633 = !DISubprogram(name: "op_ixor", scope: !1, file: !1, line: 95, type: !133, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ixor, variables: !634)
!634 = !{!635, !636, !637, !638}
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !633, file: !1, line: 95, type: !12)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !633, file: !1, line: 95, type: !12)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !633, file: !1, line: 95, type: !12)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !633, file: !1, line: 95, type: !12)
!639 = !DISubprogram(name: "op_ior", scope: !1, file: !1, line: 96, type: !133, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ior, variables: !640)
!640 = !{!641, !642, !643, !644}
!641 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !639, file: !1, line: 96, type: !12)
!642 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !639, file: !1, line: 96, type: !12)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !639, file: !1, line: 96, type: !12)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !639, file: !1, line: 96, type: !12)
!645 = !DISubprogram(name: "op_concat", scope: !1, file: !1, line: 97, type: !133, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_concat, variables: !646)
!646 = !{!647, !648, !649, !650}
!647 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !645, file: !1, line: 97, type: !12)
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !645, file: !1, line: 97, type: !12)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !645, file: !1, line: 97, type: !12)
!650 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !645, file: !1, line: 97, type: !12)
!651 = !DISubprogram(name: "op_iconcat", scope: !1, file: !1, line: 98, type: !133, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_iconcat, variables: !652)
!652 = !{!653, !654, !655, !656}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !651, file: !1, line: 98, type: !12)
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !651, file: !1, line: 98, type: !12)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !651, file: !1, line: 98, type: !12)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !651, file: !1, line: 98, type: !12)
!657 = !DISubprogram(name: "op_getitem", scope: !1, file: !1, line: 102, type: !133, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_getitem, variables: !658)
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !657, file: !1, line: 102, type: !12)
!660 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !657, file: !1, line: 102, type: !12)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !657, file: !1, line: 102, type: !12)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !657, file: !1, line: 102, type: !12)
!663 = !DISubprogram(name: "op_setitem", scope: !1, file: !1, line: 104, type: !133, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_setitem, variables: !664)
!664 = !{!665, !666, !667, !668, !669}
!665 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !663, file: !1, line: 104, type: !12)
!666 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !663, file: !1, line: 104, type: !12)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !663, file: !1, line: 104, type: !12)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !663, file: !1, line: 104, type: !12)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a3", scope: !663, file: !1, line: 104, type: !12)
!670 = !DISubprogram(name: "op_delitem", scope: !1, file: !1, line: 103, type: !133, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_delitem, variables: !671)
!671 = !{!672, !673, !674, !675}
!672 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !670, file: !1, line: 103, type: !12)
!673 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !670, file: !1, line: 103, type: !12)
!674 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !670, file: !1, line: 103, type: !12)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !670, file: !1, line: 103, type: !12)
!676 = !DISubprogram(name: "op_pow", scope: !1, file: !1, line: 113, type: !133, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_pow, variables: !677)
!677 = !{!678, !679, !680, !681}
!678 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !676, file: !1, line: 113, type: !12)
!679 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !676, file: !1, line: 113, type: !12)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !676, file: !1, line: 115, type: !12)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !676, file: !1, line: 115, type: !12)
!682 = !DISubprogram(name: "op_ipow", scope: !1, file: !1, line: 122, type: !133, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ipow, variables: !683)
!683 = !{!684, !685, !686, !687}
!684 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !682, file: !1, line: 122, type: !12)
!685 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !682, file: !1, line: 122, type: !12)
!686 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !682, file: !1, line: 124, type: !12)
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !682, file: !1, line: 124, type: !12)
!688 = !DISubprogram(name: "op_lt", scope: !1, file: !1, line: 105, type: !133, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_lt, variables: !689)
!689 = !{!690, !691, !692, !693}
!690 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !688, file: !1, line: 105, type: !12)
!691 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !688, file: !1, line: 105, type: !12)
!692 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !688, file: !1, line: 105, type: !12)
!693 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !688, file: !1, line: 105, type: !12)
!694 = !DISubprogram(name: "op_le", scope: !1, file: !1, line: 106, type: !133, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_le, variables: !695)
!695 = !{!696, !697, !698, !699}
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !694, file: !1, line: 106, type: !12)
!697 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !694, file: !1, line: 106, type: !12)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !694, file: !1, line: 106, type: !12)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !694, file: !1, line: 106, type: !12)
!700 = !DISubprogram(name: "op_eq", scope: !1, file: !1, line: 107, type: !133, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_eq, variables: !701)
!701 = !{!702, !703, !704, !705}
!702 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !700, file: !1, line: 107, type: !12)
!703 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !700, file: !1, line: 107, type: !12)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !700, file: !1, line: 107, type: !12)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !700, file: !1, line: 107, type: !12)
!706 = !DISubprogram(name: "op_ne", scope: !1, file: !1, line: 108, type: !133, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ne, variables: !707)
!707 = !{!708, !709, !710, !711}
!708 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !706, file: !1, line: 108, type: !12)
!709 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !706, file: !1, line: 108, type: !12)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !706, file: !1, line: 108, type: !12)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !706, file: !1, line: 108, type: !12)
!712 = !DISubprogram(name: "op_gt", scope: !1, file: !1, line: 109, type: !133, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_gt, variables: !713)
!713 = !{!714, !715, !716, !717}
!714 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !712, file: !1, line: 109, type: !12)
!715 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !712, file: !1, line: 109, type: !12)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !712, file: !1, line: 109, type: !12)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !712, file: !1, line: 109, type: !12)
!718 = !DISubprogram(name: "op_ge", scope: !1, file: !1, line: 110, type: !133, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @op_ge, variables: !719)
!719 = !{!720, !721, !722, !723}
!720 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s", arg: 1, scope: !718, file: !1, line: 110, type: !12)
!721 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 2, scope: !718, file: !1, line: 110, type: !12)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a1", scope: !718, file: !1, line: 110, type: !12)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a2", scope: !718, file: !1, line: 110, type: !12)
!724 = !DISubprogram(name: "compare_digest", scope: !1, file: !1, line: 249, type: !133, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @compare_digest, variables: !725)
!725 = !{!726, !727, !728, !729, !730, !731, !734}
!726 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !724, file: !1, line: 249, type: !12)
!727 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !724, file: !1, line: 249, type: !12)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !724, file: !1, line: 251, type: !12)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !724, file: !1, line: 251, type: !12)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !724, file: !1, line: 252, type: !51)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view_a", scope: !732, file: !1, line: 277, type: !243)
!732 = distinct !DILexicalBlock(scope: !733, file: !1, line: 276, column: 10)
!733 = distinct !DILexicalBlock(scope: !724, file: !1, line: 259, column: 8)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "view_b", scope: !732, file: !1, line: 278, type: !243)
!735 = !DISubprogram(name: "_tscmp", scope: !1, file: !1, line: 174, type: !736, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, variables: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!51, !395, !395, !18, !18}
!738 = !{!739, !740, !741, !742, !743, !745, !746, !747, !748}
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !735, file: !1, line: 174, type: !395)
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !735, file: !1, line: 174, type: !395)
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len_a", arg: 3, scope: !735, file: !1, line: 175, type: !18)
!742 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "len_b", arg: 4, scope: !735, file: !1, line: 175, type: !18)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "length", scope: !735, file: !1, line: 181, type: !744)
!744 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "left", scope: !735, file: !1, line: 182, type: !398)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "right", scope: !735, file: !1, line: 183, type: !398)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !735, file: !1, line: 184, type: !18)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !735, file: !1, line: 185, type: !388)
!749 = !DISubprogram(name: "length_hint", scope: !1, file: !1, line: 221, type: !133, isLocal: true, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @length_hint, variables: !750)
!750 = !{!751, !752, !753, !754, !755}
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !749, file: !1, line: 221, type: !12)
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !749, file: !1, line: 221, type: !12)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !749, file: !1, line: 223, type: !12)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "defaultvalue", scope: !749, file: !1, line: 224, type: !18)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !749, file: !1, line: 224, type: !18)
!756 = !DISubprogram(name: "itemgetter_dealloc", scope: !1, file: !1, line: 439, type: !757, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.itemgetterobject*)* @itemgetter_dealloc, variables: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !410}
!759 = !{!760, !761, !763}
!760 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 1, scope: !756, file: !1, line: 439, type: !410)
!761 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !762, file: !1, line: 442, type: !12)
!762 = distinct !DILexicalBlock(scope: !756, file: !1, line: 442, column: 5)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !764, file: !1, line: 442, type: !12)
!764 = distinct !DILexicalBlock(scope: !765, file: !1, line: 442, column: 5)
!765 = distinct !DILexicalBlock(scope: !762, file: !1, line: 442, column: 5)
!766 = !DISubprogram(name: "itemgetter_call", scope: !1, file: !1, line: 454, type: !767, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.itemgetterobject*, %struct._object*, %struct._object*)* @itemgetter_call, variables: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{!12, !410, !12, !12}
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !781, !782}
!770 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 1, scope: !766, file: !1, line: 454, type: !410)
!771 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !766, file: !1, line: 454, type: !12)
!772 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !766, file: !1, line: 454, type: !12)
!773 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !766, file: !1, line: 456, type: !12)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !766, file: !1, line: 456, type: !12)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !766, file: !1, line: 457, type: !18)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nitems", scope: !766, file: !1, line: 457, type: !18)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !778, file: !1, line: 472, type: !12)
!778 = distinct !DILexicalBlock(scope: !779, file: !1, line: 471, column: 34)
!779 = distinct !DILexicalBlock(scope: !780, file: !1, line: 471, column: 5)
!780 = distinct !DILexicalBlock(scope: !766, file: !1, line: 471, column: 5)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !778, file: !1, line: 472, type: !12)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !783, file: !1, line: 476, type: !12)
!783 = distinct !DILexicalBlock(scope: !784, file: !1, line: 476, column: 13)
!784 = distinct !DILexicalBlock(scope: !785, file: !1, line: 475, column: 26)
!785 = distinct !DILexicalBlock(scope: !778, file: !1, line: 475, column: 13)
!786 = !DISubprogram(name: "itemgetter_traverse", scope: !1, file: !1, line: 447, type: !787, isLocal: true, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.itemgetterobject*, i32 (%struct._object*, i8*)*, i8*)* @itemgetter_traverse, variables: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{!51, !410, !270, !11}
!789 = !{!790, !791, !792, !793}
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 1, scope: !786, file: !1, line: 447, type: !410)
!791 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !786, file: !1, line: 447, type: !270)
!792 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !786, file: !1, line: 447, type: !11)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !794, file: !1, line: 449, type: !51)
!794 = distinct !DILexicalBlock(scope: !795, file: !1, line: 449, column: 5)
!795 = distinct !DILexicalBlock(scope: !796, file: !1, line: 449, column: 5)
!796 = distinct !DILexicalBlock(scope: !786, file: !1, line: 449, column: 5)
!797 = !DISubprogram(name: "itemgetter_new", scope: !1, file: !1, line: 409, type: !798, isLocal: true, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @itemgetter_new, variables: !802)
!798 = !DISubroutineType(types: !799)
!799 = !{!12, !800, !12, !12}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !14, line: 422, baseType: !27)
!802 = !{!803, !804, !805, !806, !807, !808}
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !797, file: !1, line: 409, type: !800)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !797, file: !1, line: 409, type: !12)
!805 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !797, file: !1, line: 409, type: !12)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ig", scope: !797, file: !1, line: 411, type: !410)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !797, file: !1, line: 412, type: !12)
!808 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nitems", scope: !797, file: !1, line: 413, type: !18)
!809 = !DISubprogram(name: "attrgetter_dealloc", scope: !1, file: !1, line: 658, type: !810, isLocal: true, isDefinition: true, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.attrgetterobject*)* @attrgetter_dealloc, variables: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !423}
!812 = !{!813, !814, !816}
!813 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ag", arg: 1, scope: !809, file: !1, line: 658, type: !423)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !815, file: !1, line: 661, type: !12)
!815 = distinct !DILexicalBlock(scope: !809, file: !1, line: 661, column: 5)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !817, file: !1, line: 661, type: !12)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 661, column: 5)
!818 = distinct !DILexicalBlock(scope: !815, file: !1, line: 661, column: 5)
!819 = !DISubprogram(name: "attrgetter_call", scope: !1, file: !1, line: 706, type: !820, isLocal: true, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.attrgetterobject*, %struct._object*, %struct._object*)* @attrgetter_call, variables: !822)
!820 = !DISubroutineType(types: !821)
!821 = !{!12, !423, !12, !12}
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !834, !835}
!823 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ag", arg: 1, scope: !819, file: !1, line: 706, type: !423)
!824 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !819, file: !1, line: 706, type: !12)
!825 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !819, file: !1, line: 706, type: !12)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !819, file: !1, line: 708, type: !12)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !819, file: !1, line: 708, type: !12)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !819, file: !1, line: 709, type: !18)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nattrs", scope: !819, file: !1, line: 709, type: !18)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr", scope: !831, file: !1, line: 724, type: !12)
!831 = distinct !DILexicalBlock(scope: !832, file: !1, line: 723, column: 34)
!832 = distinct !DILexicalBlock(scope: !833, file: !1, line: 723, column: 5)
!833 = distinct !DILexicalBlock(scope: !819, file: !1, line: 723, column: 5)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "val", scope: !831, file: !1, line: 724, type: !12)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !836, file: !1, line: 728, type: !12)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 728, column: 13)
!837 = distinct !DILexicalBlock(scope: !838, file: !1, line: 727, column: 26)
!838 = distinct !DILexicalBlock(scope: !831, file: !1, line: 727, column: 13)
!839 = !DISubprogram(name: "dotted_getattr", scope: !1, file: !1, line: 673, type: !133, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: true, variables: !840)
!840 = !{!841, !842, !843, !844, !847, !848, !849}
!841 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !839, file: !1, line: 673, type: !12)
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "attr", arg: 2, scope: !839, file: !1, line: 673, type: !12)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newobj", scope: !839, file: !1, line: 675, type: !12)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_idx", scope: !845, file: !1, line: 680, type: !18)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 679, column: 35)
!846 = distinct !DILexicalBlock(scope: !839, file: !1, line: 679, column: 9)
!847 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_count", scope: !845, file: !1, line: 680, type: !18)
!848 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_name", scope: !845, file: !1, line: 681, type: !12)
!849 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !850, file: !1, line: 688, type: !12)
!850 = distinct !DILexicalBlock(scope: !851, file: !1, line: 688, column: 13)
!851 = distinct !DILexicalBlock(scope: !852, file: !1, line: 685, column: 63)
!852 = distinct !DILexicalBlock(scope: !853, file: !1, line: 685, column: 9)
!853 = distinct !DILexicalBlock(scope: !845, file: !1, line: 685, column: 9)
!854 = !DISubprogram(name: "attrgetter_traverse", scope: !1, file: !1, line: 666, type: !855, isLocal: true, isDefinition: true, scopeLine: 667, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.attrgetterobject*, i32 (%struct._object*, i8*)*, i8*)* @attrgetter_traverse, variables: !857)
!855 = !DISubroutineType(types: !856)
!856 = !{!51, !423, !270, !11}
!857 = !{!858, !859, !860, !861}
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ag", arg: 1, scope: !854, file: !1, line: 666, type: !423)
!859 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !854, file: !1, line: 666, type: !270)
!860 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !854, file: !1, line: 666, type: !11)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !862, file: !1, line: 668, type: !51)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 668, column: 5)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 668, column: 5)
!864 = distinct !DILexicalBlock(scope: !854, file: !1, line: 668, column: 5)
!865 = !DISubprogram(name: "attrgetter_new", scope: !1, file: !1, line: 546, type: !798, isLocal: true, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @attrgetter_new, variables: !866)
!866 = !{!867, !868, !869, !870, !871, !872, !873, !874, !875, !879, !880, !881, !882, !883, !887, !891, !894, !895, !896, !897, !898, !902, !909, !911, !915, !917}
!867 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !865, file: !1, line: 546, type: !800)
!868 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !865, file: !1, line: 546, type: !12)
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !865, file: !1, line: 546, type: !12)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ag", scope: !865, file: !1, line: 548, type: !423)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr", scope: !865, file: !1, line: 549, type: !12)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nattrs", scope: !865, file: !1, line: 550, type: !18)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !865, file: !1, line: 550, type: !18)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "char_idx", scope: !865, file: !1, line: 550, type: !18)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !876, file: !1, line: 567, type: !12)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 566, column: 40)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 566, column: 5)
!878 = distinct !DILexicalBlock(scope: !865, file: !1, line: 566, column: 5)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item_len", scope: !876, file: !1, line: 568, type: !18)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !876, file: !1, line: 569, type: !11)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !876, file: !1, line: 570, type: !348)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot_count", scope: !876, file: !1, line: 571, type: !51)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !884, file: !1, line: 576, type: !12)
!884 = distinct !DILexicalBlock(scope: !885, file: !1, line: 576, column: 13)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 573, column: 37)
!886 = distinct !DILexicalBlock(scope: !876, file: !1, line: 573, column: 13)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !888, file: !1, line: 580, type: !12)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 580, column: 13)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 579, column: 36)
!890 = distinct !DILexicalBlock(scope: !876, file: !1, line: 579, column: 13)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_chain", scope: !892, file: !1, line: 599, type: !12)
!892 = distinct !DILexicalBlock(scope: !893, file: !1, line: 598, column: 16)
!893 = distinct !DILexicalBlock(scope: !876, file: !1, line: 594, column: 13)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_chain_item", scope: !892, file: !1, line: 600, type: !12)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unibuff_from", scope: !892, file: !1, line: 601, type: !18)
!896 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unibuff_till", scope: !892, file: !1, line: 602, type: !18)
!897 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "attr_chain_idx", scope: !892, file: !1, line: 603, type: !18)
!898 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !899, file: !1, line: 606, type: !12)
!899 = distinct !DILexicalBlock(scope: !900, file: !1, line: 606, column: 17)
!900 = distinct !DILexicalBlock(scope: !901, file: !1, line: 605, column: 37)
!901 = distinct !DILexicalBlock(scope: !892, file: !1, line: 605, column: 17)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !903, file: !1, line: 618, type: !12)
!903 = distinct !DILexicalBlock(scope: !904, file: !1, line: 618, column: 21)
!904 = distinct !DILexicalBlock(scope: !905, file: !1, line: 617, column: 46)
!905 = distinct !DILexicalBlock(scope: !906, file: !1, line: 617, column: 21)
!906 = distinct !DILexicalBlock(scope: !907, file: !1, line: 610, column: 48)
!907 = distinct !DILexicalBlock(scope: !908, file: !1, line: 610, column: 13)
!908 = distinct !DILexicalBlock(scope: !892, file: !1, line: 610, column: 13)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !910, file: !1, line: 619, type: !12)
!910 = distinct !DILexicalBlock(scope: !904, file: !1, line: 619, column: 21)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !912, file: !1, line: 632, type: !12)
!912 = distinct !DILexicalBlock(scope: !913, file: !1, line: 632, column: 17)
!913 = distinct !DILexicalBlock(scope: !914, file: !1, line: 631, column: 42)
!914 = distinct !DILexicalBlock(scope: !892, file: !1, line: 631, column: 17)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !916, file: !1, line: 633, type: !12)
!916 = distinct !DILexicalBlock(scope: !913, file: !1, line: 633, column: 17)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !918, file: !1, line: 646, type: !12)
!918 = distinct !DILexicalBlock(scope: !919, file: !1, line: 646, column: 9)
!919 = distinct !DILexicalBlock(scope: !920, file: !1, line: 645, column: 21)
!920 = distinct !DILexicalBlock(scope: !865, file: !1, line: 645, column: 9)
!921 = !DISubprogram(name: "methodcaller_dealloc", scope: !1, file: !1, line: 836, type: !922, isLocal: true, isDefinition: true, scopeLine: 837, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.methodcallerobject*)* @methodcaller_dealloc, variables: !924)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !430}
!924 = !{!925, !926, !928, !931, !933, !936, !938}
!925 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mc", arg: 1, scope: !921, file: !1, line: 836, type: !430)
!926 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !927, file: !1, line: 839, type: !12)
!927 = distinct !DILexicalBlock(scope: !921, file: !1, line: 839, column: 5)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !929, file: !1, line: 839, type: !12)
!929 = distinct !DILexicalBlock(scope: !930, file: !1, line: 839, column: 5)
!930 = distinct !DILexicalBlock(scope: !927, file: !1, line: 839, column: 5)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !932, file: !1, line: 840, type: !12)
!932 = distinct !DILexicalBlock(scope: !921, file: !1, line: 840, column: 5)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !934, file: !1, line: 840, type: !12)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 840, column: 5)
!935 = distinct !DILexicalBlock(scope: !932, file: !1, line: 840, column: 5)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !937, file: !1, line: 841, type: !12)
!937 = distinct !DILexicalBlock(scope: !921, file: !1, line: 841, column: 5)
!938 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !939, file: !1, line: 841, type: !12)
!939 = distinct !DILexicalBlock(scope: !940, file: !1, line: 841, column: 5)
!940 = distinct !DILexicalBlock(scope: !937, file: !1, line: 841, column: 5)
!941 = !DISubprogram(name: "methodcaller_call", scope: !1, file: !1, line: 854, type: !942, isLocal: true, isDefinition: true, scopeLine: 855, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.methodcallerobject*, %struct._object*, %struct._object*)* @methodcaller_call, variables: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{!12, !430, !12, !12}
!944 = !{!945, !946, !947, !948, !949, !950, !951}
!945 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mc", arg: 1, scope: !941, file: !1, line: 854, type: !430)
!946 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !941, file: !1, line: 854, type: !12)
!947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !941, file: !1, line: 854, type: !12)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "method", scope: !941, file: !1, line: 856, type: !12)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !941, file: !1, line: 856, type: !12)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !941, file: !1, line: 856, type: !12)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !952, file: !1, line: 864, type: !12)
!952 = distinct !DILexicalBlock(scope: !941, file: !1, line: 864, column: 5)
!953 = !DISubprogram(name: "methodcaller_traverse", scope: !1, file: !1, line: 846, type: !954, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.methodcallerobject*, i32 (%struct._object*, i8*)*, i8*)* @methodcaller_traverse, variables: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{!51, !430, !270, !11}
!956 = !{!957, !958, !959, !960, !964}
!957 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mc", arg: 1, scope: !953, file: !1, line: 846, type: !430)
!958 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !953, file: !1, line: 846, type: !270)
!959 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !953, file: !1, line: 846, type: !11)
!960 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !961, file: !1, line: 848, type: !51)
!961 = distinct !DILexicalBlock(scope: !962, file: !1, line: 848, column: 5)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 848, column: 5)
!963 = distinct !DILexicalBlock(scope: !953, file: !1, line: 848, column: 5)
!964 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !965, file: !1, line: 849, type: !51)
!965 = distinct !DILexicalBlock(scope: !966, file: !1, line: 849, column: 5)
!966 = distinct !DILexicalBlock(scope: !967, file: !1, line: 849, column: 5)
!967 = distinct !DILexicalBlock(scope: !953, file: !1, line: 849, column: 5)
!968 = !DISubprogram(name: "methodcaller_new", scope: !1, file: !1, line: 801, type: !798, isLocal: true, isDefinition: true, scopeLine: 802, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @methodcaller_new, variables: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976, !980}
!970 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !968, file: !1, line: 801, type: !800)
!971 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !968, file: !1, line: 801, type: !12)
!972 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !968, file: !1, line: 801, type: !12)
!973 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mc", scope: !968, file: !1, line: 803, type: !430)
!974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !968, file: !1, line: 804, type: !12)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newargs", scope: !968, file: !1, line: 804, type: !12)
!976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !977, file: !1, line: 819, type: !12)
!977 = distinct !DILexicalBlock(scope: !978, file: !1, line: 819, column: 9)
!978 = distinct !DILexicalBlock(scope: !979, file: !1, line: 818, column: 26)
!979 = distinct !DILexicalBlock(scope: !968, file: !1, line: 818, column: 9)
!980 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !981, file: !1, line: 828, type: !12)
!981 = distinct !DILexicalBlock(scope: !968, file: !1, line: 828, column: 5)
!982 = !{!983, !1006, !1010, !1014, !1018, !1022, !1023, !1027, !1028, !1032, !1033}
!983 = !DIGlobalVariable(name: "operatormodule", scope: !0, file: !1, line: 923, type: !984, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @operatormodule)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !985, line: 47, size: 832, align: 64, elements: !986)
!985 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!986 = !{!987, !996, !997, !998, !999, !1002, !1003, !1004, !1005}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !984, file: !985, line: 48, baseType: !988, size: 320, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !985, line: 38, baseType: !989)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !985, line: 33, size: 320, align: 64, elements: !990)
!990 = !{!991, !992, !994, !995}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !989, file: !985, line: 34, baseType: !13, size: 128, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !989, file: !985, line: 35, baseType: !993, size: 64, align: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !989, file: !985, line: 36, baseType: !18, size: 64, align: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !989, file: !985, line: 37, baseType: !12, size: 64, align: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !984, file: !985, line: 49, baseType: !36, size: 64, align: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !984, file: !985, line: 50, baseType: !36, size: 64, align: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !984, file: !985, line: 51, baseType: !18, size: 64, align: 64, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !984, file: !985, line: 52, baseType: !1000, size: 64, align: 64, offset: 512)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64, align: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !288, line: 47, baseType: !287)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !984, file: !985, line: 53, baseType: !149, size: 64, align: 64, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !984, file: !985, line: 54, baseType: !266, size: 64, align: 64, offset: 640)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !984, file: !985, line: 55, baseType: !149, size: 64, align: 64, offset: 704)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !984, file: !985, line: 56, baseType: !336, size: 64, align: 64, offset: 768)
!1006 = !DIGlobalVariable(name: "operator_doc", scope: !0, file: !1, line: 4, type: !1007, isLocal: true, isDefinition: true, variable: [333 x i8]* @operator_doc)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2664, align: 8, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 333)
!1010 = !DIGlobalVariable(name: "operator_methods", scope: !0, file: !1, line: 329, type: !1011, isLocal: true, isDefinition: true, variable: [51 x %struct.PyMethodDef]* @operator_methods)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !287, size: 13056, align: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DISubrange(count: 51)
!1014 = !DIGlobalVariable(name: "compare_digest__doc__", scope: !0, file: !1, line: 236, type: !1015, isLocal: true, isDefinition: true, variable: [465 x i8]* @compare_digest__doc__)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 3720, align: 8, elements: !1016)
!1016 = !{!1017}
!1017 = !DISubrange(count: 465)
!1018 = !DIGlobalVariable(name: "length_hint__doc__", scope: !0, file: !1, line: 211, type: !1019, isLocal: true, isDefinition: true, variable: [316 x i8]* @length_hint__doc__)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2528, align: 8, elements: !1020)
!1020 = !{!1021}
!1021 = !DISubrange(count: 316)
!1022 = !DIGlobalVariable(name: "itemgetter_type", scope: !0, file: !1, line: 491, type: !801, isLocal: true, isDefinition: true, variable: %struct._typeobject* @itemgetter_type)
!1023 = !DIGlobalVariable(name: "itemgetter_doc", scope: !0, file: !1, line: 484, type: !1024, isLocal: true, isDefinition: true, variable: [244 x i8]* @itemgetter_doc)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1952, align: 8, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 244)
!1027 = !DIGlobalVariable(name: "attrgetter_type", scope: !0, file: !1, line: 745, type: !801, isLocal: true, isDefinition: true, variable: %struct._typeobject* @attrgetter_type)
!1028 = !DIGlobalVariable(name: "attrgetter_doc", scope: !0, file: !1, line: 736, type: !1029, isLocal: true, isDefinition: true, variable: [362 x i8]* @attrgetter_doc)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2896, align: 8, elements: !1030)
!1030 = !{!1031}
!1031 = !DISubrange(count: 362)
!1032 = !DIGlobalVariable(name: "methodcaller_type", scope: !0, file: !1, line: 876, type: !801, isLocal: true, isDefinition: true, variable: %struct._typeobject* @methodcaller_type)
!1033 = !DIGlobalVariable(name: "methodcaller_doc", scope: !0, file: !1, line: 868, type: !1034, isLocal: true, isDefinition: true, variable: [274 x i8]* @methodcaller_doc)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 2192, align: 8, elements: !1035)
!1035 = !{!1036}
!1036 = !DISubrange(count: 274)
!1037 = !{i32 2, !"Dwarf Version", i32 4}
!1038 = !{i32 2, !"Debug Info Version", i32 3}
!1039 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1040 = !DILocation(line: 941, column: 9, scope: !439)
!1041 = !DIExpression()
!1042 = !DILocation(line: 938, column: 15, scope: !439)
!1043 = !DILocation(line: 942, column: 11, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !439, file: !1, line: 942, column: 9)
!1045 = !DILocation(line: 942, column: 9, scope: !439)
!1046 = !DILocation(line: 945, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !439, file: !1, line: 945, column: 9)
!1048 = !DILocation(line: 945, column: 40, scope: !1047)
!1049 = !DILocation(line: 945, column: 9, scope: !439)
!1050 = !DILocation(line: 947, column: 5, scope: !439)
!1051 = !{!1052, !1053, i64 0}
!1052 = !{!"_object", !1053, i64 0, !1056, i64 8}
!1053 = !{!"long", !1054, i64 0}
!1054 = !{!"omnipotent char", !1055, i64 0}
!1055 = !{!"Simple C/C++ TBAA"}
!1056 = !{!"any pointer", !1054, i64 0}
!1057 = !DILocation(line: 948, column: 5, scope: !439)
!1058 = !DILocation(line: 950, column: 9, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !439, file: !1, line: 950, column: 9)
!1060 = !DILocation(line: 950, column: 40, scope: !1059)
!1061 = !DILocation(line: 950, column: 9, scope: !439)
!1062 = !DILocation(line: 952, column: 5, scope: !439)
!1063 = !DILocation(line: 953, column: 5, scope: !439)
!1064 = !DILocation(line: 955, column: 9, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !439, file: !1, line: 955, column: 9)
!1066 = !DILocation(line: 955, column: 42, scope: !1065)
!1067 = !DILocation(line: 955, column: 9, scope: !439)
!1068 = !DILocation(line: 957, column: 5, scope: !439)
!1069 = !DILocation(line: 958, column: 5, scope: !439)
!1070 = !DILocation(line: 959, column: 5, scope: !439)
!1071 = !DILocation(line: 960, column: 1, scope: !439)
!1072 = !DILocation(line: 68, column: 1, scope: !444)
!1073 = !DILocation(line: 68, column: 1, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !444, file: !1, line: 68, column: 1)
!1075 = !DILocation(line: 68, column: 1, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 2)
!1077 = !DILocation(line: 68, column: 1, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !1, discriminator: 4)
!1079 = !DILexicalBlockFile(scope: !444, file: !1, discriminator: 3)
!1080 = !DILocation(line: 99, column: 1, scope: !449)
!1081 = !DILocation(line: 99, column: 1, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !449, file: !1, line: 99, column: 1)
!1083 = !DILocation(line: 99, column: 1, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !449, file: !1, line: 99, column: 1)
!1086 = !{!1056, !1056, i64 0}
!1087 = !DILocation(line: 99, column: 1, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 5)
!1089 = !DILocation(line: 99, column: 1, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1091, file: !1, discriminator: 7)
!1091 = !DILexicalBlockFile(scope: !1092, file: !1, discriminator: 6)
!1092 = !DILexicalBlockFile(scope: !449, file: !1, discriminator: 3)
!1093 = !DILocation(line: 100, column: 1, scope: !456)
!1094 = !DILocation(line: 100, column: 1, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !456, file: !1, line: 100, column: 1)
!1096 = !DILocation(line: 100, column: 1, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1098, file: !1, discriminator: 1)
!1098 = distinct !DILexicalBlock(scope: !456, file: !1, line: 100, column: 1)
!1099 = !DILocation(line: 100, column: 1, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !456, file: !1, discriminator: 5)
!1101 = !DILocation(line: 100, column: 1, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1103, file: !1, discriminator: 7)
!1103 = !DILexicalBlockFile(scope: !1104, file: !1, discriminator: 6)
!1104 = !DILexicalBlockFile(scope: !456, file: !1, discriminator: 3)
!1105 = !DILocation(line: 101, column: 1, scope: !463)
!1106 = !DILocation(line: 101, column: 1, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !463, file: !1, line: 101, column: 1)
!1108 = !DILocation(line: 101, column: 1, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1110, file: !1, discriminator: 1)
!1110 = distinct !DILexicalBlock(scope: !463, file: !1, line: 101, column: 1)
!1111 = !DILocation(line: 101, column: 1, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 5)
!1113 = !DILocation(line: 101, column: 1, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1115, file: !1, discriminator: 7)
!1115 = !DILexicalBlockFile(scope: !1116, file: !1, discriminator: 6)
!1116 = !DILexicalBlockFile(scope: !463, file: !1, discriminator: 3)
!1117 = !DILocation(line: 137, column: 15, scope: !470)
!1118 = !DILocation(line: 137, column: 28, scope: !470)
!1119 = !DILocation(line: 139, column: 5, scope: !470)
!1120 = !DILocation(line: 139, column: 25, scope: !470)
!1121 = !DILocation(line: 139, column: 15, scope: !470)
!1122 = !DILocation(line: 139, column: 20, scope: !470)
!1123 = !DILocation(line: 140, column: 9, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !470, file: !1, line: 140, column: 9)
!1125 = !DILocation(line: 140, column: 9, scope: !470)
!1126 = !DILocation(line: 141, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !1, line: 140, column: 53)
!1128 = !DILocation(line: 141, column: 25, scope: !1127)
!1129 = !DILocation(line: 141, column: 22, scope: !1127)
!1130 = !DILocation(line: 141, column: 18, scope: !1127)
!1131 = !DILocation(line: 142, column: 9, scope: !1127)
!1132 = !DILocation(line: 143, column: 5, scope: !1127)
!1133 = !DILocation(line: 145, column: 1, scope: !470)
!1134 = !DILocation(line: 144, column: 5, scope: !470)
!1135 = !DILocation(line: 148, column: 18, scope: !477)
!1136 = !DILocation(line: 148, column: 31, scope: !477)
!1137 = !DILocation(line: 150, column: 5, scope: !477)
!1138 = !DILocation(line: 150, column: 25, scope: !477)
!1139 = !DILocation(line: 150, column: 15, scope: !477)
!1140 = !DILocation(line: 150, column: 20, scope: !477)
!1141 = !DILocation(line: 151, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !477, file: !1, line: 151, column: 9)
!1143 = !DILocation(line: 151, column: 9, scope: !477)
!1144 = !DILocation(line: 152, column: 19, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 151, column: 56)
!1146 = !DILocation(line: 152, column: 25, scope: !1145)
!1147 = !DILocation(line: 152, column: 22, scope: !1145)
!1148 = !DILocation(line: 152, column: 18, scope: !1145)
!1149 = !DILocation(line: 153, column: 9, scope: !1145)
!1150 = !DILocation(line: 154, column: 5, scope: !1145)
!1151 = !DILocation(line: 156, column: 1, scope: !477)
!1152 = !DILocation(line: 155, column: 5, scope: !477)
!1153 = !DILocation(line: 131, column: 20, scope: !484)
!1154 = !DILocation(line: 131, column: 33, scope: !484)
!1155 = !DILocation(line: 133, column: 12, scope: !484)
!1156 = !DILocation(line: 133, column: 5, scope: !484)
!1157 = !DILocation(line: 69, column: 1, scope: !488)
!1158 = !DILocation(line: 69, column: 1, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !488, file: !1, line: 69, column: 1)
!1160 = !DILocation(line: 69, column: 1, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 1)
!1162 = !DILocation(line: 69, column: 1, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !1, discriminator: 4)
!1164 = !DILexicalBlockFile(scope: !488, file: !1, discriminator: 3)
!1165 = !DILocation(line: 70, column: 1, scope: !494)
!1166 = !DILocation(line: 70, column: 1, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !494, file: !1, line: 70, column: 1)
!1168 = !DILocation(line: 70, column: 1, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 1)
!1170 = !DILocation(line: 70, column: 1, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1172, file: !1, discriminator: 4)
!1172 = !DILexicalBlockFile(scope: !494, file: !1, discriminator: 3)
!1173 = !DILocation(line: 71, column: 1, scope: !500)
!1174 = !DILocation(line: 71, column: 1, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !500, file: !1, line: 71, column: 1)
!1176 = !DILocation(line: 71, column: 1, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !500, file: !1, discriminator: 1)
!1178 = !DILocation(line: 71, column: 1, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 4)
!1180 = !DILexicalBlockFile(scope: !500, file: !1, discriminator: 3)
!1181 = !DILocation(line: 72, column: 1, scope: !506)
!1182 = !DILocation(line: 72, column: 1, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !506, file: !1, line: 72, column: 1)
!1184 = !DILocation(line: 72, column: 1, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 1)
!1186 = !DILocation(line: 72, column: 1, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1188, file: !1, discriminator: 4)
!1188 = !DILexicalBlockFile(scope: !506, file: !1, discriminator: 3)
!1189 = !DILocation(line: 73, column: 1, scope: !512)
!1190 = !DILocation(line: 73, column: 1, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !512, file: !1, line: 73, column: 1)
!1192 = !DILocation(line: 73, column: 1, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !512, file: !1, discriminator: 1)
!1194 = !DILocation(line: 73, column: 1, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !1, discriminator: 4)
!1196 = !DILexicalBlockFile(scope: !512, file: !1, discriminator: 3)
!1197 = !DILocation(line: 74, column: 1, scope: !518)
!1198 = !DILocation(line: 74, column: 1, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !518, file: !1, line: 74, column: 1)
!1200 = !DILocation(line: 74, column: 1, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 1)
!1202 = !DILocation(line: 74, column: 1, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !1, discriminator: 4)
!1204 = !DILexicalBlockFile(scope: !518, file: !1, discriminator: 3)
!1205 = !DILocation(line: 75, column: 1, scope: !524)
!1206 = !DILocation(line: 76, column: 1, scope: !528)
!1207 = !DILocation(line: 77, column: 1, scope: !532)
!1208 = !DILocation(line: 78, column: 1, scope: !536)
!1209 = !DILocation(line: 79, column: 1, scope: !540)
!1210 = !DILocation(line: 80, column: 1, scope: !544)
!1211 = !DILocation(line: 80, column: 1, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !544, file: !1, line: 80, column: 1)
!1213 = !DILocation(line: 80, column: 1, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 1)
!1215 = !DILocation(line: 80, column: 1, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1217, file: !1, discriminator: 4)
!1217 = !DILexicalBlockFile(scope: !544, file: !1, discriminator: 3)
!1218 = !DILocation(line: 81, column: 1, scope: !550)
!1219 = !DILocation(line: 81, column: 1, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !550, file: !1, line: 81, column: 1)
!1221 = !DILocation(line: 81, column: 1, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 1)
!1223 = !DILocation(line: 81, column: 1, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1225, file: !1, discriminator: 4)
!1225 = !DILexicalBlockFile(scope: !550, file: !1, discriminator: 3)
!1226 = !DILocation(line: 82, column: 1, scope: !556)
!1227 = !DILocation(line: 82, column: 1, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !556, file: !1, line: 82, column: 1)
!1229 = !DILocation(line: 82, column: 1, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 2)
!1231 = !DILocation(line: 82, column: 1, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1233, file: !1, discriminator: 4)
!1233 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 3)
!1234 = !DILocation(line: 83, column: 1, scope: !561)
!1235 = !DILocation(line: 83, column: 1, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !561, file: !1, line: 83, column: 1)
!1237 = !DILocation(line: 83, column: 1, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 1)
!1239 = !DILocation(line: 83, column: 1, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !1, discriminator: 4)
!1241 = !DILexicalBlockFile(scope: !561, file: !1, discriminator: 3)
!1242 = !DILocation(line: 84, column: 1, scope: !567)
!1243 = !DILocation(line: 84, column: 1, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !567, file: !1, line: 84, column: 1)
!1245 = !DILocation(line: 84, column: 1, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 1)
!1247 = !DILocation(line: 84, column: 1, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1249, file: !1, discriminator: 4)
!1249 = !DILexicalBlockFile(scope: !567, file: !1, discriminator: 3)
!1250 = !DILocation(line: 85, column: 1, scope: !573)
!1251 = !DILocation(line: 85, column: 1, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !573, file: !1, line: 85, column: 1)
!1253 = !DILocation(line: 85, column: 1, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 1)
!1255 = !DILocation(line: 85, column: 1, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1257, file: !1, discriminator: 4)
!1257 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 3)
!1258 = !DILocation(line: 86, column: 1, scope: !579)
!1259 = !DILocation(line: 86, column: 1, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !579, file: !1, line: 86, column: 1)
!1261 = !DILocation(line: 86, column: 1, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 1)
!1263 = !DILocation(line: 86, column: 1, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1265, file: !1, discriminator: 4)
!1265 = !DILexicalBlockFile(scope: !579, file: !1, discriminator: 3)
!1266 = !DILocation(line: 87, column: 1, scope: !585)
!1267 = !DILocation(line: 87, column: 1, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !585, file: !1, line: 87, column: 1)
!1269 = !DILocation(line: 87, column: 1, scope: !1270)
!1270 = !DILexicalBlockFile(scope: !585, file: !1, discriminator: 1)
!1271 = !DILocation(line: 87, column: 1, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1273, file: !1, discriminator: 4)
!1273 = !DILexicalBlockFile(scope: !585, file: !1, discriminator: 3)
!1274 = !DILocation(line: 88, column: 1, scope: !591)
!1275 = !DILocation(line: 88, column: 1, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !591, file: !1, line: 88, column: 1)
!1277 = !DILocation(line: 88, column: 1, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 1)
!1279 = !DILocation(line: 88, column: 1, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1281, file: !1, discriminator: 4)
!1281 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 3)
!1282 = !DILocation(line: 89, column: 1, scope: !597)
!1283 = !DILocation(line: 89, column: 1, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !597, file: !1, line: 89, column: 1)
!1285 = !DILocation(line: 89, column: 1, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 1)
!1287 = !DILocation(line: 89, column: 1, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1289, file: !1, discriminator: 4)
!1289 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 3)
!1290 = !DILocation(line: 90, column: 1, scope: !603)
!1291 = !DILocation(line: 90, column: 1, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !603, file: !1, line: 90, column: 1)
!1293 = !DILocation(line: 90, column: 1, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 1)
!1295 = !DILocation(line: 90, column: 1, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !1, discriminator: 4)
!1297 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 3)
!1298 = !DILocation(line: 91, column: 1, scope: !609)
!1299 = !DILocation(line: 91, column: 1, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !609, file: !1, line: 91, column: 1)
!1301 = !DILocation(line: 91, column: 1, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 1)
!1303 = !DILocation(line: 91, column: 1, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !1, discriminator: 4)
!1305 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 3)
!1306 = !DILocation(line: 92, column: 1, scope: !615)
!1307 = !DILocation(line: 92, column: 1, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !615, file: !1, line: 92, column: 1)
!1309 = !DILocation(line: 92, column: 1, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 1)
!1311 = !DILocation(line: 92, column: 1, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1313, file: !1, discriminator: 4)
!1313 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 3)
!1314 = !DILocation(line: 93, column: 1, scope: !621)
!1315 = !DILocation(line: 93, column: 1, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !621, file: !1, line: 93, column: 1)
!1317 = !DILocation(line: 93, column: 1, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 1)
!1319 = !DILocation(line: 93, column: 1, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !1, discriminator: 4)
!1321 = !DILexicalBlockFile(scope: !621, file: !1, discriminator: 3)
!1322 = !DILocation(line: 94, column: 1, scope: !627)
!1323 = !DILocation(line: 94, column: 1, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !627, file: !1, line: 94, column: 1)
!1325 = !DILocation(line: 94, column: 1, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !627, file: !1, discriminator: 1)
!1327 = !DILocation(line: 94, column: 1, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !1, discriminator: 4)
!1329 = !DILexicalBlockFile(scope: !627, file: !1, discriminator: 3)
!1330 = !DILocation(line: 95, column: 1, scope: !633)
!1331 = !DILocation(line: 95, column: 1, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !633, file: !1, line: 95, column: 1)
!1333 = !DILocation(line: 95, column: 1, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !633, file: !1, discriminator: 1)
!1335 = !DILocation(line: 95, column: 1, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1337, file: !1, discriminator: 4)
!1337 = !DILexicalBlockFile(scope: !633, file: !1, discriminator: 3)
!1338 = !DILocation(line: 96, column: 1, scope: !639)
!1339 = !DILocation(line: 96, column: 1, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !639, file: !1, line: 96, column: 1)
!1341 = !DILocation(line: 96, column: 1, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !639, file: !1, discriminator: 1)
!1343 = !DILocation(line: 96, column: 1, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !1, discriminator: 4)
!1345 = !DILexicalBlockFile(scope: !639, file: !1, discriminator: 3)
!1346 = !DILocation(line: 97, column: 1, scope: !645)
!1347 = !DILocation(line: 97, column: 1, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !645, file: !1, line: 97, column: 1)
!1349 = !DILocation(line: 97, column: 1, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 1)
!1351 = !DILocation(line: 97, column: 1, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !1, discriminator: 4)
!1353 = !DILexicalBlockFile(scope: !645, file: !1, discriminator: 3)
!1354 = !DILocation(line: 98, column: 1, scope: !651)
!1355 = !DILocation(line: 98, column: 1, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !651, file: !1, line: 98, column: 1)
!1357 = !DILocation(line: 98, column: 1, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 1)
!1359 = !DILocation(line: 98, column: 1, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1361, file: !1, discriminator: 4)
!1361 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 3)
!1362 = !DILocation(line: 102, column: 1, scope: !657)
!1363 = !DILocation(line: 102, column: 1, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !657, file: !1, line: 102, column: 1)
!1365 = !DILocation(line: 102, column: 1, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 1)
!1367 = !DILocation(line: 102, column: 1, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1369, file: !1, discriminator: 4)
!1369 = !DILexicalBlockFile(scope: !657, file: !1, discriminator: 3)
!1370 = !DILocation(line: 104, column: 1, scope: !663)
!1371 = !DILocation(line: 104, column: 1, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !663, file: !1, line: 104, column: 1)
!1373 = !DILocation(line: 104, column: 1, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !1, discriminator: 1)
!1375 = distinct !DILexicalBlock(scope: !663, file: !1, line: 104, column: 1)
!1376 = !DILocation(line: 104, column: 1, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !663, file: !1, discriminator: 5)
!1378 = !DILocation(line: 104, column: 1, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1380, file: !1, discriminator: 7)
!1380 = !DILexicalBlockFile(scope: !1381, file: !1, discriminator: 6)
!1381 = !DILexicalBlockFile(scope: !663, file: !1, discriminator: 3)
!1382 = !DILocation(line: 103, column: 1, scope: !670)
!1383 = !DILocation(line: 103, column: 1, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !670, file: !1, line: 103, column: 1)
!1385 = !DILocation(line: 103, column: 1, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !1, discriminator: 1)
!1387 = distinct !DILexicalBlock(scope: !670, file: !1, line: 103, column: 1)
!1388 = !DILocation(line: 103, column: 1, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 5)
!1390 = !DILocation(line: 103, column: 1, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !1, discriminator: 7)
!1392 = !DILexicalBlockFile(scope: !1393, file: !1, discriminator: 6)
!1393 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 3)
!1394 = !DILocation(line: 113, column: 18, scope: !676)
!1395 = !DILocation(line: 113, column: 31, scope: !676)
!1396 = !DILocation(line: 115, column: 5, scope: !676)
!1397 = !DILocation(line: 115, column: 15, scope: !676)
!1398 = !DILocation(line: 115, column: 20, scope: !676)
!1399 = !DILocation(line: 116, column: 9, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !676, file: !1, line: 116, column: 9)
!1401 = !DILocation(line: 116, column: 9, scope: !676)
!1402 = !DILocation(line: 117, column: 31, scope: !1400)
!1403 = !DILocation(line: 117, column: 35, scope: !1400)
!1404 = !DILocation(line: 117, column: 16, scope: !1400)
!1405 = !DILocation(line: 117, column: 9, scope: !1400)
!1406 = !DILocation(line: 119, column: 1, scope: !676)
!1407 = !DILocation(line: 122, column: 19, scope: !682)
!1408 = !DILocation(line: 122, column: 32, scope: !682)
!1409 = !DILocation(line: 124, column: 5, scope: !682)
!1410 = !DILocation(line: 124, column: 15, scope: !682)
!1411 = !DILocation(line: 124, column: 20, scope: !682)
!1412 = !DILocation(line: 125, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !682, file: !1, line: 125, column: 9)
!1414 = !DILocation(line: 125, column: 9, scope: !682)
!1415 = !DILocation(line: 126, column: 38, scope: !1413)
!1416 = !DILocation(line: 126, column: 42, scope: !1413)
!1417 = !DILocation(line: 126, column: 16, scope: !1413)
!1418 = !DILocation(line: 126, column: 9, scope: !1413)
!1419 = !DILocation(line: 128, column: 1, scope: !682)
!1420 = !DILocation(line: 105, column: 1, scope: !688)
!1421 = !DILocation(line: 105, column: 1, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !688, file: !1, line: 105, column: 1)
!1423 = !DILocation(line: 105, column: 1, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !688, file: !1, discriminator: 1)
!1425 = !DILocation(line: 105, column: 1, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1427, file: !1, discriminator: 4)
!1427 = !DILexicalBlockFile(scope: !688, file: !1, discriminator: 3)
!1428 = !DILocation(line: 106, column: 1, scope: !694)
!1429 = !DILocation(line: 106, column: 1, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !694, file: !1, line: 106, column: 1)
!1431 = !DILocation(line: 106, column: 1, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !694, file: !1, discriminator: 1)
!1433 = !DILocation(line: 106, column: 1, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !1, discriminator: 4)
!1435 = !DILexicalBlockFile(scope: !694, file: !1, discriminator: 3)
!1436 = !DILocation(line: 107, column: 1, scope: !700)
!1437 = !DILocation(line: 107, column: 1, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !700, file: !1, line: 107, column: 1)
!1439 = !DILocation(line: 107, column: 1, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 1)
!1441 = !DILocation(line: 107, column: 1, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1443, file: !1, discriminator: 4)
!1443 = !DILexicalBlockFile(scope: !700, file: !1, discriminator: 3)
!1444 = !DILocation(line: 108, column: 1, scope: !706)
!1445 = !DILocation(line: 108, column: 1, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !706, file: !1, line: 108, column: 1)
!1447 = !DILocation(line: 108, column: 1, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !706, file: !1, discriminator: 1)
!1449 = !DILocation(line: 108, column: 1, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1451, file: !1, discriminator: 4)
!1451 = !DILexicalBlockFile(scope: !706, file: !1, discriminator: 3)
!1452 = !DILocation(line: 109, column: 1, scope: !712)
!1453 = !DILocation(line: 109, column: 1, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !712, file: !1, line: 109, column: 1)
!1455 = !DILocation(line: 109, column: 1, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 1)
!1457 = !DILocation(line: 109, column: 1, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !1, discriminator: 4)
!1459 = !DILexicalBlockFile(scope: !712, file: !1, discriminator: 3)
!1460 = !DILocation(line: 110, column: 1, scope: !718)
!1461 = !DILocation(line: 110, column: 1, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !718, file: !1, line: 110, column: 1)
!1463 = !DILocation(line: 110, column: 1, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !718, file: !1, discriminator: 1)
!1465 = !DILocation(line: 110, column: 1, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1467, file: !1, discriminator: 4)
!1467 = !DILexicalBlockFile(scope: !718, file: !1, discriminator: 3)
!1468 = !DILocation(line: 249, column: 26, scope: !724)
!1469 = !DILocation(line: 249, column: 42, scope: !724)
!1470 = !DILocation(line: 251, column: 5, scope: !724)
!1471 = !DILocation(line: 251, column: 15, scope: !724)
!1472 = !DILocation(line: 251, column: 19, scope: !724)
!1473 = !DILocation(line: 254, column: 10, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !724, file: !1, line: 254, column: 9)
!1475 = !DILocation(line: 254, column: 9, scope: !724)
!1476 = !DILocation(line: 284, column: 26, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 280, column: 75)
!1478 = distinct !DILexicalBlock(scope: !732, file: !1, line: 280, column: 13)
!1479 = !DILocation(line: 259, column: 8, scope: !733)
!1480 = !{!1052, !1056, i64 8}
!1481 = !{!1482, !1053, i64 168}
!1482 = !{!"_typeobject", !1483, i64 0, !1056, i64 24, !1053, i64 32, !1053, i64 40, !1056, i64 48, !1056, i64 56, !1056, i64 64, !1056, i64 72, !1056, i64 80, !1056, i64 88, !1056, i64 96, !1056, i64 104, !1056, i64 112, !1056, i64 120, !1056, i64 128, !1056, i64 136, !1056, i64 144, !1056, i64 152, !1056, i64 160, !1053, i64 168, !1056, i64 176, !1056, i64 184, !1056, i64 192, !1056, i64 200, !1053, i64 208, !1056, i64 216, !1056, i64 224, !1056, i64 232, !1056, i64 240, !1056, i64 248, !1056, i64 256, !1056, i64 264, !1056, i64 272, !1056, i64 280, !1053, i64 288, !1056, i64 296, !1056, i64 304, !1056, i64 312, !1056, i64 320, !1056, i64 328, !1056, i64 336, !1056, i64 344, !1056, i64 352, !1056, i64 360, !1056, i64 368, !1056, i64 376, !1484, i64 384, !1056, i64 392}
!1483 = !{!"", !1052, i64 0, !1053, i64 16}
!1484 = !{!"int", !1054, i64 0}
!1485 = !DILocation(line: 259, column: 27, scope: !733)
!1486 = !DILocation(line: 259, column: 30, scope: !1487)
!1487 = !DILexicalBlockFile(scope: !733, file: !1, discriminator: 1)
!1488 = !DILocation(line: 259, column: 8, scope: !724)
!1489 = !DILocation(line: 260, column: 13, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 260, column: 13)
!1491 = distinct !DILexicalBlock(scope: !733, file: !1, line: 259, column: 50)
!1492 = !DILocation(line: 260, column: 13, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 2)
!1494 = !DILocation(line: 260, column: 38, scope: !1490)
!1495 = !DILocation(line: 260, column: 41, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 5)
!1497 = !DILocation(line: 260, column: 41, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1490, file: !1, discriminator: 7)
!1499 = !DILocation(line: 260, column: 13, scope: !1491)
!1500 = !DILocation(line: 263, column: 14, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1491, file: !1, line: 263, column: 13)
!1502 = !DILocation(line: 263, column: 36, scope: !1501)
!1503 = !DILocation(line: 263, column: 40, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1501, file: !1, discriminator: 1)
!1505 = !DILocation(line: 273, column: 21, scope: !1491)
!1506 = !DILocation(line: 271, column: 21, scope: !1491)
!1507 = !DILocation(line: 263, column: 13, scope: !1491)
!1508 = !DILocation(line: 264, column: 29, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1501, file: !1, line: 263, column: 63)
!1510 = !DILocation(line: 264, column: 13, scope: !1509)
!1511 = !DILocation(line: 267, column: 13, scope: !1509)
!1512 = !DILocation(line: 270, column: 21, scope: !1491)
!1513 = !DILocation(line: 270, column: 21, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !1491, file: !1, discriminator: 3)
!1515 = !DILocation(line: 270, column: 21, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1491, file: !1, discriminator: 1)
!1517 = !DILocation(line: 270, column: 21, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1491, file: !1, discriminator: 2)
!1519 = !DILocation(line: 271, column: 21, scope: !1516)
!1520 = !DILocation(line: 271, column: 21, scope: !1514)
!1521 = !DILocation(line: 271, column: 21, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1491, file: !1, discriminator: 4)
!1523 = !DILocation(line: 271, column: 21, scope: !1518)
!1524 = !DILocation(line: 272, column: 21, scope: !1491)
!1525 = !{!1526, !1053, i64 16}
!1526 = !{!"", !1052, i64 0, !1053, i64 16, !1053, i64 24, !1527, i64 32, !1056, i64 40}
!1527 = !{!"", !1484, i64 0, !1484, i64 0, !1484, i64 0, !1484, i64 0, !1484, i64 0, !1484, i64 1}
!1528 = !DILocation(line: 174, column: 29, scope: !735, inlinedAt: !1529)
!1529 = distinct !DILocation(line: 270, column: 14, scope: !1491)
!1530 = !DILocation(line: 174, column: 53, scope: !735, inlinedAt: !1529)
!1531 = !DILocation(line: 175, column: 20, scope: !735, inlinedAt: !1529)
!1532 = !DILocation(line: 175, column: 38, scope: !735, inlinedAt: !1529)
!1533 = !DILocation(line: 181, column: 5, scope: !735, inlinedAt: !1529)
!1534 = !DILocation(line: 181, column: 25, scope: !735, inlinedAt: !1529)
!1535 = !DILocation(line: 188, column: 12, scope: !735, inlinedAt: !1529)
!1536 = !DILocation(line: 182, column: 35, scope: !735, inlinedAt: !1529)
!1537 = !DILocation(line: 183, column: 35, scope: !735, inlinedAt: !1529)
!1538 = !DILocation(line: 195, column: 18, scope: !1539, inlinedAt: !1529)
!1539 = distinct !DILexicalBlock(scope: !735, file: !1, line: 195, column: 9)
!1540 = !DILocation(line: 185, column: 19, scope: !735, inlinedAt: !1529)
!1541 = !DILocation(line: 199, column: 18, scope: !1542, inlinedAt: !1529)
!1542 = distinct !DILexicalBlock(scope: !735, file: !1, line: 199, column: 9)
!1543 = !DILocation(line: 199, column: 15, scope: !1542, inlinedAt: !1529)
!1544 = !DILocation(line: 199, column: 9, scope: !735, inlinedAt: !1529)
!1545 = !DILocation(line: 204, column: 19, scope: !1546, inlinedAt: !1529)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !1, line: 204, column: 5)
!1547 = distinct !DILexicalBlock(scope: !735, file: !1, line: 204, column: 5)
!1548 = !DILocation(line: 204, column: 17, scope: !1546, inlinedAt: !1529)
!1549 = !DILocation(line: 204, column: 5, scope: !1547, inlinedAt: !1529)
!1550 = !DILocation(line: 195, column: 15, scope: !1539, inlinedAt: !1529)
!1551 = !DILocation(line: 195, column: 9, scope: !735, inlinedAt: !1529)
!1552 = !DILocation(line: 270, column: 14, scope: !1491)
!1553 = !DILocation(line: 205, column: 24, scope: !1554, inlinedAt: !1529)
!1554 = distinct !DILexicalBlock(scope: !1546, file: !1, line: 204, column: 32)
!1555 = !DILocation(line: 205, column: 19, scope: !1554, inlinedAt: !1529)
!1556 = !{!1054, !1054, i64 0}
!1557 = !DILocation(line: 205, column: 35, scope: !1554, inlinedAt: !1529)
!1558 = !DILocation(line: 205, column: 29, scope: !1554, inlinedAt: !1529)
!1559 = !DILocation(line: 205, column: 27, scope: !1554, inlinedAt: !1529)
!1560 = !DILocation(line: 205, column: 16, scope: !1554, inlinedAt: !1529)
!1561 = !DILocation(line: 204, column: 28, scope: !1546, inlinedAt: !1529)
!1562 = !DILocation(line: 184, column: 16, scope: !735, inlinedAt: !1529)
!1563 = !DILocation(line: 208, column: 20, scope: !735, inlinedAt: !1529)
!1564 = !DILocation(line: 209, column: 1, scope: !735, inlinedAt: !1529)
!1565 = !DILocation(line: 274, column: 5, scope: !1491)
!1566 = !DILocation(line: 277, column: 9, scope: !732)
!1567 = !DILocation(line: 278, column: 9, scope: !732)
!1568 = !DILocation(line: 280, column: 13, scope: !1478)
!1569 = !{!1482, !1056, i64 160}
!1570 = !DILocation(line: 280, column: 13, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1478, file: !1, discriminator: 1)
!1572 = !{!1573, !1056, i64 0}
!1573 = !{!"", !1056, i64 0, !1056, i64 8}
!1574 = !DILocation(line: 280, column: 42, scope: !1478)
!1575 = !DILocation(line: 284, column: 47, scope: !1477)
!1576 = !DILocation(line: 280, column: 45, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1478, file: !1, discriminator: 3)
!1578 = !DILocation(line: 280, column: 45, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1478, file: !1, discriminator: 4)
!1580 = !DILocation(line: 280, column: 13, scope: !732)
!1581 = !DILocation(line: 281, column: 26, scope: !1477)
!1582 = !DILocation(line: 284, column: 38, scope: !1477)
!1583 = !{!1482, !1056, i64 24}
!1584 = !DILocation(line: 284, column: 59, scope: !1477)
!1585 = !DILocation(line: 281, column: 13, scope: !1477)
!1586 = !DILocation(line: 285, column: 13, scope: !1477)
!1587 = !DILocation(line: 277, column: 19, scope: !732)
!1588 = !DILocation(line: 288, column: 13, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !732, file: !1, line: 288, column: 13)
!1590 = !DILocation(line: 288, column: 58, scope: !1589)
!1591 = !DILocation(line: 288, column: 13, scope: !732)
!1592 = !DILocation(line: 291, column: 20, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !732, file: !1, line: 291, column: 13)
!1594 = !{!1595, !1484, i64 36}
!1595 = !{!"bufferinfo", !1056, i64 0, !1056, i64 8, !1053, i64 16, !1053, i64 24, !1484, i64 32, !1484, i64 36, !1056, i64 40, !1056, i64 48, !1056, i64 56, !1056, i64 64, !1056, i64 72}
!1596 = !DILocation(line: 291, column: 25, scope: !1593)
!1597 = !DILocation(line: 291, column: 13, scope: !732)
!1598 = !DILocation(line: 292, column: 29, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 291, column: 30)
!1600 = !DILocation(line: 292, column: 13, scope: !1599)
!1601 = !DILocation(line: 294, column: 13, scope: !1599)
!1602 = !DILocation(line: 295, column: 13, scope: !1599)
!1603 = !DILocation(line: 298, column: 32, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !732, file: !1, line: 298, column: 13)
!1605 = !DILocation(line: 278, column: 19, scope: !732)
!1606 = !DILocation(line: 298, column: 13, scope: !1604)
!1607 = !DILocation(line: 298, column: 58, scope: !1604)
!1608 = !DILocation(line: 298, column: 13, scope: !732)
!1609 = !DILocation(line: 299, column: 13, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1604, file: !1, line: 298, column: 65)
!1611 = !DILocation(line: 300, column: 13, scope: !1610)
!1612 = !DILocation(line: 302, column: 20, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !732, file: !1, line: 302, column: 13)
!1614 = !DILocation(line: 302, column: 25, scope: !1613)
!1615 = !DILocation(line: 302, column: 13, scope: !732)
!1616 = !DILocation(line: 303, column: 29, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !1, line: 302, column: 30)
!1618 = !DILocation(line: 303, column: 13, scope: !1617)
!1619 = !DILocation(line: 305, column: 13, scope: !1617)
!1620 = !DILocation(line: 306, column: 13, scope: !1617)
!1621 = !DILocation(line: 307, column: 13, scope: !1617)
!1622 = !DILocation(line: 310, column: 50, scope: !732)
!1623 = !{!1595, !1056, i64 0}
!1624 = !DILocation(line: 311, column: 50, scope: !732)
!1625 = !DILocation(line: 312, column: 28, scope: !732)
!1626 = !{!1595, !1053, i64 16}
!1627 = !DILocation(line: 313, column: 28, scope: !732)
!1628 = !DILocation(line: 174, column: 29, scope: !735, inlinedAt: !1629)
!1629 = distinct !DILocation(line: 310, column: 14, scope: !732)
!1630 = !DILocation(line: 174, column: 53, scope: !735, inlinedAt: !1629)
!1631 = !DILocation(line: 175, column: 20, scope: !735, inlinedAt: !1629)
!1632 = !DILocation(line: 175, column: 38, scope: !735, inlinedAt: !1629)
!1633 = !DILocation(line: 181, column: 5, scope: !735, inlinedAt: !1629)
!1634 = !DILocation(line: 181, column: 25, scope: !735, inlinedAt: !1629)
!1635 = !DILocation(line: 188, column: 12, scope: !735, inlinedAt: !1629)
!1636 = !DILocation(line: 182, column: 35, scope: !735, inlinedAt: !1629)
!1637 = !DILocation(line: 183, column: 35, scope: !735, inlinedAt: !1629)
!1638 = !DILocation(line: 195, column: 18, scope: !1539, inlinedAt: !1629)
!1639 = !DILocation(line: 185, column: 19, scope: !735, inlinedAt: !1629)
!1640 = !DILocation(line: 199, column: 18, scope: !1542, inlinedAt: !1629)
!1641 = !DILocation(line: 199, column: 15, scope: !1542, inlinedAt: !1629)
!1642 = !DILocation(line: 199, column: 9, scope: !735, inlinedAt: !1629)
!1643 = !DILocation(line: 204, column: 19, scope: !1546, inlinedAt: !1629)
!1644 = !DILocation(line: 204, column: 17, scope: !1546, inlinedAt: !1629)
!1645 = !DILocation(line: 204, column: 5, scope: !1547, inlinedAt: !1629)
!1646 = !DILocation(line: 195, column: 15, scope: !1539, inlinedAt: !1629)
!1647 = !DILocation(line: 195, column: 9, scope: !735, inlinedAt: !1629)
!1648 = !DILocation(line: 310, column: 14, scope: !732)
!1649 = !DILocation(line: 205, column: 24, scope: !1554, inlinedAt: !1629)
!1650 = !DILocation(line: 205, column: 19, scope: !1554, inlinedAt: !1629)
!1651 = !DILocation(line: 205, column: 35, scope: !1554, inlinedAt: !1629)
!1652 = !DILocation(line: 205, column: 29, scope: !1554, inlinedAt: !1629)
!1653 = !DILocation(line: 205, column: 27, scope: !1554, inlinedAt: !1629)
!1654 = !DILocation(line: 205, column: 16, scope: !1554, inlinedAt: !1629)
!1655 = !DILocation(line: 204, column: 28, scope: !1546, inlinedAt: !1629)
!1656 = !DILocation(line: 184, column: 16, scope: !735, inlinedAt: !1629)
!1657 = !DILocation(line: 317, column: 5, scope: !1487)
!1658 = !DILocation(line: 208, column: 20, scope: !735, inlinedAt: !1629)
!1659 = !DILocation(line: 209, column: 1, scope: !735, inlinedAt: !1629)
!1660 = !DILocation(line: 315, column: 9, scope: !732)
!1661 = !DILocation(line: 316, column: 9, scope: !732)
!1662 = !DILocation(line: 319, column: 12, scope: !724)
!1663 = !DILocation(line: 319, column: 5, scope: !724)
!1664 = !DILocation(line: 320, column: 1, scope: !724)
!1665 = !DILocation(line: 221, column: 40, scope: !749)
!1666 = !DILocation(line: 221, column: 56, scope: !749)
!1667 = !DILocation(line: 223, column: 5, scope: !749)
!1668 = !DILocation(line: 224, column: 5, scope: !749)
!1669 = !DILocation(line: 224, column: 16, scope: !749)
!1670 = !{!1053, !1053, i64 0}
!1671 = !DILocation(line: 223, column: 15, scope: !749)
!1672 = !DILocation(line: 225, column: 10, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !749, file: !1, line: 225, column: 9)
!1674 = !DILocation(line: 225, column: 9, scope: !749)
!1675 = !DILocation(line: 228, column: 31, scope: !749)
!1676 = !DILocation(line: 228, column: 36, scope: !749)
!1677 = !DILocation(line: 228, column: 11, scope: !749)
!1678 = !DILocation(line: 224, column: 34, scope: !749)
!1679 = !DILocation(line: 229, column: 13, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !749, file: !1, line: 229, column: 9)
!1681 = !DILocation(line: 229, column: 19, scope: !1680)
!1682 = !DILocation(line: 229, column: 22, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1680, file: !1, discriminator: 1)
!1684 = !DILocation(line: 229, column: 9, scope: !749)
!1685 = !DILocation(line: 232, column: 12, scope: !749)
!1686 = !DILocation(line: 232, column: 5, scope: !749)
!1687 = !DILocation(line: 233, column: 1, scope: !749)
!1688 = !DILocation(line: 439, column: 38, scope: !756)
!1689 = !DILocation(line: 441, column: 25, scope: !756)
!1690 = !DILocation(line: 441, column: 5, scope: !756)
!1691 = !DILocation(line: 442, column: 5, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !762, file: !1, discriminator: 1)
!1693 = !{!1694, !1056, i64 24}
!1694 = !{!"", !1052, i64 0, !1053, i64 16, !1056, i64 24}
!1695 = !DILocation(line: 442, column: 5, scope: !765)
!1696 = !DILocation(line: 442, column: 5, scope: !762)
!1697 = !DILocation(line: 442, column: 5, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !764, file: !1, discriminator: 4)
!1699 = !DILocation(line: 442, column: 5, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !764, file: !1, line: 442, column: 5)
!1701 = !DILocation(line: 442, column: 5, scope: !764)
!1702 = !DILocation(line: 442, column: 5, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1700, file: !1, discriminator: 6)
!1704 = !{!1482, !1056, i64 48}
!1705 = !DILocation(line: 443, column: 5, scope: !756)
!1706 = !DILocation(line: 444, column: 1, scope: !756)
!1707 = !DILocation(line: 454, column: 35, scope: !766)
!1708 = !DILocation(line: 454, column: 49, scope: !766)
!1709 = !DILocation(line: 454, column: 65, scope: !766)
!1710 = !DILocation(line: 456, column: 5, scope: !766)
!1711 = !DILocation(line: 457, column: 30, scope: !766)
!1712 = !{!1694, !1053, i64 16}
!1713 = !DILocation(line: 457, column: 19, scope: !766)
!1714 = !DILocation(line: 456, column: 15, scope: !766)
!1715 = !DILocation(line: 459, column: 10, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !766, file: !1, line: 459, column: 9)
!1717 = !DILocation(line: 459, column: 9, scope: !766)
!1718 = !DILocation(line: 461, column: 16, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !766, file: !1, line: 461, column: 9)
!1720 = !DILocation(line: 461, column: 9, scope: !766)
!1721 = !DILocation(line: 462, column: 33, scope: !1719)
!1722 = !DILocation(line: 462, column: 42, scope: !1719)
!1723 = !DILocation(line: 462, column: 16, scope: !1719)
!1724 = !DILocation(line: 462, column: 9, scope: !1719)
!1725 = !DILocation(line: 467, column: 14, scope: !766)
!1726 = !DILocation(line: 456, column: 21, scope: !766)
!1727 = !DILocation(line: 468, column: 16, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !766, file: !1, line: 468, column: 9)
!1729 = !DILocation(line: 468, column: 9, scope: !766)
!1730 = !DILocation(line: 471, column: 18, scope: !779)
!1731 = !DILocation(line: 471, column: 5, scope: !780)
!1732 = !DILocation(line: 473, column: 16, scope: !778)
!1733 = !DILocation(line: 479, column: 9, scope: !778)
!1734 = !DILocation(line: 472, column: 19, scope: !778)
!1735 = !DILocation(line: 474, column: 32, scope: !778)
!1736 = !DILocation(line: 474, column: 15, scope: !778)
!1737 = !DILocation(line: 472, column: 26, scope: !778)
!1738 = !DILocation(line: 475, column: 17, scope: !785)
!1739 = !DILocation(line: 475, column: 13, scope: !778)
!1740 = !DILocation(line: 476, column: 13, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 1)
!1742 = !DILocation(line: 476, column: 13, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !783, file: !1, line: 476, column: 13)
!1744 = !DILocation(line: 476, column: 13, scope: !783)
!1745 = !DILocation(line: 476, column: 13, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1743, file: !1, discriminator: 3)
!1747 = !DILocation(line: 471, column: 30, scope: !779)
!1748 = !DILocation(line: 457, column: 16, scope: !766)
!1749 = !DILocation(line: 482, column: 1, scope: !766)
!1750 = !DILocation(line: 447, column: 39, scope: !786)
!1751 = !DILocation(line: 447, column: 53, scope: !786)
!1752 = !DILocation(line: 447, column: 66, scope: !786)
!1753 = !DILocation(line: 449, column: 5, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !795, file: !1, discriminator: 1)
!1755 = !DILocation(line: 449, column: 5, scope: !796)
!1756 = !DILocation(line: 449, column: 5, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !794, file: !1, discriminator: 2)
!1758 = !DILocation(line: 449, column: 5, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !794, file: !1, line: 449, column: 5)
!1760 = !DILocation(line: 450, column: 5, scope: !786)
!1761 = !DILocation(line: 451, column: 1, scope: !786)
!1762 = !DILocation(line: 409, column: 30, scope: !797)
!1763 = !DILocation(line: 409, column: 46, scope: !797)
!1764 = !DILocation(line: 409, column: 62, scope: !797)
!1765 = !DILocation(line: 412, column: 5, scope: !797)
!1766 = !DILocation(line: 415, column: 10, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !797, file: !1, line: 415, column: 9)
!1768 = !DILocation(line: 415, column: 9, scope: !797)
!1769 = !DILocation(line: 418, column: 14, scope: !797)
!1770 = !{!1483, !1053, i64 16}
!1771 = !DILocation(line: 413, column: 16, scope: !797)
!1772 = !DILocation(line: 419, column: 16, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !797, file: !1, line: 419, column: 9)
!1774 = !DILocation(line: 419, column: 9, scope: !797)
!1775 = !DILocation(line: 412, column: 15, scope: !797)
!1776 = !DILocation(line: 420, column: 14, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !1, line: 420, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 419, column: 22)
!1779 = !DILocation(line: 420, column: 13, scope: !1778)
!1780 = !DILocation(line: 423, column: 14, scope: !1773)
!1781 = !DILocation(line: 426, column: 10, scope: !797)
!1782 = !DILocation(line: 427, column: 12, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !797, file: !1, line: 427, column: 9)
!1784 = !DILocation(line: 427, column: 9, scope: !797)
!1785 = !DILocation(line: 430, column: 5, scope: !797)
!1786 = !DILocation(line: 431, column: 16, scope: !797)
!1787 = !DILocation(line: 431, column: 9, scope: !797)
!1788 = !DILocation(line: 431, column: 14, scope: !797)
!1789 = !DILocation(line: 432, column: 9, scope: !797)
!1790 = !DILocation(line: 432, column: 16, scope: !797)
!1791 = !DILocation(line: 434, column: 23, scope: !797)
!1792 = !DILocation(line: 434, column: 5, scope: !797)
!1793 = !DILocation(line: 435, column: 5, scope: !797)
!1794 = !DILocation(line: 436, column: 1, scope: !797)
!1795 = !DILocation(line: 658, column: 38, scope: !809)
!1796 = !DILocation(line: 660, column: 25, scope: !809)
!1797 = !DILocation(line: 660, column: 5, scope: !809)
!1798 = !DILocation(line: 661, column: 5, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !815, file: !1, discriminator: 1)
!1800 = !DILocation(line: 661, column: 5, scope: !818)
!1801 = !DILocation(line: 661, column: 5, scope: !815)
!1802 = !DILocation(line: 661, column: 5, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 4)
!1804 = !DILocation(line: 661, column: 5, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !817, file: !1, line: 661, column: 5)
!1806 = !DILocation(line: 661, column: 5, scope: !817)
!1807 = !DILocation(line: 661, column: 5, scope: !1808)
!1808 = !DILexicalBlockFile(scope: !1805, file: !1, discriminator: 6)
!1809 = !DILocation(line: 662, column: 5, scope: !809)
!1810 = !DILocation(line: 663, column: 1, scope: !809)
!1811 = !DILocation(line: 706, column: 35, scope: !819)
!1812 = !DILocation(line: 706, column: 49, scope: !819)
!1813 = !DILocation(line: 706, column: 65, scope: !819)
!1814 = !DILocation(line: 708, column: 5, scope: !819)
!1815 = !DILocation(line: 709, column: 30, scope: !819)
!1816 = !DILocation(line: 709, column: 19, scope: !819)
!1817 = !DILocation(line: 708, column: 15, scope: !819)
!1818 = !DILocation(line: 711, column: 10, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !819, file: !1, line: 711, column: 9)
!1820 = !DILocation(line: 711, column: 9, scope: !819)
!1821 = !DILocation(line: 713, column: 13, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !819, file: !1, line: 713, column: 9)
!1823 = !DILocation(line: 713, column: 20, scope: !1822)
!1824 = !DILocation(line: 713, column: 9, scope: !819)
!1825 = !DILocation(line: 714, column: 31, scope: !1822)
!1826 = !DILocation(line: 714, column: 36, scope: !1822)
!1827 = !DILocation(line: 673, column: 26, scope: !839, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 714, column: 16, scope: !1822)
!1829 = !DILocation(line: 673, column: 41, scope: !839, inlinedAt: !1828)
!1830 = !DILocation(line: 679, column: 9, scope: !846, inlinedAt: !1828)
!1831 = !DILocation(line: 679, column: 9, scope: !839, inlinedAt: !1828)
!1832 = !DILocation(line: 680, column: 20, scope: !845, inlinedAt: !1828)
!1833 = !DILocation(line: 683, column: 22, scope: !845, inlinedAt: !1828)
!1834 = !DILocation(line: 680, column: 34, scope: !845, inlinedAt: !1828)
!1835 = !DILocation(line: 684, column: 9, scope: !845, inlinedAt: !1828)
!1836 = !DILocation(line: 685, column: 37, scope: !852, inlinedAt: !1828)
!1837 = !DILocation(line: 685, column: 9, scope: !853, inlinedAt: !1828)
!1838 = !DILocation(line: 686, column: 25, scope: !851, inlinedAt: !1828)
!1839 = !DILocation(line: 714, column: 16, scope: !1822)
!1840 = !DILocation(line: 681, column: 19, scope: !845, inlinedAt: !1828)
!1841 = !DILocation(line: 687, column: 22, scope: !851, inlinedAt: !1828)
!1842 = !DILocation(line: 675, column: 15, scope: !839, inlinedAt: !1828)
!1843 = !DILocation(line: 688, column: 13, scope: !1844, inlinedAt: !1828)
!1844 = !DILexicalBlockFile(scope: !850, file: !1, discriminator: 1)
!1845 = !DILocation(line: 688, column: 13, scope: !1846, inlinedAt: !1828)
!1846 = distinct !DILexicalBlock(scope: !850, file: !1, line: 688, column: 13)
!1847 = !DILocation(line: 688, column: 13, scope: !850, inlinedAt: !1828)
!1848 = !DILocation(line: 688, column: 13, scope: !1849, inlinedAt: !1828)
!1849 = !DILexicalBlockFile(scope: !1846, file: !1, discriminator: 3)
!1850 = !DILocation(line: 689, column: 24, scope: !1851, inlinedAt: !1828)
!1851 = distinct !DILexicalBlock(scope: !851, file: !1, line: 689, column: 17)
!1852 = !DILocation(line: 685, column: 51, scope: !852, inlinedAt: !1828)
!1853 = !DILocation(line: 689, column: 17, scope: !851, inlinedAt: !1828)
!1854 = !DILocation(line: 696, column: 18, scope: !1855, inlinedAt: !1828)
!1855 = distinct !DILexicalBlock(scope: !846, file: !1, line: 695, column: 12)
!1856 = !DILocation(line: 697, column: 20, scope: !1857, inlinedAt: !1828)
!1857 = distinct !DILexicalBlock(scope: !1855, file: !1, line: 697, column: 13)
!1858 = !DILocation(line: 697, column: 13, scope: !1855, inlinedAt: !1828)
!1859 = !DILocation(line: 702, column: 5, scope: !839, inlinedAt: !1828)
!1860 = !DILocation(line: 719, column: 14, scope: !819)
!1861 = !DILocation(line: 708, column: 21, scope: !819)
!1862 = !DILocation(line: 720, column: 16, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !819, file: !1, line: 720, column: 9)
!1864 = !DILocation(line: 720, column: 9, scope: !819)
!1865 = !DILocation(line: 723, column: 18, scope: !832)
!1866 = !DILocation(line: 723, column: 5, scope: !833)
!1867 = !DILocation(line: 725, column: 16, scope: !831)
!1868 = !DILocation(line: 731, column: 9, scope: !831)
!1869 = !DILocation(line: 724, column: 19, scope: !831)
!1870 = !DILocation(line: 726, column: 30, scope: !831)
!1871 = !DILocation(line: 673, column: 26, scope: !839, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 726, column: 15, scope: !831)
!1873 = !DILocation(line: 673, column: 41, scope: !839, inlinedAt: !1872)
!1874 = !DILocation(line: 679, column: 9, scope: !846, inlinedAt: !1872)
!1875 = !DILocation(line: 679, column: 9, scope: !839, inlinedAt: !1872)
!1876 = !DILocation(line: 680, column: 20, scope: !845, inlinedAt: !1872)
!1877 = !DILocation(line: 683, column: 22, scope: !845, inlinedAt: !1872)
!1878 = !DILocation(line: 680, column: 34, scope: !845, inlinedAt: !1872)
!1879 = !DILocation(line: 684, column: 9, scope: !845, inlinedAt: !1872)
!1880 = !DILocation(line: 685, column: 37, scope: !852, inlinedAt: !1872)
!1881 = !DILocation(line: 685, column: 9, scope: !853, inlinedAt: !1872)
!1882 = !DILocation(line: 686, column: 25, scope: !851, inlinedAt: !1872)
!1883 = !DILocation(line: 726, column: 15, scope: !831)
!1884 = !DILocation(line: 681, column: 19, scope: !845, inlinedAt: !1872)
!1885 = !DILocation(line: 687, column: 22, scope: !851, inlinedAt: !1872)
!1886 = !DILocation(line: 675, column: 15, scope: !839, inlinedAt: !1872)
!1887 = !DILocation(line: 688, column: 13, scope: !1844, inlinedAt: !1872)
!1888 = !DILocation(line: 688, column: 13, scope: !1846, inlinedAt: !1872)
!1889 = !DILocation(line: 688, column: 13, scope: !850, inlinedAt: !1872)
!1890 = !DILocation(line: 688, column: 13, scope: !1849, inlinedAt: !1872)
!1891 = !DILocation(line: 689, column: 24, scope: !1851, inlinedAt: !1872)
!1892 = !DILocation(line: 685, column: 51, scope: !852, inlinedAt: !1872)
!1893 = !DILocation(line: 689, column: 17, scope: !851, inlinedAt: !1872)
!1894 = !DILocation(line: 696, column: 18, scope: !1855, inlinedAt: !1872)
!1895 = !DILocation(line: 697, column: 20, scope: !1857, inlinedAt: !1872)
!1896 = !DILocation(line: 697, column: 13, scope: !1855, inlinedAt: !1872)
!1897 = !DILocation(line: 728, column: 13, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 1)
!1899 = !DILocation(line: 728, column: 13, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !836, file: !1, line: 728, column: 13)
!1901 = !DILocation(line: 728, column: 13, scope: !836)
!1902 = !DILocation(line: 728, column: 13, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1900, file: !1, discriminator: 3)
!1904 = !DILocation(line: 723, column: 30, scope: !832)
!1905 = !DILocation(line: 709, column: 16, scope: !819)
!1906 = !DILocation(line: 734, column: 1, scope: !819)
!1907 = !DILocation(line: 666, column: 39, scope: !854)
!1908 = !DILocation(line: 666, column: 53, scope: !854)
!1909 = !DILocation(line: 666, column: 66, scope: !854)
!1910 = !DILocation(line: 668, column: 5, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !863, file: !1, discriminator: 1)
!1912 = !DILocation(line: 668, column: 5, scope: !864)
!1913 = !DILocation(line: 668, column: 5, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !862, file: !1, discriminator: 2)
!1915 = !DILocation(line: 668, column: 5, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !862, file: !1, line: 668, column: 5)
!1917 = !DILocation(line: 669, column: 5, scope: !854)
!1918 = !DILocation(line: 670, column: 1, scope: !854)
!1919 = !DILocation(line: 546, column: 30, scope: !865)
!1920 = !DILocation(line: 546, column: 46, scope: !865)
!1921 = !DILocation(line: 546, column: 62, scope: !865)
!1922 = !DILocation(line: 549, column: 5, scope: !865)
!1923 = !DILocation(line: 552, column: 10, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !865, file: !1, line: 552, column: 9)
!1925 = !DILocation(line: 552, column: 9, scope: !865)
!1926 = !DILocation(line: 555, column: 14, scope: !865)
!1927 = !DILocation(line: 550, column: 16, scope: !865)
!1928 = !DILocation(line: 556, column: 16, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !865, file: !1, line: 556, column: 9)
!1930 = !DILocation(line: 556, column: 9, scope: !865)
!1931 = !DILocation(line: 549, column: 15, scope: !865)
!1932 = !DILocation(line: 557, column: 14, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1, line: 557, column: 13)
!1934 = distinct !DILexicalBlock(scope: !1929, file: !1, line: 556, column: 22)
!1935 = !DILocation(line: 557, column: 13, scope: !1934)
!1936 = !DILocation(line: 561, column: 12, scope: !865)
!1937 = !DILocation(line: 561, column: 10, scope: !865)
!1938 = !DILocation(line: 562, column: 14, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !865, file: !1, line: 562, column: 9)
!1940 = !DILocation(line: 562, column: 9, scope: !865)
!1941 = !DILocation(line: 566, column: 23, scope: !877)
!1942 = !DILocation(line: 566, column: 5, scope: !878)
!1943 = !DILocation(line: 567, column: 9, scope: !876)
!1944 = !DILocation(line: 567, column: 26, scope: !876)
!1945 = !DILocation(line: 597, column: 13, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !893, file: !1, line: 594, column: 29)
!1947 = !DILocation(line: 600, column: 13, scope: !892)
!1948 = !DILocation(line: 637, column: 13, scope: !892)
!1949 = !DILocation(line: 567, column: 19, scope: !876)
!1950 = !DILocation(line: 573, column: 14, scope: !886)
!1951 = !DILocation(line: 573, column: 13, scope: !876)
!1952 = !DILocation(line: 574, column: 29, scope: !885)
!1953 = !DILocation(line: 574, column: 13, scope: !885)
!1954 = !DILocation(line: 576, column: 13, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !884, file: !1, discriminator: 1)
!1956 = !DILocation(line: 576, column: 13, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !884, file: !1, line: 576, column: 13)
!1958 = !DILocation(line: 576, column: 13, scope: !884)
!1959 = !DILocation(line: 576, column: 13, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1957, file: !1, discriminator: 3)
!1961 = !DILocation(line: 579, column: 13, scope: !890)
!1962 = !DILocation(line: 579, column: 13, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 2)
!1964 = !DILocation(line: 579, column: 13, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1966, file: !1, discriminator: 4)
!1966 = !DILexicalBlockFile(scope: !890, file: !1, discriminator: 3)
!1967 = !DILocation(line: 579, column: 13, scope: !876)
!1968 = !DILocation(line: 583, column: 20, scope: !876)
!1969 = !DILocation(line: 584, column: 16, scope: !876)
!1970 = !DILocation(line: 580, column: 13, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !888, file: !1, discriminator: 1)
!1972 = !DILocation(line: 580, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !888, file: !1, line: 580, column: 13)
!1974 = !DILocation(line: 580, column: 13, scope: !888)
!1975 = !DILocation(line: 580, column: 13, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1973, file: !1, discriminator: 3)
!1977 = !DILocation(line: 595, column: 13, scope: !1946)
!1978 = !DILocation(line: 568, column: 20, scope: !876)
!1979 = !DILocation(line: 570, column: 22, scope: !876)
!1980 = !DILocation(line: 585, column: 16, scope: !876)
!1981 = !DILocation(line: 585, column: 16, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !876, file: !1, discriminator: 1)
!1983 = !DILocation(line: 585, column: 16, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !876, file: !1, discriminator: 3)
!1985 = !DILocation(line: 585, column: 16, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !876, file: !1, discriminator: 4)
!1987 = !DILocation(line: 585, column: 16, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !876, file: !1, discriminator: 2)
!1989 = !DILocation(line: 569, column: 15, scope: !876)
!1990 = !DILocation(line: 571, column: 13, scope: !876)
!1991 = !DILocation(line: 550, column: 29, scope: !865)
!1992 = !DILocation(line: 589, column: 37, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !1, line: 589, column: 9)
!1994 = distinct !DILexicalBlock(scope: !876, file: !1, line: 589, column: 9)
!1995 = !DILocation(line: 589, column: 9, scope: !1994)
!1996 = !DILocation(line: 590, column: 17, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1998, file: !1, discriminator: 5)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !1, line: 590, column: 17)
!1999 = distinct !DILexicalBlock(scope: !1993, file: !1, line: 589, column: 61)
!2000 = !DILocation(line: 590, column: 17, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1998, file: !1, discriminator: 4)
!2002 = !DILocation(line: 589, column: 49, scope: !1993)
!2003 = !{!2004, !2004, i64 0}
!2004 = !{!"short", !1054, i64 0}
!2005 = !DILocation(line: 590, column: 54, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2007, file: !1, discriminator: 8)
!2007 = !DILexicalBlockFile(scope: !1998, file: !1, discriminator: 3)
!2008 = !DILocation(line: 590, column: 17, scope: !1999)
!2009 = distinct !{!2009, !2010, !2011}
!2010 = !{!"llvm.loop.vectorize.width", i32 1}
!2011 = !{!"llvm.loop.interleave.count", i32 1}
!2012 = !DILocation(line: 590, column: 17, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !1998, file: !1, discriminator: 1)
!2014 = distinct !{!2014, !2010, !2011}
!2015 = !{!1484, !1484, i64 0}
!2016 = distinct !{!2016, !2010, !2011}
!2017 = distinct !{!2017, !2018, !2010, !2011}
!2018 = !{!"llvm.loop.unroll.runtime.disable"}
!2019 = distinct !{!2019, !2018, !2010, !2011}
!2020 = distinct !{!2020, !2018, !2010, !2011}
!2021 = !DILocation(line: 594, column: 23, scope: !893)
!2022 = !DILocation(line: 594, column: 13, scope: !876)
!2023 = !DILocation(line: 596, column: 13, scope: !1946)
!2024 = !DILocation(line: 598, column: 9, scope: !1946)
!2025 = !DILocation(line: 599, column: 58, scope: !892)
!2026 = !DILocation(line: 599, column: 48, scope: !892)
!2027 = !DILocation(line: 599, column: 36, scope: !892)
!2028 = !DILocation(line: 599, column: 23, scope: !892)
!2029 = !DILocation(line: 601, column: 24, scope: !892)
!2030 = !DILocation(line: 602, column: 24, scope: !892)
!2031 = !DILocation(line: 603, column: 24, scope: !892)
!2032 = !DILocation(line: 605, column: 28, scope: !901)
!2033 = !DILocation(line: 605, column: 17, scope: !892)
!2034 = !DILocation(line: 610, column: 30, scope: !907)
!2035 = !DILocation(line: 610, column: 13, scope: !908)
!2036 = !DILocation(line: 611, column: 24, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 6)
!2038 = !DILocation(line: 611, column: 24, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 5)
!2040 = !DILocation(line: 623, column: 17, scope: !906)
!2041 = !DILocation(line: 606, column: 17, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !899, file: !1, discriminator: 1)
!2043 = !DILocation(line: 606, column: 17, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !899, file: !1, line: 606, column: 17)
!2045 = !DILocation(line: 606, column: 17, scope: !899)
!2046 = !DILocation(line: 606, column: 17, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2044, file: !1, discriminator: 3)
!2048 = !DILocation(line: 611, column: 24, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 2)
!2050 = !DILocation(line: 611, column: 65, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2052, file: !1, discriminator: 9)
!2052 = !DILexicalBlockFile(scope: !906, file: !1, discriminator: 4)
!2053 = !DILocation(line: 612, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !906, file: !1, line: 611, column: 73)
!2055 = !DILocation(line: 611, column: 17, scope: !906)
!2056 = !DILocation(line: 614, column: 55, scope: !906)
!2057 = !DILocation(line: 614, column: 35, scope: !906)
!2058 = !DILocation(line: 600, column: 23, scope: !892)
!2059 = !DILocation(line: 614, column: 33, scope: !906)
!2060 = !DILocation(line: 617, column: 37, scope: !905)
!2061 = !DILocation(line: 617, column: 21, scope: !906)
!2062 = !DILocation(line: 618, column: 21, scope: !2063)
!2063 = !DILexicalBlockFile(scope: !903, file: !1, discriminator: 1)
!2064 = !DILocation(line: 618, column: 21, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !903, file: !1, line: 618, column: 21)
!2066 = !DILocation(line: 618, column: 21, scope: !903)
!2067 = !DILocation(line: 618, column: 21, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2065, file: !1, discriminator: 3)
!2069 = !DILocation(line: 619, column: 21, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !910, file: !1, discriminator: 1)
!2071 = !DILocation(line: 619, column: 21, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !910, file: !1, line: 619, column: 21)
!2073 = !DILocation(line: 619, column: 21, scope: !910)
!2074 = !DILocation(line: 619, column: 21, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2072, file: !1, discriminator: 3)
!2076 = !DILocation(line: 622, column: 17, scope: !906)
!2077 = !DILocation(line: 624, column: 17, scope: !906)
!2078 = !DILocation(line: 625, column: 60, scope: !906)
!2079 = !DILocation(line: 610, column: 35, scope: !907)
!2080 = !DILocation(line: 629, column: 51, scope: !892)
!2081 = !DILocation(line: 629, column: 31, scope: !892)
!2082 = !DILocation(line: 629, column: 29, scope: !892)
!2083 = !DILocation(line: 631, column: 33, scope: !914)
!2084 = !DILocation(line: 631, column: 17, scope: !892)
!2085 = !DILocation(line: 632, column: 17, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !912, file: !1, discriminator: 1)
!2087 = !DILocation(line: 632, column: 17, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !912, file: !1, line: 632, column: 17)
!2089 = !DILocation(line: 632, column: 17, scope: !912)
!2090 = !DILocation(line: 632, column: 17, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2088, file: !1, discriminator: 3)
!2092 = !DILocation(line: 633, column: 17, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !916, file: !1, discriminator: 1)
!2094 = !DILocation(line: 633, column: 17, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !916, file: !1, line: 633, column: 17)
!2096 = !DILocation(line: 633, column: 17, scope: !916)
!2097 = !DILocation(line: 633, column: 17, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2095, file: !1, discriminator: 3)
!2099 = !DILocation(line: 640, column: 9, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 1)
!2101 = !DILocation(line: 636, column: 13, scope: !892)
!2102 = !DILocation(line: 639, column: 13, scope: !892)
!2103 = !DILocation(line: 641, column: 5, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !877, file: !1, discriminator: 1)
!2105 = !DILocation(line: 566, column: 33, scope: !877)
!2106 = !DILocation(line: 550, column: 24, scope: !865)
!2107 = !DILocation(line: 644, column: 10, scope: !865)
!2108 = !DILocation(line: 645, column: 12, scope: !920)
!2109 = !DILocation(line: 645, column: 9, scope: !865)
!2110 = !DILocation(line: 646, column: 9, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!2112 = !DILocation(line: 646, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !918, file: !1, line: 646, column: 9)
!2114 = !DILocation(line: 646, column: 9, scope: !918)
!2115 = !DILocation(line: 646, column: 9, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2113, file: !1, discriminator: 3)
!2117 = !DILocation(line: 650, column: 16, scope: !865)
!2118 = !DILocation(line: 650, column: 9, scope: !865)
!2119 = !DILocation(line: 650, column: 14, scope: !865)
!2120 = !DILocation(line: 651, column: 9, scope: !865)
!2121 = !DILocation(line: 651, column: 16, scope: !865)
!2122 = !DILocation(line: 653, column: 23, scope: !865)
!2123 = !DILocation(line: 653, column: 5, scope: !865)
!2124 = !DILocation(line: 654, column: 5, scope: !865)
!2125 = !DILocation(line: 655, column: 1, scope: !865)
!2126 = !DILocation(line: 836, column: 42, scope: !921)
!2127 = !DILocation(line: 838, column: 25, scope: !921)
!2128 = !DILocation(line: 838, column: 5, scope: !921)
!2129 = !DILocation(line: 839, column: 5, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !927, file: !1, discriminator: 1)
!2131 = !{!2132, !1056, i64 16}
!2132 = !{!"", !1052, i64 0, !1056, i64 16, !1056, i64 24, !1056, i64 32}
!2133 = !DILocation(line: 839, column: 5, scope: !930)
!2134 = !DILocation(line: 839, column: 5, scope: !927)
!2135 = !DILocation(line: 839, column: 5, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !929, file: !1, discriminator: 4)
!2137 = !DILocation(line: 839, column: 5, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !929, file: !1, line: 839, column: 5)
!2139 = !DILocation(line: 839, column: 5, scope: !929)
!2140 = !DILocation(line: 839, column: 5, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2138, file: !1, discriminator: 6)
!2142 = !DILocation(line: 840, column: 5, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !932, file: !1, discriminator: 1)
!2144 = !{!2132, !1056, i64 24}
!2145 = !DILocation(line: 840, column: 5, scope: !935)
!2146 = !DILocation(line: 840, column: 5, scope: !932)
!2147 = !DILocation(line: 840, column: 5, scope: !2148)
!2148 = !DILexicalBlockFile(scope: !934, file: !1, discriminator: 4)
!2149 = !DILocation(line: 840, column: 5, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !934, file: !1, line: 840, column: 5)
!2151 = !DILocation(line: 840, column: 5, scope: !934)
!2152 = !DILocation(line: 840, column: 5, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2150, file: !1, discriminator: 6)
!2154 = !DILocation(line: 841, column: 5, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !937, file: !1, discriminator: 1)
!2156 = !{!2132, !1056, i64 32}
!2157 = !DILocation(line: 841, column: 5, scope: !940)
!2158 = !DILocation(line: 841, column: 5, scope: !937)
!2159 = !DILocation(line: 841, column: 5, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !939, file: !1, discriminator: 4)
!2161 = !DILocation(line: 841, column: 5, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !939, file: !1, line: 841, column: 5)
!2163 = !DILocation(line: 841, column: 5, scope: !939)
!2164 = !DILocation(line: 841, column: 5, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2162, file: !1, discriminator: 6)
!2166 = !DILocation(line: 842, column: 5, scope: !921)
!2167 = !DILocation(line: 843, column: 1, scope: !921)
!2168 = !DILocation(line: 854, column: 39, scope: !941)
!2169 = !DILocation(line: 854, column: 53, scope: !941)
!2170 = !DILocation(line: 854, column: 69, scope: !941)
!2171 = !DILocation(line: 856, column: 5, scope: !941)
!2172 = !DILocation(line: 856, column: 24, scope: !941)
!2173 = !DILocation(line: 858, column: 10, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !941, file: !1, line: 858, column: 9)
!2175 = !DILocation(line: 858, column: 9, scope: !941)
!2176 = !DILocation(line: 860, column: 31, scope: !941)
!2177 = !DILocation(line: 860, column: 40, scope: !941)
!2178 = !DILocation(line: 860, column: 14, scope: !941)
!2179 = !DILocation(line: 856, column: 15, scope: !941)
!2180 = !DILocation(line: 861, column: 16, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !941, file: !1, line: 861, column: 9)
!2182 = !DILocation(line: 861, column: 9, scope: !941)
!2183 = !DILocation(line: 863, column: 40, scope: !941)
!2184 = !DILocation(line: 863, column: 50, scope: !941)
!2185 = !DILocation(line: 863, column: 14, scope: !941)
!2186 = !DILocation(line: 856, column: 30, scope: !941)
!2187 = !DILocation(line: 864, column: 5, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !952, file: !1, discriminator: 1)
!2189 = !DILocation(line: 864, column: 5, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !952, file: !1, line: 864, column: 5)
!2191 = !DILocation(line: 864, column: 5, scope: !952)
!2192 = !DILocation(line: 864, column: 5, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2190, file: !1, discriminator: 3)
!2194 = !DILocation(line: 866, column: 1, scope: !941)
!2195 = !DILocation(line: 846, column: 43, scope: !953)
!2196 = !DILocation(line: 846, column: 57, scope: !953)
!2197 = !DILocation(line: 846, column: 70, scope: !953)
!2198 = !DILocation(line: 848, column: 5, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !962, file: !1, discriminator: 1)
!2200 = !DILocation(line: 848, column: 5, scope: !963)
!2201 = !DILocation(line: 848, column: 5, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !961, file: !1, discriminator: 2)
!2203 = !DILocation(line: 848, column: 5, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !961, file: !1, line: 848, column: 5)
!2205 = !DILocation(line: 849, column: 5, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !966, file: !1, discriminator: 1)
!2207 = !DILocation(line: 849, column: 5, scope: !967)
!2208 = !DILocation(line: 849, column: 5, scope: !2209)
!2209 = !DILexicalBlockFile(scope: !965, file: !1, discriminator: 2)
!2210 = !DILocation(line: 849, column: 5, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !965, file: !1, line: 849, column: 5)
!2212 = !DILocation(line: 850, column: 5, scope: !953)
!2213 = !DILocation(line: 851, column: 1, scope: !953)
!2214 = !DILocation(line: 801, column: 32, scope: !968)
!2215 = !DILocation(line: 801, column: 48, scope: !968)
!2216 = !DILocation(line: 801, column: 64, scope: !968)
!2217 = !DILocation(line: 806, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !968, file: !1, line: 806, column: 9)
!2219 = !DILocation(line: 806, column: 32, scope: !2218)
!2220 = !DILocation(line: 806, column: 9, scope: !968)
!2221 = !DILocation(line: 807, column: 25, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2218, file: !1, line: 806, column: 37)
!2223 = !DILocation(line: 807, column: 9, scope: !2222)
!2224 = !DILocation(line: 809, column: 9, scope: !2222)
!2225 = !DILocation(line: 813, column: 10, scope: !968)
!2226 = !DILocation(line: 814, column: 12, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !968, file: !1, line: 814, column: 9)
!2228 = !DILocation(line: 814, column: 9, scope: !968)
!2229 = !DILocation(line: 817, column: 41, scope: !968)
!2230 = !DILocation(line: 817, column: 15, scope: !968)
!2231 = !DILocation(line: 804, column: 22, scope: !968)
!2232 = !DILocation(line: 818, column: 17, scope: !979)
!2233 = !DILocation(line: 818, column: 9, scope: !968)
!2234 = !DILocation(line: 819, column: 9, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !977, file: !1, discriminator: 1)
!2236 = !DILocation(line: 819, column: 9, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !977, file: !1, line: 819, column: 9)
!2238 = !DILocation(line: 819, column: 9, scope: !977)
!2239 = !DILocation(line: 819, column: 9, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2237, file: !1, discriminator: 3)
!2241 = !DILocation(line: 822, column: 9, scope: !968)
!2242 = !DILocation(line: 822, column: 14, scope: !968)
!2243 = !DILocation(line: 824, column: 12, scope: !968)
!2244 = !DILocation(line: 804, column: 15, scope: !968)
!2245 = !DILocation(line: 825, column: 5, scope: !968)
!2246 = !DILocation(line: 826, column: 9, scope: !968)
!2247 = !DILocation(line: 826, column: 14, scope: !968)
!2248 = !DILocation(line: 828, column: 5, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !981, file: !1, discriminator: 1)
!2250 = !DILocation(line: 828, column: 5, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !981, file: !1, line: 828, column: 5)
!2252 = !DILocation(line: 828, column: 5, scope: !981)
!2253 = !DILocation(line: 828, column: 5, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2251, file: !1, discriminator: 2)
!2255 = !DILocation(line: 829, column: 9, scope: !968)
!2256 = !DILocation(line: 829, column: 14, scope: !968)
!2257 = !DILocation(line: 831, column: 23, scope: !968)
!2258 = !DILocation(line: 831, column: 5, scope: !968)
!2259 = !DILocation(line: 832, column: 5, scope: !968)
!2260 = !DILocation(line: 833, column: 1, scope: !968)
